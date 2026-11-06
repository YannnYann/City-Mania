package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Message;
import com.facebook.ads.internal.util.common.FbValidationUtils;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.gG, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2484gG {
    public static byte[] A00;
    public static String[] A01 = {"zsdAZh7iePrJV9xbPQOozgkwwcFaPnsd", "spwQNxGZecpZYnzhTOenf8qSCYVERjHa", "vRaPAS5ITjByKupsQp", "YH9oby8h5cjOXQgJZVFXdnGffnMmkFV", "Q3tNAMONEcy8t0lFeY94KcrOxIBYnGFQ", "0wdxeE89ToAVBIwU0wnnWcKH8K5SgcRK", "Enk3e4aOdQUnECCa6gTtS9QadDpJPD1Y", "9wYGdkn9LL853VhpD7bhQhTyw1nqw"};
    public static final String A02;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 18);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{102, -125, -125, -125, 115, 115, 115, 115, 115, 115, 115, 115, 115, -91, -91, -91, -91, -91, -91, -91, -91, -75, -75, -75, -104, -70, -31, -26, -36, -31, -26, -33, -104, -20, -25, -104, -21, -35, -22, -18, -31, -37, -35, -104, -21, -19, -37, -37, -35, -21, -21, -104, -75, -104, -104, 118, -119, -126, 120, -128, 121, -109, 121, -116, -120, -122, 117, -121, -109, 127, 121, -115, 116, 117, 115, -128, 116, 102, 115, 119, 106, 100, 102, -128, 102, 121, 117, 115, 98, 116, -105, -104, -106, -93, -105, -119, -106, -102, -115, -121, -119, -93, -105, -120, -113, -93, -102, -119, -106, -105, -115, -109, -110, 122, -122, -124, 69, 125, 120, 122, 124, 121, -122, -122, -126, 69, 120, 123, -118, 69, -128, -123, -117, 124, -119, -123, 120, -125, 69, -128, -121, 122, 69, 88, -116, 123, -128, 124, -123, 122, 124, 101, 124, -117, -114, -122, -119, -126, 105, 124, -124, -122, -117, 124, 106, 124, -119, -115, -128, 122, 124, -56, -44, -46, -109, -53, -58, -56, -54, -57, -44, -44, -48, -109, -48, -58, -39, -58, -45, -58};
    }

    static {
        A03();
        A02 = C2484gG.class.getSimpleName();
    }

    public static int A00(Context context, String str) {
        PackageManager packageManager;
        if (!A02(171, 19, 83).equals(str) || (packageManager = context.getPackageManager()) == null) {
            return 1;
        }
        try {
            return FbValidationUtils.isFbSigningCertificateValid(FbValidationUtils.getSigningCertificate(packageManager.getPackageInfo(str, 64))) ? 0 : 1;
        } catch (PackageManager.NameNotFoundException unused) {
            return 2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.C2482gE A01(com.facebook.ads.redexgen.X.C1642Hh r7, boolean r8, android.content.ServiceConnection r9) {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C2484gG.A01(com.facebook.ads.redexgen.X.Hh, boolean, android.content.ServiceConnection):com.facebook.ads.redexgen.X.gE");
    }

    public static void A04(C1642Hh c1642Hh, Message message) {
        Bundle bundle = message.getData().getBundle(A02(55, 17, 34));
        if (bundle != null) {
            AbstractC2838m7.A06(c1642Hh, bundle.getString(A02(90, 23, 50)), bundle.getString(A02(72, 18, 15)));
        }
    }
}
