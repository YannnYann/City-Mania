package com.facebook.ads.redexgen.X;

import android.view.View;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class K1 extends AbstractC2394eo {
    public static byte[] A01;
    public static String[] A02 = {"", "lR4UvBki6PSdVcLREjEHAbqRd1OmLUQf", "DjKPGQUWmMf7x", "ODfaPUPPzX7KhktdCz15RADFZIjUcUTH", "SOtQhTlfKwNvvZXzwoqU2I3z2iEV30z7", "BHtVd6ktyCMEATMZK8J5wjGrCvXYI9tG", "P8UTzFKpwpJ94", "IxNcf87J3g"};
    public final /* synthetic */ C1709Jz A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.ASSET_FAILED_INSUFFICIENT_SPACE_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{99, 114, 107, 29, 17, 16, 10, 12, 17, 18, 18, 27, 12, 94, 23, 13, 94, 16, 11, 18, 18};
    }

    static {
        A01();
    }

    public K1(C1709Jz c1709Jz) {
        this.A00 = c1709Jz;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394eo
    public final void A02() {
        if (this.A00.A01 == null) {
            this.A00.A06.A0F().AAx();
            this.A00.A04 = false;
            this.A00.A07.onInterstitialActivityDestroyed();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394eo
    public final void A04() {
        if (this.A00.A01 != null) {
            this.A00.A01.show();
            return;
        }
        this.A00.A06.A0F().AAy();
        this.A00.A04 = false;
        if (this.A00.A03 != null && C2888mv.A2D(this.A00.A06)) {
            this.A00.A03.A0R(new K2(this));
            this.A00.A03.A0M();
            this.A00.A03.A0J();
            this.A00.A03 = null;
        }
        this.A00.A07.onInterstitialDismissed(this.A00.A08.A7K());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394eo
    public final void A05() {
        this.A00.A06.A0F().AAz();
        this.A00.A07.onInterstitialDisplayed(this.A00.A08.A7K());
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394eo
    public final void A06() {
        this.A00.A07.onRewardedAdServerFailed();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394eo
    public final void A07() {
        this.A00.A07.onRewardedAdServerSucceeded();
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394eo
    public final void A08() {
        this.A00.A07.onRewardedAdCompleted();
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
    public final void A0E(View view) {
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x009a  */
    @Override // com.facebook.ads.redexgen.X.AbstractC2394eo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A0F(com.facebook.ads.redexgen.X.InterfaceC2393en r8) {
        /*
            Method dump skipped, instruction units count: 348
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.K1.A0F(com.facebook.ads.redexgen.X.en):void");
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC2394eo
    public final void A0G(C2947nt c2947nt) {
        this.A00.A06.A0F().A3j(C3101qS.A01(this.A00.A00), c2947nt.A03().getErrorCode(), c2947nt.A04());
        this.A00.A07.onError(this.A00.A08.A7K(), AbstractC3039pS.A00(c2947nt));
    }
}
