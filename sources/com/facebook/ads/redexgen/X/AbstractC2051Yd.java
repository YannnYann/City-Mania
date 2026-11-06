package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.google.android.gms.ads.AdSize;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Yd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC2051Yd {
    public static byte[] A00;
    public static String[] A01 = {"gWfa92piv5tZZ0UbViZnkD", "8BWlWUZHwy5zGo", "KOwBd1kGbsETwJOQr", "AjHDM0eUBZHm3mjlWcYFg", "OBBgCtWIEZkDrGCsZywbf0a3to7dIhbP", "7ThbdWcppwWq2UlElfMVB4JMD6", "kRYaGlULPZIUrEfdkh6Tyf7E4GahIHHj", "phVTJZlUn3P7Zs8mUd1"};
    public static final int[] A02;
    public static final int[] A03;
    public static final int[] A04;
    public static final int[] A05;
    public static final int[] A06;
    public static final int[] A07;

    public static String A0A(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ Sdk.SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0B() {
        A00 = new byte[]{41, 61, 44, 33, 39, 103, 41, 43, 123, 22, 2, 19, 30, 24, 88, 18, 22, 20, 68, 3, 23, 6, 11, 13, 77, 7, 3, 1, 81, 79, 8, 13, 1};
    }

    static {
        A0B();
        A03 = new int[]{1, 2, 3, 6};
        A05 = new int[]{48000, 44100, 32000};
        A06 = new int[]{24000, 22050, 16000};
        A04 = new int[]{2, 1, 2, 3, 3, 4, 4, 5};
        A02 = new int[]{32, 40, 48, 56, 64, 80, 96, 112, Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE, AdSize.WIDE_SKYSCRAPER_WIDTH, 192, Sdk.SDKError.Reason.AD_LOAD_FAIL_EMPTY_BID_PAYLOAD_VALUE, 256, 320, 384, 448, EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE, 576, 640};
        A07 = new int[]{69, 87, 104, Sdk.SDKError.Reason.TPAT_ERROR_VALUE, Sdk.SDKError.Reason.TEMPLATE_DOWNLOAD_ERROR_VALUE, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393};
    }

    public static int A00(int i, int i2) {
        int i3 = i2 / 2;
        if (i < 0) {
            return -1;
        }
        int halfFrmsizecod = A05.length;
        if (i >= halfFrmsizecod || i2 < 0) {
            return -1;
        }
        int halfFrmsizecod2 = A07.length;
        if (i3 >= halfFrmsizecod2) {
            return -1;
        }
        int i4 = A05[i];
        if (A01[7].length() != 19) {
            throw new RuntimeException();
        }
        A01[7] = "5L7RX5JKrgrtk9KH87r";
        if (i4 == 44100) {
            int halfFrmsizecod3 = i2 % 2;
            return (A07[i3] + halfFrmsizecod3) * 2;
        }
        int sampleRate = A02[i3];
        if (i4 == 32000) {
            int halfFrmsizecod4 = sampleRate * 6;
            return halfFrmsizecod4;
        }
        int halfFrmsizecod5 = sampleRate * 4;
        return halfFrmsizecod5;
    }

    public static int A01(int i, int i2, int i3) {
        return (i * i2) / (i3 * 32);
    }

    public static int A02(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int startIndex = byteBuffer.limit();
        int i = startIndex - 10;
        for (int i2 = iPosition; i2 <= i; i2++) {
            int startIndex2 = i2 + 4;
            int endIndex = N1.A0F(byteBuffer, startIndex2) & (-2);
            if (endIndex == -126718022) {
                return i2 - iPosition;
            }
        }
        int endIndex2 = A01[7].length();
        if (endIndex2 != 19) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[3] = "eOMYxb0wLSmLQ0G7YxyDe";
        strArr[0] = "TTeIHa3Ep1TtA6CuQAEFem";
        return -1;
    }

    public static int A03(ByteBuffer byteBuffer) {
        boolean isEac3 = ((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10;
        if (isEac3) {
            byte b = byteBuffer.get(byteBuffer.position() + 4);
            if (A01[5].length() != 26) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[3] = "DXpfQrtLciruzIVFlvY53";
            strArr[0] = "RlE8CkfxogD2ABvML1zfIj";
            return A03[((b & 192) >> 6) != 3 ? (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4 : 3] * 256;
        }
        return 1536;
    }

    public static int A04(ByteBuffer byteBuffer, int i) {
        boolean isMlp = (byteBuffer.get((byteBuffer.position() + i) + 7) & 255) == 187;
        return 40 << ((byteBuffer.get((byteBuffer.position() + i) + (isMlp ? 9 : 8)) >> 4) & 7);
    }

    public static int A05(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        boolean isEac3 = ((bArr[5] & 248) >> 3) > 10;
        if (isEac3) {
            int i = (bArr[2] & 7) << 8;
            int frmsiz = bArr[3];
            if (A01[7].length() != 19) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[6] = "BDIPGES5Iy70rckzqUVITbYsi7nZbnMv";
            strArr[4] = "ZUuqCTmivk9PrDw5xwTjy4JM4X7ycwvf";
            return (((frmsiz & 255) | i) + 1) * 2;
        }
        int fscod = (bArr[4] & 192) >> 6;
        return A00(fscod, bArr[4] & 63);
    }

    public static int A06(byte[] bArr) {
        if (bArr[4] != -8 || bArr[5] != 114 || bArr[6] != 111 || (bArr[7] & 254) != 186) {
            return 0;
        }
        int i = bArr[7] & 255;
        String[] strArr = A01;
        if (strArr[3].length() != strArr[0].length()) {
            A01[1] = "5vldxXbgycDySC";
            boolean z = i == 187;
            if (A01[5].length() == 26) {
                A01[5] = "0QS0ZKZc8ux9skKjaYGZGoWgg7";
                byte b = bArr[z ? '\t' : '\b'];
                if (A01[2].length() == 16) {
                    throw new RuntimeException();
                }
                A01[1] = "e9o9TbY2rszMey";
                return 40 << ((b >> 4) & 7);
            }
        }
        throw new RuntimeException();
    }

    public static VC A07(C1769Mk c1769Mk, String str, String str2, DrmInitData drmInitData) {
        C1768Mj c1768Mj = new C1768Mj();
        c1768Mj.A0C(c1769Mk);
        int fscod = c1768Mj.A04(2);
        int constantBitrate = A05[fscod];
        c1768Mj.A09(8);
        int i = A04[c1768Mj.A04(3)];
        if (c1768Mj.A04(1) != 0) {
            i++;
        }
        int fscod2 = c1768Mj.A04(5);
        int halfFrmsizecod = A02[fscod2] * 1000;
        c1768Mj.A06();
        c1769Mk.A0f(c1768Mj.A02());
        return new C1714Ke().A0y(str).A11(A0A(0, 9, 52)).A0b(i).A0m(constantBitrate).A0u(drmInitData).A10(str2).A0a(halfFrmsizecod).A0j(halfFrmsizecod).A14();
    }

    public static VC A08(C1769Mk c1769Mk, String str, String str2, DrmInitData drmInitData) {
        C1768Mj c1768Mj = new C1768Mj();
        c1768Mj.A0C(c1769Mk);
        int fscod = c1768Mj.A04(13) * 1000;
        c1768Mj.A09(3);
        int peakBitrate = c1768Mj.A04(2);
        int sampleRate = A05[peakBitrate];
        c1768Mj.A09(10);
        int channelCount = A04[c1768Mj.A04(3)];
        if (c1768Mj.A04(1) != 0) {
            channelCount++;
        }
        c1768Mj.A09(3);
        int peakBitrate2 = A01[2].length();
        if (peakBitrate2 == 16) {
            throw new RuntimeException();
        }
        A01[2] = "kzS1gbjIKacu2hyxgl59K";
        int iA04 = c1768Mj.A04(4);
        c1768Mj.A09(1);
        if (iA04 > 0) {
            c1768Mj.A0A(6);
            if (c1768Mj.A04(1) != 0) {
                channelCount += 2;
            }
            c1768Mj.A09(1);
        }
        String strA0A = A0A(9, 10, 11);
        int peakBitrate3 = c1768Mj.A01();
        if (peakBitrate3 > 7) {
            c1768Mj.A09(7);
            if (c1768Mj.A04(1) != 0) {
                strA0A = A0A(19, 14, 30);
            }
        }
        c1768Mj.A06();
        c1769Mk.A0f(c1768Mj.A02());
        return new C1714Ke().A0y(str).A11(strA0A).A0b(channelCount).A0m(sampleRate).A0u(drmInitData).A10(str2).A0j(fscod).A14();
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0193  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.facebook.ads.redexgen.X.C2050Yc A09(com.facebook.ads.redexgen.X.C1768Mj r24) {
        /*
            Method dump skipped, instruction units count: 1022
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.AbstractC2051Yd.A09(com.facebook.ads.redexgen.X.Mj):com.facebook.ads.redexgen.X.Yc");
    }
}
