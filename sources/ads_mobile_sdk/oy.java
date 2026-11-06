package ads_mobile_sdk;

import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class oy extends cu {
    Object a;
    private boolean b;

    public static final class b {
    }

    public static int a(double d2) {
        return 8;
    }

    public static int a(float f) {
        return 4;
    }

    public static int a(long j) {
        return 8;
    }

    public static int a(boolean z) {
        return 1;
    }

    public static int b(int i) {
        return 4;
    }

    public static int c(long j) {
        return 8;
    }

    public static int e(int i) {
        if (i > 4096) {
            return 4096;
        }
        return i;
    }

    public static int f(int i) {
        return 4;
    }

    public static long f(long j) {
        return (j >> 63) ^ (j << 1);
    }

    public static int j(int i) {
        return (i >> 31) ^ (i << 1);
    }

    public abstract void a(byte b2) throws IOException;

    public abstract void b() throws IOException;

    public abstract void b(int i, tw1 tw1Var) throws IOException;

    public abstract void b(int i, String str) throws IOException;

    public abstract void b(int i, boolean z) throws IOException;

    public abstract void b(du duVar) throws IOException;

    public abstract void b(String str) throws IOException;

    public abstract void c(int i, du duVar) throws IOException;

    public abstract void c(tw1 tw1Var) throws IOException;

    public abstract void c(byte[] bArr, int i, int i2) throws IOException;

    public abstract int d();

    public abstract void d(int i, du duVar) throws IOException;

    public abstract void f(int i, long j) throws IOException;

    public abstract void g(long j) throws IOException;

    public abstract void h(int i, int i2) throws IOException;

    public abstract void i(int i, int i2) throws IOException;

    public abstract void j(int i, long j) throws IOException;

    public abstract void k(long j) throws IOException;

    public abstract void l(int i) throws IOException;

    public abstract void l(int i, int i2) throws IOException;

    public abstract void m(int i) throws IOException;

    public abstract void m(int i, int i2) throws IOException;

    public abstract void p(int i) throws IOException;

    private oy() {
    }

    public final void j(int i, int i2) throws IOException {
        h(i, i2);
    }

    public final void o(int i) throws IOException {
        p(j(i));
    }

    public final void n(int i) throws IOException {
        l(i);
    }

    public final void k(int i) throws IOException {
        m(i);
    }

    public static int c(int i, int i2) {
        return c(i2) + h(i);
    }

    public static int f(int i, int i2) {
        return i(i2) + h(i);
    }

    public static int e(int i, int i2) {
        return g(i2) + h(i);
    }

    public static int b(int i, int i2) {
        return b(i2) + h(i);
    }

    public final void j(long j) throws IOException {
        k(f(j));
    }

    public final void k(int i, int i2) throws IOException {
        m(i, j(i2));
    }

    public static int h(int i) {
        return i(u24.a(i, 0));
    }

    public static int i(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    public static int g(int i) {
        return i(j(i));
    }

    public static int d(int i) {
        return i(i) + i;
    }

    public final void a() {
        if (d() <= 0) {
            if (d() < 0) {
                throw new IllegalStateException("Wrote more data than expected.");
            }
            return;
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    public final void g(int i, int i2) throws IOException {
        i(i, i2);
    }

    public static class c extends IOException {
        public c(int i, int i2, int i3, Throwable th) {
            this(i, i2, i3, th);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public c(long j, long j2, int i, Throwable th) {
            this("Pos: " + j + ", limit: " + j2 + ", len: " + i, th);
            Locale locale = Locale.US;
        }

        public c(String str, Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.: " + str, th);
        }

        public c(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    public static int b(int i, long j) {
        return b(j) + h(i);
    }

    public static int e(int i, long j) {
        return e(j) + h(i);
    }

    public final void h(long j) throws IOException {
        k(j);
    }

    public final void i(long j) throws IOException {
        g(j);
    }

    public static int c(int i) {
        return e(i);
    }

    public static final class a extends oy {
        private final byte[] c;
        private final int d;
        private final int e;
        private int f;

        @Override // ads_mobile_sdk.oy
        public void b() {
        }

        public a(byte[] bArr, int i, int i2) {
            this(bArr, i, i2, null);
        }

        @Override // ads_mobile_sdk.oy
        public final void i(int i, int i2) throws IOException {
            l(i, 0);
            m(i2);
        }

        @Override // ads_mobile_sdk.oy
        public final void h(int i, int i2) throws IOException {
            l(i, 5);
            l(i2);
        }

        @Override // ads_mobile_sdk.oy
        public final void j(int i, long j) throws IOException {
            l(i, 0);
            k(j);
        }

        @Override // ads_mobile_sdk.oy
        public final void f(int i, long j) throws IOException {
            l(i, 1);
            g(j);
        }

        @Override // ads_mobile_sdk.oy
        public final void b(int i, boolean z) throws IOException {
            l(i, 0);
            a(z ? (byte) 1 : (byte) 0);
        }

        @Override // ads_mobile_sdk.oy
        public final void c(byte[] bArr, int i, int i2) throws IOException {
            p(i2);
            d(bArr, i, i2);
        }

        @Override // ads_mobile_sdk.oy
        public final void a(byte b) throws IOException {
            int i = this.f;
            try {
                int i2 = i + 1;
                try {
                    this.c[i] = b;
                    this.f = i2;
                } catch (IndexOutOfBoundsException e) {
                    e = e;
                    i = i2;
                    throw new c(i, this.e, 1, (Throwable) e);
                }
            } catch (IndexOutOfBoundsException e2) {
                e = e2;
            }
        }

        @Override // ads_mobile_sdk.oy
        public final void m(int i) throws IOException {
            int i2;
            IndexOutOfBoundsException e;
            byte[] bArr;
            int i3;
            if (i >= 0) {
                p(i);
                return;
            }
            long j = i;
            int i4 = this.f;
            try {
                bArr = this.c;
                i3 = i4 + 1;
                try {
                    bArr[i4] = (byte) (((int) j) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                    i2 = i4 + 2;
                } catch (IndexOutOfBoundsException e2) {
                    e = e2;
                }
            } catch (IndexOutOfBoundsException e3) {
                i2 = i4;
                e = e3;
            }
            try {
                bArr[i3] = (byte) (((int) (j >>> 7)) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                int i5 = i4 + 3;
                bArr[i2] = (byte) (((int) (j >>> 14)) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                i2 = i4 + 4;
                bArr[i5] = (byte) (((int) (j >>> 21)) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                int i6 = i4 + 5;
                bArr[i2] = (byte) (((int) (j >>> 28)) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                int i7 = i4 + 6;
                try {
                    bArr[i6] = -1;
                    int i8 = i4 + 7;
                    bArr[i7] = -1;
                    i7 = i4 + 8;
                    bArr[i8] = -1;
                    i3 = i4 + 9;
                    bArr[i7] = -1;
                    i4 += 10;
                    bArr[i3] = 1;
                    this.f = i4;
                } catch (IndexOutOfBoundsException e4) {
                    e = e4;
                    i3 = i7;
                    i2 = i3;
                    throw new c(i2, this.e, 10, (Throwable) e);
                }
            } catch (IndexOutOfBoundsException e5) {
                e = e5;
                throw new c(i2, this.e, 10, (Throwable) e);
            }
        }

        @Override // ads_mobile_sdk.oy
        public final void p(int i) throws IOException {
            int i2;
            int i3 = this.f;
            try {
                if ((i & (-128)) == 0) {
                    int i4 = i3 + 1;
                    try {
                        this.c[i3] = (byte) i;
                        this.f = i4;
                        return;
                    } catch (IndexOutOfBoundsException e) {
                        e = e;
                        i3 = i4;
                        i2 = i3;
                        throw new c(i2, this.e, 1, (Throwable) e);
                    }
                }
                byte[] bArr = this.c;
                int i5 = i3 + 1;
                try {
                    bArr[i3] = (byte) (i | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                    int i6 = i >>> 7;
                    if ((i6 & (-128)) == 0) {
                        int i7 = i3 + 2;
                        bArr[i5] = (byte) i6;
                        this.f = i7;
                        return;
                    }
                    int i8 = i3 + 2;
                    try {
                        bArr[i5] = (byte) (i6 | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                        int i9 = i >>> 14;
                        if ((i9 & (-128)) == 0) {
                            int i10 = i3 + 3;
                            bArr[i8] = (byte) i9;
                            this.f = i10;
                            return;
                        }
                        int i11 = i3 + 3;
                        try {
                            bArr[i8] = (byte) (i9 | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                            int i12 = i >>> 21;
                            if ((i12 & (-128)) == 0) {
                                int i13 = i3 + 4;
                                bArr[i11] = (byte) i12;
                                this.f = i13;
                                return;
                            }
                            i2 = i3 + 4;
                            try {
                                bArr[i11] = (byte) (i12 | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                                int i14 = i3 + 5;
                                bArr[i2] = (byte) (i >>> 28);
                                this.f = i14;
                            } catch (IndexOutOfBoundsException e2) {
                                e = e2;
                                throw new c(i2, this.e, 1, (Throwable) e);
                            }
                        } catch (IndexOutOfBoundsException e3) {
                            e = e3;
                            i5 = i11;
                            i2 = i5;
                            throw new c(i2, this.e, 1, (Throwable) e);
                        }
                    } catch (IndexOutOfBoundsException e4) {
                        e = e4;
                        i5 = i8;
                    }
                } catch (IndexOutOfBoundsException e5) {
                    e = e5;
                }
            } catch (IndexOutOfBoundsException e6) {
                e = e6;
            }
        }

        @Override // ads_mobile_sdk.oy
        public final void l(int i) throws IOException {
            int i2 = this.f;
            try {
                byte[] bArr = this.c;
                bArr[i2] = (byte) i;
                bArr[i2 + 1] = (byte) (i >> 8);
                bArr[i2 + 2] = (byte) (i >> 16);
                bArr[i2 + 3] = (byte) (i >> 24);
                this.f = i2 + 4;
            } catch (IndexOutOfBoundsException e) {
                throw new c(i2, this.e, 4, (Throwable) e);
            }
        }

        @Override // ads_mobile_sdk.oy
        public final void k(long j) throws IOException {
            int i = this.f;
            try {
                if ((j & (-128)) == 0) {
                    this.c[i] = (byte) j;
                    this.f = i + 1;
                    return;
                }
                byte[] bArr = this.c;
                bArr[i] = (byte) (((int) j) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                long j2 = j >>> 7;
                if ((j2 & (-128)) == 0) {
                    bArr[i + 1] = (byte) j2;
                    this.f = i + 2;
                    return;
                }
                bArr[i + 1] = (byte) (((int) j2) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                long j3 = j >>> 14;
                if ((j3 & (-128)) == 0) {
                    bArr[i + 2] = (byte) j3;
                    this.f = i + 3;
                    return;
                }
                bArr[i + 2] = (byte) (((int) j3) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                long j4 = j >>> 21;
                if ((j4 & (-128)) == 0) {
                    bArr[i + 3] = (byte) j4;
                    this.f = i + 4;
                    return;
                }
                bArr[i + 3] = (byte) (((int) j4) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                long j5 = j >>> 28;
                if ((j5 & (-128)) == 0) {
                    bArr[i + 4] = (byte) j5;
                    this.f = i + 5;
                    return;
                }
                bArr[i + 4] = (byte) (((int) j5) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                long j6 = j >>> 35;
                if ((j6 & (-128)) == 0) {
                    bArr[i + 5] = (byte) j6;
                    this.f = i + 6;
                    return;
                }
                bArr[i + 5] = (byte) (((int) j6) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                long j7 = j >>> 42;
                if ((j7 & (-128)) == 0) {
                    bArr[i + 6] = (byte) j7;
                    this.f = i + 7;
                    return;
                }
                bArr[i + 6] = (byte) (((int) j7) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                long j8 = j >>> 49;
                if ((j8 & (-128)) == 0) {
                    bArr[i + 7] = (byte) j8;
                    this.f = i + 8;
                    return;
                }
                bArr[i + 7] = (byte) (((int) j8) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                long j9 = j >>> 56;
                if (((-128) & j9) == 0) {
                    bArr[i + 8] = (byte) j9;
                    this.f = i + 9;
                } else {
                    bArr[i + 8] = (byte) (((int) j9) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                    bArr[i + 9] = (byte) (j >>> 63);
                    this.f = i + 10;
                }
            } catch (IndexOutOfBoundsException e) {
                throw new c(i, this.e, 1, (Throwable) e);
            }
        }

        @Override // ads_mobile_sdk.oy
        public final void g(long j) throws IOException {
            int i = this.f;
            try {
                byte[] bArr = this.c;
                bArr[i] = (byte) j;
                bArr[i + 1] = (byte) (j >> 8);
                bArr[i + 2] = (byte) (j >> 16);
                bArr[i + 3] = (byte) (j >> 24);
                bArr[i + 4] = (byte) (j >> 32);
                bArr[i + 5] = (byte) (j >> 40);
                bArr[i + 6] = (byte) (j >> 48);
                bArr[i + 7] = (byte) (j >> 56);
                this.f = i + 8;
            } catch (IndexOutOfBoundsException e) {
                throw new c(i, this.e, 8, (Throwable) e);
            }
        }

        @Override // ads_mobile_sdk.oy
        public final int d() {
            return this.e - this.f;
        }

        public a(byte[] bArr, int i, int i2, b bVar) {
            super();
            if (bArr != null) {
                int i3 = i + i2;
                if ((i | i2 | (bArr.length - i3)) >= 0) {
                    this.c = bArr;
                    this.d = i;
                    this.f = i;
                    this.e = i3;
                    return;
                }
                Locale locale = Locale.US;
                throw new IllegalArgumentException("Array range is invalid. Buffer.length=" + bArr.length + ", offset=" + i + ", length=" + i2);
            }
            throw new NullPointerException("buffer");
        }

        @Override // ads_mobile_sdk.oy
        public final void b(du duVar) throws IOException {
            p(duVar.size());
            duVar.a(this);
        }

        @Override // ads_mobile_sdk.oy
        public final void c(int i, du duVar) throws IOException {
            l(i, 2);
            b(duVar);
        }

        @Override // ads_mobile_sdk.oy
        public final void m(int i, int i2) throws IOException {
            l(i, 0);
            p(i2);
        }

        @Override // ads_mobile_sdk.oy
        public final void l(int i, int i2) throws IOException {
            p(u24.a(i, i2));
        }

        @Override // ads_mobile_sdk.cu
        public final void a(byte[] bArr, int i, int i2) throws IOException {
            d(bArr, i, i2);
        }

        public final void d(byte[] bArr, int i, int i2) throws IOException {
            try {
                System.arraycopy(bArr, i, this.c, this.f, i2);
                this.f += i2;
            } catch (IndexOutOfBoundsException e) {
                throw new c(this.f, this.e, i2, (Throwable) e);
            }
        }

        @Override // ads_mobile_sdk.oy
        public final void b(int i, tw1 tw1Var) throws IOException {
            l(1, 3);
            m(2, i);
            c(3, tw1Var);
            l(1, 4);
        }

        public final void c(int i, tw1 tw1Var) throws IOException {
            l(i, 2);
            c(tw1Var);
        }

        @Override // ads_mobile_sdk.oy
        public final void d(int i, du duVar) throws IOException {
            l(1, 3);
            m(2, i);
            c(3, duVar);
            l(1, 4);
        }

        @Override // ads_mobile_sdk.oy
        public final void b(int i, String str) throws IOException {
            l(i, 2);
            b(str);
        }

        @Override // ads_mobile_sdk.oy
        public final void b(String str) throws IOException {
            if (hx3.b) {
                byte[] bytes = str.getBytes(StandardCharsets.UTF_8);
                p(bytes.length);
                d(bytes, 0, bytes.length);
                return;
            }
            int i = this.f;
            try {
                int i2 = oy.i(str.length());
                int i3 = i + i2;
                this.f = i3;
                byte[] bArr = this.c;
                int iA = (hx3.a(str, bArr, i3, bArr.length - i3) - i) - i2;
                int i4 = oy.i(iA);
                if (i4 != i2) {
                    byte[] bArr2 = this.c;
                    System.arraycopy(bArr2, i3, bArr2, i + i4, iA);
                }
                this.f = i;
                p(iA);
                this.f = i + i4 + iA;
            } catch (IndexOutOfBoundsException e) {
                throw new c(e);
            }
        }

        @Override // ads_mobile_sdk.oy
        public final void c(tw1 tw1Var) throws IOException {
            p(tw1Var.getSerializedSize());
            tw1Var.a(this);
        }
    }

    public final void g(int i, long j) throws IOException {
        j(i, j);
    }

    public final void h(int i, long j) throws IOException {
        f(i, j);
    }

    public final void i(int i, long j) throws IOException {
        j(i, f(j));
    }

    public static int d(int i, int i2) {
        return f(i2) + h(i);
    }

    public static int a(int i, boolean z) {
        return a(z) + h(i);
    }

    public static int c(int i, long j) {
        return c(j) + h(i);
    }

    public static int b(long j) {
        return e(j);
    }

    public static int e(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    public boolean c() {
        return this.b;
    }

    public static final class d extends oy {
        private final byte[] c;
        private final int d;
        private int e;
        private int f;
        private final OutputStream g;

        public d(OutputStream outputStream, int i) {
            super();
            if (outputStream != null) {
                this.g = outputStream;
                if (i >= 0) {
                    int iMax = Math.max(i, 20);
                    this.c = new byte[iMax];
                    this.d = iMax;
                    return;
                }
                throw new IllegalArgumentException("bufferSize must be >= 0");
            }
            throw new NullPointerException("out");
        }

        public final void b(byte b) {
            int i = this.e;
            this.c[i] = b;
            this.e = i + 1;
            this.f++;
        }

        public final void n(int i, int i2) {
            s(u24.a(i, i2));
        }

        public final void r(int i) {
            if (i >= 0) {
                s(i);
            } else {
                m(i);
            }
        }

        public final void s(int i) {
            int i2 = this.e;
            int i3 = this.f;
            if ((i & (-128)) == 0) {
                this.c[i2] = (byte) i;
                this.e = i2 + 1;
                this.f = i3 + 1;
                return;
            }
            byte[] bArr = this.c;
            bArr[i2] = (byte) (i | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
            int i4 = i >>> 7;
            if ((i4 & (-128)) == 0) {
                bArr[i2 + 1] = (byte) i4;
                this.e = i2 + 2;
                this.f = i3 + 2;
                return;
            }
            bArr[i2 + 1] = (byte) (i4 | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
            int i5 = i >>> 14;
            if ((i5 & (-128)) == 0) {
                bArr[i2 + 2] = (byte) i5;
                this.e = i2 + 3;
                this.f = i3 + 3;
                return;
            }
            bArr[i2 + 2] = (byte) (i5 | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
            int i6 = i >>> 21;
            if ((i6 & (-128)) == 0) {
                bArr[i2 + 3] = (byte) i6;
                this.e = i2 + 4;
                this.f = i3 + 4;
            } else {
                bArr[i2 + 3] = (byte) (i6 | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                bArr[i2 + 4] = (byte) (i >>> 28);
                this.e = i2 + 5;
                this.f = i3 + 5;
            }
        }

        public final void m(long j) {
            int i = this.e;
            int i2 = this.f;
            if ((j & (-128)) == 0) {
                this.c[i] = (byte) j;
                this.e = i + 1;
                this.f = i2 + 1;
                return;
            }
            byte[] bArr = this.c;
            bArr[i] = (byte) (((int) j) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
            long j2 = j >>> 7;
            if ((j2 & (-128)) == 0) {
                bArr[i + 1] = (byte) j2;
                this.e = i + 2;
                this.f = i2 + 2;
                return;
            }
            bArr[i + 1] = (byte) (((int) j2) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
            long j3 = j >>> 14;
            if ((j3 & (-128)) == 0) {
                bArr[i + 2] = (byte) j3;
                this.e = i + 3;
                this.f = i2 + 3;
                return;
            }
            bArr[i + 2] = (byte) (((int) j3) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
            long j4 = j >>> 21;
            if ((j4 & (-128)) == 0) {
                bArr[i + 3] = (byte) j4;
                this.e = i + 4;
                this.f = i2 + 4;
                return;
            }
            bArr[i + 3] = (byte) (((int) j4) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
            long j5 = j >>> 28;
            if ((j5 & (-128)) == 0) {
                bArr[i + 4] = (byte) j5;
                this.e = i + 5;
                this.f = i2 + 5;
                return;
            }
            bArr[i + 4] = (byte) (((int) j5) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
            long j6 = j >>> 35;
            if ((j6 & (-128)) == 0) {
                bArr[i + 5] = (byte) j6;
                this.e = i + 6;
                this.f = i2 + 6;
                return;
            }
            bArr[i + 5] = (byte) (((int) j6) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
            long j7 = j >>> 42;
            if ((j7 & (-128)) == 0) {
                bArr[i + 6] = (byte) j7;
                this.e = i + 7;
                this.f = i2 + 7;
                return;
            }
            bArr[i + 6] = (byte) (((int) j7) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
            long j8 = j >>> 49;
            if ((j8 & (-128)) == 0) {
                bArr[i + 7] = (byte) j8;
                this.e = i + 8;
                this.f = i2 + 8;
                return;
            }
            bArr[i + 7] = (byte) (((int) j8) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
            long j9 = j >>> 56;
            if (((-128) & j9) == 0) {
                bArr[i + 8] = (byte) j9;
                this.e = i + 9;
                this.f = i2 + 9;
            } else {
                bArr[i + 8] = (byte) (((int) j9) | Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
                bArr[i + 9] = (byte) (j >>> 63);
                this.e = i + 10;
                this.f = i2 + 10;
            }
        }

        public final void q(int i) {
            int i2 = this.e;
            byte[] bArr = this.c;
            bArr[i2] = (byte) i;
            bArr[i2 + 1] = (byte) (i >> 8);
            bArr[i2 + 2] = (byte) (i >> 16);
            bArr[i2 + 3] = (byte) (i >> 24);
            this.e = i2 + 4;
            this.f += 4;
        }

        public final void l(long j) {
            int i = this.e;
            byte[] bArr = this.c;
            bArr[i] = (byte) j;
            bArr[i + 1] = (byte) (j >> 8);
            bArr[i + 2] = (byte) (j >> 16);
            bArr[i + 3] = (byte) (j >> 24);
            bArr[i + 4] = (byte) (j >> 32);
            bArr[i + 5] = (byte) (j >> 40);
            bArr[i + 6] = (byte) (j >> 48);
            bArr[i + 7] = (byte) (j >> 56);
            this.e = i + 8;
            this.f += 8;
        }

        @Override // ads_mobile_sdk.oy
        public void i(int i, int i2) throws IOException {
            t(20);
            n(i, 0);
            r(i2);
        }

        @Override // ads_mobile_sdk.oy
        public void h(int i, int i2) throws IOException {
            t(14);
            n(i, 5);
            q(i2);
        }

        @Override // ads_mobile_sdk.oy
        public void j(int i, long j) throws IOException {
            t(20);
            n(i, 0);
            m(j);
        }

        @Override // ads_mobile_sdk.oy
        public void f(int i, long j) throws IOException {
            t(18);
            n(i, 1);
            l(j);
        }

        @Override // ads_mobile_sdk.oy
        public void c(byte[] bArr, int i, int i2) throws IOException {
            p(i2);
            d(bArr, i, i2);
        }

        @Override // ads_mobile_sdk.oy
        public void a(byte b) throws IOException {
            if (this.e == this.d) {
                e();
            }
            b(b);
        }

        @Override // ads_mobile_sdk.oy
        public void p(int i) throws IOException {
            t(5);
            s(i);
        }

        @Override // ads_mobile_sdk.oy
        public void k(long j) throws IOException {
            t(10);
            m(j);
        }

        @Override // ads_mobile_sdk.oy
        public void g(long j) throws IOException {
            t(8);
            l(j);
        }

        public void d(byte[] bArr, int i, int i2) throws IOException {
            int i3 = this.d;
            int i4 = this.e;
            int i5 = i3 - i4;
            if (i5 >= i2) {
                System.arraycopy(bArr, i, this.c, i4, i2);
                this.e += i2;
                this.f += i2;
                return;
            }
            System.arraycopy(bArr, i, this.c, i4, i5);
            int i6 = i + i5;
            int i7 = i2 - i5;
            this.e = this.d;
            this.f += i5;
            e();
            if (i7 <= this.d) {
                System.arraycopy(bArr, i6, this.c, 0, i7);
                this.e = i7;
            } else {
                this.g.write(bArr, i6, i7);
            }
            this.f += i7;
        }

        private void t(int i) throws IOException {
            if (this.d - this.e < i) {
                e();
            }
        }

        private void e() throws IOException {
            this.g.write(this.c, 0, this.e);
            this.e = 0;
        }

        @Override // ads_mobile_sdk.oy
        public void b() throws IOException {
            if (this.e > 0) {
                e();
            }
        }

        @Override // ads_mobile_sdk.oy
        public void m(int i) throws IOException {
            if (i >= 0) {
                p(i);
            } else {
                k(i);
            }
        }

        @Override // ads_mobile_sdk.oy
        public void c(int i, du duVar) throws IOException {
            l(i, 2);
            b(duVar);
        }

        @Override // ads_mobile_sdk.oy
        public void l(int i) throws IOException {
            t(4);
            q(i);
        }

        @Override // ads_mobile_sdk.oy
        public void d(int i, du duVar) throws IOException {
            l(1, 3);
            m(2, i);
            c(3, duVar);
            l(1, 4);
        }

        @Override // ads_mobile_sdk.oy
        public final int d() {
            throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
        }

        @Override // ads_mobile_sdk.cu
        public void a(byte[] bArr, int i, int i2) throws IOException {
            d(bArr, i, i2);
        }

        @Override // ads_mobile_sdk.oy
        public void b(int i, boolean z) throws IOException {
            t(11);
            n(i, 0);
            b(z ? (byte) 1 : (byte) 0);
        }

        @Override // ads_mobile_sdk.oy
        public void m(int i, int i2) throws IOException {
            t(20);
            n(i, 0);
            s(i2);
        }

        @Override // ads_mobile_sdk.oy
        public void l(int i, int i2) throws IOException {
            p(u24.a(i, i2));
        }

        public void c(int i, tw1 tw1Var) throws IOException {
            l(i, 2);
            c(tw1Var);
        }

        @Override // ads_mobile_sdk.oy
        public void b(du duVar) throws IOException {
            p(duVar.size());
            duVar.a(this);
        }

        @Override // ads_mobile_sdk.oy
        public void c(tw1 tw1Var) throws IOException {
            p(tw1Var.getSerializedSize());
            tw1Var.a(this);
        }

        @Override // ads_mobile_sdk.oy
        public void b(int i, tw1 tw1Var) throws IOException {
            l(1, 3);
            m(2, i);
            c(3, tw1Var);
            l(1, 4);
        }

        @Override // ads_mobile_sdk.oy
        public void b(int i, String str) throws IOException {
            l(i, 2);
            b(str);
        }

        @Override // ads_mobile_sdk.oy
        public void b(String str) throws IOException {
            int iA;
            int length = str.length() * 3;
            int i = oy.i(length);
            int i2 = i + length;
            int i3 = this.d;
            if (i2 > i3) {
                byte[] bArr = new byte[length];
                int iA2 = hx3.a(str, bArr, 0, length);
                p(iA2);
                a(bArr, 0, iA2);
                return;
            }
            if (i2 > i3 - this.e) {
                e();
            }
            int i4 = oy.i(str.length());
            int i5 = this.e;
            try {
                if (i4 == i) {
                    int i6 = i5 + i4;
                    this.e = i6;
                    int iA3 = hx3.a(str, this.c, i6, this.d - i6);
                    this.e = i5;
                    iA = (iA3 - i5) - i4;
                    s(iA);
                    this.e = iA3;
                } else {
                    iA = hx3.a(str);
                    s(iA);
                    this.e = hx3.a(str, this.c, this.e, iA);
                }
                this.f += iA;
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new c(e);
            }
        }
    }

    public static int d(int i, long j) {
        return d(j) + h(i);
    }

    public final void c(byte[] bArr) throws IOException {
        c(bArr, 0, bArr.length);
    }

    public static int a(byte[] bArr) {
        return d(bArr.length);
    }

    public static int b(int i, du duVar) {
        return a(3, duVar) + f(2, i) + (h(1) * 2);
    }

    public static oy b(byte[] bArr) {
        return b(bArr, 0, bArr.length);
    }

    public static int d(long j) {
        return e(f(j));
    }

    public final void b(boolean z) throws IOException {
        a(z ? (byte) 1 : (byte) 0);
    }

    public static int a(int i, du duVar) {
        return a(duVar) + h(i);
    }

    public final void b(int i, double d2) throws IOException {
        f(i, Double.doubleToRawLongBits(d2));
    }

    public final void b(double d2) throws IOException {
        g(Double.doubleToRawLongBits(d2));
    }

    public static int a(du duVar) {
        return d(duVar.size());
    }

    public final void b(int i, float f) throws IOException {
        h(i, Float.floatToRawIntBits(f));
    }

    public final void b(float f) throws IOException {
        l(Float.floatToRawIntBits(f));
    }

    public static int a(int i, double d2) {
        return a(d2) + h(i);
    }

    public static int a(int i, int i2) {
        return a(i2) + h(i);
    }

    @Deprecated
    public final void b(tw1 tw1Var) throws IOException {
        tw1Var.a(this);
    }

    public static oy b(byte[] bArr, int i, int i2) {
        return new a(bArr, i, i2);
    }

    public static int a(int i) {
        return c(i);
    }

    public static int a(int i, long j) {
        return a(j) + h(i);
    }

    public static int a(int i, float f) {
        return a(f) + h(i);
    }

    public static int a(tw1 tw1Var) {
        return d(tw1Var.getSerializedSize());
    }

    public static int a(int i, String str) {
        return a(str) + h(i);
    }

    public static int a(String str) {
        return d(hx3.a(str));
    }

    @Deprecated
    public final void a(int i, tw1 tw1Var) throws IOException {
        l(i, 3);
        b(tw1Var);
        l(i, 4);
    }

    public static oy a(OutputStream outputStream, int i) {
        return new d(outputStream, i);
    }
}
