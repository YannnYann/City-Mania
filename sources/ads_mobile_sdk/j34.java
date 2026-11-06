package ads_mobile_sdk;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j34 implements d44 {
    public static final /* synthetic */ j34 b;
    public static final /* synthetic */ j34 c;
    public static final /* synthetic */ j34 d;
    public static final /* synthetic */ j34 e;
    public static final /* synthetic */ j34 f;
    public static final /* synthetic */ j34 g;
    public static final /* synthetic */ j34 h;
    public static final /* synthetic */ j34 i;
    public static final /* synthetic */ j34 j;
    public static final /* synthetic */ j34 k;
    public static final /* synthetic */ j34 l;
    public static final /* synthetic */ j34 m;
    public static final /* synthetic */ j34 n;
    public static final /* synthetic */ j34 o;
    public static final /* synthetic */ j34 p;
    public static final /* synthetic */ j34 q;
    public static final /* synthetic */ j34 r;
    public static final /* synthetic */ j34 s;
    public static final /* synthetic */ j34 t;
    public static final /* synthetic */ j34 u;
    public static final /* synthetic */ j34 v;
    public final /* synthetic */ int a;

    static {
        int iA = p30.a(((~1281944976) & 1463473736) | 847256033, (1281944976 & 1698424328) | 948255187, -1554299394, 419914800) ^ (1727952741 % 1091714937);
        v = new j34(20);
        u = new j34(19);
        t = new j34(18);
        s = new j34(17);
        r = new j34(16);
        q = new j34(15);
        p = new j34(14);
        o = new j34(13);
        n = new j34(12);
        m = new j34(11);
        l = new j34(10);
        k = new j34(9);
        j = new j34(8);
        i = new j34(7);
        h = new j34(6);
        g = new j34(5);
        f = new j34(4);
        e = new j34(3);
        d = new j34(iA);
        c = new j34(1);
        b = new j34(0);
    }

    public /* synthetic */ j34(int i2) {
        this.a = i2;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        wu2 wu2Var;
        wu2 wu2Var2;
        wu2 wu2Var3;
        wu2 wu2Var4;
        wu2 wu2Var5;
        wu2 wu2Var6;
        wu2 wu2Var7;
        wu2 wu2Var8;
        wu2 wu2Var9;
        wu2 wu2Var10;
        wu2 wu2Var11;
        wu2 wu2Var12;
        wu2 wu2Var13;
        wu2 wu2Var14;
        wu2 wu2Var15;
        wu2 wu2Var16;
        wu2 wu2Var17;
        wu2 wu2Var18;
        wu2 wu2Var19;
        wu2 wu2Var20;
        char c2 = 0;
        long j2 = 1;
        switch (this.a) {
            case 0:
                g44 g44Var = (g44) obj;
                try {
                    c44 c44Var = g44Var.a;
                    long jC = c44Var.a().c();
                    if (c44Var.a().c() != 0) {
                        g44Var.c.a(jC);
                        break;
                    }
                    return Optional.empty();
                } catch (a44 unused) {
                    wu2Var = wu2.y;
                    return Optional.of(wu2Var);
                } catch (i44 unused2) {
                    wu2Var = wu2.z;
                    return Optional.of(wu2Var);
                } catch (s34 | t34 unused3) {
                    wu2Var = wu2.j;
                    return Optional.of(wu2Var);
                }
            case 1:
                try {
                    c44 c44Var2 = ((g44) obj).a;
                    long jC2 = c44Var2.a().c();
                    l44 l44VarA = c44Var2.a();
                    l44 l44VarA2 = c44Var2.a();
                    List listE = l44VarA2.e();
                    if (jC2 < 0) {
                        jC2 += (long) (listE.size() + 1);
                    }
                    if (jC2 < 0 || jC2 >= listE.size() + 1) {
                        throw new j44();
                    }
                    listE.add((int) jC2, l44VarA);
                    c44Var2.a(l44VarA2);
                    return Optional.empty();
                } catch (a44 unused4) {
                    wu2Var2 = wu2.y;
                    return Optional.of(wu2Var2);
                } catch (b44 e2) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e2);
                } catch (i44 unused5) {
                    wu2Var2 = wu2.z;
                    return Optional.of(wu2Var2);
                } catch (j44 unused6) {
                    wu2Var2 = wu2.J;
                    return Optional.of(wu2Var2);
                }
            case 2:
                g44 g44Var2 = (g44) obj;
                try {
                    c44 c44Var3 = g44Var2.a;
                    long jC3 = c44Var3.a().c();
                    if (c44Var3.a().c() == 0) {
                        g44Var2.c.a(jC3);
                        break;
                    }
                    return Optional.empty();
                } catch (a44 unused7) {
                    wu2Var3 = wu2.y;
                    return Optional.of(wu2Var3);
                } catch (i44 unused8) {
                    wu2Var3 = wu2.z;
                    return Optional.of(wu2Var3);
                } catch (s34 | t34 unused9) {
                    wu2Var3 = wu2.j;
                    return Optional.of(wu2Var3);
                }
            case 3:
                try {
                    ((g44) obj).a.a(l44.a(r0.a().e().size()));
                    return Optional.empty();
                } catch (a44 unused10) {
                    wu2Var4 = wu2.y;
                    return Optional.of(wu2Var4);
                } catch (b44 e3) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e3);
                } catch (i44 unused11) {
                    wu2Var4 = wu2.z;
                    return Optional.of(wu2Var4);
                }
            case 4:
                try {
                    ((g44) obj).a.a(l44.a(r0.a().d().a.length));
                    return Optional.empty();
                } catch (a44 unused12) {
                    wu2Var5 = wu2.y;
                    return Optional.of(wu2Var5);
                } catch (b44 e4) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e4);
                } catch (i44 unused13) {
                    wu2Var5 = wu2.z;
                    return Optional.of(wu2Var5);
                }
            case 5:
                try {
                    c44 c44Var4 = ((g44) obj).a;
                    c44Var4.a(l44.a(Math.log(c44Var4.a().g())));
                    return Optional.empty();
                } catch (a44 unused14) {
                    wu2Var6 = wu2.y;
                    return Optional.of(wu2Var6);
                } catch (b44 e5) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e5);
                } catch (i44 unused15) {
                    wu2Var6 = wu2.z;
                    return Optional.of(wu2Var6);
                }
            case 6:
                try {
                    c44 c44Var5 = ((g44) obj).a;
                    long jC4 = c44Var5.a().c();
                    long jC5 = c44Var5.a().c();
                    if (jC4 == 0 || jC5 == 0) {
                        j2 = 0;
                    }
                    c44Var5.a(l44.a(j2));
                    return Optional.empty();
                } catch (a44 unused16) {
                    wu2Var7 = wu2.y;
                    return Optional.of(wu2Var7);
                } catch (b44 e6) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e6);
                } catch (i44 unused17) {
                    wu2Var7 = wu2.z;
                    return Optional.of(wu2Var7);
                }
            case 7:
                try {
                    c44 c44Var6 = ((g44) obj).a;
                    if (c44Var6.a().c() != 0) {
                        j2 = 0;
                    }
                    c44Var6.a(l44.a(j2));
                    return Optional.empty();
                } catch (a44 unused18) {
                    wu2Var8 = wu2.y;
                    return Optional.of(wu2Var8);
                } catch (b44 e7) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e7);
                } catch (i44 unused19) {
                    wu2Var8 = wu2.z;
                    return Optional.of(wu2Var8);
                }
            case 8:
                try {
                    c44 c44Var7 = ((g44) obj).a;
                    long jC6 = c44Var7.a().c();
                    long jC7 = c44Var7.a().c();
                    if (jC6 == 0 && jC7 == 0) {
                        j2 = 0;
                    }
                    c44Var7.a(l44.a(j2));
                    return Optional.empty();
                } catch (a44 unused20) {
                    wu2Var9 = wu2.y;
                    return Optional.of(wu2Var9);
                } catch (b44 e8) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e8);
                } catch (i44 unused21) {
                    wu2Var9 = wu2.z;
                    return Optional.of(wu2Var9);
                }
            case 9:
                g44 g44Var3 = (g44) obj;
                try {
                    c44 c44Var8 = g44Var3.a;
                    try {
                        int iCompare = new h44(false).compare(c44Var8.a(), c44Var8.a());
                        c44 c44Var9 = g44Var3.a;
                        if (iCompare >= 0) {
                            j2 = 0;
                        }
                        c44Var9.a(l44.a(j2));
                        return Optional.empty();
                    } catch (IllegalArgumentException unused22) {
                        return Optional.of(wu2.e);
                    }
                } catch (a44 unused23) {
                    return Optional.of(wu2.y);
                } catch (b44 e9) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e9);
                }
            case 10:
                g44 g44Var4 = (g44) obj;
                try {
                    try {
                        try {
                            c44 c44Var10 = g44Var4.a;
                            long jC8 = c44Var10.a().c();
                            int[] iArr = {1516266761, 1142957872, 446044582, 1147282962, 861635011, -1643766350, 500618996, 1941690360, 410409117};
                            char c3 = 7;
                            char c4 = '\b';
                            int i2 = iArr[7] % iArr[8];
                            ArrayList arrayList = new ArrayList();
                            int i3 = 0;
                            int i4 = 0;
                            while (i3 < c44Var10.b) {
                                try {
                                    l44 l44VarA3 = l44.a((l44) c44Var10.a.get(i3));
                                    int[] iArr2 = {524133589, 740889625, 408955079, 621796408, 24562149, 1207357565, 297783268, 1066077375, 937558955};
                                    int i5 = iArr2[c2];
                                    int i6 = iArr2[1];
                                    int i7 = iArr2[2];
                                    int i8 = iArr2[3];
                                    char c5 = c3;
                                    char c6 = c4;
                                    if (i4 >= (p30.a(((~i5) & i6) | i7, (i5 & i8) | iArr2[4], iArr2[5], iArr2[6]) ^ (iArr2[c5] % iArr2[c6]))) {
                                        throw new b44();
                                    }
                                    if (i4 == arrayList.size()) {
                                        arrayList.add(l44VarA3);
                                    } else {
                                        arrayList.set(i4, l44VarA3);
                                    }
                                    i4++;
                                    i3++;
                                    c3 = c5;
                                    c4 = c6;
                                    c2 = 0;
                                } catch (b44 e10) {
                                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e10);
                                }
                            }
                            char c7 = c3;
                            char c8 = c4;
                            u34 u34Var = g44Var4.c;
                            u34 u34Var2 = new u34(u34Var.b, u34Var.a, u34Var.c.a(), u34Var.d);
                            int[] iArr3 = {343945053, 300943123, 276960570, 1098387973, 1376531620, 1545514151, 271059426, 857490000, 454333378};
                            int i9 = iArr3[c7] % iArr3[c8];
                            new z34();
                            u34Var2.a(jC8);
                            c44Var10.a(l44.a(new l34()));
                            return Optional.empty();
                        } catch (b44 e11) {
                            throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e11);
                        }
                    } catch (s34 | t34 unused24) {
                        wu2Var10 = wu2.u;
                        return Optional.of(wu2Var10);
                    }
                } catch (a44 unused25) {
                    wu2Var10 = wu2.y;
                    return Optional.of(wu2Var10);
                } catch (i44 unused26) {
                    wu2Var10 = wu2.z;
                    return Optional.of(wu2Var10);
                }
            case 11:
                try {
                    c44 c44Var11 = ((g44) obj).a;
                    c44Var11.a(l44.a(c44Var11.a().a((Class) c44Var11.a().b())));
                    return Optional.empty();
                } catch (a44 unused27) {
                    wu2Var11 = wu2.y;
                    return Optional.of(wu2Var11);
                } catch (b44 e12) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e12);
                } catch (i44 unused28) {
                    wu2Var11 = wu2.q;
                    return Optional.of(wu2Var11);
                }
            case 12:
                try {
                    c44 c44Var12 = ((g44) obj).a;
                    long jC9 = c44Var12.a().c();
                    long jC10 = c44Var12.a().c();
                    if (jC9 == 0) {
                        return Optional.of(wu2.G);
                    }
                    c44Var12.a(l44.a(jC10 % jC9));
                    return Optional.empty();
                } catch (a44 unused29) {
                    wu2Var12 = wu2.y;
                    return Optional.of(wu2Var12);
                } catch (b44 e13) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e13);
                } catch (i44 unused30) {
                    wu2Var12 = wu2.z;
                    return Optional.of(wu2Var12);
                }
            case 13:
                try {
                    c44 c44Var13 = ((g44) obj).a;
                    c44Var13.a(l44.a(c44Var13.a().g() * c44Var13.a().g()));
                    return Optional.empty();
                } catch (a44 unused31) {
                    wu2Var13 = wu2.y;
                    return Optional.of(wu2Var13);
                } catch (b44 e14) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e14);
                } catch (i44 unused32) {
                    wu2Var13 = wu2.z;
                    return Optional.of(wu2Var13);
                }
            case 14:
                try {
                    c44 c44Var14 = ((g44) obj).a;
                    c44Var14.a(l44.a(c44Var14.a().c() * c44Var14.a().c()));
                    return Optional.empty();
                } catch (a44 unused33) {
                    wu2Var14 = wu2.y;
                    return Optional.of(wu2Var14);
                } catch (b44 e15) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e15);
                } catch (i44 unused34) {
                    wu2Var14 = wu2.z;
                    return Optional.of(wu2Var14);
                }
            case 15:
                try {
                    c44 c44Var15 = ((g44) obj).a;
                    long jC11 = c44Var15.a().c();
                    ArrayList arrayList2 = new ArrayList();
                    for (long j3 = 0; j3 < jC11; j3++) {
                        arrayList2.add(c44Var15.a());
                    }
                    Collections.reverse(arrayList2);
                    c44Var15.a(l44.a(arrayList2));
                    return Optional.empty();
                } catch (a44 unused35) {
                    wu2Var15 = wu2.y;
                    return Optional.of(wu2Var15);
                } catch (b44 e16) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e16);
                } catch (i44 unused36) {
                    wu2Var15 = wu2.z;
                    return Optional.of(wu2Var15);
                }
            case 16:
                try {
                    c44 c44Var16 = ((g44) obj).a;
                    c44Var16.a(l44.a(Math.pow(c44Var16.a().g(), c44Var16.a().g())));
                    return Optional.empty();
                } catch (a44 unused37) {
                    wu2Var16 = wu2.y;
                    return Optional.of(wu2Var16);
                } catch (b44 e17) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e17);
                } catch (i44 unused38) {
                    wu2Var16 = wu2.z;
                    return Optional.of(wu2Var16);
                }
            case 17:
                try {
                    ((g44) obj).a.a(l44.a((Object) null));
                    return Optional.empty();
                } catch (b44 unused39) {
                    return Optional.of(wu2.b);
                }
            case 18:
                g44 g44Var5 = (g44) obj;
                try {
                    ByteBuffer byteBufferWrap = ByteBuffer.wrap(g44Var5.c.b(64L).a());
                    byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
                    g44Var5.a.a(l44.a(Double.longBitsToDouble(byteBufferWrap.getLong())));
                    return Optional.empty();
                } catch (b44 unused40) {
                    wu2Var17 = wu2.b;
                    return Optional.of(wu2Var17);
                } catch (s34 e18) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e18);
                } catch (t34 unused41) {
                    wu2Var17 = wu2.A;
                    return Optional.of(wu2Var17);
                }
            case 19:
                g44 g44Var6 = (g44) obj;
                try {
                    g44Var6.a.a(l44.a(g44Var6.c.d()));
                    return Optional.empty();
                } catch (b44 unused42) {
                    wu2Var18 = wu2.b;
                    return Optional.of(wu2Var18);
                } catch (r34 unused43) {
                    wu2Var18 = wu2.E;
                    return Optional.of(wu2Var18);
                } catch (t34 unused44) {
                    wu2Var18 = wu2.A;
                    return Optional.of(wu2Var18);
                }
            default:
                g44 g44Var7 = (g44) obj;
                try {
                    long jD = g44Var7.c.d();
                    if (jD < 0 || jD > 2147483647L) {
                        wu2Var20 = wu2.A;
                    } else {
                        if ((7 & jD) == 0) {
                            g44Var7.a.a(l44.a(g44Var7.c.b(jD)));
                            return Optional.empty();
                        }
                        wu2Var20 = wu2.f;
                    }
                    return Optional.of(wu2Var20);
                } catch (b44 unused45) {
                    wu2Var19 = wu2.b;
                    return Optional.of(wu2Var19);
                } catch (r34 unused46) {
                    wu2Var19 = wu2.E;
                    return Optional.of(wu2Var19);
                } catch (s34 e19) {
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e19);
                } catch (t34 unused47) {
                    wu2Var19 = wu2.A;
                    return Optional.of(wu2Var19);
                }
        }
    }
}
