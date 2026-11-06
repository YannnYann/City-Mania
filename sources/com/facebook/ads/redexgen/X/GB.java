package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class GB extends AbstractRunnableC3004oq {
    public static byte[] A01;
    public static String[] A02 = {"562InPUOhACtlwCEtN", "R5lwX4z8RDFVh5E8umVQyGbxSoVGO", "CYUCoKvLVtAS439EMb", "ChKnavF9Nqo0oetaNymcfBGaHAWTYXo2", "g5ZzVDftJQYE4wszTnHA7JY3RdMW3", "1hyLjyvULyVtl4OO", "Eld6CqAd7cnvJnvbiWS", "Re88eRXq7VTIVsZrXxwUq3yVYBRsOkYZ"};
    public final /* synthetic */ Context A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 11);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{86, -123, -123, 98, 126, -125, 104, 121, -128, 107, 122, -121, -120, 126, -124, -125};
    }

    static {
        A01();
    }

    public GB(Context context) {
        this.A00 = context;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC3004oq
    public final void A07() {
        int returnMinSdkVersion;
        if (AbstractC3045pY.A04 == EnumC3044pX.A02) {
            return;
        }
        SharedPreferences sharedPreferencesA00 = AbstractC2982oU.A00(this.A00);
        String strA00 = A00(0, 16, 10);
        int i = sharedPreferencesA00.getInt(strA00, -1);
        if (i == -1) {
            if (Build.VERSION.SDK_INT < 24) {
                returnMinSdkVersion = AbstractC3045pY.A02(this.A00);
            } else {
                returnMinSdkVersion = AbstractC3045pY.A03(this.A00);
            }
            int unused = AbstractC3045pY.A00 = returnMinSdkVersion;
            if (A02[7].charAt(31) == 'G') {
                throw new RuntimeException();
            }
            A02[3] = "Y4NBnL2AiN9ppE2ANDhRNdYoO8WQhPKC";
            sharedPreferencesA00.edit().putInt(strA00, returnMinSdkVersion).commit();
            AbstractC3045pY.A04 = EnumC3044pX.A02;
            return;
        }
        int unused2 = AbstractC3045pY.A00 = i;
        AbstractC3045pY.A04 = EnumC3044pX.A02;
    }
}
