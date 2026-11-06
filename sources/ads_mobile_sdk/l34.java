package ads_mobile_sdk;

import com.vungle.ads.internal.protos.Sdk;

/* JADX INFO: loaded from: classes.dex */
public final class l34 {
    public static l44 a(long j) {
        return l44.a((d44) new k34(j));
    }

    public static void a(long j, k44 k44Var, boolean z) {
        long[] jArr = {2000490107, 1476547902, 1834034217, 268849430, 1839467528, 4368198174L, 449620248, 1652701270, 1629190168};
        long j2 = jArr[0];
        long j3 = jArr[1];
        long j4 = jArr[2];
        long j5 = jArr[3];
        long j6 = ((((((~j2) & j3) | j4) + ((j2 & j5) | jArr[4])) - jArr[5]) + jArr[6]) ^ (jArr[7] % jArr[8]);
        int iA = p30.a(((~1725868784) & 388366538) | 739792167, (1725868784 & 1395525853) | 1087913783, 2097482120, 23637094) ^ (1550046828 % 184366026);
        long j7 = z ? (j + j) ^ (j >> 63) : j;
        int i = 1;
        while (true) {
            long j8 = j7 & j6;
            j7 >>>= 7;
            boolean z2 = j7 != 0 || i < 0;
            int i2 = (int) j8;
            if (z2) {
                i2 = ((i2 | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) << iA) >> iA;
            }
            int i3 = k44Var.b;
            k44Var.a.write((byte) i2);
            if (!z2) {
                return;
            } else {
                i++;
            }
        }
    }
}
