package com.facebook.ads.redexgen.X;

import android.media.MediaFormat;
import com.unity3d.services.UnityAdsConstants;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Si, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1911Si implements InterfaceC2038Xo, YD, PR {
    public static byte[] A04;
    public InterfaceC2038Xo A00;
    public InterfaceC2038Xo A01;
    public YD A02;
    public YD A03;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 80);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{102, 100, 117, 87, 104, 101, 100, 110, 71, 115, 96, 108, 100, 76, 100, 117, 96, 101, 96, 117, 96, 77, 104, 114, 117, 100, 111, 100, 115};
    }

    public C1911Si() {
    }

    public /* synthetic */ C1911Si(OR or) {
        this();
    }

    @Override // com.facebook.ads.redexgen.X.PR
    public final void AAM(int i, Object obj) {
        switch (i) {
            case 7:
                this.A01 = (InterfaceC2038Xo) obj;
                return;
            case 8:
                this.A02 = (YD) obj;
                return;
            case UnityAdsConstants.AdOperations.SHOW_TIMEOUT_MS /* 10000 */:
                if (0 == 0) {
                    this.A00 = null;
                    this.A03 = null;
                    return;
                }
                throw new NullPointerException(A00(0, 29, 81));
            default:
                return;
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2038Xo
    public final void AHc(long j, long j2, VC vc, MediaFormat mediaFormat) {
        if (this.A00 != null) {
            this.A00.AHc(j, j2, vc, mediaFormat);
        }
        if (this.A01 != null) {
            this.A01.AHc(j, j2, vc, mediaFormat);
        }
    }
}
