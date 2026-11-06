package com.facebook.ads.redexgen.X;

import android.media.MediaFormat;
import com.facebook.ads.androidx.media3.common.ColorInfo;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class MX {
    public static byte[] A00;
    public static String[] A01 = {com.ironsource.Nc.e, "i65AyHoXhr03CZTkwFIsJPOqjFKh7SdZ", "gAbJvAXG7VAvpxzxcYKdDebdKuiKWAVi", "iTegN4CLcHpcAElPiGNAFOSrQgadfB", "gojcFh5YQgZVdw3RfQsPk76OA0q5Wgol", "5975FOL9BJuGMsJl92VFO3rFk8IB4T1W", "B01kqTAHFG", "d3UmOFRYw"};

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A01;
            if (strArr[7].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[5] = "gX60bN5F4sCW8TusqdUF4ztUEmSZSFK6";
            strArr2[2] = "vmo615Sie4vfxGGKNuV6tWqzBviQlWUT";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 47);
            i4++;
        }
    }

    public static void A01() {
        A00 = new byte[]{70, 74, 73, 74, 87, 8, 87, 68, 75, 66, 64, 102, 106, 105, 106, 119, 40, 118, 113, 100, 107, 97, 100, 119, 97, 78, 66, 65, 66, 95, 0, 89, 95, 76, 67, 94, 75, 72, 95, 49, 33, 54, 127, 126, 114, 100, 59, 101, 98, 119, 98, 127, 117, 59, 127, 120, 112, 121};
    }

    static {
        A01();
    }

    public static void A02(MediaFormat mediaFormat, ColorInfo colorInfo) {
        if (colorInfo != null) {
            String strA00 = A00(25, 14, 2);
            int i = colorInfo.A03;
            String[] strArr = A01;
            if (strArr[7].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            A01[1] = "xeL0lPESkp4f5J5FbIAShl1PzrWbveLZ";
            A04(mediaFormat, strA00, i);
            A04(mediaFormat, A00(11, 14, 42), colorInfo.A02);
            A04(mediaFormat, A00(0, 11, 10), colorInfo.A01);
            A05(mediaFormat, A00(43, 15, 57), colorInfo.A04);
        }
    }

    public static void A03(MediaFormat mediaFormat, String str, float f) {
        if (f != -1.0f) {
            mediaFormat.setFloat(str, f);
        }
    }

    public static void A04(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    public static void A05(MediaFormat mediaFormat, String str, byte[] bArr) {
        if (bArr != null) {
            mediaFormat.setByteBuffer(str, ByteBuffer.wrap(bArr));
        }
    }

    /* JADX WARN: Incorrect condition in loop: B:4:0x0005 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A06(android.media.MediaFormat r5, java.util.List<byte[]> r6) {
        /*
            r4 = 0
        L1:
            int r0 = r6.size()
            if (r4 >= r0) goto L31
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r2 = 39
            r1 = 4
            r0 = 125(0x7d, float:1.75E-43)
            java.lang.String r0 = A00(r2, r1, r0)
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.StringBuilder r0 = r0.append(r4)
            java.lang.String r1 = r0.toString()
            java.lang.Object r0 = r6.get(r4)
            byte[] r0 = (byte[]) r0
            java.nio.ByteBuffer r0 = java.nio.ByteBuffer.wrap(r0)
            r5.setByteBuffer(r1, r0)
            int r4 = r4 + 1
            goto L1
        L31:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.MX.A06(android.media.MediaFormat, java.util.List):void");
    }
}
