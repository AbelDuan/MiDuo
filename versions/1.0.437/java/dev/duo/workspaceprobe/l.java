package dev.duo.workspaceprobe;

/* loaded from: classes.dex */
final class l extends android.widget.LinearLayout {
    static final int m = 44;
    static final int n = 14;
    static final int o = 18;
    static final int p = 10;
    private final float a;
    private final boolean b;
    private final java.util.function.Consumer<dev.duo.workspaceprobe.i> c;
    private final android.widget.ListView d;
    private final android.widget.TextView e;
    final android.widget.TextView f;
    private java.util.List<dev.duo.workspaceprobe.i> g;
    private java.lang.String h;
    private final java.util.List<java.util.List<dev.duo.workspaceprobe.i>> i;
    private final java.util.Map<java.lang.String, android.graphics.drawable.Drawable> j;
    private int k;
    private final android.widget.BaseAdapter l;

    class a extends android.widget.BaseAdapter {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(android.view.View view) {
            dev.duo.workspaceprobe.i iVar = (dev.duo.workspaceprobe.i) view.getTag();
            if (iVar == null || iVar.f) {
                return;
            }
            dev.duo.workspaceprobe.l.this.c.accept(iVar);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return dev.duo.workspaceprobe.l.this.i.size();
        }

        @Override // android.widget.Adapter
        public java.lang.Object getItem(int i) {
            return dev.duo.workspaceprobe.l.this.i.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v1, types: [android.widget.LinearLayout] */
        /* JADX WARN: Type inference failed for: r2v2, types: [android.view.View, android.view.ViewGroup] */
        /* JADX WARN: Type inference failed for: r2v3, types: [android.view.ViewGroup, android.widget.LinearLayout] */
        /* JADX WARN: Type inference failed for: r8v23, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
        @Override // android.widget.Adapter
        public android.view.View getView(int i, android.view.View view, android.view.ViewGroup viewGroup) {
            ?? r2 = (android.widget.LinearLayout) view;
            float f = 1.0f;
            if (r2 == 0) {
                r2 = new android.widget.LinearLayout(dev.duo.workspaceprobe.l.this.getContext());
                r2.setOrientation(1);
                android.widget.TextView a = dev.duo.workspaceprobe.l.this.a("", dev.duo.workspaceprobe.l.n, true);
                a.setPadding(0, dev.duo.workspaceprobe.l.this.a(22.0f), 0, dev.duo.workspaceprobe.l.this.a(16.0f));
                r2.addView(a);
                ?? linearLayout = new android.widget.LinearLayout(dev.duo.workspaceprobe.l.this.getContext());
                r2.addView(linearLayout);
                int i2 = 0;
                while (i2 < 5) {
                    android.widget.LinearLayout linearLayout2 = new android.widget.LinearLayout(dev.duo.workspaceprobe.l.this.getContext());
                    linearLayout2.setOrientation(1);
                    linearLayout2.setGravity(1);
                    linearLayout2.setPadding(0, 0, 0, dev.duo.workspaceprobe.l.this.a(20.0f));
                    linearLayout.addView(linearLayout2, new android.widget.LinearLayout.LayoutParams(0, -2, f));
                    linearLayout2.addView(new android.widget.ImageView(dev.duo.workspaceprobe.l.this.getContext()), new android.widget.LinearLayout.LayoutParams(dev.duo.workspaceprobe.l.this.a(68.0f), dev.duo.workspaceprobe.l.this.a(68.0f)));
                    android.widget.TextView a2 = dev.duo.workspaceprobe.l.this.a("", 13, false);
                    a2.setSingleLine(true);
                    a2.setEllipsize(android.text.TextUtils.TruncateAt.END);
                    a2.setGravity(17);
                    a2.setPadding(0, dev.duo.workspaceprobe.l.this.a(8.0f), 0, 0);
                    linearLayout2.addView(a2, new android.widget.LinearLayout.LayoutParams(-1, -2));
                    linearLayout2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.l$a$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(android.view.View view2) {
                            dev.duo.workspaceprobe.l.a.this.a(view2);
                        }
                    });
                    i2++;
                    f = 1.0f;
                }
            }
            android.widget.TextView textView = (android.widget.TextView) r2.getChildAt(0);
            boolean z = i == 0 || (dev.duo.workspaceprobe.l.this.k > 0 && i == 1);
            textView.setVisibility(z ? 0 : 8);
            if (z) {
                textView.setText(!dev.duo.workspaceprobe.l.this.h.isEmpty() ? "搜索结果" : (i != 0 || dev.duo.workspaceprobe.l.this.k <= 0) ? "全部应用" : "最近使用");
            }
            android.widget.LinearLayout linearLayout3 = (android.widget.LinearLayout) r2.getChildAt(1);
            java.util.List list = (java.util.List) dev.duo.workspaceprobe.l.this.i.get(i);
            int i3 = 0;
            while (i3 < 5) {
                android.view.View childAt = linearLayout3.getChildAt(i3);
                childAt.setVisibility(i3 < list.size() ? 0 : 4);
                dev.duo.workspaceprobe.i iVar = i3 < list.size() ? (dev.duo.workspaceprobe.i) list.get(i3) : null;
                childAt.setTag(iVar);
                android.widget.LinearLayout linearLayout4 = (android.widget.LinearLayout) childAt;
                ((android.widget.ImageView) linearLayout4.getChildAt(0)).setImageDrawable(iVar == null ? null : (android.graphics.drawable.Drawable) dev.duo.workspaceprobe.l.this.j.get(iVar.a));
                ((android.widget.TextView) linearLayout4.getChildAt(1)).setText(iVar == null ? "" : iVar.c);
                childAt.setContentDescription(iVar != null ? iVar.f ? iVar.c + "，不支持在工作台中打开" : iVar.c : null);
                childAt.setAlpha((iVar == null || !iVar.f) ? 1.0f : 0.35f);
                childAt.setEnabled((iVar == null || iVar.f) ? false : true);
                i3++;
            }
            return r2;
        }
    }

    l(android.content.Context context, float f, final java.lang.Runnable runnable, java.util.function.Consumer<dev.duo.workspaceprobe.i> consumer) {
        super(context);
        this.g = java.util.Collections.EMPTY_LIST;
        this.h = "";
        this.i = new java.util.ArrayList();
        this.j = new java.util.HashMap();
        dev.duo.workspaceprobe.l.a aVar = new dev.duo.workspaceprobe.l.a();
        this.l = aVar;
        this.a = f;
        this.c = consumer;
        boolean b = dev.duo.workspaceprobe.b.b(context);
        this.b = b;
        setOrientation(1);
        setPadding(a(28.0f), a(26.0f), a(28.0f), a(26.0f));
        setBackground(a(b, a(34.0f)));
        android.widget.LinearLayout linearLayout = new android.widget.LinearLayout(context);
        linearLayout.setGravity(16);
        linearLayout.addView(a("选择应用", 22, false), new android.widget.LinearLayout.LayoutParams(0, a(48.0f), 1.0f));
        android.widget.TextView a2 = a("×", 28, false);
        a2.setContentDescription("关闭应用列表");
        a2.setGravity(17);
        a2.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.l$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(android.view.View view) {
                runnable.run();
            }
        });
        linearLayout.addView(a2, new android.widget.LinearLayout.LayoutParams(a(44.0f), a(44.0f)));
        addView(linearLayout);
        android.widget.TextView a3 = a("搜索应用", 16, true);
        this.f = a3;
        a3.setSingleLine(true);
        a3.setPadding(a(14.0f), 0, a(14.0f), 0);
        a3.setCompoundDrawables(new dev.duo.workspaceprobe.m(a(18.0f), b(b)), null, null, null);
        a3.setCompoundDrawablePadding(a(10.0f));
        a3.setBackground(b(b, a(22.0f)));
        android.widget.LinearLayout.LayoutParams layoutParams = new android.widget.LinearLayout.LayoutParams(-1, a(44.0f));
        layoutParams.topMargin = a(10.0f);
        addView(a3, layoutParams);
        android.widget.TextView a4 = a("", 16, true);
        this.e = a4;
        addView(a4);
        android.widget.ListView listView = new android.widget.ListView(context);
        this.d = listView;
        listView.setDivider(null);
        listView.setSelector(new android.graphics.drawable.ColorDrawable(0));
        listView.setAdapter((android.widget.ListAdapter) aVar);
        addView(listView, new android.widget.LinearLayout.LayoutParams(-1, 0, 1.0f));
        b("正在读取应用…");
    }

    static int a(boolean z) {
        return z ? -855305 : -14935010;
    }

    static int b(boolean z) {
        return z ? -6776673 : -9671568;
    }

    static android.graphics.drawable.GradientDrawable b(boolean z, float f) {
        android.graphics.drawable.GradientDrawable gradientDrawable = new android.graphics.drawable.GradientDrawable();
        gradientDrawable.setColor(z ? 536870911 : 251658240);
        gradientDrawable.setCornerRadius(f);
        return gradientDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(float f) {
        return java.lang.Math.round(f * this.a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public android.widget.TextView a(java.lang.String str, int i, boolean z) {
        android.widget.TextView textView = new android.widget.TextView(getContext());
        textView.setText(str);
        textView.setTextSize(0, a(i));
        textView.setTextColor(z ? b(this.b) : a(this.b));
        textView.setGravity(16);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(java.lang.String str) {
        this.i.clear();
        this.j.clear();
        this.l.notifyDataSetChanged();
        this.d.setVisibility(8);
        this.e.setText(str);
        this.e.setVisibility(0);
    }

    void a(java.util.Map<java.lang.String, android.graphics.drawable.Drawable> map) {
        this.j.putAll(map);
        for (int i = 0; i < this.d.getChildCount(); i++) {
            android.widget.LinearLayout linearLayout = (android.widget.LinearLayout) ((android.widget.LinearLayout) this.d.getChildAt(i)).getChildAt(1);
            for (int i2 = 0; i2 < linearLayout.getChildCount(); i2++) {
                android.widget.LinearLayout linearLayout2 = (android.widget.LinearLayout) linearLayout.getChildAt(i2);
                dev.duo.workspaceprobe.i iVar = (dev.duo.workspaceprobe.i) linearLayout2.getTag();
                if (iVar != null && map.containsKey(iVar.a)) {
                    ((android.widget.ImageView) linearLayout2.getChildAt(0)).setImageDrawable(map.get(iVar.a));
                }
            }
        }
    }

    void a(java.util.List<dev.duo.workspaceprobe.i> list) {
        this.j.clear();
        if (list.isEmpty()) {
            b("没有可添加的应用");
        } else {
            this.g = list;
            a();
        }
    }

    void a(java.lang.String str) {
        this.h = str.trim().toLowerCase(java.util.Locale.ROOT).replace(" ", "");
        if (this.g.isEmpty()) {
            return;
        }
        a();
    }

    private void a() {
        int i;
        this.i.clear();
        java.util.List list = this.g;
        this.k = 0;
        if (!this.h.isEmpty()) {
            list = new java.util.ArrayList();
            for (dev.duo.workspaceprobe.i iVar : this.g) {
                if (iVar.g.contains(this.h)) {
                    list.add(iVar);
                }
            }
        } else {
            while (this.k < list.size() && ((dev.duo.workspaceprobe.i) list.get(this.k)).e >= 0 && (i = this.k) < 5) {
                this.k = i + 1;
            }
            int i2 = this.k;
            if (i2 > 0) {
                this.i.add(list.subList(0, i2));
            }
        }
        int i3 = this.k;
        while (i3 < list.size()) {
            int i4 = i3 + 5;
            this.i.add(list.subList(i3, java.lang.Math.min(i4, list.size())));
            i3 = i4;
        }
        this.l.notifyDataSetChanged();
        boolean isEmpty = list.isEmpty();
        this.e.setText(isEmpty ? "没有找到“" + this.h + "”" : "");
        this.e.setVisibility(isEmpty ? 0 : 8);
        this.d.setVisibility(isEmpty ? 8 : 0);
        if (isEmpty) {
            return;
        }
        this.d.setSelection(0);
    }

    private static android.graphics.drawable.GradientDrawable a(boolean z, float f) {
        android.graphics.drawable.GradientDrawable gradientDrawable = new android.graphics.drawable.GradientDrawable();
        gradientDrawable.setColor(z ? -953406418 : -940182025);
        gradientDrawable.setCornerRadius(f);
        gradientDrawable.setStroke(2, z ? 872415231 : -1627389953);
        return gradientDrawable;
    }

    static android.view.View a(android.content.Context context, float f, java.lang.Runnable runnable, java.lang.Runnable runnable2) {
        int a2;
        boolean b = dev.duo.workspaceprobe.b.b(context);
        android.widget.LinearLayout linearLayout = new android.widget.LinearLayout(context);
        linearLayout.setOrientation(1);
        int round = java.lang.Math.round(8.0f * f);
        linearLayout.setPadding(round, round, round, round);
        linearLayout.setBackground(a(b, 24.0f * f));
        java.lang.String[] strArr = {"⇄  更换", "⊖  移除"};
        java.lang.Runnable[] runnableArr = {runnable, runnable2};
        for (int i = 0; i < 2; i++) {
            android.widget.TextView textView = new android.widget.TextView(context);
            textView.setText(strArr[i]);
            textView.setTextSize(0, 16.0f * f);
            if (i == 1) {
                a2 = b ? -28785 : -3789009;
            } else {
                a2 = a(b);
            }
            textView.setTextColor(a2);
            textView.setPadding(java.lang.Math.round(14.0f * f), 0, 0, 0);
            textView.setGravity(16);
            final java.lang.Runnable runnable3 = runnableArr[i];
            textView.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.l$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    runnable3.run();
                }
            });
            linearLayout.addView(textView, new android.widget.LinearLayout.LayoutParams(-1, java.lang.Math.round(52.0f * f)));
            if (i == 0) {
                android.view.View view = new android.view.View(context);
                view.setBackgroundColor(b ? 570425343 : 436207616);
                linearLayout.addView(view, new android.widget.LinearLayout.LayoutParams(-1, java.lang.Math.max(1, java.lang.Math.round(f))));
            }
        }
        return linearLayout;
    }

    static android.view.View a(android.content.Context context, final java.lang.Runnable runnable) {
        android.content.res.Resources resources = context.getResources();
        int identifier = resources.getIdentifier("miui_split_handler_view_bg", "drawable", "com.android.wm.shell");
        int identifier2 = resources.getIdentifier("miui_split_handler_btn_pressed", "drawable", "com.android.wm.shell");
        int identifier3 = resources.getIdentifier("swap_split_btn", "drawable", "com.android.wm.shell");
        int identifier4 = resources.getIdentifier("split_divider_handle_parent_padding", "dimen", "com.android.wm.shell");
        if (identifier != 0 && identifier2 != 0 && identifier3 != 0 && identifier4 != 0) {
            android.widget.LinearLayout linearLayout = new android.widget.LinearLayout(context);
            linearLayout.setGravity(17);
            linearLayout.setBackground(context.getDrawable(identifier));
            int dimensionPixelSize = resources.getDimensionPixelSize(identifier4);
            linearLayout.setPadding(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
            android.widget.ImageButton imageButton = new android.widget.ImageButton(context);
            imageButton.setBackground(context.getDrawable(identifier2));
            imageButton.setImageDrawable(context.getDrawable(identifier3));
            imageButton.setScaleType(android.widget.ImageView.ScaleType.CENTER);
            imageButton.setContentDescription("左右切换");
            imageButton.setOnClickListener(new android.view.View.OnClickListener() { // from class: dev.duo.workspaceprobe.l$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(android.view.View view) {
                    runnable.run();
                }
            });
            linearLayout.addView(imageButton, new android.widget.LinearLayout.LayoutParams(-2, -2));
            return linearLayout;
        }
        throw new java.lang.IllegalStateException("MIUI split handle resources missing: " + identifier + "/" + identifier2 + "/" + identifier3 + "/" + identifier4);
    }
}
