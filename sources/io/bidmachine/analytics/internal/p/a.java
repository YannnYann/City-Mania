package io.bidmachine.analytics.internal.p;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import io.bidmachine.analytics.internal.I.b;
import io.bidmachine.analytics.internal.I.g;
import io.bidmachine.analytics.internal.a.C4105a;
import io.bidmachine.analytics.internal.g.EnumC4114a;
import io.bidmachine.analytics.internal.g.EnumC4120g;
import io.bidmachine.analytics.internal.g.h;
import io.bidmachine.analytics.internal.h.InterfaceC4122b;
import io.bidmachine.analytics.internal.i.AbstractC4127a;
import io.bidmachine.analytics.internal.m.a;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends io.bidmachine.analytics.internal.m.a {
    private final C4105a k;
    private final String l;
    private final AtomicBoolean m;
    private M n;
    private final Lazy o;
    public static final K p = new K(null);
    private static final Lazy q = LazyKt__LazyJVMKt.lazy(z.a);
    private static final Lazy r = LazyKt__LazyJVMKt.lazy(s.a);
    private static final Lazy s = LazyKt__LazyJVMKt.lazy(x.a);
    private static final Lazy t = LazyKt__LazyJVMKt.lazy(C.a);
    private static final Lazy u = LazyKt__LazyJVMKt.lazy(w.a);
    private static final Lazy v = LazyKt__LazyJVMKt.lazy(v.a);
    private static final Lazy w = LazyKt__LazyJVMKt.lazy(t.a);
    private static final Lazy x = LazyKt__LazyJVMKt.lazy(y.a);
    private static final Lazy y = LazyKt__LazyJVMKt.lazy(C4144k.a);
    private static final Lazy z = LazyKt__LazyJVMKt.lazy(C4145l.a);
    private static final Lazy A = LazyKt__LazyJVMKt.lazy(C4146m.a);
    private static final Lazy B = LazyKt__LazyJVMKt.lazy(C4147n.a);
    private static final Lazy C = LazyKt__LazyJVMKt.lazy(A.a);
    private static final Lazy D = LazyKt__LazyJVMKt.lazy(D.a);
    private static final Lazy E = LazyKt__LazyJVMKt.lazy(u.a);
    private static final Lazy F = LazyKt__LazyJVMKt.lazy(B.a);
    private static final Lazy G = LazyKt__LazyJVMKt.lazy(E.a);
    private static final Lazy H = LazyKt__LazyJVMKt.lazy(r.a);
    private static final Lazy I = LazyKt__LazyJVMKt.lazy(p.a);
    private static final Lazy J = LazyKt__LazyJVMKt.lazy(o.a);
    private static final Lazy K = LazyKt__LazyJVMKt.lazy(q.a);
    private static final Lazy L = LazyKt__LazyJVMKt.lazy(C4135b.a);
    private static final Lazy M = LazyKt__LazyJVMKt.lazy(C4139f.a);
    private static final Lazy N = LazyKt__LazyJVMKt.lazy(C4138e.a);
    private static final Lazy O = LazyKt__LazyJVMKt.lazy(C4136c.a);
    private static final Lazy P = LazyKt__LazyJVMKt.lazy(C4137d.a);
    private static final Lazy Q = LazyKt__LazyJVMKt.lazy(C4141h.a);
    private static final Lazy R = LazyKt__LazyJVMKt.lazy(C4142i.a);
    private static final Lazy S = LazyKt__LazyJVMKt.lazy(C4143j.a);
    private static final Lazy T = LazyKt__LazyJVMKt.lazy(C4140g.a);
    private static final Lazy U = LazyKt__LazyJVMKt.lazy(H.a);
    private static final Lazy V = LazyKt__LazyJVMKt.lazy(G.a);
    private static final Lazy W = LazyKt__LazyJVMKt.lazy(F.a);
    private static final Lazy X = LazyKt__LazyJVMKt.lazy(I.a);
    private static final Lazy Y = LazyKt__LazyJVMKt.lazy(J.a);

    public static final class A extends Lambda implements Function0 {
        public static final A a = new A();

        public A() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("cmVnaXN0ZXJSZWNlaXZlcg==");
        }
    }

    public static final class B extends Lambda implements Function0 {
        public static final B a = new B();

        public B() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("c3Vic2NyaWJl");
        }
    }

    public static final class C extends Lambda implements Function0 {
        public static final C a = new C();

        public C() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("dG9TdHJpbmc=");
        }
    }

    public static final class D extends Lambda implements Function0 {
        public static final D a = new D();

        public D() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("dW5yZWdpc3RlclJlY2VpdmVy");
        }
    }

    public static final class E extends Lambda implements Function0 {
        public static final E a = new E();

        public E() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("dW5zdWJzY3JpYmU=");
        }
    }

    public static final class F extends Lambda implements Function0 {
        public static final F a = new F();

        public F() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("RVNUSU1BVEVE");
        }
    }

    public static final class G extends Lambda implements Function0 {
        public static final G a = new G();

        public G() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("RVhBQ1Q=");
        }
    }

    public static final class H extends Lambda implements Function0 {
        public static final H a = new H();

        public H() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("UFVCTElTSEVSX0RFRklORUQ=");
        }
    }

    public static final class I extends Lambda implements Function0 {
        public static final I a = new I();

        public I() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("VU5ERUZJTkVE");
        }
    }

    public static final class J extends Lambda implements Function0 {
        public static final J a = new J();

        public J() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("bWF4X3JldmVudWVfZXZlbnRz");
        }
    }

    public static final class K {
        public /* synthetic */ K(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String A() {
            return (String) a.F.getValue();
        }

        public final String B() {
            return (String) a.t.getValue();
        }

        public final String C() {
            return (String) a.D.getValue();
        }

        public final String D() {
            return (String) a.G.getValue();
        }

        public final String E() {
            return (String) a.W.getValue();
        }

        public final String F() {
            return (String) a.V.getValue();
        }

        public final String G() {
            return (String) a.U.getValue();
        }

        public final String H() {
            return (String) a.X.getValue();
        }

        public final String I() {
            return (String) a.Y.getValue();
        }

        public final String a() {
            return (String) a.L.getValue();
        }

        public final String b() {
            return (String) a.O.getValue();
        }

        public final String c() {
            return (String) a.P.getValue();
        }

        public final String d() {
            return (String) a.N.getValue();
        }

        public final String e() {
            return (String) a.M.getValue();
        }

        public final String f() {
            return (String) a.T.getValue();
        }

        public final String g() {
            return (String) a.Q.getValue();
        }

        public final String h() {
            return (String) a.R.getValue();
        }

        public final String i() {
            return (String) a.S.getValue();
        }

        public final String j() {
            return (String) a.y.getValue();
        }

        public final String k() {
            return (String) a.z.getValue();
        }

        public final String l() {
            return (String) a.A.getValue();
        }

        public final String m() {
            return (String) a.B.getValue();
        }

        public final String n() {
            return (String) a.J.getValue();
        }

        public final String o() {
            return (String) a.I.getValue();
        }

        public final String p() {
            return (String) a.K.getValue();
        }

        public final String q() {
            return (String) a.H.getValue();
        }

        public final String r() {
            return (String) a.r.getValue();
        }

        public final String s() {
            return (String) a.w.getValue();
        }

        public final String t() {
            return (String) a.E.getValue();
        }

        public final String u() {
            return (String) a.v.getValue();
        }

        public final String v() {
            return (String) a.u.getValue();
        }

        public final String w() {
            return (String) a.s.getValue();
        }

        public final String x() {
            return (String) a.x.getValue();
        }

        public final String y() {
            return (String) a.q.getValue();
        }

        public final String z() {
            return (String) a.C.getValue();
        }

        private K() {
        }
    }

    public static final class L implements InvocationHandler {
        private final Lazy a = LazyKt__LazyJVMKt.lazy(new C1136a());

        /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$L$a, reason: collision with other inner class name */
        public static final class C1136a extends Lambda implements Function0 {
            public C1136a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                C1138a c1138a = C1138a.a;
                return Proxy.newProxyInstance(c1138a.k().getClassLoader(), new Class[]{c1138a.k()}, L.this);
            }
        }

        private final Object a() {
            return this.a.getValue();
        }

        public final Object b() {
            return a();
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            System.nanoTime();
            String name = method.getName();
            K k = a.p;
            if (Intrinsics.areEqual(name, k.s())) {
                return "";
            }
            if (!Intrinsics.areEqual(name, k.x())) {
                if (Intrinsics.areEqual(name, k.r())) {
                    return Boolean.valueOf(obj == (objArr != null ? objArr[0] : null));
                }
                if (Intrinsics.areEqual(name, k.w())) {
                    return Integer.valueOf(System.identityHashCode(obj));
                }
                if (Intrinsics.areEqual(name, k.B())) {
                    return String.valueOf(System.identityHashCode(obj));
                }
            }
            return null;
        }
    }

    public static final class M implements InvocationHandler {
        private final String a;
        private volatile boolean c;
        private volatile InterfaceC4122b d;
        private final Lazy b = LazyKt__LazyJVMKt.lazy(new C1137a());
        private final Map e = new LinkedHashMap();

        /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$M$a, reason: collision with other inner class name */
        public static final class C1137a extends Lambda implements Function0 {
            public C1137a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                C1138a c1138a = C1138a.a;
                return Proxy.newProxyInstance(c1138a.j().getClassLoader(), new Class[]{c1138a.j()}, M.this);
            }
        }

        public M(String str) {
            this.a = str;
        }

        private final Object a() {
            return this.b.getValue();
        }

        public final Object b() {
            return a();
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            String name = method.getName();
            K k = a.p;
            if (Intrinsics.areEqual(name, k.y())) {
                Object obj2 = objArr != null ? objArr[0] : null;
                if (this.c && obj2 != null) {
                    a(obj2);
                }
            } else {
                if (Intrinsics.areEqual(name, k.r())) {
                    return Boolean.valueOf(obj == (objArr != null ? ArraysKt___ArraysKt.getOrNull(objArr, 0) : null));
                }
                if (Intrinsics.areEqual(name, k.w())) {
                    return Integer.valueOf(System.identityHashCode(obj));
                }
                if (Intrinsics.areEqual(name, k.B())) {
                    return String.valueOf(System.identityHashCode(obj));
                }
            }
            return null;
        }

        public final void a(boolean z) {
            this.c = z;
        }

        public final void a(InterfaceC4122b interfaceC4122b) {
            this.d = interfaceC4122b;
        }

        private final void a(Object obj) {
            InterfaceC4122b interfaceC4122b = this.d;
            if (interfaceC4122b == null) {
                return;
            }
            try {
                Result.Companion companion = Result.Companion;
                Class<?> cls = obj.getClass();
                Map map = this.e;
                K k = a.p;
                String strV = k.v();
                Object method = map.get(strV);
                if (method == null) {
                    method = cls.getMethod(k.v(), null);
                    map.put(strV, method);
                }
                Method method2 = (Method) method;
                Map map2 = this.e;
                String strU = k.u();
                Object method3 = map2.get(strU);
                if (method3 == null) {
                    method3 = cls.getMethod(k.u(), null);
                    map2.put(strU, method3);
                }
                Method method4 = (Method) method3;
                Object objInvoke = method2.invoke(obj, null);
                if (Intrinsics.areEqual(objInvoke instanceof String ? (String) objInvoke : null, this.a)) {
                    Object objInvoke2 = method4.invoke(obj, null);
                    Bundle bundle = objInvoke2 instanceof Bundle ? (Bundle) objInvoke2 : null;
                    if (bundle != null && !bundle.isEmpty()) {
                        try {
                            interfaceC4122b.a(g.a(bundle));
                        } catch (Throwable th) {
                            interfaceC4122b.a(new h("mimp", h.a.MONITOR_BAD_CONTENT, g.a(th)));
                        }
                    } else {
                        interfaceC4122b.a(new h("mimp", h.a.MONITOR_NO_CONTENT, null, 4, null));
                    }
                }
                Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.Companion;
                Result.m2760constructorimpl(ResultKt.createFailure(th2));
            }
        }
    }

    public static final class N extends Lambda implements Function0 {
        public static final N a = new N();

        public N() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final L invoke() {
            return new L();
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$a, reason: collision with other inner class name */
    public static final class C1138a {
        public static final C1138a a = new C1138a();
        private static final Lazy b = LazyKt__LazyJVMKt.lazy(c.a);
        private static final Lazy c = LazyKt__LazyJVMKt.lazy(d.a);
        private static final Lazy d = LazyKt__LazyJVMKt.lazy(f.a);
        private static final Lazy e = LazyKt__LazyJVMKt.lazy(i.a);
        private static final Lazy f = LazyKt__LazyJVMKt.lazy(C1139a.a);
        private static final Lazy g = LazyKt__LazyJVMKt.lazy(h.a);
        private static final Lazy h = LazyKt__LazyJVMKt.lazy(b.a);
        private static final Lazy i = LazyKt__LazyJVMKt.lazy(g.a);
        private static final Lazy j = LazyKt__LazyJVMKt.lazy(j.a);
        private static final Lazy k = LazyKt__LazyJVMKt.lazy(e.a);

        /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$a$a, reason: collision with other inner class name */
        public static final class C1139a extends Lambda implements Function0 {
            public static final C1139a a = new C1139a();

            public C1139a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Class invoke() {
                return Class.forName(a.p.l());
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$a$b */
        public static final class b extends Lambda implements Function0 {
            public static final b a = new b();

            public b() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Method invoke() {
                return C1138a.a.a().getDeclaredMethod(a.p.t(), Context.class);
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$a$c */
        public static final class c extends Lambda implements Function0 {
            public static final c a = new c();

            public c() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Class invoke() {
                return Class.forName(a.p.j());
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$a$d */
        public static final class d extends Lambda implements Function0 {
            public static final d a = new d();

            public d() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Class invoke() {
                return Class.forName(a.p.k());
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$a$e */
        public static final class e extends Lambda implements Function0 {
            public static final e a = new e();

            public e() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Field invoke() throws IllegalAccessException {
                Field field;
                Field[] declaredFields = C1138a.a.c().getDeclaredFields();
                int length = declaredFields.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        field = null;
                        break;
                    }
                    field = declaredFields[i];
                    if (Modifier.isStatic(field.getModifiers()) && Map.class.isAssignableFrom(field.getType())) {
                        field.setAccessible(true);
                        Object obj = field.get(null);
                        Map map = obj instanceof Map ? (Map) obj : null;
                        if (map != null && map.containsKey(a.p.I())) {
                            break;
                        }
                    }
                    i++;
                }
                if (field == null) {
                    return null;
                }
                field.setAccessible(true);
                return field;
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$a$f */
        public static final class f extends Lambda implements Function0 {
            public static final f a = new f();

            public f() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Method invoke() {
                C1138a c1138a = C1138a.a;
                return c1138a.c().getDeclaredMethod(a.p.z(), c1138a.d(), IntentFilter.class);
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$a$g */
        public static final class g extends Lambda implements Function0 {
            public static final g a = new g();

            public g() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Method invoke() {
                C1138a c1138a = C1138a.a;
                return c1138a.a().getDeclaredMethod(a.p.A(), c1138a.h(), String.class);
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$a$h */
        public static final class h extends Lambda implements Function0 {
            public static final h a = new h();

            public h() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Class invoke() {
                return Class.forName(a.p.m());
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$a$i */
        public static final class i extends Lambda implements Function0 {
            public static final i a = new i();

            public i() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Method invoke() {
                C1138a c1138a = C1138a.a;
                return c1138a.c().getDeclaredMethod(a.p.C(), c1138a.d());
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$a$j */
        public static final class j extends Lambda implements Function0 {
            public static final j a = new j();

            public j() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Method invoke() {
                C1138a c1138a = C1138a.a;
                return c1138a.a().getDeclaredMethod(a.p.D(), c1138a.h(), String.class);
            }
        }

        private C1138a() {
        }

        private final Field e() {
            return (Field) k.getValue();
        }

        private final Method f() {
            return (Method) d.getValue();
        }

        private final Method g() {
            return (Method) i.getValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Class h() {
            return (Class) g.getValue();
        }

        private final Method i() {
            return (Method) j.getValue();
        }

        public final Class j() {
            return d();
        }

        public final Class k() {
            return h();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Class a() {
            return (Class) f.getValue();
        }

        private final Method b() {
            return (Method) h.getValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Class c() {
            return (Class) b.getValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Class d() {
            return (Class) c.getValue();
        }

        public final void a(Context context, Object obj, String str) throws IllegalAccessException, InvocationTargetException {
            g().invoke(b().invoke(null, context), obj, str);
        }

        public final void b(Object obj, String str) throws IllegalAccessException, InvocationTargetException {
            f().invoke(null, obj, new IntentFilter(str));
        }

        public final void b(Context context, Object obj, String str) throws IllegalAccessException, InvocationTargetException {
            i().invoke(b().invoke(null, context), obj, str);
        }

        public final Object a(Object obj, String str) {
            try {
                Result.Companion companion = Result.Companion;
                Field fieldE = e();
                Object obj2 = fieldE != null ? fieldE.get(null) : null;
                Map map = obj2 instanceof Map ? (Map) obj2 : null;
                Object obj3 = map != null ? map.get(str) : null;
                List list = TypeIntrinsics.isMutableList(obj3) ? (List) obj3 : null;
                if (list != null) {
                    Iterator it = list.iterator();
                    int i2 = 0;
                    loop0: while (true) {
                        if (!it.hasNext()) {
                            i2 = -1;
                            break;
                        }
                        Object next = it.next();
                        if (next == obj) {
                            break;
                        }
                        for (Field field : next.getClass().getDeclaredFields()) {
                            field.setAccessible(true);
                            if (field.get(next) == obj) {
                                break loop0;
                            }
                        }
                        i2++;
                    }
                    if (i2 > 0) {
                        list.add(0, list.remove(i2));
                    }
                }
                return Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                return Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$b, reason: case insensitive filesystem */
    public static final class C4135b extends Lambda implements Function0 {
        public static final C4135b a = new C4135b();

        public C4135b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("QkFOTkVS");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$c, reason: case insensitive filesystem */
    public static final class C4136c extends Lambda implements Function0 {
        public static final C4136c a = new C4136c();

        public C4136c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("SU5URVI=");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$d, reason: case insensitive filesystem */
    public static final class C4137d extends Lambda implements Function0 {
        public static final C4137d a = new C4137d();

        public C4137d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("SU5URVJTVElUSUFM");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$e, reason: case insensitive filesystem */
    public static final class C4138e extends Lambda implements Function0 {
        public static final C4138e a = new C4138e();

        public C4138e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("TEVBREVS");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$f, reason: case insensitive filesystem */
    public static final class C4139f extends Lambda implements Function0 {
        public static final C4139f a = new C4139f();

        public C4139f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("TVJFQw==");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$g, reason: case insensitive filesystem */
    public static final class C4140g extends Lambda implements Function0 {
        public static final C4140g a = new C4140g();

        public C4140g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("TkFUSVZF");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$h, reason: case insensitive filesystem */
    public static final class C4141h extends Lambda implements Function0 {
        public static final C4141h a = new C4141h();

        public C4141h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("UkVXQVJE");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$i, reason: case insensitive filesystem */
    public static final class C4142i extends Lambda implements Function0 {
        public static final C4142i a = new C4142i();

        public C4142i() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("UkVXQVJERUQ=");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$j, reason: case insensitive filesystem */
    public static final class C4143j extends Lambda implements Function0 {
        public static final C4143j a = new C4143j();

        public C4143j() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("UkVXQVJERURfSU5URVJTVElUSUFM");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$k, reason: case insensitive filesystem */
    public static final class C4144k extends Lambda implements Function0 {
        public static final C4144k a = new C4144k();

        public C4144k() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("Y29tLmFwcGxvdmluLmltcGwuc2RrLkFwcExvdmluQnJvYWRjYXN0TWFuYWdlcg==");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$l, reason: case insensitive filesystem */
    public static final class C4145l extends Lambda implements Function0 {
        public static final C4145l a = new C4145l();

        public C4145l() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("Y29tLmFwcGxvdmluLmltcGwuc2RrLkFwcExvdmluQnJvYWRjYXN0TWFuYWdlciRSZWNlaXZlcg==");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$m, reason: case insensitive filesystem */
    public static final class C4146m extends Lambda implements Function0 {
        public static final C4146m a = new C4146m();

        public C4146m() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("Y29tLmFwcGxvdmluLmNvbW11bmljYXRvci5BcHBMb3ZpbkNvbW11bmljYXRvcg==");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.p.a$n, reason: case insensitive filesystem */
    public static final class C4147n extends Lambda implements Function0 {
        public static final C4147n a = new C4147n();

        public C4147n() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.a("Y29tLmFwcGxvdmluLmNvbW11bmljYXRvci5BcHBMb3ZpbkNvbW11bmljYXRvclN1YnNjcmliZXI=");
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
            return g.a("YWRfZm9ybWF0");
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
            return g.a("bmV0d29ya19uYW1l");
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
            return g.a("cHJlY2lzaW9u");
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
            return g.a("cmV2ZW51ZQ==");
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
            return g.a("ZXF1YWxz");
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
            return g.a("Z2V0Q29tbXVuaWNhdG9ySWQ=");
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
            return g.a("Z2V0SW5zdGFuY2U=");
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
            return g.a("Z2V0TWVzc2FnZURhdGE=");
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
            return g.a("Z2V0VG9waWM=");
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
            return g.a("aGFzaENvZGU=");
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
            return g.a("b25NZXNzYWdlUmVjZWl2ZWQ=");
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
            return g.a("b25SZWNlaXZl");
        }
    }

    public a(C4105a c4105a) {
        super(c4105a);
        this.k = c4105a;
        this.l = "mimp";
        this.m = new AtomicBoolean();
        this.o = LazyKt__LazyJVMKt.lazy(N.a);
    }

    private final void L() throws IllegalAccessException, InvocationTargetException {
        if (this.m.compareAndSet(false, true)) {
            K k = p;
            M m = new M(k.I());
            C1138a c1138a = C1138a.a;
            c1138a.b(m.b(), k.I());
            c1138a.a(m.b(), k.I());
            this.n = m;
        }
    }

    private final L M() {
        return (L) this.o.getValue();
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public String a() {
        return this.l;
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public void d(Context context) {
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    /* JADX INFO: renamed from: a */
    public void b(AbstractC4127a.b bVar) throws IllegalAccessException, InvocationTargetException {
        super.b(bVar);
        L();
        M m = this.n;
        if (m == null) {
            return;
        }
        m.a((InterfaceC4122b) this);
    }

    @Override // io.bidmachine.analytics.internal.m.a
    public a.b b(Map map) {
        Object obj;
        String string;
        K k = p;
        Float fA = b.a(map.get(k.q()));
        if (fA == null || (obj = map.get(k.o())) == null || (string = obj.toString()) == null) {
            return null;
        }
        return new a.b(null, this.k.e().currentTimeMillis(), 0, fA, d(map), string, null, false, 197, null);
    }

    @Override // io.bidmachine.analytics.internal.m.a
    public EnumC4114a c(Map map) {
        String string;
        String upperCase;
        K k = p;
        Object obj = map.get(k.n());
        if (obj != null && (string = obj.toString()) != null && (upperCase = string.toUpperCase(Locale.US)) != null) {
            if (Intrinsics.areEqual(upperCase, k.a()) ? true : Intrinsics.areEqual(upperCase, k.e()) ? true : Intrinsics.areEqual(upperCase, k.d())) {
                return EnumC4114a.BANNER;
            }
            if (Intrinsics.areEqual(upperCase, k.b()) ? true : Intrinsics.areEqual(upperCase, k.c())) {
                return EnumC4114a.INTERSTITIAL;
            }
            if (Intrinsics.areEqual(upperCase, k.g()) ? true : Intrinsics.areEqual(upperCase, k.h()) ? true : Intrinsics.areEqual(upperCase, k.i())) {
                return EnumC4114a.REWARDED;
            }
            if (Intrinsics.areEqual(upperCase, k.f())) {
                return EnumC4114a.NATIVE;
            }
        }
        return null;
    }

    @Override // io.bidmachine.analytics.internal.h.AbstractC4124d
    public void e(Context context) throws IllegalAccessException, InvocationTargetException {
        M m = this.n;
        if (m != null) {
            m.a(false);
        }
        C1138a.a.b(context, M().b(), p.I());
    }

    @Override // io.bidmachine.analytics.internal.m.a, io.bidmachine.analytics.internal.h.AbstractC4124d
    public void f(Context context) throws IllegalAccessException, InvocationTargetException {
        super.f(context);
        M m = this.n;
        if (m != null) {
            m.a(true);
        }
        C1138a.a.a(context, M().b(), p.I());
    }

    private final EnumC4120g d(Map map) {
        String string;
        String upperCase;
        K k = p;
        Object obj = map.get(k.p());
        if (obj != null && (string = obj.toString()) != null && (upperCase = string.toUpperCase(Locale.US)) != null) {
            if (Intrinsics.areEqual(upperCase, k.G()) ? true : Intrinsics.areEqual(upperCase, k.F())) {
                return EnumC4120g.PRECISE;
            }
            return Intrinsics.areEqual(upperCase, k.E()) ? true : Intrinsics.areEqual(upperCase, k.H()) ? EnumC4120g.ESTIMATED : EnumC4120g.ESTIMATED;
        }
        return EnumC4120g.ESTIMATED;
    }
}
