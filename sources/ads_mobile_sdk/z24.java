package ads_mobile_sdk;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import java.util.HashMap;
import java.util.Optional;

/* JADX INFO: loaded from: classes.dex */
public final class z24 implements iy3 {
    public final g44 a;
    public boolean b;

    public z24() {
        int[] iArr = {530498338, 909437126, 1273894288, 894494823, 1232015929, -100152071, 858712529, 970925433, 309198987};
        int i = iArr[7] % iArr[8];
        this.a = new g44(a34.a, new c44(), new u34(new g34()));
        this.b = false;
    }

    public final void a() throws my3 {
        long j = (1727918107 % 850382211) ^ (((((~903633726L) & 172425284) | 496871020) + ((903633726 & 1111623680) | 2099539784)) - 2607136925L);
        boolean z = this.b;
        String strA = n34.a("BkCyvAwRMTm0TkOZyDYQMHRR/BfGWZQu16Q1Ljk3pdYDZK5S");
        if (z) {
            return;
        }
        try {
            HashMap map = f44.a;
            ImmutableMap immutableMapBuildOrThrow = ImmutableMap.builder().put(q34.a, l44.a((d44) j34.s)).put(q34.b, l44.a((d44) new k34(0L))).put(q34.c, l44.a((d44) new k34(1L))).put(q34.d, l44.a((d44) new k34(j))).put(q34.e, l44.a((d44) new k34(3L))).put(q34.f, l44.a((d44) new k34(4L))).put(q34.g, l44.a((d44) new k34(7L))).put(q34.h, l44.a((d44) new k34(-1L))).put(q34.i, l44.a((d44) new k34(-2L))).put(q34.j, l44.a((d44) i34.b)).put(q34.k, l44.a((d44) i34.d)).put(q34.l, l44.a((d44) i34.j)).put(q34.m, l44.a((d44) i34.k)).put(q34.n, l44.a((d44) i34.n)).put(q34.o, l44.a((d44) j34.n)).put(q34.p, l44.a((d44) i34.f)).put(q34.q, l44.a((d44) i34.g)).put(q34.r, l44.a((d44) i34.h)).put(q34.s, l44.a((d44) i34.i)).put(q34.t, l44.a((d44) j34.h)).put(q34.u, l44.a((d44) j34.j)).put(q34.w, l44.a((d44) i34.o)).put(q34.x, l44.a((d44) i34.p)).put(q34.y, l44.a((d44) i34.s)).put(q34.z, l44.a((d44) i34.t)).put(q34.A, l44.a((d44) i34.u)).put(q34.B, l44.a((d44) i34.v)).put(q34.C, l44.a((d44) j34.b)).put(q34.D, l44.a((d44) j34.d)).put(q34.E, l44.a((d44) j34.e)).put(q34.F, l44.a((d44) j34.f)).put(q34.G, l44.a((d44) j34.k)).put(q34.H, l44.a((d44) j34.l)).put(q34.I, l44.a((d44) j34.p)).put(q34.J, l44.a((d44) j34.q)).put(q34.K, l44.a((d44) j34.u)).put(q34.L, l44.a((d44) j34.v)).put(q34.M, l44.a((d44) m34.b)).put(q34.N, l44.a((d44) m34.d)).put(q34.U, l44.a((d44) m34.e)).put(q34.O, l44.a((d44) m34.j)).put(q34.P, l44.a((d44) m34.k)).put(q34.Q, l44.a((d44) m34.n)).put(q34.R, l44.a((d44) m34.q)).put(q34.S, l44.a((d44) i34.q)).put(q34.T, l44.a((d44) m34.l)).put(q34.V, l44.a((d44) i34.l)).put(q34.W, l44.a((d44) m34.g)).put(q34.X, l44.a((d44) m34.h)).put(q34.v, l44.a((d44) j34.i)).put(q34.Y, l44.a((d44) m34.p)).put(q34.Z, l44.a((d44) j34.m)).put(q34.a0, l44.a((d44) m34.o)).put(q34.b0, l44.a((d44) j34.c)).put(q34.c0, l44.a((d44) m34.c)).put(q34.d0, l44.a((d44) i34.r)).put(q34.e0, l44.a((d44) m34.m)).put(q34.f0, l44.a((d44) i34.e)).put(q34.g0, l44.a((d44) m34.f)).put(q34.h0, l44.a((d44) j34.t)).put(q34.i0, l44.a((d44) i34.c)).put(q34.j0, l44.a((d44) m34.i)).put(q34.k0, l44.a((d44) j34.o)).put(q34.l0, l44.a((d44) i34.m)).put(q34.m0, l44.a((d44) j34.r)).put(q34.n0, l44.a((d44) j34.g)).buildOrThrow();
            for (long j2 = -1; j2 >= -82; j2--) {
                q34 q34Var = (q34) map.get(Long.valueOf(j2));
                if (q34Var == null) {
                    StringBuilder sb = new StringBuilder(String.valueOf(j2).length() + 36);
                    sb.append(strA);
                    sb.append(j2);
                    throw new e44(sb.toString());
                }
                this.a.a.a((l44) immutableMapBuildOrThrow.get(q34Var));
            }
            for (int iA = p30.a(((~850598623) & 1623310604) | 1065209921, (850598623 & 1167067980) | 656203473, -868790359, 1108537283) ^ (1924200848 % 1438296358); iA < 1159; iA++) {
                this.a.a.a(l44.a((Object) null));
            }
            this.b = true;
        } catch (b44 e) {
            throw new my3(ky3.b, e);
        }
    }

    public final void c() throws lp1 {
        int iA = p30.a(((~250198952) & 424581896) | 1125410098, (250198952 & 1481292330) | 1135682867, 1944425977, 41268864) ^ (1865036214 % 1099527851);
        try {
            int iC = this.a.c.c();
            int i = ((iC & iA) << 16) >> 16;
            int i2 = ((iA & (iC >> 16)) << 16) >> 16;
            if (i != -14426) {
                throw new lp1(n34.a("Ake3rgkWMjm/WV6IwjgYPC5W5wzEVsBo").concat(String.format(n34.a("e1Hk+x0="), Short.valueOf((short) i))));
            }
            if (i2 == 5) {
                return;
            }
            throw new lp1(n34.a("Ake3rgkWMjm/WV6IwjgYPC5A+hHdWNcn1PY=").concat(String.format(n34.a("e1Hk+x0="), Short.valueOf((short) i2))));
        } catch (t34 e) {
            throw new lp1(n34.a("BkCyvAwRMTm/WV6IwjgYPC5Y7R/NUsZm"), e);
        }
    }

    public final void d() throws lp1 {
        int[] iArr = {171029949, 1356422403, 1913211838, 215266853, 506454572, 1309457854, 56236614, 1696779465, 30245415};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int iA = p30.a((i2 & (~i)) | i3, (i & i4) | i5, iArr[5], iArr[6]) ^ (iArr[7] % iArr[8]);
        try {
            int iC = this.a.c.c();
            if (iC == iA) {
                return;
            }
            throw new lp1(n34.a("HkeprgsbOny5AEiU1TIfNmpVqAjMRcch17g1").concat(String.format(n34.a("e1Hk9x0="), Integer.valueOf(iC))));
        } catch (t34 e) {
            throw new lp1(n34.a("BkCyvAwRMTm/WV6IwjgYPC5Y7R/NUsZm"), e);
        }
    }

    public final void e() throws my3 {
        try {
            g44 g44Var = this.a;
            int iC = g44Var.c.c();
            u34 u34Var = g44Var.c;
            int[] iArr = q30.a;
            ((g34) u34Var.d).getClass();
            u34Var.c = new f34(new h34(iArr, iC));
        } catch (t34 e) {
            throw new my3(ky3.e, e);
        }
    }

    public final Object a(long j, Optional optional) throws lp1, my3 {
        wu2 wu2Var;
        Object objOf;
        long j2;
        try {
            if (!this.b) {
                a();
            }
            u34 u34Var = this.a.c;
            try {
                u34Var.a(0L);
                u34Var.c = new e34();
                c();
                d();
                e();
                try {
                    this.a.c.a(j);
                    ImmutableList immutableList = b34.a;
                    g44 g44Var = this.a;
                    Optional.empty();
                    Object objOrElseGet = optional.orElseGet(v34.c);
                    l44 l44VarB = objOrElseGet instanceof l44 ? (l44) objOrElseGet : l44.b(objOrElseGet);
                    g44Var.a.a(l44VarB);
                    g44Var.a.a(l44.a((Object) null));
                    z34 z34Var = g44Var.b;
                    z34Var.a(0L, 0L, r11.b);
                    while (!z34Var.a.isEmpty()) {
                        long jA = g44Var.c.a();
                        try {
                            long jB = g44Var.c.b();
                            try {
                                c44 c44Var = g44Var.a;
                                try {
                                    try {
                                        objOf = ((l44) c44Var.a.get(c44Var.a(jB))).f().apply(g44Var);
                                    } catch (Throwable unused) {
                                        wu2Var = wu2.w;
                                        objOf = Optional.of(wu2Var);
                                    }
                                } catch (i44 unused2) {
                                    wu2Var = wu2.d;
                                }
                            } catch (a44 unused3) {
                                wu2Var = wu2.c;
                            }
                        } catch (t34 unused4) {
                            wu2Var = wu2.v;
                        }
                        if (((Optional) objOf).isPresent()) {
                            if (!b34.a.contains(((Optional) objOf).get())) {
                                throw new my3(ky3.h, (wu2) ((Optional) objOf).get(), jA);
                            }
                            Object obj = ((Optional) objOf).get();
                            long jA2 = g44Var.c.a();
                            do {
                                try {
                                    j2 = g44Var.b.a().c;
                                    Optional optionalA = g44Var.a();
                                    if (optionalA.isPresent() && optionalA.get() == wu2.x) {
                                        throw new my3(ky3.h, (wu2) obj, jA2);
                                    }
                                    if (optionalA.isPresent()) {
                                        throw new my3(ky3.h, (wu2) optionalA.get(), jA2);
                                    }
                                } catch (y34 unused5) {
                                    throw new my3(ky3.h, (wu2) obj, jA2);
                                }
                            } while (j2 != 2);
                        }
                    }
                    try {
                        c44 c44Var2 = g44Var.a;
                        l44 l44VarA = c44Var2.a();
                        c44Var2.a();
                        return l44VarA.a();
                    } catch (a44 e) {
                        throw new my3(ky3.f, e);
                    } catch (i44 e2) {
                        throw new my3(ky3.g, e2);
                    }
                } catch (s34 e3) {
                    e = e3;
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e);
                } catch (t34 e4) {
                    e = e4;
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e);
                }
            } catch (s34 e5) {
                e = e5;
                throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e);
            } catch (t34 e6) {
                e = e6;
                throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e);
            }
        } catch (b44 e7) {
            throw new my3(ky3.c, e7);
        } catch (x34 e8) {
            throw new my3(ky3.d, e8);
        }
    }

    public final Object a(Optional optional) throws lp1, my3 {
        long j;
        Object obj;
        wu2 wu2Var;
        Object objOf;
        long j2;
        long j3 = (2066990816 % 1312712376) ^ (((((~969069027L) & 142606732) | 1619863563) + ((969069027 & 2288427397L) | 2247008323L)) - 3246811530L);
        int iA = p30.a(((~1249152986) & 1617494064) | 79450135, (1249152986 & 1883312481) | 531944901, -1418081056, 652996966) ^ (113766839 % 111387570);
        try {
            try {
                if (this.b) {
                    j = 2;
                    obj = null;
                } else {
                    String strA = n34.a("BkCyvAwRMTm0TkOZyDYQMHRR/BfGWZQu16Q1Ljk3pdYDZK5S");
                    try {
                        HashMap map = f44.a;
                        obj = null;
                        long j4 = -1;
                        j = 2;
                        ImmutableMap immutableMapBuildOrThrow = ImmutableMap.builder().put(q34.a, l44.a((d44) j34.s)).put(q34.b, l34.a(0L)).put(q34.c, l34.a(1L)).put(q34.d, l34.a(2L)).put(q34.e, l34.a(3L)).put(q34.f, l34.a(4L)).put(q34.g, l34.a(7L)).put(q34.h, l34.a(-1L)).put(q34.i, l34.a(-2L)).put(q34.j, l44.a((d44) i34.b)).put(q34.k, l44.a((d44) i34.d)).put(q34.l, l44.a((d44) i34.j)).put(q34.m, l44.a((d44) i34.k)).put(q34.n, l44.a((d44) i34.n)).put(q34.o, l44.a((d44) j34.n)).put(q34.p, l44.a((d44) i34.f)).put(q34.q, l44.a((d44) i34.g)).put(q34.r, l44.a((d44) i34.h)).put(q34.s, l44.a((d44) i34.i)).put(q34.t, l44.a((d44) j34.h)).put(q34.u, l44.a((d44) j34.j)).put(q34.w, l44.a((d44) i34.o)).put(q34.x, l44.a((d44) i34.p)).put(q34.y, l44.a((d44) i34.s)).put(q34.z, l44.a((d44) i34.t)).put(q34.A, l44.a((d44) i34.u)).put(q34.B, l44.a((d44) i34.v)).put(q34.C, l44.a((d44) j34.b)).put(q34.D, l44.a((d44) j34.d)).put(q34.E, l44.a((d44) j34.e)).put(q34.F, l44.a((d44) j34.f)).put(q34.G, l44.a((d44) j34.k)).put(q34.H, l44.a((d44) j34.l)).put(q34.I, l44.a((d44) j34.p)).put(q34.J, l44.a((d44) j34.q)).put(q34.K, l44.a((d44) j34.u)).put(q34.L, l44.a((d44) j34.v)).put(q34.M, l44.a((d44) m34.b)).put(q34.N, l44.a((d44) m34.d)).put(q34.U, l44.a((d44) m34.e)).put(q34.O, l44.a((d44) m34.j)).put(q34.P, l44.a((d44) m34.k)).put(q34.Q, l44.a((d44) m34.n)).put(q34.R, l44.a((d44) m34.q)).put(q34.S, l44.a((d44) i34.q)).put(q34.T, l44.a((d44) m34.l)).put(q34.V, l44.a((d44) i34.l)).put(q34.W, l44.a((d44) m34.g)).put(q34.X, l44.a((d44) m34.h)).put(q34.v, l44.a((d44) j34.i)).put(q34.Y, l44.a((d44) m34.p)).put(q34.Z, l44.a((d44) j34.m)).put(q34.a0, l44.a((d44) m34.o)).put(q34.b0, l44.a((d44) j34.c)).put(q34.c0, l44.a((d44) m34.c)).put(q34.d0, l44.a((d44) i34.r)).put(q34.e0, l44.a((d44) m34.m)).put(q34.f0, l44.a((d44) i34.e)).put(q34.g0, l44.a((d44) m34.f)).put(q34.h0, l44.a((d44) j34.t)).put(q34.i0, l44.a((d44) i34.c)).put(q34.j0, l44.a((d44) m34.i)).put(q34.k0, l44.a((d44) j34.o)).put(q34.l0, l44.a((d44) i34.m)).put(q34.m0, l44.a((d44) j34.r)).put(q34.n0, l44.a((d44) j34.g)).buildOrThrow();
                        long j5 = -1;
                        while (j5 >= -82) {
                            q34 q34Var = (q34) map.get(Long.valueOf(j5));
                            if (q34Var == null) {
                                StringBuilder sb = new StringBuilder(String.valueOf(j5).length() + 36);
                                sb.append(strA);
                                sb.append(j5);
                                throw new e44(sb.toString());
                            }
                            long j6 = j4;
                            this.a.a.a((l44) immutableMapBuildOrThrow.get(q34Var));
                            j5 += j6;
                            j4 = j6;
                        }
                        for (int i = 82; i < iA; i++) {
                            this.a.a.a(l44.a((Object) null));
                        }
                        this.b = true;
                    } catch (b44 e) {
                        throw new my3(ky3.b, e);
                    }
                }
                u34 u34Var = this.a.c;
                try {
                    u34Var.a(0L);
                    u34Var.c = new e34();
                    String strA2 = n34.a("Ake3rgkWMjm/WV6IwjgYPC5W5wzEVsBo");
                    String strA3 = n34.a("Ake3rgkWMjm/WV6IwjgYPC5A+hHdWNcn1PY=");
                    try {
                        int iC = this.a.c.c();
                        int i2 = ((iC & 65535) << 16) >> 16;
                        int i3 = (((iC >> 16) & 65535) << 16) >> 16;
                        if (i2 != -14426) {
                            throw new lp1(strA2.concat(String.format(n34.a("e1Hk+x0="), Short.valueOf((short) i2))));
                        }
                        if (i3 != 5) {
                            throw new lp1(strA3.concat(String.format(n34.a("e1Hk+x0="), Short.valueOf((short) i3))));
                        }
                        String strA4 = n34.a("HkeprgsbOny5AEiU1TIfNmpVqAjMRcch17g1");
                        try {
                            int iC2 = this.a.c.c();
                            if (iC2 != 1182321202) {
                                throw new lp1(strA4.concat(String.format(n34.a("e1Hk9x0="), Integer.valueOf(iC2))));
                            }
                            try {
                                g44 g44Var = this.a;
                                int iC3 = g44Var.c.c();
                                u34 u34Var2 = g44Var.c;
                                int[] iArr = q30.a;
                                ((g34) u34Var2.d).getClass();
                                u34Var2.c = new f34(new h34(iArr, iC3));
                                try {
                                    this.a.c.a(j3);
                                    ImmutableList immutableList = b34.a;
                                    g44 g44Var2 = this.a;
                                    Optional.empty();
                                    Object objOrElseGet = optional.orElseGet(v34.c);
                                    l44 l44VarB = objOrElseGet instanceof l44 ? (l44) objOrElseGet : l44.b(objOrElseGet);
                                    g44Var2.a.a(l44VarB);
                                    g44Var2.a.a(l44.a(obj));
                                    z34 z34Var = g44Var2.b;
                                    z34Var.a(0L, 0L, r3.b);
                                    while (!z34Var.a.isEmpty()) {
                                        long jA = g44Var2.c.a();
                                        try {
                                            long jB = g44Var2.c.b();
                                            try {
                                                c44 c44Var = g44Var2.a;
                                                try {
                                                    try {
                                                        objOf = ((l44) c44Var.a.get(c44Var.a(jB))).f().apply(g44Var2);
                                                    } catch (Throwable unused) {
                                                        wu2Var = wu2.w;
                                                        objOf = Optional.of(wu2Var);
                                                    }
                                                } catch (i44 unused2) {
                                                    wu2Var = wu2.d;
                                                }
                                            } catch (a44 unused3) {
                                                wu2Var = wu2.c;
                                            }
                                        } catch (t34 unused4) {
                                            wu2Var = wu2.v;
                                        }
                                        if (((Optional) objOf).isPresent()) {
                                            if (!b34.a.contains(((Optional) objOf).get())) {
                                                throw new my3(ky3.h, (wu2) ((Optional) objOf).get(), jA);
                                            }
                                            Object obj2 = ((Optional) objOf).get();
                                            long jA2 = g44Var2.c.a();
                                            do {
                                                try {
                                                    j2 = g44Var2.b.a().c;
                                                    Optional optionalA = g44Var2.a();
                                                    if (optionalA.isPresent() && optionalA.get() == wu2.x) {
                                                        throw new my3(ky3.h, (wu2) obj2, jA2);
                                                    }
                                                    if (optionalA.isPresent()) {
                                                        throw new my3(ky3.h, (wu2) optionalA.get(), jA2);
                                                    }
                                                } catch (y34 unused5) {
                                                    throw new my3(ky3.h, (wu2) obj2, jA2);
                                                }
                                            } while (j2 != j);
                                        }
                                    }
                                    try {
                                        c44 c44Var2 = g44Var2.a;
                                        l44 l44VarA = c44Var2.a();
                                        c44Var2.a();
                                        return l44VarA.a();
                                    } catch (a44 e2) {
                                        throw new my3(ky3.f, e2);
                                    } catch (i44 e3) {
                                        throw new my3(ky3.g, e3);
                                    }
                                } catch (s34 e4) {
                                    e = e4;
                                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e);
                                } catch (t34 e5) {
                                    e = e5;
                                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e);
                                }
                            } catch (t34 e6) {
                                throw new my3(ky3.e, e6);
                            }
                        } catch (t34 e7) {
                            throw new lp1(n34.a("BkCyvAwRMTm/WV6IwjgYPC5Y7R/NUsZm"), e7);
                        }
                    } catch (t34 e8) {
                        throw new lp1(n34.a("BkCyvAwRMTm/WV6IwjgYPC5Y7R/NUsZm"), e8);
                    }
                } catch (s34 e9) {
                    e = e9;
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e);
                } catch (t34 e10) {
                    e = e10;
                    throw new AssertionError(n34.a("CEiv6BFfPnitUE+D"), e);
                }
            } catch (x34 e11) {
                throw new my3(ky3.d, e11);
            }
        } catch (b44 e12) {
            throw new my3(ky3.c, e12);
        }
    }
}
