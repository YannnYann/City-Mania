package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class AB implements YR {
    public static byte[] A02;
    public static String[] A03 = {"G7GEIFXQO0Z9knaD65J", "LU", "TxwOYA7", "YxevNS8bXFAH5VaKrygLNdh4CskJzyrt", "iEB1vloiw8ckhFihZ40QAJj64RoVIDAp", "bF73JiHdj0lnKvGtrwNOLewzjJHOG6S6", "kUa6UXYHdQtWxOz9IwH", "EgpdIffl5aQpLFffOrQPdrMOwEuEbyXi"};
    public static final AB A04;
    public String A01 = A01(1, 7, Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE);
    public int A00 = 5;

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 24);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A02 = new byte[]{-85, 2, -5, -8, -5, -4, 4, -5};
    }

    static {
        A05();
        A04 = new AB();
    }

    public static AB A00() {
        return A04;
    }

    private String A02(String str) {
        if (this.A01 != null) {
            return this.A01 + A01(0, 1, 89) + str;
        }
        return str;
    }

    public static String A03(String str, Throwable th) {
        return str + '\n' + A04(th);
    }

    public static String A04(Throwable th) {
        if (th == null) {
            return A01(0, 0, 77);
        }
        String stackTraceString = Log.getStackTraceString(th);
        if (A03[4].length() != 32) {
            throw new RuntimeException();
        }
        A03[4] = "7efMYS04S7Ii4KLq2z2QBIFLiK16lV4b";
        return stackTraceString;
    }

    private void A06(int i, String str, String str2) {
        Log.println(i, A02(str), str2);
    }

    private void A07(int i, String str, String str2, Throwable th) {
        Log.println(i, A02(str), A03(str2, th));
    }

    @Override // com.facebook.ads.redexgen.X.YR
    public final void AAX(String str, String str2) {
        A06(4, str, str2);
    }

    @Override // com.facebook.ads.redexgen.X.YR
    public final void AAY(String str, String str2, Throwable th) {
        A07(4, str, str2, th);
    }

    @Override // com.facebook.ads.redexgen.X.YR
    public final boolean ABG(int i) {
        return this.A00 <= i;
    }

    @Override // com.facebook.ads.redexgen.X.YR
    public final void AKq(int i) {
        this.A00 = i;
    }
}
