package com.facebook.ads.redexgen.X;

import com.facebook.ads.RewardedVideoAd;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Jy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1708Jy extends AbstractC2394eo {
    public static byte[] A01;
    public static String[] A02 = {"7kSkrPID5YMo1WnvaMIgpKB6WIhQPZTc", "kYnVnFR0h3Yv", "", "4OZGrpocgzJPR2XOpe36kiptmUtlR1IY", "AELVZqmE3v", "ezzX0t3o6v3ClFiCUOYeN27kq8G", "mBbxV2ZqaJcWXY", "eL94qTtIFL"};
    public final /* synthetic */ C1706Jw A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 61);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-28, -13, -20, -53, -41, -42, -36, -38, -41, -44, -44, -51, -38, -120, -47, -37, -120, -42, -35, -44, -44};
    }

    static {
        A01();
    }

    public C1708Jy(C1706Jw c1706Jw) {
        this.A00 = c1706Jw;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394eo
    public final void A06() {
        this.A00.A07.onRewardServerFailed();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394eo
    public final void A07() {
        this.A00.A07.onRewardServerSuccess();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394eo
    public final void A08() {
        if (this.A00.A02 == null) {
            this.A00.A07.onRewardedVideoCompleted();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394eo
    public final void A09() {
        if (this.A00.A02 == null) {
            this.A00.A07.onRewardedVideoActivityDestroyed();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394eo
    public final void A0A() {
        if (this.A00.A02 != null) {
            C2732kL c2732kL = (C2732kL) this.A00.A02.buildShowAdConfig();
            c2732kL.A02(System.currentTimeMillis() - this.A00.A01);
            this.A00.A02.show(c2732kL.build());
            return;
        }
        this.A00.A07.onRewardedVideoClosed();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394eo
    public final void A0C() {
        this.A00.A06.A0F().A3g();
        this.A00.A07.onAdClicked(this.A00.A08.A7K());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394eo
    public final void A0D() {
        this.A00.A07.onLoggingImpression(this.A00.A08.A7K());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394eo
    public final void A0F(InterfaceC2393en interfaceC2393en) {
        if (this.A00.A04 == null) {
            this.A00.A06.A08().ABz(A00(0, 3, 70), AbstractC2811lf.A0N, new C2812lg(A00(3, 18, 43)));
            return;
        }
        LG lg = (LG) interfaceC2393en;
        if (this.A00.A08.A03 != null) {
            lg.A02(this.A00.A08.A03);
        }
        C1688Jc c1688Jc = this.A00.A08;
        int iA0I = lg.A0I();
        String[] strArr = A02;
        if (strArr[4].length() != strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[4] = "61YjDYRNNN";
        strArr2[7] = "vT3ubuaNP5";
        c1688Jc.A00 = iA0I;
        this.A00.A05 = true;
        this.A00.A03 = this.A00.A04.A0H();
        if (this.A00.A03 != null) {
            int iA2y = 0;
            if (!this.A00.A03.A2L()) {
                iA2y = ((LA) this.A00.A03).A2y();
            }
            if (iA2y > 0) {
                C3037pQ c3037pQ = new C3037pQ();
                if (c3037pQ.A09(this.A00.A06, this.A00.A08.A06, iA2y)) {
                    c3037pQ.A08(this.A00.A06, true);
                    this.A00.A02 = c3037pQ.A07(this.A00.A06, this.A00.A08.A0D, this.A00.A08.A06);
                } else {
                    C1706Jw c1706Jw = this.A00;
                    String[] strArr3 = A02;
                    if (strArr3[4].length() != strArr3[7].length()) {
                        String[] strArr4 = A02;
                        strArr4[4] = "df15N9yr5s";
                        strArr4[7] = "rrfEFjVt4q";
                        c3037pQ.A08(c1706Jw.A06, false);
                    } else {
                        String[] strArr5 = A02;
                        strArr5[1] = "7AaEv1vCH3bw";
                        strArr5[5] = "Y1uo0lYkjhkOAjcvNvodbhiOq3C";
                        c3037pQ.A08(c1706Jw.A06, false);
                    }
                }
            }
        }
        if (this.A00.A02 != null) {
            ((LA) this.A00.A03).A3C(true);
            RewardedVideoAd.RewardedVideoLoadAdConfig loadAdConfig = this.A00.A02.buildLoadAdConfig().withFailOnCacheFailureEnabled(true).withRewardData(this.A00.A03.A1R()).withAdExperience(this.A00.A08.A02).withAdListener(new C2477g9(this)).build();
            this.A00.A02.loadAd(loadAdConfig);
            return;
        }
        this.A00.A07.onAdLoaded(this.A00.A08.A7K());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394eo
    public final void A0G(C2947nt c2947nt) {
        this.A00.A0D(true);
        this.A00.A08.A0B.A0F().A3j(C3101qS.A01(this.A00.A00), c2947nt.A03().getErrorCode(), c2947nt.A04());
        this.A00.A07.onError(this.A00.A08.A7K(), AbstractC3039pS.A00(c2947nt));
    }
}
