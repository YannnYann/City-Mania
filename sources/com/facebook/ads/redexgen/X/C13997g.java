package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.7g, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C13997g extends LA implements Serializable {
    public static byte[] A00 = null;
    public static String[] A01 = {"lNfLNH12lo092G91EOzeY1GmrD7sd3LT", "IfriMLumcJB6cDz8CdV53z8mw", "VqAXCxmiQObdbt99qEtF0Khtp", "Er74lg0w9IOdrBN2LYFe3VajafM65LKV", "PApxnlfYZYjRi2lMOUBi6X3WbwZz37rL", "HRTNeezFOCXWn2GXnxOdBfrunSk2O2aN", "VET24gqvkOE8n1LMNVzexbAvR8qySpIp", "2OknKa0ZFArae7oBhfBaswv35Z02O68Z"};
    public static final long serialVersionUID = 2751287062553772011L;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 1);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{123, 108, 126, 104, 123, 109, 108, 109, 86, 127, 96, 109, 108, 102};
    }

    static {
        A02();
    }

    public C13997g(List<C2420fE> list) {
        super(list);
    }

    public static C13997g A00(JSONObject jSONObject, C1643Hi c1643Hi) {
        C13997g c13997g = new C13997g(LA.A07(jSONObject, c1643Hi, new C1729Kt()));
        c13997g.A3B(jSONObject);
        c13997g.A23(A01(0, 14, 8));
        return c13997g;
    }

    private final boolean A03() {
        C2423fH c2423fHA0I = A32().A0I();
        return TextUtils.isEmpty(c2423fHA0I.A09()) && c2423fHA0I.A07() == null && !TextUtils.isEmpty(c2423fHA0I.A08());
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x006a  */
    @Override // com.facebook.ads.redexgen.X.AbstractC2419fD
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int A1L() {
        /*
            r4 = this;
            boolean r0 = r4.A2G()
            if (r0 == 0) goto L27
            r3 = 3
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C13997g.A01
            r0 = 2
            r1 = r2[r0]
            r0 = 1
            r0 = r2[r0]
            int r1 = r1.length()
            int r0 = r0.length()
            if (r1 == r0) goto L1f
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L1f:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C13997g.A01
            java.lang.String r1 = "Avc54I4RohpfVXuEjhFSHVQISVBIYsCd"
            r0 = 3
            r2[r0] = r1
            return r3
        L27:
            boolean r0 = r4.A03()
            if (r0 == 0) goto L2f
            r0 = 5
            return r0
        L2f:
            com.facebook.ads.redexgen.X.fE r0 = r4.A32()
            com.facebook.ads.redexgen.X.fH r0 = r0.A0I()
            com.facebook.ads.redexgen.X.fb r0 = r0.A07()
            if (r0 == 0) goto L83
            com.facebook.ads.redexgen.X.fE r3 = r4.A32()
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C13997g.A01
            r0 = 7
            r1 = r1[r0]
            r0 = 13
            char r1 = r1.charAt(r0)
            r0 = 105(0x69, float:1.47E-43)
            if (r1 == r0) goto L74
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C13997g.A01
            java.lang.String r1 = "LUMoyJG2KoRy6RtYfUfQOcun1"
            r0 = 2
            r2[r0] = r1
            java.lang.String r1 = "H1zEIWfauAFdFHrLQfBWpGGFr"
            r0 = 1
            r2[r0] = r1
            com.facebook.ads.redexgen.X.fH r0 = r3.A0I()
            com.facebook.ads.redexgen.X.fb r0 = r0.A07()
            boolean r0 = r0.A0h()
            if (r0 != 0) goto L70
        L6a:
            boolean r0 = r4.A2Z()
            if (r0 == 0) goto L72
        L70:
            r0 = 4
        L71:
            return r0
        L72:
            r0 = 1
            goto L71
        L74:
            com.facebook.ads.redexgen.X.fH r0 = r3.A0I()
            com.facebook.ads.redexgen.X.fb r0 = r0.A07()
            boolean r0 = r0.A0h()
            if (r0 != 0) goto L70
            goto L6a
        L83:
            r0 = 0
            goto L71
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C13997g.A1L():int");
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2419fD
    public final int A1M() {
        return A32().A0I().A05();
    }
}
