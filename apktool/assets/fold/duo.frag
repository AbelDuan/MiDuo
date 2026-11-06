#version 300 es
precision highp float;
in vec2 vUV;
out vec4 fragColor;
// 两段绘制：uOpticsPass=0 选取并映射本帧内容到 uComposed；=1 在其上加磨砂、明暗、圆角。
// uCover/uInner：外屏/内屏实时画面；uWall：整屏路径为壁纸镜像，分层路径为静态原图。
uniform sampler2D uCover, uInner, uWall, uComposed;
uniform vec2 uCoverSize, uInnerSize, uComposedSize, uPanelSize, uCoverRatios;
uniform float uAngle, uEyeDistance, uProjection, uInnerStretch, uCoverStretch;
uniform float uInnerMix, uCoverMix;
uniform vec4 uCoverGeometry, uInnerGeometry;
uniform vec4 uCoverWallCrop, uInnerWallCrop;
uniform vec4 uCoverSideRects[3], uInnerSideRects[3];
uniform int uOpticsPass, uPanel, uLayered, uDesktop, uCoverReady, uInnerReady, uInnerRotation, uWallRotation;
// 应用整屏画面：壁纸窗口在应用后不可见，uWallBitmap=1 时 uWall 为常驻静态原图，按两屏系统裁切取样。
uniform int uWallBitmap;
// 应用开合（桌面/锁屏为 0）：内屏目标画面淡入前对右叶加等待磨砂。
uniform int uApp;

const float PI = 3.141592653589793;
// 本机屏幕像素：内屏横屏 2364×1672（单叶 1182），外屏 1168×1712。
const vec2 INNER_PX = vec2(2364.0, 1672.0), COVER_PX = vec2(1168.0, 1712.0);
// 两屏 4×6 网格像素大小相同：外屏左上对应内屏 (1108,-43)；GL 从底部计 y，1712 高到 1672 高为 +3。
const vec2 GRID_SHIFT = vec2(1108.0, 3.0);

// ---- 几何：刚性两叶，眼睛固定在内屏正前方 uEyeDistance（长度单位：内屏半宽）----
vec3 turn(vec3 p, float a) {
    float c = cos(a), s = sin(a);
    return vec3(c*p.x+s*p.z, p.y, -s*p.x+c*p.z);
}
vec2 projectPlane(vec3 p) {
    // 射线与屏幕平面求交，不是 UV * cos(角度)。
    return p.xy * (uEyeDistance / (uEyeDistance - p.z));
}
// 横向拉伸上限：接近 90° 时转动叶几乎侧对眼睛，整张画面会从铰链处一条细缝里拉出来（p16 长条）。
// 投影权重按 (1-w) + w*|cos a| >= 1/stretch 封顶；纵向不拉丝，保留完整投影（p25 用户红线）。
float stretchWeight(float stretch) {
    float c=abs(cos(radians(clamp(uAngle,0.0,180.0))));
    return clamp((1.0-1.0/stretch)/max(1.0-c,1e-3),0.0,1.0);
}
// 输出像素 → 本屏内容坐标。内屏：左叶绕铰链转动、右叶不动；外屏：整块随左叶转动。
vec2 sourceUV(vec2 uv, float height, float bend) {
    if (uPanel==0) {
        if (uAngle>=179.999) return uv;
        vec3 p = vec3(uv.x*2.0-1.0, (uv.y-0.5)*height, 0.0);
        vec2 q=projectPlane(p.x<0.0 ? turn(p,bend) : p);
        float w=uv.x<0.5 && uInnerStretch>1.0 ? stretchWeight(uInnerStretch) : 1.0;
        vec2 pr=vec2(q.x*0.5+0.5,q.y/height+0.5);
        return vec2(mix(uv.x,pr.x,uProjection*w),mix(uv.y,pr.y,uProjection));
    }
    if (uAngle<=0.001) return uv;
    float coverWidth=uCoverRatios.x;
    height*=uCoverRatios.y;
    vec2 q=projectPlane(turn(vec3(-uv.x*coverWidth,(uv.y-0.5)*height,0.0),bend));
    vec2 projected=vec2(q.x/coverWidth,q.y/height+0.5);
    float w=uCoverStretch>1.0 ? stretchWeight(uCoverStretch) : 1.0;
    return vec2(mix(uv.x,projected.x,uProjection*w),mix(uv.y,projected.y,uProjection));
}

// ---- 内容选取（uOpticsPass=0）----
vec4 live(sampler2D tex, vec2 uv) { return texture(tex, clamp(uv, vec2(0.0), vec2(1.0))); }
// 对同一条真实侧栏做分段坐标插值，两张画面的时钟/搜索轴在交接时重合。
float railY(float y,vec4 source,vec4 target) {
    if(y<target.y)return y*source.y/max(target.y,0.001);
    if(y<target.z)return mix(source.y,source.z,(y-target.y)/max(target.z-target.y,0.001));
    return mix(source.z,1.0,(y-target.z)/max(1.0-target.z,0.001));
}
vec2 railUV(vec2 uv,vec4 source,vec4 target) {
    if(uv.x<target.w)return uv;
    float weight=smoothstep(target.w,target.x,uv.x);
    float x=uv.x<target.x ? mix(source.w,source.x,(uv.x-target.w)/max(target.x-target.w,0.001))
                         : mix(source.x,1.0,(uv.x-target.x)/max(1.0-target.x,0.001));
    return vec2(x,mix(uv.y,railY(uv.y,source,target),weight));
}
vec2 rotateInput(vec2 uv,int rotation) {
    if(rotation==1)return vec2(1.0-uv.y,uv.x);
    if(rotation==2)return 1.0-uv;
    if(rotation==3)return vec2(uv.y,1.0-uv.x);
    return uv;
}
vec4 wallSample(vec2 uv) {
    if(uWallBitmap==0) return live(uWall,rotateInput(uv,uWallRotation));
    vec4 crop=uPanel==0?uInnerWallCrop:uCoverWallCrop;
    return live(uWall,crop.xy+vec2(uv.x,1.0-uv.y)*crop.zw);
}
// 整屏镜像路径的内屏：左叶是壁纸（桌面时外屏网格平移过来），右叶是外屏侧栏插值；目标画面按 uInnerMix 淡入。
vec4 innerMirror(vec2 uv, bool left) {
    vec4 geometry=mix(uCoverGeometry,uInnerGeometry,uInnerMix);
    vec2 right=vec2((uv.x-0.5)*2.0,uv.y);
    vec2 old=railUV(right,uCoverGeometry,geometry);
    vec2 next=railUV(right,uInnerGeometry,geometry);
    vec2 innerUV=left?uv:vec2(0.5+next.x*0.5,next.y);
    vec4 c;
    if(uDesktop==1 && right.x<geometry.w) {
        vec2 grid=(uv*INNER_PX-GRID_SHIFT)/COVER_PX;
        if(grid.x>=0.0 && grid.x<uCoverGeometry.w && grid.y>=0.0 && grid.y<=1.0) c=live(uCover,grid);
        else c=wallSample(uv);
        innerUV=uv;
    } else c = left ? wallSample(uv) : live(uCover,old);
    if (uInnerReady == 1) c = mix(c,live(uInner,rotateInput(innerUV,uInnerRotation)),uInnerMix);
    return c;
}
// 整屏镜像路径的外屏：取内屏右叶（桌面时网格反向平移），外屏画面按 uCoverMix 淡入。
vec4 coverMirror(vec2 uv) {
    vec4 geometry=mix(uInnerGeometry,uCoverGeometry,uCoverMix);
    vec2 old=railUV(uv,uInnerGeometry,geometry),next=railUV(uv,uCoverGeometry,geometry);
    vec2 innerUV=vec2(0.5+old.x*0.5,old.y);
    if(uDesktop==1 && uv.x<geometry.w) innerUV=(uv*COVER_PX+GRID_SHIFT)/INNER_PX;
    vec4 c = live(uInner,rotateInput(innerUV,uInnerRotation));
    if (uCoverReady == 1) c = mix(c,live(uCover,next),uCoverMix);
    return c;
}
// 独立面板按真实矩形等尺寸搬到目标位置；避免时钟/搜索在换帧时缩放或变形。
vec2 sideUV(vec2 uv,bool toInner) {
    vec2 targetSize=toInner?INNER_PX:COVER_PX;
    vec2 sourceSize=toInner?COVER_PX:INNER_PX;
    vec2 pixel=vec2(uv.x,1.0-uv.y)*targetSize;
    for(int i=0;i<3;i++) {
        vec4 target=toInner?uInnerSideRects[i]:uCoverSideRects[i];
        vec4 source=toInner?uCoverSideRects[i]:uInnerSideRects[i];
        if(all(greaterThanEqual(pixel,target.xy)) && all(lessThan(pixel,target.xy+target.zw))) {
            vec2 p=(source.xy+(pixel-target.xy)*source.zw/target.zw)/sourceSize;
            return vec2(p.x,1.0-p.y);
        }
    }
    // 三个侧栏模块之外保留透明，不把旧位置的面板边缘再采样出来。
    return vec2(-1.0);
}
// 输入上半张为透明前景，下半张为 SF 在当前屏完整壁纸上合成的前景。
vec4 layerSample(sampler2D stream, vec2 uv, vec2 size, vec4 crop, vec4 sides[3]) {
    vec2 q=clamp(uv,0.5/size,1.0-0.5/size);
    vec4 foreground=textureLod(stream,vec2(q.x,0.5+q.y*0.5),0.0);
    vec2 pixel=vec2(uv.x,1.0-uv.y)*size;
    for(int i=1;i<3;i++) {
        vec4 rect=sides[i];
        if(pixel.x>=rect.x && pixel.x<rect.x+rect.z && pixel.y>=rect.y && pixel.y<rect.y+rect.w && foreground.a>0.0) {
            vec3 backed=textureLod(stream,vec2(q.x,q.y*0.5),0.0).rgb;
            vec3 wallpaper=textureLod(uWall,crop.xy+vec2(q.x,1.0-q.y)*crop.zw,0.0).rgb;
            // 只取玻璃对背景的贡献，保留原 alpha；透明边缘仍由固定目标壁纸填充。
            foreground.rgb=backed-wallpaper*(1.0-foreground.a);
            break;
        }
    }
    return foreground;
}
// 分层路径：透明前景（Home 与侧栏镜像）按网格/侧栏矩形映射后，盖到静态原图壁纸上。
vec4 layeredContent(vec2 uv) {
    vec4 crop=uPanel==0?uInnerWallCrop:uCoverWallCrop;
    // 原始图片在 GLUtils 上传后 y 从图片顶部计；两屏各用自己的系统裁切。
    vec4 background=live(uWall,crop.xy+vec2(uv.x,1.0-uv.y)*crop.zw);
    vec4 foreground;
    float coverStart=min(uCoverGeometry.w,uCoverSideRects[2].x/COVER_PX.x);
    float innerStart=min(uInnerGeometry.w,(uInnerSideRects[2].x-1182.0)/1182.0);
    if(uPanel==0) {
        vec2 right=vec2((uv.x-0.5)*2.0,uv.y);
        if(right.x<innerStart) {
            vec2 grid=(uv*INNER_PX-GRID_SHIFT)/COVER_PX;
            foreground=grid.x>=0.0&&grid.x<coverStart&&grid.y>=0.0&&grid.y<=1.0
                ?layerSample(uCover,grid,uCoverSize,uCoverWallCrop,uCoverSideRects):vec4(0.0);
        } else {
            vec2 side=sideUV(uv,true);
            foreground=side.x>=0.0?layerSample(uCover,side,uCoverSize,uCoverWallCrop,uCoverSideRects):vec4(0.0);
        }
        if(uInnerReady==1)foreground=mix(foreground,layerSample(uInner,uv,uInnerSize,uInnerWallCrop,uInnerSideRects),uInnerMix);
    } else {
        vec2 mapped=uv.x<coverStart ? (uv*COVER_PX+GRID_SHIFT)/INNER_PX : sideUV(uv,false);
        foreground=mapped.x>=0.0?layerSample(uInner,mapped,uInnerSize,uInnerWallCrop,uInnerSideRects):vec4(0.0);
        if(uCoverReady==1)foreground=mix(foreground,layerSample(uCover,uv,uCoverSize,uCoverWallCrop,uCoverSideRects),uCoverMix);
    }
    // SurfaceFlinger 输出预乘 alpha；先混合本次前景，再盖到固定的目标壁纸上。
    return vec4(foreground.rgb+background.rgb*(1.0-foreground.a),1.0);
}

// ---- 材质（uOpticsPass=1）----
float lightSegment(float a,vec2 range,vec2 value,vec2 slope) {
    float h=range.y-range.x,t=clamp((a-range.x)/h,0.0,1.0),t2=t*t,t3=t2*t;
    return (2.0*t3-3.0*t2+1.0)*value.x+(t3-2.0*t2+t)*h*slope.x
        +(-2.0*t3+3.0*t2)*value.y+(t3-t2)*h*slope.y;
}
float innerLight(float a) {
    // C1 monotone fit to 32 visible reference measurements. Endpoint derivatives are zero.
    if(a < 42.62024000) return lightSegment(a,vec2(0.00000000,42.62024000),vec2(0.00000000,0.21251225),vec2(0.00000000,0.00400830));
    if(a < 64.42348081) return lightSegment(a,vec2(42.62024000,64.42348081),vec2(0.21251225,0.28798347),vec2(0.00400830,0.00514540));
    if(a < 86.19428486) return lightSegment(a,vec2(64.42348081,86.19428486),vec2(0.28798347,0.50602178),vec2(0.00514540,0.00922323));
    if(a < 110.51847640) return lightSegment(a,vec2(86.19428486,110.51847640),vec2(0.50602178,0.71335783),vec2(0.00922323,0.00743451));
    if(a < 132.81808505) return lightSegment(a,vec2(110.51847640,132.81808505),vec2(0.71335783,0.86083461),vec2(0.00743451,0.00544070));
    if(a < 153.72233696) return lightSegment(a,vec2(132.81808505,153.72233696),vec2(0.86083461,0.95774914),vec2(0.00544070,0.00243244));
    return lightSegment(a,vec2(153.72233696,180.00000000),vec2(0.95774914,1.00000000),vec2(0.00243244,0.00000000));
}
const vec3 AC_FROST_LEVELS = vec3(0.003425, 0.008562, 0.020548);   // pre-blur levels, width fraction
const float AC_FROST_TOP = 0.095;   // 第四档：苹果左页强磨砂
// 用户 2026-10-25 选定：应用从外屏打开时，内屏右叶平放显示的是外屏旧画面（应用约 0.6 s 后才在内屏画出新布局）。
// 右叶按左叶磨砂镜像（外边更糊、随角度变清楚）；内屏画面淡入前不低于同形状的保底（用户选"浓一点"，为折痕处值），随 uInnerMix 一起退去。
const float APP_WAIT_FLOOR = AC_FROST_LEVELS.z;

// 苹果参考实测表：按绘制角 a、距自由边 d 查 (合成纹理宽度份额 σ, 对比度增益 G, 编码偏移 B/255)。
// 最终色 = G·模糊色 + B。角度节点之间线性插值；d 节点 0.15…0.85，外侧保持端值。
// 用户选定自由边磨砂加强 2 倍；2026-10-24 按苹果参考评分优化：只在自由边加强，
// 半屏宽（FROST_FALLOFF）内过渡回参考强度，靠折痕一半与参考一致（整面加强时折痕侧过糊）。
const float FROST_STRENGTH = 2.8;
const float FROST_FALLOFF = 0.7;
// 用户选定：外屏模糊提前、快一倍——按 2 倍角度推进到参考最强段（64.4°），保持到 64.4° 后照参考回落；
// 与加强同样只作用在自由边一侧，靠折痕按参考节奏；明暗泛白不变。
const float COVER_BLUR_SPEED = 1.6;
const float COVER_BLUR_PEAK = 64.4;
// 406-11：内外屏共用强度 3.0/范围 0.7；外屏开盖前段节奏 SPEED=1.6（406-8 的 3.0 太早糊到顶、406-10 的 1.0 太慢），过了峰值角后只按
// COVER_LATE_SLOPE 的速度沿参考表回落，后段保持较强磨砂。内外屏共用同一组强度/范围（FROST_STRENGTH/FROST_FALLOFF）。
const float COVER_LATE_SLOPE = 0.3;
// 406-14：外屏还不够糊——外屏自由边强度再乘 COVER_BOOST（外屏面板更小更窄，同样的 σ 份额看起来更清）。
const float COVER_BOOST = 1.9;
// 406-15：合盖时内屏左页的效果很好（σ 大 + 对比度压到 0.36–0.5，像一层发灰的毛玻璃），外屏做不到——外屏参考表的对比度几乎不压
// （0.8–1.0），所以只是“糊”，没有“玻璃的厚度”。外屏的对比度增益单独做成：8°→45° 从 1.0 压到 COVER_GLASS_GAIN，保持到峰值角，
// 过峰值角再慢慢回到 0.7；空间上同样用玻璃面板衰减，自由边最重、折痕侧轻。
const float COVER_GLASS_GAIN = 0.55;
// 外屏边框向中间压暗（对照苹果参考目测）：上下边与自由边一圈，越靠自由边、角度越大越暗。
const float COVER_EDGE_DARK = 0.65;
const float COVER_EDGE_WIDTH = 0.14;
// 外屏泛白（苹果参考 26° 乳白、64–73° 扫光，表中正偏移 B）：用户反馈开合时像闪一下，定为 0 关闭；变暗保留。
const float COVER_MILKY = 0.0;
// ==== 苹果实测表：tools/optics/tables.py 由 params.json 生成，勿手改 ====
const float CV_A[15] = float[15](0.000000, 15.488000, 25.964000, 31.983000, 37.055000, 42.620000, 48.187000, 53.418000, 57.837000, 61.049000, 64.423000, 68.633000, 73.285000, 77.732000, 180.000000);
const float CV_S[120] = float[120](0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.002577, 0.000644, 0.001289, 0.001289, 0.000000, 0.000000, 0.000000, 0.000000, 0.007732, 0.003866, 0.003866, 0.002577, 0.002577, 0.002577, 0.002577, 0.002577, 0.010309, 0.007732, 0.003866, 0.003866, 0.002577, 0.002577, 0.000644, 0.000644, 0.010309, 0.007732, 0.005155, 0.005155, 0.003866, 0.002577, 0.000644, 0.000644, 0.015464, 0.010309, 0.005155, 0.005155, 0.003866, 0.002577, 0.002577, 0.002577, 0.015464, 0.010309, 0.007732, 0.005155, 0.005155, 0.001718, 0.000644, 0.000644, 0.015464, 0.010309, 0.007732, 0.005155, 0.005155, 0.003866, 0.000644, 0.000644, 0.015464, 0.010309, 0.007732, 0.007732, 0.002899, 0.003866, 0.000644, 0.000644, 0.015464, 0.010309, 0.007732, 0.007732, 0.005155, 0.003866, 0.000644, 0.000644, 0.015464, 0.010309, 0.007732, 0.005155, 0.005155, 0.005155, 0.002577, 0.002577, 0.010309, 0.010309, 0.005155, 0.005155, 0.005155, 0.003866, 0.000644, 0.000644, 0.007732, 0.005155, 0.005155, 0.005155, 0.003866, 0.001718, 0.000644, 0.000644, 0.005155, 0.005155, 0.003866, 0.002577, 0.002577, 0.002577, 0.000000, 0.000000, 0.005155, 0.005155, 0.003866, 0.002577, 0.002577, 0.002577, 0.000000, 0.000000);
const float CV_G[120] = float[120](1.000000, 1.000000, 1.000000, 1.000000, 1.000000, 1.000000, 1.000000, 1.000000, 0.949646, 0.955400, 0.962840, 0.968463, 0.973023, 0.980914, 0.989402, 0.995048, 0.798292, 0.785073, 0.778534, 0.798450, 0.840805, 0.894525, 0.943887, 0.976159, 0.855292, 0.887645, 0.908091, 0.924412, 0.948853, 0.973425, 0.991288, 1.000872, 0.858168, 0.879714, 0.900195, 0.916975, 0.944492, 0.973431, 0.992738, 1.004128, 0.853262, 0.854179, 0.876899, 0.909847, 0.944560, 0.972919, 0.993093, 1.007035, 0.815450, 0.832140, 0.854411, 0.895654, 0.941015, 0.968851, 0.989281, 1.007343, 0.767391, 0.790825, 0.835191, 0.888622, 0.933616, 0.967795, 0.990328, 1.007035, 0.767183, 0.771071, 0.835442, 0.897619, 0.914998, 0.946041, 0.983597, 1.004885, 0.724107, 0.743422, 0.829986, 0.903775, 0.909548, 0.921235, 0.966917, 1.001562, 0.654393, 0.734422, 0.837731, 0.873301, 0.858149, 0.824013, 0.826199, 0.842501, 0.495242, 0.621671, 0.741849, 0.809480, 0.811005, 0.826000, 0.916430, 0.982262, 0.625493, 0.712286, 0.778542, 0.744777, 0.727731, 0.792518, 0.896535, 0.962556, 0.612732, 0.618878, 0.633439, 0.655223, 0.697647, 0.769419, 0.872128, 0.938423, 0.612732, 0.618878, 0.633439, 0.655223, 0.697647, 0.769419, 0.872128, 0.938423);
const float CV_B[120] = float[120](0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, -0.002137, -0.001878, -0.001543, -0.000319, 0.001364, 0.001231, 0.000387, 0.000059, 0.101407, 0.132880, 0.161625, 0.163789, 0.139740, 0.100574, 0.060611, 0.032965, 0.039333, 0.021171, 0.008109, 0.001851, -0.002278, -0.004320, -0.005422, -0.006104, 0.007771, 0.005319, 0.003188, -0.000709, -0.004707, -0.006168, -0.007313, -0.008400, 0.005882, 0.009653, 0.007167, -0.000835, -0.006551, -0.008288, -0.008913, -0.009723, 0.016326, 0.014266, 0.007287, -0.002475, -0.008098, -0.008930, -0.008742, -0.010423, 0.023935, 0.018985, 0.004927, -0.006161, -0.008487, -0.009878, -0.009437, -0.010369, 0.018256, 0.015738, -0.000786, -0.010619, -0.006479, -0.005696, -0.007249, -0.009701, 0.022941, 0.017172, -0.002004, -0.011771, -0.003791, 0.001972, -0.002123, -0.008413, 0.031999, 0.013427, -0.005856, 0.001973, 0.036241, 0.093415, 0.151151, 0.188838, 0.223485, 0.152417, 0.078670, 0.035351, 0.030985, 0.032770, 0.011775, -0.004799, 0.024535, 0.006019, -0.001437, 0.025324, 0.046553, 0.038210, 0.014578, -0.000925, 0.022997, 0.030538, 0.040068, 0.050762, 0.053783, 0.042625, 0.018881, 0.003254, 0.022997, 0.030538, 0.040068, 0.050762, 0.053783, 0.042625, 0.018881, 0.003254);
const float IN_A[15] = float[15](110.518000, 113.843000, 117.324000, 121.214000, 125.303000, 129.090000, 132.818000, 137.515000, 142.362000, 147.962000, 153.722000, 157.995000, 162.894000, 170.751000, 180.000000);
const float IN_S[120] = float[120](0.015440, 0.013175, 0.006588, 0.006588, 0.003706, 0.003706, 0.002470, 0.003706, 0.015440, 0.013175, 0.011117, 0.006588, 0.003706, 0.003706, 0.002470, 0.003706, 0.015440, 0.013175, 0.011117, 0.006588, 0.003706, 0.002470, 0.002470, 0.002470, 0.015440, 0.015440, 0.007411, 0.011117, 0.003706, 0.002470, 0.002470, 0.002470, 0.015440, 0.015440, 0.007411, 0.011117, 0.003706, 0.002470, 0.002470, 0.002470, 0.017787, 0.015440, 0.013175, 0.011117, 0.003706, 0.002470, 0.001390, 0.001390, 0.017787, 0.015440, 0.007411, 0.004941, 0.003706, 0.002470, 0.001390, 0.001390, 0.015440, 0.013175, 0.007411, 0.004941, 0.003706, 0.002470, 0.001390, 0.001390, 0.015440, 0.013175, 0.004941, 0.004941, 0.003706, 0.002470, 0.001390, 0.001390, 0.009882, 0.007411, 0.004941, 0.003706, 0.002470, 0.001853, 0.000823, 0.000823, 0.007411, 0.004941, 0.003706, 0.002470, 0.001853, 0.000823, 0.000823, 0.000823, 0.003706, 0.002470, 0.002470, 0.001390, 0.001853, 0.000823, 0.000823, 0.000823, 0.002470, 0.001390, 0.001853, 0.000823, 0.000823, 0.000309, 0.000309, 0.000309, 0.001853, 0.000823, 0.000823, 0.000309, 0.000309, 0.000309, 0.000309, 0.000309, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
const float IN_G[120] = float[120](0.360000, 0.405002, 0.480277, 0.573156, 0.629323, 0.651313, 0.663530, 0.642135, 0.366569, 0.415886, 0.485054, 0.575730, 0.647791, 0.679027, 0.701854, 0.680998, 0.371565, 0.426108, 0.499201, 0.582684, 0.654583, 0.703231, 0.734175, 0.720735, 0.369863, 0.427846, 0.504137, 0.580335, 0.651506, 0.716658, 0.757615, 0.760341, 0.376017, 0.432850, 0.507469, 0.581515, 0.656693, 0.724808, 0.766426, 0.781359, 0.410732, 0.464864, 0.536300, 0.607935, 0.681855, 0.743969, 0.781509, 0.804541, 0.457229, 0.506647, 0.569753, 0.635522, 0.705406, 0.765418, 0.806717, 0.832655, 0.516007, 0.563838, 0.626651, 0.689939, 0.752224, 0.805890, 0.846986, 0.872516, 0.578832, 0.622350, 0.679407, 0.738078, 0.796057, 0.846417, 0.885442, 0.907213, 0.643485, 0.682073, 0.734001, 0.786555, 0.837996, 0.885112, 0.921743, 0.939440, 0.742087, 0.770392, 0.810968, 0.851686, 0.889950, 0.926314, 0.955258, 0.967456, 0.811837, 0.830934, 0.864793, 0.899931, 0.928896, 0.956566, 0.979037, 0.986019, 0.866952, 0.881514, 0.908647, 0.935769, 0.956878, 0.978397, 0.995428, 0.997813, 0.922461, 0.929644, 0.945470, 0.961170, 0.973840, 0.989540, 1.001727, 1.001852, 1.000000, 1.000000, 1.000000, 1.000000, 1.000000, 1.000000, 1.000000, 1.000000);
const float IN_B[120] = float[120](-0.011447, -0.014287, -0.023349, -0.040517, -0.045846, -0.038017, -0.028094, -0.012658, -0.016463, -0.021660, -0.029628, -0.045489, -0.055798, -0.050439, -0.043289, -0.028519, -0.012106, -0.019673, -0.029665, -0.044231, -0.055499, -0.056808, -0.052572, -0.039672, 0.005297, -0.004297, -0.016093, -0.028640, -0.039233, -0.047027, -0.048092, -0.041405, 0.016783, 0.007708, -0.003078, -0.014002, -0.026187, -0.036379, -0.038089, -0.034619, 0.014054, 0.006271, -0.002066, -0.010785, -0.022111, -0.030001, -0.030105, -0.028799, 0.003771, -0.002212, -0.006725, -0.012337, -0.021365, -0.027724, -0.028938, -0.028699, -0.002803, -0.011413, -0.018610, -0.023660, -0.030026, -0.034716, -0.035913, -0.035916, -0.005109, -0.015709, -0.024353, -0.030135, -0.036254, -0.040949, -0.042865, -0.042054, 0.000282, -0.012499, -0.024423, -0.031182, -0.036229, -0.041642, -0.044554, -0.042496, 0.000589, -0.011222, -0.023764, -0.030635, -0.033929, -0.037755, -0.040389, -0.038646, 0.004766, -0.004671, -0.017678, -0.026102, -0.028779, -0.031036, -0.033262, -0.032387, 0.005669, -0.002042, -0.014453, -0.022515, -0.024466, -0.026080, -0.027779, -0.026903, 0.005645, 0.001644, -0.006474, -0.011941, -0.013202, -0.014790, -0.016428, -0.015784, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000, 0.000000);
vec3 coverTable(float a, float d) {
    int i = 0;
    for (int k = 0; k < 14; k++) if (a >= CV_A[k]) i = k;
    float t = clamp((a - CV_A[i]) / (CV_A[i + 1] - CV_A[i]), 0.0, 1.0);
    float fd = clamp((d - 0.15) / 0.10, 0.0, 6.999);
    int j = int(fd); float u = fd - float(j);
    int p = i * 8 + j, q = (i + 1) * 8 + j;
    vec3 a0 = mix(vec3(CV_S[p], CV_G[p], CV_B[p]), vec3(CV_S[p + 1], CV_G[p + 1], CV_B[p + 1]), u);
    vec3 a1 = mix(vec3(CV_S[q], CV_G[q], CV_B[q]), vec3(CV_S[q + 1], CV_G[q + 1], CV_B[q + 1]), u);
    return mix(a0, a1, t);
}
vec3 innerTable(float a, float d) {
    int i = 0;
    for (int k = 0; k < 14; k++) if (a >= IN_A[k]) i = k;
    float t = clamp((a - IN_A[i]) / (IN_A[i + 1] - IN_A[i]), 0.0, 1.0);
    float fd = clamp((d - 0.15) / 0.10, 0.0, 6.999);
    int j = int(fd); float u = fd - float(j);
    int p = i * 8 + j, q = (i + 1) * 8 + j;
    vec3 a0 = mix(vec3(IN_S[p], IN_G[p], IN_B[p]), vec3(IN_S[p + 1], IN_G[p + 1], IN_B[p + 1]), u);
    vec3 a1 = mix(vec3(IN_S[q], IN_G[q], IN_B[q]), vec3(IN_S[q + 1], IN_G[q + 1], IN_B[q + 1]), u);
    return mix(a0, a1, t);
}
// ==== 苹果实测表结束 ====
// 应用等待磨砂：右叶距自由边（x=1）的份额 d=2(1-x)，与左叶 d=2x 对称。
float appWaitFrost(float a, float x) {
    float d=(1.0-x)*2.0;
    float shape=mix(FROST_STRENGTH,1.0,smoothstep(0.0,FROST_FALLOFF,d));   // 外边 2 倍、折痕 1 倍，同左叶
    return max(innerTable(clamp(a,0.0,180.0),d).x,APP_WAIT_FLOOR)*shape*(1.0-uInnerMix);
}
// 406-12：苹果像“一层磨砂玻璃”从自由边盖上来。实测表按距离分 8 档、档间不单调（如 57.8° 行 7.7,7.7,2.9,3.9），
// 叠加自由边加倍就出现一条条“割裂”的带。这里只取表在自由边一列的 σ(a)（时间曲线保持），空间上改成平滑单调的
// 面板衰减 σ(d)=σ边/(1+(d/c)²)：c 是玻璃盖到的深度（半衰处），随角度推进；全幅都有一层底糊，没有硬边。
float frostPane(float d, float c) {
    float r = d / max(c, 1e-3);
    return 1.0 / (1.0 + r * r);
}
float coverCoverage(float af) { return mix(0.24, 0.62, smoothstep(8.0, 55.0, af)); }
float innerCoverage(float af) { return mix(0.48, 0.20, smoothstep(112.0, 165.0, af)); }
// 内屏：左页查苹果表（d=2x）；右页保持原整体亮度（含右页提前亮）与外沿轻磨砂；中缝 0.47–0.53 平滑。
vec3 innerOptics(float a, float x) {
    float af = clamp(a, 0.0, 180.0);
    vec3 left = innerTable(af, x * 2.0);
    left.x = innerTable(af, 0.0).x * FROST_STRENGTH * frostPane(x * 2.0, innerCoverage(af));
    // 参考最早可测 110.5°；更小角度随原亮度曲线同比变暗。
    if (af < IN_A[0]) left.yz *= innerLight(af) / innerLight(IN_A[0]);
    float edge = 0.005 * 0.2 * smoothstep(0.70, 1.0, (x - 0.5) * 2.0) * (1.0 - smoothstep(130.0, 168.0, af)) * 2.5;
    vec3 right = vec3(edge, innerLight(min(180.0, af + 20.0 * sin(radians(af)))), 0.0);
    return mix(left, right, smoothstep(0.47, 0.53, x));
}
vec3 coverOptics(float a, float x) {
    float af = clamp(a, 0.0, 180.0);
    vec3 t = coverTable(af, 1.0 - x);
    float blurAngle = af < COVER_BLUR_PEAK ? max(af, min(COVER_BLUR_SPEED * af, COVER_BLUR_PEAK))
                                           : COVER_BLUR_PEAK + COVER_LATE_SLOPE * (af - COVER_BLUR_PEAK);
    float sigma = coverTable(blurAngle, 0.0).x * FROST_STRENGTH * COVER_BOOST * frostPane(1.0 - x, coverCoverage(af));
    float gEdge = af < COVER_BLUR_PEAK ? mix(1.0, COVER_GLASS_GAIN, smoothstep(8.0, 45.0, af))
                                       : mix(COVER_GLASS_GAIN, 0.7, smoothstep(COVER_BLUR_PEAK, 95.0, af));
    float gain = mix(1.0, gEdge, frostPane(1.0 - x, coverCoverage(af)));
    return vec3(sigma, gain, min(t.z, COVER_MILKY * t.z));
}
float roundCover(vec2 uv, float w) {
    vec2 size=uComposedSize, p=uv*size;
    float r=uPanel==0 ? 142.0*size.y/1672.0
                      : (p.x<size.x*0.5 ? 28.0 : 154.0)*size.x/1168.0;
    vec2 q=abs(p-size*0.5)-size*0.5+r;
    float d=length(max(q,0.0))+min(max(q.x,q.y),0.0)-r;
    return 1.0-smoothstep(-w,w,d);
}
// 只用于材质：在原图坐标的高斯核上取样，逆局部投影换算到本帧合成纹理。
vec4 frostGaussian(vec2 uv, float sigma, mat2 inverseProjection) {
    vec2 size=uComposedSize;
    vec2 dx=inverseProjection*vec2(sigma/size.x,0.0)*size;
    vec2 dy=inverseProjection*vec2(0.0,sigma/size.y)*size;
    float lod=log2(max(1.0,min(length(dx),length(dy))*0.6));
    // 406-13：原 7×7 方格取样在大 σ 下是等间距的 49 个点，模糊后的高亮（时钟等）会出现一条条竖线/网格“线条感”。
    // 改成按高斯分布取半径的 Vogel 螺旋 40 点（黄金角、各向同性、权重相等），每像素用交错梯度噪声转一个角度，
    // 把规则的取样图案打散成极细的颗粒，再由 mip 取样填平。取样点数少于原来的 49，运算量不增。
    float rot=6.2831853*fract(52.9829189*fract(dot(gl_FragCoord.xy,vec2(0.06711056,0.00583715))));
    const int N=40;
    const float RMAX=2.8;
    float tail=1.0-exp(-0.5*RMAX*RMAX);
    vec4 color=vec4(0.0);
    for(int i=0;i<N;i++) {
        float u=(float(i)+0.5)/float(N);
        float r=sqrt(-2.0*log(1.0-u*tail));
        float th=float(i)*2.39996323+rot;
        vec2 q=vec2(cos(th),sin(th))*r;
        vec2 offset=inverseProjection*(q*sigma/size);
        vec4 s=textureLod(uComposed,clamp(uv+offset,0.0,1.0),lod);
        color+=vec4(pow(max(s.rgb,0.0),vec3(2.2)),s.a); // 线性亮度相加：亮处像隔着毛玻璃一样晕开
    }
    color/=float(N);
    return vec4(pow(color.rgb,vec3(1.0/2.2)),color.a);
}
vec4 frostSample(vec2 uv, vec2 projectedUV, float sigmaFraction) {
    mat2 projection=mat2(dFdx(projectedUV)*uComposedSize.x,dFdy(projectedUV)*uComposedSize.y);
    // 显式 LOD0：隐式导数在分支内会选到别的 mip，磨砂 0→非 0 交界出现细竖纹。
    if(sigmaFraction<=0.0)return textureLod(uComposed,uv,0.0);
    // 铰链或源图边界处局部投影可能退化（行列式≈0），按不压缩处理，避免 inverse 产生 NaN 花点。
    mat2 inverseProjection=abs(determinant(projection))>1e-6 ? inverse(projection) : mat2(1.0);
    vec3 levels=AC_FROST_LEVELS;
    float low=0.0,high=levels.x;
    if(sigmaFraction>levels.x) {low=levels.x;high=levels.y;}
    if(sigmaFraction>levels.y) {low=levels.y;high=levels.z;}
    if(sigmaFraction>levels.z) {low=levels.z;high=AC_FROST_TOP;}
    vec4 a=low==0.0 ? textureLod(uComposed,uv,0.0) : frostGaussian(uv,low*uComposedSize.x,inverseProjection);
    vec4 b=frostGaussian(uv,high*uComposedSize.x,inverseProjection);
    float t=clamp((sigmaFraction-low)/(high-low),0.0,1.0);
    vec3 linear=mix(pow(max(a.rgb,0.0),vec3(2.2)),pow(max(b.rgb,0.0),vec3(2.2)),t);
    return vec4(pow(linear,vec3(1.0/2.2)),mix(a.a,b.a,t));
}
vec4 applyInnerOptics(vec4 c, vec2 uv, vec3 effect) {
    float width=max(max(fwidth(uv).x,0.5/uComposedSize.x)*uComposedSize.x,1.0)+effect.x*uComposedSize.x;
    // 圆角覆盖率沿用旧版编码域 ^(1/2.2)。
    c.rgb=(effect.y*c.rgb+effect.z)*pow(roundCover(uv,width),1.0/2.2);
    return c;
}
vec4 applyCoverOptics(vec4 c, vec2 uv, vec3 effect) {
    float width=max(max(fwidth(uv).x,0.5/uComposedSize.x)*uComposedSize.x,1.0)+effect.x*uComposedSize.x;
    c.rgb=(effect.y*c.rgb+effect.z)*pow(roundCover(uv,width),1.0/2.2);
    // uv 为外屏面板坐标，x=1 为自由边；压暗跟着面板边缘走。
    float top=1.0-smoothstep(0.0,COVER_EDGE_WIDTH,min(uv.y,1.0-uv.y));
    float free=1.0-smoothstep(0.0,COVER_EDGE_WIDTH,1.0-uv.x);
    float edge=max(top*mix(0.35,1.0,smoothstep(0.3,1.0,uv.x)),free);
    c.rgb*=1.0-COVER_EDGE_DARK*smoothstep(15.0,48.0,uAngle)*edge;
    if(uAngle>=179.999)c.rgb=vec3(0.0);
    return c;
}

void main() {
    float height = 2.0 * uPanelSize.y / uPanelSize.x;
    float bend = PI - radians(clamp(uAngle, 0.0, 180.0));
    vec2 uv = sourceUV(vUV, height, bend);
    if(uOpticsPass==1) {
        // 材质只作用于已合成的本帧内容，不参与内容的选择与映射。
        vec3 effect=uPanel==0 ? innerOptics(uAngle,vUV.x) : coverOptics(uAngle,vUV.x);
        if(uPanel==0 && uApp==1) effect.x=max(effect.x,appWaitFrost(uAngle,vUV.x)*smoothstep(0.47,0.53,vUV.x));
        vec4 c=frostSample(vUV,uv,effect.x);
        fragColor=uPanel==0 ? applyInnerOptics(c,uv,effect) : applyCoverOptics(c,uv,effect);
    } else if(uLayered==1) fragColor=layeredContent(uv);
    else fragColor=uPanel==0 ? innerMirror(uv,vUV.x<0.5) : coverMirror(uv);
}
