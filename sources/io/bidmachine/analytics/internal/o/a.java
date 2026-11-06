package io.bidmachine.analytics.internal.o;

import android.content.Context;
import io.bidmachine.analytics.internal.I.b;
import io.bidmachine.analytics.internal.a.C4105a;
import io.bidmachine.analytics.internal.g.EnumC4114a;
import io.bidmachine.analytics.internal.g.EnumC4120g;
import io.bidmachine.analytics.internal.g.h;
import io.bidmachine.analytics.internal.h.InterfaceC4122b;
import io.bidmachine.analytics.internal.i.AbstractC4127a;
import io.bidmachine.analytics.internal.m.a;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends io.bidmachine.analytics.internal.m.a {
    private final C4105a k;
    private final Function1 l;
    private final String m;
    private F n;
    public static final A o = new A(null);
    private static final Lazy p = LazyKt__LazyJVMKt.lazy(m.a);
    private static final Lazy q = LazyKt__LazyJVMKt.lazy(k.a);
    private static final Lazy r = LazyKt__LazyJVMKt.lazy(j.a);
    private static final Lazy s = LazyKt__LazyJVMKt.lazy(l.a);
    private static final Lazy t = LazyKt__LazyJVMKt.lazy(C4130b.a);
    private static final Lazy u = LazyKt__LazyJVMKt.lazy(C4131c.a);
    private static final Lazy v = LazyKt__LazyJVMKt.lazy(C4133e.a);
    private static final Lazy w = LazyKt__LazyJVMKt.lazy(C4132d.a);
    private static final Lazy x = LazyKt__LazyJVMKt.lazy(x.a);
    private static final Lazy y = LazyKt__LazyJVMKt.lazy(z.a);
    private static final Lazy z = LazyKt__LazyJVMKt.lazy(y.a);
    private static final Lazy A = LazyKt__LazyJVMKt.lazy(h.a);
    private static final Lazy B = LazyKt__LazyJVMKt.lazy(i.a);
    private static final Lazy C = LazyKt__LazyJVMKt.lazy(s.a);
    private static final Lazy D = LazyKt__LazyJVMKt.lazy(t.a);
    private static final Lazy E = LazyKt__LazyJVMKt.lazy(C4134f.a);
    private static final Lazy F = LazyKt__LazyJVMKt.lazy(g.a);
    private static final Lazy G = LazyKt__LazyJVMKt.lazy(q.a);
    private static final Lazy H = LazyKt__LazyJVMKt.lazy(r.a);
    private static final Lazy I = LazyKt__LazyJVMKt.lazy(n.a);
    private static final Lazy J = LazyKt__LazyJVMKt.lazy(p.a);
    private static final Lazy K = LazyKt__LazyJVMKt.lazy(v.a);
    private static final Lazy L = LazyKt__LazyJVMKt.lazy(u.a);
    private static final Lazy M = LazyKt__LazyJVMKt.lazy(o.a);
    private static final Lazy N = LazyKt__LazyJVMKt.lazy(w.a);

    public static final class A {
        public /* synthetic */ A(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return (String) a.t.getValue();
        }

        public final String b() {
            return (String) a.u.getValue();
        }

        public final String c() {
            return (String) a.w.getValue();
        }

        public final String d() {
            return (String) a.v.getValue();
        }

        public final String e() {
            return (String) a.E.getValue();
        }

        public final String f() {
            return (String) a.F.getValue();
        }

        public final String g() {
            return (String) a.A.getValue();
        }

        public final String h() {
            return (String) a.B.getValue();
        }

        public final String i() {
            return (String) a.r.getValue();
        }

        public final String j() {
            return (String) a.q.getValue();
        }

        public final String k() {
            return (String) a.s.getValue();
        }

        public final String l() {
            return (String) a.p.getValue();
        }

        public final String m() {
            return (String) a.I.getValue();
        }

        public final String n() {
            return (String) a.M.getValue();
        }

        public final String o() {
            return (String) a.J.getValue();
        }

        public final String p() {
            return (String) a.G.getValue();
        }

        public final String q() {
            return (String) a.H.getValue();
        }

        public final String r() {
            return (String) a.C.getValue();
        }

        public final String s() {
            return (String) a.D.getValue();
        }

        public final String t() {
            return (String) a.L.getValue();
        }

        public final String u() {
            return (String) a.K.getValue();
        }

        public final String v() {
            return (String) a.N.getValue();
        }

        public final String w() {
            return (String) a.x.getValue();
        }

        public final String x() {
            return (String) a.z.getValue();
        }

        public final String y() {
            return (String) a.y.getValue();
        }

        private A() {
        }
    }

    public static final class B implements InvocationHandler {
        private final InterfaceC4122b a;
        private Method b;

        public B(InterfaceC4122b interfaceC4122b) {
            this.a = interfaceC4122b;
        }

        private final JSONObject a(Object obj) {
            try {
                Method method = this.b;
                if (method == null) {
                    method = obj.getClass().getMethod(a.o.n(), null);
                    this.b = method;
                }
                Object objInvoke = method.invoke(obj, null);
                if (objInvoke instanceof JSONObject) {
                    return (JSONObject) objInvoke;
                }
            } catch (Throwable unused) {
            }
            return null;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            Object orNull;
            String name = method.getName();
            A a = a.o;
            if (Intrinsics.areEqual(name, a.m())) {
                return Boolean.valueOf(obj == (objArr != null ? ArraysKt___ArraysKt.getOrNull(objArr, 0) : null));
            }
            if (Intrinsics.areEqual(name, a.o())) {
                return Integer.valueOf(System.identityHashCode(obj));
            }
            if (Intrinsics.areEqual(name, a.u())) {
                return a.v();
            }
            if (Intrinsics.areEqual(method.getName(), a.t()) && objArr != null && (orNull = ArraysKt___ArraysKt.getOrNull(objArr, 0)) != null) {
                try {
                    Result.Companion companion = Result.Companion;
                    JSONObject jSONObjectA = a(orNull);
                    if (jSONObjectA == null || jSONObjectA.length() <= 0) {
                        this.a.a(new io.bidmachine.analytics.internal.g.h("isimp", h.a.MONITOR_NO_CONTENT, null, 4, null));
                        return null;
                    }
                    try {
                        this.a.a(io.bidmachine.analytics.internal.I.g.a(jSONObjectA));
                    } catch (Throwable th) {
                        this.a.a(new io.bidmachine.analytics.internal.g.h("isimp", h.a.MONITOR_BAD_CONTENT, io.bidmachine.analytics.internal.I.g.a(th)));
                    }
                    Result.m2760constructorimpl(Unit.INSTANCE);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.Companion;
                    Result.m2760constructorimpl(ResultKt.createFailure(th2));
                }
            }
            return null;
        }
    }

    public static final class C implements E {
        public static final C1129a e = new C1129a(null);
        private final Object b;
        private final Method c;
        private final Method d;

        /* JADX INFO: renamed from: io.bidmachine.analytics.internal.o.a$C$a, reason: collision with other inner class name */
        public static final class C1129a {

            /* JADX INFO: renamed from: io.bidmachine.analytics.internal.o.a$C$a$a, reason: collision with other inner class name */
            public static final class C1130a extends Lambda implements Function3 {
                public static final C1130a a = new C1130a();

                public C1130a() {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public final E invoke(Object obj, Method method, Method method2) {
                    return new C(obj, method, method2);
                }
            }

            public /* synthetic */ C1129a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final E a(InterfaceC4122b interfaceC4122b) {
                E.C1133a c1133a = E.a;
                A a = a.o;
                return c1133a.a(interfaceC4122b, a.e(), a.f(), a.p(), a.q(), C1130a.a);
            }

            private C1129a() {
            }
        }

        public C(Object obj, Method method, Method method2) {
            this.b = obj;
            this.c = method;
            this.d = method2;
        }

        @Override // io.bidmachine.analytics.internal.o.a.E
        public void a() throws IllegalAccessException, InvocationTargetException {
            this.c.invoke(null, this.b);
        }

        @Override // io.bidmachine.analytics.internal.o.a.E
        public void b() throws IllegalAccessException, InvocationTargetException {
            this.d.invoke(null, this.b);
        }
    }

    public static final class D implements E {
        public static final C1131a e = new C1131a(null);
        private final Object b;
        private final Method c;
        private final Method d;

        /* JADX INFO: renamed from: io.bidmachine.analytics.internal.o.a$D$a, reason: collision with other inner class name */
        public static final class C1131a {

            /* JADX INFO: renamed from: io.bidmachine.analytics.internal.o.a$D$a$a, reason: collision with other inner class name */
            public static final class C1132a extends Lambda implements Function3 {
                public static final C1132a a = new C1132a();

                public C1132a() {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public final E invoke(Object obj, Method method, Method method2) {
                    return new D(obj, method, method2);
                }
            }

            public /* synthetic */ C1131a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final E a(InterfaceC4122b interfaceC4122b) {
                E.C1133a c1133a = E.a;
                A a = a.o;
                return c1133a.a(interfaceC4122b, a.g(), a.h(), a.r(), a.s(), C1132a.a);
            }

            private C1131a() {
            }
        }

        public D(Object obj, Method method, Method method2) {
            this.b = obj;
            this.c = method;
            this.d = method2;
        }

        @Override // io.bidmachine.analytics.internal.o.a.E
        public void a() throws IllegalAccessException, InvocationTargetException {
            this.c.invoke(null, this.b);
        }

        @Override // io.bidmachine.analytics.internal.o.a.E
        public void b() throws IllegalAccessException, InvocationTargetException {
            this.d.invoke(null, this.b);
        }
    }

    public interface E {
        public static final C1133a a = C1133a.a;

        /* JADX INFO: renamed from: io.bidmachine.analytics.internal.o.a$E$a, reason: collision with other inner class name */
        public static final class C1133a {
            static final /* synthetic */ C1133a a = new C1133a();

            private C1133a() {
            }

            public final E a(InterfaceC4122b interfaceC4122b, String str, String str2, String str3, String str4, Function3 function3) {
                Class<?> cls;
                Class<?> cls2;
                try {
                    cls = Class.forName(str);
                } catch (Throwable unused) {
                    cls = null;
                }
                if (cls == null) {
                    return null;
                }
                try {
                    cls2 = Class.forName(str2);
                } catch (Throwable unused2) {
                    cls2 = null;
                }
                if (cls2 == null) {
                    return null;
                }
                return (E) function3.invoke(Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new B(interfaceC4122b)), cls.getMethod(str3, cls2), cls.getMethod(str4, cls2));
            }
        }

        void a();

        void b();
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.o.a$a, reason: collision with other inner class name */
    public static final class C1135a extends Lambda implements Function1 {
        public static final C1135a a = new C1135a();

        public C1135a() {
            super(1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final F invoke(InterfaceC4122b interfaceC4122b) {
            return new F(interfaceC4122b, null, 2, 0 == true ? 1 : 0);
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.o.a$b, reason: case insensitive filesystem */
    public static final class C4130b extends Lambda implements Function0 {
        public static final C4130b a = new C4130b();

        public C4130b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("QkFOTkVS");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.o.a$c, reason: case insensitive filesystem */
    public static final class C4131c extends Lambda implements Function0 {
        public static final C4131c a = new C4131c();

        public C4131c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("SU5URVJTVElUSUFM");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.o.a$d, reason: case insensitive filesystem */
    public static final class C4132d extends Lambda implements Function0 {
        public static final C4132d a = new C4132d();

        public C4132d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("TkFUSVZFQUQ=");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.o.a$e, reason: case insensitive filesystem */
    public static final class C4133e extends Lambda implements Function0 {
        public static final C4133e a = new C4133e();

        public C4133e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("UkVXQVJERURfVklERU8=");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.o.a$f, reason: case insensitive filesystem */
    public static final class C4134f extends Lambda implements Function0 {
        public static final C4134f a = new C4134f();

        public C4134f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("Y29tLmlyb25zb3VyY2UubWVkaWF0aW9uc2RrLklyb25Tb3VyY2U=");
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
            return io.bidmachine.analytics.internal.I.g.a("Y29tLmlyb25zb3VyY2UubWVkaWF0aW9uc2RrLmltcHJlc3Npb25EYXRhLkltcHJlc3Npb25EYXRhTGlzdGVuZXI=");
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
            return io.bidmachine.analytics.internal.I.g.a("Y29tLnVuaXR5M2QubWVkaWF0aW9uLkxldmVsUGxheQ==");
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
            return io.bidmachine.analytics.internal.I.g.a("Y29tLnVuaXR5M2QubWVkaWF0aW9uLmltcHJlc3Npb24uTGV2ZWxQbGF5SW1wcmVzc2lvbkRhdGFMaXN0ZW5lcg==");
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
            return io.bidmachine.analytics.internal.I.g.a("YWRGb3JtYXQ=");
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
            return io.bidmachine.analytics.internal.I.g.a("YWROZXR3b3Jr");
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
            return io.bidmachine.analytics.internal.I.g.a("cHJlY2lzaW9u");
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
            return io.bidmachine.analytics.internal.I.g.a("cmV2ZW51ZQ==");
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
            return io.bidmachine.analytics.internal.I.g.a("ZXF1YWxz");
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
            return io.bidmachine.analytics.internal.I.g.a("Z2V0QWxsRGF0YQ==");
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
            return io.bidmachine.analytics.internal.I.g.a("aGFzaENvZGU=");
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
            return io.bidmachine.analytics.internal.I.g.a("YWRkSW1wcmVzc2lvbkRhdGFMaXN0ZW5lcg==");
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
            return io.bidmachine.analytics.internal.I.g.a("cmVtb3ZlSW1wcmVzc2lvbkRhdGFMaXN0ZW5lcg==");
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
            return io.bidmachine.analytics.internal.I.g.a("YWRkSW1wcmVzc2lvbkRhdGFMaXN0ZW5lcg==");
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
            return io.bidmachine.analytics.internal.I.g.a("cmVtb3ZlSW1wcmVzc2lvbkRhdGFMaXN0ZW5lcg==");
        }
    }

    public static final class u extends Lambda implements Function0 {
        public static final u a = new u();

        public u() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("b25JbXByZXNzaW9uU3VjY2Vzcw==");
        }
    }

    public static final class v extends Lambda implements Function0 {
        public static final v a = new v();

        public v() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("dG9TdHJpbmc=");
        }
    }

    public static final class w extends Lambda implements Function0 {
        public static final w a = new w();

        public w() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("TGlzdGVuZXI=");
        }
    }

    public static final class x extends Lambda implements Function0 {
        public static final x a = new x();

        public x() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("QklE");
        }
    }

    public static final class y extends Lambda implements Function0 {
        public static final y a = new y();

        public y() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("Q1BN");
        }
    }

    public static final class z extends Lambda implements Function0 {
        public static final z a = new z();

        public z() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return io.bidmachine.analytics.internal.I.g.a("UkFURQ==");
        }
    }

    public /* synthetic */ a(C4105a c4105a, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(c4105a, (i2 & 2) != 0 ? C1135a.a : function1);
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public String a() {
        return this.m;
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public void d(Context context) {
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    /* JADX INFO: renamed from: a */
    public void b(AbstractC4127a.b bVar) {
        super.b(bVar);
        this.n = (F) this.l.invoke(this);
    }

    @Override // io.bidmachine.analytics.internal.m.a
    public a.b b(Map map) {
        Object obj;
        String string;
        A a = o;
        Float fA = b.a(map.get(a.l()));
        if (fA == null || (obj = map.get(a.j())) == null || (string = obj.toString()) == null) {
            return null;
        }
        return new a.b(null, this.k.e().currentTimeMillis(), 0, fA, d(map), string, null, false, 197, null);
    }

    @Override // io.bidmachine.analytics.internal.m.a
    public EnumC4114a c(Map map) {
        String string;
        String upperCase;
        A a = o;
        Object obj = map.get(a.i());
        if (obj != null && (string = obj.toString()) != null && (upperCase = string.toUpperCase(Locale.US)) != null) {
            if (Intrinsics.areEqual(upperCase, a.a())) {
                return EnumC4114a.BANNER;
            }
            if (Intrinsics.areEqual(upperCase, a.b())) {
                return EnumC4114a.INTERSTITIAL;
            }
            if (Intrinsics.areEqual(upperCase, a.d())) {
                return EnumC4114a.REWARDED;
            }
            if (Intrinsics.areEqual(upperCase, a.c())) {
                return EnumC4114a.NATIVE;
            }
        }
        return null;
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public void e(Context context) {
        F f = this.n;
        if (f != null) {
            f.a();
        }
    }

    @Override // io.bidmachine.analytics.internal.m.a, io.bidmachine.analytics.internal.h.AbstractC4124d
    public void f(Context context) {
        super.f(context);
        F f = this.n;
        if (f != null) {
            f.b();
        }
    }

    public a(C4105a c4105a, Function1 function1) {
        super(c4105a);
        this.k = c4105a;
        this.l = function1;
        this.m = "isimp";
    }

    private final EnumC4120g d(Map map) {
        String string;
        String upperCase;
        A a = o;
        Object obj = map.get(a.k());
        if (obj == null || (string = obj.toString()) == null || (upperCase = string.toUpperCase(Locale.US)) == null) {
            return EnumC4120g.ESTIMATED;
        }
        return Intrinsics.areEqual(upperCase, a.w()) ? true : Intrinsics.areEqual(upperCase, a.y()) ? EnumC4120g.PRECISE : Intrinsics.areEqual(upperCase, a.x()) ? EnumC4120g.ESTIMATED : EnumC4120g.ESTIMATED;
    }

    public static final class F {
        private final InterfaceC4122b a;
        private final E b;

        /* JADX INFO: renamed from: io.bidmachine.analytics.internal.o.a$F$a, reason: collision with other inner class name */
        public static final class C1134a extends Lambda implements Function0 {
            final /* synthetic */ InterfaceC4122b a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C1134a(InterfaceC4122b interfaceC4122b) {
                super(0);
                this.a = interfaceC4122b;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final E invoke() {
                return D.e.a(this.a);
            }
        }

        public static final class b extends Lambda implements Function0 {
            final /* synthetic */ InterfaceC4122b a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(InterfaceC4122b interfaceC4122b) {
                super(0);
                this.a = interfaceC4122b;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final E invoke() {
                return C.e.a(this.a);
            }
        }

        public F(InterfaceC4122b interfaceC4122b, List list) {
            E e;
            this.a = interfaceC4122b;
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    e = null;
                    break;
                } else {
                    e = (E) ((Function0) it.next()).invoke();
                    if (e != null) {
                        break;
                    }
                }
            }
            if (e == null) {
                throw new IllegalArgumentException("No implementation found for isimp");
            }
            this.b = e;
        }

        public final void a() {
            this.b.b();
        }

        public final void b() {
            this.b.a();
        }

        public /* synthetic */ F(InterfaceC4122b interfaceC4122b, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(interfaceC4122b, (i & 2) != 0 ? CollectionsKt__CollectionsKt.listOf((Object[]) new Function0[]{new C1134a(interfaceC4122b), new b(interfaceC4122b)}) : list);
        }
    }
}
