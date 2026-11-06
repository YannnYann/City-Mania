package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.ironsource.mediationsdk.metadata.a;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Yg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2054Yg {
    public static byte[] A00;
    public static String[] A01 = {"imRiVJMXc4SZWZ3QF4KZhVfgmTG74Bx6", "TKTPIiZZWa9SThJfc", "A7KzpJx3Wk4oG2yt7ajGdVAH98sppej4", "IOrzIYYjcAtAJh", "0UHCQx5ZqnE0yq", "IZiHjia3uwt4n4b3PzA3ciBQItqIkJHo", "fER0trA7btID3ir", "lpP13lDDXmkolxPGNEllOpMJaT"};
    public static final int[] A02;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static C2053Yf A04(C1768Mj c1768Mj) {
        int iA04 = c1768Mj.A04(16);
        int iA042 = c1768Mj.A04(16);
        int i = 0 + 2 + 2;
        if (iA042 == 65535) {
            iA042 = c1768Mj.A04(24);
            i += 3;
        }
        int i2 = iA042 + i;
        String[] strArr = A01;
        if (strArr[4].length() == strArr[3].length()) {
            A01[0] = "Gg6kPH8l";
            if (iA04 == 44097) {
                i2 += 2;
            }
            int iA043 = c1768Mj.A04(2);
            if (iA043 == 3) {
                iA043 += A00(c1768Mj, 2);
            }
            int iA044 = c1768Mj.A04(10);
            if (c1768Mj.A0H()) {
                int iA045 = c1768Mj.A04(3);
                String[] strArr2 = A01;
                if (strArr2[2].charAt(7) == strArr2[5].charAt(7)) {
                    String[] strArr3 = A01;
                    strArr3[4] = "ayuLqZobphgEmr";
                    strArr3[3] = "NfuHHN0k5dTWhX";
                    if (iA045 > 0) {
                        c1768Mj.A09(2);
                    }
                }
            }
            int i3 = c1768Mj.A0H() ? 48000 : 44100;
            int iA046 = c1768Mj.A04(4);
            int i4 = 0;
            if (i3 != 44100 || iA046 != 13) {
                if (i3 == 48000 && iA046 < A02.length) {
                    i4 = A02[iA046];
                    switch (iA044 % 5) {
                        case 1:
                        case 3:
                            if (iA046 == 3 || iA046 == 8) {
                                i4++;
                            }
                            break;
                        case 2:
                            if (iA046 == 8 || iA046 == 11) {
                                i4++;
                                if (A01[6].length() == 11) {
                                    throw new RuntimeException();
                                }
                                A01[7] = "8s5sCt1xBK7Wlyo4Q9R6ORZ54V";
                            }
                            break;
                        case 4:
                            if (iA046 == 3 || iA046 == 8 || iA046 == 11) {
                                i4++;
                            }
                            break;
                    }
                }
            } else {
                i4 = A02[iA046];
            }
            return new C2053Yf(iA043, 2, i3, i2, i4);
        }
        throw new RuntimeException();
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 24);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A00 = new byte[]{-95, -75, -92, -87, -81, 111, -95, -93, 116};
    }

    static {
        A06();
        A02 = new int[]{2002, 2000, 1920, 1601, 1600, 1001, 1000, 960, 800, 800, 480, 400, 400, a.o};
    }

    public static int A00(C1768Mj c1768Mj, int i) {
        int i2 = 0;
        while (true) {
            int value = c1768Mj.A04(i);
            int i3 = i2 + value;
            if (!c1768Mj.A0H()) {
                return i3;
            }
            i2 = (i3 + 1) << i;
        }
    }

    public static int A01(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int iPosition = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(iPosition);
        return A04(new C1768Mj(bArr)).A03;
    }

    public static int A02(byte[] bArr, int i) {
        if (bArr.length < 7) {
            return -1;
        }
        int headerSize = bArr[2];
        int i2 = (headerSize & 255) << 8;
        int headerSize2 = bArr[3];
        int i3 = i2 | (headerSize2 & 255);
        int frameSize = 2 + 2;
        if (i3 == 65535) {
            int headerSize3 = bArr[4];
            int i4 = (headerSize3 & 255) << 16;
            int headerSize4 = bArr[5];
            int i5 = i4 | ((headerSize4 & 255) << 8);
            int headerSize5 = bArr[6];
            i3 = i5 | (headerSize5 & 255);
            frameSize += 3;
        }
        if (i == 44097) {
            frameSize += 2;
        }
        int i6 = i3 + frameSize;
        if (A01[1].length() == 3) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[4] = "iVzOvX0cBgopOX";
        strArr[3] = "PteoiuDwHidTEn";
        return i6;
    }

    public static VC A03(C1769Mk c1769Mk, String str, String str2, DrmInitData drmInitData) {
        c1769Mk.A0g(1);
        return new C1714Ke().A0y(str).A11(A05(0, 9, 40)).A0b(2).A0m(((c1769Mk.A0I() & 32) >> 5) == 1 ? 48000 : 44100).A0u(drmInitData).A10(str2).A14();
    }

    public static void A07(int i, C1769Mk c1769Mk) {
        c1769Mk.A0d(7);
        byte[] bArrA0l = c1769Mk.A0l();
        bArrA0l[0] = -84;
        bArrA0l[1] = 64;
        bArrA0l[2] = -1;
        bArrA0l[3] = -1;
        bArrA0l[4] = (byte) ((i >> 16) & 255);
        bArrA0l[5] = (byte) ((i >> 8) & 255);
        bArrA0l[6] = (byte) (i & 255);
    }
}
