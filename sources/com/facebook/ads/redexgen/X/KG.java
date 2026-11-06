package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.text.TextUtils;
import com.facebook.ads.AdError;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class KG implements InterfaceC2404ey {
    public static byte[] A02;
    public static String[] A03 = {"CodBKn6Rx4Nd2NCJ9VlYeJoUvBmT0K9p", "5Rf8WjvcJZOUdeEvkpnEyeT6h0OK8cqO", "9H9umRBAwWbsUQsHVAjP1GvoefoGWKiv", "nqryT6E7", "BkgpBj4q", "vUmBCwuwnOwC6wDkIlhiKnb32h6Srhe1", "47HB5bdSxtP74yDXUEGozfNjn4WOkRGN", "xids5JFtyjlo4uGEh5DI8Wwgi7h0jVQM"};
    public final /* synthetic */ C13977e A00;
    public final /* synthetic */ Runnable A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = (bArrCopyOfRange[i4] ^ i3) ^ 34;
            String[] strArr = A03;
            if (strArr[5].charAt(5) == strArr[1].charAt(5)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[5] = "sVZQ6Ml9fBzEITS5ybXWTtwXQoWqWbAN";
            strArr2[1] = "MwEMOJFXQFuJpU8zWQ85tYeWswvxAO3B";
            bArrCopyOfRange[i4] = (byte) i5;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{111, 58, 111, 63, 104, 61, 58, 58, 15, 42, 47, 62, 58, 43, 60, 110, 39, 61, 110, 32, 59, 34, 34, 110, 33, 32, 110, 34, 33, 47, 42, 7, 32, 58, 43, 60, 61, 58, 39, 58, 39, 47, 34, 15, 42, 93, 122, 96, 113, 102, 103, 96, 125, 96, 125, 117, 120, 52, 125, 121, 100, 102, 113, 103, 103, 125, 123, 122, 52, 114, 125, 102, 113, 112, 106, 101, 84, 106, 104, 127, 98, 125, 98, 127, 114, 47, 32, 42, 60, 33, 39, 42, 96, 39, 32, 58, 43, 32, 58, 96, 47, 45, 58, 39, 33, 32, 96, 24, 7, 11, 25, 110, 127, 102, 11, 10, 45, 10, 16, 1, 22, 23, 16, 13, 16, 13, 5, 8, 40, 11, 3, 3, 13, 10, 3, 45, 9, 20, 22, 1, 23, 23, 13, 11, 10};
    }

    static {
        A01();
    }

    public KG(C13977e c13977e, Runnable runnable) {
        this.A00 = c13977e;
        this.A01 = runnable;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2404ey
    public final void AFF(C1750Lq c1750Lq, String str, boolean z) {
        if (this.A00.A07 != null) {
            this.A00.A07.A0C();
        }
        boolean z2 = !TextUtils.isEmpty(str);
        if (z && z2) {
            try {
                Intent intent = new Intent(A00(85, 26, 108));
                intent.setData(AbstractC3036pP.A00(str));
                C3022p8.A0F(this.A00.A0B, intent);
            } catch (C3020p6 e) {
                Throwable cause = e.getCause();
                C3020p6 cause2 = e;
                if (cause != null) {
                    cause2 = e.getCause();
                }
                this.A00.A0B.A08().ABz(A00(74, 11, 41), AbstractC2811lf.A04, new C2812lg(cause2));
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2404ey
    public final void AFG(C1750Lq c1750Lq) {
        if (this.A00.A07 != null) {
            C13977e c13977e = this.A00;
            if (A03[6].charAt(14) == 'T') {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[2] = "vlIleiP8hcPqYYjet3JGHKRUMm1C2tRN";
            strArr[0] = "gv1mebtOk9Dyg4EzQ5sFxgEtxg0lajYv";
            c13977e.A07.A04();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2404ey
    public final void AFH(C1750Lq c1750Lq) {
        if (this.A00.A07 != null) {
            this.A00.A07.A05();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2404ey
    public final void AFI(C1750Lq c1750Lq) {
        if (c1750Lq != this.A00.A00) {
            return;
        }
        if (c1750Lq == null) {
            this.A00.A0B.A08().ABz(A00(111, 3, 45), AbstractC2811lf.A0X, new C2812lg(A00(8, 37, 108)));
            AFJ(c1750Lq, AdError.internalError(2004));
            return;
        }
        this.A00.A0G().removeCallbacks(this.A01);
        this.A00.A01 = c1750Lq;
        this.A00.A0K();
        if (this.A00.A07 != null) {
            this.A00.A07.A0F(c1750Lq);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2404ey
    public final void AFJ(C1750Lq c1750Lq, AdError adError) {
        if (c1750Lq != this.A00.A00) {
            return;
        }
        this.A00.A0G().removeCallbacks(this.A01);
        this.A00.A0P(c1750Lq);
        this.A00.A0B.A0F().A6F(adError.getErrorCode(), adError.getErrorMessage());
        if (this.A00.A07 != null) {
            this.A00.A07.A0G(new C2947nt(adError.getErrorCode(), adError.getErrorMessage()));
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2404ey
    public final void AFK(C1750Lq c1750Lq) {
        AbstractC2958o5.A05(A00(Sdk.SDKError.Reason.ASSET_WRITE_ERROR_VALUE, 31, 70), A00(45, 29, 54), A00(0, 8, Sdk.SDKError.Reason.TPAT_ERROR_VALUE));
        if (this.A00.A07 != null) {
            this.A00.A07.A0D();
        }
        this.A00.A0N();
        if (A03[6].charAt(14) == 'T') {
            throw new RuntimeException();
        }
        A03[7] = "QrkMV6rbZFtiW7pEinmR2GeiFBbKTBFx";
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2404ey
    public final void AFL() {
        if (this.A00.A07 != null) {
            this.A00.A07.A08();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2404ey
    public final void AFM() {
        if (this.A00.A07 != null) {
            AbstractC2394eo abstractC2394eo = this.A00.A07;
            String[] strArr = A03;
            if (strArr[4].length() != strArr[3].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[4] = "PqUvVkpM";
            strArr2[3] = "ZbXObh2e";
            abstractC2394eo.A06();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2404ey
    public final void AFN() {
        if (this.A00.A07 != null) {
            this.A00.A07.A07();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2404ey
    public final void onInterstitialActivityDestroyed() {
        if (this.A00.A07 != null) {
            AbstractC2394eo abstractC2394eo = this.A00.A07;
            String[] strArr = A03;
            if (strArr[4].length() != strArr[3].length()) {
                throw new RuntimeException();
            }
            A03[7] = "GnFpeIYTLTtQauKbWu8xt8cYniyUJ1Ep";
            abstractC2394eo.A02();
        }
    }
}
