package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class LN extends AbstractC2395ep {
    public static byte[] A06;
    public static String[] A07 = {"RwkPFHsv9wotgH8PCqYhpIij5lIi", "drIC7gYxypHASOm9CvVJaHIQeep0", "f0dvIXyq27iv5zRXvkJTu2cqkG", "fzusVvXWPget8SSdASQ7tAMFHi8p37he", "Ar6p", "jDkSEm6Ik6fEWWn08WKTicIvFe3Dtksc", "J7vaKr0jTjoObEFZmlhET1S0K8S4ujA7", "2rimL2d5m8eNJCurq2ysJBza56R6EvG7"};
    public LP A00;
    public EnumC2949nw A01;
    public boolean A02;
    public final C1643Hi A03;
    public final InterfaceC2909nG A04;
    public final AbstractC3292tX A05;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 110);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A06 = new byte[]{94, 93, 82, 82, 89, 78};
    }

    static {
        A04();
    }

    public LN(C1643Hi c1643Hi, InterfaceC2909nG interfaceC2909nG, AbstractC3292tX abstractC3292tX, C2224c2 c2224c2, AbstractC2396eq abstractC2396eq, EnumC2949nw enumC2949nw) {
        super(c1643Hi, abstractC2396eq, c2224c2);
        this.A04 = interfaceC2909nG;
        this.A05 = abstractC3292tX;
        this.A03 = c1643Hi;
        this.A01 = enumC2949nw;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2395ep
    public final void A0A(Map<String, String> map) {
        String string;
        if (this.A00 != null && !TextUtils.isEmpty(this.A00.A7z())) {
            this.A03.A0F().A3h();
            AbstractC2498gU.A02(this.A00.A05(), AbstractC3086qD.A00(A03(0, 6, 82)));
            this.A04.AC7(this.A00.A7z(), map);
            C1643Hi c1643Hi = this.A03;
            String[] strArr = A07;
            if (strArr[7].charAt(31) != strArr[6].charAt(31)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[0] = "Tkg0tGhzpCvpbpNuTPjRHtf4b45H";
            strArr2[1] = "dBPpzaB1YNfwJk5banXGE19c57tB";
            if (C2888mv.A19(c1643Hi)) {
                if (this.A01 == EnumC2949nw.A08) {
                    string = AdPlacementType.MEDIUM_RECTANGLE.toString();
                } else {
                    string = AdPlacementType.BANNER.toString();
                }
                C3013oz c3013ozA00 = C3013oz.A00(this.A03);
                String placementType = this.A00.A7z();
                c3013ozA00.A0E(string, placementType);
            }
        }
    }

    public final synchronized void A0B() {
        if (!this.A02 && this.A00 != null) {
            this.A02 = true;
            if (!TextUtils.isEmpty(this.A00.A03())) {
                ExecutorC3104qV.A00(new LO(this));
            }
        }
    }

    public final void A0C(LP lp) {
        this.A00 = lp;
    }
}
