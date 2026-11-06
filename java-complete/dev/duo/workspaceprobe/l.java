package dev.duo.workspaceprobe;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import dev.duo.workspaceprobe.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;

/* loaded from: C:\Users\Abel\.dsh\folk-import\projects\miduo-re\_work\dex\classes.dex */
final class l extends LinearLayout {
    private final float a;
    private final boolean b;
    private final Consumer<i> c;
    private final ListView d;
    private final TextView e;
    private final List<List<i>> f;
    private final Map<String, Drawable> g;
    private int h;
    private final BaseAdapter i;

    class a extends BaseAdapter {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(View view) {
            i iVar = (i) view.getTag();
            if (iVar == null || iVar.f) {
                return;
            }
            dev.duo.workspaceprobe.l.this.c.accept(iVar);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return dev.duo.workspaceprobe.l.this.f.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return dev.duo.workspaceprobe.l.this.f.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v1, types: [android.widget.LinearLayout] */
        /* JADX WARN: Type inference failed for: r2v2, types: [android.view.View, android.view.ViewGroup] */
        /* JADX WARN: Type inference failed for: r2v3, types: [android.view.ViewGroup, android.widget.LinearLayout] */
        /* JADX WARN: Type inference failed for: r8v19, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            LinearLayout r2 = (LinearLayout) view;
            float f = 1.0f;
            if (r2 == 0) {
                r2 = new LinearLayout(dev.duo.workspaceprobe.l.this.getContext());
                r2.setOrientation(1);
                TextView a = dev.duo.workspaceprobe.l.this.a("", 14, true);
                dev.duo.workspaceprobe.a.setPadding(0, dev.duo.workspaceprobe.l.this.a(22.0f), 0, dev.duo.workspaceprobe.l.this.a(16.0f));
                r2.addView(a);
                LinearLayout linearLayout = new LinearLayout(dev.duo.workspaceprobe.l.this.getContext());
                r2.addView(linearLayout);
                int i2 = 0;
                while (i2 < 5) {
                    LinearLayout linearLayout2 = new LinearLayout(dev.duo.workspaceprobe.l.this.getContext());
                    linearLayout2.setOrientation(1);
                    linearLayout2.setGravity(1);
                    linearLayout2.setPadding(0, 0, 0, dev.duo.workspaceprobe.l.this.a(20.0f));
                    linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(0, -2, f));
                    linearLayout2.addView(new ImageView(dev.duo.workspaceprobe.l.this.getContext()), new LinearLayout.LayoutParams(dev.duo.workspaceprobe.l.this.a(68.0f), dev.duo.workspaceprobe.l.this.a(68.0f)));
                    TextView a2 = dev.duo.workspaceprobe.l.this.a("", 13, false);
                    a2.setSingleLine(true);
                    a2.setEllipsize(TextUtils.TruncateAt.END);
                    a2.setGravity(17);
                    a2.setPadding(0, dev.duo.workspaceprobe.l.this.a(8.0f), 0, 0);
                    linearLayout2.addView(a2, new LinearLayout.LayoutParams(-1, -2));
                    linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.l$a$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            l.a.this.a(view2);
                        }
                    });
                    i2++;
                    f = 1.0f;
                }
            }
            TextView textView = (TextView) r2.getChildAt(0);
            boolean z = i == 0 || (dev.duo.workspaceprobe.l.this.h > 0 && i == 1);
            textView.setVisibility(z ? 0 : 8);
            if (z) {
                textView.setText((i != 0 || dev.duo.workspaceprobe.l.this.h <= 0) ? "全部应用" : "最近使用");
            }
            LinearLayout linearLayout3 = (LinearLayout) r2.getChildAt(1);
            List list = (List) dev.duo.workspaceprobe.l.this.f.get(i);
            int i3 = 0;
            while (i3 < 5) {
                View childAt = linearLayout3.getChildAt(i3);
                childAt.setVisibility(i3 < list.size() ? 0 : 4);
                i iVar = i3 < list.size() ? (i) list.get(i3) : null;
                childAt.setTag(iVar);
                LinearLayout linearLayout4 = (LinearLayout) childAt;
                ((ImageView) linearLayout4.getChildAt(0)).setImageDrawable(iVar == null ? null : (Drawable) dev.duo.workspaceprobe.l.this.g.get(iVar.a));
                ((TextView) linearLayout4.getChildAt(1)).setText(iVar == null ? "" : iVar.c);
                childAt.setContentDescription(iVar != null ? iVar.f ? iVar.c + "，不支持在工作台中打开" : iVar.c : null);
                childAt.setAlpha((iVar == null || !iVar.f) ? 1.0f : 0.35f);
                childAt.setEnabled((iVar == null || iVar.f) ? false : true);
                i3++;
            }
            return r2;
        }
    }

    l(Context context, float f, final Runnable runnable, Consumer<i> consumer) {
        super(context);
        this.f = new ArrayList();
        this.g = new HashMap();
        a aVar = new a();
        this.i = aVar;
        this.a = f;
        this.c = consumer;
        boolean b = b.b(context);
        this.b = b;
        setOrientation(1);
        setPadding(a(28.0f), a(26.0f), a(28.0f), a(26.0f));
        setBackground(a(b, a(34.0f)));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setGravity(16);
        linearLayout.addView(a("选择应用", 22, false), new LinearLayout.LayoutParams(0, a(48.0f), 1.0f));
        TextView a2 = a("×", 28, false);
        a2.setContentDescription("关闭应用列表");
        a2.setGravity(17);
        a2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.l$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                runnable.run();
            }
        });
        linearLayout.addView(a2, new LinearLayout.LayoutParams(a(44.0f), a(44.0f)));
        addView(linearLayout);
        TextView a3 = a("", 16, true);
        this.e = a3;
        addView(a3);
        ListView listView = new ListView(context);
        this.d = listView;
        listView.setDivider(null);
        listView.setSelector(new ColorDrawable(0));
        listView.setAdapter((ListAdapter) aVar);
        addView(listView, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        a("正在读取应用…");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(float f) {
        return Math.round(f * this.a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TextView a(String str, int i, boolean z) {
        int i2;
        TextView textView = new TextView(getContext());
        textView.setText(str);
        textView.setTextSize(0, a(i));
        if (z) {
            i2 = this.b ? -5590075 : -10787464;
        } else {
            i2 = this.b ? -723205 : -15261645;
        }
        textView.setTextColor(i2);
        textView.setGravity(16);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        this.f.clear();
        this.g.clear();
        this.i.notifyDataSetChanged();
        this.d.setVisibility(8);
        this.e.setText(str);
        this.e.setVisibility(0);
    }

    void a(Map<String, Drawable> map) {
        this.g.putAll(map);
        for (int i = 0; i < this.d.getChildCount(); i++) {
            LinearLayout linearLayout = (LinearLayout) ((LinearLayout) this.d.getChildAt(i)).getChildAt(1);
            for (int i2 = 0; i2 < linearLayout.getChildCount(); i2++) {
                LinearLayout linearLayout2 = (LinearLayout) linearLayout.getChildAt(i2);
                i iVar = (i) linearLayout2.getTag();
                if (iVar != null && map.containsKey(iVar.a)) {
                    ((ImageView) linearLayout2.getChildAt(0)).setImageDrawable(map.get(iVar.a));
                }
            }
        }
    }

    void a(List<i> list) {
        int i;
        this.f.clear();
        this.g.clear();
        if (list.isEmpty()) {
            a("没有可添加的应用");
            return;
        }
        this.h = 0;
        while (this.h < list.size() && list.get(this.h).e >= 0 && (i = this.h) < 5) {
            this.h = i + 1;
        }
        int i2 = this.h;
        if (i2 > 0) {
            this.f.add(list.subList(0, i2));
        }
        int i3 = this.h;
        while (i3 < list.size()) {
            int i4 = i3 + 5;
            this.f.add(list.subList(i3, Math.min(i4, list.size())));
            i3 = i4;
        }
        this.e.setVisibility(8);
        this.d.setVisibility(0);
        this.i.notifyDataSetChanged();
    }

    private static GradientDrawable a(boolean z, float f) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(z ? -870439628 : -772211971);
        gradientDrawable.setCornerRadius(f);
        gradientDrawable.setStroke(2, z ? 872415231 : -1627389953);
        return gradientDrawable;
    }

    static View a(Context context, float f, Runnable runnable, Runnable runnable2) {
        boolean b = b.b(context);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        int round = Math.round(8.0f * f);
        linearLayout.setPadding(round, round, round, round);
        linearLayout.setBackground(a(b, 24.0f * f));
        String[] strArr = {"⇄  更换", "⊖  移除"};
        Runnable[] runnableArr = {runnable, runnable2};
        int i = 0;
        while (i < 2) {
            TextView textView = new TextView(context);
            textView.setText(strArr[i]);
            textView.setTextSize(0, 16.0f * f);
            textView.setTextColor(i == 1 ? b ? -28785 : -3789009 : b ? -723205 : -15261645);
            textView.setPadding(Math.round(14.0f * f), 0, 0, 0);
            textView.setGravity(16);
            final Runnable runnable3 = runnableArr[i];
            textView.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.l$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    runnable3.run();
                }
            });
            linearLayout.addView(textView, new LinearLayout.LayoutParams(-1, Math.round(52.0f * f)));
            if (i == 0) {
                View view = new View(context);
                view.setBackgroundColor(b ? 570425343 : 437723187);
                linearLayout.addView(view, new LinearLayout.LayoutParams(-1, Math.max(1, Math.round(f))));
            }
            i++;
        }
        return linearLayout;
    }
}
