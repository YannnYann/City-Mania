package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.sU, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3227sU extends LinearLayout {
    public static final int A03 = (int) (AbstractC3070px.A02 * 40.0f);
    public static final int A04 = (int) (AbstractC3070px.A02 * 20.0f);
    public static final int A05 = (int) (AbstractC3070px.A02 * 10.0f);
    public final C2508ge A00;
    public final C1643Hi A01;
    public final InterfaceC3211sE A02;

    public C3227sU(C1643Hi c1643Hi, C2508ge c2508ge, InterfaceC3211sE interfaceC3211sE, EnumC3122qn enumC3122qn) {
        this(c1643Hi, c2508ge, interfaceC3211sE, null, enumC3122qn);
    }

    public C3227sU(C1643Hi c1643Hi, C2508ge c2508ge, InterfaceC3211sE interfaceC3211sE, String str, EnumC3122qn enumC3122qn) {
        super(c1643Hi);
        this.A01 = c1643Hi;
        this.A00 = c2508ge;
        this.A02 = interfaceC3211sE;
        setOrientation(1);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        if (!TextUtils.isEmpty(str)) {
            View headerView = A01(str);
            headerView.setPadding(0, 0, 0, 0);
            View view = new View(getContext());
            view.setLayoutParams(new LinearLayout.LayoutParams(-1, 1));
            AbstractC3111qc.A0O(view, -10459280);
            addView(headerView, layoutParams);
            addView(view);
        }
        if (!TextUtils.isEmpty(this.A00.A03())) {
            View viewA00 = A00(enumC3122qn, this.A00.A03());
            viewA00.setPadding(0, A05, 0, A05);
            addView(viewA00, layoutParams);
        }
        C3233sa c3233saA03 = A03();
        c3233saA03.setPadding(0, A05, 0, 0);
        addView(c3233saA03, layoutParams);
    }

    private View A00(EnumC3122qn enumC3122qn, String str) {
        ImageView imageView = new ImageView(getContext());
        imageView.setColorFilter(-10459280);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(A04, A04);
        layoutParams.gravity = 16;
        imageView.setImageBitmap(AbstractC3123qo.A01(enumC3122qn));
        TextView textView = new TextView(getContext());
        AbstractC3111qc.A0b(textView, true, 14);
        textView.setTextColor(-10459280);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        textView.setText(str);
        textView.setPadding(A05, 0, 0, 0);
        textView.setFocusable(true);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.addView(imageView, layoutParams);
        linearLayout.addView(textView, layoutParams2);
        return linearLayout;
    }

    private View A01(String str) {
        ImageView imageView = new ImageView(getContext());
        imageView.setColorFilter(-10459280);
        imageView.setImageBitmap(AbstractC3123qo.A01(EnumC3122qn.BACK_ARROW));
        imageView.setPadding(0, A05, A05 * 2, A05);
        LinearLayout.LayoutParams titleParams = new LinearLayout.LayoutParams(A03, A03);
        imageView.setOnClickListener(new ViewOnClickListenerC3225sS(this));
        TextView textView = new TextView(getContext());
        textView.setGravity(17);
        textView.setText(str);
        AbstractC3111qc.A0b(textView, true, 16);
        textView.setTextColor(-14934495);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, 0, A03, 0);
        layoutParams.gravity = 17;
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(0);
        linearLayout.addView(imageView, titleParams);
        linearLayout.addView(textView, layoutParams);
        return linearLayout;
    }

    private C3233sa A03() {
        C3233sa c3233sa = new C3233sa(this.A01);
        for (C2508ge c2508ge : this.A00.A05()) {
            C3213sG c3213sG = new C3213sG(this.A01);
            c3213sG.setData(c2508ge.A04(), null);
            c3213sG.setOnClickListener(new ViewOnClickListenerC3226sT(this, c3213sG, c2508ge));
            c3233sa.addView(c3213sG);
        }
        return c3233sa;
    }
}
