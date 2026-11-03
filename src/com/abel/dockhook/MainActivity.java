package com.abel.dockhook;

import android.app.Activity;
import android.os.Bundle;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

public class MainActivity extends Activity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ScrollView sv = new ScrollView(this);
        LinearLayout ll = new LinearLayout(this);
        ll.setOrientation(LinearLayout.VERTICAL);
        int pad = (int) (getResources().getDisplayMetrics().density * 20);
        ll.setPadding(pad, pad, pad, pad);
        TextView tv = new TextView(this);
        tv.setTextSize(15);
        tv.setText("桌面 Dock 定制 v0.1.0\n\n"
            + "作用域：com.miui.home\n\n"
            + "当前为技术验证版：\n"
            + "· 已定位 Dock 位置计算函数 calculatePositionX\n"
            + "· 已在桌面进程加载 native hook\n"
            + "· 查看日志：adb logcat -s DSHDock\n\n"
            + "后续版本将加入：\n"
            + "· Dock 停靠位置（左/右）\n"
            + "· 竖排 / 横排切换\n"
            + "· 柔光玻璃背景\n"
            + "· 搜索栏与状态栏胶囊跟随");
        ll.addView(tv);
        sv.addView(ll);
        setContentView(sv);
    }
}
