package io.bidmachine.analytics.internal.k;

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
    public static final h q = new h(null);
    private static final Lazy r = LazyKt__LazyJVMKt.lazy(f.a);
    private static final Lazy s = LazyKt__LazyJVMKt.lazy(g.a);
    private static final Lazy t = LazyKt__LazyJVMKt.lazy(d.a);
    private static final Lazy u = LazyKt__LazyJVMKt.lazy(e.a);
    private static final Lazy v = LazyKt__LazyJVMKt.lazy(c.a);
    private final String n;
    private final b o;
    private final C1125a p;

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.k.a$a, reason: collision with other inner class name */
    public final class C1125a implements a.InterfaceC4150d {
        public C1125a() {
        }

        @Override // io.bidmachine.analytics.internal.q.a.InterfaceC4150d
        public void a(a.C4149c c4149c) {
            Map mapA = a.this.a(AbstractC4129a.i.c(), a.this.f());
            String strC = c4149c.c();
            if (strC != null) {
                mapA.put(a.q.d(), strC);
            }
            String strD = c4149c.d();
            if (strD != null) {
                mapA.put(a.q.e(), strD);
            }
            Double dE = c4149c.e();
            if (dE != null) {
                mapA.put(a.q.b(), Double.valueOf(dE.doubleValue()));
            }
            String strA = c4149c.a();
            if (strA != null) {
                mapA.put(a.q.c(), strA);
            }
            Map mapB = c4149c.b();
            if (mapB.isEmpty()) {
                mapB = null;
            }
            if (mapB != null) {
                mapA.put(a.q.a(), mapB);
            }
            a.this.a(mapA);
        }
    }

    public final class b implements b.InterfaceC1143b {
        public b() {
        }

        @Override // io.bidmachine.analytics.internal.q.b.InterfaceC1143b
        public void a(b.C4173a c4173a) {
            Map mapA = a.this.a(AbstractC4129a.i.d(), a.this.g());
            String strC = c4173a.c();
            if (strC != null) {
                mapA.put(a.q.d(), strC);
            }
            String strD = c4173a.d();
            if (strD != null) {
                mapA.put(a.q.e(), strD);
            }
            Double dE = c4173a.e();
            if (dE != null) {
                mapA.put(a.q.b(), Double.valueOf(dE.doubleValue()));
            }
            String strA = c4173a.a();
            if (strA != null) {
                mapA.put(a.q.c(), strA);
            }
            Map mapB = c4173a.b();
            if (mapB.isEmpty()) {
                mapB = null;
            }
            if (mapB != null) {
                mapA.put(a.q.a(), mapB);
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
            return io.bidmachine.analytics.internal.I.g.b("MnclRXZtFmchB3Xt9GdzV3Y=");
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
            return io.bidmachine.analytics.internal.I.g.b("QZ15WZ2VmcfRnblZXZ==");
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
            return io.bidmachine.analytics.internal.I.g.b("Qej5WZyJXdj9VZ15WZ2VmcfRnblZXZ==");
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
            return io.bidmachine.analytics.internal.I.g.b("smcvdHdl52Xu9Wa0FWakVWb=");
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
            return io.bidmachine.analytics.internal.I.g.b("smcvdHdl52Xu9Wa0FmepRXZu9Wb=");
        }
    }

    public static final class h {
        public /* synthetic */ h(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return (String) a.v.getValue();
        }

        public final String b() {
            return (String) a.t.getValue();
        }

        public final String c() {
            return (String) a.u.getValue();
        }

        public final String d() {
            return (String) a.r.getValue();
        }

        public final String e() {
            return (String) a.s.getValue();
        }

        private h() {
        }
    }

    public a(C4105a c4105a) {
        super(c4105a);
        this.n = "mia";
        this.o = new b();
        this.p = new C1125a();
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public String a() {
        return this.n;
    }

    @Override // io.bidmachine.analytics.internal.j.AbstractC4129a
    public void l() {
        h().b((a.InterfaceC4150d) this.p);
    }

    @Override // io.bidmachine.analytics.internal.j.AbstractC4129a
    public void m() {
        i().b((b.InterfaceC1143b) this.o);
    }

    @Override // io.bidmachine.analytics.internal.j.AbstractC4129a
    public void n() {
        h().a((a.InterfaceC4150d) this.p);
    }

    @Override // io.bidmachine.analytics.internal.j.AbstractC4129a
    public void o() {
        i().a((b.InterfaceC1143b) this.o);
    }
}
