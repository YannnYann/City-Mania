package ads_mobile_sdk;

import com.google.android.gms.common.api.Api;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class my {
    private static volatile int g = 100;
    int a;
    int b;
    int c;
    int d;
    Object e;
    private boolean f;

    public static long a(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static int b(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public abstract void a(int i) throws np1;

    public abstract void a(boolean z);

    public abstract int c();

    public abstract void c(int i);

    public abstract int e();

    public abstract int e(int i) throws np1;

    public abstract boolean f() throws IOException;

    public abstract boolean g(int i) throws IOException;

    public abstract boolean h() throws IOException;

    public abstract du i() throws IOException;

    public abstract double j() throws IOException;

    public abstract int k() throws IOException;

    public abstract int l() throws IOException;

    public abstract long m() throws IOException;

    public abstract float n() throws IOException;

    public abstract int o() throws IOException;

    public abstract long p() throws IOException;

    public abstract int q() throws IOException;

    public abstract int r() throws IOException;

    public abstract long s() throws IOException;

    public abstract int t() throws IOException;

    public abstract long u() throws IOException;

    public abstract String v() throws IOException;

    public abstract String w() throws IOException;

    public abstract int x() throws IOException;

    public abstract int y() throws IOException;

    public abstract long z() throws IOException;

    public void a() throws np1 {
        if (this.a + this.b >= this.c) {
            throw np1.i();
        }
    }

    public void b() throws np1 {
        if (this.b == 0) {
            a(0);
        }
    }

    private my() {
        this.c = g;
        this.d = Api.BaseClientBuilder.API_PRIORITY_OTHER;
        this.f = false;
    }

    public void A() throws IOException {
        int iX;
        do {
            iX = x();
            if (iX == 0) {
                return;
            }
            a();
            this.b++;
            this.b--;
        } while (g(iX));
    }

    public static my a(InputStream inputStream) {
        return a(inputStream, 4096);
    }

    public static my a(InputStream inputStream, int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("bufferSize must be > 0");
        }
        if (inputStream == null) {
            return a(yh1.a);
        }
        return new b(inputStream, i);
    }

    public static my a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public final int f(int i) {
        if (i >= 0) {
            int i2 = this.c;
            this.c = i;
            return i2;
        }
        throw new IllegalArgumentException("Recursion limit cannot be negative: " + i);
    }

    public final int d() {
        return (this.c - this.a) - this.b;
    }

    public static my a(byte[] bArr, int i, int i2) {
        return a(bArr, i, i2, false);
    }

    public static my a(Iterable<ByteBuffer> iterable, boolean z) {
        return a(new up1(iterable));
    }

    public static my a(byte[] bArr, int i, int i2, boolean z) {
        a aVar = new a(bArr, i, i2, z);
        try {
            aVar.e(i2);
            return aVar;
        } catch (np1 e) {
            throw new IllegalArgumentException(e);
        }
    }

    public final int g() throws IOException {
        int iQ = q();
        a();
        int iE = e(iQ);
        this.a++;
        return iE;
    }

    public static final class a extends my {
        private final byte[] h;
        private final int i;
        private final boolean j;
        private int k;
        private int l;
        private int m;
        private int n;
        private boolean o;
        private int p;

        private a(byte[] bArr, int i, int i2, boolean z) {
            super();
            this.p = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            this.h = bArr;
            int i3 = i2 + i;
            this.i = i3;
            this.k = i3;
            this.l = i;
            this.m = i;
            this.j = z;
        }

        @Override // ads_mobile_sdk.my
        public int x() throws IOException {
            if (f()) {
                this.n = 0;
                return 0;
            }
            int iQ = q();
            this.n = iQ;
            if (u24.a(iQ) != 0) {
                return this.n;
            }
            throw np1.c();
        }

        @Override // ads_mobile_sdk.my
        public void a(int i) throws np1 {
            if (this.n != i) {
                throw np1.b();
            }
        }

        @Override // ads_mobile_sdk.my
        public boolean g(int i) throws IOException {
            int iB = u24.b(i);
            if (iB == 0) {
                H();
                return true;
            }
            if (iB == 1) {
                j(8);
                return true;
            }
            if (iB == 2) {
                j(q());
                return true;
            }
            if (iB == 3) {
                A();
                a(u24.a(u24.a(i), 4));
                return true;
            }
            if (iB == 4) {
                b();
                return false;
            }
            if (iB != 5) {
                throw np1.e();
            }
            j(4);
            return true;
        }

        @Override // ads_mobile_sdk.my
        public double j() throws IOException {
            return Double.longBitsToDouble(D());
        }

        @Override // ads_mobile_sdk.my
        public float n() throws IOException {
            return Float.intBitsToFloat(C());
        }

        @Override // ads_mobile_sdk.my
        public long z() throws IOException {
            return F();
        }

        @Override // ads_mobile_sdk.my
        public long p() throws IOException {
            return F();
        }

        @Override // ads_mobile_sdk.my
        public int o() throws IOException {
            return q();
        }

        @Override // ads_mobile_sdk.my
        public long m() throws IOException {
            return D();
        }

        @Override // ads_mobile_sdk.my
        public int l() throws IOException {
            return C();
        }

        @Override // ads_mobile_sdk.my
        public boolean h() throws IOException {
            return F() != 0;
        }

        @Override // ads_mobile_sdk.my
        public String v() throws IOException {
            int iQ = q();
            if (iQ > 0) {
                int i = this.k;
                int i2 = this.l;
                if (iQ <= i - i2) {
                    String str = new String(this.h, i2, iQ, StandardCharsets.UTF_8);
                    this.l += iQ;
                    return str;
                }
            }
            if (iQ == 0) {
                return "";
            }
            if (iQ < 0) {
                throw np1.g();
            }
            throw np1.l();
        }

        @Override // ads_mobile_sdk.my
        public String w() throws IOException {
            int iQ = q();
            if (iQ > 0) {
                int i = this.k;
                int i2 = this.l;
                if (iQ <= i - i2) {
                    String strA = hx3.a(this.h, i2, iQ);
                    this.l += iQ;
                    return strA;
                }
            }
            if (iQ == 0) {
                return "";
            }
            if (iQ <= 0) {
                throw np1.g();
            }
            throw np1.l();
        }

        private du b(boolean z) throws IOException {
            du duVarA;
            int iQ = q();
            if (iQ > 0) {
                int i = this.k;
                int i2 = this.l;
                if (iQ <= i - i2) {
                    if (this.j && this.o) {
                        duVarA = du.b(this.h, i2, iQ, z);
                    } else {
                        duVarA = du.a(this.h, i2, iQ, z);
                    }
                    this.l += iQ;
                    return duVarA;
                }
            }
            if (iQ == 0) {
                return du.b;
            }
            return du.a(h(iQ), z);
        }

        @Override // ads_mobile_sdk.my
        public du i() throws IOException {
            return b(false);
        }

        @Override // ads_mobile_sdk.my
        public int y() throws IOException {
            return q();
        }

        @Override // ads_mobile_sdk.my
        public int k() throws IOException {
            return q();
        }

        @Override // ads_mobile_sdk.my
        public int r() throws IOException {
            return C();
        }

        @Override // ads_mobile_sdk.my
        public long s() throws IOException {
            return D();
        }

        @Override // ads_mobile_sdk.my
        public int t() throws IOException {
            return my.b(q());
        }

        @Override // ads_mobile_sdk.my
        public long u() throws IOException {
            return my.a(F());
        }

        @Override // ads_mobile_sdk.my
        public int q() throws IOException {
            try {
                int iE = E();
                if (this.l <= this.k) {
                    return iE;
                }
                throw np1.l();
            } catch (np1 e) {
                if (this.l > this.k) {
                    throw np1.l();
                }
                throw e;
            } catch (IndexOutOfBoundsException unused) {
                throw np1.l();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x0069 A[PHI: r3
          0x0069: PHI (r3v6 int) = (r3v5 int), (r3v10 int), (r3v12 int) binds: [B:16:0x0041, B:20:0x004d, B:24:0x0059] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private int E() throws java.io.IOException {
            /*
                r7 = this;
                int r0 = r7.l
                byte[] r1 = r7.h
                int r2 = r0 + 1
                r3 = r1[r0]
                if (r3 < 0) goto Lc
                goto L6f
            Lc:
                int r4 = r0 + 2
                r2 = r1[r2]
                int r2 = r2 << 7
                r2 = r2 ^ r3
                if (r2 >= 0) goto L19
                r3 = r2 ^ (-128(0xffffffffffffff80, float:NaN))
            L17:
                r2 = r4
                goto L6f
            L19:
                int r3 = r0 + 3
                r4 = r1[r4]
                int r4 = r4 << 14
                r2 = r2 ^ r4
                if (r2 < 0) goto L27
                r0 = r2 ^ 16256(0x3f80, float:2.278E-41)
                r2 = r3
                r3 = r0
                goto L6f
            L27:
                int r4 = r0 + 4
                r3 = r1[r3]
                int r3 = r3 << 21
                r2 = r2 ^ r3
                if (r2 >= 0) goto L36
                r0 = -2080896(0xffffffffffe03f80, float:NaN)
                r3 = r2 ^ r0
                goto L17
            L36:
                int r3 = r0 + 5
                r4 = r1[r4]
                int r5 = r4 << 28
                r2 = r2 ^ r5
                r5 = 266354560(0xfe03f80, float:2.2112565E-29)
                r2 = r2 ^ r5
                if (r4 >= 0) goto L69
                int r4 = r0 + 6
                r3 = r1[r3]
                if (r3 >= 0) goto L6d
                int r3 = r0 + 7
                r4 = r1[r4]
                if (r4 >= 0) goto L69
                int r4 = r0 + 8
                r3 = r1[r3]
                if (r3 >= 0) goto L6d
                int r3 = r0 + 9
                r4 = r1[r4]
                if (r4 >= 0) goto L69
                int r0 = r0 + 10
                r1 = r1[r3]
                if (r1 < 0) goto L64
                r3 = r2
                r2 = r0
                goto L6f
            L64:
                ads_mobile_sdk.np1 r0 = ads_mobile_sdk.np1.f()
                throw r0
            L69:
                r6 = r3
                r3 = r2
                r2 = r6
                goto L6f
            L6d:
                r3 = r2
                goto L17
            L6f:
                r7.l = r2
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.my.a.E():int");
        }

        private void H() throws IOException {
            if (this.k - this.l >= 10) {
                I();
            } else {
                J();
            }
        }

        private void I() throws IOException {
            for (int i = 0; i < 10; i++) {
                byte[] bArr = this.h;
                int i2 = this.l;
                this.l = i2 + 1;
                if (bArr[i2] >= 0) {
                    return;
                }
            }
            throw np1.f();
        }

        private void J() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (B() >= 0) {
                    return;
                }
            }
            throw np1.f();
        }

        public long F() throws IOException {
            long j;
            long j2;
            long j3;
            int i = this.l;
            int i2 = this.k;
            if (i2 != i) {
                byte[] bArr = this.h;
                int i3 = i + 1;
                byte b = bArr[i];
                if (b >= 0) {
                    this.l = i3;
                    return b;
                }
                if (i2 - i3 >= 9) {
                    int i4 = i + 2;
                    int i5 = (bArr[i3] << 7) ^ b;
                    if (i5 < 0) {
                        j = i5 ^ (-128);
                    } else {
                        int i6 = i + 3;
                        int i7 = (bArr[i4] << 14) ^ i5;
                        if (i7 >= 0) {
                            j = i7 ^ 16256;
                            i4 = i6;
                        } else {
                            int i8 = i + 4;
                            int i9 = i7 ^ (bArr[i6] << 21);
                            if (i9 < 0) {
                                long j4 = (-2080896) ^ i9;
                                i4 = i8;
                                j = j4;
                            } else {
                                long j5 = i9;
                                i4 = i + 5;
                                long j6 = j5 ^ (((long) bArr[i8]) << 28);
                                if (j6 >= 0) {
                                    j2 = 266354560;
                                } else {
                                    int i10 = i + 6;
                                    long j7 = j6 ^ (((long) bArr[i4]) << 35);
                                    if (j7 < 0) {
                                        j3 = -34093383808L;
                                    } else {
                                        i4 = i + 7;
                                        j6 = j7 ^ (((long) bArr[i10]) << 42);
                                        if (j6 >= 0) {
                                            j2 = 4363953127296L;
                                        } else {
                                            i10 = i + 8;
                                            j7 = j6 ^ (((long) bArr[i4]) << 49);
                                            if (j7 < 0) {
                                                j3 = -558586000294016L;
                                            } else {
                                                i4 = i + 9;
                                                j6 = j7 ^ (((long) bArr[i10]) << 56);
                                                if (j6 >= 0) {
                                                    j2 = 71499008037633920L;
                                                } else {
                                                    byte b2 = bArr[i4];
                                                    long j8 = j6 ^ (((long) b2) << 63);
                                                    if (j8 >= 0) {
                                                        int i11 = i + 10;
                                                        if (b2 >= 0) {
                                                            j = j8 ^ (-9151873028817141888L);
                                                            i4 = i11;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    j = j7 ^ j3;
                                    i4 = i10;
                                }
                                j = j6 ^ j2;
                            }
                        }
                    }
                    this.l = i4;
                    return j;
                }
            }
            return G();
        }

        public long G() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                byte B = B();
                j |= ((long) (B & 127)) << i;
                if ((B & 128) == 0) {
                    return j;
                }
            }
            throw np1.f();
        }

        public int C() throws IOException {
            int i = this.l;
            if (this.k - i >= 4) {
                byte[] bArr = this.h;
                this.l = i + 4;
                return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
            }
            throw np1.l();
        }

        public long D() throws IOException {
            int i = this.l;
            if (this.k - i >= 8) {
                byte[] bArr = this.h;
                this.l = i + 8;
                return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
            }
            throw np1.l();
        }

        @Override // ads_mobile_sdk.my
        public int c() {
            int i = this.p;
            if (i == Integer.MAX_VALUE) {
                return -1;
            }
            return i - this.l;
        }

        @Override // ads_mobile_sdk.my
        public boolean f() throws IOException {
            return this.l == this.k;
        }

        @Override // ads_mobile_sdk.my
        public int e() {
            return this.l - this.m;
        }

        public byte B() throws IOException {
            int i = this.l;
            if (i != this.k) {
                byte[] bArr = this.h;
                this.l = i + 1;
                return bArr[i];
            }
            throw np1.l();
        }

        @Override // ads_mobile_sdk.my
        public void a(boolean z) {
            this.o = z;
        }

        public void j(int i) throws IOException {
            if (i >= 0) {
                int i2 = this.k;
                int i3 = this.l;
                if (i <= i2 - i3) {
                    this.l = i3 + i;
                    return;
                }
            }
            if (i < 0) {
                throw np1.g();
            }
            throw np1.l();
        }

        public byte[] h(int i) throws IOException {
            if (i > 0) {
                int i2 = this.k;
                int i3 = this.l;
                if (i <= i2 - i3) {
                    int i4 = i + i3;
                    this.l = i4;
                    return Arrays.copyOfRange(this.h, i3, i4);
                }
            }
            if (i > 0) {
                throw np1.l();
            }
            if (i == 0) {
                return yh1.a;
            }
            throw np1.g();
        }

        private void i(int i) {
            this.p = i;
            int i2 = this.i;
            if (i <= i2) {
                this.k = i;
            } else {
                this.k = i2;
            }
        }

        @Override // ads_mobile_sdk.my
        public int e(int i) throws np1 {
            if (i >= 0) {
                int i2 = this.l;
                int i3 = i2 + i;
                if (i3 < 0) {
                    int i4 = i2 - this.m;
                    i3 = Api.BaseClientBuilder.API_PRIORITY_OTHER;
                    if (i > Api.BaseClientBuilder.API_PRIORITY_OTHER - i4) {
                        throw np1.k();
                    }
                }
                int i5 = this.p;
                if (i3 <= i5) {
                    i(i3);
                    return i5;
                }
                throw np1.l();
            }
            throw np1.g();
        }

        @Override // ads_mobile_sdk.my
        public void c(int i) {
            i(i);
        }
    }

    public final void d(int i) throws IOException {
        a(0);
        this.a--;
        if (c() == 0) {
            c(i);
            return;
        }
        throw np1.l();
    }

    public static final class b extends my {
        private final InputStream h;
        private final byte[] i;
        private int j;
        private int k;
        private int l;
        private int m;
        private int n;
        private int o;

        private static boolean a(int i, int i2, int i3) {
            return i3 < i || i2 > i3 - i;
        }

        @Override // ads_mobile_sdk.my
        public void a(boolean z) {
        }

        private b(InputStream inputStream, int i) {
            super();
            this.o = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            yh1.a(inputStream, "input");
            i = i < 8 ? 8 : i;
            this.h = inputStream;
            this.i = new byte[i];
            this.j = 0;
            this.l = 0;
            this.n = 0;
        }

        private static int b(InputStream inputStream) throws IOException {
            try {
                return inputStream.available();
            } catch (np1 e) {
                e.j();
                throw e;
            }
        }

        @Override // ads_mobile_sdk.my
        public int x() throws IOException {
            if (f()) {
                this.m = 0;
                return 0;
            }
            int iQ = q();
            this.m = iQ;
            if (u24.a(iQ) != 0) {
                return this.m;
            }
            throw np1.c();
        }

        @Override // ads_mobile_sdk.my
        public void a(int i) throws np1 {
            if (this.m != i) {
                throw np1.b();
            }
        }

        @Override // ads_mobile_sdk.my
        public boolean g(int i) throws IOException {
            int iB = u24.b(i);
            if (iB == 0) {
                H();
                return true;
            }
            if (iB == 1) {
                k(8);
                return true;
            }
            if (iB == 2) {
                k(q());
                return true;
            }
            if (iB == 3) {
                A();
                a(u24.a(u24.a(i), 4));
                return true;
            }
            if (iB == 4) {
                b();
                return false;
            }
            if (iB != 5) {
                throw np1.e();
            }
            k(4);
            return true;
        }

        @Override // ads_mobile_sdk.my
        public double j() throws IOException {
            return Double.longBitsToDouble(D());
        }

        @Override // ads_mobile_sdk.my
        public float n() throws IOException {
            return Float.intBitsToFloat(C());
        }

        @Override // ads_mobile_sdk.my
        public long z() throws IOException {
            return E();
        }

        @Override // ads_mobile_sdk.my
        public long p() throws IOException {
            return E();
        }

        @Override // ads_mobile_sdk.my
        public int o() throws IOException {
            return q();
        }

        @Override // ads_mobile_sdk.my
        public long m() throws IOException {
            return D();
        }

        @Override // ads_mobile_sdk.my
        public int l() throws IOException {
            return C();
        }

        @Override // ads_mobile_sdk.my
        public boolean h() throws IOException {
            return E() != 0;
        }

        @Override // ads_mobile_sdk.my
        public String v() throws IOException {
            int iQ = q();
            if (iQ > 0) {
                int i = this.j;
                int i2 = this.l;
                if (iQ <= i - i2) {
                    String str = new String(this.i, i2, iQ, StandardCharsets.UTF_8);
                    this.l += iQ;
                    return str;
                }
            }
            if (iQ == 0) {
                return "";
            }
            if (iQ >= 0) {
                if (iQ <= this.j) {
                    j(iQ);
                    String str2 = new String(this.i, this.l, iQ, StandardCharsets.UTF_8);
                    this.l += iQ;
                    return str2;
                }
                return new String(b(iQ, false), StandardCharsets.UTF_8);
            }
            throw np1.g();
        }

        @Override // ads_mobile_sdk.my
        public String w() throws IOException {
            byte[] bArrB;
            int iQ = q();
            int i = this.l;
            int i2 = this.j;
            if (iQ <= i2 - i && iQ > 0) {
                bArrB = this.i;
                this.l = i + iQ;
            } else {
                if (iQ == 0) {
                    return "";
                }
                if (iQ < 0) {
                    throw np1.g();
                }
                i = 0;
                if (iQ <= i2) {
                    j(iQ);
                    bArrB = this.i;
                    this.l = iQ;
                } else {
                    bArrB = b(iQ, false);
                }
            }
            return hx3.a(bArrB, i, iQ);
        }

        @Override // ads_mobile_sdk.my
        public du i() throws IOException {
            return b(false);
        }

        private List<byte[]> i(int i) throws IOException {
            ArrayList arrayList = new ArrayList();
            while (i > 0) {
                int iMin = Math.min(i, 4096);
                byte[] bArr = new byte[iMin];
                int i2 = 0;
                while (i2 < iMin) {
                    int iA = a(this.h, bArr, i2, iMin - i2);
                    if (iA != -1) {
                        this.n += iA;
                        i2 += iA;
                    } else {
                        throw np1.l();
                    }
                }
                i -= iMin;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        @Override // ads_mobile_sdk.my
        public int y() throws IOException {
            return q();
        }

        @Override // ads_mobile_sdk.my
        public int k() throws IOException {
            return q();
        }

        @Override // ads_mobile_sdk.my
        public int r() throws IOException {
            return C();
        }

        @Override // ads_mobile_sdk.my
        public long s() throws IOException {
            return D();
        }

        @Override // ads_mobile_sdk.my
        public int t() throws IOException {
            return my.b(q());
        }

        @Override // ads_mobile_sdk.my
        public long u() throws IOException {
            return my.a(E());
        }

        /* JADX WARN: Removed duplicated region for block: B:37:0x0073 A[PHI: r3
          0x0073: PHI (r3v7 int) = (r3v6 int), (r3v9 int) binds: [B:25:0x0051, B:29:0x005d] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // ads_mobile_sdk.my
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public int q() throws java.io.IOException {
            /*
                r6 = this;
                int r0 = r6.l
                int r1 = r6.j
                if (r1 != r0) goto L7
                goto L6b
            L7:
                byte[] r2 = r6.i
                int r3 = r0 + 1
                r4 = r2[r0]
                if (r4 < 0) goto L12
                r6.l = r3
                return r4
            L12:
                int r1 = r1 - r3
                r5 = 9
                if (r1 >= r5) goto L18
                goto L6b
            L18:
                int r1 = r0 + 2
                r3 = r2[r3]
                int r3 = r3 << 7
                r3 = r3 ^ r4
                if (r3 >= 0) goto L24
                r0 = r3 ^ (-128(0xffffffffffffff80, float:NaN))
                goto L76
            L24:
                int r4 = r0 + 3
                r1 = r2[r1]
                int r1 = r1 << 14
                r1 = r1 ^ r3
                if (r1 < 0) goto L31
                r0 = r1 ^ 16256(0x3f80, float:2.278E-41)
            L2f:
                r1 = r4
                goto L76
            L31:
                int r3 = r0 + 4
                r4 = r2[r4]
                int r4 = r4 << 21
                r1 = r1 ^ r4
                if (r1 >= 0) goto L40
                r0 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r1
                r1 = r3
                goto L76
            L40:
                int r4 = r0 + 5
                r3 = r2[r3]
                int r5 = r3 << 28
                r1 = r1 ^ r5
                r5 = 266354560(0xfe03f80, float:2.2112565E-29)
                r1 = r1 ^ r5
                if (r3 >= 0) goto L74
                int r3 = r0 + 6
                r4 = r2[r4]
                if (r4 >= 0) goto L73
                int r4 = r0 + 7
                r3 = r2[r3]
                if (r3 >= 0) goto L74
                int r3 = r0 + 8
                r4 = r2[r4]
                if (r4 >= 0) goto L73
                int r4 = r0 + 9
                r3 = r2[r3]
                if (r3 >= 0) goto L74
                int r0 = r0 + 10
                r2 = r2[r4]
                if (r2 >= 0) goto L71
            L6b:
                long r0 = r6.F()
                int r0 = (int) r0
                return r0
            L71:
                r4 = r0
                goto L74
            L73:
                r4 = r3
            L74:
                r0 = r1
                goto L2f
            L76:
                r6.l = r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.my.b.q():int");
        }

        private void H() throws IOException {
            if (this.j - this.l >= 10) {
                I();
            } else {
                J();
            }
        }

        private void I() throws IOException {
            for (int i = 0; i < 10; i++) {
                byte[] bArr = this.i;
                int i2 = this.l;
                this.l = i2 + 1;
                if (bArr[i2] >= 0) {
                    return;
                }
            }
            throw np1.f();
        }

        private void J() throws IOException {
            for (int i = 0; i < 10; i++) {
                if (B() >= 0) {
                    return;
                }
            }
            throw np1.f();
        }

        public long E() throws IOException {
            long j;
            long j2;
            long j3;
            int i = this.l;
            int i2 = this.j;
            if (i2 != i) {
                byte[] bArr = this.i;
                int i3 = i + 1;
                byte b = bArr[i];
                if (b >= 0) {
                    this.l = i3;
                    return b;
                }
                if (i2 - i3 >= 9) {
                    int i4 = i + 2;
                    int i5 = (bArr[i3] << 7) ^ b;
                    if (i5 < 0) {
                        j = i5 ^ (-128);
                    } else {
                        int i6 = i + 3;
                        int i7 = (bArr[i4] << 14) ^ i5;
                        if (i7 >= 0) {
                            j = i7 ^ 16256;
                            i4 = i6;
                        } else {
                            int i8 = i + 4;
                            int i9 = i7 ^ (bArr[i6] << 21);
                            if (i9 < 0) {
                                long j4 = (-2080896) ^ i9;
                                i4 = i8;
                                j = j4;
                            } else {
                                long j5 = i9;
                                i4 = i + 5;
                                long j6 = j5 ^ (((long) bArr[i8]) << 28);
                                if (j6 >= 0) {
                                    j2 = 266354560;
                                } else {
                                    int i10 = i + 6;
                                    long j7 = j6 ^ (((long) bArr[i4]) << 35);
                                    if (j7 < 0) {
                                        j3 = -34093383808L;
                                    } else {
                                        i4 = i + 7;
                                        j6 = j7 ^ (((long) bArr[i10]) << 42);
                                        if (j6 >= 0) {
                                            j2 = 4363953127296L;
                                        } else {
                                            i10 = i + 8;
                                            j7 = j6 ^ (((long) bArr[i4]) << 49);
                                            if (j7 < 0) {
                                                j3 = -558586000294016L;
                                            } else {
                                                i4 = i + 9;
                                                j6 = j7 ^ (((long) bArr[i10]) << 56);
                                                if (j6 >= 0) {
                                                    j2 = 71499008037633920L;
                                                } else {
                                                    byte b2 = bArr[i4];
                                                    long j8 = j6 ^ (((long) b2) << 63);
                                                    if (j8 >= 0) {
                                                        int i11 = i + 10;
                                                        if (b2 >= 0) {
                                                            j = j8 ^ (-9151873028817141888L);
                                                            i4 = i11;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    j = j7 ^ j3;
                                    i4 = i10;
                                }
                                j = j6 ^ j2;
                            }
                        }
                    }
                    this.l = i4;
                    return j;
                }
            }
            return F();
        }

        public long F() throws IOException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                byte B = B();
                j |= ((long) (B & 127)) << i;
                if ((B & 128) == 0) {
                    return j;
                }
            }
            throw np1.f();
        }

        public int C() throws IOException {
            int i = this.l;
            if (this.j - i < 4) {
                j(4);
                i = this.l;
            }
            byte[] bArr = this.i;
            this.l = i + 4;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }

        public long D() throws IOException {
            int i = this.l;
            if (this.j - i < 8) {
                j(8);
                i = this.l;
            }
            byte[] bArr = this.i;
            this.l = i + 8;
            return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
        }

        private void G() {
            int i = this.j + this.k;
            this.j = i;
            int i2 = this.n + i;
            int i3 = this.o;
            if (i2 > i3) {
                int i4 = i2 - i3;
                this.k = i4;
                this.j = i - i4;
                return;
            }
            this.k = 0;
        }

        @Override // ads_mobile_sdk.my
        public int c() {
            int i = this.o;
            if (i == Integer.MAX_VALUE) {
                return -1;
            }
            return i - (this.n + this.l);
        }

        @Override // ads_mobile_sdk.my
        public boolean f() throws IOException {
            return this.l == this.j && !m(1);
        }

        @Override // ads_mobile_sdk.my
        public int e() {
            return this.n + this.l;
        }

        public byte B() throws IOException {
            if (this.l == this.j) {
                j(1);
            }
            byte[] bArr = this.i;
            int i = this.l;
            this.l = i + 1;
            return bArr[i];
        }

        private static int a(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
            try {
                return inputStream.read(bArr, i, i2);
            } catch (np1 e) {
                e.j();
                throw e;
            }
        }

        private du b(boolean z) throws IOException {
            int iQ = q();
            int i = this.j;
            int i2 = this.l;
            if (iQ <= i - i2 && iQ > 0) {
                du duVarA = du.a(this.i, i2, iQ, z);
                this.l += iQ;
                return duVarA;
            }
            if (iQ == 0) {
                return du.b;
            }
            if (iQ >= 0) {
                return a(iQ, z);
            }
            throw np1.g();
        }

        private void j(int i) throws IOException {
            if (m(i)) {
                return;
            }
            if (a(this.n + this.l, i, this.d)) {
                throw np1.k();
            }
            throw np1.l();
        }

        /* JADX WARN: Code restructure failed: missing block: B:31:0x0095, code lost:
        
            throw new java.lang.IllegalStateException(java.lang.String.valueOf(r5.h.getClass()) + "#read(byte[]) returned invalid result: " + r0 + "\nThe InputStream implementation is buggy.");
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private boolean m(int r6) throws java.io.IOException {
            /*
                r5 = this;
                int r0 = r5.l
                int r1 = r0 + r6
                int r2 = r5.j
                if (r1 <= r2) goto L98
                int r1 = r5.n
                int r1 = r1 + r0
                int r0 = r5.d
                boolean r0 = a(r1, r6, r0)
                r2 = 0
                if (r0 == 0) goto L15
                return r2
            L15:
                int r0 = r5.o
                boolean r0 = a(r1, r6, r0)
                if (r0 == 0) goto L1e
                return r2
            L1e:
                int r0 = r5.l
                if (r0 <= 0) goto L38
                int r1 = r5.j
                if (r1 <= r0) goto L2c
                byte[] r3 = r5.i
                int r1 = r1 - r0
                java.lang.System.arraycopy(r3, r0, r3, r2, r1)
            L2c:
                int r1 = r5.n
                int r1 = r1 + r0
                r5.n = r1
                int r1 = r5.j
                int r1 = r1 - r0
                r5.j = r1
                r5.l = r2
            L38:
                int r0 = r5.j
                if (r0 >= r6) goto L96
                int r1 = r5.d
                int r3 = r5.n
                int r1 = r1 - r3
                int r1 = r1 - r0
                if (r1 > 0) goto L45
                return r2
            L45:
                byte[] r3 = r5.i
                int r3 = r3.length
                int r3 = r3 - r0
                int r0 = java.lang.Math.min(r3, r1)
                java.io.InputStream r1 = r5.h
                byte[] r3 = r5.i
                int r4 = r5.j
                int r0 = a(r1, r3, r4, r0)
                if (r0 == 0) goto L6d
                r1 = -1
                if (r0 < r1) goto L6d
                byte[] r1 = r5.i
                int r1 = r1.length
                if (r0 > r1) goto L6d
                if (r0 > 0) goto L64
                return r2
            L64:
                int r1 = r5.j
                int r1 = r1 + r0
                r5.j = r1
                r5.G()
                goto L38
            L6d:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.io.InputStream r1 = r5.h
                java.lang.Class r1 = r1.getClass()
                java.lang.String r1 = java.lang.String.valueOf(r1)
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                r2.append(r1)
                java.lang.String r1 = "#read(byte[]) returned invalid result: "
                r2.append(r1)
                r2.append(r0)
                java.lang.String r0 = "\nThe InputStream implementation is buggy."
                r2.append(r0)
                java.lang.String r0 = r2.toString()
                r6.<init>(r0)
                throw r6
            L96:
                r6 = 1
                return r6
            L98:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "refillBuffer() called when "
                r1.append(r2)
                r1.append(r6)
                java.lang.String r6 = " bytes were already available in buffer"
                r1.append(r6)
                java.lang.String r6 = r1.toString()
                r0.<init>(r6)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.my.b.m(int):boolean");
        }

        private byte[] h(int i) throws IOException {
            if (i == 0) {
                return yh1.a;
            }
            if (i >= 0) {
                int i2 = this.n + this.l;
                if (!a(i2, i, this.d)) {
                    if (a(i2, i, this.o)) {
                        int i3 = this.o;
                        if (i3 >= i2) {
                            k(i3 - i2);
                        }
                        throw np1.l();
                    }
                    int i4 = this.j - this.l;
                    int i5 = i - i4;
                    if (i5 >= 4096 && i5 > b(this.h)) {
                        return null;
                    }
                    byte[] bArr = new byte[i];
                    System.arraycopy(this.i, this.l, bArr, 0, i4);
                    this.n += this.j;
                    this.l = 0;
                    this.j = 0;
                    while (i4 < i) {
                        int iA = a(this.h, bArr, i4, i - i4);
                        if (iA != -1) {
                            this.n += iA;
                            i4 += iA;
                        } else {
                            throw np1.l();
                        }
                    }
                    return bArr;
                }
                throw np1.k();
            }
            throw np1.g();
        }

        private void l(int i) throws IOException {
            if (i >= 0) {
                int i2 = this.n + this.l;
                if (!a(i2, i, this.d)) {
                    if (a(i2, i, this.o)) {
                        int i3 = this.o;
                        if (i3 >= i2) {
                            k(i3 - i2);
                        }
                        throw np1.l();
                    }
                    int i4 = this.n;
                    int i5 = this.l;
                    this.n = i4 + i5;
                    int i6 = this.j - i5;
                    this.j = 0;
                    this.l = 0;
                    while (i6 < i) {
                        try {
                            long j = i - i6;
                            long jA = a(this.h, j);
                            if (jA < 0 || jA > j) {
                                throw new IllegalStateException(String.valueOf(this.h.getClass()) + "#skip returned invalid result: " + jA + "\nThe InputStream implementation is buggy.");
                            }
                            if (jA == 0) {
                                break;
                            } else {
                                i6 += (int) jA;
                            }
                        } finally {
                            this.n += i6;
                            G();
                        }
                    }
                    if (i6 >= i) {
                        return;
                    }
                    int i7 = this.j;
                    int i8 = i7 - this.l;
                    this.l = i7;
                    j(1);
                    while (true) {
                        int i9 = i - i8;
                        int i10 = this.j;
                        if (i9 > i10) {
                            i8 += i10;
                            this.l = i10;
                            j(1);
                        } else {
                            this.l = i9;
                            return;
                        }
                    }
                } else {
                    throw np1.k();
                }
            } else {
                throw np1.g();
            }
        }

        @Override // ads_mobile_sdk.my
        public int e(int i) throws np1 {
            if (i >= 0) {
                int i2 = this.n + this.l;
                if (i <= Api.BaseClientBuilder.API_PRIORITY_OTHER - i2) {
                    if (!a(i2, i, this.o)) {
                        int i3 = this.o;
                        this.o = i2 + i;
                        G();
                        return i3;
                    }
                    throw np1.l();
                }
                throw np1.k();
            }
            throw np1.g();
        }

        @Override // ads_mobile_sdk.my
        public void c(int i) {
            this.o = i;
            G();
        }

        public void k(int i) throws IOException {
            int i2 = this.j;
            int i3 = this.l;
            if (i <= i2 - i3 && i >= 0) {
                this.l = i3 + i;
            } else {
                l(i);
            }
        }

        private du a(int i, boolean z) throws IOException {
            byte[] bArrH = h(i);
            if (bArrH != null) {
                return du.a(bArrH, 0, bArrH.length, z);
            }
            int i2 = this.l;
            int i3 = this.j;
            int length = i3 - i2;
            this.n += i3;
            this.l = 0;
            this.j = 0;
            List<byte[]> listI = i(i - length);
            byte[] bArr = new byte[i];
            System.arraycopy(this.i, i2, bArr, 0, length);
            for (byte[] bArr2 : listI) {
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            if (z && !hx3.a(bArr)) {
                throw np1.d();
            }
            return du.b(bArr);
        }

        private byte[] b(int i, boolean z) throws IOException {
            byte[] bArrH = h(i);
            if (bArrH != null) {
                return z ? (byte[]) bArrH.clone() : bArrH;
            }
            int i2 = this.l;
            int i3 = this.j;
            int length = i3 - i2;
            this.n += i3;
            this.l = 0;
            this.j = 0;
            List<byte[]> listI = i(i - length);
            byte[] bArr = new byte[i];
            System.arraycopy(this.i, i2, bArr, 0, length);
            for (byte[] bArr2 : listI) {
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            return bArr;
        }

        private static long a(InputStream inputStream, long j) throws IOException {
            try {
                return inputStream.skip(j);
            } catch (np1 e) {
                e.j();
                throw e;
            }
        }
    }
}
