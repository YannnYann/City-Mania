package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Looper;
import com.facebook.ads.androidx.media3.common.DrmInitData;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Rb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1878Rb implements ZP {
    public static byte[] A0Y;
    public static String[] A0Z = {"9SuFUez5PaLoVpB9bApPkgwJIALbVXxB", "WnP4p2P3d4GjCnesSI4pEdpA9z2FpgBb", "FqyoJbhNEKbWYkuOxNvLVuwDDeYkeemR", "gfxw0ZtY8Un17pXHHWpTZUSfyFF3Yz", "sUnHKy7JKoFDN1jmpp", "sTSS3r2YgpKPlpnV6FGptzKl5TVzo2lo", "bSQQjejOVBGpBwfgiuD782ifo2xy8M", "S0rjmSH8elRPo8MiCELFBH3Nt2uU8uFt"};
    public int A00;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public long A08;

    @MetaExoPlayerCustomization
    public Uri A0A;
    public VC A0B;
    public VC A0C;
    public VC A0D;
    public InterfaceC1883Rg A0E;
    public VB A0F;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public boolean A0K;
    public final C1892Rp A0T;
    public final InterfaceC1897Ru A0U;
    public final V7 A0V;
    public final V9 A0W = new V9();
    public int A01 = 1000;
    public int[] A0P = new int[this.A01];
    public long[] A0Q = new long[this.A01];
    public long[] A0R = new long[this.A01];
    public int[] A0N = new int[this.A01];
    public int[] A0O = new int[this.A01];
    public ZN[] A0S = new ZN[this.A01];
    public final VQ<VA> A0X = new VQ<>(new InterfaceC1757Ly() { // from class: com.facebook.ads.redexgen.X.Rc
        @Override // com.facebook.ads.redexgen.X.InterfaceC1757Ly
        public final void A3V(Object obj) {
            ((VA) obj).A01.AIp();
        }
    });
    public long A09 = Long.MIN_VALUE;
    public long A06 = Long.MIN_VALUE;
    public long A07 = Long.MIN_VALUE;
    public boolean A0L = true;
    public boolean A0M = true;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private synchronized int A03(C1825Oo c1825Oo, T2 t2, boolean z, boolean z2, V9 v9) {
        t2.A04 = false;
        if (!A0K()) {
            if (!z2 && !this.A0G) {
                if (this.A0D == null || (!z && this.A0D == this.A0B)) {
                    return -3;
                }
                A0H((VC) AbstractC1747Ln.A01(this.A0D), c1825Oo);
                return -5;
            }
            t2.A02(4);
            return -4;
        }
        VC vc = this.A0X.A01(A0O()).A00;
        if (z || vc != this.A0B) {
            A0H(vc, c1825Oo);
            return -5;
        }
        int iA00 = A00(this.A03);
        if (!A0L(iA00)) {
            t2.A04 = true;
            return -3;
        }
        t2.A02(this.A0N[iA00]);
        t2.A01 = this.A0R[iA00];
        if (t2.A01 < this.A09) {
            t2.A00(Integer.MIN_VALUE);
        }
        v9.A00 = this.A0O[iA00];
        v9.A01 = this.A0Q[iA00];
        v9.A02 = this.A0S[iA00];
        return -4;
    }

    public static String A0C(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0Y, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 106);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0E() {
        A0Y = new byte[]{-62, -23, -40, -27, -27, -36, -41, -36, -31, -38, -109, -24, -31, -40, -21, -29, -40, -42, -25, -40, -41, -109, -31, -30, -31, -96, -26, -20, -31, -42, -109, -26, -44, -32, -29, -33, -40, -109, -39, -30, -27, -109, -39, -30, -27, -32, -44, -25, -83, -109, 7, 21, 33, 36, 32, 25, 5, 41, 25, 41, 25};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private synchronized void A0G(long j, int i, long j2, int i2, ZN zn) {
        if (this.A02 > 0) {
            int iA00 = A00(this.A02 - 1);
            AbstractC1747Ln.A07(this.A0Q[iA00] + ((long) this.A0O[iA00]) <= j2);
        }
        this.A0G = (536870912 & i) != 0;
        this.A07 = Math.max(this.A07, j);
        int iA002 = A00(this.A02);
        this.A0R[iA002] = j;
        this.A0Q[iA002] = j2;
        this.A0O[iA002] = i2;
        this.A0N[iA002] = i;
        this.A0S[iA002] = zn;
        this.A0P[iA002] = this.A05;
        if (this.A0X.A06() || !this.A0X.A00().A00.equals(this.A0D)) {
            this.A0X.A05(A0P(), new VA((VC) AbstractC1747Ln.A01(this.A0D), this.A0U != null ? this.A0U.AIG(this.A0T, this.A0D) : InterfaceC1896Rt.A00));
        }
        this.A02++;
        if (this.A02 == this.A01) {
            int i3 = this.A01 + 1000;
            int[] iArr = new int[i3];
            long[] jArr = new long[i3];
            long[] jArr2 = new long[i3];
            int[] iArr2 = new int[i3];
            int[] iArr3 = new int[i3];
            ZN[] znArr = new ZN[i3];
            int i4 = this.A01 - this.A04;
            System.arraycopy(this.A0Q, this.A04, jArr, 0, i4);
            System.arraycopy(this.A0R, this.A04, jArr2, 0, i4);
            System.arraycopy(this.A0N, this.A04, iArr2, 0, i4);
            System.arraycopy(this.A0O, this.A04, iArr3, 0, i4);
            System.arraycopy(this.A0S, this.A04, znArr, 0, i4);
            System.arraycopy(this.A0P, this.A04, iArr, 0, i4);
            int i5 = this.A04;
            System.arraycopy(this.A0Q, 0, jArr, i4, i5);
            System.arraycopy(this.A0R, 0, jArr2, i4, i5);
            System.arraycopy(this.A0N, 0, iArr2, i4, i5);
            System.arraycopy(this.A0O, 0, iArr3, i4, i5);
            System.arraycopy(this.A0S, 0, znArr, i4, i5);
            System.arraycopy(this.A0P, 0, iArr, i4, i5);
            this.A0Q = jArr;
            this.A0R = jArr2;
            this.A0N = iArr2;
            this.A0O = iArr3;
            this.A0S = znArr;
            this.A0P = iArr;
            this.A04 = 0;
            this.A01 = i3;
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final synchronized long A0S() {
        return this.A02 == 0 ? Long.MIN_VALUE : this.A0R[this.A04];
    }

    @Override // com.facebook.ads.redexgen.X.ZP
    public final /* synthetic */ int AK7(KR kr, int i, boolean z) {
        return ZM.A00(this, kr, i, z);
    }

    @Override // com.facebook.ads.redexgen.X.ZP
    public final /* synthetic */ void AK9(C1769Mk c1769Mk, int i) {
        ZM.A01(this, c1769Mk, i);
    }

    static {
        A0E();
    }

    public C1878Rb(InterfaceC2012Wm interfaceC2012Wm, InterfaceC1897Ru interfaceC1897Ru, C1892Rp c1892Rp) {
        this.A0U = interfaceC1897Ru;
        this.A0T = c1892Rp;
        this.A0V = new V7(interfaceC2012Wm);
    }

    private int A00(int i) {
        int i2 = this.A04 + i;
        int relativeIndex = this.A01;
        if (i2 < relativeIndex) {
            return i2;
        }
        int relativeIndex2 = this.A01;
        return i2 - relativeIndex2;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0027 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int A01(int r6, int r7, long r8, boolean r10) {
        /*
            r5 = this;
            r4 = -1
            r3 = 0
        L2:
            if (r3 >= r7) goto L1f
            long[] r0 = r5.A0R
            r1 = r0[r6]
            int r0 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
            if (r0 > 0) goto L1f
            if (r10 == 0) goto L16
            int[] r0 = r5.A0N
            r0 = r0[r6]
            r0 = r0 & 1
            if (r0 == 0) goto L20
        L16:
            r4 = r3
            long[] r0 = r5.A0R
            r1 = r0[r6]
            int r0 = (r1 > r8 ? 1 : (r1 == r8 ? 0 : -1))
            if (r0 != 0) goto L20
        L1f:
            return r4
        L20:
            int r6 = r6 + 1
            int r0 = r5.A01
            if (r6 != r0) goto L27
            r6 = 0
        L27:
            int r3 = r3 + 1
            goto L2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1878Rb.A01(int, int, long, boolean):int");
    }

    private int A02(long j) {
        int i = this.A02;
        int count = this.A02;
        int iA00 = A00(count - 1);
        while (true) {
            int i2 = this.A03;
            int relativeSampleIndex = A0Z[4].length();
            if (relativeSampleIndex != 18) {
                throw new RuntimeException();
            }
            A0Z[4] = "dolUKH4gThNCszSjox";
            if (i <= i2 || this.A0R[iA00] < j) {
                break;
            }
            i--;
            iA00--;
            if (iA00 == -1) {
                int count2 = this.A01;
                iA00 = count2 - 1;
            }
        }
        return i;
    }

    private synchronized long A04() {
        if (this.A02 == 0) {
            return -1L;
        }
        return A06(this.A02);
    }

    private final synchronized long A05() {
        return Math.max(this.A06, A08(this.A03));
    }

    private long A06(int i) {
        this.A06 = Math.max(this.A06, A08(i));
        this.A02 -= i;
        this.A00 += i;
        this.A04 += i;
        if (this.A04 >= this.A01) {
            this.A04 -= this.A01;
        }
        this.A03 -= i;
        if (this.A03 < 0) {
            this.A03 = 0;
        }
        this.A0X.A04(this.A00);
        if (this.A02 == 0) {
            int relativeLastDiscardIndex = this.A04 == 0 ? this.A01 : this.A04;
            int i2 = relativeLastDiscardIndex - 1;
            long j = this.A0Q[i2];
            int relativeLastDiscardIndex2 = this.A0O[i2];
            return j + ((long) relativeLastDiscardIndex2);
        }
        return this.A0Q[this.A04];
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private long A07(int r8) {
        /*
            r7 = this;
            int r6 = r7.A0P()
            int r6 = r6 - r8
            r5 = 0
            r4 = 1
            if (r6 < 0) goto L48
            int r1 = r7.A02
            int r0 = r7.A03
            int r1 = r1 - r0
            if (r6 > r1) goto L48
            r0 = 1
        L11:
            com.facebook.ads.redexgen.X.AbstractC1747Ln.A07(r0)
            int r0 = r7.A02
            int r0 = r0 - r6
            r7.A02 = r0
            long r2 = r7.A06
            int r0 = r7.A02
            long r0 = r7.A08(r0)
            long r0 = java.lang.Math.max(r2, r0)
            r7.A07 = r0
            if (r6 != 0) goto L2e
            boolean r0 = r7.A0G
            if (r0 == 0) goto L2e
            r5 = 1
        L2e:
            r7.A0G = r5
            com.facebook.ads.redexgen.X.VQ<com.facebook.ads.redexgen.X.VA> r0 = r7.A0X
            r0.A03(r8)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C1878Rb.A0Z
            r0 = 2
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 32
            if (r1 == r0) goto L4a
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L48:
            r0 = 0
            goto L11
        L4a:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C1878Rb.A0Z
            java.lang.String r1 = "WhDqBbGJpUVteLYbNN2pGPdH9fo7UT1Z"
            r0 = 1
            r2[r0] = r1
            java.lang.String r1 = "Qpgc0TIFuwgBW8otUHgpzRVMIfcbDu1O"
            r0 = 5
            r2[r0] = r1
            int r0 = r7.A02
            if (r0 == 0) goto L6c
            int r0 = r7.A02
            int r0 = r0 - r4
            int r1 = r7.A00(r0)
            long[] r0 = r7.A0Q
            r2 = r0[r1]
            int[] r0 = r7.A0O
            r0 = r0[r1]
            long r0 = (long) r0
            long r2 = r2 + r0
            return r2
        L6c:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1878Rb.A07(int):long");
    }

    private long A08(int i) {
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        long jMax = Long.MIN_VALUE;
        int iA00 = A00(i - 1);
        for (int i2 = 0; i2 < i; i2++) {
            long largestTimestampUs = this.A0R[iA00];
            jMax = Math.max(jMax, largestTimestampUs);
            if ((this.A0N[iA00] & 1) != 0) {
                break;
            }
            iA00--;
            String[] strArr = A0Z;
            if (strArr[6].length() != strArr[3].length()) {
                throw new RuntimeException();
            }
            A0Z[2] = "usCo8IkQcOtWzCeRf5569H09U9ARgSIq";
            if (iA00 == -1) {
                iA00 = this.A01 - 1;
                String[] strArr2 = A0Z;
                if (strArr2[6].length() == strArr2[3].length()) {
                    String[] strArr3 = A0Z;
                    strArr3[0] = "6fALZlBJzYUAMnzI8m0wk3vRuD20Qqhi";
                    strArr3[7] = "MCdHgjZSMyybecfiEYiH0gkFZTJrWOO9";
                }
            }
        }
        return jMax;
    }

    private synchronized long A09(long j, boolean z, boolean z2) {
        if (this.A02 != 0 && j >= this.A0R[this.A04]) {
            int iA01 = A01(this.A04, (!z2 || this.A03 == this.A02) ? this.A02 : this.A03 + 1, j, z);
            if (iA01 == -1) {
                return -1L;
            }
            return A06(iA01);
        }
        return -1L;
    }

    private final VC A0A(VC vc) {
        if (this.A08 != 0 && vc.A0M != Long.MAX_VALUE) {
            return vc.A07().A0s(vc.A0M + this.A08).A14();
        }
        return vc;
    }

    public static C1878Rb A0B(InterfaceC2012Wm interfaceC2012Wm, InterfaceC1897Ru interfaceC1897Ru, C1892Rp c1892Rp) {
        return new C1878Rb(interfaceC2012Wm, (InterfaceC1897Ru) AbstractC1747Ln.A01(interfaceC1897Ru), (C1892Rp) AbstractC1747Ln.A01(c1892Rp));
    }

    private void A0D() {
        if (this.A0E != null) {
            this.A0E.AIq(this.A0T);
            this.A0E = null;
            this.A0B = null;
        }
    }

    private synchronized void A0F() {
        this.A03 = 0;
        this.A0V.A0B();
    }

    private void A0H(VC vc, C1825Oo c1825Oo) {
        VC vcA08;
        boolean z = this.A0B == null;
        DrmInitData drmInitData = z ? null : this.A0B.A0O;
        this.A0B = vc;
        DrmInitData drmInitData2 = vc.A0O;
        String[] strArr = A0Z;
        if (strArr[1].charAt(19) != strArr[5].charAt(19)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0Z;
        strArr2[0] = "HbiMpST0tqhR09QJOdPYbUVQsjPtPdov";
        strArr2[7] = "Qlot8tHVBiln5H0gJBF7F9JPhKcdWQqe";
        if (this.A0U != null) {
            vcA08 = vc.A08(this.A0U.A87(vc));
        } else {
            vcA08 = vc;
        }
        c1825Oo.A00 = vcA08;
        c1825Oo.A01 = this.A0E;
        if (this.A0U == null) {
            return;
        }
        if (!z) {
            boolean isFirstFormat = N1.A1E(drmInitData, drmInitData2);
            if (isFirstFormat) {
                return;
            }
        }
        if (Looper.myLooper() == null) {
            return;
        }
        InterfaceC1883Rg interfaceC1883Rg = this.A0E;
        this.A0E = this.A0U.A3Y(this.A0T, vc);
        c1825Oo.A01 = this.A0E;
        if (interfaceC1883Rg != null) {
            interfaceC1883Rg.AIq(this.A0T);
        }
    }

    private final void A0J(boolean z) {
        this.A0V.A0A();
        this.A02 = 0;
        this.A00 = 0;
        this.A04 = 0;
        this.A03 = 0;
        this.A0M = true;
        this.A09 = Long.MIN_VALUE;
        this.A06 = Long.MIN_VALUE;
        this.A07 = Long.MIN_VALUE;
        this.A0G = false;
        this.A0X.A02();
        if (z) {
            if (A0Z[4].length() != 18) {
                throw new RuntimeException();
            }
            A0Z[4] = "sqzZn8w9e9BdGX6uTk";
            this.A0C = null;
            this.A0D = null;
            this.A0L = true;
        }
    }

    private boolean A0K() {
        return this.A03 != this.A02;
    }

    private boolean A0L(int i) {
        return this.A0E == null || this.A0E.A9n() == 4 || ((this.A0N[i] & 1073741824) == 0 && this.A0E.AIE());
    }

    private synchronized boolean A0M(long j) {
        boolean z = true;
        if (this.A02 == 0) {
            if (j <= this.A06) {
                z = false;
            }
            return z;
        }
        if (A05() >= j) {
            return false;
        }
        int iA02 = A02(j);
        int retainCount = this.A00;
        A07(retainCount + iA02);
        return true;
    }

    private synchronized boolean A0N(VC vc) {
        this.A0L = false;
        if (N1.A1E(vc, this.A0D)) {
            return false;
        }
        if (!this.A0X.A06() && this.A0X.A00().A00.equals(vc)) {
            this.A0D = this.A0X.A00().A00;
        } else {
            this.A0D = vc;
        }
        this.A0J = L8.A0G(this.A0D.A0W, this.A0D.A0R);
        this.A0H = false;
        return true;
    }

    public final int A0O() {
        return this.A00 + this.A03;
    }

    public final int A0P() {
        return this.A00 + this.A02;
    }

    public final synchronized int A0Q(long j, boolean z) {
        int iA00 = A00(this.A03);
        if (A0K() && j >= this.A0R[iA00]) {
            if (j > this.A07 && z) {
                int i = this.A02;
                int relativeReadIndex = this.A03;
                return i - relativeReadIndex;
            }
            int i2 = this.A02;
            int relativeReadIndex2 = this.A03;
            int offset = A01(iA00, i2 - relativeReadIndex2, j, true);
            if (offset == -1) {
                return 0;
            }
            return offset;
        }
        return 0;
    }

    public final int A0R(C1825Oo c1825Oo, T2 t2, int i, boolean z) {
        int iA03 = A03(c1825Oo, t2, (i & 2) != 0, z, this.A0W);
        if (iA03 == -4 && !t2.A05()) {
            int result = i & 1;
            boolean z2 = result != 0;
            int result2 = i & 4;
            if (result2 == 0) {
                if (z2) {
                    this.A0V.A0E(t2, this.A0W);
                } else {
                    V7 v7 = this.A0V;
                    if (A0Z[4].length() != 18) {
                        throw new RuntimeException();
                    }
                    String[] strArr = A0Z;
                    strArr[0] = "rRp7KszPCIiV4HBOEBmrHkgqycUSCs5l";
                    strArr[7] = "qRl4ES6PqkxlrpPTaqmIy64A96Rs88bh";
                    v7.A0F(t2, this.A0W);
                }
            }
            if (!z2) {
                int result3 = this.A03;
                this.A03 = result3 + 1;
            }
        }
        return iA03;
    }

    public final synchronized long A0T() {
        return this.A07;
    }

    public final synchronized VC A0U() {
        return this.A0L ? null : this.A0D;
    }

    public final void A0V() {
        this.A0V.A0C(A04());
    }

    public final void A0W() throws IOException {
        if (this.A0E == null || this.A0E.A9n() != 1) {
        } else {
            throw ((C1881Re) AbstractC1747Ln.A01(this.A0E.A8b()));
        }
    }

    public final void A0X() {
        A0V();
        A0D();
    }

    public final void A0Y() {
        A0J(true);
        A0D();
    }

    public final void A0Z() {
        A0J(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized void A0a(int r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            if (r3 < 0) goto Lc
            int r1 = r2.A03     // Catch: java.lang.Throwable -> L17
            int r1 = r1 + r3
            int r0 = r2.A02     // Catch: java.lang.Throwable -> L17
            if (r1 > r0) goto Lc
            r0 = 1
            goto Ld
        Lc:
            r0 = 0
        Ld:
            com.facebook.ads.redexgen.X.AbstractC1747Ln.A07(r0)     // Catch: java.lang.Throwable -> L17
            int r0 = r2.A03     // Catch: java.lang.Throwable -> L17
            int r0 = r0 + r3
            r2.A03 = r0     // Catch: java.lang.Throwable -> L17
            monitor-exit(r2)
            return
        L17:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1878Rb.A0a(int):void");
    }

    public final void A0b(long j) {
        this.A09 = j;
    }

    public final void A0c(long j, boolean z, boolean z2) {
        this.A0V.A0C(A09(j, z, z2));
    }

    public final void A0d(VB vb) {
        this.A0F = vb;
    }

    public final synchronized boolean A0e() {
        return this.A0G;
    }

    public final synchronized boolean A0f(long j, boolean z) {
        A0F();
        int iA00 = A00(this.A03);
        if (!A0K() || j < this.A0R[iA00] || (j > this.A07 && !z)) {
            return false;
        }
        int i = this.A02;
        int relativeReadIndex = this.A03;
        int offset = A01(iA00, i - relativeReadIndex, j, true);
        if (offset == -1) {
            return false;
        }
        this.A09 = j;
        int relativeReadIndex2 = this.A03;
        this.A03 = relativeReadIndex2 + offset;
        return true;
    }

    public final synchronized boolean A0g(boolean z) {
        boolean z2 = true;
        if (!A0K()) {
            if (!z && !this.A0G && (this.A0D == null || this.A0D == this.A0B)) {
                z2 = false;
            }
            return z2;
        }
        if (this.A0X.A01(A0O()).A00 != this.A0B) {
            return true;
        }
        return A0L(A00(this.A03));
    }

    @Override // com.facebook.ads.redexgen.X.ZP
    public final void A7E(VC vc) {
        VC vcA0A = A0A(vc);
        this.A0K = false;
        this.A0C = vc;
        boolean upstreamFormatChanged = A0N(vcA0A);
        if (this.A0F != null && upstreamFormatChanged) {
            this.A0F.AHV(vcA0A);
        }
    }

    @Override // com.facebook.ads.redexgen.X.ZP
    public final int AK8(KR kr, int i, boolean z, int i2) throws IOException {
        return this.A0V.A08(kr, i, z);
    }

    @Override // com.facebook.ads.redexgen.X.ZP
    public final void AKA(C1769Mk c1769Mk, int i, int i2) {
        this.A0V.A0D(c1769Mk, i);
    }

    @Override // com.facebook.ads.redexgen.X.ZP
    public final void AKC(long j, int i, int i2, int flags, ZN zn) {
        int i3 = i;
        if (this.A0K) {
            A7E((VC) AbstractC1747Ln.A02(this.A0C));
        }
        boolean z = (i3 & 1) != 0;
        if (this.A0M) {
            if (!z) {
                return;
            } else {
                this.A0M = false;
            }
        }
        long j2 = j + this.A08;
        if (this.A0J) {
            if (j2 < this.A09) {
                return;
            }
            if ((i3 & 1) == 0) {
                if (!this.A0H) {
                    MV.A07(A0C(50, 11, 74), A0C(0, 50, 9) + this.A0D);
                    this.A0H = true;
                }
                i3 |= 1;
            }
        }
        if (this.A0I) {
            if (!z || !A0M(j2)) {
                return;
            } else {
                this.A0I = false;
            }
        }
        A0G(j2, i3, (this.A0V.A09() - ((long) i2)) - ((long) flags), i2, zn);
    }

    @Override // com.facebook.ads.redexgen.X.ZP
    @MetaExoPlayerCustomization
    public final void ALz(Uri uri) {
        this.A0A = uri;
    }
}
