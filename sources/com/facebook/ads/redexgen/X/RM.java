package com.facebook.ads.redexgen.X;

import com.vungle.ads.internal.protos.Sdk;
import java.nio.ShortBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class RM {
    public static String[] A0M = {"AsOQHQyPwaOkGB0tHV3DxhddAi8JF3fa", "wn1RdRCWX0uZAFqoX4WMx1dmxjtrW8UK", "UhlBbcyqt8s2tw9sZFeDx3", "CtSzZ5BSuSB4t8c0maUBfXqe0fi1fVnW", "QiMQju9A8GOt9Rvph2vF5Qjs7K4rDFDM", "q8Ff7XK0VCuOlmafXMBGs1qyJ0FPUycz", "w1T3jQ1hC68tYJwirQ3qGfFMsKaa8LMd", "3dmI4Q1C3axFDdKpJJPSnIqtcddzXWU2"};
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public int A09;
    public short[] A0A;
    public short[] A0B;
    public short[] A0C;
    public final float A0D;
    public final float A0E;
    public final float A0F;
    public final int A0G;
    public final int A0H;
    public final int A0I;
    public final int A0J;
    public final int A0K;
    public final short[] A0L;

    public RM(int i, int i2, float f, float f2, int i3) {
        this.A0H = i;
        this.A0G = i2;
        this.A0F = f;
        this.A0D = f2;
        this.A0E = i / i3;
        this.A0K = i / 400;
        this.A0I = i / 65;
        this.A0J = this.A0I * 2;
        this.A0L = new short[this.A0J];
        this.A0A = new short[this.A0J * i2];
        this.A0B = new short[this.A0J * i2];
        this.A0C = new short[this.A0J * i2];
    }

    private int A00(int i) {
        int iMin = Math.min(this.A0J, this.A09);
        A0D(this.A0A, i, iMin);
        int frameCount = this.A09;
        this.A09 = frameCount - iMin;
        return iMin;
    }

    private int A01(short[] sArr, int i) {
        int skip;
        int retPeriod;
        int maxP = this.A0H > 4000 ? this.A0H / Sdk.SDKError.Reason.VUNGLE_OIT_CREATION_ERROR_VALUE : 1;
        if (this.A0G == 1 && maxP == 1) {
            skip = A04(sArr, i, this.A0K, this.A0I);
        } else {
            A0E(sArr, i, maxP);
            short[] sArr2 = this.A0L;
            int i2 = this.A0K / maxP;
            int i3 = this.A0I / maxP;
            if (A0M[2].length() != 22) {
                throw new RuntimeException();
            }
            String[] strArr = A0M;
            strArr[5] = "INXLClnPP4M6OK2Itq8yZMkYfP8R6IzN";
            strArr[6] = "o5zDPpHh7SEUdXaB8CYCtTJxAd9UWR3b";
            skip = A04(sArr2, 0, i2, i3);
            if (maxP != 1) {
                int skip2 = skip * maxP;
                int i4 = skip2 - (maxP * 4);
                int maxP2 = (maxP * 4) + skip2;
                if (i4 < this.A0K) {
                    i4 = this.A0K;
                }
                if (maxP2 > this.A0I) {
                    maxP2 = this.A0I;
                }
                if (this.A0G == 1) {
                    skip = A04(sArr, i, i4, maxP2);
                } else {
                    A0E(sArr, i, 1);
                    short[] sArr3 = this.A0L;
                    String[] strArr2 = A0M;
                    if (strArr2[5].charAt(13) != strArr2[6].charAt(13)) {
                        String[] strArr3 = A0M;
                        strArr3[1] = "2PPfl4gsW6s2boZuku44zkWlkI9rtCDb";
                        strArr3[4] = "S3up9flYQJeBpTuEywLxcThkdn4ruowA";
                        skip = A04(sArr3, 0, i4, maxP2);
                    } else {
                        skip = A04(sArr3, 0, i4, maxP2);
                    }
                }
            }
        }
        int i5 = this.A02;
        String[] strArr4 = A0M;
        String str = strArr4[5];
        String str2 = strArr4[6];
        int iCharAt = str.charAt(13);
        int period = str2.charAt(13);
        if (iCharAt == period) {
            throw new RuntimeException();
        }
        String[] strArr5 = A0M;
        strArr5[1] = "pRdF0XFoVgt2LLbrGWyHpjCDNAIrrS7K";
        strArr5[4] = "bSZbGRGyCJLrEEPsQKDVeFxYy82r1Kvw";
        int period2 = this.A01;
        if (A0F(i5, period2)) {
            retPeriod = this.A08;
        } else {
            retPeriod = skip;
        }
        int period3 = this.A02;
        this.A07 = period3;
        this.A08 = skip;
        return retPeriod;
    }

    private int A02(short[] sArr, int i, float f, int i2) {
        int i3;
        if (f < 0.5f) {
            i3 = (int) ((i2 * f) / (1.0f - f));
        } else {
            i3 = i2;
            int newFrameCount = (int) ((i2 * ((2.0f * f) - 1.0f)) / (1.0f - f));
            this.A09 = newFrameCount;
        }
        int newFrameCount2 = i2 + i3;
        this.A0B = A0G(this.A0B, this.A05, newFrameCount2);
        int i4 = this.A0G * i;
        short[] sArr2 = this.A0B;
        int i5 = this.A05;
        int newFrameCount3 = this.A0G;
        int i6 = i5 * newFrameCount3;
        int newFrameCount4 = this.A0G;
        System.arraycopy(sArr, i4, sArr2, i6, newFrameCount4 * i2);
        A0C(i3, this.A0G, this.A0B, this.A05 + i2, sArr, i + i2, sArr, i);
        int newFrameCount5 = this.A05;
        this.A05 = newFrameCount5 + i2 + i3;
        return i3;
    }

    private int A03(short[] sArr, int i, float f, int i2) {
        int newFrameCount;
        if (f >= 2.0f) {
            newFrameCount = (int) (i2 / (f - 1.0f));
        } else {
            this.A09 = (int) ((i2 * (2.0f - f)) / (f - 1.0f));
            newFrameCount = i2;
        }
        short[] sArr2 = this.A0B;
        int newFrameCount2 = this.A05;
        this.A0B = A0G(sArr2, newFrameCount2, newFrameCount);
        A0C(newFrameCount, this.A0G, this.A0B, this.A05, sArr, i, sArr, i + i2);
        int newFrameCount3 = this.A05;
        this.A05 = newFrameCount3 + newFrameCount;
        return newFrameCount;
    }

    private int A04(short[] sArr, int i, int i2, int i3) {
        int i4 = 0;
        int i5 = 255;
        int period = 1;
        int maxDiff = 0;
        int bestPeriod = this.A0G;
        int i6 = i * bestPeriod;
        while (i2 <= i3) {
            int i7 = 0;
            for (int minDiff = 0; minDiff < i2; minDiff++) {
                int bestPeriod2 = i6 + minDiff;
                short s = sArr[bestPeriod2];
                int bestPeriod3 = i6 + i2;
                int worstPeriod = s - sArr[bestPeriod3 + minDiff];
                int bestPeriod4 = Math.abs(worstPeriod);
                i7 += bestPeriod4;
            }
            int diff = i7 * i4;
            String[] strArr = A0M;
            String str = strArr[1];
            String str2 = strArr[4];
            int worstPeriod2 = str.charAt(27);
            int bestPeriod5 = str2.charAt(27);
            if (worstPeriod2 != bestPeriod5) {
                throw new RuntimeException();
            }
            A0M[3] = "4JfhlNduFCIpqdCXeyGleX4OcuqVOx5J";
            int bestPeriod6 = period * i2;
            if (diff < bestPeriod6) {
                period = i7;
                i4 = i2;
            }
            int worstPeriod3 = i7 * i5;
            int bestPeriod7 = maxDiff * i2;
            if (worstPeriod3 > bestPeriod7) {
                maxDiff = i7;
                i5 = i2;
            }
            i2++;
        }
        this.A02 = period / i4;
        this.A01 = maxDiff / i5;
        return i4;
    }

    private short A05(short[] sArr, int i, int i2, int i3) {
        short s = sArr[i];
        short s2 = sArr[this.A0G + i];
        int leftPosition = this.A03 * i2;
        int i4 = this.A04 * i3;
        int position = (this.A04 + 1) * i3;
        int i5 = position - leftPosition;
        int position2 = position - i4;
        short left = (short) (((i5 * s) + ((position2 - i5) * s2)) / position2);
        return left;
    }

    private void A06() {
        int i = this.A05;
        float f = this.A0F / this.A0D;
        float f2 = this.A0E * this.A0D;
        if (f > 1.00001d || f < 0.99999d) {
            A07(f);
        } else {
            A0D(this.A0A, 0, this.A00);
            this.A00 = 0;
        }
        if (f2 != 1.0f) {
            A08(f2, i);
        }
    }

    private void A07(float f) {
        int frameCount;
        if (this.A00 < this.A0J) {
            return;
        }
        int i = this.A00;
        int i2 = 0;
        do {
            int frameCount2 = this.A09;
            if (frameCount2 > 0) {
                int frameCount3 = A00(i2);
                i2 += frameCount3;
            } else {
                int iA01 = A01(this.A0A, i2);
                if (f > 1.0d) {
                    int frameCount4 = A03(this.A0A, i2, f, iA01);
                    i2 += frameCount4 + iA01;
                } else {
                    int frameCount5 = A02(this.A0A, i2, f, iA01);
                    i2 += frameCount5;
                }
            }
            frameCount = this.A0J;
        } while (frameCount + i2 <= i);
        A0B(i2);
    }

    /* JADX WARN: Incorrect condition in loop: B:21:0x0051 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A08(float r10, int r11) {
        /*
            r9 = this;
            int r0 = r9.A05
            if (r0 != r11) goto L5
            return
        L5:
            int r0 = r9.A0H
            float r3 = (float) r0
            float r3 = r3 / r10
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.RM.A0M
            r0 = 2
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 22
            if (r1 == r0) goto L1c
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L1c:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.RM.A0M
            java.lang.String r1 = "UqqkNkLs9COBsOho0ObELq"
            r0 = 2
            r2[r0] = r1
            int r5 = (int) r3
            int r4 = r9.A0H
        L26:
            r0 = 16384(0x4000, float:2.2959E-41)
            if (r5 > r0) goto L2c
            if (r4 <= r0) goto L31
        L2c:
            int r5 = r5 / 2
            int r4 = r4 / 2
            goto L26
        L31:
            r9.A09(r11)
            r6 = 0
        L35:
            int r0 = r9.A06
            r2 = 1
            int r0 = r0 - r2
            if (r6 >= r0) goto Lb9
        L3b:
            int r1 = r9.A04
            int r1 = r1 + r2
            int r1 = r1 * r5
            int r0 = r9.A03
            int r0 = r0 * r4
            if (r1 <= r0) goto L75
            short[] r1 = r9.A0B
            int r0 = r9.A05
            short[] r0 = r9.A0G(r1, r0, r2)
            r9.A0B = r0
            r8 = 0
        L4f:
            int r0 = r9.A0G
            if (r8 >= r0) goto L6a
            short[] r7 = r9.A0B
            int r3 = r9.A05
            int r0 = r9.A0G
            int r3 = r3 * r0
            int r3 = r3 + r8
            short[] r1 = r9.A0C
            int r0 = r9.A0G
            int r0 = r0 * r6
            int r0 = r0 + r8
            short r0 = r9.A05(r1, r0, r4, r5)
            r7[r3] = r0
            int r8 = r8 + 1
            goto L4f
        L6a:
            int r0 = r9.A03
            int r0 = r0 + r2
            r9.A03 = r0
            int r0 = r9.A05
            int r0 = r0 + r2
            r9.A05 = r0
            goto L3b
        L75:
            int r0 = r9.A04
            int r0 = r0 + r2
            r9.A04 = r0
            int r0 = r9.A04
            if (r0 != r4) goto La5
            r3 = 0
            r9.A04 = r3
            int r0 = r9.A03
            if (r0 != r5) goto Lb7
        L85:
            com.facebook.ads.redexgen.X.AbstractC1747Ln.A08(r2)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.RM.A0M
            r0 = 1
            r1 = r2[r0]
            r0 = 4
            r2 = r2[r0]
            r0 = 27
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto La8
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.RM.A0M
            java.lang.String r1 = "gB7A014mzjBv1poy77XOkeUK2nyMBQu5"
            r0 = 3
            r2[r0] = r1
            r9.A03 = r3
        La5:
            int r6 = r6 + 1
            goto L35
        La8:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.RM.A0M
            java.lang.String r1 = "JeVgu8rjAd0OF8OVXMf3KJykNXdfJjPG"
            r0 = 5
            r2[r0] = r1
            java.lang.String r1 = "thT5nYm22sNq73C1o8CLYl4UHSvFZBs6"
            r0 = 6
            r2[r0] = r1
            r9.A03 = r3
            goto La5
        Lb7:
            r2 = 0
            goto L85
        Lb9:
            int r0 = r9.A06
            int r0 = r0 - r2
            r9.A0A(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.RM.A08(float, int):void");
    }

    private void A09(int i) {
        int i2 = this.A05 - i;
        short[] sArr = this.A0C;
        int frameCount = this.A06;
        this.A0C = A0G(sArr, frameCount, i2);
        short[] sArr2 = this.A0B;
        int i3 = this.A0G * i;
        short[] sArr3 = this.A0C;
        int i4 = this.A06;
        int frameCount2 = this.A0G;
        int i5 = i4 * frameCount2;
        int frameCount3 = this.A0G;
        System.arraycopy(sArr2, i3, sArr3, i5, frameCount3 * i2);
        this.A05 = i;
        int frameCount4 = this.A06;
        this.A06 = frameCount4 + i2;
    }

    private void A0A(int i) {
        if (i == 0) {
            return;
        }
        System.arraycopy(this.A0C, this.A0G * i, this.A0C, 0, (this.A06 - i) * this.A0G);
        this.A06 -= i;
    }

    private void A0B(int i) {
        int i2 = this.A00 - i;
        System.arraycopy(this.A0A, this.A0G * i, this.A0A, 0, this.A0G * i2);
        this.A00 = i2;
    }

    public static void A0C(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int d = 0; d < i2; d++) {
            int i6 = (i3 * i2) + d;
            int i7 = (i5 * i2) + d;
            int i8 = (i4 * i2) + d;
            for (int u = 0; u < i; u++) {
                short s = sArr2[i8];
                int i9 = i - u;
                String[] strArr = A0M;
                String str = strArr[5];
                String str2 = strArr[6];
                int o = str.charAt(13);
                int i10 = str2.charAt(13);
                if (o == i10) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0M;
                strArr2[1] = "mlyh9fclpAA3xQGQNQNugm7A1eorXIoU";
                strArr2[4] = "UIasnW6PCxNtbKnkiDP3Xk5iIAJr60Sz";
                int t = s * i9;
                int i11 = sArr3[i7] * u;
                sArr[i6] = (short) ((t + i11) / i);
                i6 += i2;
                i8 += i2;
                i7 += i2;
            }
        }
    }

    private void A0D(short[] sArr, int i, int i2) {
        this.A0B = A0G(this.A0B, this.A05, i2);
        System.arraycopy(sArr, this.A0G * i, this.A0B, this.A05 * this.A0G, this.A0G * i2);
        this.A05 += i2;
    }

    private void A0E(short[] sArr, int i, int i2) {
        int i3 = this.A0J / i2;
        int j = this.A0G * i2;
        int frameCount = this.A0G;
        int i4 = i * frameCount;
        for (int value = 0; value < i3; value++) {
            int i5 = 0;
            for (int samplesPerValue = 0; samplesPerValue < j; samplesPerValue++) {
                int frameCount2 = value * j;
                i5 += sArr[frameCount2 + i4 + samplesPerValue];
            }
            this.A0L[value] = (short) (i5 / j);
        }
    }

    private boolean A0F(int i, int i2) {
        if (i == 0 || this.A08 == 0) {
            return false;
        }
        int i3 = i * 3;
        if (A0M[2].length() != 22) {
            throw new RuntimeException();
        }
        String[] strArr = A0M;
        strArr[1] = "3IzBgwzZAspesLCV3jjb7Dosm9irr8sO";
        strArr[4] = "b2WAxAr1tqExmwQ89kWoo3VIQSYrQQMT";
        if (i2 > i3 || i * 2 <= this.A07 * 3) {
            return false;
        }
        return true;
    }

    private short[] A0G(short[] sArr, int i, int i2) {
        int length = sArr.length / this.A0G;
        if (i + i2 <= length) {
            return sArr;
        }
        int i3 = length * 3;
        String[] strArr = A0M;
        String str = strArr[1];
        String str2 = strArr[4];
        int iCharAt = str.charAt(27);
        int currentCapacityFrames = str2.charAt(27);
        if (iCharAt != currentCapacityFrames) {
            throw new RuntimeException();
        }
        A0M[2] = "8QrvwtFNh8hPD4XoRidnoD";
        int newCapacityFrames = (i3 / 2) + i2;
        int currentCapacityFrames2 = this.A0G;
        return Arrays.copyOf(sArr, currentCapacityFrames2 * newCapacityFrames);
    }

    public final int A0H() {
        return this.A05 * this.A0G * 2;
    }

    public final int A0I() {
        return this.A00 * this.A0G * 2;
    }

    public final void A0J() {
        this.A00 = 0;
        this.A05 = 0;
        this.A06 = 0;
        this.A04 = 0;
        this.A03 = 0;
        this.A09 = 0;
        this.A08 = 0;
        this.A07 = 0;
        this.A02 = 0;
        this.A01 = 0;
    }

    public final void A0K() {
        int i = this.A00;
        float f = this.A0F / this.A0D;
        float r = this.A0E * this.A0D;
        int i2 = this.A05;
        float s = i;
        int remainingFrameCount = this.A06;
        int i3 = i2 + ((int) ((((s / f) + remainingFrameCount) / r) + 0.5f));
        short[] sArr = this.A0A;
        int i4 = this.A00;
        int remainingFrameCount2 = this.A0J;
        this.A0A = A0G(sArr, i4, (remainingFrameCount2 * 2) + i);
        int expectedOutputFrames = 0;
        while (true) {
            int remainingFrameCount3 = this.A0J;
            int i5 = remainingFrameCount3 * 2;
            int remainingFrameCount4 = this.A0G;
            if (expectedOutputFrames >= i5 * remainingFrameCount4) {
                break;
            }
            short[] sArr2 = this.A0A;
            int remainingFrameCount5 = this.A0G;
            sArr2[(remainingFrameCount5 * i) + expectedOutputFrames] = 0;
            expectedOutputFrames++;
        }
        int i6 = this.A00;
        int remainingFrameCount6 = this.A0J;
        this.A00 = i6 + (remainingFrameCount6 * 2);
        A06();
        int remainingFrameCount7 = this.A05;
        if (remainingFrameCount7 > i3) {
            this.A05 = i3;
        }
        this.A00 = 0;
        this.A09 = 0;
        this.A06 = 0;
    }

    public final void A0L(ShortBuffer shortBuffer) {
        int iMin = Math.min(shortBuffer.remaining() / this.A0G, this.A05);
        short[] sArr = this.A0B;
        int framesToRead = this.A0G;
        shortBuffer.put(sArr, 0, framesToRead * iMin);
        int framesToRead2 = this.A05;
        this.A05 = framesToRead2 - iMin;
        short[] sArr2 = this.A0B;
        int i = this.A0G * iMin;
        short[] sArr3 = this.A0B;
        int i2 = this.A05;
        int framesToRead3 = this.A0G;
        System.arraycopy(sArr2, i, sArr3, 0, i2 * framesToRead3);
    }

    public final void A0M(ShortBuffer shortBuffer) {
        int iRemaining = shortBuffer.remaining() / this.A0G;
        int framesToWrite = this.A0G;
        int i = framesToWrite * iRemaining * 2;
        short[] sArr = this.A0A;
        int framesToWrite2 = this.A00;
        this.A0A = A0G(sArr, framesToWrite2, iRemaining);
        short[] sArr2 = this.A0A;
        int bytesToWrite = this.A00;
        int framesToWrite3 = this.A0G;
        int bytesToWrite2 = bytesToWrite * framesToWrite3;
        int framesToWrite4 = i / 2;
        shortBuffer.get(sArr2, bytesToWrite2, framesToWrite4);
        int framesToWrite5 = this.A00;
        this.A00 = framesToWrite5 + iRemaining;
        A06();
    }
}
