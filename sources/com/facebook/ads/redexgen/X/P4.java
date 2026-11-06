package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.facebook.ads.androidx.media3.common.Metadata;
import com.facebook.ads.androidx.media3.extractor.metadata.mp4.MotionPhotoMetadata;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class P4 implements InterfaceC2068Yv, ZK {
    public static byte[] A0Q;
    public static String[] A0R = {"GHxW5YFrKGh", "uSGSN4tkLLszidFoEPshjRY3vkkEJ8hN", "tbL0t3QQNSHSE6ibZ", "", "dkwNaqabmSz", "3YXJR3ULqTV1r3nPDgNDtMgxaD2pvB9e", "370lXMO", "em8gR7TWdoaNIkYk8jGJpd2BIc1Lp0Zb"};
    public static final InterfaceC2072Yz A0S;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public long A09;

    @MetaExoPlayerCustomization
    public long A0A;
    public long A0B;

    @MetaExoPlayerCustomization
    public long A0C;
    public C1769Mk A0D;
    public InterfaceC2069Yw A0E;
    public MotionPhotoMetadata A0F;
    public C2160b0[] A0G;
    public long[][] A0H;
    public final int A0I;
    public final C1769Mk A0J;
    public final C1769Mk A0K;
    public final C1769Mk A0L;
    public final C1769Mk A0M;
    public final C2167b7 A0N;
    public final ArrayDeque<PF> A0O;
    public final List<Metadata.Entry> A0P;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0185  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int A03(com.facebook.ads.redexgen.X.Q9 r22, com.facebook.ads.redexgen.X.ZH r23) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 406
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.P4.A03(com.facebook.ads.redexgen.X.Q9, com.facebook.ads.redexgen.X.ZH):int");
    }

    public static String A09(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0Q, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 97);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0C() {
        byte[] bArr = {36, 17, 10, 8, 69, 22, 12, 31, 0, 69, 9, 0, 22, 22, 69, 17, 13, 4, 11, 69, 13, 0, 4, 1, 0, 23, 69, 9, 0, 11, 2, 17, 13, 69, 77, 16, 11, 22, 16, 21, 21, 10, 23, 17, 0, 1, 76, 75, 77, 106, 114, 101, 104, 109, 96, 36, 74, 69, 72, 36, 104, 97, 106, 99, 112, 108, 103, 115, 98, 111, 105, 41, 103, 101, 50, 15, 27, 10, 7, 1, 65, 26, 28, 27, 11, 67, 6, 10};
        if (A0R[6].length() != 7) {
            throw new RuntimeException();
        }
        A0R[6] = "vp8cBxo";
        A0Q = bArr;
    }

    static {
        A0C();
        A0S = new InterfaceC2072Yz() { // from class: com.facebook.ads.redexgen.X.P5
            @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
            public final InterfaceC2068Yv[] A5w() {
                return P4.A0M();
            }

            @Override // com.facebook.ads.redexgen.X.InterfaceC2072Yz
            public final /* synthetic */ InterfaceC2068Yv[] A5x(Uri uri, Map map) {
                return AbstractC2071Yy.A01(this, uri, map);
            }
        };
    }

    public P4() {
        this(0);
    }

    public P4(int i) {
        this.A0I = i;
        this.A04 = (i & 4) != 0 ? 3 : 0;
        this.A0N = new C2167b7();
        this.A0P = new ArrayList();
        this.A0J = new C1769Mk(16);
        this.A0O = new ArrayDeque<>();
        this.A0L = new C1769Mk(ZE.A03);
        this.A0K = new C1769Mk(4);
        this.A0M = new C1769Mk();
        this.A08 = -1;
        this.A0E = InterfaceC2069Yw.A00;
        this.A0G = new C2160b0[0];
    }

    public static int A00(int i) {
        switch (i) {
            case 1751476579:
                return 2;
            case 1903435808:
                return 1;
            default:
                return 0;
        }
    }

    private int A01(long j) {
        long sampleAccumulatedBytes = Long.MAX_VALUE;
        int i = 1;
        int i2 = -1;
        long j2 = Long.MAX_VALUE;
        long j3 = Long.MAX_VALUE;
        int trackIndex = 1;
        int minAccumulatedBytesTrackIndex = -1;
        for (int i3 = 0; i3 < this.A0G.length; i3++) {
            C2160b0 c2160b0 = this.A0G[i3];
            int i4 = c2160b0.A00;
            if (i4 != c2160b0.A04.A01) {
                long j4 = c2160b0.A04.A06[i4];
                long j5 = ((long[][]) N1.A0f(this.A0H))[i3][i4];
                long j6 = j4 - j;
                int i5 = (j6 < 0 || j6 >= 262144) ? 1 : 0;
                if ((i5 == 0 && i != 0) || (i5 == i && j6 < sampleAccumulatedBytes)) {
                    i = i5;
                    sampleAccumulatedBytes = j6;
                    i2 = i3;
                    j2 = j5;
                }
                if (j5 < j3) {
                    j3 = j5;
                    trackIndex = i5;
                    minAccumulatedBytesTrackIndex = i3;
                }
            }
        }
        if (j3 == Long.MAX_VALUE || trackIndex == 0) {
            return i2;
        }
        long preferredSkipAmount = 10485760 + j3;
        if (j2 < preferredSkipAmount) {
            return i2;
        }
        return minAccumulatedBytesTrackIndex;
    }

    public static int A02(C1769Mk c1769Mk) {
        c1769Mk.A0f(8);
        int majorBrand = A00(c1769Mk.A0C());
        if (majorBrand != 0) {
            return majorBrand;
        }
        c1769Mk.A0g(4);
        while (c1769Mk.A07() > 0) {
            int majorBrand2 = A00(c1769Mk.A0C());
            if (majorBrand2 != 0) {
                return majorBrand2;
            }
        }
        String[] strArr = A0R;
        String str = strArr[4];
        String str2 = strArr[0];
        int fileType = str.length();
        if (fileType != str2.length()) {
            throw new RuntimeException();
        }
        A0R[6] = "lrSt19Y";
        return 0;
    }

    private int A04(Q9 q9, ZH zh) throws IOException {
        int iA07 = this.A0N.A07(q9, zh, this.A0P);
        if (iA07 == 1) {
            long j = zh.A00;
            if (A0R[5].charAt(5) == '1') {
                throw new RuntimeException();
            }
            A0R[2] = "RAGvnYtuo2L5dWyqulYytw1MjYByWy";
            if (j == 0) {
                A0A();
            }
        }
        return iA07;
    }

    public static int A05(C2173bD c2173bD, long j) {
        int iA00 = c2173bD.A00(j);
        if (iA00 == -1) {
            return c2173bD.A01(j);
        }
        return iA00;
    }

    public static long A06(C2173bD c2173bD, long j, long j2) {
        int iA05 = A05(c2173bD, j);
        if (iA05 == -1) {
            return j2;
        }
        return Math.min(c2173bD.A06[iA05], j2);
    }

    /* JADX WARN: Incorrect condition in loop: B:31:0x007b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final com.facebook.ads.redexgen.X.ZJ A07(long r17, int r19) {
        /*
            r16 = this;
            r11 = r16
            com.facebook.ads.redexgen.X.b0[] r0 = r11.A0G
            int r0 = r0.length
            if (r0 != 0) goto Lf
            com.facebook.ads.redexgen.X.ZL r1 = com.facebook.ads.redexgen.X.ZL.A03
            com.facebook.ads.redexgen.X.ZJ r0 = new com.facebook.ads.redexgen.X.ZJ
            r0.<init>(r1)
            return r0
        Lf:
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r4 = -1
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.P4.A0R
            r0 = 2
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 29
            if (r1 == r0) goto Lba
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.P4.A0R
            java.lang.String r1 = "2wij9I5ONyqOkJ800a4Tbh3cmUZEr69K"
            r0 = 1
            r2[r0] = r1
            r10 = -1
            r12 = r19
            if (r12 == r10) goto L48
            r1 = r12
        L30:
            r8 = r17
            if (r1 == r10) goto L6e
            com.facebook.ads.redexgen.X.b0[] r0 = r11.A0G
            r0 = r0[r1]
            com.facebook.ads.redexgen.X.bD r13 = r0.A04
            int r14 = A05(r13, r8)
            if (r14 != r10) goto L4b
            com.facebook.ads.redexgen.X.ZL r1 = com.facebook.ads.redexgen.X.ZL.A03
            com.facebook.ads.redexgen.X.ZJ r0 = new com.facebook.ads.redexgen.X.ZJ
            r0.<init>(r1)
            return r0
        L48:
            int r1 = r11.A03
            goto L30
        L4b:
            long[] r0 = r13.A07
            r2 = r0[r14]
            long[] r0 = r13.A06
            r0 = r0[r14]
            int r15 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1))
            if (r15 >= 0) goto L74
            int r15 = r13.A01
            int r15 = r15 + (-1)
            if (r14 >= r15) goto L74
            int r8 = r13.A01(r8)
            if (r8 == r10) goto L74
            if (r8 == r14) goto L74
            long[] r4 = r13.A07
            r6 = r4[r8]
            long[] r4 = r13.A06
            r4 = r4[r8]
            goto L74
        L6e:
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r2 = r8
        L74:
            r8 = -1
            if (r12 != r8) goto L9b
            r13 = 0
        L78:
            com.facebook.ads.redexgen.X.b0[] r8 = r11.A0G
            int r8 = r8.length
            if (r13 >= r8) goto L9b
            int r8 = r11.A03
            if (r13 == r8) goto L98
            com.facebook.ads.redexgen.X.b0[] r8 = r11.A0G
            r8 = r8[r13]
            com.facebook.ads.redexgen.X.bD r12 = r8.A04
            long r0 = A06(r12, r2, r0)
            r9 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r8 = (r6 > r9 ? 1 : (r6 == r9 ? 0 : -1))
            if (r8 == 0) goto L98
            long r4 = A06(r12, r6, r4)
        L98:
            int r13 = r13 + 1
            goto L78
        L9b:
            com.facebook.ads.redexgen.X.ZL r8 = new com.facebook.ads.redexgen.X.ZL
            r8.<init>(r2, r0)
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r0 != 0) goto Laf
            com.facebook.ads.redexgen.X.ZJ r0 = new com.facebook.ads.redexgen.X.ZJ
            r0.<init>(r8)
            return r0
        Laf:
            com.facebook.ads.redexgen.X.ZL r1 = new com.facebook.ads.redexgen.X.ZL
            r1.<init>(r6, r4)
            com.facebook.ads.redexgen.X.ZJ r0 = new com.facebook.ads.redexgen.X.ZJ
            r0.<init>(r8, r1)
            return r0
        Lba:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.P4.A07(long, int):com.facebook.ads.redexgen.X.ZJ");
    }

    public static /* synthetic */ C2170bA A08(C2170bA c2170bA) {
        return c2170bA;
    }

    private void A0A() {
        this.A04 = 0;
        this.A00 = 0;
    }

    private void A0B() {
        if (this.A02 == 2 && (this.A0I & 2) != 0) {
            this.A0E.ALm(0, 4).A7E(new C1714Ke().A0v(this.A0F == null ? null : new Metadata(this.A0F)).A14());
            this.A0E.A6x();
            this.A0E.AKP(new Q4(-9223372036854775807L));
        }
    }

    private void A0D(long j) throws L9 {
        while (!this.A0O.isEmpty()) {
            long j2 = this.A0O.peek().A00;
            if (A0R[5].charAt(5) == '1') {
                throw new RuntimeException();
            }
            A0R[6] = "rM8DkGU";
            if (j2 != j) {
                break;
            }
            PF pfPop = this.A0O.pop();
            if (((AbstractC2140ag) pfPop).A00 == 1836019574) {
                A0G(pfPop);
                this.A0O.clear();
                this.A04 = 2;
            } else {
                boolean zIsEmpty = this.A0O.isEmpty();
                if (A0R[5].charAt(5) != '1') {
                    A0R[2] = "NWJoc";
                    if (!zIsEmpty) {
                        PF containerAtom = this.A0O.peek();
                        containerAtom.A04(pfPop);
                    }
                } else {
                    A0R[3] = "UbZz3qY";
                    if (!zIsEmpty) {
                        PF containerAtom2 = this.A0O.peek();
                        containerAtom2.A04(pfPop);
                    }
                }
            }
        }
        if (this.A04 != 2) {
            A0A();
        }
    }

    private void A0E(long j) {
        if (this.A01 == 1836086884) {
            this.A0F = new MotionPhotoMetadata(0L, j, -9223372036854775807L, j + ((long) this.A00), this.A09 - ((long) this.A00));
        }
    }

    private void A0F(Q9 q9) throws IOException {
        this.A0M.A0d(8);
        q9.AI6(this.A0M.A0l(), 0, 8);
        AbstractC2146am.A0Q(this.A0M);
        q9.ALL(this.A0M.A09());
        q9.AK3();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01ae  */
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0G(com.facebook.ads.redexgen.X.PF r32) throws com.facebook.ads.redexgen.X.L9 {
        /*
            Method dump skipped, instruction units count: 486
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.P4.A0G(com.facebook.ads.redexgen.X.PF):void");
    }

    private void A0H(C2160b0 c2160b0, long j) {
        C2173bD c2173bD = c2160b0.A04;
        int sampleIndex = c2173bD.A00(j);
        if (sampleIndex == -1) {
            sampleIndex = c2173bD.A01(j);
        }
        c2160b0.A00 = sampleIndex;
    }

    public static boolean A0I(int i) {
        return i == 1836019574 || i == 1953653099 || i == 1835297121 || i == 1835626086 || i == 1937007212 || i == 1701082227 || i == 1835365473;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00ac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean A0J(int r4) {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.P4.A0J(int):boolean");
    }

    private boolean A0K(Q9 q9) throws IOException {
        PF containerAtom;
        if (this.A00 == 0) {
            if (!q9.AIe(this.A0J.A0l(), 0, 8, true)) {
                A0B();
                return false;
            }
            this.A00 = 8;
            this.A0J.A0f(0);
            this.A09 = this.A0J.A0Q();
            this.A01 = this.A0J.A0C();
        }
        if (this.A09 == 1) {
            q9.readFully(this.A0J.A0l(), 8, 8);
            int headerBytesRemaining = this.A00;
            this.A00 = headerBytesRemaining + 8;
            C1769Mk c1769Mk = this.A0J;
            if (A0R[5].charAt(5) == '1') {
                throw new RuntimeException();
            }
            A0R[1] = "lJfceHIzLNg02prOAeq7AYV4grHEkMdR";
            this.A09 = c1769Mk.A0R();
        } else if (this.A09 == 0) {
            long jA90 = q9.A90();
            if (jA90 == -1 && (containerAtom = this.A0O.peek()) != null) {
                jA90 = containerAtom.A00;
            }
            if (jA90 != -1) {
                this.A09 = (jA90 - q9.A9Q()) + ((long) this.A00);
            }
        }
        if (this.A09 >= this.A00) {
            if (A0I(this.A01)) {
                long jA9Q = (q9.A9Q() + this.A09) - ((long) this.A00);
                if (this.A09 != this.A00 && this.A01 == 1835365473) {
                    A0F(q9);
                }
                this.A0O.push(new PF(this.A01, jA9Q));
                if (this.A09 == this.A00) {
                    A0D(jA9Q);
                } else {
                    A0A();
                }
            } else if (A0J(this.A01)) {
                AbstractC1747Ln.A08(this.A00 == 8);
                AbstractC1747Ln.A08(this.A09 <= 2147483647L);
                C1769Mk c1769Mk2 = new C1769Mk((int) this.A09);
                C1769Mk atomData = this.A0J;
                System.arraycopy(atomData.A0l(), 0, c1769Mk2.A0l(), 0, 8);
                this.A0D = c1769Mk2;
                this.A04 = 1;
            } else {
                A0E(q9.A9Q() - ((long) this.A00));
                this.A0D = null;
                this.A04 = 1;
            }
            return true;
        }
        throw L9.A00(A09(0, 48, 4));
    }

    private boolean A0L(Q9 q9, ZH zh) throws IOException {
        long j = this.A09 - ((long) this.A00);
        long atomEndPosition = q9.A9Q() + j;
        boolean z = false;
        C1769Mk c1769Mk = this.A0D;
        if (c1769Mk != null) {
            q9.readFully(c1769Mk.A0l(), this.A00, (int) j);
            if (this.A01 == 1718909296) {
                this.A02 = A02(c1769Mk);
            } else if (!this.A0O.isEmpty()) {
                this.A0O.peek().A05(new PE(this.A01, c1769Mk));
            }
        } else if (j < 262144) {
            q9.ALL((int) j);
        } else {
            long atomPayloadSize = q9.A9Q();
            zh.A00 = atomPayloadSize + j;
            z = true;
        }
        A0D(atomEndPosition);
        return z && this.A04 != 2;
    }

    public static /* synthetic */ InterfaceC2068Yv[] A0M() {
        return new InterfaceC2068Yv[]{new P4()};
    }

    public static long[][] A0N(C2160b0[] c2160b0Arr) {
        long[][] jArr = new long[c2160b0Arr.length][];
        int[] iArr = new int[c2160b0Arr.length];
        long[] jArr2 = new long[c2160b0Arr.length];
        boolean[] tracksFinished = new boolean[c2160b0Arr.length];
        for (int i = 0; i < c2160b0Arr.length; i++) {
            jArr[i] = new long[c2160b0Arr[i].A04.A01];
            jArr2[i] = c2160b0Arr[i].A04.A07[0];
        }
        long j = 0;
        int i2 = 0;
        while (i2 < c2160b0Arr.length) {
            long j2 = Long.MAX_VALUE;
            int minTimeTrackIndex = -1;
            for (int i3 = 0; i3 < c2160b0Arr.length; i3++) {
                if (!tracksFinished[i3]) {
                    long minTimeUs = jArr2[i3];
                    if (minTimeUs <= j2) {
                        minTimeTrackIndex = i3;
                        j2 = jArr2[i3];
                    }
                }
            }
            int i4 = iArr[minTimeTrackIndex];
            jArr[minTimeTrackIndex][i4] = j;
            j += (long) c2160b0Arr[minTimeTrackIndex].A04.A05[i4];
            int i5 = i4 + 1;
            iArr[minTimeTrackIndex] = i5;
            if (i5 < jArr[minTimeTrackIndex].length) {
                jArr2[minTimeTrackIndex] = c2160b0Arr[minTimeTrackIndex].A04.A07[i5];
            } else {
                tracksFinished[minTimeTrackIndex] = true;
                i2++;
            }
        }
        return jArr;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final long A8U() {
        return this.A0B;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final ZJ A9e(long j) {
        return A07(j, -1);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AAq(InterfaceC2069Yw interfaceC2069Yw) {
        this.A0E = interfaceC2069Yw;
    }

    @Override // com.facebook.ads.redexgen.X.ZK
    public final boolean ABR() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final int AIY(Q9 q9, ZH zh) throws IOException {
        while (true) {
            switch (this.A04) {
                case 0:
                    boolean zA0K = A0K(q9);
                    if (A0R[1].charAt(27) != 'E') {
                        throw new RuntimeException();
                    }
                    A0R[7] = "lknEHSqdxhfluWih1O1ZMljas1MMEpwr";
                    if (!zA0K) {
                        return -1;
                    }
                    break;
                case 1:
                    if (A0L(q9, zh)) {
                        return 1;
                    }
                    break;
                case 2:
                    return A03(q9, zh);
                case 3:
                    return A04(q9, zh);
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AIp() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final void AKO(long j, long j2) {
        this.A0O.clear();
        this.A00 = 0;
        this.A08 = -1;
        this.A05 = 0;
        this.A06 = 0;
        this.A07 = 0;
        if (j == 0) {
            if (this.A04 != 3) {
                A0A();
                return;
            } else {
                this.A0N.A08();
                this.A0P.clear();
                return;
            }
        }
        for (C2160b0 c2160b0 : this.A0G) {
            A0H(c2160b0, j2);
            if (c2160b0.A02 != null) {
                c2160b0.A02.A02();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2068Yv
    public final boolean ALN(Q9 q9) throws IOException {
        return AbstractC2168b8.A02(q9, (this.A0I & 2) != 0);
    }
}
