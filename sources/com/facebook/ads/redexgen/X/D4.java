package com.facebook.ads.redexgen.X;

import com.unity3d.services.UnityAdsConstants;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class D4 implements InterfaceC3196rz {
    public static byte[] A02;
    public static String[] A03 = {"d87ZlIF9hICjjvvmEhth2xU6osJ9G", "AvbzD", "FRSrsiOwMTtRoL0SBSrdk1NjL7kfv5d7", "pbZc1uy81WgsMwQOTCHi5qBICaz1gvqj", "4loT0XhvyWfo", "sxaln9AtEcky", "FoJPWMvyCdHIb0u0Ts69xOD", "Tvu3xZOYQyOOmxuOgKZy"};
    public final /* synthetic */ int A00;
    public final /* synthetic */ D2 A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 74);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{5, 18, 25, 19, 18, 5, 87, 25, 18, 15, 3, 87, 22, 19, 0, 23, 5, 19, 0, 22, 82, 21, 0, 19, 28, 6, 82, 19, 28, 22, 82, 17, 30, 29, 1, 23, 82, 19, 22, 82, 73, 78, 86, 1, 68, 79, 69, 1, 66, 64, 83, 69};
    }

    static {
        A01();
    }

    public D4(D2 d2, int i) {
        this.A01 = d2;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3196rz
    public final void ADH() {
        this.A01.A0G();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3196rz
    public final void AE6() {
        this.A01.A0X(false, this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3196rz
    public final void AEd(int i) {
        D2.A03(this.A01, i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3196rz
    public final void AEz(float f) {
        if (!this.A01.A08) {
            this.A01.A0L(f);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3196rz
    public final void AH3(boolean z) {
        this.A01.A0W(z);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3196rz
    public final void AHT() {
        this.A01.setUnskippableSecondsComplete(true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00b1, code lost:
    
        if (r5.A00 < r6.A01.A0A.A2v()) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00b3, code lost:
    
        r6.A01.A0D.A0F().AC5(A00(0, 14, 61));
        r6.A01.A0X(false, r6.A00);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00e6, code lost:
    
        if (r5.A00 < r6.A01.A0A.A2v()) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00e9, code lost:
    
        r6.A01.A0D.A0F().AC5(A00(14, 25, 56));
        r6.A01.A0M(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:?, code lost:
    
        return;
     */
    @Override // com.facebook.ads.redexgen.X.InterfaceC3196rz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void AHa(java.lang.String r7) {
        /*
            Method dump skipped, instruction units count: 347
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.D4.AHa(java.lang.String):void");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3196rz
    public final void ALw() {
        this.A01.setUnskippableSecondsComplete(false);
        this.A01.A0H.setProgressImmediate(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        this.A01.A0H.setToolbarActionMode(2);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC3196rz
    public final void ALx(float f) {
        this.A01.A0H.setProgress(100.0f * f);
    }
}
