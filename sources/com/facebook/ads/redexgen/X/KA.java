package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;
import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class KA implements InterfaceC2412f6 {
    public static byte[] A02;
    public static String[] A03 = {"gOGPE1XGqnroAJihU7XGAfTAdWa21jWC", "Kcs30m2Uc1eFMAQARd2pOhOOSRswugkg", "xkwB", "vFLx4ryI8nKhSFQKGVnAMH5qObxMihWN", "NnwKyO2XMzRH0BXfVduboZ9DAJ5a5svW", "U3uRLxNZuwH", "U9y6Wp3Jad2LD1", "sOAhAPVwmiqriGnbgM61Uai8lTIQh97W"};
    public final /* synthetic */ C13937a A00;
    public final /* synthetic */ Runnable A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 97);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{81, 3, 87, 81, 84, 83, 86, 4, 112, 71, 85, 67, 80, 70, 71, 70, 2, 116, 75, 70, 71, 77, 2, 75, 79, 82, 80, 71, 81, 81, 75, 77, 76, 2, 68, 75, 80, 71, 70, 70, 71, 123, 76, 94, 72, 91, 77, 76, 77, 127, 64, 77, 76, 70, 104, 77, 101, 70, 78, 78, 64, 71, 78, 96, 68, 89, 91, 76, 90, 90, 64, 70, 71};
    }

    static {
        A01();
    }

    public KA(C13937a c13937a, Runnable runnable) {
        this.A00 = c13937a;
        this.A01 = runnable;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2412f6
    public final void AGq(LG lg) {
        if (this.A00.A07 != null) {
            this.A00.A07.A06();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2412f6
    public final void AGr(LG lg) {
        if (this.A00.A07 != null) {
            this.A00.A07.A07();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2412f6
    public final void AGs(LG lg) {
        if (this.A00.A07 != null) {
            this.A00.A07.A0C();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2412f6
    public final void AGt(LG lg) {
        this.A00.A0G().removeCallbacks(this.A01);
        this.A00.A01 = lg;
        this.A00.A0K();
        if (this.A00.A07 != null) {
            this.A00.A07.A0F(lg);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2412f6
    public final void AGu(LG lg) {
        AbstractC2958o5.A05(A00(39, 34, 72), A00(8, 31, 67), A00(0, 8, 7));
        if (this.A00.A07 != null) {
            this.A00.A07.A0D();
        }
        this.A00.A0N();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2412f6
    public final void AGv(LG lg) {
        if (this.A00.A07 != null) {
            this.A00.A07.A08();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2412f6
    public final void AGw(LG lg, AdError adError) {
        this.A00.A0G().removeCallbacks(this.A01);
        this.A00.A0B.A0F().A6F(adError.getErrorCode(), adError.getErrorMessage());
        if (this.A00.A07 != null) {
            if (AdError.AD_PRESENTATION_ERROR.equals(adError) && C2888mv.A1y(this.A00.A0B)) {
                this.A00.A07.A0G(C2947nt.A00(AdErrorType.AD_PRESENTATION_ERROR));
            } else if (AdError.NO_FILL.equals(adError)) {
                this.A00.A07.A0G(C2947nt.A00(AdErrorType.NO_FILL));
            } else {
                this.A00.A07.A0G(C2947nt.A00(AdErrorType.INTERNAL_ERROR));
            }
        }
        C13937a c13937a = this.A00;
        if (A03[2].length() != 4) {
            throw new RuntimeException();
        }
        A03[2] = "s57s";
        c13937a.A0P(lg);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2412f6
    public final void onRewardedVideoActivityDestroyed() {
        if (this.A00.A07 != null) {
            this.A00.A07.A09();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2412f6
    public final void onRewardedVideoClosed() {
        if (this.A00.A07 != null) {
            this.A00.A07.A0A();
        }
    }
}
