package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.common.api.Api;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ژ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0345 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final /* synthetic */ boolean f1942 = true;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final byte[] f1944 = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final byte[] f1943 = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9};

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1244(byte[] bArr) {
        int length = bArr.length;
        byte[] bArr2 = f1944;
        int i = ((length + 2) / 3) * 4;
        int i2 = (i / Api.BaseClientBuilder.API_PRIORITY_OTHER) + i;
        byte[] bArr3 = new byte[i2];
        int i3 = length - 2;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < i3) {
            int i7 = ((bArr[i4] << 24) >>> 8) | ((bArr[i4 + 1] << 24) >>> 16) | ((bArr[i4 + 2] << 24) >>> 24);
            bArr3[i5] = bArr2[i7 >>> 18];
            int i8 = i5 + 1;
            bArr3[i8] = bArr2[(i7 >>> 12) & 63];
            bArr3[i5 + 2] = bArr2[(i7 >>> 6) & 63];
            bArr3[i5 + 3] = bArr2[i7 & 63];
            i6 += 4;
            if (i6 == Integer.MAX_VALUE) {
                bArr3[i5 + 4] = 10;
                i6 = 0;
                i5 = i8;
            }
            i4 += 3;
            i5 += 4;
        }
        if (i4 < length) {
            int i9 = length - i4;
            int i10 = (i9 > 2 ? (bArr[i4 + 2] << 24) >>> 24 : 0) | (i9 > 0 ? (bArr[i4] << 24) >>> 8 : 0) | (i9 > 1 ? (bArr[i4 + 1] << 24) >>> 16 : 0);
            if (i9 == 1) {
                bArr3[i5] = bArr2[i10 >>> 18];
                bArr3[i5 + 1] = bArr2[(i10 >>> 12) & 63];
                bArr3[i5 + 2] = 61;
                bArr3[i5 + 3] = 61;
            } else if (i9 == 2) {
                bArr3[i5] = bArr2[i10 >>> 18];
                bArr3[i5 + 1] = bArr2[(i10 >>> 12) & 63];
                bArr3[i5 + 2] = bArr2[(i10 >>> 6) & 63];
                bArr3[i5 + 3] = 61;
            } else if (i9 == 3) {
                bArr3[i5] = bArr2[i10 >>> 18];
                bArr3[i5 + 1] = bArr2[(i10 >>> 12) & 63];
                bArr3[i5 + 2] = bArr2[(i10 >>> 6) & 63];
                bArr3[i5 + 3] = bArr2[i10 & 63];
            }
            if (i6 + 4 == Integer.MAX_VALUE) {
                bArr3[i5 + 4] = 10;
                i5++;
            }
            i5 += 4;
        }
        if (f1942 || i5 == i2) {
            return new String(bArr3, 0, i2);
        }
        throw new AssertionError();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static int m1243(byte[] bArr, byte[] bArr2, int i, byte[] bArr3) {
        byte b = bArr[2];
        if (b == 61) {
            bArr2[i] = (byte) ((((bArr3[bArr[1]] << 24) >>> 12) | ((bArr3[bArr[0]] << 24) >>> 6)) >>> 16);
            return 1;
        }
        byte b2 = bArr[3];
        if (b2 == 61) {
            int i2 = ((bArr3[bArr[1]] << 24) >>> 12) | ((bArr3[bArr[0]] << 24) >>> 6) | ((bArr3[b] << 24) >>> 18);
            bArr2[i] = (byte) (i2 >>> 16);
            bArr2[i + 1] = (byte) (i2 >>> 8);
            return 2;
        }
        int i3 = ((bArr3[bArr[1]] << 24) >>> 12) | ((bArr3[bArr[0]] << 24) >>> 6) | ((bArr3[b] << 24) >>> 18) | ((bArr3[b2] << 24) >>> 24);
        bArr2[i] = (byte) (i3 >> 16);
        bArr2[i + 1] = (byte) (i3 >> 8);
        bArr2[i + 2] = (byte) i3;
        return 3;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static byte[] m1245(String str) throws C0322 {
        byte[] bytes = str.getBytes();
        int length = bytes.length;
        byte[] bArr = f1943;
        byte[] bArr2 = new byte[((length * 3) / 4) + 2];
        byte[] bArr3 = new byte[4];
        int i = 0;
        int i2 = 0;
        int iM1243 = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            byte b = (byte) (bytes[i] & 127);
            byte b2 = bArr[b];
            if (b2 < -5) {
                StringBuilder sb = new StringBuilder();
                sb.append(StringFog.decrypt("pJ29oY2Z6/jQyPnooYjt6cafseC9mfvpg4754LvY\n", "5vzZgc/4mJ0=\n"));
                sb.append(i);
                sb.append(StringFog.decrypt("D8w=\n", "NexekbiRTc4=\n"));
                sb.append((int) bytes[i]);
                throw new C0322(AbstractC0829.m1456("+OKcXIeSiZz5\n", "0Ib5P+7/6PA=\n", sb));
            }
            if (b2 >= -1) {
                if (b == 61) {
                    int i3 = length - i;
                    byte b3 = (byte) (bytes[length - 1] & 127);
                    if (i2 == 0 || i2 == 1) {
                        throw new C0322(StringFog.decrypt("aAYInrPzUtpxCRqbtvRR2mMRCpr/vQvdIQkK373jQp8hBxiZrP9C2g==\n", "AWh+/9+aNvo=\n") + i);
                    }
                    if ((i2 == 3 && i3 > 2) || (i2 == 4 && i3 > 1)) {
                        throw new C0322(StringFog.decrypt("esKE+G1rcQZo2pT5JCIrASrFgfB3YHpfKtCJ+2pkelUqxo74JGpwBm/Ng/NgYHIGfMKM6WEld1Iq\nzIb6d2BiBg==\n", "CqPgnAQFFiY=\n") + i);
                    }
                    if (b3 != 61 && b3 != 10) {
                        throw new C0322(StringFog.decrypt("ICdiKvPaIkozKG0w8p8uCzZpaCvh3ioDIWl1N/bWKgMrLiEn7ssj\n", "RUkBRZe/Rmo=\n"));
                    }
                } else {
                    int i4 = i2 + 1;
                    bArr3[i2] = b;
                    if (i4 == 4) {
                        iM1243 += m1243(bArr3, bArr2, iM1243, bArr);
                        i2 = 0;
                    } else {
                        i2 = i4;
                    }
                }
            }
            i++;
        }
        if (i2 != 0) {
            if (i2 != 1) {
                bArr3[i2] = 61;
                iM1243 += m1243(bArr3, bArr2, iM1243, bArr);
            } else {
                throw new C0322(StringFog.decrypt("Buzn+3ld00IH5ODwfFaUFhbt6O50W4dTB6Xo6DVXlVAG4P28\n", "dYWJnBU48zY=\n") + (length - 1));
            }
        }
        byte[] bArr4 = new byte[iM1243];
        System.arraycopy(bArr2, 0, bArr4, 0, iM1243);
        return bArr4;
    }
}
