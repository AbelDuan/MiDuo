package btm.p000m.os4.systemuihook.newnotificationcenter;

/* renamed from: btm.m.os4.systemuihook.newnotificationcenter.i */
/* loaded from: classes.dex */
public final class C0018i {

    /* renamed from: a */
    public static final String f429a = "ios_notification_header";

    /* renamed from: b */
    public static final String f430b = "ios_notification_clear_style";

    /* renamed from: c */
    public static final String f431c = "ios_notification_clear_material";

    /* renamed from: d */
    public static final String f432d = "ios_notification_clear_radius";

    /* renamed from: e */
    public static final String f433e = "ios_notification_clear_pure_color";

    /* renamed from: f */
    public static final String f434f = "ios_notification_clear_advanced_color";

    /* renamed from: g */
    public static final String f435g = "ios_notification_clear_advanced_opacity";

    /* renamed from: h */
    public static final String f436h = "ios_notification_clear_advanced_blur";

    /* renamed from: i */
    public static final String f437i = "ios_notification_clear_advanced_highlight";

    /* renamed from: j */
    public static final String f438j = "ios_notification_clear_soft_color";

    /* renamed from: k */
    public static final String f439k = "ios_notification_clear_soft_opacity";

    /* renamed from: l */
    public static final String f440l = "ios_notification_clear_soft_backdrop_blur";

    /* renamed from: m */
    public static final String f441m = "ios_notification_clear_soft_blur";

    /* renamed from: n */
    public static final String f442n = "ios_notification_clear_soft_luminance";

    /* renamed from: o */
    public static final String f443o = "ios_notification_clear_soft_refraction";

    /* renamed from: p */
    public static final String f444p = "ios_notification_header_content_mode";

    /* renamed from: q */
    public static final String f445q = "ios_notification_header_content_text";

    /* renamed from: r */
    public static final String f446r = "ios_notification_header_content_icon";

    /* renamed from: s */
    public static final String f447s = "ios_notification_header_builtin_icon";

    /* renamed from: t */
    public static final String f448t = "ios_notification_header_icon_scale";

    /* renamed from: u */
    public static final String f449u = "ios_notification_header_text_scale";

    /* renamed from: v */
    public static final String f450v = "ios_notification_header_icon_text_spacing";

    /* renamed from: w */
    public static final int f451w = 3;

    /* renamed from: x */
    public static final int f452x = 72;

    /* renamed from: y */
    public static final int f453y = 393216;

    private C0018i() {
    }

    /* renamed from: a */
    public static int m448a(int i, int i2, int i3) {
        int i4 = 1;
        while (true) {
            int i5 = i4 * 2;
            if (Math.max(i, i2) / i5 < i3) {
                return i4;
            }
            i4 = i5;
        }
    }
}
