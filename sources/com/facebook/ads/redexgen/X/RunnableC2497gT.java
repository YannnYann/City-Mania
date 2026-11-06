package com.facebook.ads.redexgen.X;

import android.os.Bundle;
import com.facebook.ads.AdSDKNotificationListener;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.gT, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class RunnableC2497gT implements Runnable {
    public static byte[] A02;
    public static String[] A03 = {"", "R2h4cPa", "8K6r33o48istIkLwCuAfGDqRYcEBFJta", "JrgImPTdAC8EkycOMZgSjkdVNJJcyT0z", "UmabyHZVDvNoGZWIzd7OnW5h8PImv1dX", "9OHeUl2dxQ9y3g7sK1669", "ejdw", "orFgTMj4gc7nxjDrulE2T1NaHiTuAbhe"};
    public final /* synthetic */ String A00;
    public final /* synthetic */ List A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] - i3) - 19);
            String[] strArr = A03;
            if (strArr[1].length() == strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[2] = "PBcjmF449O2ALurV1e1gxRld5UP64De9";
            strArr2[7] = "bFbD54V4FV2Kx5Uvd678uCerr9Gu9fe1";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-128, -119, 126, -115, -108, -117, -113, -128, 127, 122, 126, -117, -120, -113, -109, -106, -104, -117, -103, -103, -113, -107, -108};
    }

    static {
        A01();
    }

    public RunnableC2497gT(List list, String str) {
        this.A01 = list;
        this.A00 = str;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (AbstractC2996oi.A02(this)) {
            return;
        }
        try {
            for (AdSDKNotificationListener adSDKNotificationListener : this.A01) {
                Bundle data = new Bundle();
                data.putString(A00(0, 13, 8), this.A00);
                adSDKNotificationListener.onAdEvent(A00(13, 10, 19), data);
            }
        } catch (Throwable th) {
            AbstractC2996oi.A00(th, this);
        }
    }
}
