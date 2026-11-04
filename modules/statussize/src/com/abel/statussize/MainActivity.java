package com.abel.statussize;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.provider.Settings;
import android.text.InputType;
import android.view.Gravity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

/**
 * 配置界面：只负责收集数值并广播给 SystemUI 进程，
 * 真正的 Settings.Global 写入由模块在 SystemUI 侧完成（那里有 WRITE_SECURE_SETTINGS）。
 */
public class MainActivity extends Activity {

    private static final String ACTION_SET = "com.dsh.statussize.SET";
    private static final String KEY_SB = "dsh_sb_height_dp";
    private static final String KEY_HDR = "dsh_shade_header_dp";
    private static final String KEY_DOTS = "dsh_dots_height_dp";
    private static final String KEY_APPTOP = "dsh_app_top_dp";
    private static final String KEY_PULL = "dsh_pull_edge_dp";

    private EditText etSb;
    private EditText etHdr;
    private EditText etDots;
    private EditText etAppTop;
    private EditText etPull;

    @Override
    protected void onCreate(Bundle b) {
        super.onCreate(b);

        int pad = dp(24);
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(pad, pad, pad, pad);

        TextView title = new TextView(this);
        title.setText("状态栏尺寸调节");
        title.setTextSize(22);
        root.addView(title);

        TextView desc = new TextView(this);
        desc.setText("\n「系统状态栏高度」\n"
                + "  0 = 完全隐藏状态栏（内容不可见，仍可从屏幕顶部下滑拉出通知栏）\n"
                + "  >0 = 自定义高度（dp），内容正常显示\n\n"
                + "「应用顶部避让」\n"
                + "  -1 = 跟随系统\n"
                + "  0 = 所有应用内容完全顶格（全屏）\n"
                + "  >0 = 自定义留白（dp）\n\n"
                + "保存后立即生效，无需重启。");
        desc.setTextSize(14);
        desc.setPadding(0, dp(8), 0, dp(16));
        root.addView(desc);

        etSb = addRow(root, "系统状态栏高度 (dp，0=完全隐藏)", KEY_SB, 0);
        etAppTop = addRow(root, "应用顶部避让 (dp：-1=跟随系统，0=内容顶格，>0=留白高度。读 insets 的 App 走系统下发；读 status_bar_height 的 App 需在 LSPosed 里勾选本模块作用域)", KEY_APPTOP, -1);
        etPull = addRow(root, "下拉边界 (dp，顶部多少以内可下拉)", KEY_PULL, 12);
        etDots = addRow(root, "三点菜单背景条高度 (dp，0=系统默认)", KEY_DOTS, 0);
        try {
            etDots.setText(String.valueOf(
                    Settings.Global.getInt(getContentResolver(), KEY_DOTS, 0)));
        } catch (Throwable ignored) {
        }

        LinearLayout btns = new LinearLayout(this);
        btns.setOrientation(LinearLayout.HORIZONTAL);
        btns.setPadding(0, dp(20), 0, 0);

        Button save = new Button(this);
        save.setText("保存并应用");
        save.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                apply();
            }
        });
        btns.addView(save);

        Button reset = new Button(this);
        reset.setText("恢复默认");
        reset.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                etSb.setText("0");
                etDots.setText("0");
                etPull.setText("12");
                etAppTop.setText("-1");
                apply();
            }
        });
        btns.addView(reset);

        root.addView(btns);
        setContentView(root);
    }

    private EditText addRow(LinearLayout parent, String label, String key, int def) {
        TextView tv = new TextView(this);
        tv.setText(label);
        tv.setTextSize(16);
        tv.setPadding(0, dp(12), 0, dp(4));
        parent.addView(tv);

        EditText et = new EditText(this);
        et.setInputType(InputType.TYPE_CLASS_NUMBER | InputType.TYPE_NUMBER_FLAG_SIGNED);
        et.setGravity(Gravity.START);
        int cur = def;
        try {
            cur = Settings.Global.getInt(getContentResolver(), key, def);
        } catch (Throwable ignored) {
        }
        et.setText(String.valueOf(cur));
        parent.addView(et);
        return et;
    }

    @Override
    protected void onResume() {
        super.onResume();
        reloadValues();
    }

    /** 每次回到前台都重新读一遍真实配置，避免显示过期值。 */
    private void reloadValues() {
        try {
            etSb.setText(String.valueOf(Settings.Global.getInt(getContentResolver(), KEY_SB, 0)));
        } catch (Throwable ignored) {
        }
        try {
            etDots.setText(String.valueOf(Settings.Global.getInt(getContentResolver(), KEY_DOTS, 0)));
            etPull.setText(String.valueOf(Settings.Global.getInt(getContentResolver(), KEY_PULL, 12)));
            etAppTop.setText(String.valueOf(Settings.Global.getInt(getContentResolver(), KEY_APPTOP, -1)));
        } catch (Throwable ignored) {
        }
    }

    private void apply() {
        int sb = parseInt(etSb);
        int hdr = 0;
        int dots = parseInt(etDots);
        int pull = parseInt(etPull);
        int appTop = parseSigned(etAppTop);
        Intent i = new Intent(ACTION_SET);
        i.putExtra("sbDp", sb);
        i.putExtra("hdrDp", hdr);
        i.putExtra("dotsDp", dots);
        i.putExtra("appTopDp", appTop);
        i.putExtra("pullDp", pull);
        sendBroadcast(i);
        String sbTxt = sb == 0 ? "隐藏" : (sb + "dp");
        Toast.makeText(this, "已应用：状态栏 " + sbTxt + " / 三点 " + dots + "dp / 下拉 " + pull + "dp / 顶部 " + appTop + "dp",
                Toast.LENGTH_SHORT).show();
    }

    /** 允许 -1 的数值解析（-1 表示不干预）。 */
    private int parseSigned(EditText et) {
        try {
            String s = et.getText().toString().trim();
            if (s.isEmpty()) return -1;
            int v = Integer.parseInt(s);
            return Math.max(-1, Math.min(300, v));
        } catch (Throwable t) {
            return -1;
        }
    }

    private int parseInt(EditText et) {
        try {
            String s = et.getText().toString().trim();
            if (s.isEmpty()) return 0;
            int v = Integer.parseInt(s);
            return Math.max(0, Math.min(300, v));
        } catch (Throwable t) {
            return 0;
        }
    }

    private int dp(int v) {
        return Math.round(v * getResources().getDisplayMetrics().density);
    }
}
