package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ff, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1589Ff extends AbstractC3309to {
    public final TextView A00;
    public final TextView A01;
    public static final int A02 = (int) (AbstractC3070px.A02 * 36.0f);
    public static final int A05 = (int) (AbstractC3070px.A02 * 4.0f);
    public static final int A03 = (int) (AbstractC3070px.A02 * 8.0f);
    public static final int A04 = (int) (AbstractC3070px.A02 * 4.0f);

    public C1589Ff(C1643Hi c1643Hi, int i, C2429fN c2429fN, boolean z, String str, InterfaceC2909nG interfaceC2909nG, InterfaceC3144r9 interfaceC3144r9, C2224c2 c2224c2, C3102qT c3102qT, C2435fT c2435fT) {
        super(c1643Hi, null, i, c2429fN, z, str, interfaceC2909nG, interfaceC3144r9, c2224c2, c3102qT, c2435fT, false, "");
        setOrientation(0);
        setPadding(A05, A05, A05, A05);
        this.A01 = A01(-16448251, 13, true);
        this.A00 = A01(-10131605, 12, false);
        this.A06.addView(A00(i), new LinearLayout.LayoutParams(-1, -2));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(0, -2);
        layoutParams.weight = 1.0f;
        addView(this.A06, layoutParams);
        this.A08.setPadding(A03, 0, A03, 0);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, A02);
        layoutParams2.gravity = 17;
        addView(this.A08, layoutParams2);
    }

    private LinearLayout A00(int i) {
        LinearLayout linearLayout = new LinearLayout(this.A07);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(A04, 0, A04, 0);
        linearLayout.addView(this.A01, AbstractC3309to.A0C);
        linearLayout.addView(this.A00, AbstractC3309to.A0C);
        LinearLayout linearLayout2 = new LinearLayout(this.A07);
        linearLayout2.setOrientation(0);
        linearLayout2.addView(this.A09, new LinearLayout.LayoutParams(i, i));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 16;
        linearLayout2.addView(linearLayout, layoutParams);
        return linearLayout2;
    }

    private TextView A01(int i, int i2, boolean z) {
        TextView textView = new TextView(this.A07);
        textView.setTextColor(i);
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.END);
        AbstractC3111qc.A0b(textView, z, i2);
        return textView;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3309to
    public final void A0k() {
        super.A0k();
        setOnClickListener(this.A05);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3309to
    public final void A0l(int i) {
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC3309to
    public void setInfo(C2427fL c2427fL, C2431fP c2431fP, String str, String str2, InterfaceC3081q8 interfaceC3081q8, InterfaceC3328u7 interfaceC3328u7) {
        super.setInfo(c2427fL, c2431fP, str, str2, interfaceC3081q8, interfaceC3328u7);
        this.A01.setText(c2427fL.A0H());
        this.A00.setText(c2427fL.A0G());
        if (TextUtils.isEmpty(c2431fP.A05())) {
            AbstractC3111qc.A0I(this.A08);
        }
    }
}
