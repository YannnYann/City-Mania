package com.facebook.ads.redexgen.X;

import android.os.SystemClock;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class SJ implements InterfaceC1869Qs {
    public static byte[] A01;
    public final /* synthetic */ SI A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 95);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-20, -32, -81, -48, -47, -52, -32, -41, -33, -84, -32, -49, -44, -38, -66, -44, -39, -42, 27, 57, 64, 65, 68, 59, 64, 57, -14, 59, 63, 66, 65, 69, 69, 59, 52, 62, 75, -14, 62, 51, 68, 57, 55, -14, 51, 71, 54, 59, 65, -14, 62, 51, 70, 55, 64, 53, 75, 12, -14, 15, 44, 49, 46, 37, 43, 49, 47, -36, 29, 49, 32, 37, 43, -36, 48, 37, 41, 33, 47, 48, 29, 41, 44, -36, -28, 34, 46, 29, 41, 33, -36, 44, 43, 47, 37, 48, 37, 43, 42, -36, 41, 37, 47, 41, 29, 48, 31, 36, -27, -10, -36, 37, 66, 71, 68, 59, 65, 71, 69, -14, 51, 71, 54, 59, 65, -14, 70, 59, 63, 55, 69, 70, 51, 63, 66, -14, -6, 69, 75, 69, 70, 55, 63, -14, 53, 62, 65, 53, 61, -14, 63, 59, 69, 63, 51, 70, 53, 58, -5, 12, -14};
    }

    public SJ(SI si) {
        this.A00 = si;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1869Qs
    public final void AFP(long j) {
        MV.A07(A00(2, 16, 12), A00(18, 41, Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE) + j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1869Qs
    public final void AGS(long j) {
        if (this.A00.A0I != null) {
            this.A00.A0I.AGS(j);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1869Qs
    public final void AGU(long j, long j2, long j3, long j4) {
        StringBuilder sbAppend = new StringBuilder().append(A00(59, 52, 93)).append(j);
        String strA00 = A00(0, 2, 97);
        String string = sbAppend.append(strA00).append(j2).append(strA00).append(j3).append(strA00).append(j4).append(strA00).append(this.A00.A06()).append(strA00).append(this.A00.A07()).toString();
        if (!SI.A0v) {
            String message = A00(2, 16, 12);
            MV.A07(message, string);
            return;
        }
        throw new R7(string);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1869Qs
    public final void AHG(long j, long j2, long j3, long j4) {
        StringBuilder sbAppend = new StringBuilder().append(A00(111, 50, Sdk.SDKError.Reason.INVALID_INDEX_URL_VALUE)).append(j);
        String strA00 = A00(0, 2, 97);
        String string = sbAppend.append(strA00).append(j2).append(strA00).append(j3).append(strA00).append(j4).append(strA00).append(this.A00.A06()).append(strA00).append(this.A00.A07()).toString();
        if (!SI.A0v) {
            String message = A00(2, 16, 12);
            MV.A07(message, string);
            return;
        }
        throw new R7(string);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1869Qs
    public final void AHR(int i, long j) {
        if (this.A00.A0I != null) {
            this.A00.A0I.AHS(i, j, SystemClock.elapsedRealtime() - this.A00.A07);
        }
    }
}
