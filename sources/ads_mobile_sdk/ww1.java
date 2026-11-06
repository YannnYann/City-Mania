package ads_mobile_sdk;

import ads_mobile_sdk.ao;
import ads_mobile_sdk.du;
import ads_mobile_sdk.gu1;
import ads_mobile_sdk.u24;
import ads_mobile_sdk.yh1;
import com.unity3d.services.UnityAdsConstants;
import java.io.IOException;
import java.lang.reflect.Field;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes.dex */
final class ww1<T> implements la3<T> {
    private static final int[] q = new int[0];
    private static final Unsafe r = hw3.c();
    private final int[] a;
    private final Object[] b;
    private final int c;
    private final int d;
    private final tw1 e;
    private final boolean f;
    private final boolean g;
    private final boolean h;
    private final int[] i;
    private final int j;
    private final int k;
    private final eb2 l;
    private final ns1 m;
    private final yv3<?, ?> n;
    private final fr0<?> o;
    private final ku1 p;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[u24.a.values().length];
            a = iArr;
            try {
                iArr[u24.a.j.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[u24.a.n.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[u24.a.c.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[u24.a.i.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[u24.a.q.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[u24.a.h.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[u24.a.r.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[u24.a.d.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[u24.a.p.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[u24.a.g.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[u24.a.o.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[u24.a.e.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                a[u24.a.f.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                a[u24.a.m.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                a[u24.a.s.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                a[u24.a.t.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                a[u24.a.k.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    private static boolean d(int i) {
        return (i & 536870912) != 0;
    }

    private static boolean e(int i) {
        return (i & Integer.MIN_VALUE) != 0;
    }

    private static boolean f(int i) {
        return (i & 268435456) != 0;
    }

    private static long h(int i) {
        return i & 1048575;
    }

    private static int k(int i) {
        return (i & 267386880) >>> 20;
    }

    private ww1(int[] iArr, Object[] objArr, int i, int i2, tw1 tw1Var, boolean z, int[] iArr2, int i3, int i4, eb2 eb2Var, ns1 ns1Var, yv3<?, ?> yv3Var, fr0<?> fr0Var, ku1 ku1Var) {
        this.a = iArr;
        this.b = objArr;
        this.c = i;
        this.d = i2;
        this.g = tw1Var instanceof vz0;
        this.f = fr0Var != null && fr0Var.a(tw1Var);
        this.h = z;
        this.i = iArr2;
        this.j = i3;
        this.k = i4;
        this.l = eb2Var;
        this.m = ns1Var;
        this.n = yv3Var;
        this.o = fr0Var;
        this.e = tw1Var;
        this.p = ku1Var;
    }

    @Override // ads_mobile_sdk.la3
    public int d(T t) {
        int i;
        int iA;
        int i2;
        int length = this.a.length;
        int iHashCode = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int iL = l(i3);
            int iK = k(iL);
            if (iK <= 50 || iK >= 69) {
                long jH = h(iL);
                int iH = 37;
                switch (iK) {
                    case 0:
                        i = iHashCode * 53;
                        iA = yh1.a(Double.doubleToLongBits(hw3.f(t, jH)));
                        iHashCode = iA + i;
                        break;
                    case 1:
                        i = iHashCode * 53;
                        iA = Float.floatToIntBits(hw3.g(t, jH));
                        iHashCode = iA + i;
                        break;
                    case 2:
                        i = iHashCode * 53;
                        iA = yh1.a(hw3.i(t, jH));
                        iHashCode = iA + i;
                        break;
                    case 3:
                        i = iHashCode * 53;
                        iA = yh1.a(hw3.i(t, jH));
                        iHashCode = iA + i;
                        break;
                    case 4:
                        i2 = iHashCode * 53;
                        iH = hw3.h(t, jH);
                        iHashCode = i2 + iH;
                        break;
                    case 5:
                        i = iHashCode * 53;
                        iA = yh1.a(hw3.i(t, jH));
                        iHashCode = iA + i;
                        break;
                    case 6:
                        i2 = iHashCode * 53;
                        iH = hw3.h(t, jH);
                        iHashCode = i2 + iH;
                        break;
                    case 7:
                        i = iHashCode * 53;
                        iA = yh1.a(hw3.a(t, jH));
                        iHashCode = iA + i;
                        break;
                    case 8:
                        i = iHashCode * 53;
                        iA = ((String) hw3.j(t, jH)).hashCode();
                        iHashCode = iA + i;
                        break;
                    case 9:
                        Object objJ = hw3.j(t, jH);
                        if (objJ != null) {
                            iH = objJ.hashCode();
                        }
                        i2 = iHashCode * 53;
                        iHashCode = i2 + iH;
                        break;
                    case 10:
                        i = iHashCode * 53;
                        iA = hw3.j(t, jH).hashCode();
                        iHashCode = iA + i;
                        break;
                    case 11:
                        i2 = iHashCode * 53;
                        iH = hw3.h(t, jH);
                        iHashCode = i2 + iH;
                        break;
                    case 12:
                        i2 = iHashCode * 53;
                        iH = hw3.h(t, jH);
                        iHashCode = i2 + iH;
                        break;
                    case 13:
                        i2 = iHashCode * 53;
                        iH = hw3.h(t, jH);
                        iHashCode = i2 + iH;
                        break;
                    case 14:
                        i = iHashCode * 53;
                        iA = yh1.a(hw3.i(t, jH));
                        iHashCode = iA + i;
                        break;
                    case 15:
                        i2 = iHashCode * 53;
                        iH = hw3.h(t, jH);
                        iHashCode = i2 + iH;
                        break;
                    case 16:
                        i = iHashCode * 53;
                        iA = yh1.a(hw3.i(t, jH));
                        iHashCode = iA + i;
                        break;
                    case 17:
                        Object objJ2 = hw3.j(t, jH);
                        if (objJ2 != null) {
                            iH = objJ2.hashCode();
                        }
                        i2 = iHashCode * 53;
                        iHashCode = i2 + iH;
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        i = iHashCode * 53;
                        iA = hw3.j(t, jH).hashCode();
                        iHashCode = iA + i;
                        break;
                    case 50:
                        i = iHashCode * 53;
                        iA = hw3.j(t, jH).hashCode();
                        iHashCode = iA + i;
                        break;
                }
            }
        }
        int i4 = this.k;
        while (true) {
            int[] iArr = this.i;
            if (i4 < iArr.length) {
                int i5 = iArr[i4];
                if (!c(t, 0, i5)) {
                    iHashCode = hw3.j(t, h(l(i5))).hashCode() + (iHashCode * 53);
                }
                i4++;
            } else {
                int iHashCode2 = this.n.b(t).hashCode() + (iHashCode * 53);
                return this.f ? (iHashCode2 * 53) + this.o.a(t).hashCode() : iHashCode2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void d(T t, T t2, int i) {
        int iG = g(i);
        if (c(t2, iG, i)) {
            long jH = h(l(i));
            Unsafe unsafe = r;
            Object object = unsafe.getObject(t2, jH);
            if (object != null) {
                la3 la3VarC = c(i);
                if (!c(t, iG, i)) {
                    if (!g(object)) {
                        unsafe.putObject(t, jH, object);
                    } else {
                        Object objA = la3VarC.a();
                        la3VarC.a(objA, object);
                        unsafe.putObject(t, jH, objA);
                    }
                    e(t, iG, i);
                    return;
                }
                Object object2 = unsafe.getObject(t, jH);
                if (!g(object2)) {
                    Object objA2 = la3VarC.a();
                    la3VarC.a(objA2, object2);
                    unsafe.putObject(t, jH, objA2);
                    object2 = objA2;
                }
                la3VarC.a(object2, object);
                return;
            }
            throw new IllegalStateException("Source subfield " + g(i) + " is present but null: " + String.valueOf(t2));
        }
    }

    private <K, V> int a(T t, byte[] bArr, int i, int i2, int i3, long j, ao.a aVar) throws IOException {
        Unsafe unsafe = r;
        Object objB = b(i3);
        Object object = unsafe.getObject(t, j);
        if (this.p.d(object)) {
            Object objB2 = this.p.b(objB);
            this.p.a(objB2, object);
            unsafe.putObject(t, j, objB2);
            object = objB2;
        }
        return a(bArr, i, i2, this.p.f(objB), this.p.c(object), aVar);
    }

    public static zv3 f(Object obj) {
        vz0 vz0Var = (vz0) obj;
        zv3 zv3Var = vz0Var.b;
        if (zv3Var != zv3.b()) {
            return zv3Var;
        }
        zv3 zv3VarF = zv3.f();
        vz0Var.b = zv3VarF;
        return zv3VarF;
    }

    private int l(int i) {
        return this.a[i + 1];
    }

    private int j(int i) {
        return this.a[i + 2];
    }

    private static boolean g(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof vz0) {
            return ((vz0) obj).p();
        }
        return true;
    }

    private static void e(Object obj) {
        if (g(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: " + String.valueOf(obj));
    }

    private static <T> double b(T t, long j) {
        return hw3.f(t, j);
    }

    private static <T> float c(T t, long j) {
        return hw3.g(t, j);
    }

    private static <T> long h(T t, long j) {
        return ((Long) hw3.j(t, j)).longValue();
    }

    private boolean a(T t, T t2, int i) {
        return a((Object) t, i) == a((Object) t2, i);
    }

    private int i(int i) {
        if (i < this.c || i > this.d) {
            return -1;
        }
        return b(i, 0);
    }

    @Override // ads_mobile_sdk.la3
    public boolean b(T t, T t2) {
        T t3;
        T t4;
        int length = this.a.length;
        int i = 0;
        while (i < length) {
            int iL = l(i);
            int iK = k(iL);
            if (iK <= 50 || iK >= 69) {
                t3 = t;
                t4 = t2;
                if (!a(t3, t4, i, iK, h(iL))) {
                    return false;
                }
            } else {
                t3 = t;
                t4 = t2;
            }
            i += 3;
            t = t3;
            t2 = t4;
        }
        T t5 = t;
        T t6 = t2;
        int i2 = this.k;
        while (true) {
            int[] iArr = this.i;
            if (i2 < iArr.length) {
                int i3 = iArr[i2];
                if (!b(t5, t6, i3)) {
                    return false;
                }
                if (!c(t5, 0, i3)) {
                    long jH = h(l(i3));
                    if (!ma3.a(hw3.j(t5, jH), hw3.j(t6, jH))) {
                        return false;
                    }
                }
                i2++;
            } else {
                if (!this.n.b(t5).equals(this.n.b(t6))) {
                    return false;
                }
                if (this.f) {
                    return this.o.a(t5).equals(this.o.a(t6));
                }
                return true;
            }
        }
    }

    private void e(T t, T t2, int i) {
        int iL = l(i);
        long jH = h(iL);
        int iG = g(i);
        switch (k(iL)) {
            case 0:
                if (a((Object) t2, i)) {
                    hw3.a(t, jH, hw3.f(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 1:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.g(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 2:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.i(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 3:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.i(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 4:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.h(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 5:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.i(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 6:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.h(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 7:
                if (a((Object) t2, i)) {
                    hw3.a(t, jH, hw3.a(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 8:
                if (a((Object) t2, i)) {
                    hw3.a(t, jH, hw3.j(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 9:
                c(t, t2, i);
                break;
            case 10:
                if (a((Object) t2, i)) {
                    hw3.a(t, jH, hw3.j(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 11:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.h(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 12:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.h(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 13:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.h(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 14:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.i(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 15:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.h(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 16:
                if (a((Object) t2, i)) {
                    hw3.a((Object) t, jH, hw3.i(t2, jH));
                    c((Object) t, i);
                }
                break;
            case 17:
                c(t, t2, i);
                break;
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
            case 48:
            case 49:
                this.m.a(t, t2, jH);
                break;
            case 50:
                ma3.a(this.p, t, t2, jH);
                break;
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
                if (c(t2, iG, i)) {
                    hw3.a(t, jH, hw3.j(t2, jH));
                    e(t, iG, i);
                }
                break;
            case 60:
                d(t, t2, i);
                break;
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
                if (c(t2, iG, i)) {
                    hw3.a(t, jH, hw3.j(t2, jH));
                    e(t, iG, i);
                }
                break;
            case 68:
                d(t, t2, i);
                break;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x009d. Please report as an issue. */
    public int a(T t, byte[] bArr, int i, int i2, int i3, ao.a aVar) throws IOException {
        T t2;
        int i4;
        int i5;
        Unsafe unsafe;
        ww1<T> ww1Var;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        ao.a aVar2;
        int i13;
        int i14;
        T t3;
        int iA;
        long j;
        ao.a aVar3;
        int i15;
        Unsafe unsafe2;
        int i16;
        int iE;
        Unsafe unsafe3;
        int iE2;
        ao.a aVar4;
        T t4;
        byte[] bArr2;
        int i17;
        byte[] bArr3;
        int i18;
        ao.a aVar5;
        int i19;
        int i20;
        int i21;
        int iA2;
        ww1<T> ww1Var2 = this;
        T t5 = t;
        byte[] bArr4 = bArr;
        int i22 = i2;
        ao.a aVar6 = aVar;
        e(t5);
        Unsafe unsafe4 = r;
        int i23 = -1;
        int iA3 = i;
        int i24 = -1;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        int i28 = 1048575;
        while (true) {
            if (iA3 < i22) {
                int iA4 = iA3 + 1;
                int i29 = bArr4[iA3];
                if (i29 < 0) {
                    iA4 = ao.a(i29, bArr4, iA4, aVar6);
                    i29 = aVar6.a;
                }
                int i30 = iA4;
                int i31 = i29;
                int i32 = (i31 == true ? 1 : 0) >>> 3;
                int i33 = (i31 == true ? 1 : 0) & 7;
                if (i32 > i24) {
                    i7 = ww1Var2.a(i32, i25 / 3);
                } else {
                    i7 = ww1Var2.i(i32);
                }
                if (i7 == i23) {
                    i8 = i30;
                    i5 = i28;
                    unsafe = unsafe4;
                    i9 = i23;
                    i10 = i32;
                    i11 = 0;
                    ww1Var = ww1Var2;
                    i12 = i31 == true ? 1 : 0;
                    aVar2 = aVar;
                } else {
                    int i34 = ww1Var2.a[i7 + 1];
                    int i35 = i23;
                    int iK = k(i34);
                    long jH = h(i34);
                    if (iK <= 17) {
                        int i36 = ww1Var2.a[i7 + 2];
                        int i37 = 1 << (i36 >>> 20);
                        i13 = i36 & 1048575;
                        if (i13 != i28) {
                            i10 = i32;
                            j = jH;
                            if (i28 != 1048575) {
                                unsafe4.putInt(t5, i28, i26);
                            }
                            i26 = i13 == 1048575 ? 0 : unsafe4.getInt(t5, i13);
                        } else {
                            j = jH;
                            i10 = i32;
                            i13 = i28;
                        }
                        switch (iK) {
                            case 0:
                                aVar3 = aVar;
                                i15 = i7;
                                unsafe2 = unsafe4;
                                i16 = i30;
                                long j2 = j;
                                if (i33 == 1) {
                                    hw3.a(t5, j2, ao.a(bArr, i16));
                                    iE = i16 + 8;
                                    i14 = i2;
                                    ww1Var = ww1Var2;
                                    t3 = t5;
                                    unsafe = unsafe2;
                                    i26 |= i37;
                                    i11 = i15;
                                    i12 = i31 == true ? 1 : 0;
                                    i9 = i35;
                                    iA3 = iE;
                                    bArr4 = bArr;
                                    i27 = i12;
                                    t5 = t3;
                                    i22 = i14;
                                    i25 = i11;
                                    ww1Var2 = ww1Var;
                                    i28 = i13;
                                    i23 = i9;
                                    i24 = i10;
                                    unsafe4 = unsafe;
                                    aVar6 = aVar;
                                }
                                ww1Var = ww1Var2;
                                unsafe = unsafe2;
                                i5 = i13;
                                i12 = i31 == true ? 1 : 0;
                                i8 = i16;
                                i9 = i35;
                                aVar2 = aVar3;
                                i11 = i15;
                                break;
                            case 1:
                                aVar3 = aVar;
                                i15 = i7;
                                unsafe2 = unsafe4;
                                i16 = i30;
                                long j3 = j;
                                if (i33 == 5) {
                                    hw3.a((Object) t5, j3, ao.d(bArr, i16));
                                    iE = i16 + 4;
                                    i14 = i2;
                                    ww1Var = ww1Var2;
                                    t3 = t5;
                                    unsafe = unsafe2;
                                    i26 |= i37;
                                    i11 = i15;
                                    i12 = i31 == true ? 1 : 0;
                                    i9 = i35;
                                    iA3 = iE;
                                    bArr4 = bArr;
                                    i27 = i12;
                                    t5 = t3;
                                    i22 = i14;
                                    i25 = i11;
                                    ww1Var2 = ww1Var;
                                    i28 = i13;
                                    i23 = i9;
                                    i24 = i10;
                                    unsafe4 = unsafe;
                                    aVar6 = aVar;
                                }
                                ww1Var = ww1Var2;
                                unsafe = unsafe2;
                                i5 = i13;
                                i12 = i31 == true ? 1 : 0;
                                i8 = i16;
                                i9 = i35;
                                aVar2 = aVar3;
                                i11 = i15;
                                break;
                            case 2:
                            case 3:
                                aVar3 = aVar;
                                i15 = i7;
                                unsafe3 = unsafe4;
                                i16 = i30;
                                long j4 = j;
                                if (i33 == 0) {
                                    iE2 = ao.e(bArr, i16, aVar3);
                                    T t6 = t5;
                                    unsafe3.putLong(t6, j4, aVar3.b);
                                    unsafe2 = unsafe3;
                                    t5 = t6;
                                    iE = iE2;
                                    i14 = i2;
                                    ww1Var = ww1Var2;
                                    t3 = t5;
                                    unsafe = unsafe2;
                                    i26 |= i37;
                                    i11 = i15;
                                    i12 = i31 == true ? 1 : 0;
                                    i9 = i35;
                                    iA3 = iE;
                                    bArr4 = bArr;
                                    i27 = i12;
                                    t5 = t3;
                                    i22 = i14;
                                    i25 = i11;
                                    ww1Var2 = ww1Var;
                                    i28 = i13;
                                    i23 = i9;
                                    i24 = i10;
                                    unsafe4 = unsafe;
                                    aVar6 = aVar;
                                }
                                unsafe2 = unsafe3;
                                ww1Var = ww1Var2;
                                unsafe = unsafe2;
                                i5 = i13;
                                i12 = i31 == true ? 1 : 0;
                                i8 = i16;
                                i9 = i35;
                                aVar2 = aVar3;
                                i11 = i15;
                                break;
                            case 4:
                            case 11:
                                aVar3 = aVar;
                                i15 = i7;
                                unsafe3 = unsafe4;
                                i16 = i30;
                                long j5 = j;
                                if (i33 == 0) {
                                    int iD = ao.d(bArr, i16, aVar3);
                                    unsafe3.putInt(t5, j5, aVar3.a);
                                    unsafe2 = unsafe3;
                                    iE = iD;
                                    i14 = i2;
                                    ww1Var = ww1Var2;
                                    t3 = t5;
                                    unsafe = unsafe2;
                                    i26 |= i37;
                                    i11 = i15;
                                    i12 = i31 == true ? 1 : 0;
                                    i9 = i35;
                                    iA3 = iE;
                                    bArr4 = bArr;
                                    i27 = i12;
                                    t5 = t3;
                                    i22 = i14;
                                    i25 = i11;
                                    ww1Var2 = ww1Var;
                                    i28 = i13;
                                    i23 = i9;
                                    i24 = i10;
                                    unsafe4 = unsafe;
                                    aVar6 = aVar;
                                }
                                unsafe2 = unsafe3;
                                ww1Var = ww1Var2;
                                unsafe = unsafe2;
                                i5 = i13;
                                i12 = i31 == true ? 1 : 0;
                                i8 = i16;
                                i9 = i35;
                                aVar2 = aVar3;
                                i11 = i15;
                                break;
                            case 5:
                            case 14:
                                T t7 = t5;
                                i15 = i7;
                                i16 = i30;
                                long j6 = j;
                                if (i33 == 1) {
                                    Unsafe unsafe5 = unsafe4;
                                    unsafe5.putLong(t7, j6, ao.c(bArr, i16));
                                    t5 = t7;
                                    unsafe2 = unsafe5;
                                    iE = i16 + 8;
                                    i14 = i2;
                                    ww1Var = ww1Var2;
                                    t3 = t5;
                                    unsafe = unsafe2;
                                    i26 |= i37;
                                    i11 = i15;
                                    i12 = i31 == true ? 1 : 0;
                                    i9 = i35;
                                    iA3 = iE;
                                    bArr4 = bArr;
                                    i27 = i12;
                                    t5 = t3;
                                    i22 = i14;
                                    i25 = i11;
                                    ww1Var2 = ww1Var;
                                    i28 = i13;
                                    i23 = i9;
                                    i24 = i10;
                                    unsafe4 = unsafe;
                                    aVar6 = aVar;
                                } else {
                                    unsafe3 = unsafe4;
                                    aVar3 = aVar;
                                    unsafe2 = unsafe3;
                                    ww1Var = ww1Var2;
                                    unsafe = unsafe2;
                                    i5 = i13;
                                    i12 = i31 == true ? 1 : 0;
                                    i8 = i16;
                                    i9 = i35;
                                    aVar2 = aVar3;
                                    i11 = i15;
                                }
                                break;
                            case 6:
                            case 13:
                                aVar4 = aVar;
                                t4 = t5;
                                i15 = i7;
                                i16 = i30;
                                long j7 = j;
                                bArr2 = bArr;
                                if (i33 == 5) {
                                    unsafe4.putInt(t4, j7, ao.b(bArr2, i16));
                                    iE = i16 + 4;
                                    t5 = t4;
                                    unsafe2 = unsafe4;
                                    i14 = i2;
                                    ww1Var = ww1Var2;
                                    t3 = t5;
                                    unsafe = unsafe2;
                                    i26 |= i37;
                                    i11 = i15;
                                    i12 = i31 == true ? 1 : 0;
                                    i9 = i35;
                                    iA3 = iE;
                                    bArr4 = bArr;
                                    i27 = i12;
                                    t5 = t3;
                                    i22 = i14;
                                    i25 = i11;
                                    ww1Var2 = ww1Var;
                                    i28 = i13;
                                    i23 = i9;
                                    i24 = i10;
                                    unsafe4 = unsafe;
                                    aVar6 = aVar;
                                } else {
                                    aVar3 = aVar4;
                                    unsafe2 = unsafe4;
                                    ww1Var = ww1Var2;
                                    unsafe = unsafe2;
                                    i5 = i13;
                                    i12 = i31 == true ? 1 : 0;
                                    i8 = i16;
                                    i9 = i35;
                                    aVar2 = aVar3;
                                    i11 = i15;
                                }
                                break;
                            case 7:
                                aVar4 = aVar;
                                t4 = t5;
                                i15 = i7;
                                i17 = i30;
                                long j8 = j;
                                bArr2 = bArr;
                                if (i33 == 0) {
                                    iE = ao.e(bArr2, i17, aVar4);
                                    hw3.a(t4, j8, aVar4.b != 0);
                                    t5 = t4;
                                    unsafe2 = unsafe4;
                                    i14 = i2;
                                    ww1Var = ww1Var2;
                                    t3 = t5;
                                    unsafe = unsafe2;
                                    i26 |= i37;
                                    i11 = i15;
                                    i12 = i31 == true ? 1 : 0;
                                    i9 = i35;
                                    iA3 = iE;
                                    bArr4 = bArr;
                                    i27 = i12;
                                    t5 = t3;
                                    i22 = i14;
                                    i25 = i11;
                                    ww1Var2 = ww1Var;
                                    i28 = i13;
                                    i23 = i9;
                                    i24 = i10;
                                    unsafe4 = unsafe;
                                    aVar6 = aVar;
                                }
                                aVar3 = aVar4;
                                unsafe2 = unsafe4;
                                i16 = i17;
                                ww1Var = ww1Var2;
                                unsafe = unsafe2;
                                i5 = i13;
                                i12 = i31 == true ? 1 : 0;
                                i8 = i16;
                                i9 = i35;
                                aVar2 = aVar3;
                                i11 = i15;
                                break;
                            case 8:
                                aVar4 = aVar;
                                t4 = t5;
                                i15 = i7;
                                i17 = i30;
                                long j9 = j;
                                bArr2 = bArr;
                                if (i33 == 2) {
                                    if (d(i34)) {
                                        iE = ao.c(bArr2, i17, aVar4);
                                    } else {
                                        iE = ao.b(bArr2, i17, aVar4);
                                    }
                                    unsafe4.putObject(t4, j9, aVar4.c);
                                    t5 = t4;
                                    unsafe2 = unsafe4;
                                    i14 = i2;
                                    ww1Var = ww1Var2;
                                    t3 = t5;
                                    unsafe = unsafe2;
                                    i26 |= i37;
                                    i11 = i15;
                                    i12 = i31 == true ? 1 : 0;
                                    i9 = i35;
                                    iA3 = iE;
                                    bArr4 = bArr;
                                    i27 = i12;
                                    t5 = t3;
                                    i22 = i14;
                                    i25 = i11;
                                    ww1Var2 = ww1Var;
                                    i28 = i13;
                                    i23 = i9;
                                    i24 = i10;
                                    unsafe4 = unsafe;
                                    aVar6 = aVar;
                                }
                                aVar3 = aVar4;
                                unsafe2 = unsafe4;
                                i16 = i17;
                                ww1Var = ww1Var2;
                                unsafe = unsafe2;
                                i5 = i13;
                                i12 = i31 == true ? 1 : 0;
                                i8 = i16;
                                i9 = i35;
                                aVar2 = aVar3;
                                i11 = i15;
                                break;
                            case 9:
                                i15 = i7;
                                Unsafe unsafe6 = unsafe4;
                                if (i33 == 2) {
                                    T t8 = t5;
                                    Object objB = ww1Var2.b((Object) t8, i15);
                                    t4 = t8;
                                    unsafe4 = unsafe6;
                                    iE = ao.a(objB, ww1Var2.c(i15), bArr, i30, i2, aVar);
                                    bArr2 = bArr;
                                    aVar4 = aVar;
                                    ww1Var2.a(t4, i15, objB);
                                    t5 = t4;
                                    unsafe2 = unsafe4;
                                    i14 = i2;
                                    ww1Var = ww1Var2;
                                    t3 = t5;
                                    unsafe = unsafe2;
                                    i26 |= i37;
                                    i11 = i15;
                                    i12 = i31 == true ? 1 : 0;
                                    i9 = i35;
                                    iA3 = iE;
                                    bArr4 = bArr;
                                    i27 = i12;
                                    t5 = t3;
                                    i22 = i14;
                                    i25 = i11;
                                    ww1Var2 = ww1Var;
                                    i28 = i13;
                                    i23 = i9;
                                    i24 = i10;
                                    unsafe4 = unsafe;
                                    aVar6 = aVar;
                                } else {
                                    t4 = t5;
                                    bArr2 = bArr;
                                    unsafe4 = unsafe6;
                                    i17 = i30;
                                    aVar4 = aVar;
                                    aVar3 = aVar4;
                                    unsafe2 = unsafe4;
                                    i16 = i17;
                                    ww1Var = ww1Var2;
                                    unsafe = unsafe2;
                                    i5 = i13;
                                    i12 = i31 == true ? 1 : 0;
                                    i8 = i16;
                                    i9 = i35;
                                    aVar2 = aVar3;
                                    i11 = i15;
                                }
                                break;
                            case 10:
                                bArr3 = bArr;
                                i15 = i7;
                                unsafe3 = unsafe4;
                                i18 = i30;
                                long j10 = j;
                                aVar5 = aVar;
                                if (i33 == 2) {
                                    iA3 = ao.a(bArr3, i18, aVar5);
                                    unsafe3.putObject(t5, j10, aVar5.c);
                                    int i38 = iA3;
                                    unsafe2 = unsafe3;
                                    iE = i38;
                                    i14 = i2;
                                    ww1Var = ww1Var2;
                                    t3 = t5;
                                    unsafe = unsafe2;
                                    i26 |= i37;
                                    i11 = i15;
                                    i12 = i31 == true ? 1 : 0;
                                    i9 = i35;
                                    iA3 = iE;
                                    bArr4 = bArr;
                                    i27 = i12;
                                    t5 = t3;
                                    i22 = i14;
                                    i25 = i11;
                                    ww1Var2 = ww1Var;
                                    i28 = i13;
                                    i23 = i9;
                                    i24 = i10;
                                    unsafe4 = unsafe;
                                    aVar6 = aVar;
                                }
                                aVar3 = aVar5;
                                i16 = i18;
                                unsafe2 = unsafe3;
                                ww1Var = ww1Var2;
                                unsafe = unsafe2;
                                i5 = i13;
                                i12 = i31 == true ? 1 : 0;
                                i8 = i16;
                                i9 = i35;
                                aVar2 = aVar3;
                                i11 = i15;
                                break;
                            case 12:
                                bArr3 = bArr;
                                i15 = i7;
                                unsafe3 = unsafe4;
                                i18 = i30;
                                long j11 = j;
                                aVar5 = aVar;
                                if (i33 == 0) {
                                    iA3 = ao.d(bArr3, i18, aVar5);
                                    int i39 = aVar5.a;
                                    yh1.b bVarA = ww1Var2.a(i15);
                                    if (e(i34) && bVarA != null && !bVarA.a(i39)) {
                                        f(t5).a(i31 == true ? 1 : 0, Long.valueOf(i39));
                                        i14 = i2;
                                        ww1Var = ww1Var2;
                                        t3 = t5;
                                        unsafe = unsafe3;
                                        i11 = i15;
                                        i12 = i31 == true ? 1 : 0;
                                        i9 = i35;
                                        bArr4 = bArr;
                                        i27 = i12;
                                        t5 = t3;
                                        i22 = i14;
                                        i25 = i11;
                                        ww1Var2 = ww1Var;
                                        i28 = i13;
                                        i23 = i9;
                                        i24 = i10;
                                        unsafe4 = unsafe;
                                        aVar6 = aVar;
                                    } else {
                                        unsafe3.putInt(t5, j11, i39);
                                        int i382 = iA3;
                                        unsafe2 = unsafe3;
                                        iE = i382;
                                        i14 = i2;
                                        ww1Var = ww1Var2;
                                        t3 = t5;
                                        unsafe = unsafe2;
                                        i26 |= i37;
                                        i11 = i15;
                                        i12 = i31 == true ? 1 : 0;
                                        i9 = i35;
                                        iA3 = iE;
                                        bArr4 = bArr;
                                        i27 = i12;
                                        t5 = t3;
                                        i22 = i14;
                                        i25 = i11;
                                        ww1Var2 = ww1Var;
                                        i28 = i13;
                                        i23 = i9;
                                        i24 = i10;
                                        unsafe4 = unsafe;
                                        aVar6 = aVar;
                                    }
                                }
                                aVar3 = aVar5;
                                i16 = i18;
                                unsafe2 = unsafe3;
                                ww1Var = ww1Var2;
                                unsafe = unsafe2;
                                i5 = i13;
                                i12 = i31 == true ? 1 : 0;
                                i8 = i16;
                                i9 = i35;
                                aVar2 = aVar3;
                                i11 = i15;
                                break;
                            case 15:
                                bArr3 = bArr;
                                i15 = i7;
                                unsafe3 = unsafe4;
                                i18 = i30;
                                long j12 = j;
                                aVar5 = aVar;
                                if (i33 == 0) {
                                    iA3 = ao.d(bArr3, i18, aVar5);
                                    unsafe3.putInt(t5, j12, my.b(aVar5.a));
                                    int i3822 = iA3;
                                    unsafe2 = unsafe3;
                                    iE = i3822;
                                    i14 = i2;
                                    ww1Var = ww1Var2;
                                    t3 = t5;
                                    unsafe = unsafe2;
                                    i26 |= i37;
                                    i11 = i15;
                                    i12 = i31 == true ? 1 : 0;
                                    i9 = i35;
                                    iA3 = iE;
                                    bArr4 = bArr;
                                    i27 = i12;
                                    t5 = t3;
                                    i22 = i14;
                                    i25 = i11;
                                    ww1Var2 = ww1Var;
                                    i28 = i13;
                                    i23 = i9;
                                    i24 = i10;
                                    unsafe4 = unsafe;
                                    aVar6 = aVar;
                                }
                                aVar3 = aVar5;
                                i16 = i18;
                                unsafe2 = unsafe3;
                                ww1Var = ww1Var2;
                                unsafe = unsafe2;
                                i5 = i13;
                                i12 = i31 == true ? 1 : 0;
                                i8 = i16;
                                i9 = i35;
                                aVar2 = aVar3;
                                i11 = i15;
                                break;
                            case 16:
                                bArr3 = bArr;
                                i15 = i7;
                                i18 = i30;
                                if (i33 == 0) {
                                    iE2 = ao.e(bArr3, i18, aVar);
                                    T t9 = t5;
                                    Unsafe unsafe7 = unsafe4;
                                    unsafe7.putLong(t9, j, my.a(aVar.b));
                                    t5 = t9;
                                    unsafe2 = unsafe7;
                                    iE = iE2;
                                    i14 = i2;
                                    ww1Var = ww1Var2;
                                    t3 = t5;
                                    unsafe = unsafe2;
                                    i26 |= i37;
                                    i11 = i15;
                                    i12 = i31 == true ? 1 : 0;
                                    i9 = i35;
                                    iA3 = iE;
                                    bArr4 = bArr;
                                    i27 = i12;
                                    t5 = t3;
                                    i22 = i14;
                                    i25 = i11;
                                    ww1Var2 = ww1Var;
                                    i28 = i13;
                                    i23 = i9;
                                    i24 = i10;
                                    unsafe4 = unsafe;
                                    aVar6 = aVar;
                                } else {
                                    Unsafe unsafe8 = unsafe4;
                                    aVar5 = aVar;
                                    unsafe3 = unsafe8;
                                    aVar3 = aVar5;
                                    i16 = i18;
                                    unsafe2 = unsafe3;
                                    ww1Var = ww1Var2;
                                    unsafe = unsafe2;
                                    i5 = i13;
                                    i12 = i31 == true ? 1 : 0;
                                    i8 = i16;
                                    i9 = i35;
                                    aVar2 = aVar3;
                                    i11 = i15;
                                }
                                break;
                            case 17:
                                if (i33 == 3) {
                                    Object objB2 = ww1Var2.b((Object) t5, i7);
                                    i15 = i7;
                                    int iA5 = ao.a(objB2, ww1Var2.c(i7), bArr, i30, i2, (i10 << 3) | 4, aVar);
                                    ww1Var2.a(t5, i15, objB2);
                                    iE = iA5;
                                    unsafe2 = unsafe4;
                                    i14 = i2;
                                    ww1Var = ww1Var2;
                                    t3 = t5;
                                    unsafe = unsafe2;
                                    i26 |= i37;
                                    i11 = i15;
                                    i12 = i31 == true ? 1 : 0;
                                    i9 = i35;
                                    iA3 = iE;
                                    bArr4 = bArr;
                                    i27 = i12;
                                    t5 = t3;
                                    i22 = i14;
                                    i25 = i11;
                                    ww1Var2 = ww1Var;
                                    i28 = i13;
                                    i23 = i9;
                                    i24 = i10;
                                    unsafe4 = unsafe;
                                    aVar6 = aVar;
                                } else {
                                    i15 = i7;
                                    aVar3 = aVar;
                                    unsafe2 = unsafe4;
                                    i16 = i30;
                                    ww1Var = ww1Var2;
                                    unsafe = unsafe2;
                                    i5 = i13;
                                    i12 = i31 == true ? 1 : 0;
                                    i8 = i16;
                                    i9 = i35;
                                    aVar2 = aVar3;
                                    i11 = i15;
                                }
                                break;
                            default:
                                aVar3 = aVar;
                                i15 = i7;
                                unsafe2 = unsafe4;
                                i16 = i30;
                                ww1Var = ww1Var2;
                                unsafe = unsafe2;
                                i5 = i13;
                                i12 = i31 == true ? 1 : 0;
                                i8 = i16;
                                i9 = i35;
                                aVar2 = aVar3;
                                i11 = i15;
                                break;
                        }
                    } else {
                        i13 = i28;
                        i10 = i32;
                        i11 = i7;
                        Unsafe unsafe9 = unsafe4;
                        if (iK != 27) {
                            i20 = i30;
                            if (iK <= 49) {
                                unsafe = unsafe9;
                                i5 = i13;
                                i9 = i35;
                                i21 = i26;
                                iA2 = ww1Var2.a(t, bArr, i20, i2, i31 == true ? 1 : 0, i10, i33, i11, i34, iK, jH, aVar);
                                i19 = i31 == true ? 1 : 0;
                                if (iA2 != i20) {
                                    aVar2 = aVar;
                                    iA3 = iA2;
                                    i12 = i19;
                                    ww1Var = this;
                                    t5 = t;
                                    bArr4 = bArr;
                                    i22 = i2;
                                    i25 = i11;
                                    aVar6 = aVar2;
                                    i28 = i5;
                                    i26 = i21;
                                    i23 = i9;
                                    i24 = i10;
                                    i27 = i12;
                                    ww1Var2 = ww1Var;
                                    unsafe4 = unsafe;
                                } else {
                                    aVar2 = aVar;
                                    i12 = i19;
                                    ww1Var = this;
                                    i8 = iA2;
                                    i26 = i21;
                                }
                            } else {
                                unsafe = unsafe9;
                                i5 = i13;
                                i9 = i35;
                                i19 = i31 == true ? 1 : 0;
                                i21 = i26;
                                if (iK != 50) {
                                    aVar2 = aVar;
                                    iA2 = a(t, bArr, i20, i2, i19 == true ? 1 : 0, i10, i33, i34, iK, jH, i11, aVar2);
                                    ww1Var = this;
                                    i12 = i19 == true ? 1 : 0;
                                    i11 = i11;
                                    if (iA2 != i20) {
                                        iA3 = iA2;
                                        t5 = t;
                                        bArr4 = bArr;
                                        i22 = i2;
                                        i25 = i11;
                                        aVar6 = aVar2;
                                        i28 = i5;
                                        i26 = i21;
                                        i23 = i9;
                                        i24 = i10;
                                        i27 = i12;
                                        ww1Var2 = ww1Var;
                                        unsafe4 = unsafe;
                                    } else {
                                        i8 = iA2;
                                        i26 = i21;
                                    }
                                } else if (i33 == 2) {
                                    iA2 = a(t, bArr, i20, i2, i11, jH, aVar);
                                    i11 = i11;
                                    if (iA2 != i20) {
                                        aVar2 = aVar;
                                        iA3 = iA2;
                                        i12 = i19;
                                        ww1Var = this;
                                        t5 = t;
                                        bArr4 = bArr;
                                        i22 = i2;
                                        i25 = i11;
                                        aVar6 = aVar2;
                                        i28 = i5;
                                        i26 = i21;
                                        i23 = i9;
                                        i24 = i10;
                                        i27 = i12;
                                        ww1Var2 = ww1Var;
                                        unsafe4 = unsafe;
                                    } else {
                                        aVar2 = aVar;
                                        i12 = i19;
                                        ww1Var = this;
                                        i8 = iA2;
                                        i26 = i21;
                                    }
                                }
                            }
                        } else if (i33 == 2) {
                            yh1.f fVarA2 = (yh1.f) unsafe9.getObject(t5, jH);
                            if (!fVarA2.b()) {
                                int size = fVarA2.size();
                                fVarA2 = fVarA2.a2(size == 0 ? 10 : size * 2);
                                unsafe9.putObject(t5, jH, fVarA2);
                            }
                            t3 = t;
                            i14 = i2;
                            iA3 = ao.b(ww1Var2.c(i11), i31 == true ? 1 : 0, bArr, i30, i2, fVarA2, aVar);
                            unsafe = unsafe9;
                            i9 = i35;
                            ww1Var = ww1Var2;
                            i12 = i31 == true ? 1 : 0;
                            bArr4 = bArr;
                            i27 = i12;
                            t5 = t3;
                            i22 = i14;
                            i25 = i11;
                            ww1Var2 = ww1Var;
                            i28 = i13;
                            i23 = i9;
                            i24 = i10;
                            unsafe4 = unsafe;
                            aVar6 = aVar;
                        } else {
                            unsafe = unsafe9;
                            i5 = i13;
                            i19 = i31 == true ? 1 : 0;
                            i20 = i30;
                            i9 = i35;
                            i21 = i26;
                        }
                        aVar2 = aVar;
                        i8 = i20;
                        i12 = i19;
                        i26 = i21;
                        ww1Var = this;
                    }
                }
                if (i12 != i3 || i3 == 0) {
                    if (ww1Var.f && aVar2.d != er0.a()) {
                        iA = ao.a(i12 == true ? 1 : 0, bArr, i8, i2, t, ww1Var.e, ww1Var.n, aVar2);
                        t3 = t;
                        i14 = i2;
                    } else {
                        t3 = t;
                        iA = ao.a(i12 == true ? 1 : 0, bArr, i8, i2, f(t3), aVar);
                        i14 = i2;
                    }
                    iA3 = iA;
                    i13 = i5;
                    bArr4 = bArr;
                    i27 = i12;
                    t5 = t3;
                    i22 = i14;
                    i25 = i11;
                    ww1Var2 = ww1Var;
                    i28 = i13;
                    i23 = i9;
                    i24 = i10;
                    unsafe4 = unsafe;
                    aVar6 = aVar;
                } else {
                    t2 = t;
                    i4 = i2;
                    i27 = i12 == true ? 1 : 0;
                    i6 = i8;
                }
            } else {
                t2 = t5;
                i4 = i22;
                i5 = i28;
                unsafe = unsafe4;
                ww1Var = ww1Var2;
                i6 = iA3;
            }
        }
        int i40 = i5;
        if (i40 != 1048575) {
            unsafe.putInt(t2, i40, i26);
        }
        zv3 zv3Var = null;
        for (int i41 = ww1Var.j; i41 < ww1Var.k; i41++) {
            zv3Var = (zv3) ww1Var.a(t2, ww1Var.i[i41], zv3Var, (yv3<UT, zv3>) ww1Var.n, t);
        }
        T t10 = t2;
        ww1<T> ww1Var3 = ww1Var;
        if (zv3Var != null) {
            ww1Var3.n.b(t10, zv3Var);
        }
        if (i3 == 0) {
            if (i6 != i4) {
                throw np1.h();
            }
        } else if (i6 > i4 || i27 != i3) {
            throw np1.h();
        }
        return i6;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Object d(T t, int i, int i2) {
        la3 la3VarC = c(i2);
        if (!c(t, i, i2)) {
            return la3VarC.a();
        }
        Object object = r.getObject(t, h(l(i2)));
        if (g(object)) {
            return object;
        }
        Object objA = la3VarC.a();
        if (object != null) {
            la3VarC.a(objA, object);
        }
        return objA;
    }

    private static <T> float f(T t, long j) {
        return ((Float) hw3.j(t, j)).floatValue();
    }

    private la3 c(int i) {
        int i2 = (i / 3) * 2;
        la3 la3Var = (la3) this.b[i2];
        if (la3Var != null) {
            return la3Var;
        }
        la3 la3VarB = aw2.a().b((Class) this.b[i2 + 1]);
        this.b[i2] = la3VarB;
        return la3VarB;
    }

    private int g(int i) {
        return this.a[i];
    }

    private static <T> boolean a(T t, long j) {
        return hw3.a(t, j);
    }

    private Object b(int i) {
        return this.b[(i / 3) * 2];
    }

    private static <T> double e(T t, long j) {
        return ((Double) hw3.j(t, j)).doubleValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // ads_mobile_sdk.la3
    public int b(T t) {
        int i;
        int iA;
        int iA2;
        int iD;
        int iH;
        int i2;
        int i3;
        ww1<T> ww1Var = this;
        T t2 = t;
        Unsafe unsafe = r;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 1048575;
        while (i5 < ww1Var.a.length) {
            int iL = ww1Var.l(i5);
            int iK = k(iL);
            int iG = ww1Var.g(i5);
            int i9 = ww1Var.a[i5 + 2];
            int i10 = i9 & i4;
            if (iK <= 17) {
                if (i10 != i8) {
                    i6 = i10 == i4 ? 0 : unsafe.getInt(t2, i10);
                    i8 = i10;
                }
                i = 1 << (i9 >>> 20);
            } else {
                i = 0;
            }
            int i11 = i7;
            long jH = h(iL);
            if (iK < rr0.O.e() || iK > rr0.b0.e()) {
                i10 = 0;
            }
            switch (iK) {
                case 0:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.a(iG, 0.0d);
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 1:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.a(iG, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                        ww1Var = this;
                        t2 = t;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    t2 = t;
                    i7 = i11;
                    break;
                case 2:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.b(iG, unsafe.getLong(t2, jH));
                        ww1Var = this;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    i7 = i11;
                    break;
                case 3:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.e(iG, unsafe.getLong(t2, jH));
                        ww1Var = this;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    i7 = i11;
                    break;
                case 4:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.c(iG, unsafe.getInt(t2, jH));
                        ww1Var = this;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    i7 = i11;
                    break;
                case 5:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.a(iG, 0L);
                        ww1Var = this;
                        t2 = t;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    t2 = t;
                    i7 = i11;
                    break;
                case 6:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.b(iG, 0);
                        ww1Var = this;
                        t2 = t;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    t2 = t;
                    i7 = i11;
                    break;
                case 7:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.a(iG, true);
                        ww1Var = this;
                        t2 = t;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    t2 = t;
                    i7 = i11;
                    break;
                case 8:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        Object object = unsafe.getObject(t2, jH);
                        if (object instanceof du) {
                            iA = oy.a(iG, (du) object);
                        } else {
                            iA = oy.a(iG, (String) object);
                        }
                        ww1Var = this;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    i7 = i11;
                    break;
                case 9:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA2 = ma3.a(iG, unsafe.getObject(t2, jH), (la3<?>) ww1Var.c(i5));
                        i3 = i11;
                        i11 = iA2;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 10:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.a(iG, (du) unsafe.getObject(t2, jH));
                        ww1Var = this;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    i7 = i11;
                    break;
                case 11:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.f(iG, unsafe.getInt(t2, jH));
                        ww1Var = this;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    i7 = i11;
                    break;
                case 12:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.a(iG, unsafe.getInt(t2, jH));
                        ww1Var = this;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    i7 = i11;
                    break;
                case 13:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.d(iG, 0);
                        ww1Var = this;
                        t2 = t;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    t2 = t;
                    i7 = i11;
                    break;
                case 14:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.c(iG, 0L);
                        ww1Var = this;
                        t2 = t;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    t2 = t;
                    i7 = i11;
                    break;
                case 15:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.e(iG, unsafe.getInt(t2, jH));
                        ww1Var = this;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    i7 = i11;
                    break;
                case 16:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA = oy.d(iG, unsafe.getLong(t2, jH));
                        ww1Var = this;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    ww1Var = this;
                    i7 = i11;
                    break;
                case 17:
                    if (ww1Var.a(t2, i5, i8, i6, i)) {
                        iA2 = ma3.a(iG, (tw1) unsafe.getObject(t2, jH), ww1Var.c(i5));
                        i3 = i11;
                        i11 = iA2;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 18:
                    iA2 = ma3.d(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 19:
                    iA2 = ma3.c(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 20:
                    iA2 = ma3.f(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 21:
                    iA2 = ma3.j(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 22:
                    iA2 = ma3.e(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 23:
                    iA2 = ma3.d(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 24:
                    iA2 = ma3.c(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 25:
                    iA2 = ma3.a(iG, (List<?>) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 26:
                    iA2 = ma3.b(iG, (List) unsafe.getObject(t2, jH));
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 27:
                    iA2 = ma3.b(iG, (List<?>) unsafe.getObject(t2, jH), (la3<?>) ww1Var.c(i5));
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 28:
                    iA2 = ma3.a(iG, (List<du>) unsafe.getObject(t2, jH));
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 29:
                    iA2 = ma3.i(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 30:
                    iA2 = ma3.b(iG, (List<Integer>) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 31:
                    iA2 = ma3.c(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 32:
                    iA2 = ma3.d(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 33:
                    iA2 = ma3.g(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 34:
                    iA2 = ma3.h(iG, (List) unsafe.getObject(t2, jH), false);
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 35:
                    iD = ma3.d((List) unsafe.getObject(t2, jH));
                    if (iD > 0) {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 36:
                    iD = ma3.c((List) unsafe.getObject(t2, jH));
                    if (iD > 0) {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 37:
                    iD = ma3.f((List) unsafe.getObject(t2, jH));
                    if (iD > 0) {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 38:
                    iD = ma3.j((List) unsafe.getObject(t2, jH));
                    if (iD > 0) {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 39:
                    iD = ma3.e((List) unsafe.getObject(t2, jH));
                    if (iD > 0) {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 40:
                    iD = ma3.d((List) unsafe.getObject(t2, jH));
                    if (iD > 0) {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 41:
                    iD = ma3.c((List) unsafe.getObject(t2, jH));
                    if (iD > 0) {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 42:
                    iD = ma3.a((List) unsafe.getObject(t2, jH));
                    if (iD > 0) {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 43:
                    iD = ma3.i((List) unsafe.getObject(t2, jH));
                    if (iD > 0) {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 44:
                    iD = ma3.b((List) unsafe.getObject(t2, jH));
                    if (iD > 0) {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 45:
                    iD = ma3.c((List) unsafe.getObject(t2, jH));
                    if (iD > 0) {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 46:
                    iD = ma3.d((List) unsafe.getObject(t2, jH));
                    if (iD > 0) {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 47:
                    iD = ma3.g((List) unsafe.getObject(t2, jH));
                    if (iD > 0) {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 48:
                    iD = ma3.h((List) unsafe.getObject(t2, jH));
                    if (iD > 0) {
                        if (ww1Var.h) {
                            unsafe.putInt(t2, i10, iD);
                        }
                        iH = oy.h(iG);
                        i2 = oy.i(iD);
                        iA = iD + i2 + iH;
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 49:
                    iA2 = ma3.a(iG, (List<tw1>) unsafe.getObject(t2, jH), (la3<?>) ww1Var.c(i5));
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 50:
                    iA2 = ww1Var.p.a(iG, unsafe.getObject(t2, jH), ww1Var.b(i5));
                    i3 = i11;
                    i11 = iA2;
                    i7 = i3 + i11;
                    break;
                case 51:
                    if (ww1Var.c(t2, iG, i5)) {
                        iA = oy.a(iG, 0.0d);
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 52:
                    if (ww1Var.c(t2, iG, i5)) {
                        iA = oy.a(iG, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 53:
                    if (ww1Var.c(t2, iG, i5)) {
                        iA = oy.b(iG, h(t2, jH));
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 54:
                    if (ww1Var.c(t2, iG, i5)) {
                        iA = oy.e(iG, h(t2, jH));
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 55:
                    if (ww1Var.c(t2, iG, i5)) {
                        iA = oy.c(iG, g(t2, jH));
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 56:
                    if (ww1Var.c(t2, iG, i5)) {
                        iA = oy.a(iG, 0L);
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 57:
                    if (ww1Var.c(t2, iG, i5)) {
                        iA = oy.b(iG, 0);
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 58:
                    if (ww1Var.c(t2, iG, i5)) {
                        iA = oy.a(iG, true);
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 59:
                    if (ww1Var.c(t2, iG, i5)) {
                        Object object2 = unsafe.getObject(t2, jH);
                        if (object2 instanceof du) {
                            iA = oy.a(iG, (du) object2);
                        } else {
                            iA = oy.a(iG, (String) object2);
                        }
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 60:
                    if (ww1Var.c(t2, iG, i5)) {
                        iA2 = ma3.a(iG, unsafe.getObject(t2, jH), (la3<?>) ww1Var.c(i5));
                        i3 = i11;
                        i11 = iA2;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 61:
                    if (ww1Var.c(t2, iG, i5)) {
                        iA = oy.a(iG, (du) unsafe.getObject(t2, jH));
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 62:
                    if (ww1Var.c(t2, iG, i5)) {
                        iA = oy.f(iG, g(t2, jH));
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 63:
                    if (ww1Var.c(t2, iG, i5)) {
                        iA = oy.a(iG, g(t2, jH));
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 64:
                    if (ww1Var.c(t2, iG, i5)) {
                        iA = oy.d(iG, 0);
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 65:
                    if (ww1Var.c(t2, iG, i5)) {
                        iA = oy.c(iG, 0L);
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 66:
                    if (ww1Var.c(t2, iG, i5)) {
                        iA = oy.e(iG, g(t2, jH));
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 67:
                    if (ww1Var.c(t2, iG, i5)) {
                        iA = oy.d(iG, h(t2, jH));
                        i3 = iA;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                case 68:
                    if (ww1Var.c(t2, iG, i5)) {
                        iA2 = ma3.a(iG, (tw1) unsafe.getObject(t2, jH), ww1Var.c(i5));
                        i3 = i11;
                        i11 = iA2;
                        i7 = i3 + i11;
                    }
                    i7 = i11;
                    break;
                default:
                    i7 = i11;
                    break;
            }
            i5 += 3;
            i4 = 1048575;
        }
        int iA3 = i7 + ww1Var.a(ww1Var.n, (Object) t2);
        return ww1Var.f ? iA3 + ww1Var.o.a(t2).b() : iA3;
    }

    private int a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, ao.a aVar) throws IOException {
        Unsafe unsafe = r;
        long j2 = this.a[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(t, j, Double.valueOf(ao.a(bArr, i)));
                int i9 = i + 8;
                unsafe.putInt(t, j2, i4);
                return i9;
            case 52:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(t, j, Float.valueOf(ao.d(bArr, i)));
                int i10 = i + 4;
                unsafe.putInt(t, j2, i4);
                return i10;
            case 53:
            case 54:
                if (i5 != 0) {
                    return i;
                }
                int iE = ao.e(bArr, i, aVar);
                unsafe.putObject(t, j, Long.valueOf(aVar.b));
                unsafe.putInt(t, j2, i4);
                return iE;
            case 55:
            case 62:
                if (i5 != 0) {
                    return i;
                }
                int iD = ao.d(bArr, i, aVar);
                unsafe.putObject(t, j, Integer.valueOf(aVar.a));
                unsafe.putInt(t, j2, i4);
                return iD;
            case 56:
            case 65:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(t, j, Long.valueOf(ao.c(bArr, i)));
                int i11 = i + 8;
                unsafe.putInt(t, j2, i4);
                return i11;
            case 57:
            case 64:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(t, j, Integer.valueOf(ao.b(bArr, i)));
                int i12 = i + 4;
                unsafe.putInt(t, j2, i4);
                return i12;
            case 58:
                if (i5 != 0) {
                    return i;
                }
                int iE2 = ao.e(bArr, i, aVar);
                unsafe.putObject(t, j, Boolean.valueOf(aVar.b != 0));
                unsafe.putInt(t, j2, i4);
                return iE2;
            case 59:
                if (i5 != 2) {
                    return i;
                }
                int iA = ao.a(bArr, i, bArr.length, aVar);
                int i13 = aVar.a;
                if (i13 == 0) {
                    unsafe.putObject(t, j, "");
                } else {
                    if ((i6 & 536870912) != 0 && !hx3.b(bArr, iA, iA + i13)) {
                        throw np1.d();
                    }
                    unsafe.putObject(t, j, new String(bArr, iA, i13, StandardCharsets.UTF_8));
                    iA += i13;
                }
                unsafe.putInt(t, j2, i4);
                return iA;
            case 60:
                if (i5 != 2) {
                    return i;
                }
                Object objD = d(t, i4, i8);
                int iA2 = ao.a(objD, c(i8), bArr, i, i2, aVar);
                a(t, i4, i8, objD);
                return iA2;
            case 61:
                if (i5 != 2) {
                    return i;
                }
                int iA3 = ao.a(bArr, i, aVar);
                unsafe.putObject(t, j, aVar.c);
                unsafe.putInt(t, j2, i4);
                return iA3;
            case 63:
                if (i5 != 0) {
                    return i;
                }
                int iD2 = ao.d(bArr, i, aVar);
                int i14 = aVar.a;
                yh1.b bVarA = a(i8);
                if (bVarA != null && !bVarA.a(i14)) {
                    f(t).a(i3, Long.valueOf(i14));
                    return iD2;
                }
                unsafe.putObject(t, j, Integer.valueOf(i14));
                unsafe.putInt(t, j2, i4);
                return iD2;
            case 66:
                if (i5 != 0) {
                    return i;
                }
                int iD3 = ao.d(bArr, i, aVar);
                unsafe.putObject(t, j, Integer.valueOf(my.b(aVar.a)));
                unsafe.putInt(t, j2, i4);
                return iD3;
            case 67:
                if (i5 != 0) {
                    return i;
                }
                int iE3 = ao.e(bArr, i, aVar);
                unsafe.putObject(t, j, Long.valueOf(my.a(aVar.b)));
                unsafe.putInt(t, j2, i4);
                return iE3;
            case 68:
                if (i5 == 3) {
                    Object objD2 = d(t, i4, i8);
                    int iA4 = ao.a(objD2, c(i8), bArr, i, i2, (i3 & (-8)) | 4, aVar);
                    a(t, i4, i8, objD2);
                    return iA4;
                }
                break;
        }
        return i;
    }

    private static <T> boolean d(T t, long j) {
        return ((Boolean) hw3.j(t, j)).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <K, V> int a(byte[] bArr, int i, int i2, gu1.a<K, V> aVar, Map<K, V> map, ao.a aVar2) throws IOException {
        int iA = ao.a(bArr, i, i2, aVar2);
        int i3 = iA + aVar2.a;
        Object obj = aVar.b;
        Object obj2 = aVar.d;
        while (iA < i3) {
            int iA2 = iA + 1;
            int i4 = bArr[iA];
            if (i4 < 0) {
                iA2 = ao.a(i4, bArr, iA2, aVar2);
                i4 = aVar2.a;
            }
            int i5 = iA2;
            int i6 = i4 >>> 3;
            int i7 = i4 & 7;
            if (i6 != 1) {
                if (i6 == 2 && i7 == aVar.c.f()) {
                    iA = a(bArr, i5, i2, aVar.c, aVar.d.getClass(), aVar2);
                    obj2 = aVar2.c;
                } else {
                    iA = ao.a(i4, bArr, i5, i2, aVar2);
                }
            } else if (i7 == aVar.a.f()) {
                iA = a(bArr, i5, i2, aVar.a, (Class<?>) null, aVar2);
                obj = aVar2.c;
            } else {
                iA = ao.a(i4, bArr, i5, i2, aVar2);
            }
        }
        if (iA == i3) {
            map.put(obj, obj2);
            return i3;
        }
        throw np1.h();
    }

    private boolean c(T t, int i, int i2) {
        return hw3.h(t, (long) (j(i2) & 1048575)) == i;
    }

    private boolean a(T t, T t2, int i, int i2, long j) {
        switch (i2) {
            case 0:
                if (!a(t, t2, i) || Double.doubleToLongBits(hw3.f(t, j)) != Double.doubleToLongBits(hw3.f(t2, j))) {
                }
                break;
            case 1:
                if (!a(t, t2, i) || Float.floatToIntBits(hw3.g(t, j)) != Float.floatToIntBits(hw3.g(t2, j))) {
                }
                break;
            case 2:
                if (!a(t, t2, i) || hw3.i(t, j) != hw3.i(t2, j)) {
                }
                break;
            case 3:
                if (!a(t, t2, i) || hw3.i(t, j) != hw3.i(t2, j)) {
                }
                break;
            case 4:
                if (!a(t, t2, i) || hw3.h(t, j) != hw3.h(t2, j)) {
                }
                break;
            case 5:
                if (!a(t, t2, i) || hw3.i(t, j) != hw3.i(t2, j)) {
                }
                break;
            case 6:
                if (!a(t, t2, i) || hw3.h(t, j) != hw3.h(t2, j)) {
                }
                break;
            case 7:
                if (!a(t, t2, i) || hw3.a(t, j) != hw3.a(t2, j)) {
                }
                break;
            case 8:
                if (!a(t, t2, i) || !ma3.a(hw3.j(t, j), hw3.j(t2, j))) {
                }
                break;
            case 9:
                if (!a(t, t2, i) || !ma3.a(hw3.j(t, j), hw3.j(t2, j))) {
                }
                break;
            case 10:
                if (!a(t, t2, i) || !ma3.a(hw3.j(t, j), hw3.j(t2, j))) {
                }
                break;
            case 11:
                if (!a(t, t2, i) || hw3.h(t, j) != hw3.h(t2, j)) {
                }
                break;
            case 12:
                if (!a(t, t2, i) || hw3.h(t, j) != hw3.h(t2, j)) {
                }
                break;
            case 13:
                if (!a(t, t2, i) || hw3.h(t, j) != hw3.h(t2, j)) {
                }
                break;
            case 14:
                if (!a(t, t2, i) || hw3.i(t, j) != hw3.i(t2, j)) {
                }
                break;
            case 15:
                if (!a(t, t2, i) || hw3.h(t, j) != hw3.h(t2, j)) {
                }
                break;
            case 16:
                if (!a(t, t2, i) || hw3.i(t, j) != hw3.i(t2, j)) {
                }
                break;
            case 17:
                if (!a(t, t2, i) || !ma3.a(hw3.j(t, j), hw3.j(t2, j))) {
                }
                break;
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
            case 59:
            case 60:
            case 61:
            case 62:
            case 63:
            case 64:
            case 65:
            case 66:
            case 67:
            case 68:
                if (!b(t, t2, i) || !ma3.a(hw3.j(t, j), hw3.j(t2, j))) {
                }
                break;
        }
        return true;
    }

    private static <T> int g(T t, long j) {
        return ((Integer) hw3.j(t, j)).intValue();
    }

    private void e(T t, int i, int i2) {
        hw3.a((Object) t, j(i2) & 1048575, i);
    }

    private int a(int i, int i2) {
        if (i < this.c || i > this.d) {
            return -1;
        }
        return b(i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [ads_mobile_sdk.la3] */
    private boolean b(T t, int i, int i2) {
        Map<?, ?> mapA = this.p.a(hw3.j(t, h(i)));
        if (mapA.isEmpty()) {
            return true;
        }
        if (this.p.f(b(i2)).c.e() != u24.b.MESSAGE) {
            return true;
        }
        ?? B = 0;
        for (Object obj : mapA.values()) {
            B = B;
            if (B == 0) {
                B = aw2.a().b(((vz0) obj).getClass());
            }
            if (!B.a(obj)) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006a  */
    @Override // ads_mobile_sdk.la3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void c(T r8) {
        /*
            Method dump skipped, instruction units count: 216
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ww1.c(java.lang.Object):void");
    }

    private <UT, UB> UB a(Object obj, int i, UB ub, yv3<UT, UB> yv3Var, Object obj2) {
        yh1.b bVarA;
        int iG = g(i);
        Object objJ = hw3.j(obj, h(l(i)));
        return (objJ == null || (bVarA = a(i)) == null) ? ub : (UB) a(i, iG, this.p.c(objJ), bVarA, ub, yv3Var, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void c(T t, T t2, int i) {
        if (a((Object) t2, i)) {
            long jH = h(l(i));
            Unsafe unsafe = r;
            Object object = unsafe.getObject(t2, jH);
            if (object != null) {
                la3 la3VarC = c(i);
                if (!a((Object) t, i)) {
                    if (!g(object)) {
                        unsafe.putObject(t, jH, object);
                    } else {
                        Object objA = la3VarC.a();
                        la3VarC.a(objA, object);
                        unsafe.putObject(t, jH, objA);
                    }
                    c((Object) t, i);
                    return;
                }
                Object object2 = unsafe.getObject(t, jH);
                if (!g(object2)) {
                    Object objA2 = la3VarC.a();
                    la3VarC.a(objA2, object2);
                    unsafe.putObject(t, jH, objA2);
                    object2 = objA2;
                }
                la3VarC.a(object2, object);
                return;
            }
            throw new IllegalStateException("Source subfield " + g(i) + " is present but null: " + String.valueOf(t2));
        }
    }

    private <E> void a(Object obj, long j, ny nyVar, la3<E> la3Var, er0 er0Var) throws IOException {
        nyVar.a((List) this.m.b(obj, j), (la3) la3Var, er0Var);
    }

    private boolean b(T t, T t2, int i) {
        long j = j(i) & 1048575;
        return hw3.h(t, j) == hw3.h(t2, j);
    }

    private <K, V, UT, UB> UB a(int i, int i2, Map<K, V> map, yh1.b bVar, UB ub, yv3<UT, UB> yv3Var, Object obj) {
        gu1.a<?, ?> aVarF = this.p.f(b(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!bVar.a(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = yv3Var.a(obj);
                }
                du.h hVarE = du.e(gu1.a(aVarF, next.getKey(), next.getValue()));
                try {
                    gu1.a(hVarE.b(), aVarF, next.getKey(), next.getValue());
                    yv3Var.a(ub, i2, hVarE.a());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    private void c(T t, int i) {
        int iJ = j(i);
        long j = 1048575 & iJ;
        if (j == 1048575) {
            return;
        }
        hw3.a((Object) t, j, (1 << (iJ >>> 20)) | hw3.h(t, j));
    }

    private <E> void a(Object obj, int i, ny nyVar, la3<E> la3Var, er0 er0Var) throws IOException {
        nyVar.b((List) this.m.b(obj, h(i)), (la3) la3Var, er0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Object b(T t, int i) {
        la3 la3VarC = c(i);
        long jH = h(l(i));
        if (!a((Object) t, i)) {
            return la3VarC.a();
        }
        Object object = r.getObject(t, jH);
        if (g(object)) {
            return object;
        }
        Object objA = la3VarC.a();
        if (object != null) {
            la3VarC.a(objA, object);
        }
        return objA;
    }

    private yh1.b a(int i) {
        return (yh1.b) this.b[((i / 3) * 2) + 1];
    }

    private <UT, UB> int a(yv3<UT, UB> yv3Var, T t) {
        return yv3Var.c(yv3Var.b(t));
    }

    private void a(Object obj, int i, ny nyVar) throws IOException {
        if (d(i)) {
            hw3.a(obj, h(i), nyVar.r());
        } else if (this.g) {
            hw3.a(obj, h(i), nyVar.q());
        } else {
            hw3.a(obj, h(i), nyVar.e());
        }
    }

    private static Field a(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields), e);
        }
    }

    private void b(Object obj, int i, ny nyVar) throws IOException {
        if (d(i)) {
            nyVar.o(this.m.b(obj, h(i)));
        } else {
            nyVar.n(this.m.b(obj, h(i)));
        }
    }

    private boolean a(T t, int i) {
        boolean zEquals;
        int iJ = j(i);
        long j = 1048575 & iJ;
        if (j != 1048575) {
            return (hw3.h(t, j) & (1 << (iJ >>> 20))) != 0;
        }
        int iL = l(i);
        long jH = h(iL);
        switch (k(iL)) {
            case 0:
                return Double.doubleToRawLongBits(hw3.f(t, jH)) != 0;
            case 1:
                return Float.floatToRawIntBits(hw3.g(t, jH)) != 0;
            case 2:
                return hw3.i(t, jH) != 0;
            case 3:
                return hw3.i(t, jH) != 0;
            case 4:
                return hw3.h(t, jH) != 0;
            case 5:
                return hw3.i(t, jH) != 0;
            case 6:
                return hw3.h(t, jH) != 0;
            case 7:
                return hw3.a(t, jH);
            case 8:
                Object objJ = hw3.j(t, jH);
                if (objJ instanceof String) {
                    zEquals = ((String) objJ).isEmpty();
                } else if (objJ instanceof du) {
                    zEquals = du.b.equals(objJ);
                } else {
                    return b();
                }
                break;
            case 9:
                return hw3.j(t, jH) != null;
            case 10:
                zEquals = du.b.equals(hw3.j(t, jH));
                break;
            case 11:
                return hw3.h(t, jH) != 0;
            case 12:
                return hw3.h(t, jH) != 0;
            case 13:
                return hw3.h(t, jH) != 0;
            case 14:
                return hw3.i(t, jH) != 0;
            case 15:
                return hw3.h(t, jH) != 0;
            case 16:
                return hw3.i(t, jH) != 0;
            case 17:
                return hw3.j(t, jH) != null;
            default:
                return b();
        }
        return !zEquals;
    }

    private void a(T t, int i, Object obj) {
        r.putObject(t, h(l(i)), obj);
        c((Object) t, i);
    }

    private int b(int i, int i2) {
        int length = (this.a.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int iG = g(i4);
            if (i == iG) {
                return i4;
            }
            if (i < iG) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    private boolean b() {
        throw new IllegalArgumentException();
    }

    private boolean a(T t, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return a((Object) t, i);
        }
        return (i3 & i4) != 0;
    }

    private void a(T t, int i, int i2, Object obj) {
        r.putObject(t, h(l(i2)), obj);
        e(t, i, i2);
    }

    private <K, V> void a(py pyVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            pyVar.e(i, this.p.f(b(i2)), this.p.a(obj));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x007c  */
    @Override // ads_mobile_sdk.la3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(T r14) {
        /*
            r13 = this;
            r0 = 1048575(0xfffff, float:1.469367E-39)
            r1 = 0
            r3 = r0
            r2 = r1
            r4 = r2
        L7:
            int r5 = r13.j
            r6 = 1
            if (r2 >= r5) goto L9b
            int[] r5 = r13.i
            r9 = r5[r2]
            int r5 = r13.l(r9)
            int[] r7 = r13.a
            int r8 = r9 + 2
            r7 = r7[r8]
            r8 = r7 & r0
            int r7 = r7 >>> 20
            int r12 = r6 << r7
            if (r8 == r3) goto L2e
            if (r8 == r0) goto L2b
            sun.misc.Unsafe r3 = ads_mobile_sdk.ww1.r
            long r6 = (long) r8
            int r4 = r3.getInt(r14, r6)
        L2b:
            r11 = r4
            r10 = r8
            goto L30
        L2e:
            r10 = r3
            r11 = r4
        L30:
            boolean r3 = f(r5)
            r7 = r13
            r8 = r14
            if (r3 == 0) goto L3f
            boolean r14 = r7.a(r8, r9, r10, r11, r12)
            if (r14 != 0) goto L3f
            return r1
        L3f:
            int r14 = k(r5)
            r3 = 9
            if (r14 == r3) goto L83
            r3 = 17
            if (r14 == r3) goto L83
            r3 = 27
            if (r14 == r3) goto L7c
            r3 = 60
            if (r14 == r3) goto L67
            r3 = 68
            if (r14 == r3) goto L67
            r3 = 49
            if (r14 == r3) goto L7c
            r3 = 50
            if (r14 == r3) goto L60
            goto L94
        L60:
            boolean r14 = r13.b(r8, r5, r9)
            if (r14 != 0) goto L94
            return r1
        L67:
            int r14 = r13.g(r9)
            boolean r14 = r13.c(r8, r14, r9)
            if (r14 == 0) goto L94
            ads_mobile_sdk.la3 r14 = r13.c(r9)
            boolean r14 = a(r8, r5, r14)
            if (r14 != 0) goto L94
            return r1
        L7c:
            boolean r14 = r13.a(r8, r5, r9)
            if (r14 != 0) goto L94
            return r1
        L83:
            boolean r14 = r7.a(r8, r9, r10, r11, r12)
            if (r14 == 0) goto L94
            ads_mobile_sdk.la3 r14 = r13.c(r9)
            boolean r14 = a(r8, r5, r14)
            if (r14 != 0) goto L94
            return r1
        L94:
            int r2 = r2 + 1
            r14 = r8
            r3 = r10
            r4 = r11
            goto L7
        L9b:
            r7 = r13
            r8 = r14
            boolean r14 = r7.f
            if (r14 == 0) goto Lae
            ads_mobile_sdk.fr0<?> r14 = r7.o
            ads_mobile_sdk.qr0 r14 = r14.a(r8)
            boolean r14 = r14.d()
            if (r14 != 0) goto Lae
            return r1
        Lae:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ww1.a(java.lang.Object):boolean");
    }

    private void a(int i, Object obj, py pyVar) throws IOException {
        if (obj instanceof String) {
            pyVar.a(i, (String) obj);
        } else {
            pyVar.a(i, (du) obj);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean a(Object obj, int i, la3 la3Var) {
        return la3Var.a(hw3.j(obj, h(i)));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0022  */
    @Override // ads_mobile_sdk.la3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(T r19, ads_mobile_sdk.py r20) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 1424
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ww1.a(java.lang.Object, ads_mobile_sdk.py):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <N> boolean a(Object obj, int i, int i2) {
        List list = (List) hw3.j(obj, h(i));
        if (list.isEmpty()) {
            return true;
        }
        la3 la3VarC = c(i2);
        for (int i3 = 0; i3 < list.size(); i3++) {
            if (!la3VarC.a(list.get(i3))) {
                return false;
            }
        }
        return true;
    }

    private <UT, UB> void a(yv3<UT, UB> yv3Var, T t, py pyVar) throws IOException {
        yv3Var.b(yv3Var.b(t), pyVar);
    }

    public static <T> ww1<T> a(Class<T> cls, rw1 rw1Var, eb2 eb2Var, ns1 ns1Var, yv3<?, ?> yv3Var, fr0<?> fr0Var, ku1 ku1Var) {
        if (r != null) {
            if (rw1Var instanceof i13) {
                return a((i13) rw1Var, eb2Var, ns1Var, yv3Var, fr0Var, ku1Var);
            }
            dr0.a(rw1Var);
            return a((mm3) null, eb2Var, ns1Var, yv3Var, fr0Var, ku1Var);
        }
        throw new RuntimeException("Lite gencode is primarily intended for Android use and uses sun.misc.Unsafe which is not available in the current environment. To run in this environment, you may need to switch to standard gencode.");
    }

    private int a(byte[] bArr, int i, int i2, u24.a aVar, Class<?> cls, ao.a aVar2) throws IOException {
        switch (a.a[aVar.ordinal()]) {
            case 1:
                int iE = ao.e(bArr, i, aVar2);
                aVar2.c = Boolean.valueOf(aVar2.b != 0);
                return iE;
            case 2:
                return ao.a(bArr, i, aVar2);
            case 3:
                aVar2.c = Double.valueOf(ao.a(bArr, i));
                return i + 8;
            case 4:
            case 5:
                aVar2.c = Integer.valueOf(ao.b(bArr, i));
                return i + 4;
            case 6:
            case 7:
                aVar2.c = Long.valueOf(ao.c(bArr, i));
                return i + 8;
            case 8:
                aVar2.c = Float.valueOf(ao.d(bArr, i));
                return i + 4;
            case 9:
            case 10:
            case 11:
                int iD = ao.d(bArr, i, aVar2);
                aVar2.c = Integer.valueOf(aVar2.a);
                return iD;
            case 12:
            case 13:
                int iE2 = ao.e(bArr, i, aVar2);
                aVar2.c = Long.valueOf(aVar2.b);
                return iE2;
            case 14:
                return ao.a(aw2.a().b(cls), bArr, i, i2, aVar2);
            case 15:
                int iD2 = ao.d(bArr, i, aVar2);
                aVar2.c = Integer.valueOf(my.b(aVar2.a));
                return iD2;
            case 16:
                int iE3 = ao.e(bArr, i, aVar2);
                aVar2.c = Long.valueOf(my.a(aVar2.b));
                return iE3;
            case 17:
                return ao.c(bArr, i, aVar2);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int a(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, ao.a aVar) throws IOException {
        int iK;
        Unsafe unsafe = r;
        yh1.f fVarA2 = (yh1.f) unsafe.getObject(t, j2);
        if (!fVarA2.b()) {
            fVarA2 = fVarA2.a2(fVarA2.size() * 2);
            unsafe.putObject(t, j2, fVarA2);
        }
        yh1.f fVar = fVarA2;
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    return ao.b(bArr, i, fVar, aVar);
                }
                if (i5 == 1) {
                    return ao.c(i3, bArr, i, i2, fVar, aVar);
                }
                return i;
            case 19:
            case 36:
                if (i5 == 2) {
                    return ao.e(bArr, i, fVar, aVar);
                }
                if (i5 == 5) {
                    return ao.f(i3, bArr, i, i2, fVar, aVar);
                }
                return i;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    return ao.i(bArr, i, fVar, aVar);
                }
                if (i5 == 0) {
                    return ao.l(i3, bArr, i, i2, fVar, aVar);
                }
                return i;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return ao.h(bArr, i, fVar, aVar);
                }
                if (i5 == 0) {
                    return ao.k(i3, bArr, i, i2, fVar, aVar);
                }
                return i;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    return ao.d(bArr, i, fVar, aVar);
                }
                if (i5 == 1) {
                    return ao.e(i3, bArr, i, i2, fVar, aVar);
                }
                return i;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    return ao.c(bArr, i, fVar, aVar);
                }
                if (i5 == 5) {
                    return ao.d(i3, bArr, i, i2, fVar, aVar);
                }
                return i;
            case 25:
            case 42:
                if (i5 == 2) {
                    return ao.a(bArr, i, (yh1.f<?>) fVar, aVar);
                }
                if (i5 == 0) {
                    return ao.a(i3, bArr, i, i2, (yh1.f<?>) fVar, aVar);
                }
                return i;
            case 26:
                if (i5 == 2) {
                    if ((j & 536870912) == 0) {
                        return ao.i(i3, bArr, i, i2, fVar, aVar);
                    }
                    return ao.j(i3, bArr, i, i2, fVar, aVar);
                }
                return i;
            case 27:
                if (i5 == 2) {
                    return ao.b(c(i6), i3, bArr, i, i2, fVar, aVar);
                }
                return i;
            case 28:
                if (i5 == 2) {
                    return ao.b(i3, bArr, i, i2, fVar, aVar);
                }
                return i;
            case 30:
            case 44:
                if (i5 != 2) {
                    if (i5 == 0) {
                        iK = ao.k(i3, bArr, i, i2, fVar, aVar);
                    }
                    return i;
                }
                iK = ao.h(bArr, i, fVar, aVar);
                ma3.a(t, i4, fVar, a(i6), null, this.n);
                return iK;
            case 33:
            case 47:
                if (i5 == 2) {
                    return ao.f(bArr, i, fVar, aVar);
                }
                if (i5 == 0) {
                    return ao.g(i3, bArr, i, i2, fVar, aVar);
                }
                return i;
            case 34:
            case 48:
                if (i5 == 2) {
                    return ao.g(bArr, i, fVar, aVar);
                }
                if (i5 == 0) {
                    return ao.h(i3, bArr, i, i2, fVar, aVar);
                }
                return i;
            case 49:
                if (i5 == 3) {
                    return ao.a((la3<?>) c(i6), i3, bArr, i, i2, (yh1.f<Object>) fVar, aVar);
                }
                return i;
            default:
                return i;
        }
    }

    @Override // ads_mobile_sdk.la3
    public void a(T t, ny nyVar, er0 er0Var) throws IOException {
        yh1.a(er0Var);
        e(t);
        a(this.n, this.o, t, nyVar, er0Var);
    }

    @Override // ads_mobile_sdk.la3
    public void a(T t, T t2) {
        e(t);
        yh1.a(t2);
        for (int i = 0; i < this.a.length; i += 3) {
            e(t, t2, i);
        }
        ma3.a(this.n, t, t2);
        if (this.f) {
            ma3.a(this.o, t, t2);
        }
    }

    @Override // ads_mobile_sdk.la3
    public void a(T t, byte[] bArr, int i, int i2, ao.a aVar) throws IOException {
        a(t, bArr, i, i2, 0, aVar);
    }

    /*  JADX ERROR: Type inference failed with stack overflow
        jadx.core.utils.exceptions.JadxOverflowException
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    private <UT, UB, ET extends ads_mobile_sdk.qr0.b<ET>> void a(ads_mobile_sdk.yv3<UT, UB> r18, ads_mobile_sdk.fr0<ET> r19, T r20, ads_mobile_sdk.ny r21, ads_mobile_sdk.er0 r22) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 2038
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ww1.a(ads_mobile_sdk.yv3, ads_mobile_sdk.fr0, java.lang.Object, ads_mobile_sdk.ny, ads_mobile_sdk.er0):void");
    }

    private final <K, V> void a(Object obj, int i, Object obj2, er0 er0Var, ny nyVar) throws IOException {
        long jH = h(l(i));
        Object objJ = hw3.j(obj, jH);
        if (objJ == null) {
            objJ = this.p.b(obj2);
            hw3.a(obj, jH, objJ);
        } else if (this.p.d(objJ)) {
            Object objB = this.p.b(obj2);
            this.p.a(objB, objJ);
            hw3.a(obj, jH, objB);
            objJ = objB;
        }
        nyVar.a(this.p.c(objJ), this.p.f(obj2), er0Var);
    }

    @Override // ads_mobile_sdk.la3
    public T a() {
        return (T) this.l.a(this.e);
    }

    private static <T> ww1<T> a(mm3 mm3Var, eb2 eb2Var, ns1 ns1Var, yv3<?, ?> yv3Var, fr0<?> fr0Var, ku1 ku1Var) {
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x036d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static <T> ads_mobile_sdk.ww1<T> a(ads_mobile_sdk.i13 r33, ads_mobile_sdk.eb2 r34, ads_mobile_sdk.ns1 r35, ads_mobile_sdk.yv3<?, ?> r36, ads_mobile_sdk.fr0<?> r37, ads_mobile_sdk.ku1 r38) {
        /*
            Method dump skipped, instruction units count: 976
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.ww1.a(ads_mobile_sdk.i13, ads_mobile_sdk.eb2, ads_mobile_sdk.ns1, ads_mobile_sdk.yv3, ads_mobile_sdk.fr0, ads_mobile_sdk.ku1):ads_mobile_sdk.ww1");
    }
}
