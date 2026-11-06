package com.facebook.ads.redexgen.X;

import android.media.MediaCodec;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Sx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1926Sx extends Exception {
    public static byte[] A05;
    public final C1919Sq A00;
    public final C1926Sx A01;
    public final String A02;
    public final String A03;
    public final boolean A04;

    static {
        A05();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 118);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A05 = new byte[]{-49, -61, 4, 37, 35, 47, 36, 37, 50, -32, 41, 46, 41, 52, -32, 38, 33, 41, 44, 37, 36, -6, -32, -15, 18, 16, 28, 17, 18, 31, -51, 22, 27, 22, 33, -51, 19, 14, 22, 25, 18, 17, -25, -51, 8, -24, -73, -85, -14, -2, -4, -67, -11, -16, -14, -12, -15, -2, -2, -6, -67, -16, -13, 2, -67, -16, -3, -13, 1, -2, -8, -13, 7, -67, -4, -12, -13, -8, -16, -62, -67, -12, 7, -2, -1, -5, -16, 8, -12, 1, -67, -4, -12, -13, -8, -16, -14, -2, -13, -12, -14, -67, -36, -12, -13, -8, -16, -46, -2, -13, -12, -14, -31, -12, -3, -13, -12, 1, -12, 1, -18, -5, -14, -12, -20};
    }

    public C1926Sx(VC vc, Throwable th, boolean z, int i) {
        this(A03(23, 22, 55) + i + A03(45, 3, 21) + vc, th, vc.A0W, z, null, A02(i), null);
    }

    public C1926Sx(VC vc, Throwable th, boolean z, C1919Sq c1919Sq) {
        this(A03(2, 21, 74) + c1919Sq.A03 + A03(0, 2, 45) + vc, th, vc.A0W, z, c1919Sq, N1.A02 >= 21 ? A04(th) : null, null);
    }

    public C1926Sx(String str, Throwable th, String str2, boolean z, C1919Sq c1919Sq, String str3, C1926Sx c1926Sx) {
        super(str, th);
        this.A03 = str2;
        this.A04 = z;
        this.A00 = c1919Sq;
        this.A02 = str3;
        this.A01 = c1926Sx;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C1926Sx A00(C1926Sx c1926Sx) {
        return new C1926Sx(getMessage(), getCause(), this.A03, this.A04, this.A00, this.A02, c1926Sx);
    }

    public static String A02(int i) {
        String strA03 = i < 0 ? A03(Sdk.SDKError.Reason.TPAT_ERROR_VALUE, 4, 23) : A03(0, 0, 52);
        StringBuilder sb = new StringBuilder();
        String sign = A03(48, 73, 25);
        return sb.append(sign).append(strA03).append(Math.abs(i)).toString();
    }

    public static String A04(Throwable th) {
        if (th instanceof MediaCodec.CodecException) {
            return ((MediaCodec.CodecException) th).getDiagnosticInfo();
        }
        return null;
    }
}
