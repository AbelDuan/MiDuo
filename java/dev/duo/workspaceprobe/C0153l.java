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
import dev.duo.workspaceprobe.C0153l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;

/* renamed from: dev.duo.workspaceprobe.l */
/* loaded from: classes.dex */
final class C0153l extends LinearLayout {

    /* renamed from: a */
    private final float f2856a;

    /* renamed from: b */
    private final boolean f2857b;

    /* renamed from: c */
    private final Consumer<C0150i> f2858c;

    /* renamed from: d */
    private final ListView f2859d;

    /* renamed from: e */
    private final TextView f2860e;

    /* renamed from: f */
    private final List<List<C0150i>> f2861f;

    /* renamed from: g */
    private final Map<String, Drawable> f2862g;

    /* renamed from: h */
    private int f2863h;

    /* renamed from: i */
    private final BaseAdapter f2864i;

    /* renamed from: dev.duo.workspaceprobe.l$a */
    class a extends BaseAdapter {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public /* synthetic */ void m2984a(View view) {
            C0150i c0150i = (C0150i) view.getTag();
            if (c0150i == null || c0150i.f2847f) {
                return;
            }
            C0153l.this.f2858c.accept(c0150i);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return C0153l.this.f2861f.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return C0153l.this.f2861f.get(i);
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
                r2 = new LinearLayout(C0153l.this.getContext());
                r2.setOrientation(1);
                TextView m2974a = C0153l.this.m2974a("", 14, true);
                m2974a.setPadding(0, C0153l.this.m2969a(22.0f), 0, C0153l.this.m2969a(16.0f));
                r2.addView(m2974a);
                LinearLayout linearLayout = new LinearLayout(C0153l.this.getContext());
                r2.addView(linearLayout);
                int i2 = 0;
                while (i2 < 5) {
                    LinearLayout linearLayout2 = new LinearLayout(C0153l.this.getContext());
                    linearLayout2.setOrientation(1);
                    linearLayout2.setGravity(1);
                    linearLayout2.setPadding(0, 0, 0, C0153l.this.m2969a(20.0f));
                    linearLayout.addView(linearLayout2, new LinearLayout.LayoutParams(0, -2, f));
                    linearLayout2.addView(new ImageView(C0153l.this.getContext()), new LinearLayout.LayoutParams(C0153l.this.m2969a(68.0f), C0153l.this.m2969a(68.0f)));
                    TextView m2974a2 = C0153l.this.m2974a("", 13, false);
                    m2974a2.setSingleLine(true);
                    m2974a2.setEllipsize(TextUtils.TruncateAt.END);
                    m2974a2.setGravity(17);
                    m2974a2.setPadding(0, C0153l.this.m2969a(8.0f), 0, 0);
                    linearLayout2.addView(m2974a2, new LinearLayout.LayoutParams(-1, -2));
                    linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.l$a$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            C0153l.a.this.m2984a(view2);
                        }
                    });
                    i2++;
                    f = 1.0f;
                }
            }
            TextView textView = (TextView) r2.getChildAt(0);
            boolean z = i == 0 || (C0153l.this.f2863h > 0 && i == 1);
            textView.setVisibility(z ? 0 : 8);
            if (z) {
                textView.setText((i != 0 || C0153l.this.f2863h <= 0) ? "全部应用" : "最近使用");
            }
            LinearLayout linearLayout3 = (LinearLayout) r2.getChildAt(1);
            List list = (List) C0153l.this.f2861f.get(i);
            int i3 = 0;
            while (i3 < 5) {
                View childAt = linearLayout3.getChildAt(i3);
                childAt.setVisibility(i3 < list.size() ? 0 : 4);
                C0150i c0150i = i3 < list.size() ? (C0150i) list.get(i3) : null;
                childAt.setTag(c0150i);
                LinearLayout linearLayout4 = (LinearLayout) childAt;
                ((ImageView) linearLayout4.getChildAt(0)).setImageDrawable(c0150i == null ? null : (Drawable) C0153l.this.f2862g.get(c0150i.f2842a));
                ((TextView) linearLayout4.getChildAt(1)).setText(c0150i == null ? "" : c0150i.f2844c);
                childAt.setContentDescription(c0150i != null ? c0150i.f2847f ? c0150i.f2844c + "，不支持在工作台中打开" : c0150i.f2844c : null);
                childAt.setAlpha((c0150i == null || !c0150i.f2847f) ? 1.0f : 0.35f);
                childAt.setEnabled((c0150i == null || c0150i.f2847f) ? false : true);
                i3++;
            }
            return r2;
        }
    }

    C0153l(Context context, float f, final Runnable runnable, Consumer<C0150i> consumer) {
        super(context);
        this.f2861f = new ArrayList();
        this.f2862g = new HashMap();
        a aVar = new a();
        this.f2864i = aVar;
        this.f2856a = f;
        this.f2858c = consumer;
        boolean m2488b = C0143b.m2488b(context);
        this.f2857b = m2488b;
        setOrientation(1);
        setPadding(m2969a(28.0f), m2969a(26.0f), m2969a(28.0f), m2969a(26.0f));
        setBackground(m2971a(m2488b, m2969a(34.0f)));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setGravity(16);
        linearLayout.addView(m2974a("选择应用", 22, false), new LinearLayout.LayoutParams(0, m2969a(48.0f), 1.0f));
        TextView m2974a = m2974a("×", 28, false);
        m2974a.setContentDescription("关闭应用列表");
        m2974a.setGravity(17);
        m2974a.setOnClickListener(new View.OnClickListener() { // from class: dev.duo.workspaceprobe.l$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                runnable.run();
            }
        });
        linearLayout.addView(m2974a, new LinearLayout.LayoutParams(m2969a(44.0f), m2969a(44.0f)));
        addView(linearLayout);
        TextView m2974a2 = m2974a("", 16, true);
        this.f2860e = m2974a2;
        addView(m2974a2);
        ListView listView = new ListView(context);
        this.f2859d = listView;
        listView.setDivider(null);
        listView.setSelector(new ColorDrawable(0));
        listView.setAdapter((ListAdapter) aVar);
        addView(listView, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        m2981a("正在读取应用…");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public int m2969a(float f) {
        return Math.round(f * this.f2856a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public TextView m2974a(String str, int i, boolean z) {
        int i2;
        TextView textView = new TextView(getContext());
        textView.setText(str);
        textView.setTextSize(0, m2969a(i));
        if (z) {
            i2 = this.f2857b ? -5590075 : -10787464;
        } else {
            i2 = this.f2857b ? -723205 : -15261645;
        }
        textView.setTextColor(i2);
        textView.setGravity(16);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m2981a(String str) {
        this.f2861f.clear();
        this.f2862g.clear();
        this.f2864i.notifyDataSetChanged();
        this.f2859d.setVisibility(8);
        this.f2860e.setText(str);
        this.f2860e.setVisibility(0);
    }

    /* renamed from: a */
    void m2983a(Map<String, Drawable> map) {
        this.f2862g.putAll(map);
        for (int i = 0; i < this.f2859d.getChildCount(); i++) {
            LinearLayout linearLayout = (LinearLayout) ((LinearLayout) this.f2859d.getChildAt(i)).getChildAt(1);
            for (int i2 = 0; i2 < linearLayout.getChildCount(); i2++) {
                LinearLayout linearLayout2 = (LinearLayout) linearLayout.getChildAt(i2);
                C0150i c0150i = (C0150i) linearLayout2.getTag();
                if (c0150i != null && map.containsKey(c0150i.f2842a)) {
                    ((ImageView) linearLayout2.getChildAt(0)).setImageDrawable(map.get(c0150i.f2842a));
                }
            }
        }
    }

    /* renamed from: a */
    void m2982a(List<C0150i> list) {
        int i;
        this.f2861f.clear();
        this.f2862g.clear();
        if (list.isEmpty()) {
            m2981a("没有可添加的应用");
            return;
        }
        this.f2863h = 0;
        while (this.f2863h < list.size() && list.get(this.f2863h).f2846e >= 0 && (i = this.f2863h) < 5) {
            this.f2863h = i + 1;
        }
        int i2 = this.f2863h;
        if (i2 > 0) {
            this.f2861f.add(list.subList(0, i2));
        }
        int i3 = this.f2863h;
        while (i3 < list.size()) {
            int i4 = i3 + 5;
            this.f2861f.add(list.subList(i3, Math.min(i4, list.size())));
            i3 = i4;
        }
        this.f2860e.setVisibility(8);
        this.f2859d.setVisibility(0);
        this.f2864i.notifyDataSetChanged();
    }

    /* renamed from: a */
    private static GradientDrawable m2971a(boolean z, float f) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(z ? -870439628 : -772211971);
        gradientDrawable.setCornerRadius(f);
        gradientDrawable.setStroke(2, z ? 872415231 : -1627389953);
        return gradientDrawable;
    }

    /* renamed from: a */
    static View m2972a(Context context, float f, Runnable runnable, Runnable runnable2) {
        boolean m2488b = C0143b.m2488b(context);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        int round = Math.round(8.0f * f);
        linearLayout.setPadding(round, round, round, round);
        linearLayout.setBackground(m2971a(m2488b, 24.0f * f));
        String[] strArr = {"⇄  更换", "⊖  移除"};
        Runnable[] runnableArr = {runnable, runnable2};
        int i = 0;
        while (i < 2) {
            TextView textView = new TextView(context);
            textView.setText(strArr[i]);
            textView.setTextSize(0, 16.0f * f);
            textView.setTextColor(i == 1 ? m2488b ? -28785 : -3789009 : m2488b ? -723205 : -15261645);
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
                view.setBackgroundColor(m2488b ? 570425343 : 437723187);
                linearLayout.addView(view, new LinearLayout.LayoutParams(-1, Math.max(1, Math.round(f))));
            }
            i++;
        }
        return linearLayout;
    }
}
