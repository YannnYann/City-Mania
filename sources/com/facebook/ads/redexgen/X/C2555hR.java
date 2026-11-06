package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.hR, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2555hR {
    public ViewOnClickListenerC1569El A00;
    public final LA A01;
    public final C2416fA A02;
    public final C2427fL A03;
    public final C2432fQ A04;
    public final C2441fZ A05;
    public final C1643Hi A06;
    public final C2917nO A07;
    public static String[] A08 = {"67PC1vS7qkP", "IjFo3BG6VwtzNtFBLMxB3hm7uxcMitzp", "CicRHWg02u8tYTVNboa", "Lc1HqPOOGgkkm0o4iF185HVfJQb2Oy4J", "rfUiy7qGv2cTTJD", "veTQu7RBhk0w6DuY7Y8JViB1PkIKs", "nFnk8VxBkehLa6QhTm5QccOE2IAl", "l0nPd7gOfqjUiTZVoVDHfvPfOU4VPF8e"};
    public static final int A0B = (int) (AbstractC3070px.A02 * 4.0f);
    public static final int A09 = (int) (AbstractC3070px.A02 * 72.0f);
    public static final int A0A = (int) (AbstractC3070px.A02 * 8.0f);

    public C2555hR(C1643Hi c1643Hi, InterfaceC2909nG interfaceC2909nG, LA la) {
        this.A06 = c1643Hi;
        this.A07 = new C2917nO(la.A37(), interfaceC2909nG);
        this.A02 = la.A31();
        this.A03 = la.A32().A0J();
        this.A05 = la.A35();
        this.A04 = la.A32().A0L();
        this.A01 = la;
    }

    private View A00(ViewOnClickListenerC1569El viewOnClickListenerC1569El) {
        C3352uV c3352uV = new C3352uV(this.A06, this.A02.A01(), true, false, false);
        c3352uV.A04(this.A03.A0H(), this.A03.A04(), null, false, true);
        c3352uV.setAlignment(17);
        C3346uP c3346uP = new C3346uP(this.A06);
        AbstractC3111qc.A0O(c3346uP, 0);
        c3346uP.setRadius(50);
        new AsyncTaskC1577Et(c3346uP, this.A06).A04().A07(this.A05.A01());
        LinearLayout linearLayout = new LinearLayout(this.A06);
        linearLayout.setOrientation(1);
        linearLayout.setGravity(17);
        linearLayout.addView(c3346uP, new LinearLayout.LayoutParams(A09, A09));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, A0A, 0, A0A);
        linearLayout.addView(c3352uV, layoutParams);
        if (viewOnClickListenerC1569El != null) {
            AbstractC3111qc.A0K(viewOnClickListenerC1569El);
            linearLayout.addView(viewOnClickListenerC1569El, layoutParams);
            viewOnClickListenerC1569El.setPadding(AbstractC3068pv.A0c, 0, AbstractC3068pv.A0c, 0);
            if (TextUtils.isEmpty(viewOnClickListenerC1569El.getText())) {
                AbstractC3111qc.A0I(viewOnClickListenerC1569El);
            }
        }
        return linearLayout;
    }

    private C7O A01() {
        C7O c7o = new C7O(this.A06);
        c7o.setLayoutManager(new J7(this.A06, 0, false));
        c7o.setAdapter(new C1499Bt(this.A06, this.A04.A03(), A0B, this.A00));
        return c7o;
    }

    private final EnumC2556hS A02() {
        if (!this.A04.A03().isEmpty()) {
            return EnumC2556hS.A04;
        }
        EnumC2556hS enumC2556hS = EnumC2556hS.A03;
        String[] strArr = A08;
        if (strArr[3].charAt(8) == strArr[7].charAt(8)) {
            throw new RuntimeException();
        }
        A08[4] = "qwlEjiYhEcV8j1J";
        return enumC2556hS;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.util.Pair<com.facebook.ads.redexgen.X.EnumC2556hS, android.view.View> A03(com.facebook.ads.redexgen.X.ViewOnClickListenerC1569El r6) {
        /*
            r5 = this;
            r5.A00 = r6
            com.facebook.ads.redexgen.X.El r0 = r5.A00
            if (r0 == 0) goto L34
            com.facebook.ads.redexgen.X.El r4 = r5.A00
            com.facebook.ads.redexgen.X.LA r0 = r5.A01
            com.facebook.ads.redexgen.X.fE r3 = r0.A32()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C2555hR.A08
            r0 = 4
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 15
            if (r1 == r0) goto L21
        L1b:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L21:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C2555hR.A08
            java.lang.String r1 = "Oe6IO8Uak3tx5GvHWoKp5mKUb4E2rtDt"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "t7tx5cDm578ghKblxCWBuUm65hKnqcQl"
            r0 = 7
            r2[r0] = r1
            com.facebook.ads.redexgen.X.fP r0 = r3.A0K()
            r4.A0G(r0)
        L34:
            com.facebook.ads.redexgen.X.hS r3 = r5.A02()
            int r0 = r3.ordinal()
            switch(r0) {
                case 0: goto L6d;
                default: goto L3f;
            }
        L3f:
            com.facebook.ads.redexgen.X.El r4 = r5.A00
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C2555hR.A08
            r0 = 1
            r1 = r1[r0]
            r0 = 8
            char r1 = r1.charAt(r0)
            r0 = 66
            if (r1 == r0) goto L1b
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C2555hR.A08
            java.lang.String r1 = "Zp7LuBr5a7K9gEFEeOpzYbARSVoCtcwg"
            r0 = 3
            r2[r0] = r1
            java.lang.String r1 = "303OjW9Y3KvsAANvIIzHKKxaCufSpSA6"
            r0 = 7
            r2[r0] = r1
            android.view.View r0 = r5.A00(r4)
        L60:
            com.facebook.ads.redexgen.X.nO r2 = r5.A07
            com.facebook.ads.redexgen.X.nN r1 = com.facebook.ads.redexgen.X.EnumC2916nN.A0S
            com.facebook.ads.redexgen.X.AbstractC2919nQ.A04(r0, r2, r1)
            android.util.Pair r1 = new android.util.Pair
            r1.<init>(r3, r0)
            return r1
        L6d:
            com.facebook.ads.redexgen.X.7O r0 = r5.A01()
            goto L60
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2555hR.A03(com.facebook.ads.redexgen.X.El):android.util.Pair");
    }
}
