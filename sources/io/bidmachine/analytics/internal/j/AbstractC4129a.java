package io.bidmachine.analytics.internal.j;

import android.content.Context;
import io.bidmachine.analytics.internal.a.C4105a;
import io.bidmachine.analytics.internal.g.h;
import io.bidmachine.analytics.internal.h.InterfaceC4122b;
import io.bidmachine.analytics.internal.i.AbstractC4127a;
import io.bidmachine.analytics.internal.i.C4128b;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: renamed from: io.bidmachine.analytics.internal.j.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC4129a extends AbstractC4127a implements InterfaceC4122b {
    public static final e i = new e(null);
    private static final Lazy j = LazyKt__LazyJVMKt.lazy(C1124a.a);
    private static final Lazy k = LazyKt__LazyJVMKt.lazy(b.a);
    private static final Lazy l = LazyKt__LazyJVMKt.lazy(d.a);
    private static final Lazy m = LazyKt__LazyJVMKt.lazy(c.a);
    private final C4105a d;
    private C4128b e;
    private InterfaceC4122b f;
    private final Lazy g = LazyKt__LazyJVMKt.lazy(new g());
    private final Lazy h = LazyKt__LazyJVMKt.lazy(new f());

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.j.a$a, reason: collision with other inner class name */
    public static final class C1124a extends Lambda implements Function0 {
        public static final C1124a a = new C1124a();

        public C1124a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.b("rR2c");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.j.a$b */
    public static final class b extends Lambda implements Function0 {
        public static final b a = new b();

        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.b("gclZ3XrR2c==");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.j.a$c */
    public static final class c extends Lambda implements Function0 {
        public static final c a = new c();

        public c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.b("qRWY");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.j.a$d */
    public static final class d extends Lambda implements Function0 {
        public static final d a = new d();

        public d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.b("mNXY");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.j.a$e */
    public static final class e {
        public /* synthetic */ e(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return (String) AbstractC4129a.j.getValue();
        }

        public final String b() {
            return (String) AbstractC4129a.k.getValue();
        }

        public final String c() {
            return (String) AbstractC4129a.m.getValue();
        }

        public final String d() {
            return (String) AbstractC4129a.l.getValue();
        }

        private e() {
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.j.a$f */
    public static final class f extends Lambda implements Function0 {
        public f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.bidmachine.analytics.internal.q.a invoke() {
            return AbstractC4129a.this.d.b().a();
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.j.a$g */
    public static final class g extends Lambda implements Function0 {
        public g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.bidmachine.analytics.internal.q.b invoke() {
            return AbstractC4129a.this.d.b().b();
        }
    }

    public AbstractC4129a(C4105a c4105a) {
        this.d = c4105a;
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public void d(Context context) {
    }

    public final String f() {
        String string;
        io.bidmachine.analytics.internal.a.f fVarR = h().R();
        return (fVarR == null || (string = fVarR.toString()) == null) ? h().Q() : string;
    }

    public final String g() {
        String string;
        io.bidmachine.analytics.internal.a.f fVarZ0 = i().z0();
        return (fVarZ0 == null || (string = fVarZ0.toString()) == null) ? i().y0() : string;
    }

    public final io.bidmachine.analytics.internal.q.a h() {
        return (io.bidmachine.analytics.internal.q.a) this.h.getValue();
    }

    public final io.bidmachine.analytics.internal.q.b i() {
        return (io.bidmachine.analytics.internal.q.b) this.g.getValue();
    }

    public final boolean j() {
        C4128b c4128b = this.e;
        if (h().U()) {
            return c4128b == null || c4128b.a(h().R());
        }
        return false;
    }

    public final boolean k() {
        C4128b c4128b = this.e;
        if (i().C0()) {
            return c4128b == null || c4128b.b(i().z0());
        }
        return false;
    }

    public abstract void l();

    public abstract void m();

    public abstract void n();

    public abstract void o();

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void b(AbstractC4127a.b bVar) {
        Map mapEmptyMap;
        AbstractC4127a.InterfaceC1123a interfaceC1123aB = bVar.b();
        this.e = interfaceC1123aB instanceof C4128b ? (C4128b) interfaceC1123aB : null;
        this.f = bVar.a();
        io.bidmachine.analytics.internal.q.b bVarI = i();
        C4128b c4128b = this.e;
        if (c4128b == null || (mapEmptyMap = c4128b.a()) == null) {
            mapEmptyMap = MapsKt__MapsKt.emptyMap();
        }
        bVarI.b(mapEmptyMap);
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public void e(Context context) {
        if (k()) {
            m();
        }
        if (j()) {
            l();
        }
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public void f(Context context) {
        System.nanoTime();
        if (k()) {
            o();
        }
        System.nanoTime();
        a();
        System.nanoTime();
        if (j()) {
            n();
        }
        System.nanoTime();
        a();
    }

    @Override // io.bidmachine.analytics.internal.h.InterfaceC4122b
    public void a(Map map) {
        a();
        InterfaceC4122b interfaceC4122b = this.f;
        if (interfaceC4122b != null) {
            interfaceC4122b.a(map);
        }
    }

    @Override // io.bidmachine.analytics.internal.h.InterfaceC4122b
    public void a(h hVar) {
        InterfaceC4122b interfaceC4122b = this.f;
        if (interfaceC4122b != null) {
            interfaceC4122b.a(hVar);
        }
    }

    public final Map a(String str, String str2) {
        e eVar = i;
        Map mapMutableMapOf = MapsKt__MapsKt.mutableMapOf(TuplesKt.to(eVar.a(), str));
        if (str2 != null) {
            mapMutableMapOf.put(eVar.b(), str2);
        }
        return mapMutableMapOf;
    }
}
