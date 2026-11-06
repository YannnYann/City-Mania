package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.flac.PictureFrame;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class Z5 {
    public static byte[] A0C;
    public static String[] A0D = {"l3F1jvmu1E6Abjs95vKWdPOgrIVyCHZF", "Aw0MydQON9WCkwJIXXnZk9FehzIatNTv", "XgcSYQFAy", "XL", "RY9tE", "li6blo2Iheg0MJgrpi05cufhQ6lbjqj0", "YVDaNSs8qtMqpo5g8uTPZ6UBLpvwqNrn", "cRv9K0xuAPjHO7NpNcUHWucgK9HWaRfF"};
    public final int A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final int A07;
    public final int A08;
    public final long A09;
    public final Z4 A0A;
    public final Metadata A0B;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = bArrCopyOfRange[i4];
            String[] strArr = A0D;
            if (strArr[1].charAt(20) == strArr[6].charAt(20)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0D;
            strArr2[1] = "uONHpfKwzoEVKSqDMMiXU8s3KSQETgs7";
            strArr2[6] = "gMGp9aisw42FPtkv1Vd8htjOfa6YfSyk";
            bArrCopyOfRange[i4] = (byte) ((b ^ i3) ^ 85);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A0C = new byte[]{107, 127, 110, 99, 101, 37, 108, 102, 107, 105};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final Z5 A0A(List<PictureFrame> list) {
        return new Z5(this.A05, this.A03, this.A06, this.A04, this.A07, this.A02, this.A00, this.A09, this.A0A, A02(new Metadata(list)));
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final Z5 A0B(List<String> list) {
        return new Z5(this.A05, this.A03, this.A06, this.A04, this.A07, this.A02, this.A00, this.A09, this.A0A, A02(ZW.A02(list)));
    }

    static {
        A04();
    }

    public Z5(int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, Z4 z4, Metadata metadata) {
        this.A05 = i;
        this.A03 = i2;
        this.A06 = i3;
        this.A04 = i4;
        this.A07 = i5;
        this.A08 = A01(i5);
        this.A02 = i6;
        this.A00 = i7;
        this.A01 = A00(i7);
        this.A09 = j;
        this.A0A = z4;
        this.A0B = metadata;
    }

    public Z5(byte[] bArr, int i) {
        C1768Mj c1768Mj = new C1768Mj(bArr);
        c1768Mj.A08(i * 8);
        this.A05 = c1768Mj.A04(16);
        this.A03 = c1768Mj.A04(16);
        this.A06 = c1768Mj.A04(24);
        this.A04 = c1768Mj.A04(24);
        this.A07 = c1768Mj.A04(20);
        this.A08 = A01(this.A07);
        this.A02 = c1768Mj.A04(3) + 1;
        this.A00 = c1768Mj.A04(5) + 1;
        this.A01 = A00(this.A00);
        this.A09 = c1768Mj.A05(36);
        this.A0A = null;
        this.A0B = null;
    }

    public static int A00(int i) {
        switch (i) {
            case 8:
                return 1;
            case 12:
                return 2;
            case 16:
                return 4;
            case 20:
                return 5;
            case 24:
                String[] strArr = A0D;
                if (strArr[4].length() == strArr[3].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0D;
                strArr2[5] = "lcMhzVzuxDvQuAiHCiZQrWi81xojeGQ4";
                strArr2[0] = "lfzEs8BRcEtB5Ahq6hd9sjoS4iEOv5vj";
                return 6;
            default:
                return -1;
        }
    }

    public static int A01(int i) {
        switch (i) {
            case 8000:
                return 4;
            case 16000:
                String[] strArr = A0D;
                if (strArr[1].charAt(20) != strArr[6].charAt(20)) {
                    String[] strArr2 = A0D;
                    strArr2[5] = "lSHFm8H8FIgV2vFKz0xxy9hp8Q14wqzN";
                    strArr2[0] = "lWa5SzZxSs0AFKJ9FtOk0x1pkkEzbvHr";
                    return 5;
                }
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                String[] strArr3 = A0D;
                if (strArr3[1].charAt(20) == strArr3[6].charAt(20)) {
                    throw new RuntimeException();
                }
                A0D[7] = "cDo9x4cjHBr8vkdx8pgHLaUNfvWvN6AY";
                return -1;
        }
    }

    private final Metadata A02(Metadata metadata) {
        return this.A0B == null ? metadata : this.A0B.A04(metadata);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long A05() {
        /*
            r6 = this;
            int r0 = r6.A04
            if (r0 <= 0) goto L12
            int r0 = r6.A04
            long r2 = (long) r0
            int r0 = r6.A06
            long r0 = (long) r0
            long r2 = r2 + r0
            r0 = 2
            long r2 = r2 / r0
            r0 = 1
            long r2 = r2 + r0
        L11:
            return r2
        L12:
            int r1 = r6.A05
            int r0 = r6.A03
            if (r1 != r0) goto L33
            int r3 = r6.A05
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.Z5.A0D
            r0 = 5
            r1 = r2[r0]
            r0 = 0
            r2 = r2[r0]
            r0 = 0
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L36
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L33:
            r4 = 4096(0x1000, double:2.0237E-320)
            goto L47
        L36:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.Z5.A0D
            java.lang.String r1 = "lOKJ5eUqfL8WF3zIaknb90FklYPJY6L4"
            r0 = 5
            r2[r0] = r1
            java.lang.String r1 = "lq5Jr09jayShp2rldgx5drpyiT5BTS93"
            r0 = 0
            r2[r0] = r1
            if (r3 <= 0) goto L33
            int r0 = r6.A05
            long r4 = (long) r0
        L47:
            int r0 = r6.A02
            long r2 = (long) r0
            long r2 = r2 * r4
            int r0 = r6.A00
            long r0 = (long) r0
            long r2 = r2 * r0
            r0 = 8
            long r2 = r2 / r0
            r0 = 64
            long r2 = r2 + r0
            goto L11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.Z5.A05():long");
    }

    public final long A06() {
        if (this.A09 == 0) {
            return -9223372036854775807L;
        }
        return (this.A09 * 1000000) / ((long) this.A07);
    }

    public final long A07(long j) {
        long sampleNumber = N1.A0T((((long) this.A07) * j) / 1000000, 0L, this.A09 - 1);
        return sampleNumber;
    }

    public final VC A08(byte[] bArr, Metadata metadata) {
        bArr[4] = -128;
        int i = this.A04 > 0 ? this.A04 : -1;
        Metadata metadataA02 = A02(metadata);
        C1714Ke c1714KeA0h = new C1714Ke().A11(A03(0, 10, 95)).A0h(i);
        int maxInputSize = this.A02;
        C1714Ke c1714KeA0b = c1714KeA0h.A0b(maxInputSize);
        int maxInputSize2 = this.A07;
        return c1714KeA0b.A0m(maxInputSize2).A12(Collections.singletonList(bArr)).A0v(metadataA02).A14();
    }

    public final Z5 A09(Z4 z4) {
        return new Z5(this.A05, this.A03, this.A06, this.A04, this.A07, this.A02, this.A00, this.A09, z4, this.A0B);
    }
}
