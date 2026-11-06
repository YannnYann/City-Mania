package ads_mobile_sdk;

import ads_mobile_sdk.yh1;
import com.vungle.ads.internal.protos.Sdk;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes.dex */
abstract class ao {
    private static volatile int a = 100;

    public static final class a {
        public int a;
        public long b;
        public Object c;
        public final er0 d;
        public int e;

        public a(er0 er0Var) {
            er0Var.getClass();
            this.d = er0Var;
        }
    }

    public static int k(int i, byte[] bArr, int i2, int i3, yh1.f<?> fVar, a aVar) {
        xh1 xh1Var = (xh1) fVar;
        int iD = d(bArr, i2, aVar);
        xh1Var.b(aVar.a);
        while (iD < i3) {
            int iD2 = d(bArr, iD, aVar);
            if (i != aVar.a) {
                break;
            }
            iD = d(bArr, iD2, aVar);
            xh1Var.b(aVar.a);
        }
        return iD;
    }

    public static int l(int i, byte[] bArr, int i2, int i3, yh1.f<?> fVar, a aVar) {
        au1 au1Var = (au1) fVar;
        int iE = e(bArr, i2, aVar);
        au1Var.a(aVar.b);
        while (iE < i3) {
            int iD = d(bArr, iE, aVar);
            if (i != aVar.a) {
                break;
            }
            iE = e(bArr, iD, aVar);
            au1Var.a(aVar.b);
        }
        return iE;
    }

    public static int d(int i, byte[] bArr, int i2, int i3, yh1.f<?> fVar, a aVar) {
        xh1 xh1Var = (xh1) fVar;
        xh1Var.b(b(bArr, i2));
        int i4 = i2 + 4;
        while (i4 < i3) {
            int iD = d(bArr, i4, aVar);
            if (i != aVar.a) {
                break;
            }
            xh1Var.b(b(bArr, iD));
            i4 = iD + 4;
        }
        return i4;
    }

    public static int e(int i, byte[] bArr, int i2, int i3, yh1.f<?> fVar, a aVar) {
        au1 au1Var = (au1) fVar;
        au1Var.a(c(bArr, i2));
        int i4 = i2 + 8;
        while (i4 < i3) {
            int iD = d(bArr, i4, aVar);
            if (i != aVar.a) {
                break;
            }
            au1Var.a(c(bArr, iD));
            i4 = iD + 8;
        }
        return i4;
    }

    public static int f(int i, byte[] bArr, int i2, int i3, yh1.f<?> fVar, a aVar) {
        kx0 kx0Var = (kx0) fVar;
        kx0Var.a(d(bArr, i2));
        int i4 = i2 + 4;
        while (i4 < i3) {
            int iD = d(bArr, i4, aVar);
            if (i != aVar.a) {
                break;
            }
            kx0Var.a(d(bArr, iD));
            i4 = iD + 4;
        }
        return i4;
    }

    public static int c(int i, byte[] bArr, int i2, int i3, yh1.f<?> fVar, a aVar) {
        co0 co0Var = (co0) fVar;
        co0Var.a(a(bArr, i2));
        int i4 = i2 + 8;
        while (i4 < i3) {
            int iD = d(bArr, i4, aVar);
            if (i != aVar.a) {
                break;
            }
            co0Var.a(a(bArr, iD));
            i4 = iD + 8;
        }
        return i4;
    }

    public static int h(byte[] bArr, int i, yh1.f<?> fVar, a aVar) throws IOException {
        xh1 xh1Var = (xh1) fVar;
        int iA = a(bArr, i, bArr.length, aVar);
        int i2 = aVar.a + iA;
        while (iA < i2) {
            iA = d(bArr, iA, aVar);
            xh1Var.b(aVar.a);
        }
        if (iA == i2) {
            return iA;
        }
        throw np1.l();
    }

    public static int i(byte[] bArr, int i, yh1.f<?> fVar, a aVar) throws IOException {
        au1 au1Var = (au1) fVar;
        int iA = a(bArr, i, bArr.length, aVar);
        int i2 = aVar.a + iA;
        while (iA < i2) {
            iA = e(bArr, iA, aVar);
            au1Var.a(aVar.b);
        }
        if (iA == i2) {
            return iA;
        }
        throw np1.l();
    }

    public static float d(byte[] bArr, int i) {
        return Float.intBitsToFloat(b(bArr, i));
    }

    public static long c(byte[] bArr, int i) {
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    public static int g(byte[] bArr, int i, yh1.f<?> fVar, a aVar) throws np1 {
        au1 au1Var = (au1) fVar;
        int iA = a(bArr, i, bArr.length, aVar);
        int i2 = aVar.a + iA;
        while (iA < i2) {
            iA = e(bArr, iA, aVar);
            au1Var.a(my.a(aVar.b));
        }
        if (iA == i2) {
            return iA;
        }
        throw np1.l();
    }

    public static int j(int i, byte[] bArr, int i2, int i3, yh1.f<?> fVar, a aVar) throws np1 {
        int iA = a(bArr, i2, bArr.length, aVar);
        int i4 = aVar.a;
        if (i4 == 0) {
            fVar.add("");
        } else {
            int i5 = iA + i4;
            if (hx3.b(bArr, iA, i5)) {
                fVar.add(new String(bArr, iA, i4, StandardCharsets.UTF_8));
                iA = i5;
            } else {
                throw np1.d();
            }
        }
        while (iA < i3) {
            int iD = d(bArr, iA, aVar);
            if (i != aVar.a) {
                break;
            }
            iA = a(bArr, iD, bArr.length, aVar);
            int i6 = aVar.a;
            if (i6 == 0) {
                fVar.add("");
            } else {
                int i7 = iA + i6;
                if (hx3.b(bArr, iA, i7)) {
                    fVar.add(new String(bArr, iA, i6, StandardCharsets.UTF_8));
                    iA = i7;
                } else {
                    throw np1.d();
                }
            }
        }
        return iA;
    }

    public static int b(int i, byte[] bArr, int i2, int i3, yh1.f<?> fVar, a aVar) throws np1 {
        int iA = a(bArr, i2, bArr.length, aVar);
        int i4 = aVar.a;
        if (i4 == 0) {
            fVar.add(du.b);
        } else {
            fVar.add(du.a(bArr, iA, i4));
            iA += i4;
        }
        while (iA < i3) {
            int iD = d(bArr, iA, aVar);
            if (i != aVar.a) {
                break;
            }
            iA = a(bArr, iD, bArr.length, aVar);
            int i5 = aVar.a;
            if (i5 == 0) {
                fVar.add(du.b);
            } else {
                fVar.add(du.a(bArr, iA, i5));
                iA += i5;
            }
        }
        return iA;
    }

    public static int b(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static int e(byte[] bArr, int i, yh1.f<?> fVar, a aVar) throws np1 {
        kx0 kx0Var = (kx0) fVar;
        int iA = a(bArr, i, bArr.length, aVar);
        int i2 = aVar.a;
        int i3 = iA + i2;
        kx0Var.d((i2 / 4) + kx0Var.size());
        while (iA < i3) {
            kx0Var.a(d(bArr, iA));
            iA += 4;
        }
        if (iA == i3) {
            return iA;
        }
        throw np1.l();
    }

    public static int h(int i, byte[] bArr, int i2, int i3, yh1.f<?> fVar, a aVar) {
        au1 au1Var = (au1) fVar;
        int iE = e(bArr, i2, aVar);
        au1Var.a(my.a(aVar.b));
        while (iE < i3) {
            int iD = d(bArr, iE, aVar);
            if (i != aVar.a) {
                break;
            }
            iE = e(bArr, iD, aVar);
            au1Var.a(my.a(aVar.b));
        }
        return iE;
    }

    public static int f(byte[] bArr, int i, yh1.f<?> fVar, a aVar) throws np1 {
        xh1 xh1Var = (xh1) fVar;
        int iA = a(bArr, i, bArr.length, aVar);
        int i2 = aVar.a + iA;
        while (iA < i2) {
            iA = d(bArr, iA, aVar);
            xh1Var.b(my.b(aVar.a));
        }
        if (iA == i2) {
            return iA;
        }
        throw np1.l();
    }

    public static int e(byte[] bArr, int i, a aVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            aVar.b = j;
            return i2;
        }
        return a(j, bArr, i2, aVar);
    }

    public static int g(int i, byte[] bArr, int i2, int i3, yh1.f<?> fVar, a aVar) {
        xh1 xh1Var = (xh1) fVar;
        int iD = d(bArr, i2, aVar);
        xh1Var.b(my.b(aVar.a));
        while (iD < i3) {
            int iD2 = d(bArr, iD, aVar);
            if (i != aVar.a) {
                break;
            }
            iD = d(bArr, iD2, aVar);
            xh1Var.b(my.b(aVar.a));
        }
        return iD;
    }

    public static int d(byte[] bArr, int i, yh1.f<?> fVar, a aVar) throws np1 {
        au1 au1Var = (au1) fVar;
        int iA = a(bArr, i, bArr.length, aVar);
        int i2 = aVar.a;
        int i3 = iA + i2;
        au1Var.d((i2 / 8) + au1Var.size());
        while (iA < i3) {
            au1Var.a(c(bArr, iA));
            iA += 8;
        }
        if (iA == i3) {
            return iA;
        }
        throw np1.l();
    }

    public static int c(byte[] bArr, int i, yh1.f<?> fVar, a aVar) throws np1 {
        xh1 xh1Var = (xh1) fVar;
        int iA = a(bArr, i, bArr.length, aVar);
        int i2 = aVar.a;
        int i3 = iA + i2;
        xh1Var.d((i2 / 4) + xh1Var.size());
        while (iA < i3) {
            xh1Var.b(b(bArr, iA));
            iA += 4;
        }
        if (iA == i3) {
            return iA;
        }
        throw np1.l();
    }

    public static int i(int i, byte[] bArr, int i2, int i3, yh1.f<?> fVar, a aVar) throws np1 {
        int iA = a(bArr, i2, bArr.length, aVar);
        int i4 = aVar.a;
        if (i4 == 0) {
            fVar.add("");
        } else {
            fVar.add(new String(bArr, iA, i4, StandardCharsets.UTF_8));
            iA += i4;
        }
        while (iA < i3) {
            int iD = d(bArr, iA, aVar);
            if (i != aVar.a) {
                break;
            }
            iA = a(bArr, iD, bArr.length, aVar);
            int i5 = aVar.a;
            if (i5 == 0) {
                fVar.add("");
            } else {
                fVar.add(new String(bArr, iA, i5, StandardCharsets.UTF_8));
                iA += i5;
            }
        }
        return iA;
    }

    public static int d(byte[] bArr, int i, a aVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            aVar.a = b;
            return i2;
        }
        return a((int) b, bArr, i2, aVar);
    }

    private static void a(int i) throws np1 {
        if (i >= a) {
            throw np1.i();
        }
    }

    public static int c(byte[] bArr, int i, a aVar) throws np1 {
        int iA = a(bArr, i, bArr.length, aVar);
        int i2 = aVar.a;
        if (i2 == 0) {
            aVar.c = "";
            return iA;
        }
        aVar.c = hx3.a(bArr, iA, i2);
        return iA + i2;
    }

    public static int a(int i, byte[] bArr, int i2, int i3, yh1.f<?> fVar, a aVar) {
        ct ctVar = (ct) fVar;
        int iE = e(bArr, i2, aVar);
        ctVar.a(aVar.b != 0);
        while (iE < i3) {
            int iD = d(bArr, iE, aVar);
            if (i != aVar.a) {
                break;
            }
            iE = e(bArr, iD, aVar);
            ctVar.a(aVar.b != 0);
        }
        return iE;
    }

    public static int b(la3<?> la3Var, int i, byte[] bArr, int i2, int i3, yh1.f<?> fVar, a aVar) throws IOException {
        int iA = a(la3Var, bArr, i2, i3, aVar);
        fVar.add(aVar.c);
        while (iA < i3) {
            int iD = d(bArr, iA, aVar);
            if (i != aVar.a) {
                break;
            }
            iA = a(la3Var, bArr, iD, i3, aVar);
            fVar.add(aVar.c);
        }
        return iA;
    }

    public static int a(byte[] bArr, int i, a aVar) throws np1 {
        int iA = a(bArr, i, bArr.length, aVar);
        int i2 = aVar.a;
        if (i2 == 0) {
            aVar.c = du.b;
            return iA;
        }
        aVar.c = du.a(bArr, iA, i2);
        return iA + i2;
    }

    public static double a(byte[] bArr, int i) {
        return Double.longBitsToDouble(c(bArr, i));
    }

    public static int b(byte[] bArr, int i, yh1.f<?> fVar, a aVar) throws np1 {
        co0 co0Var = (co0) fVar;
        int iA = a(bArr, i, bArr.length, aVar);
        int i2 = aVar.a;
        int i3 = iA + i2;
        co0Var.d((i2 / 8) + co0Var.size());
        while (iA < i3) {
            co0Var.a(a(bArr, iA));
            iA += 8;
        }
        if (iA == i3) {
            return iA;
        }
        throw np1.l();
    }

    public static int b(byte[] bArr, int i, a aVar) throws np1 {
        int iA = a(bArr, i, bArr.length, aVar);
        int i2 = aVar.a;
        if (i2 == 0) {
            aVar.c = "";
            return iA;
        }
        aVar.c = new String(bArr, iA, i2, StandardCharsets.UTF_8);
        return iA + i2;
    }

    public static int a(int i, byte[] bArr, int i2, int i3, Object obj, tw1 tw1Var, yv3<zv3, zv3> yv3Var, a aVar) throws IOException {
        aVar.d.a(tw1Var, i >>> 3);
        return a(i, bArr, i2, i3, ww1.f(obj), aVar);
    }

    public static <T> int a(la3<T> la3Var, byte[] bArr, int i, int i2, int i3, a aVar) throws IOException {
        T tA = la3Var.a();
        int iA = a(tA, la3Var, bArr, i, i2, i3, aVar);
        la3Var.c(tA);
        aVar.c = tA;
        return iA;
    }

    public static int a(la3<?> la3Var, int i, byte[] bArr, int i2, int i3, yh1.f<Object> fVar, a aVar) throws IOException {
        int i4 = (i & (-8)) | 4;
        int iA = a(la3Var, bArr, i2, i3, i4, aVar);
        fVar.add(aVar.c);
        while (iA < i3) {
            int iD = d(bArr, iA, aVar);
            if (i != aVar.a) {
                break;
            }
            iA = a(la3Var, bArr, iD, i3, i4, aVar);
            fVar.add(aVar.c);
        }
        return iA;
    }

    public static int a(byte[] bArr, int i, int i2, a aVar) throws np1 {
        int iD = d(bArr, i, aVar);
        int i3 = aVar.a;
        if (i3 < 0) {
            throw np1.g();
        }
        if (i3 <= i2 - iD) {
            return iD;
        }
        throw np1.l();
    }

    public static <T> int a(la3<T> la3Var, byte[] bArr, int i, int i2, a aVar) throws IOException {
        T tA = la3Var.a();
        int iA = a(tA, la3Var, bArr, i, i2, aVar);
        la3Var.c(tA);
        aVar.c = tA;
        return iA;
    }

    public static int a(byte[] bArr, int i, yh1.f<?> fVar, a aVar) throws np1 {
        ct ctVar = (ct) fVar;
        int iA = a(bArr, i, bArr.length, aVar);
        int i2 = aVar.a + iA;
        while (iA < i2) {
            iA = e(bArr, iA, aVar);
            ctVar.a(aVar.b != 0);
        }
        if (iA == i2) {
            return iA;
        }
        throw np1.l();
    }

    public static int a(int i, byte[] bArr, int i2, int i3, zv3 zv3Var, a aVar) throws np1 {
        if (u24.a(i) != 0) {
            int iB = u24.b(i);
            if (iB == 0) {
                int iE = e(bArr, i2, aVar);
                zv3Var.a(i, Long.valueOf(aVar.b));
                return iE;
            }
            if (iB == 1) {
                zv3Var.a(i, Long.valueOf(c(bArr, i2)));
                return i2 + 8;
            }
            if (iB == 2) {
                int iA = a(bArr, i2, bArr.length, aVar);
                int i4 = aVar.a;
                if (i4 == 0) {
                    zv3Var.a(i, du.b);
                } else {
                    zv3Var.a(i, du.a(bArr, iA, i4));
                }
                return iA + i4;
            }
            if (iB != 3) {
                if (iB != 5) {
                    throw np1.c();
                }
                zv3Var.a(i, Integer.valueOf(b(bArr, i2)));
                return i2 + 4;
            }
            zv3 zv3VarF = zv3.f();
            int i5 = (i & (-8)) | 4;
            int i6 = aVar.e + 1;
            aVar.e = i6;
            a(i6);
            int i7 = 0;
            while (true) {
                if (i2 >= i3) {
                    break;
                }
                int iD = d(bArr, i2, aVar);
                i7 = aVar.a;
                if (i7 == i5) {
                    i2 = iD;
                    break;
                }
                i2 = a(i7, bArr, iD, i3, zv3VarF, aVar);
            }
            aVar.e--;
            if (i2 <= i3 && i7 == i5) {
                zv3Var.a(i, zv3VarF);
                return i2;
            }
            throw np1.h();
        }
        throw np1.c();
    }

    public static int a(int i, byte[] bArr, int i2, a aVar) {
        int i3 = i & Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            aVar.a = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & 127) << 7);
        int i6 = i2 + 2;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            aVar.a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & 127) << 14);
        int i8 = i2 + 3;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            aVar.a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & 127) << 21);
        int i10 = i2 + 4;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            aVar.a = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & 127) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                aVar.a = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int a(long j, byte[] bArr, int i, a aVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        long j2 = (j & 127) | (((long) (b & 127)) << 7);
        int i3 = 7;
        while (b < 0) {
            int i4 = i2 + 1;
            byte b2 = bArr[i2];
            i3 += 7;
            j2 |= ((long) (b2 & 127)) << i3;
            i2 = i4;
            b = b2;
        }
        aVar.b = j2;
        return i2;
    }

    public static <T> int a(Object obj, la3<T> la3Var, byte[] bArr, int i, int i2, int i3, a aVar) throws IOException {
        int i4 = aVar.e + 1;
        aVar.e = i4;
        a(i4);
        int iA = ((ww1) la3Var).a(obj, bArr, i, i2, i3, aVar);
        aVar.e--;
        aVar.c = obj;
        return iA;
    }

    public static <T> int a(Object obj, la3<T> la3Var, byte[] bArr, int i, int i2, a aVar) throws IOException {
        int iA = a(bArr, i, i2, aVar);
        int i3 = aVar.a;
        int i4 = aVar.e + 1;
        aVar.e = i4;
        a(i4);
        int i5 = i3 + iA;
        la3Var.a(obj, bArr, iA, i5, aVar);
        aVar.e--;
        aVar.c = obj;
        return i5;
    }

    public static int a(int i, byte[] bArr, int i2, int i3, a aVar) throws np1 {
        if (u24.a(i) != 0) {
            int iB = u24.b(i);
            if (iB == 0) {
                return e(bArr, i2, aVar);
            }
            if (iB == 1) {
                return i2 + 8;
            }
            if (iB == 2) {
                return a(bArr, i2, bArr.length, aVar) + aVar.a;
            }
            if (iB != 3) {
                if (iB == 5) {
                    return i2 + 4;
                }
                throw np1.c();
            }
            int i4 = (i & (-8)) | 4;
            int i5 = aVar.e + 1;
            aVar.e = i5;
            a(i5);
            int i6 = 0;
            while (i2 < i3) {
                i2 = d(bArr, i2, aVar);
                i6 = aVar.a;
                if (i6 == i4) {
                    break;
                }
                i2 = a(i6, bArr, i2, i3, aVar);
            }
            aVar.e--;
            if (i2 > i3 || i6 != i4) {
                throw np1.h();
            }
            return i2;
        }
        throw np1.c();
    }
}
