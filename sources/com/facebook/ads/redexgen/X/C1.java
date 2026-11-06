package com.facebook.ads.redexgen.X;

import android.util.SparseBooleanArray;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1 extends AbstractC2663jE {
    public static String[] A08 = {"FXqlzRGtImhOdfWqCRyac46PuEORcVHh", "tin0mHuxCmVFWzwOygyTfmqlJ9Mzxl7D", "VABdh0TJ2eWi98wNTSIP5bEHQKFvO8pS", com.ironsource.G5.q, "wryP", "p7AsImouYb7XdSCXwl9kOcdMHl7Wlu5Y", "TIzINHzpeOxuFps4upXK4j08MllXArTc", "oGk0V5WwsqztiP1ME5WI8pfP"};
    public C2435fT A00;
    public AbstractC2225c3 A01;
    public C2224c2 A02;
    public final SparseBooleanArray A03;
    public final C1643Hi A04;
    public final AbstractC13485h A05;
    public final C2224c2 A06;
    public final boolean A07;

    public C1(AbstractC13485h abstractC13485h, SparseBooleanArray sparseBooleanArray, C2224c2 c2224c2, C1643Hi c1643Hi, C2435fT c2435fT, boolean z) {
        super(abstractC13485h);
        this.A04 = c1643Hi;
        this.A05 = abstractC13485h;
        this.A03 = sparseBooleanArray;
        this.A06 = c2224c2;
        this.A00 = c2435fT;
        this.A07 = z;
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x000c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A05(com.facebook.ads.redexgen.X.InterfaceC2909nG r13, com.facebook.ads.redexgen.X.C3102qT r14, java.lang.String r15, java.util.List<com.facebook.ads.redexgen.X.C2647iy> r16) {
        /*
            r12 = this;
            r4 = 0
            r5 = 0
            r9 = r16
            java.util.Iterator r3 = r9.iterator()
        L8:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L2c
            java.lang.Object r2 = r3.next()
            com.facebook.ads.redexgen.X.iy r2 = (com.facebook.ads.redexgen.X.C2647iy) r2
            android.util.SparseBooleanArray r1 = r12.A03
            int r0 = r2.A02()
            boolean r0 = r1.get(r0)
            if (r0 != 0) goto L21
            r4 = 1
        L21:
            int r0 = r2.A02()
            if (r0 != 0) goto L28
            r5 = 1
        L28:
            if (r4 == 0) goto L8
            if (r5 == 0) goto L8
        L2c:
            if (r4 != 0) goto L2f
            return
        L2f:
            com.facebook.ads.redexgen.X.c2 r0 = r12.A02
            if (r0 == 0) goto L3b
            com.facebook.ads.redexgen.X.c2 r0 = r12.A02
            r0.A0V()
            r0 = 0
            r12.A02 = r0
        L3b:
            com.facebook.ads.redexgen.X.C2 r6 = new com.facebook.ads.redexgen.X.C2
            r7 = r12
            r11 = r13
            r10 = r14
            r8 = r15
            r6.<init>(r7, r8, r9, r10, r11)
            r12.A01 = r6
            com.facebook.ads.redexgen.X.5h r4 = r12.A05
            com.facebook.ads.redexgen.X.c3 r0 = r12.A01
            java.lang.ref.WeakReference r3 = new java.lang.ref.WeakReference
            r3.<init>(r0)
            com.facebook.ads.redexgen.X.Hi r2 = r12.A04
            r1 = 10
            com.facebook.ads.redexgen.X.c2 r0 = new com.facebook.ads.redexgen.X.c2
            r0.<init>(r4, r1, r3, r2)
            r12.A02 = r0
            com.facebook.ads.redexgen.X.c2 r1 = r12.A02
            r0 = 0
            r1.A0Y(r0)
            com.facebook.ads.redexgen.X.c2 r0 = r12.A02
            r1 = 100
            r0.A0W(r1)
            com.facebook.ads.redexgen.X.c2 r0 = r12.A02
            r0.A0X(r1)
            com.facebook.ads.redexgen.X.5h r1 = r12.A05
            com.facebook.ads.redexgen.X.C3 r0 = new com.facebook.ads.redexgen.X.C3
            r0.<init>()
            r1.setOnAssetsLoadedListener(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1.A05(com.facebook.ads.redexgen.X.nG, com.facebook.ads.redexgen.X.qT, java.lang.String, java.util.List):void");
    }

    public final void A0w(InterfaceC2644iv interfaceC2644iv, int i, InterfaceC2909nG interfaceC2909nG, C2771kz c2771kz, C3102qT c3102qT, String str) {
        this.A05.A1u(this.A04, interfaceC2644iv);
        this.A05.setTag(-1593835536, Integer.valueOf(i));
        this.A05.A1p();
        List<C2647iy> listA7q = interfaceC2644iv.A7q();
        if (listA7q != null && !listA7q.isEmpty()) {
            Iterator<C2647iy> it = listA7q.iterator();
            while (it.hasNext()) {
                this.A05.A1v(it.next().A08());
            }
            A05(interfaceC2909nG, c3102qT, str, listA7q);
        }
    }

    public final /* synthetic */ void A0x(boolean z) {
        if (z) {
            C2224c2 c2224c2 = this.A06;
            if (A08[3].length() != 1) {
                throw new RuntimeException();
            }
            A08[3] = "M";
            c2224c2.A0U();
        }
        if (this.A02 != null) {
            this.A02.A0U();
        }
    }
}
