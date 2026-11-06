package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ps, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C3065ps {
    public static String[] A05 = {"W6VRHda5gtLUaPITsfC2cAClSG72uAjU", "InoKloHDgq0CcxOKOjQiUbO9bflNgMc6", "vgOlHPB", "HwmPNB85GvgAoMoeYjamrZVzdR67lGy5", "97hqk2lgYZuMaDxZXyhsH", "HXsRqxuQhTkLhvYebPxTHkiqTIKIJvDr", "Ck564rSLCSvbweXx55nzkdwgcjUocV6X", ""};
    public boolean A00 = false;
    public final Handler A01 = new Handler(Looper.getMainLooper());
    public final LA A02;
    public final C1643Hi A03;
    public final InterfaceC3063pq A04;

    public C3065ps(C1643Hi c1643Hi, LA la, InterfaceC3063pq interfaceC3063pq) {
        this.A03 = c1643Hi;
        this.A04 = interfaceC3063pq;
        this.A02 = la;
    }

    public static C3065ps A00(C1643Hi c1643Hi, LA la, InterfaceC3063pq interfaceC3063pq) {
        Object objA0I = c1643Hi.A0I();
        if (objA0I == null) {
            objA0I = new C3065ps(c1643Hi, la, interfaceC3063pq);
            c1643Hi.A0P(objA0I);
        }
        C3065ps c3065ps = (C3065ps) objA0I;
        if (A05[7].length() == 7) {
            throw new RuntimeException();
        }
        String[] strArr = A05;
        strArr[1] = "ORnMxFNfeMb5MzGsY9WSDmc8ng0pMJPu";
        strArr[4] = "9RL1elpbdMmSftIqEAaOH";
        return c3065ps;
    }

    public static boolean A01(C1643Hi c1643Hi) {
        if (C2888mv.A1g(c1643Hi)) {
            boolean zA0J = C3032pK.A0J(c1643Hi);
            if (A05[7].length() == 7) {
                throw new RuntimeException();
            }
            A05[5] = "ksJFyNHjKkO0Jin5EGXZGwAyRPDGXujW";
            if (zA0J) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.facebook.ads.redexgen.X.C3064pr A02(com.facebook.ads.redexgen.X.LA r4) {
        /*
            r3 = this;
            com.facebook.ads.redexgen.X.Hi r0 = r3.A03
            boolean r0 = com.facebook.ads.redexgen.X.C2888mv.A1m(r0)
            r2 = 1
            if (r0 == 0) goto L1f
            boolean r0 = r4.A2O()
            if (r0 == 0) goto L1d
            com.facebook.ads.redexgen.X.Hi r0 = r3.A03
            boolean r0 = A01(r0)
            if (r0 == 0) goto L1d
        L17:
            com.facebook.ads.redexgen.X.pr r0 = new com.facebook.ads.redexgen.X.pr
            r0.<init>(r2, r2)
            return r0
        L1d:
            r2 = 0
            goto L17
        L1f:
            boolean r1 = r4.A2O()
            if (r1 == 0) goto L33
            com.facebook.ads.redexgen.X.Hi r0 = r3.A03
            boolean r0 = A01(r0)
            if (r0 == 0) goto L33
        L2d:
            com.facebook.ads.redexgen.X.pr r0 = new com.facebook.ads.redexgen.X.pr
            r0.<init>(r1, r2)
            return r0
        L33:
            r2 = 0
            goto L2d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3065ps.A02(com.facebook.ads.redexgen.X.LA):com.facebook.ads.redexgen.X.pr");
    }

    public final void A03() {
        this.A00 = false;
        this.A01.removeCallbacksAndMessages(null);
    }
}
