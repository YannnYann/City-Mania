package com.facebook.ads.redexgen.X;

import com.ironsource.InterfaceC3681k1;
import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Nb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1786Nb implements InterfaceC2291d7 {
    public static byte[] A0C;
    public static String[] A0D = {"xgqBqbU1XML8MXuRXE4S7UmkN", "kb50toKDVAzxYsngbeDc9BGJqZef", "PGCQuAERcngW9jWlLyuZZy", "T3TROYLJmY5zk4R", "KehPbga1IBYQXhYvCr7BlOXMomub", "y47SMef1vKWEbtVOrFSLXbM9LHV6ysDN", "9RD3pOa8CandyoHHIXY9O0kMIUxxMIgb", "xRKTiYi6sdeRaVW0V14xq888HcEdA0Ww"};
    public static final int[] A0E;
    public static final int[] A0F;
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public final int A04;
    public final int A05;
    public final VC A06;
    public final C1769Mk A07;
    public final InterfaceC2069Yw A08;
    public final ZP A09;
    public final C2293d9 A0A;
    public final byte[] A0B;

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 101);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A0C = new byte[]{56, 35, 100, 108, 119, 57, 35, 85, 104, 96, 117, 115, 100, 117, 116, 48, 118, 98, 113, 125, 117, 99, 48, 96, 117, 98, 48, 114, 124, 127, 115, 123, 42, 48, 58, 46, 63, 50, 52, 116, 41, 58, 44};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A06(byte[] bArr, int i, int i2, byte[] bArr2) {
        int i3 = this.A0A.A02;
        int i4 = this.A0A.A05;
        int i5 = (i2 * 4) + (i * i3);
        int i6 = (i4 * 4) + i5;
        int i7 = (i3 / i4) - 4;
        int iA07 = ((bArr[i5 + 1] & 255) << 8) | (bArr[i5] & 255);
        int iMin = Math.min(bArr[i5 + 2] & 255, 88);
        int i8 = A0F[iMin];
        int i9 = ((this.A04 * i * i4) + i2) * 2;
        bArr2[i9] = (byte) (iA07 & 255);
        bArr2[i9 + 1] = (byte) (iA07 >> 8);
        for (int i10 = 0; i10 < i7 * 2; i10++) {
            int i11 = bArr[((i10 / 8) * i4 * 4) + i6 + ((i10 / 2) % 4)] & 255;
            int i12 = i10 % 2 == 0 ? i11 & 15 : i11 >> 4;
            int i13 = ((((i12 & 7) * 2) + 1) * i8) >> 3;
            if ((i12 & 8) != 0) {
                i13 = -i13;
            }
            iA07 = N1.A07(iA07 + i13, -32768, 32767);
            i9 += i4 * 2;
            bArr2[i9] = (byte) (iA07 & 255);
            bArr2[i9 + 1] = (byte) (iA07 >> 8);
            iMin = N1.A07(iMin + A0E[i12], 0, A0F.length - 1);
            i8 = A0F[iMin];
        }
    }

    static {
        A04();
        A0E = new int[]{-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
        A0F = new int[]{7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE, Sdk.SDKError.Reason.MRAID_DOWNLOAD_JS_ERROR_VALUE, 143, 157, 173, 190, 209, 230, 253, 279, Sdk.SDKError.Reason.AD_EXPIRED_ON_PLAY_VALUE, 337, 371, InterfaceC3681k1.a.b.h, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
    }

    public C1786Nb(InterfaceC2069Yw interfaceC2069Yw, ZP zp, C2293d9 c2293d9) throws L9 {
        this.A08 = interfaceC2069Yw;
        this.A09 = zp;
        this.A0A = c2293d9;
        this.A05 = Math.max(1, c2293d9.A04 / 10);
        C1769Mk scratch = new C1769Mk(c2293d9.A06);
        scratch.A0G();
        this.A04 = scratch.A0G();
        int i = c2293d9.A05;
        int i2 = (((c2293d9.A02 - (i * 4)) * 8) / (c2293d9.A01 * i)) + 1;
        if (this.A04 == i2) {
            int numChannels = N1.A05(this.A05, this.A04);
            this.A0B = new byte[c2293d9.A02 * numChannels];
            int maxBlocksToDecode = A02(this.A04, i);
            this.A07 = new C1769Mk(maxBlocksToDecode * numChannels);
            int maxBlocksToDecode2 = c2293d9.A04;
            int constantBitrate = ((maxBlocksToDecode2 * c2293d9.A02) * 8) / this.A04;
            this.A06 = new C1714Ke().A11(A03(34, 9, 62)).A0a(constantBitrate).A0j(constantBitrate).A0h(A02(this.A05, i)).A0b(c2293d9.A05).A0m(c2293d9.A04).A0i(2).A14();
            return;
        }
        throw L9.A01(A03(7, 27, Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE) + i2 + A03(0, 7, 102) + this.A04, null);
    }

    private int A00(int i) {
        return i / (this.A0A.A05 * 2);
    }

    private int A01(int i) {
        return A02(i, this.A0A.A05);
    }

    public static int A02(int i, int i2) {
        return i * 2 * i2;
    }

    private void A05(int i) {
        long jA0U = this.A03 + N1.A0U(this.A02, 1000000L, this.A0A.A04);
        int iA01 = A01(i);
        this.A09.AKC(jA0U, 1, iA01, this.A01 - iA01, null);
        long timeUs = i;
        this.A02 += timeUs;
        this.A01 -= iA01;
    }

    /* JADX WARN: Incorrect condition in loop: B:6:0x0008 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A07(byte[] r6, int r7, com.facebook.ads.redexgen.X.C1769Mk r8) {
        /*
            r5 = this;
            r4 = 0
        L1:
            if (r4 >= r7) goto L35
            r3 = 0
        L4:
            com.facebook.ads.redexgen.X.d9 r0 = r5.A0A
            int r0 = r0.A05
            if (r3 >= r0) goto L2c
            byte[] r0 = r8.A0l()
            r5.A06(r6, r4, r3, r0)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1786Nb.A0D
            r0 = 2
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 5
            if (r1 == r0) goto L2f
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1786Nb.A0D
            java.lang.String r1 = "u6iJIXJ735wojqn9STyQG7ng6git"
            r0 = 1
            r2[r0] = r1
            java.lang.String r1 = "U0vZmzHfLPML8OPqR4VTMum7AlsS"
            r0 = 4
            r2[r0] = r1
            int r3 = r3 + 1
            goto L4
        L2c:
            int r4 = r4 + 1
            goto L1
        L2f:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L35:
            int r0 = r5.A04
            int r0 = r0 * r7
            int r1 = r5.A01(r0)
            r0 = 0
            r8.A0f(r0)
            r8.A0e(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1786Nb.A07(byte[], int, com.facebook.ads.redexgen.X.Mk):void");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2291d7
    public final void AAm(int i, long j) {
        this.A08.AKP(new NR(this.A0A, this.A04, i, j));
        this.A09.A7E(this.A06);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2291d7
    public final void AK2(long j) {
        this.A00 = 0;
        this.A03 = j;
        this.A01 = 0;
        this.A02 = 0L;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2291d7
    public final boolean AKB(Q9 q9, long j) throws IOException {
        int iA00 = this.A05 - A00(this.A01);
        int targetFramesRemaining = this.A04;
        int blocksToDecode = N1.A05(iA00, targetFramesRemaining);
        int i = this.A0A.A02 * blocksToDecode;
        boolean z = j == 0;
        while (!z) {
            int targetFramesRemaining2 = this.A00;
            if (targetFramesRemaining2 >= i) {
                break;
            }
            int targetFramesRemaining3 = this.A00;
            int targetReadBytes = (int) Math.min(i - targetFramesRemaining3, j);
            byte[] bArr = this.A0B;
            int targetFramesRemaining4 = this.A00;
            int blocksToDecode2 = q9.read(bArr, targetFramesRemaining4, targetReadBytes);
            if (blocksToDecode2 == -1) {
                z = true;
            } else {
                int targetFramesRemaining5 = this.A00;
                this.A00 = targetFramesRemaining5 + blocksToDecode2;
            }
        }
        int targetReadBytes2 = this.A00;
        int targetFramesRemaining6 = this.A0A.A02;
        int targetReadBytes3 = targetReadBytes2 / targetFramesRemaining6;
        if (targetReadBytes3 > 0) {
            A07(this.A0B, targetReadBytes3, this.A07);
            int blocksToDecode3 = this.A00;
            int targetFramesRemaining7 = this.A0A.A02;
            this.A00 = blocksToDecode3 - (targetFramesRemaining7 * targetReadBytes3);
            int targetReadBytes4 = this.A07.A0A();
            this.A09.AK9(this.A07, targetReadBytes4);
            int targetFramesRemaining8 = this.A01;
            this.A01 = targetFramesRemaining8 + targetReadBytes4;
            int targetFramesRemaining9 = this.A01;
            int blocksToDecode4 = A00(targetFramesRemaining9);
            int targetFramesRemaining10 = this.A05;
            if (blocksToDecode4 >= targetFramesRemaining10) {
                int targetFramesRemaining11 = this.A05;
                A05(targetFramesRemaining11);
            }
        }
        if (z) {
            int targetFramesRemaining12 = this.A01;
            int targetFramesRemaining13 = A00(targetFramesRemaining12);
            if (targetFramesRemaining13 > 0) {
                A05(targetFramesRemaining13);
            }
        }
        return z;
    }
}
