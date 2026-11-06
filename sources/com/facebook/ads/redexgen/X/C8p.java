package com.facebook.ads.redexgen.X;

import android.net.Uri;
import android.os.Handler;
import com.facebook.ads.androidx.media3.extractor.metadata.icy.IcyHeaders;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8p, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C8p implements InterfaceC1888Rl, InterfaceC2069Yw, X4<C1886Rj>, X8, VB {
    public static byte[] A0e;
    public static String[] A0f = {"HBBlPsqGeET7DuTBobJ6q6d8HMPjbTur", "tVXkzOcWE4KqEP8GR5IDvdJ", "WunBoZwErb3KjhbC4DTXDk0N", "X40TLSCiBs9RpCHiwR3jRJe9ZBCWaXj3", "NJegO1Vjlbxq2kODAs2GUONQL6B8lk2C", "J0BgCPOewip9mZAwvZWu1UFJiSfKLrdz", "eCXZHu2If1eHwalkwZlLOwEkK0SadJt4", "QP9wMapQKpVcF6hMAqhiAWSjk3a4jcrM"};
    public static final VC A0g;
    public static final Map<String, String> A0h;
    public int A00;
    public int A01;
    public int A02;
    public long A03;
    public long A04;
    public long A05;
    public InterfaceC1889Rm A06;
    public V6 A07;
    public ZK A08;
    public IcyHeaders A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public boolean A0D;
    public boolean A0E;
    public boolean A0F;
    public boolean A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public V5[] A0K;
    public C1878Rb[] A0L;
    public final long A0M;
    public final Uri A0N;
    public final Handler A0O;
    public final C1756Lx A0P;
    public final TE A0Q;
    public final C1892Rp A0R;
    public final InterfaceC1897Ru A0S;
    public final C1972Uu A0T;
    public final InterfaceC1977Uz A0U;
    public final V4 A0V;
    public final InterfaceC2012Wm A0W;
    public final X1 A0X;
    public final C1862Ql A0Y;
    public final Runnable A0Z;
    public final Runnable A0a;
    public final String A0b;
    public final boolean A0c;

    @MetaExoPlayerCustomization
    public final boolean A0d;

    public static String A0B(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0e, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 117);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0I() {
        A0e = new byte[]{-67, 1, 27, 49, -27, 5, 29, 44, 25, -4, 25, 44, 25, 55, 90, 76, 79, 80, 93, 37, 59, 93, 90, 82, 93, 80, 94, 94, 84, 97, 80, 56, 80, 79, 84, 76, 59, 80, 93, 84, 90, 79, 55, 90, 76, 79, 84, 89, 82, 11, 81, 84, 89, 84, 94, 83, 80, 79, 11, 77, 80, 81, 90, 93, 80, 11, 91, 93, 80, 91, 76, 93, 76, 95, 84, 90, 89, 11, 84, 94, 11, 78, 90, 88, 91, 87, 80, 95, 80, 25, 2, 37, 23, 26, 31, 36, 29, -42, 28, 31, 36, 31, 41, 30, 27, 26, -42, 24, 27, 28, 37, 40, 27, -42, 38, 40, 27, 38, 23, 40, 23, 42, 31, 37, 36, -42, 31, 41, -42, 25, 37, 35, 38, 34, 27, 42, 27, -28, -42, 11, 8, -1, -16, -42, 26, 41, 41, 37, 34, 28, 26, 45, 34, 40, 39, -24, 49, -26, 34, 28, 50, 39, 33, 55, 88, 95, 86, 86};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c3  */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long AKR(com.facebook.ads.redexgen.X.RA[] r13, boolean[] r14, com.facebook.ads.redexgen.X.VF[] r15, boolean[] r16, long r17) {
        /*
            Method dump skipped, instruction units count: 353
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C8p.AKR(com.facebook.ads.redexgen.X.RA[], boolean[], com.facebook.ads.redexgen.X.VF[], boolean[], long):long");
    }

    static {
        A0I();
        A0h = A0D();
        A0g = new C1714Ke().A0y(A0B(161, 3, 73)).A11(A0B(144, 17, 68)).A14();
    }

    public C8p(Uri uri, TE te, InterfaceC1977Uz interfaceC1977Uz, InterfaceC1897Ru interfaceC1897Ru, C1892Rp c1892Rp, X1 x1, C1972Uu c1972Uu, V4 v4, InterfaceC2012Wm interfaceC2012Wm, String str, int i, XN xn) {
        C1862Ql c1862Ql;
        this.A0N = uri;
        this.A0Q = te;
        this.A0S = interfaceC1897Ru;
        this.A0R = c1892Rp;
        this.A0X = x1;
        this.A0T = c1972Uu;
        this.A0V = v4;
        this.A0W = interfaceC2012Wm;
        this.A0b = str;
        this.A0M = i;
        if (xn != null) {
            c1862Ql = new C1862Ql(xn);
        } else {
            c1862Ql = new C1862Ql(A0B(13, 29, Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE));
        }
        this.A0Y = c1862Ql;
        this.A0U = interfaceC1977Uz;
        this.A0P = new C1756Lx();
        this.A0Z = new Runnable() { // from class: com.facebook.ads.redexgen.X.V2
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A0F();
            }
        };
        this.A0a = new Runnable() { // from class: com.facebook.ads.redexgen.X.V3
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A0b();
            }
        };
        this.A0O = N1.A0Y();
        this.A0K = new V5[0];
        this.A0L = new C1878Rb[0];
        this.A05 = -9223372036854775807L;
        this.A03 = -9223372036854775807L;
        this.A00 = 1;
        this.A0d = XL.A03(XQ.A0o) || XL.A03(XQ.A2M);
        this.A0c = XL.A03(XQ.A0q);
    }

    private int A00() {
        int i = 0;
        for (C1878Rb c1878Rb : this.A0L) {
            int iA0P = c1878Rb.A0P();
            String[] strArr = A0f;
            String str = strArr[0];
            String str2 = strArr[3];
            int iCharAt = str.charAt(30);
            int extractedSamplesCount = str2.charAt(30);
            if (iCharAt == extractedSamplesCount) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0f;
            strArr2[1] = "I2xpzyGM5ATgcN45iQDZCvu";
            strArr2[2] = "yexe01l01fJGTtt57Z6g4PKS";
            i += iA0P;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long A03(boolean r8) {
        /*
            r7 = this;
            r1 = -9223372036854775808
            r5 = 0
        L3:
            com.facebook.ads.redexgen.X.Rb[] r0 = r7.A0L
            int r0 = r0.length
            if (r5 >= r0) goto L4d
            if (r8 != 0) goto L3e
            com.facebook.ads.redexgen.X.V6 r0 = r7.A07
            java.lang.Object r0 = com.facebook.ads.redexgen.X.AbstractC1747Ln.A01(r0)
            com.facebook.ads.redexgen.X.V6 r0 = (com.facebook.ads.redexgen.X.V6) r0
            boolean[] r6 = r0.A01
            java.lang.String[] r4 = com.facebook.ads.redexgen.X.C8p.A0f
            r0 = 7
            r3 = r4[r0]
            r0 = 4
            r4 = r4[r0]
            r0 = 16
            char r3 = r3.charAt(r0)
            char r0 = r4.charAt(r0)
            if (r3 == r0) goto L2e
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L2e:
            java.lang.String[] r4 = com.facebook.ads.redexgen.X.C8p.A0f
            java.lang.String r3 = "2TCzKTUAeKHOFhOgA84o9m2gDHHw0blQ"
            r0 = 7
            r4[r0] = r3
            java.lang.String r3 = "J2VIIiQ12N46iucbAIsllz4rrLWVfcOQ"
            r0 = 4
            r4[r0] = r3
            boolean r0 = r6[r5]
            if (r0 == 0) goto L4a
        L3e:
            com.facebook.ads.redexgen.X.Rb[] r0 = r7.A0L
            r0 = r0[r5]
            long r3 = r0.A0T()
            long r1 = java.lang.Math.max(r1, r3)
        L4a:
            int r5 = r5 + 1
            goto L3
        L4d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C8p.A03(boolean):long");
    }

    private C1878Rb A06(V5 v5) {
        int length = this.A0L.length;
        for (int i = 0; i < length; i++) {
            if (v5.equals(this.A0K[i])) {
                return this.A0L[i];
            }
        }
        C1878Rb c1878RbA0B = C1878Rb.A0B(this.A0W, this.A0S, this.A0R);
        c1878RbA0B.A0d(this);
        int trackCount = length + 1;
        V5[] v5Arr = (V5[]) Arrays.copyOf(this.A0K, trackCount);
        v5Arr[length] = v5;
        this.A0K = (V5[]) N1.A1H(v5Arr);
        int trackCount2 = length + 1;
        C1878Rb[] c1878RbArr = (C1878Rb[]) Arrays.copyOf(this.A0L, trackCount2);
        c1878RbArr[length] = c1878RbA0B;
        this.A0L = (C1878Rb[]) N1.A1H(c1878RbArr);
        return c1878RbA0B;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.X4
    /* JADX INFO: renamed from: A07, reason: merged with bridge method [inline-methods] */
    public final X5 AFi(C1886Rj c1886Rj, long j, long j2, IOException iOException, int i) {
        X5 x5A01;
        AnonymousClass99 anonymousClass99 = c1886Rj.A08;
        Uc uc = new Uc(c1886Rj.A05, c1886Rj.A01, anonymousClass99.A01(), anonymousClass99.A02(), j, j2, anonymousClass99.A00());
        long jA9X = this.A0X.A9X(new X0(uc, new C1956Ue(1, -1, null, 0, null, N1.A0P(c1886Rj.A00), N1.A0P(this.A03)), iOException, i));
        if (jA9X == -9223372036854775807L) {
            x5A01 = C1862Ql.A06;
        } else {
            int iA00 = A00();
            boolean z = iA00 > this.A02;
            if (A0U(c1886Rj, iA00)) {
                x5A01 = C1862Ql.A01(z, jA9X);
            } else {
                x5A01 = C1862Ql.A05;
            }
        }
        this.A0T.A07(uc, 1, -1, null, 0, null, c1886Rj.A00, this.A03, iOException, !x5A01.A02());
        return x5A01;
    }

    public static Map<String, String> A0D() {
        HashMap map = new HashMap();
        map.put(A0B(1, 12, 67), A0B(0, 1, 23));
        Map<String, String> headers = Collections.unmodifiableMap(map);
        return headers;
    }

    @EnsuresNonNull
    private void A0E() {
        AbstractC1747Ln.A08(this.A0G);
        AbstractC1747Ln.A01(this.A07);
        AbstractC1747Ln.A01(this.A08);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void A0F() {
        /*
            Method dump skipped, instruction units count: 331
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C8p.A0F():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0G() {
        this.A0O.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.V1
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A0c();
            }
        });
    }

    private void A0H() {
        C1886Rj c1886Rj = new C1886Rj(this, this.A0N, this.A0Q, this.A0U, this, this.A0P);
        if (this.A0G) {
            AbstractC1747Ln.A08(A0S());
            if (this.A03 != -9223372036854775807L && this.A05 >= this.A03) {
                this.A0D = true;
                this.A05 = -9223372036854775807L;
                return;
            }
            c1886Rj.A04(((ZK) AbstractC1747Ln.A01(this.A08)).A9e(this.A05).A00.A00, this.A05);
            for (C1878Rb c1878Rb : this.A0L) {
                c1878Rb.A0b(this.A05);
            }
            this.A05 = -9223372036854775807L;
        }
        this.A02 = A00();
        this.A0T.A06(new Uc(c1886Rj.A05, c1886Rj.A01, this.A0Y.A08(c1886Rj, this, this.A0X.A9C(this.A00))), 1, -1, null, 0, null, c1886Rj.A00, this.A03, 0);
    }

    private final void A0J() throws IOException {
        this.A0Y.A0B(this.A0X.A9C(this.A00));
    }

    private void A0K(int i) {
        A0E();
        boolean[] zArr = this.A07.A03;
        if (!zArr[i]) {
            VC vcA08 = this.A07.A00.A05(i).A08(0);
            this.A0T.A03(L8.A01(vcA08.A0W), vcA08, 0, null, this.A04);
            String[] strArr = A0f;
            if (strArr[5].charAt(17) != strArr[6].charAt(17)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0f;
            strArr2[7] = "f5eiRY8LvGf9norZAId7lLA2Bu57nAMs";
            strArr2[4] = "ReM94Qk9jjdQJfe6Ak1PIPDJBC3IwAlL";
            zArr[i] = true;
        }
    }

    private void A0L(int i) {
        A0E();
        boolean[] zArr = this.A07.A02;
        if (this.A0F && zArr[i]) {
            if (this.A0L[i].A0g(false)) {
                return;
            }
            this.A05 = 0L;
            this.A0F = false;
            this.A0E = true;
            this.A04 = 0L;
            this.A02 = 0;
            for (C1878Rb c1878Rb : this.A0L) {
                c1878Rb.A0Z();
            }
            ((InterfaceC1889Rm) AbstractC1747Ln.A01(this.A06)).AEW(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.X4
    /* JADX INFO: renamed from: A0M, reason: merged with bridge method [inline-methods] */
    public final void AFh(C1886Rj c1886Rj, long j, long j2) {
        long largestQueuedTimestampUs;
        if (this.A03 == -9223372036854775807L && this.A08 != null) {
            boolean zABR = this.A08.ABR();
            long jA03 = A03(true);
            if (jA03 == Long.MIN_VALUE) {
                largestQueuedTimestampUs = 0;
            } else {
                largestQueuedTimestampUs = 10000 + jA03;
            }
            this.A03 = largestQueuedTimestampUs;
            this.A0V.AH7(this.A03, zABR, this.A0C);
        }
        AnonymousClass99 anonymousClass99 = c1886Rj.A08;
        this.A0T.A08(new Uc(c1886Rj.A05, c1886Rj.A01, anonymousClass99.A01(), anonymousClass99.A02(), j, j2, anonymousClass99.A00()), 1, -1, null, 0, null, c1886Rj.A00, this.A03, c1886Rj, null);
        this.A0D = true;
        ((InterfaceC1889Rm) AbstractC1747Ln.A01(this.A06)).AEW(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.X4
    /* JADX INFO: renamed from: A0N, reason: merged with bridge method [inline-methods] */
    public final void AFl(C1886Rj c1886Rj, long j, long j2, int i) {
        AnonymousClass99 dataSource = c1886Rj.A08;
        this.A0T.A06(i == 0 ? new Uc(c1886Rj.A05, c1886Rj.A01, j) : new Uc(c1886Rj.A05, c1886Rj.A01, dataSource.A01(), dataSource.A02(), j, j2, dataSource.A00()), 1, -1, null, 0, null, c1886Rj.A00, this.A03, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.X4
    /* JADX INFO: renamed from: A0O, reason: merged with bridge method [inline-methods] */
    public final void AFf(C1886Rj c1886Rj, long j, long j2, boolean z) {
        AnonymousClass99 dataSource = c1886Rj.A08;
        this.A0T.A05(new Uc(c1886Rj.A05, c1886Rj.A01, dataSource.A01(), dataSource.A02(), j, j2, dataSource.A00()), 1, -1, null, 0, null, c1886Rj.A00, this.A03);
        if (!z) {
            for (C1878Rb c1878Rb : this.A0L) {
                c1878Rb.A0Z();
            }
            if (this.A01 > 0) {
                ((InterfaceC1889Rm) AbstractC1747Ln.A01(this.A06)).AEW(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A0R, reason: merged with bridge method [inline-methods] */
    public void A0e(ZK zk) {
        this.A08 = zk;
        this.A03 = zk.A8U();
        this.A0C = !this.A0B && zk.A8U() == -9223372036854775807L;
        this.A00 = this.A0C ? 7 : 1;
        this.A0V.AH7(this.A03, zk.ABR(), this.A0C);
        if (!this.A0G) {
            A0F();
        }
    }

    private boolean A0S() {
        return this.A05 != -9223372036854775807L;
    }

    private boolean A0T() {
        return this.A0E || A0S();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0036, code lost:
    
        if (r6 != (-9223372036854775807L)) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean A0U(com.facebook.ads.redexgen.X.C1886Rj r9, int r10) {
        /*
            r8 = this;
            boolean r0 = r8.A0B
            r5 = 1
            if (r0 != 0) goto L38
            com.facebook.ads.redexgen.X.ZK r0 = r8.A08
            if (r0 == 0) goto L41
            com.facebook.ads.redexgen.X.ZK r0 = r8.A08
            long r6 = r0.A8U()
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C8p.A0f
            r0 = 0
            r1 = r2[r0]
            r0 = 3
            r2 = r2[r0]
            r0 = 30
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L3b
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C8p.A0f
            java.lang.String r1 = "0tcNevJ0lQlG1CoRhtU3cPBxWgg75o6o"
            r0 = 0
            r2[r0] = r1
            java.lang.String r1 = "W0PdVUXyxqqOuIKxgyczFibo5jq8qUfX"
            r0 = 3
            r2[r0] = r1
            int r0 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r0 == 0) goto L41
        L38:
            r8.A02 = r10
            return r5
        L3b:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L41:
            boolean r0 = r8.A0G
            r6 = 0
            if (r0 == 0) goto L4f
            boolean r0 = r8.A0T()
            if (r0 != 0) goto L4f
            r8.A0F = r5
            return r6
        L4f:
            boolean r0 = r8.A0G
            r8.A0E = r0
            r2 = 0
            r8.A04 = r2
            r8.A02 = r6
            com.facebook.ads.redexgen.X.Rb[] r4 = r8.A0L
            int r1 = r4.length
        L5c:
            if (r6 >= r1) goto L66
            r0 = r4[r6]
            r0.A0Z()
            int r6 = r6 + 1
            goto L5c
        L66:
            com.facebook.ads.redexgen.X.C1886Rj.A05(r9, r2, r2)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C8p.A0U(com.facebook.ads.redexgen.X.Rj, int):boolean");
    }

    private boolean A0V(boolean[] zArr, long j) {
        int length = this.A0L.length;
        for (int i = 0; i < length; i++) {
            if (!this.A0L[i].A0f(j, false) && (zArr[i] || !this.A0A)) {
                return false;
            }
        }
        return true;
    }

    public final int A0X(int i, long j) {
        if (A0T()) {
            return 0;
        }
        A0K(i);
        C1878Rb c1878Rb = this.A0L[i];
        int iA0Q = c1878Rb.A0Q(j, this.A0D);
        c1878Rb.A0a(iA0Q);
        if (iA0Q == 0) {
            A0L(i);
        }
        return iA0Q;
    }

    public final int A0Y(int i, C1825Oo c1825Oo, T2 t2, int i2) {
        if (A0T()) {
            return -3;
        }
        A0K(i);
        int result = this.A0L[i].A0R(c1825Oo, t2, i2, this.A0D);
        if (result == -3) {
            A0L(i);
        }
        return result;
    }

    public final ZP A0Z() {
        return A06(new V5(0, true));
    }

    public final void A0a() {
        if (this.A0G) {
            for (C1878Rb c1878Rb : this.A0L) {
                c1878Rb.A0X();
            }
        }
        this.A0Y.A0C(this);
        this.A0O.removeCallbacksAndMessages(null);
        this.A06 = null;
        this.A0H = true;
    }

    public final /* synthetic */ void A0b() {
        if (!this.A0H) {
            ((InterfaceC1889Rm) AbstractC1747Ln.A01(this.A06)).AEW(this);
        }
    }

    public final /* synthetic */ void A0c() {
        this.A0B = true;
    }

    public final void A0d(int i) throws IOException {
        this.A0L[i].A0W();
        A0J();
    }

    public final boolean A0f(int i) {
        return !A0T() && this.A0L[i].A0g(this.A0D);
    }

    @Override // com.facebook.ads.redexgen.X.VJ
    @MetaExoPlayerCustomization
    public final void A5O(long j) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    public final boolean A5l(long j) {
        if (this.A0D || this.A0Y.A0D() || this.A0F) {
            return false;
        }
        if (this.A0G && this.A01 == 0) {
            return false;
        }
        boolean zA04 = this.A0P.A04();
        boolean continuedLoading = this.A0Y.A0E();
        if (!continuedLoading) {
            A0H();
            return true;
        }
        return zA04;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    public final void A6Z(long j, boolean z) {
        A0E();
        if (A0S()) {
            return;
        }
        boolean[] zArr = this.A07.A01;
        int length = this.A0L.length;
        for (int i = 0; i < length; i++) {
            this.A0L[i].A0c(j, z, zArr[i]);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2069Yw
    public final void A6x() {
        this.A0I = true;
        this.A0O.post(this.A0Z);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    public final long A7R(long j, C1841Pj c1841Pj) {
        A0E();
        if (!this.A08.ABR()) {
            return 0L;
        }
        ZJ zjA9e = this.A08.A9e(j);
        return c1841Pj.A00(j, zjA9e.A00.A01, zjA9e.A01.A01);
    }

    @Override // com.facebook.ads.redexgen.X.VJ
    @MetaExoPlayerCustomization
    public final long A7g(long j) {
        if (this.A0d && !this.A0G) {
            return 0L;
        }
        if (this.A0D) {
            return this.A03 - j;
        }
        return A7i() - j;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    public final long A7i() {
        A0E();
        if (this.A0D || this.A01 == 0) {
            return Long.MIN_VALUE;
        }
        if (A0S()) {
            return this.A05;
        }
        long largestQueuedTimestampUs = Long.MAX_VALUE;
        if (this.A0A) {
            int i = this.A0L.length;
            for (int i2 = 0; i2 < i; i2++) {
                if (this.A07.A02[i2] && this.A07.A01[i2] && !this.A0L[i2].A0e()) {
                    largestQueuedTimestampUs = Math.min(largestQueuedTimestampUs, this.A0L[i2].A0T());
                }
            }
        }
        if (largestQueuedTimestampUs == Long.MAX_VALUE) {
            largestQueuedTimestampUs = A03(false);
        }
        if (largestQueuedTimestampUs == Long.MIN_VALUE) {
            return this.A04;
        }
        return largestQueuedTimestampUs;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    public final long A9E() {
        return A7i();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    public final RY A9z() {
        A0E();
        return this.A07.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    public final void ADJ() throws IOException {
        A0J();
        if (this.A0D && !this.A0G) {
            if (this.A0c) {
                throw L9.A01(A0B(90, 54, 65) + (this.A0N != null ? this.A0N.toString() : A0B(164, 4, Sdk.SDKError.Reason.ASSET_FAILED_STATUS_CODE_VALUE)), null);
            }
            throw L9.A01(A0B(42, 48, Sdk.SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE), null);
        }
    }

    @Override // com.facebook.ads.redexgen.X.X8
    public final void AFn() {
        for (C1878Rb c1878Rb : this.A0L) {
            c1878Rb.A0Y();
        }
        this.A0U.AIp();
    }

    @Override // com.facebook.ads.redexgen.X.VB
    public final void AHV(VC vc) {
        this.A0O.post(this.A0Z);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    public final void AII(InterfaceC1889Rm interfaceC1889Rm, long j) {
        this.A06 = interfaceC1889Rm;
        this.A0P.A04();
        A0H();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    public final long AId() {
        if (this.A0E) {
            if (this.A0D || A00() > this.A02) {
                this.A0E = false;
                return this.A04;
            }
            return -9223372036854775807L;
        }
        return -9223372036854775807L;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    public final void AIk(long j) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2069Yw
    public final void AKP(final ZK zk) {
        this.A0O.post(new Runnable() { // from class: com.facebook.ads.redexgen.X.V0
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.A0e(zk);
            }
        });
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1888Rl
    public final long AKQ(@MetaExoPlayerCustomization long j, boolean z) {
        A0E();
        boolean[] zArr = this.A07.A02;
        if (!this.A08.ABR()) {
            j = 0;
        }
        int i = 0;
        this.A0E = false;
        this.A04 = j;
        if (A0S()) {
            this.A05 = j;
            return j;
        }
        if (this.A00 != 7 && A0V(zArr, j)) {
            return j;
        }
        this.A0F = false;
        this.A05 = j;
        this.A0D = false;
        if (this.A0Y.A0E()) {
            C1878Rb[] c1878RbArr = this.A0L;
            int length = c1878RbArr.length;
            while (i < length) {
                c1878RbArr[i].A0V();
                i++;
            }
            this.A0Y.A09();
        } else {
            this.A0Y.A0A();
            C1878Rb[] c1878RbArr2 = this.A0L;
            int length2 = c1878RbArr2.length;
            while (i < length2) {
                c1878RbArr2[i].A0Z();
                i++;
            }
        }
        return j;
    }

    @Override // com.facebook.ads.redexgen.X.VJ
    @MetaExoPlayerCustomization
    public final void AKu(boolean z) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2069Yw
    public final ZP ALm(int i, int i2) {
        return A06(new V5(i, false));
    }

    @Override // com.facebook.ads.redexgen.X.VJ
    @MetaExoPlayerCustomization
    public final void ALv(byte b) {
    }
}
