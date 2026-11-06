package ads_mobile_sdk;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m34 implements d44 {
    public static final /* synthetic */ m34 b;
    public static final /* synthetic */ m34 c;
    public static final /* synthetic */ m34 d;
    public static final /* synthetic */ m34 e;
    public static final /* synthetic */ m34 f;
    public static final /* synthetic */ m34 g;
    public static final /* synthetic */ m34 h;
    public static final /* synthetic */ m34 i;
    public static final /* synthetic */ m34 j;
    public static final /* synthetic */ m34 k;
    public static final /* synthetic */ m34 l;
    public static final /* synthetic */ m34 m;
    public static final /* synthetic */ m34 n;
    public static final /* synthetic */ m34 o;
    public static final /* synthetic */ m34 p;
    public static final /* synthetic */ m34 q;
    public final /* synthetic */ int a;

    static {
        int iA = p30.a(((~1566288819) & 1018167620) | 793479703, (1566288819 & 284165456) | 1648575546, -1602978314, 292218004) ^ (846942590 % 524688209);
        q = new m34(15);
        p = new m34(14);
        o = new m34(13);
        n = new m34(12);
        m = new m34(11);
        l = new m34(10);
        k = new m34(9);
        j = new m34(8);
        i = new m34(7);
        h = new m34(6);
        g = new m34(5);
        f = new m34(4);
        e = new m34(3);
        d = new m34(iA);
        c = new m34(1);
        b = new m34(0);
    }

    public /* synthetic */ m34(int i2) {
        this.a = i2;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        wu2 wu2Var;
        wu2 wu2Var2;
        l44 l44VarA;
        p34 p34VarD;
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] bArr;
        byte[] bArr2;
        wu2 wu2Var3;
        l44 l44VarA2;
        p34 p34VarD2;
        ByteArrayOutputStream byteArrayOutputStream2;
        byte[] bArr3;
        byte[] bArr4;
        wu2 wu2Var4;
        wu2 wu2Var5;
        wu2 wu2Var6;
        wu2 wu2Var7;
        wu2 wu2Var8;
        wu2 wu2Var9;
        wu2 wu2Var10;
        long jC;
        l44 l44VarA3;
        wu2 wu2Var11;
        wu2 wu2Var12;
        l44 l44VarA4;
        wu2 wu2Var13;
        wu2 wu2Var14;
        wu2 wu2Var15;
        int iA = p30.a(((~603123090) & 1079339320) | 204100681, (603123090 & 1131784560) | 52466888, 1421285553, 105108813) ^ (1216803069 % 33252481);
        switch (this.a) {
            case 0:
                return ((g44) obj).a();
            case 1:
                try {
                    c44 c44Var = ((g44) obj).a;
                    long jC2 = c44Var.a().c();
                    l44 l44VarA5 = c44Var.a();
                    List listE = l44VarA5.e();
                    if (jC2 < 0) {
                        jC2 += (long) listE.size();
                    }
                    if (jC2 < 0 || jC2 >= listE.size()) {
                        throw new j44();
                    }
                    listE.remove((int) jC2);
                    c44Var.a(l44VarA5);
                    return Optional.empty();
                } catch (a44 unused) {
                    wu2Var = wu2.y;
                    return Optional.of(wu2Var);
                } catch (b44 e2) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e2);
                } catch (i44 unused2) {
                    wu2Var = wu2.z;
                    return Optional.of(wu2Var);
                } catch (j44 unused3) {
                    wu2Var = wu2.J;
                    return Optional.of(wu2Var);
                }
            case 2:
                g44 g44Var = (g44) obj;
                try {
                    c44 c44Var2 = g44Var.a;
                    l44VarA = c44Var2.a();
                    p34VarD = c44Var2.a().d();
                    byteArrayOutputStream = new ByteArrayOutputStream();
                } catch (a44 unused4) {
                    wu2Var2 = wu2.y;
                } catch (i44 unused5) {
                    wu2Var2 = wu2.z;
                }
                try {
                    l44VarA.a(byteArrayOutputStream);
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    int length = byteArray.length;
                    if (length == 0) {
                        bArr = new byte[0];
                    } else {
                        byte[] bArr5 = new byte[length];
                        System.arraycopy(byteArray, 0, bArr5, 0, length);
                        bArr = bArr5;
                    }
                    byte[] bArr6 = p34VarD.a;
                    int length2 = bArr6.length + bArr.length;
                    byte[] bArr7 = new byte[length2];
                    System.arraycopy(bArr6, 0, bArr7, 0, bArr6.length);
                    System.arraycopy(bArr, 0, bArr7, p34VarD.a.length, bArr.length);
                    if (length2 == 0) {
                        bArr2 = new byte[0];
                    } else {
                        bArr2 = new byte[length2];
                        System.arraycopy(bArr7, 0, bArr2, 0, length2);
                    }
                    try {
                        g44Var.a.a(l44.a(new p34(bArr2)));
                        return Optional.empty();
                    } catch (b44 e3) {
                        throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e3);
                    }
                } catch (i44 unused6) {
                    wu2Var2 = wu2.l;
                    return Optional.of(wu2Var2);
                } catch (IOException e4) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e4);
                }
            case 3:
                g44 g44Var2 = (g44) obj;
                try {
                    c44 c44Var3 = g44Var2.a;
                    l44VarA2 = c44Var3.a();
                    p34VarD2 = c44Var3.a().d();
                    byteArrayOutputStream2 = new ByteArrayOutputStream();
                } catch (a44 unused7) {
                    wu2Var3 = wu2.y;
                } catch (i44 unused8) {
                    wu2Var3 = wu2.z;
                }
                try {
                    l34.a(l44VarA2.c(), new k44(byteArrayOutputStream2, iA), false);
                    byte[] byteArray2 = byteArrayOutputStream2.toByteArray();
                    int length3 = byteArray2.length;
                    if (length3 == 0) {
                        bArr3 = new byte[0];
                    } else {
                        byte[] bArr8 = new byte[length3];
                        System.arraycopy(byteArray2, 0, bArr8, 0, length3);
                        bArr3 = bArr8;
                    }
                    byte[] bArr9 = p34VarD2.a;
                    int length4 = bArr9.length + bArr3.length;
                    byte[] bArr10 = new byte[length4];
                    System.arraycopy(bArr9, 0, bArr10, 0, bArr9.length);
                    System.arraycopy(bArr3, 0, bArr10, p34VarD2.a.length, bArr3.length);
                    if (length4 == 0) {
                        bArr4 = new byte[0];
                    } else {
                        bArr4 = new byte[length4];
                        System.arraycopy(bArr10, 0, bArr4, 0, length4);
                    }
                    try {
                        g44Var2.a.a(l44.a(new p34(bArr4)));
                        return Optional.empty();
                    } catch (b44 e5) {
                        throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e5);
                    }
                } catch (i44 unused9) {
                    wu2Var3 = wu2.l;
                    return Optional.of(wu2Var3);
                } catch (IOException e6) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e6);
                }
            case 4:
                g44 g44Var3 = (g44) obj;
                try {
                    long jD = g44Var3.b.a().b + g44Var3.c.d();
                    l44 l44VarA6 = g44Var3.a.a();
                    try {
                        c44 c44Var4 = g44Var3.a;
                        c44Var4.a.set(c44Var4.a(-jD), l44VarA6);
                        return Optional.empty();
                    } catch (a44 unused10) {
                        wu2Var4 = wu2.i;
                        return Optional.of(wu2Var4);
                    }
                } catch (a44 | y34 unused11) {
                    wu2Var4 = wu2.y;
                } catch (r34 | t34 unused12) {
                    wu2Var4 = wu2.z;
                }
                break;
            case 5:
                try {
                    c44 c44Var5 = ((g44) obj).a;
                    c44Var5.a(l44.a(c44Var5.a().c() << ((int) c44Var5.a().c())));
                    return Optional.empty();
                } catch (a44 unused13) {
                    wu2Var5 = wu2.y;
                    return Optional.of(wu2Var5);
                } catch (b44 e7) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e7);
                } catch (i44 unused14) {
                    wu2Var5 = wu2.z;
                    return Optional.of(wu2Var5);
                }
            case 6:
                try {
                    c44 c44Var6 = ((g44) obj).a;
                    c44Var6.a(l44.a(c44Var6.a().c() >>> ((int) c44Var6.a().c())));
                    return Optional.empty();
                } catch (a44 unused15) {
                    wu2Var6 = wu2.y;
                    return Optional.of(wu2Var6);
                } catch (b44 e8) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e8);
                } catch (i44 unused16) {
                    wu2Var6 = wu2.z;
                    return Optional.of(wu2Var6);
                }
            case 7:
                try {
                    c44 c44Var7 = ((g44) obj).a;
                    c44Var7.a(l44.a(c44Var7.a().g() - c44Var7.a().g()));
                    return Optional.empty();
                } catch (a44 unused17) {
                    wu2Var7 = wu2.y;
                    return Optional.of(wu2Var7);
                } catch (b44 e9) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e9);
                } catch (i44 unused18) {
                    wu2Var7 = wu2.z;
                    return Optional.of(wu2Var7);
                }
            case 8:
                try {
                    c44 c44Var8 = ((g44) obj).a;
                    c44Var8.a(l44.a(c44Var8.a().c() - c44Var8.a().c()));
                    return Optional.empty();
                } catch (a44 unused19) {
                    wu2Var8 = wu2.y;
                    return Optional.of(wu2Var8);
                } catch (b44 e10) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e10);
                } catch (i44 unused20) {
                    wu2Var8 = wu2.z;
                    return Optional.of(wu2Var8);
                }
            case 9:
                g44 g44Var4 = (g44) obj;
                try {
                    c44 c44Var9 = g44Var4.a;
                    long jC3 = c44Var9.a().c();
                    l44 l44VarA7 = c44Var9.a();
                    try {
                        c44 c44Var10 = g44Var4.a;
                        l44 l44Var = (l44) c44Var10.a.get(c44Var10.a(jC3));
                        c44Var10.a.set(c44Var10.a(jC3), l44VarA7);
                        c44Var10.a(l44Var);
                        return Optional.empty();
                    } catch (a44 unused21) {
                        wu2Var9 = wu2.i;
                        return Optional.of(wu2Var9);
                    } catch (b44 e11) {
                        throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e11);
                    }
                } catch (a44 unused22) {
                    wu2Var9 = wu2.y;
                } catch (i44 unused23) {
                    wu2Var9 = wu2.z;
                }
                break;
            case 10:
                g44 g44Var5 = (g44) obj;
                try {
                    c44 c44Var11 = g44Var5.a;
                    jC = g44Var5.b.a().b + c44Var11.a().c();
                    l44VarA3 = c44Var11.a();
                } catch (a44 | y34 unused24) {
                    wu2Var10 = wu2.y;
                } catch (i44 unused25) {
                    wu2Var10 = wu2.z;
                }
                try {
                    c44 c44Var12 = g44Var5.a;
                    long j2 = -jC;
                    l44 l44Var2 = (l44) c44Var12.a.get(c44Var12.a(j2));
                    c44Var12.a.set(c44Var12.a(j2), l44VarA3);
                    c44Var12.a(l44Var2);
                    return Optional.empty();
                } catch (a44 unused26) {
                    wu2Var10 = wu2.i;
                    return Optional.of(wu2Var10);
                } catch (b44 e12) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e12);
                }
            case 11:
                g44 g44Var6 = (g44) obj;
                try {
                    long jD2 = g44Var6.b.a().b + g44Var6.c.d();
                    l44 l44VarA8 = g44Var6.a.a();
                    try {
                        c44 c44Var13 = g44Var6.a;
                        long j3 = -jD2;
                        l44 l44Var3 = (l44) c44Var13.a.get(c44Var13.a(j3));
                        c44Var13.a.set(c44Var13.a(j3), l44VarA8);
                        c44Var13.a(l44Var3);
                        return Optional.empty();
                    } catch (a44 unused27) {
                        wu2Var11 = wu2.i;
                        return Optional.of(wu2Var11);
                    } catch (b44 e13) {
                        throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e13);
                    }
                } catch (a44 | y34 unused28) {
                    wu2Var11 = wu2.y;
                } catch (r34 | t34 unused29) {
                    wu2Var11 = wu2.z;
                }
                break;
            case 12:
                g44 g44Var7 = (g44) obj;
                try {
                    long jC4 = g44Var7.a.a().c();
                    try {
                        c44 c44Var14 = g44Var7.a;
                        if (jC4 == 0) {
                            l44VarA4 = c44Var14.a();
                        } else {
                            c44Var14.b--;
                            l44VarA4 = (l44) c44Var14.a.remove(c44Var14.a(jC4));
                        }
                        c44Var14.a(l44VarA4);
                        return Optional.empty();
                    } catch (a44 unused30) {
                        wu2Var12 = wu2.h;
                        return Optional.of(wu2Var12);
                    } catch (b44 e14) {
                        throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e14);
                    }
                } catch (a44 unused31) {
                    wu2Var12 = wu2.y;
                } catch (i44 unused32) {
                    wu2Var12 = wu2.z;
                }
                break;
            case 13:
                g44 g44Var8 = (g44) obj;
                try {
                    c44 c44Var15 = g44Var8.a;
                    long jC5 = c44Var15.a().c();
                    long jC6 = c44Var15.a().c();
                    z34 z34Var = g44Var8.b;
                    z34Var.a(g44Var8.c.a(), jC6, z34Var.a().b);
                    g44Var8.c.a(jC5);
                    return Optional.empty();
                } catch (a44 unused33) {
                    wu2Var13 = wu2.y;
                    return Optional.of(wu2Var13);
                } catch (i44 unused34) {
                    wu2Var13 = wu2.z;
                    return Optional.of(wu2Var13);
                } catch (s34 | t34 unused35) {
                    wu2Var13 = wu2.s;
                    return Optional.of(wu2Var13);
                } catch (x34 unused36) {
                    wu2Var13 = wu2.C;
                    return Optional.of(wu2Var13);
                } catch (y34 unused37) {
                    wu2Var13 = wu2.x;
                    return Optional.of(wu2Var13);
                }
            case 14:
                g44 g44Var9 = (g44) obj;
                try {
                } catch (a44 unused38) {
                    wu2Var14 = wu2.y;
                }
                try {
                    g44Var9.a.a(l44.b(g44Var9.a.a().b()));
                    return Optional.empty();
                } catch (b44 e15) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e15);
                } catch (i44 unused39) {
                    wu2Var14 = wu2.q;
                    return Optional.of(wu2Var14);
                }
            default:
                try {
                    c44 c44Var16 = ((g44) obj).a;
                    Iterator it = c44Var16.a().e().iterator();
                    while (it.hasNext()) {
                        c44Var16.a((l44) it.next());
                        break;
                    }
                    return Optional.empty();
                } catch (a44 unused40) {
                    wu2Var15 = wu2.y;
                    return Optional.of(wu2Var15);
                } catch (b44 unused41) {
                    wu2Var15 = wu2.b;
                    return Optional.of(wu2Var15);
                } catch (i44 unused42) {
                    wu2Var15 = wu2.z;
                    return Optional.of(wu2Var15);
                }
        }
    }
}
