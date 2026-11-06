package com.facebook.ads.redexgen.X;

import android.content.Context;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderImpl;
import com.facebook.ads.internal.util.process.ProcessUtils;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class HG implements InterfaceC2782lC {
    public static HG A07;
    public static byte[] A08;
    public static String[] A09 = {"kZNWMB05A80rolZkZr5gINRkemJedumA", "PGnlsDLswmZGHAGkHnqyou4j", "CQczeQcoxNMNqPeDO5UPH4delPie3CF6", "Ozs7AQnIuhnl4TF488yhCLnc3lqg3Tqv", "QUMQF15y8F49TOv2Mbtf3pi6YRJU7tsl", "iRM3Hx3PCEqf", "8yEJzjy1AvS4vnL", "zEXAgd0MZ6iopjt"};
    public InterfaceC2329dj A00;
    public InterfaceC2775l3 A01;
    public InterfaceC2781lB A02;
    public InterfaceC2797lR A03;
    public C2841mA A04;
    public InterfaceC2921nS A05;
    public AH A06;

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A09;
            if (strArr[6].length() != strArr[7].length()) {
                break;
            }
            String[] strArr2 = A09;
            strArr2[6] = "Hv2WK1fJh7GnXaP";
            strArr2[7] = "jwUFRNkRPBL5IaL";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            int i5 = bArrCopyOfRange[i4] - i3;
            String[] strArr3 = A09;
            if (strArr3[4].charAt(26) != strArr3[0].charAt(26)) {
                break;
            }
            String[] strArr4 = A09;
            strArr4[2] = "3jbuj6iR6sIerVLqEJ9xAsC0KuP7QrbG";
            strArr4[3] = "qsuffxm3RCjhy50iWQEl04Txy4tWGAPw";
            bArrCopyOfRange[i4] = (byte) (i5 - 98);
            i4++;
        }
        throw new RuntimeException();
    }

    public static void A07() {
        A08 = new byte[]{-57, -55, -10, -58, -57, -13, -64, -13, -16, 2, 16, 16, 6, 12, 11, -67, 1, -2, 17, -2, -67, 6, 11, 6, 17, 6, -2, 9, 6, 23, 2, 1, 33, 20, 31, 30, 33, 35, 2, 20, 34, 34, 24, 30, 29, -13, 16, 35, 16, -8, 29, 24, 35, 24, 16, 27, 24, 41, 20, 19};
        if (A09[1].length() == 32) {
            throw new RuntimeException();
        }
        String[] strArr = A09;
        strArr[2] = "XQj6tBQR93KUWcmqG7acynHpkyXbPHo4";
        strArr[3] = "0fPU7ngiro1m2vFzwgFa3cBnolZ3o5pA";
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final synchronized void A0C(C1642Hh c1642Hh) {
        if (this.A06 != null) {
            return;
        }
        this.A03 = A01(c1642Hh);
        this.A06 = A05(c1642Hh, this.A03, A03(c1642Hh));
        A09(c1642Hh, A00(c1642Hh, this.A06));
        A0A(c1642Hh, this.A06);
        A0B(c1642Hh, this.A06);
        if (this.A06 != null) {
            this.A06.A7D();
        }
    }

    static {
        A07();
    }

    public static InterfaceC2740kT A00(C1642Hh c1642Hh, AH ah) {
        if (!C2888mv.A1r(c1642Hh) || ah == null) {
            return null;
        }
        return AbstractC2741kU.A00().A00(ah);
    }

    public static InterfaceC2797lR A01(C1642Hh c1642Hh) {
        return AbstractC2798lS.A00().A00(c1642Hh, new HN());
    }

    public static synchronized HG A02() {
        if (A07 == null) {
            A07 = new HG();
        }
        return A07;
    }

    public static InterfaceC2214bs A03(C1642Hh c1642Hh) {
        if (!C2888mv.A1n(c1642Hh)) {
            return null;
        }
        return C2139af.A01(c1642Hh);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.InterfaceC2782lC
    /* JADX INFO: renamed from: A04, reason: merged with bridge method [inline-methods] */
    public final synchronized AH A9s() {
        return this.A06;
    }

    public static AH A05(C1642Hh c1642Hh, InterfaceC2797lR interfaceC2797lR, InterfaceC2214bs interfaceC2214bs) {
        if (!C2888mv.A2p(c1642Hh) || interfaceC2214bs == null || ProcessUtils.isRemoteRenderingProcess()) {
            return null;
        }
        return AbstractC2067Yu.A00().A00(c1642Hh, interfaceC2797lR, interfaceC2214bs, AbstractC2978oP.A04(c1642Hh), new HH(new C2970oH(c1642Hh, A06(0, 0, Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE), null, EnumC2950nx.A07, 0, new C2954o1(), AbstractC3093qK.A01(C2888mv.A0L(c1642Hh)), null, null, new K5()), c1642Hh), ZO.A00().A00());
    }

    public static void A08() {
        String strA06 = A06(8, 24, 59);
        if (A09[5].length() == 20) {
            throw new RuntimeException();
        }
        A09[5] = "4ii3kc4oT9MJsiDOLfNQb5ib2";
        AbstractC2958o5.A05(A06(32, 28, 77), strA06, A06(0, 8, 46));
    }

    public static void A09(C1642Hh c1642Hh, InterfaceC2740kT interfaceC2740kT) {
        if (!C2888mv.A1r(c1642Hh) || interfaceC2740kT == null) {
            return;
        }
        AbstractC2738kR.A00().A00(interfaceC2740kT, c1642Hh);
    }

    public static void A0A(C1642Hh c1642Hh, AH ah) {
        if (!C2888mv.A0k(c1642Hh) || ah == null) {
            return;
        }
        new C2760ko(c1642Hh, ah, new C2761kp(), DynamicLoaderImpl.getBidderTokenProviderApi().A00());
    }

    public static void A0B(C1642Hh c1642Hh, AH ah) {
        if (ah == null) {
            return;
        }
        AbstractC2892mz.A00(c1642Hh, ah);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2782lC
    public final InterfaceC2909nG A7N(C1642Hh c1642Hh) {
        return C1628Gt.A01(c1642Hh);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2782lC
    public final synchronized InterfaceC2781lB A7e(C2780lA c2780lA) {
        if (this.A02 == null) {
            this.A02 = new HI(this);
        }
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2782lC
    public final synchronized InterfaceC2775l3 A7r() {
        if (this.A01 == null) {
            this.A01 = new C1644Hj();
        }
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2782lC
    public final synchronized InterfaceC2797lR A8M(C2780lA c2780lA) {
        if (this.A03 == null) {
            this.A03 = A01(c2780lA.A02());
        }
        return this.A03;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2782lC
    public final synchronized InterfaceC2810le A8O(C2780lA c2780lA) {
        return new HW(c2780lA);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2782lC
    public final synchronized InterfaceC2783lD A8Y(final C2780lA c2780lA) {
        return new HM(c2780lA) { // from class: com.facebook.ads.redexgen.X.7B
            @Override // com.facebook.ads.redexgen.X.InterfaceC2783lD
            public final boolean AAQ() {
                return TextureViewSurfaceTextureListenerC1456Ac.A09();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2783lD
            public final void ADG() {
                C2835m4.A06(C2698jn.A09(super.A00));
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2783lD
            public final void ADj() {
                C2835m4.A07(C2698jn.A09(super.A00));
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2783lD
            public final void AEE(C1642Hh c1642Hh) {
                AbstractC2487gJ.A01(c1642Hh);
            }
        };
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2782lC
    public final synchronized InterfaceC2329dj A8n(C2780lA c2780lA) {
        if (!C2888mv.A12(c2780lA)) {
            return null;
        }
        if (this.A00 == null) {
            this.A00 = AbstractC2330dk.A00().A00(new HL(c2780lA));
        }
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2782lC
    public final synchronized InterfaceC2785lF A9b(C2780lA c2780lA) {
        return new HJ(c2780lA);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2782lC
    public final C1642Hh A9c(Context context) {
        C1642Hh sdkContext = AbstractC2779l9.A00();
        if (sdkContext == null) {
            C1642Hh sdkContext2 = new C1642Hh(context, this);
            AbstractC2779l9.A01(sdkContext2);
            return sdkContext2;
        }
        return sdkContext;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2782lC
    public final synchronized InterfaceC2921nS A9d(C1642Hh c1642Hh) {
        if (this.A05 == null) {
            this.A05 = new H1(c1642Hh);
        }
        return this.A05;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2782lC
    public final synchronized C2841mA A9j() {
        if (this.A04 == null) {
            this.A04 = new C2841mA();
            A08();
        }
        return this.A04;
    }
}
