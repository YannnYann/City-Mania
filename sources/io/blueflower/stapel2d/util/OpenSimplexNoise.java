package io.blueflower.stapel2d.util;

import com.unity3d.services.UnityAdsConstants;

/* JADX INFO: loaded from: classes5.dex */
public class OpenSimplexNoise {
    public static byte[] gradients2D = {5, 2, 2, 5, -5, 2, -2, 5, 5, -2, 2, -5, -5, -2, -2, -5};
    public static byte[] gradients3D = {-11, 4, 4, -4, 11, 4, -4, 4, 11, 11, 4, 4, 4, 11, 4, 4, 4, 11, -11, -4, 4, -4, -11, 4, -4, -4, 11, 11, -4, 4, 4, -11, 4, 4, -4, 11, -11, 4, -4, -4, 11, -4, -4, 4, -11, 11, 4, -4, 4, 11, -4, 4, 4, -11, -11, -4, -4, -4, -11, -4, -4, -4, -11, 11, -4, -4, 4, -11, -4, 4, -4, -11};
    public static byte[] gradients4D = {3, 1, 1, 1, 1, 3, 1, 1, 1, 1, 3, 1, 1, 1, 1, 3, -3, 1, 1, 1, -1, 3, 1, 1, -1, 1, 3, 1, -1, 1, 1, 3, 3, -1, 1, 1, 1, -3, 1, 1, 1, -1, 3, 1, 1, -1, 1, 3, -3, -1, 1, 1, -1, -3, 1, 1, -1, -1, 3, 1, -1, -1, 1, 3, 3, 1, -1, 1, 1, 3, -1, 1, 1, 1, -3, 1, 1, 1, -1, 3, -3, 1, -1, 1, -1, 3, -1, 1, -1, 1, -3, 1, -1, 1, -1, 3, 3, -1, -1, 1, 1, -3, -1, 1, 1, -1, -3, 1, 1, -1, -1, 3, -3, -1, -1, 1, -1, -3, -1, 1, -1, -1, -3, 1, -1, -1, -1, 3, 3, 1, 1, -1, 1, 3, 1, -1, 1, 1, 3, -1, 1, 1, 1, -3, -3, 1, 1, -1, -1, 3, 1, -1, -1, 1, 3, -1, -1, 1, 1, -3, 3, -1, 1, -1, 1, -3, 1, -1, 1, -1, 3, -1, 1, -1, 1, -3, -3, -1, 1, -1, -1, -3, 1, -1, -1, -1, 3, -1, -1, -1, 1, -3, 3, 1, -1, -1, 1, 3, -1, -1, 1, 1, -3, -1, 1, 1, -1, -3, -3, 1, -1, -1, -1, 3, -1, -1, -1, 1, -3, -1, -1, 1, -1, -3, 3, -1, -1, -1, 1, -3, -1, -1, 1, -1, -3, -1, 1, -1, -1, -3, -3, -1, -1, -1, -1, -3, -1, -1, -1, -1, -3, -1, -1, -1, -1, -3};
    public short[] perm = new short[256];
    public short[] permGradIndex3D = new short[256];

    public static int fastFloor(float f) {
        int i = (int) f;
        return f < ((float) i) ? i - 1 : i;
    }

    public OpenSimplexNoise(long j) {
        short[] sArr = new short[256];
        for (short s = 0; s < 256; s = (short) (s + 1)) {
            sArr[s] = s;
        }
        long j2 = (((((j * 6364136223846793005L) + 1442695040888963407L) * 6364136223846793005L) + 1442695040888963407L) * 6364136223846793005L) + 1442695040888963407L;
        int i = 255;
        while (i >= 0) {
            long j3 = j2 * 6364136223846793005L;
            long j4 = j3 + 1442695040888963407L;
            int i2 = i + 1;
            int i3 = (int) ((j3 + 1442695040888963438L) % ((long) i2));
            if (i3 < 0) {
                i3 += i2;
            }
            short[] sArr2 = this.perm;
            short s2 = sArr[i3];
            sArr2[i] = s2;
            this.permGradIndex3D[i] = (short) ((s2 % (gradients3D.length / 3)) * 3);
            sArr[i3] = sArr[i];
            i--;
            j2 = j4;
        }
    }

    public float eval(float f, float f2) {
        float f3;
        float fExtrapolate;
        float f4;
        int i;
        int i2;
        float f5 = (f + f2) * (-0.21132487f);
        float f6 = f + f5;
        float f7 = f2 + f5;
        int iFastFloor = fastFloor(f6);
        int iFastFloor2 = fastFloor(f7);
        float f8 = (iFastFloor + iFastFloor2) * 0.36602542f;
        float f9 = iFastFloor;
        float f10 = f9 + f8;
        float f11 = iFastFloor2;
        float f12 = f6 - f9;
        float f13 = f7 - f11;
        float f14 = f12 + f13;
        float f15 = f - f10;
        float f16 = f2 - (f8 + f11);
        float f17 = f15 - 1.0f;
        float f18 = f17 - 0.36602542f;
        float f19 = (f16 - UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) - 0.36602542f;
        float f20 = (2.0f - (f18 * f18)) - (f19 * f19);
        if (f20 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            float f21 = f20 * f20;
            f3 = 0.36602542f;
            fExtrapolate = (f21 * f21 * extrapolate(iFastFloor + 1, iFastFloor2, f18, f19)) + UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        } else {
            f3 = 0.36602542f;
            fExtrapolate = 0.0f;
        }
        float f22 = (f15 - UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) - f3;
        float f23 = f16 - 1.0f;
        float f24 = f23 - f3;
        float f25 = (2.0f - (f22 * f22)) - (f24 * f24);
        if (f25 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            float f26 = f25 * f25;
            f4 = 1.0f;
            fExtrapolate += f26 * f26 * extrapolate(iFastFloor, iFastFloor2 + 1, f22, f24);
        } else {
            f4 = 1.0f;
        }
        if (f14 <= f4) {
            float f27 = f4 - f14;
            if (f27 <= f12 && f27 <= f13) {
                i2 = iFastFloor + 1;
                i = iFastFloor2 + 1;
                f17 -= 0.73205084f;
                f23 -= 0.73205084f;
            } else if (f12 > f13) {
                i2 = iFastFloor + 1;
                i = iFastFloor2 - 1;
                f23 = f16 + f4;
            } else {
                i2 = iFastFloor - 1;
                i = iFastFloor2 + 1;
                f17 = f15 + f4;
            }
        } else {
            float f28 = 2.0f - f14;
            if (f28 >= f12 && f28 >= f13) {
                i2 = iFastFloor;
            } else if (f12 > f13) {
                i2 = iFastFloor + 2;
                f15 = (f15 - 2.0f) - 0.73205084f;
                f16 = (f16 + UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) - 0.73205084f;
            } else {
                f15 = (f15 + UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) - 0.73205084f;
                f16 = (f16 - 2.0f) - 0.73205084f;
                i = iFastFloor2 + 2;
                i2 = iFastFloor;
                iFastFloor++;
                iFastFloor2++;
                float f29 = f17 - 0.73205084f;
                float f30 = f23 - 0.73205084f;
                f23 = f16;
                f16 = f30;
                f17 = f15;
                f15 = f29;
            }
            i = iFastFloor2;
            iFastFloor++;
            iFastFloor2++;
            float f292 = f17 - 0.73205084f;
            float f302 = f23 - 0.73205084f;
            f23 = f16;
            f16 = f302;
            f17 = f15;
            f15 = f292;
        }
        float f31 = (2.0f - (f15 * f15)) - (f16 * f16);
        if (f31 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            float f32 = f31 * f31;
            fExtrapolate += f32 * f32 * extrapolate(iFastFloor, iFastFloor2, f15, f16);
        }
        float f33 = (2.0f - (f17 * f17)) - (f23 * f23);
        if (f33 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
            float f34 = f33 * f33;
            fExtrapolate += f34 * f34 * extrapolate(i2, i, f17, f23);
        }
        return fExtrapolate / 47.0f;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x036e  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x051e  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0536  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x069f  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x06b9  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0299  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public float eval(float r40, float r41, float r42) {
        /*
            Method dump skipped, instruction units count: 1751
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.blueflower.stapel2d.util.OpenSimplexNoise.eval(float, float, float):float");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0355  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x04c4  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x04cd  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x04da  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x04e3  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x04fe  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0509  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x053f  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x054f  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x055c  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x05b2  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x05cf  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x05e9  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0602  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0611  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x062d  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0640  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x066e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:374:0x0aa6  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x0ac2  */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0ae4  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x0af8  */
    /* JADX WARN: Removed duplicated region for block: B:382:0x0b0c  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x0b20  */
    /* JADX WARN: Removed duplicated region for block: B:386:0x0b32  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x0b48  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x0b67  */
    /* JADX WARN: Removed duplicated region for block: B:391:0x0b81  */
    /* JADX WARN: Removed duplicated region for block: B:394:0x0b96  */
    /* JADX WARN: Removed duplicated region for block: B:395:0x0bb4  */
    /* JADX WARN: Removed duplicated region for block: B:398:0x0bc8  */
    /* JADX WARN: Removed duplicated region for block: B:399:0x0be0  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x0bf4  */
    /* JADX WARN: Removed duplicated region for block: B:405:0x0c14  */
    /* JADX WARN: Removed duplicated region for block: B:406:0x0c2e  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x0c3c  */
    /* JADX WARN: Removed duplicated region for block: B:504:0x0e08  */
    /* JADX WARN: Removed duplicated region for block: B:505:0x0e0d  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0308  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x031e  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0333  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public float eval(float r59, float r60, float r61, float r62) {
        /*
            Method dump skipped, instruction units count: 4896
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.blueflower.stapel2d.util.OpenSimplexNoise.eval(float, float, float, float):float");
    }

    public final float extrapolate(int i, int i2, float f, float f2) {
        short[] sArr = this.perm;
        int i3 = sArr[(sArr[i & 255] + i2) & 255] & 14;
        byte[] bArr = gradients2D;
        return (bArr[i3] * f) + (bArr[i3 + 1] * f2);
    }

    public final float extrapolate(int i, int i2, int i3, float f, float f2, float f3) {
        short[] sArr = this.permGradIndex3D;
        short[] sArr2 = this.perm;
        short s = sArr[(sArr2[(sArr2[i & 255] + i2) & 255] + i3) & 255];
        byte[] bArr = gradients3D;
        return (bArr[s] * f) + (bArr[s + 1] * f2) + (bArr[s + 2] * f3);
    }

    public final float extrapolate(int i, int i2, int i3, int i4, float f, float f2, float f3, float f4) {
        short[] sArr = this.perm;
        int i5 = sArr[(sArr[(sArr[(sArr[i & 255] + i2) & 255] + i3) & 255] + i4) & 255] & 252;
        byte[] bArr = gradients4D;
        return (bArr[i5] * f) + (bArr[i5 + 1] * f2) + (bArr[i5 + 2] * f3) + (bArr[i5 + 3] * f4);
    }
}
