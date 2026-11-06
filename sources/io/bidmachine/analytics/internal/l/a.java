package io.bidmachine.analytics.internal.l;

import io.bidmachine.analytics.internal.a.C4105a;
import io.bidmachine.analytics.internal.j.AbstractC4129a;
import io.bidmachine.analytics.internal.q.a;
import io.bidmachine.analytics.internal.q.b;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends AbstractC4129a {
    private final String n;
    private final b o;
    private final C1126a p;
    public static final u q = new u(null);
    private static final Lazy r = LazyKt__LazyJVMKt.lazy(q.a);
    private static final Lazy s = LazyKt__LazyJVMKt.lazy(l.a);
    private static final Lazy t = LazyKt__LazyJVMKt.lazy(k.a);
    private static final Lazy u = LazyKt__LazyJVMKt.lazy(e.a);
    private static final Lazy v = LazyKt__LazyJVMKt.lazy(m.a);
    private static final Lazy w = LazyKt__LazyJVMKt.lazy(r.a);
    private static final Lazy x = LazyKt__LazyJVMKt.lazy(h.a);
    private static final Lazy y = LazyKt__LazyJVMKt.lazy(n.a);
    private static final Lazy z = LazyKt__LazyJVMKt.lazy(t.a);
    private static final Lazy A = LazyKt__LazyJVMKt.lazy(s.a);
    private static final Lazy B = LazyKt__LazyJVMKt.lazy(p.a);
    private static final Lazy C = LazyKt__LazyJVMKt.lazy(g.a);
    private static final Lazy D = LazyKt__LazyJVMKt.lazy(i.a);
    private static final Lazy E = LazyKt__LazyJVMKt.lazy(f.a);
    private static final Lazy F = LazyKt__LazyJVMKt.lazy(c.a);
    private static final Lazy G = LazyKt__LazyJVMKt.lazy(d.a);
    private static final Lazy H = LazyKt__LazyJVMKt.lazy(j.a);
    private static final Lazy I = LazyKt__LazyJVMKt.lazy(o.a);

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.l.a$a, reason: collision with other inner class name */
    public final class C1126a implements a.W {
        public C1126a() {
        }

        @Override // io.bidmachine.analytics.internal.q.a.W
        public void a(a.V v) {
            Map map;
            Map mapA = a.this.a(AbstractC4129a.i.c(), a.this.f());
            if (v instanceof a.V.b) {
                u uVar = a.q;
                mapA.put(uVar.l(), uVar.r());
                a.V.b bVar = (a.V.b) v;
                String strH = bVar.h();
                if (strH != null) {
                    mapA.put(uVar.j(), strH);
                }
                String strI = bVar.i();
                if (strI != null) {
                    mapA.put(uVar.n(), strI);
                }
                String strE = bVar.e();
                if (strE != null) {
                    mapA.put(uVar.e(), strE);
                }
                Double dJ = bVar.j();
                if (dJ != null) {
                    mapA.put(uVar.i(), Double.valueOf(dJ.doubleValue()));
                }
                String strC = bVar.c();
                if (strC != null) {
                    mapA.put(uVar.c(), strC);
                }
                String strF = bVar.f();
                if (strF != null) {
                    mapA.put(uVar.g(), strF);
                }
                String strD = bVar.d();
                if (strD != null) {
                    mapA.put(uVar.d(), strD);
                }
                String strA = bVar.a();
                if (strA != null) {
                    mapA.put(uVar.a(), strA);
                }
                Map mapB = bVar.b();
                if (mapB != null) {
                    if (mapB.isEmpty()) {
                        mapB = null;
                    }
                    if (mapB != null) {
                        mapA.put(uVar.b(), mapB);
                    }
                }
                Map mapG = bVar.g();
                if (mapG != null) {
                    map = mapG.isEmpty() ? null : mapG;
                    if (map != null) {
                        mapA.put(uVar.h(), map);
                    }
                }
            } else if (v instanceof a.V.C1140a) {
                u uVar2 = a.q;
                mapA.put(uVar2.l(), uVar2.q());
                a.V.C1140a c1140a = (a.V.C1140a) v;
                String strI2 = c1140a.i();
                if (strI2 != null) {
                    mapA.put(uVar2.j(), strI2);
                }
                String strG = c1140a.g();
                if (strG != null) {
                    mapA.put(uVar2.n(), strG);
                }
                Long lE = c1140a.e();
                if (lE != null) {
                    mapA.put(uVar2.i(), Long.valueOf(lE.longValue()));
                }
                String strB = c1140a.b();
                if (strB != null) {
                    mapA.put(uVar2.c(), strB);
                }
                String strC2 = c1140a.c();
                if (strC2 != null) {
                    mapA.put(uVar2.g(), strC2);
                }
                String strH2 = c1140a.h();
                if (strH2 != null) {
                    mapA.put(uVar2.p(), strH2);
                }
                Long lF = c1140a.f();
                if (lF != null) {
                    mapA.put(uVar2.m(), Long.valueOf(lF.longValue()));
                }
                Map mapA2 = c1140a.a();
                if (mapA2 != null) {
                    if (mapA2.isEmpty()) {
                        mapA2 = null;
                    }
                    if (mapA2 != null) {
                        mapA.put(uVar2.b(), mapA2);
                    }
                }
                Map mapD = c1140a.d();
                if (mapD != null) {
                    map = mapD.isEmpty() ? null : mapD;
                    if (map != null) {
                        mapA.put(uVar2.h(), map);
                    }
                }
            }
            a.this.a(mapA);
        }
    }

    public final class b implements b.F0 {
        public b() {
        }

        @Override // io.bidmachine.analytics.internal.q.b.F0
        public void a(b.E0 e0) {
            Map mapA = a.this.a(AbstractC4129a.i.d(), a.this.g());
            String strF = e0.f();
            if (strF != null) {
                mapA.put(a.q.o(), strF);
            }
            String strD = e0.d();
            if (strD != null) {
                mapA.put(a.q.j(), strD);
            }
            String strC = e0.c();
            if (strC != null) {
                mapA.put(a.q.i(), strC);
            }
            String strA = e0.a();
            if (strA != null) {
                mapA.put(a.q.c(), strA);
            }
            String strE = e0.e();
            if (strE != null) {
                mapA.put(a.q.k(), strE);
            }
            String strG = e0.g();
            if (strG != null) {
                mapA.put(a.q.p(), strG);
            }
            Map mapB = e0.b();
            if (mapB.isEmpty()) {
                mapB = null;
            }
            if (mapB != null) {
                mapA.put(a.q.f(), mapB);
            }
            a.this.a(mapA);
        }
    }

    public static final class c extends Lambda implements Function0 {
        public static final c a = new c();

        public c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.b("QWaft2YhJGbsF2Y=");
        }
    }

    public static final class d extends Lambda implements Function0 {
        public static final d a = new d();

        public d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.b("wcyVGdl1WYyFGcft2YhJGbsF2Y==");
        }
    }

    public static final class e extends Lambda implements Function0 {
        public static final e a = new e();

        public e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.b("k3YuVmcyV3Y=");
        }
    }

    public static final class f extends Lambda implements Function0 {
        public static final f a = new f();

        public f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.b("AZp9lbvlGdhNWasBXdkVGZ==");
        }
    }

    public static final class g extends Lambda implements Function0 {
        public static final g a = new g();

        public g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.b("4WZr9GdfRnblZXZ=");
        }
    }

    public static final class h extends Lambda implements Function0 {
        public static final h a = new h();

        public h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.b("zFmc0hXZ");
        }
    }

    public static final class i extends Lambda implements Function0 {
        public static final i a = new i();

        public i() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.b("QWafJXZkJ3b=");
        }
    }

    public static final class j extends Lambda implements Function0 {
        public static final j a = new j();

        public j() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.b("zJXZ0VWbhJXYw9lcl5GdyFGc");
        }
    }

    public static final class k extends Lambda implements Function0 {
        public static final k a = new k();

        public k() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.b("U2YpJHc=");
        }
    }

    public static final class l extends Lambda implements Function0 {
        public static final l a = new l();

        public l() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.b("AZp9FdjVHZvJHc==");
        }
    }

    public static final class m extends Lambda implements Function0 {
        public static final m a = new m();

        public m() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.b("QY0FGZfV2chh2YyVHc==");
        }
    }

    public static final class n extends Lambda implements Function0 {
        public static final n a = new n();

        public n() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.b("AZul2afV2chh2YyVHc==");
        }
    }

    public static final class o extends Lambda implements Function0 {
        public static final o a = new o();

        public o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.b("QZtlGdfV2chh2YyVHc==");
        }
    }

    public static final class p extends Lambda implements Function0 {
        public static final p a = new p();

        public p() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.b("4WZr9GdfV2chh2YyVHc=");
        }
    }

    public static final class q extends Lambda implements Function0 {
        public static final q a = new q();

        public q() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.b("QZwlHdfV2chh2YyVHc==");
        }
    }

    public static final class r extends Lambda implements Function0 {
        public static final r a = new r();

        public r() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.b("lJXd0Fmbnl2c");
        }
    }

    public static final class s extends Lambda implements Function0 {
        public static final s a = new s();

        public s() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.b("42bpRHcpJ3YzJWdz9VZy9Gdz9VehxGc=");
        }
    }

    public static final class t extends Lambda implements Function0 {
        public static final t a = new t();

        public t() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.b("Q3clVXclJ3Xu9Wa0F2YpZWayVmd=");
        }
    }

    public static final class u {
        public /* synthetic */ u(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return (String) a.F.getValue();
        }

        public final String b() {
            return (String) a.G.getValue();
        }

        public final String c() {
            return (String) a.u.getValue();
        }

        public final String d() {
            return (String) a.E.getValue();
        }

        public final String e() {
            return (String) a.C.getValue();
        }

        public final String f() {
            return (String) a.x.getValue();
        }

        public final String g() {
            return (String) a.D.getValue();
        }

        public final String h() {
            return (String) a.H.getValue();
        }

        public final String i() {
            return (String) a.t.getValue();
        }

        public final String j() {
            return (String) a.s.getValue();
        }

        public final String k() {
            return (String) a.v.getValue();
        }

        public final String l() {
            return (String) a.y.getValue();
        }

        public final String m() {
            return (String) a.I.getValue();
        }

        public final String n() {
            return (String) a.B.getValue();
        }

        public final String o() {
            return (String) a.r.getValue();
        }

        public final String p() {
            return (String) a.w.getValue();
        }

        public final String q() {
            return (String) a.A.getValue();
        }

        public final String r() {
            return (String) a.z.getValue();
        }

        private u() {
        }
    }

    public a(C4105a c4105a) {
        super(c4105a);
        this.n = "mip";
        this.o = new b();
        this.p = new C1126a();
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public String a() {
        return this.n;
    }

    @Override // io.bidmachine.analytics.internal.j.AbstractC4129a
    public void l() {
        h().b((a.W) this.p);
    }

    @Override // io.bidmachine.analytics.internal.j.AbstractC4129a
    public void m() {
        i().b((b.F0) this.o);
    }

    @Override // io.bidmachine.analytics.internal.j.AbstractC4129a
    public void n() {
        h().a((a.W) this.p);
    }

    @Override // io.bidmachine.analytics.internal.j.AbstractC4129a
    public void o() {
        i().a((b.F0) this.o);
    }
}
