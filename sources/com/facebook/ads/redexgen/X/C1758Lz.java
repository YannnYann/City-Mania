package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Lz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1758Lz extends AbstractC2225c3 {
    public static byte[] A01;
    public static String[] A02 = {"FgbnvaZAo2zgRtU3CN", "YP", "YkV47bdQ42QlJT1tn1x7cz3pH3dqwNv1", "zb1LbTWGtLRgqKOOaslPxENibZiVmFvx", "sBLEzoq931HN9t2OuzTVSqT9STbao9n2", "e2NZEuwsUivMgVi0HFeccuL47PicSvpI", "KfeuMQLHaU5EbEo6nJYtUmaaW2ijmOwJ", "Sl3KQDCtIIr069NMPBnyPAzljAsiyN2h"};
    public final /* synthetic */ C14107r A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = (bArrCopyOfRange[i4] ^ i3) ^ 46;
            String[] strArr = A02;
            if (strArr[6].charAt(25) == strArr[5].charAt(25)) {
                throw new RuntimeException();
            }
            A02[4] = "9SrcrYYNLVmZbA63NmfQBwmMn4zOba1D";
            bArrCopyOfRange[i4] = (byte) i5;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{30, 29, 18, 18, 25, 14};
    }

    static {
        A01();
    }

    public C1758Lz(C14107r c14107r) {
        this.A00 = c14107r;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2225c3
    public final void A03() {
        String strA1b;
        if (!this.A00.A0G.A07()) {
            this.A00.A0G.A05();
            this.A00.A04.A0F().A4r(this.A00.A02 != null);
            this.A00.A04.A0F().A3h();
            if (this.A00.A03 != null) {
                AbstractC2498gU.A02(this.A00.A03.A1Z(), AbstractC3086qD.A00(A00(0, 6, 82)));
            }
            C3303ti c3303tiA04 = new C3303ti().A05(this.A00.A0B).A04(this.A00.A0G);
            if (this.A00.A03 != null) {
                strA1b = this.A00.A03.A1b();
            } else {
                strA1b = null;
            }
            Map<String, String> mapA07 = c3303tiA04.A06(strA1b).A07();
            if (this.A00.A05 != null && this.A00.A03 != null) {
                this.A00.A05.AC7(this.A00.A03.A37(), mapA07);
            }
            if (C2888mv.A19(this.A00.A04)) {
                C14027j c14027j = this.A00.A03;
                if (A02[1].length() == 32) {
                    throw new RuntimeException();
                }
                A02[7] = "SZAtxMR6MMekU9BPahg69f1UGEqO5j5S";
                if (c14027j != null) {
                    C3013oz.A00(this.A00.A04).A0E(AdPlacementType.BANNER.toString(), this.A00.A03.A37());
                }
            }
            C2435fT.A07(this.A00.A03 != null ? this.A00.A03.A33() : null, this.A00.A04);
            if (this.A00.A0B != null) {
                this.A00.A0B.A0V();
            }
        }
    }
}
