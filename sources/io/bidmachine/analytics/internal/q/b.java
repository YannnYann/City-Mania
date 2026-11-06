package io.bidmachine.analytics.internal.q;

import com.ironsource.o4$$ExternalSyntheticBackport0;
import io.bidmachine.analytics.internal.I.c;
import io.bidmachine.analytics.internal.I.e;
import io.bidmachine.analytics.internal.I.g;
import io.bidmachine.analytics.internal.a.f;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class b {
    private final io.bidmachine.analytics.internal.J.b a;
    private volatile boolean b;
    private B0 c;
    private final CopyOnWriteArrayList d = new CopyOnWriteArrayList();
    private final CopyOnWriteArrayList e = new CopyOnWriteArrayList();
    private final e f;
    private final c g;
    private final Set h;
    private volatile Map i;
    private final Lazy j;
    private final Lazy k;
    private final Object l;
    private final Lazy m;
    private final Lazy n;
    private final Lazy o;
    public static final z0 p = new z0(null);
    private static final Lazy q = LazyKt__LazyJVMKt.lazy(C4180e.a);
    private static final Lazy r = LazyKt__LazyJVMKt.lazy(C4182f.a);
    private static final Lazy s = LazyKt__LazyJVMKt.lazy(C4184g.a);
    private static final Lazy t = LazyKt__LazyJVMKt.lazy(C4199n0.a);
    private static final Lazy u = LazyKt__LazyJVMKt.lazy(C4183f0.a);
    private static final Lazy v = LazyKt__LazyJVMKt.lazy(C4177c0.a);
    private static final Lazy w = LazyKt__LazyJVMKt.lazy(p0.a);
    private static final Lazy x = LazyKt__LazyJVMKt.lazy(q0.a);
    private static final Lazy y = LazyKt__LazyJVMKt.lazy(C4185g0.a);
    private static final Lazy z = LazyKt__LazyJVMKt.lazy(C4201o0.a);
    private static final Lazy A = LazyKt__LazyJVMKt.lazy(C4187h0.a);
    private static final Lazy B = LazyKt__LazyJVMKt.lazy(C4181e0.a);
    private static final Lazy C = LazyKt__LazyJVMKt.lazy(C4197m0.a);
    private static final Lazy D = LazyKt__LazyJVMKt.lazy(C4195l0.a);
    private static final Lazy E = LazyKt__LazyJVMKt.lazy(C4189i0.a);
    private static final Lazy F = LazyKt__LazyJVMKt.lazy(C4179d0.a);
    private static final Lazy G = LazyKt__LazyJVMKt.lazy(C4193k0.a);
    private static final Lazy H = LazyKt__LazyJVMKt.lazy(C4191j0.a);
    private static final Lazy I = LazyKt__LazyJVMKt.lazy(F.a);
    private static final Lazy J = LazyKt__LazyJVMKt.lazy(C4207u.a);
    private static final Lazy K = LazyKt__LazyJVMKt.lazy(G.a);
    private static final Lazy L = LazyKt__LazyJVMKt.lazy(C4210x.a);
    private static final Lazy M = LazyKt__LazyJVMKt.lazy(P.a);
    private static final Lazy N = LazyKt__LazyJVMKt.lazy(Q.a);
    private static final Lazy O = LazyKt__LazyJVMKt.lazy(Y.a);
    private static final Lazy P = LazyKt__LazyJVMKt.lazy(T.a);
    private static final Lazy Q = LazyKt__LazyJVMKt.lazy(C4211y.a);
    private static final Lazy R = LazyKt__LazyJVMKt.lazy(C4212z.a);
    private static final Lazy S = LazyKt__LazyJVMKt.lazy(C4208v.a);
    private static final Lazy T = LazyKt__LazyJVMKt.lazy(D.a);
    private static final Lazy U = LazyKt__LazyJVMKt.lazy(C4209w.a);
    private static final Lazy V = LazyKt__LazyJVMKt.lazy(C4174a0.a);
    private static final Lazy W = LazyKt__LazyJVMKt.lazy(R.a);
    private static final Lazy X = LazyKt__LazyJVMKt.lazy(H.a);
    private static final Lazy Y = LazyKt__LazyJVMKt.lazy(O.a);
    private static final Lazy Z = LazyKt__LazyJVMKt.lazy(C.a);
    private static final Lazy a0 = LazyKt__LazyJVMKt.lazy(Z.a);
    private static final Lazy b0 = LazyKt__LazyJVMKt.lazy(A.a);
    private static final Lazy c0 = LazyKt__LazyJVMKt.lazy(W.a);
    private static final Lazy d0 = LazyKt__LazyJVMKt.lazy(K.a);
    private static final Lazy e0 = LazyKt__LazyJVMKt.lazy(E.a);
    private static final Lazy f0 = LazyKt__LazyJVMKt.lazy(X.a);
    private static final Lazy g0 = LazyKt__LazyJVMKt.lazy(M.a);
    private static final Lazy h0 = LazyKt__LazyJVMKt.lazy(N.a);
    private static final Lazy i0 = LazyKt__LazyJVMKt.lazy(V.a);
    private static final Lazy j0 = LazyKt__LazyJVMKt.lazy(I.a);
    private static final Lazy k0 = LazyKt__LazyJVMKt.lazy(J.a);
    private static final Lazy l0 = LazyKt__LazyJVMKt.lazy(U.a);
    private static final Lazy m0 = LazyKt__LazyJVMKt.lazy(B.a);
    private static final Lazy n0 = LazyKt__LazyJVMKt.lazy(S.a);
    private static final Lazy o0 = LazyKt__LazyJVMKt.lazy(L.a);
    private static final Lazy p0 = LazyKt__LazyJVMKt.lazy(C4206t.a);
    private static final Lazy q0 = LazyKt__LazyJVMKt.lazy(C4205s.a);
    private static final Lazy r0 = LazyKt__LazyJVMKt.lazy(x0.a);
    private static final Lazy s0 = LazyKt__LazyJVMKt.lazy(y0.a);
    private static final Lazy t0 = LazyKt__LazyJVMKt.lazy(w0.a);
    private static final Lazy u0 = LazyKt__LazyJVMKt.lazy(C4178d.a);
    private static final Lazy v0 = LazyKt__LazyJVMKt.lazy(C4198n.a);
    private static final Lazy w0 = LazyKt__LazyJVMKt.lazy(C4204r.a);
    private static final Lazy x0 = LazyKt__LazyJVMKt.lazy(C4192k.a);
    private static final Lazy y0 = LazyKt__LazyJVMKt.lazy(C4194l.a);
    private static final Lazy z0 = LazyKt__LazyJVMKt.lazy(C4202p.a);
    private static final Lazy A0 = LazyKt__LazyJVMKt.lazy(C4196m.a);
    private static final Lazy B0 = LazyKt__LazyJVMKt.lazy(C4188i.a);
    private static final Lazy C0 = LazyKt__LazyJVMKt.lazy(C4203q.a);
    private static final Lazy D0 = LazyKt__LazyJVMKt.lazy(C4186h.a);
    private static final Lazy E0 = LazyKt__LazyJVMKt.lazy(C4190j.a);
    private static final Lazy F0 = LazyKt__LazyJVMKt.lazy(C4200o.a);
    private static final Lazy G0 = LazyKt__LazyJVMKt.lazy(s0.a);
    private static final Lazy H0 = LazyKt__LazyJVMKt.lazy(t0.a);
    private static final Lazy I0 = LazyKt__LazyJVMKt.lazy(r0.a);
    private static final Lazy J0 = LazyKt__LazyJVMKt.lazy(C4175b0.a);
    private static final Lazy K0 = LazyKt__LazyJVMKt.lazy(u0.a);
    private static final Lazy L0 = LazyKt__LazyJVMKt.lazy(v0.a);

    public static final class A extends Lambda implements Function0 {
        public static final A a = new A();

        public A() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("lNXYoNmc1B3XwBXYf5Wa");
        }
    }

    public interface A0 {

        public static final class a implements A0 {
            private final C4173a a;

            public a(C4173a c4173a) {
                this.a = c4173a;
            }

            public final C4173a a() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof a) && Intrinsics.areEqual(this.a, ((a) obj).a);
            }

            public int hashCode() {
                return this.a.hashCode();
            }

            public String toString() {
                return super.toString();
            }
        }

        /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$A0$b, reason: collision with other inner class name */
        public static final class C1142b implements A0 {
            private final E0 a;

            public C1142b(E0 e0) {
                this.a = e0;
            }

            public final E0 a() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof C1142b) && Intrinsics.areEqual(this.a, ((C1142b) obj).a);
            }

            public int hashCode() {
                return this.a.hashCode();
            }

            public String toString() {
                return super.toString();
            }
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
            return g.b("EGdhR2XlNXYoNmc1B3XwBXYf5Wa=");
        }
    }

    public static final class B0 {
        private final List a;
        private final Class b;
        private final Object c;

        public B0(List list, Class cls, Object obj) {
            this.a = list;
            this.b = cls;
            this.c = obj;
        }

        public final List a() {
            return this.a;
        }

        public final Object b() {
            return this.c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof B0)) {
                return false;
            }
            B0 b0 = (B0) obj;
            return Intrinsics.areEqual(this.a, b0.a) && Intrinsics.areEqual(this.b, b0.b) && Intrinsics.areEqual(this.c, b0.c);
        }

        public int hashCode() {
            return (((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode();
        }

        public String toString() {
            return super.toString();
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
            return g.b("l1WYu9VZnF2ajFGc");
        }
    }

    public final class C0 implements InvocationHandler {
        public C0() {
        }

        private final Object a(Object obj, Method method, Object[] objArr) {
            Object orNull;
            A0 a0G;
            if (Intrinsics.areEqual(method.getDeclaringClass(), Object.class)) {
                String name = method.getName();
                z0 z0Var = b.p;
                if (Intrinsics.areEqual(name, z0Var.Z())) {
                    return Boolean.valueOf(obj == (objArr != null ? ArraysKt___ArraysKt.getOrNull(objArr, 0) : null));
                }
                if (Intrinsics.areEqual(name, z0Var.m0())) {
                    return Integer.valueOf(System.identityHashCode(obj));
                }
                if (Intrinsics.areEqual(name, z0Var.n0())) {
                    return String.valueOf(System.identityHashCode(obj));
                }
                return null;
            }
            int iM = o4$$ExternalSyntheticBackport0.m(method);
            if ((iM != 1 && iM != 2) || objArr == null || (orNull = ArraysKt___ArraysKt.getOrNull(objArr, 0)) == null || !b.this.b((Class) orNull.getClass()) || (a0G = b.this.g(orNull)) == null || !b.this.h.add(orNull)) {
                return null;
            }
            b.this.a(a0G);
            return null;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            try {
                System.nanoTime();
                Object objA = a(obj, method, objArr);
                System.nanoTime();
                return objA;
            } catch (Throwable unused) {
                return null;
            }
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
            return g.b("U2YpJHc=");
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
            return g.b("AdjVHZvJHc==");
        }
    }

    public static final class E0 {
        private final String a;
        private final String b;
        private final String c;
        private final String d;
        private final String e;
        private final String f;
        private final String g;
        private final String h;
        private final Map i;

        public E0(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Map map) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = str4;
            this.e = str5;
            this.f = str6;
            this.g = str7;
            this.h = str8;
            this.i = map;
        }

        public final String a() {
            return this.e;
        }

        public final Map b() {
            return this.i;
        }

        public final String c() {
            return this.d;
        }

        public final String d() {
            return this.b;
        }

        public final String e() {
            return this.f;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof E0)) {
                return false;
            }
            E0 e0 = (E0) obj;
            return Intrinsics.areEqual(this.a, e0.a) && Intrinsics.areEqual(this.b, e0.b) && Intrinsics.areEqual(this.c, e0.c) && Intrinsics.areEqual(this.d, e0.d) && Intrinsics.areEqual(this.e, e0.e) && Intrinsics.areEqual(this.f, e0.f) && Intrinsics.areEqual(this.g, e0.g) && Intrinsics.areEqual(this.h, e0.h) && Intrinsics.areEqual(this.i, e0.i);
        }

        public final String f() {
            return this.c;
        }

        public final String g() {
            return this.g;
        }

        public int hashCode() {
            String str = this.a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.b;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.c;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.d;
            int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.e;
            int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.f;
            int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
            String str7 = this.g;
            int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
            String str8 = this.h;
            return ((iHashCode7 + (str8 != null ? str8.hashCode() : 0)) * 31) + this.i.hashCode();
        }

        public String toString() {
            return super.toString();
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
            return g.b("AZp9FdjVHZvJHc==");
        }
    }

    public interface F0 {
        void a(E0 e0);
    }

    public static final class G extends Lambda implements Function0 {
        public static final G a = new G();

        public G() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("MHZp9FdjVHZvJHc=");
        }
    }

    public static final class G0 {
        private Object a;
        private Map b;
        private int c;
        private Map d;
        private int e;
        private boolean f;

        public G0(Object obj, Map map, int i, Map map2, int i2, boolean z) {
            this.a = obj;
            this.b = map;
            this.c = i;
            this.d = map2;
            this.e = i2;
            this.f = z;
        }

        public final void a(Object obj) {
            this.a = obj;
        }

        public final void b(Map map) {
            this.b = map;
        }

        public final Map c() {
            return this.b;
        }

        public final int d() {
            return this.c;
        }

        public final boolean e() {
            return this.f;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof G0)) {
                return false;
            }
            G0 g0 = (G0) obj;
            return Intrinsics.areEqual(this.a, g0.a) && Intrinsics.areEqual(this.b, g0.b) && this.c == g0.c && Intrinsics.areEqual(this.d, g0.d) && this.e == g0.e && this.f == g0.f;
        }

        public final Object f() {
            return this.a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v5, types: [int] */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r1v8 */
        public int hashCode() {
            Object obj = this.a;
            int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
            Map map = this.b;
            int iHashCode2 = (((iHashCode + (map == null ? 0 : map.hashCode())) * 31) + Integer.hashCode(this.c)) * 31;
            Map map2 = this.d;
            int iHashCode3 = (((iHashCode2 + (map2 != null ? map2.hashCode() : 0)) * 31) + Integer.hashCode(this.e)) * 31;
            boolean z = this.f;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            return iHashCode3 + r1;
        }

        public String toString() {
            return super.toString();
        }

        public final Map a() {
            return this.d;
        }

        public final void b(int i) {
            this.c = i;
        }

        public final void a(Map map) {
            this.d = map;
        }

        public final int b() {
            return this.e;
        }

        public final void a(int i) {
            this.e = i;
        }

        public final void a(boolean z) {
            this.f = z;
        }

        public /* synthetic */ G0(Object obj, Map map, int i, Map map2, int i2, boolean z, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this((i3 & 1) != 0 ? null : obj, (i3 & 2) != 0 ? null : map, (i3 & 4) != 0 ? -1 : i, (i3 & 8) != 0 ? null : map2, (i3 & 16) != 0 ? -1 : i2, (i3 & 32) != 0 ? false : z);
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
            return g.b("lBXe09FdjVHZvJHc");
        }
    }

    public enum H0 {
        AD_REVENUE,
        MANUAL_PURCHASE_VALIDATION,
        PURCHASE_VALIDATE
    }

    public static final class I extends Lambda implements Function0 {
        public static final I a = new I();

        public I() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("Qelt2XjlGbiVHc==");
        }
    }

    public /* synthetic */ class I0 {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[H0.values().length];
            try {
                iArr[H0.AD_REVENUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[H0.MANUAL_PURCHASE_VALIDATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[H0.PURCHASE_VALIDATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
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
            return g.b("5V2ajlGbiVHc");
        }
    }

    public static final class J0 extends Lambda implements Function0 {
        public J0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Class invoke() {
            return b.this.f.a(b.p.b());
        }
    }

    public static final class K extends Lambda implements Function0 {
        public static final K a = new K();

        public K() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("U2chh2YyVHc=");
        }
    }

    public static final class K0 extends Lambda implements Function1 {
        public K0() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(Object obj) {
            return Boolean.valueOf(b.this.c(obj));
        }
    }

    public static final class L extends Lambda implements Function0 {
        public static final L a = new L();

        public L() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("zxWahRXZk9Fbh52bpRXakRWYfV2chh2YyVHc");
        }
    }

    public static final class L0 extends Lambda implements Function0 {
        public L0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(b.this.l != null);
        }
    }

    public static final class M extends Lambda implements Function0 {
        public static final M a = new M();

        public M() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("QY0FGZfV2chh2YyVHc==");
        }
    }

    public static final class M0 extends Lambda implements Function0 {
        public M0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Class invoke() {
            return b.this.f.a(b.p.c());
        }
    }

    public static final class N extends Lambda implements Function0 {
        public static final N a = new N();

        public N() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("hRXYkV2chh2YyVHc");
        }
    }

    public static final class N0 extends Lambda implements Function0 {
        public N0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            Object objA;
            b bVar = b.this;
            try {
                Object obj = bVar.l;
                if (obj == null || (objA = e.a(bVar.f, obj, b.p.k0(), (List) null, 4, (Object) null)) == null) {
                    return null;
                }
                return objA.toString();
            } catch (Throwable unused) {
                return null;
            }
        }
    }

    public static final class O extends Lambda implements Function0 {
        public static final O a = new O();

        public O() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("QZtlGdfV2chh2YyVHc==");
        }
    }

    public static final class O0 extends Lambda implements Function0 {
        public O0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final f invoke() {
            String strY0 = b.this.y0();
            if (strY0 == null) {
                return null;
            }
            List listSplit$default = StringsKt__StringsKt.split$default((CharSequence) strY0, new char[]{' '}, false, 0, 6, (Object) null);
            ArrayList arrayList = new ArrayList();
            Iterator it = listSplit$default.iterator();
            while (it.hasNext()) {
                CollectionsKt__MutableCollectionsKt.addAll(arrayList, StringsKt__StringsKt.split$default((CharSequence) it.next(), new char[]{':'}, false, 0, 6, (Object) null));
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                arrayList2.add(StringsKt__StringsKt.trim((String) it2.next()).toString());
            }
            ArrayList arrayList3 = new ArrayList();
            for (Object obj : arrayList2) {
                if (!StringsKt__StringsKt.isBlank((String) obj)) {
                    arrayList3.add(obj);
                }
            }
            f.a aVar = f.d;
            Iterator it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                f fVarA = aVar.a((String) it3.next());
                if (fVarA != null) {
                    return fVarA;
                }
            }
            return null;
        }
    }

    public static final class P extends Lambda implements Function0 {
        public static final P a = new P();

        public P() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("4WZr9GdfV2chh2YyVHc=");
        }
    }

    public static final class Q extends Lambda implements Function0 {
        public static final Q a = new Q();

        public Q() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("gblt2bUV2chh2YyVHc==");
        }
    }

    public static final class R extends Lambda implements Function0 {
        public static final R a = new R();

        public R() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("QZwlHdfV2chh2YyVHc==");
        }
    }

    public static final class S extends Lambda implements Function0 {
        public static final S a = new S();

        public S() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("hRXYk9FdwlWZjVmc");
        }
    }

    public static final class T extends Lambda implements Function0 {
        public static final T a = new T();

        public T() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("QZ15WZ2Vmc==");
        }
    }

    public static final class U extends Lambda implements Function0 {
        public static final U a = new U();

        public U() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("EGdhR2Xnl2c=");
        }
    }

    public static final class V extends Lambda implements Function0 {
        public static final V a = new V();

        public V() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("lJXd0Fmbnl2c");
        }
    }

    public static final class W extends Lambda implements Function0 {
        public static final W a = new W();

        public W() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("lJWayN2ciV3c");
        }
    }

    public static final class X extends Lambda implements Function0 {
        public static final X a = new X();

        public X() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("4WZr9Gd=");
        }
    }

    public static final class Y extends Lambda implements Function0 {
        public static final Y a = new Y();

        public Y() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("QWaf52bpR3YhNnbhJHd=");
        }
    }

    public static final class Z extends Lambda implements Function0 {
        public static final Z a = new Z();

        public Z() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("U2chh2YyVHcwBXYul2ajFmc0RmbhVGdhRWasFmd=");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$a, reason: case insensitive filesystem */
    public static final class C4173a {
        private final String a;
        private final String b;
        private final String c;
        private final Double d;
        private final Map e;

        public C4173a(String str, String str2, String str3, Double d, Map map) {
            this.a = str;
            this.b = str2;
            this.c = str3;
            this.d = d;
            this.e = map;
        }

        public final String a() {
            return this.c;
        }

        public final Map b() {
            return this.e;
        }

        public final String c() {
            return this.b;
        }

        public final String d() {
            return this.a;
        }

        public final Double e() {
            return this.d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C4173a)) {
                return false;
            }
            C4173a c4173a = (C4173a) obj;
            return Intrinsics.areEqual(this.a, c4173a.a) && Intrinsics.areEqual(this.b, c4173a.b) && Intrinsics.areEqual(this.c, c4173a.c) && Intrinsics.areEqual(this.d, c4173a.d) && Intrinsics.areEqual(this.e, c4173a.e);
        }

        public int hashCode() {
            String str = this.a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.b;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.c;
            int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
            Double d = this.d;
            return ((iHashCode3 + (d != null ? d.hashCode() : 0)) * 31) + this.e.hashCode();
        }

        public String toString() {
            return super.toString();
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$a0, reason: case insensitive filesystem */
    public static final class C4174a0 extends Lambda implements Function0 {
        public static final C4174a0 a = new C4174a0();

        public C4174a0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("kVGdhRWasFmd");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$b, reason: collision with other inner class name */
    public interface InterfaceC1143b {
        void a(C4173a c4173a);
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$b0, reason: case insensitive filesystem */
    public static final class C4175b0 extends Lambda implements Function0 {
        public static final C4175b0 a = new C4175b0();

        public C4175b0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Set invoke() {
            z0 z0Var = b.p;
            return SetsKt__SetsKt.setOf((Object[]) new String[]{z0Var.J(), z0Var.S(), z0Var.F(), z0Var.M(), z0Var.A(), z0Var.w()});
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$c, reason: case insensitive filesystem */
    public static final class C4176c {
        private Object a;
        private Map b;

        public C4176c(Object obj, Map map) {
            this.a = obj;
            this.b = map;
        }

        public final Object a() {
            return this.a;
        }

        public final Map b() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C4176c)) {
                return false;
            }
            C4176c c4176c = (C4176c) obj;
            return Intrinsics.areEqual(this.a, c4176c.a) && Intrinsics.areEqual(this.b, c4176c.b);
        }

        public int hashCode() {
            Object obj = this.a;
            int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
            Map map = this.b;
            return iHashCode + (map != null ? map.hashCode() : 0);
        }

        public String toString() {
            return super.toString();
        }

        public final void a(Object obj) {
            this.a = obj;
        }

        public final void a(Map map) {
            this.b = map;
        }

        public /* synthetic */ C4176c(Object obj, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : obj, (i & 2) != 0 ? null : map);
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$c0, reason: case insensitive filesystem */
    public static final class C4177c0 extends Lambda implements Function0 {
        public static final C4177c0 a = new C4177c0();

        public C4177c0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("zxWY1FXZ");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$d, reason: case insensitive filesystem */
    public static final class C4178d extends Lambda implements Function0 {
        public static final C4178d a = new C4178d();

        public C4178d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("4icllHbmNHcwFmLt92Y=");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$d0, reason: case insensitive filesystem */
    public static final class C4179d0 extends Lambda implements Function0 {
        public static final C4179d0 a = new C4179d0();

        public C4179d0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("k3YuVmcyV3Q0V2Z=");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$e, reason: case insensitive filesystem */
    public static final class C4180e extends Lambda implements Function0 {
        public static final C4180e a = new C4180e();

        public C4180e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("EGdhRUZ15WZ2VmUkFkRB5icllHbmNHcwFmLt92Y=");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$e0, reason: case insensitive filesystem */
    public static final class C4181e0 extends Lambda implements Function0 {
        public static final C4181e0 a = new C4181e0();

        public C4181e0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("QZk92Q3EjM082cJl3YuVmcyV3Q0V2Z==");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$f, reason: case insensitive filesystem */
    public static final class C4182f extends Lambda implements Function0 {
        public static final C4182f a = new C4182f();

        public C4182f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("wcslWY0VGRlNXYoNmc1BlRB5icllHbmNHcwFmLt92Y==");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$f0, reason: case insensitive filesystem */
    public static final class C4183f0 extends Lambda implements Function0 {
        public static final C4183f0 a = new C4183f0();

        public C4183f0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("U2YuFGdz5WS0V2Z=");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$g, reason: case insensitive filesystem */
    public static final class C4184g extends Lambda implements Function0 {
        public static final C4184g a = new C4184g();

        public C4184g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("IWaMJXZ5xmRzBHcB5icllHbmNHcwFmLt92Y=");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$g0, reason: case insensitive filesystem */
    public static final class C4185g0 extends Lambda implements Function0 {
        public static final C4185g0 a = new C4185g0();

        public C4185g0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("way92d0VmTu9Wa0FWakVWT0V2Z==");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$h, reason: case insensitive filesystem */
    public static final class C4186h extends Lambda implements Function0 {
        public static final C4186h a = new C4186h();

        public C4186h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("IXZwBXYydVZy9GdzlXZLZUQ=");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$h0, reason: case insensitive filesystem */
    public static final class C4187h0 extends Lambda implements Function0 {
        public static final C4187h0 a = new C4187h0();

        public C4187h0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("way92d0VmTu9Wa0FmepRXZu9WT0V2Z==");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$i, reason: case insensitive filesystem */
    public static final class C4188i extends Lambda implements Function0 {
        public static final C4188i a = new C4188i();

        public C4188i() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("hRXYEVWduVmdlJFZBZUQ");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$i0, reason: case insensitive filesystem */
    public static final class C4189i0 extends Lambda implements Function0 {
        public static final C4189i0 a = new C4189i0();

        public C4189i0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("U2YpJHU0V2Z=");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$j, reason: case insensitive filesystem */
    public static final class C4190j extends Lambda implements Function0 {
        public static final C4190j a = new C4190j();

        public C4190j() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("ilGTyVWesZ0cwBXQ");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$j0, reason: case insensitive filesystem */
    public static final class C4191j0 extends Lambda implements Function0 {
        public static final C4191j0 a = new C4191j0();

        public C4191j0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("klEdjVHZvJHU0V2Z");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$k, reason: case insensitive filesystem */
    public static final class C4192k extends Lambda implements Function0 {
        public static final C4192k a = new C4192k();

        public C4192k() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("QM05WZu9Gct92Y==");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$k0, reason: case insensitive filesystem */
    public static final class C4193k0 extends Lambda implements Function0 {
        public static final C4193k0 a = new C4193k0();

        public C4193k0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("gblt2bUV2chh2YyVHU0V2Z==");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$l, reason: case insensitive filesystem */
    public static final class C4194l extends Lambda implements Function0 {
        public static final C4194l a = new C4194l();

        public C4194l() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("AN05WZu9Gct92Y==");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$l0, reason: case insensitive filesystem */
    public static final class C4195l0 extends Lambda implements Function0 {
        public static final C4195l0 a = new C4195l0();

        public C4195l0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("lBXeUV2chh2YyVHU0V2Z");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$m, reason: case insensitive filesystem */
    public static final class C4196m extends Lambda implements Function0 {
        public static final C4196m a = new C4196m();

        public C4196m() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("Qew92Y==");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$m0, reason: case insensitive filesystem */
    public static final class C4197m0 extends Lambda implements Function0 {
        public static final C4197m0 a = new C4197m0();

        public C4197m0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("QZ15WZ2VmU0V2Z==");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$n, reason: case insensitive filesystem */
    public static final class C4198n extends Lambda implements Function0 {
        public static final C4198n a = new C4198n();

        public C4198n() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("QHb1FmZlRWew92Y=");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$n0, reason: case insensitive filesystem */
    public static final class C4199n0 extends Lambda implements Function0 {
        public static final C4199n0 a = new C4199n0();

        public C4199n0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("gbvl2cyVmVrR2U0V2Z==");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$o, reason: case insensitive filesystem */
    public static final class C4200o extends Lambda implements Function0 {
        public static final C4200o a = new C4200o();

        public C4200o() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("AZ==");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$o0, reason: case insensitive filesystem */
    public static final class C4201o0 extends Lambda implements Function0 {
        public static final C4201o0 a = new C4201o0();

        public C4201o0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("UWdsFmV0V2Z=");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$p, reason: case insensitive filesystem */
    public static final class C4202p extends Lambda implements Function0 {
        public static final C4202p a = new C4202p();

        public C4202p() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("zxWY1FXZ");
        }
    }

    public static final class p0 extends Lambda implements Function0 {
        public static final p0 a = new p0();

        public p0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("UGZvNEazFGa=");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$q, reason: case insensitive filesystem */
    public static final class C4203q extends Lambda implements Function0 {
        public static final C4203q a = new C4203q();

        public C4203q() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("UGZvNEazFGa=");
        }
    }

    public static final class q0 extends Lambda implements Function0 {
        public static final q0 a = new q0();

        public q0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("cmbpJHdT9Gd=");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$r, reason: case insensitive filesystem */
    public static final class C4204r extends Lambda implements Function0 {
        public static final C4204r a = new C4204r();

        public C4204r() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("cmbpJHdT9Gd=");
        }
    }

    public static final class r0 extends Lambda implements Function0 {
        public static final r0 a = new r0();

        public r0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Set invoke() {
            z0 z0Var = b.p;
            return SetsKt__SetsKt.setOf((Object[]) new String[]{z0Var.H(), z0Var.Q(), z0Var.w(), z0Var.B(), z0Var.U()});
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$s, reason: case insensitive filesystem */
    public static final class C4205s extends Lambda implements Function0 {
        public static final C4205s a = new C4205s();

        public C4205s() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("klEdjVHZvJHc");
        }
    }

    public static final class s0 extends Lambda implements Function0 {
        public static final s0 a = new s0();

        public s0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Set invoke() {
            z0 z0Var = b.p;
            return SetsKt__SetsKt.setOf((Object[]) new String[]{z0Var.C(), z0Var.D(), z0Var.r(), z0Var.u(), z0Var.M(), z0Var.V(), z0Var.Q(), z0Var.v(), z0Var.w(), z0Var.s(), z0Var.A(), z0Var.X(), z0Var.O(), z0Var.E(), z0Var.L(), z0Var.z()});
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$t, reason: case insensitive filesystem */
    public static final class C4206t extends Lambda implements Function0 {
        public static final C4206t a = new C4206t();

        public C4206t() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("gblt2bUV2chh2YyVHc==");
        }
    }

    public static final class t0 extends Lambda implements Function0 {
        public static final t0 a = new t0();

        public t0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Set invoke() {
            z0 z0Var = b.p;
            return SetsKt__SetsKt.setOf((Object[]) new String[]{z0Var.W(), z0Var.u(), z0Var.x(), z0Var.T()});
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$u, reason: case insensitive filesystem */
    public static final class C4207u extends Lambda implements Function0 {
        public static final C4207u a = new C4207u();

        public C4207u() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("AZp9FduVGdu92YfZWY==");
        }
    }

    public static final class u0 extends Lambda implements Function0 {
        public static final u0 a = new u0();

        public u0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Set invoke() {
            z0 z0Var = b.p;
            return SetsKt__SetsKt.setOf((Object[]) new String[]{z0Var.X(), z0Var.V(), z0Var.O(), z0Var.E(), z0Var.C(), z0Var.D(), z0Var.M(), z0Var.r()});
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$v, reason: case insensitive filesystem */
    public static final class C4208v extends Lambda implements Function0 {
        public static final C4208v a = new C4208v();

        public C4208v() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("k3YuVmcyV3YfZWY=");
        }
    }

    public static final class v0 extends Lambda implements Function0 {
        public static final v0 a = new v0();

        public v0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Map invoke() {
            f fVar = new f(6, 15, 1);
            z0 z0Var = b.p;
            return MapsKt__MapsKt.mapOf(TuplesKt.to(fVar, CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{z0Var.k(), z0Var.o(), z0Var.d0()})), TuplesKt.to(new f(6, 15, 2), CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{z0Var.o(), z0Var.h(), z0Var.i(), z0Var.j0()})), TuplesKt.to(new f(6, 15, 3), CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{z0Var.o(), z0Var.h(), z0Var.i(), z0Var.j0()})), TuplesKt.to(new f(6, 16, 0), CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{z0Var.m(), z0Var.o(), z0Var.e0()})), TuplesKt.to(new f(6, 16, 1), CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{z0Var.o(), z0Var.k(), z0Var.e0()})), TuplesKt.to(new f(6, 16, 2), CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{z0Var.o(), z0Var.k(), z0Var.e0()})), TuplesKt.to(new f(6, 17, 0), CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{z0Var.j(), z0Var.o(), z0Var.f()})), TuplesKt.to(new f(6, 17, 1), CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{z0Var.o(), z0Var.j(), z0Var.e0()})), TuplesKt.to(new f(6, 17, 2), CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{z0Var.n(), z0Var.o(), z0Var.j0()})), TuplesKt.to(new f(6, 17, 3), CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{z0Var.n(), z0Var.n(), z0Var.e0()})), TuplesKt.to(new f(6, 17, 4), CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{z0Var.j(), z0Var.m(), z0Var.d0()})), TuplesKt.to(new f(6, 17, 5), CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{z0Var.j(), z0Var.k(), z0Var.d0()})), TuplesKt.to(new f(6, 17, 6), CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{z0Var.j(), z0Var.k(), z0Var.d0()})), TuplesKt.to(new f(6, 18, 0), CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{z0Var.k(), z0Var.m(), z0Var.d0()})), TuplesKt.to(new f(6, 18, 1), CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{z0Var.k(), z0Var.k(), z0Var.d0()})), TuplesKt.to(new f(7, 0, 0), CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{z0Var.e(), z0Var.g(), z0Var.l()})));
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$w, reason: case insensitive filesystem */
    public static final class C4209w extends Lambda implements Function0 {
        public static final C4209w a = new C4209w();

        public C4209w() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("U2YpJHcfZWY=");
        }
    }

    public static final class w0 extends Lambda implements Function0 {
        public static final w0 a = new w0();

        public w0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("FVlTFZVRSRUQ");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$x, reason: case insensitive filesystem */
    public static final class C4210x extends Lambda implements Function0 {
        public static final C4210x a = new C4210x();

        public C4210x() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("U2chh2YyVHcfZWY=");
        }
    }

    public static final class x0 extends Lambda implements Function0 {
        public static final x0 a = new x0();

        public x0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("40TJRVQElETBZ1XFNVQINkUVB1XMFUVOFUT=");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$y, reason: case insensitive filesystem */
    public static final class C4211y extends Lambda implements Function0 {
        public static final C4211y a = new C4211y();

        public C4211y() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("QZ15WZ2VmcfZWY==");
        }
    }

    public static final class y0 extends Lambda implements Function0 {
        public static final y0 a = new y0();

        public y0() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("UEVBRUSMFkVfV0UBh0QSVFU=");
        }
    }

    /* JADX INFO: renamed from: io.bidmachine.analytics.internal.q.b$z, reason: case insensitive filesystem */
    public static final class C4212z extends Lambda implements Function0 {
        public static final C4212z a = new C4212z();

        public C4212z() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return g.b("k3YuVmcyV3Y=");
        }
    }

    public static final class z0 {
        public /* synthetic */ z0(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Set Y() {
            return (Set) b.J0.getValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Set o0() {
            return (Set) b.I0.getValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Set p0() {
            return (Set) b.G0.getValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Set q0() {
            return (Set) b.H0.getValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Set r0() {
            return (Set) b.K0.getValue();
        }

        public final String A() {
            return (String) b.T.getValue();
        }

        public final String B() {
            return (String) b.e0.getValue();
        }

        public final String C() {
            return (String) b.I.getValue();
        }

        public final String D() {
            return (String) b.K.getValue();
        }

        public final String E() {
            return (String) b.X.getValue();
        }

        public final String F() {
            return (String) b.j0.getValue();
        }

        public final String G() {
            return (String) b.k0.getValue();
        }

        public final String H() {
            return (String) b.d0.getValue();
        }

        public final String I() {
            return (String) b.o0.getValue();
        }

        public final String J() {
            return (String) b.g0.getValue();
        }

        public final String K() {
            return (String) b.h0.getValue();
        }

        public final String L() {
            return (String) b.Y.getValue();
        }

        public final String M() {
            return (String) b.M.getValue();
        }

        public final String N() {
            return (String) b.N.getValue();
        }

        public final String O() {
            return (String) b.W.getValue();
        }

        public final String P() {
            return (String) b.n0.getValue();
        }

        public final String Q() {
            return (String) b.P.getValue();
        }

        public final String R() {
            return (String) b.l0.getValue();
        }

        public final String S() {
            return (String) b.i0.getValue();
        }

        public final String T() {
            return (String) b.c0.getValue();
        }

        public final String U() {
            return (String) b.f0.getValue();
        }

        public final String V() {
            return (String) b.O.getValue();
        }

        public final String W() {
            return (String) b.a0.getValue();
        }

        public final String X() {
            return (String) b.V.getValue();
        }

        public final String Z() {
            return (String) b.v.getValue();
        }

        public final String a0() {
            return (String) b.F.getValue();
        }

        public final String b0() {
            return (String) b.B.getValue();
        }

        public final String c0() {
            return (String) b.u.getValue();
        }

        public final String d0() {
            return (String) b.y.getValue();
        }

        public final String e0() {
            return (String) b.A.getValue();
        }

        public final String f() {
            return (String) b.B0.getValue();
        }

        public final String f0() {
            return (String) b.E.getValue();
        }

        public final String g() {
            return (String) b.E0.getValue();
        }

        public final String g0() {
            return (String) b.H.getValue();
        }

        public final String h() {
            return (String) b.x0.getValue();
        }

        public final String h0() {
            return (String) b.G.getValue();
        }

        public final String i() {
            return (String) b.y0.getValue();
        }

        public final String i0() {
            return (String) b.D.getValue();
        }

        public final String j() {
            return (String) b.A0.getValue();
        }

        public final String j0() {
            return (String) b.C.getValue();
        }

        public final String k() {
            return (String) b.v0.getValue();
        }

        public final String k0() {
            return (String) b.t.getValue();
        }

        public final String l() {
            return (String) b.F0.getValue();
        }

        public final String l0() {
            return (String) b.z.getValue();
        }

        public final String m() {
            return (String) b.z0.getValue();
        }

        public final String m0() {
            return (String) b.w.getValue();
        }

        public final String n() {
            return (String) b.C0.getValue();
        }

        public final String n0() {
            return (String) b.x.getValue();
        }

        public final String o() {
            return (String) b.w0.getValue();
        }

        public final String p() {
            return (String) b.q0.getValue();
        }

        public final String q() {
            return (String) b.p0.getValue();
        }

        public final String r() {
            return (String) b.J.getValue();
        }

        public final String s() {
            return (String) b.S.getValue();
        }

        public final Map s0() {
            return (Map) b.L0.getValue();
        }

        public final String t() {
            return (String) b.U.getValue();
        }

        public final String t0() {
            return (String) b.t0.getValue();
        }

        public final String u() {
            return (String) b.L.getValue();
        }

        public final String u0() {
            return (String) b.r0.getValue();
        }

        public final String v() {
            return (String) b.Q.getValue();
        }

        public final String v0() {
            return (String) b.s0.getValue();
        }

        public final String w() {
            return (String) b.R.getValue();
        }

        public final String x() {
            return (String) b.b0.getValue();
        }

        public final String y() {
            return (String) b.m0.getValue();
        }

        public final String z() {
            return (String) b.Z.getValue();
        }

        private z0() {
        }

        public final String a() {
            return (String) b.u0.getValue();
        }

        public final String b() {
            return (String) b.q.getValue();
        }

        public final String c() {
            return (String) b.r.getValue();
        }

        public final String d() {
            return (String) b.s.getValue();
        }

        public final String e() {
            return (String) b.D0.getValue();
        }
    }

    public b(io.bidmachine.analytics.internal.J.b bVar) {
        Object objA;
        z0 z0Var;
        Class clsA;
        this.a = bVar;
        e eVar = new e();
        this.f = eVar;
        this.g = new c(eVar, 0, 0, 0, 14, null);
        this.h = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));
        this.i = MapsKt__MapsKt.emptyMap();
        this.j = LazyKt__LazyJVMKt.lazy(new J0());
        this.k = LazyKt__LazyJVMKt.lazy(new M0());
        try {
            z0Var = p;
            clsA = eVar.a(z0Var.d());
        } catch (Throwable unused) {
        }
        if (clsA != null) {
            objA = e.a(eVar, clsA, z0Var.c0(), (List) null, 4, (Object) null);
            this.l = objA;
            this.m = LazyKt__LazyJVMKt.lazy(new L0());
            this.n = LazyKt__LazyJVMKt.lazy(new N0());
            this.o = LazyKt__LazyJVMKt.lazy(new O0());
        }
        objA = null;
        this.l = objA;
        this.m = LazyKt__LazyJVMKt.lazy(new L0());
        this.n = LazyKt__LazyJVMKt.lazy(new N0());
        this.o = LazyKt__LazyJVMKt.lazy(new O0());
    }

    private final synchronized boolean D0() {
        boolean zB0;
        try {
            if (A0()) {
                zB0 = B0();
            } else {
                E0();
                zB0 = false;
            }
        } catch (Throwable th) {
            throw th;
        }
        return zB0;
    }

    private final Class w0() {
        return (Class) this.j.getValue();
    }

    private final Class x0() {
        return (Class) this.k.getValue();
    }

    public final boolean A0() {
        return (this.d.isEmpty() && this.e.isEmpty()) ? false : true;
    }

    public final synchronized boolean B0() {
        if (this.b) {
            return true;
        }
        Object obj = this.l;
        if (obj == null) {
            return false;
        }
        this.b = b(obj);
        return this.b;
    }

    public final boolean C0() {
        return ((Boolean) this.m.getValue()).booleanValue();
    }

    public final synchronized void E0() {
        Object objM2760constructorimpl;
        try {
            B0 b02 = this.c;
            if (b02 != null) {
                try {
                    Result.Companion companion = Result.Companion;
                    objM2760constructorimpl = Result.m2760constructorimpl(Boolean.valueOf(b02.a().remove(b02.b())));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.Companion;
                    objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
                }
                Result.m2759boximpl(objM2760constructorimpl);
            }
            this.c = null;
            this.b = false;
            this.h.clear();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final String y0() {
        return (String) this.n.getValue();
    }

    public final f z0() {
        return (f) this.o.getValue();
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r10v0 io.bidmachine.analytics.internal.q.b$A0$a, still in use, count: 2, list:
          (r10v0 io.bidmachine.analytics.internal.q.b$A0$a) from 0x0058: MOVE (r13v0 io.bidmachine.analytics.internal.q.b$A0$a) = (r10v0 io.bidmachine.analytics.internal.q.b$A0$a)
          (r10v0 io.bidmachine.analytics.internal.q.b$A0$a) from 0x0055: MOVE (r13v5 io.bidmachine.analytics.internal.q.b$A0$a) = (r10v0 io.bidmachine.analytics.internal.q.b$A0$a)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:91)
        	at jadx.core.utils.InsnRemover.addAndUnbind(InsnRemover.java:57)
        	at jadx.core.dex.visitors.ModVisitor.removeStep(ModVisitor.java:463)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:97)
        */
    private final io.bidmachine.analytics.internal.q.b.A0.a d(java.lang.Object r17) {
        /*
            r16 = this;
            r0 = r16
            io.bidmachine.analytics.internal.q.b$c r1 = r16.i(r17)
            java.lang.Object r3 = r1.a()
            r8 = 0
            if (r3 != 0) goto Le
            return r8
        Le:
            io.bidmachine.analytics.internal.I.e r2 = r0.f
            io.bidmachine.analytics.internal.q.b$z0 r9 = io.bidmachine.analytics.internal.q.b.p
            java.lang.String r4 = r9.d0()
            r6 = 4
            r7 = 0
            r5 = 0
            java.lang.Object r11 = io.bidmachine.analytics.internal.I.e.a(r2, r3, r4, r5, r6, r7)
            if (r11 == 0) goto L3c
            io.bidmachine.analytics.internal.I.e r10 = r0.f
            java.lang.String r12 = r9.l0()
            r14 = 4
            r15 = 0
            r13 = 0
            java.lang.Object r2 = io.bidmachine.analytics.internal.I.e.a(r10, r11, r12, r13, r14, r15)
            if (r2 == 0) goto L37
            java.lang.String r2 = r2.toString()
            if (r2 != 0) goto L35
            goto L37
        L35:
            r12 = r2
            goto L3d
        L37:
            java.lang.String r2 = r11.toString()
            goto L35
        L3c:
            r12 = r8
        L3d:
            io.bidmachine.analytics.internal.q.b$A0$a r10 = new io.bidmachine.analytics.internal.q.b$A0$a
            r11 = r10
            io.bidmachine.analytics.internal.q.b$a r10 = new io.bidmachine.analytics.internal.q.b$a
            io.bidmachine.analytics.internal.I.e r2 = r0.f
            java.lang.String r4 = r9.e0()
            r6 = 4
            r7 = 0
            r5 = 0
            java.lang.Object r2 = io.bidmachine.analytics.internal.I.e.a(r2, r3, r4, r5, r6, r7)
            if (r2 == 0) goto L58
            java.lang.String r2 = r2.toString()
            r13 = r11
            r11 = r2
            goto L5a
        L58:
            r13 = r11
            r11 = r8
        L5a:
            io.bidmachine.analytics.internal.I.e r2 = r0.f
            java.lang.String r4 = r9.b0()
            r6 = 4
            r7 = 0
            r5 = 0
            java.lang.Object r2 = io.bidmachine.analytics.internal.I.e.a(r2, r3, r4, r5, r6, r7)
            if (r2 == 0) goto L70
            java.lang.String r2 = r2.toString()
            r14 = r13
            r13 = r2
            goto L72
        L70:
            r14 = r13
            r13 = r8
        L72:
            io.bidmachine.analytics.internal.I.e r2 = r0.f
            java.lang.String r4 = r9.j0()
            r6 = 4
            r7 = 0
            r5 = 0
            java.lang.Object r2 = io.bidmachine.analytics.internal.I.e.a(r2, r3, r4, r5, r6, r7)
            boolean r3 = r2 instanceof java.lang.Number
            if (r3 == 0) goto L86
            java.lang.Number r2 = (java.lang.Number) r2
            goto L87
        L86:
            r2 = r8
        L87:
            if (r2 == 0) goto L91
            double r2 = r2.doubleValue()
            java.lang.Double r8 = java.lang.Double.valueOf(r2)
        L91:
            java.util.Map r1 = r1.b()
            if (r1 != 0) goto L9b
            java.util.Map r1 = kotlin.collections.MapsKt__MapsKt.emptyMap()
        L9b:
            r15 = r1
            r1 = r14
            r14 = r8
            r10.<init>(r11, r12, r13, r14, r15)
            r1.<init>(r10)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.q.b.d(java.lang.Object):io.bidmachine.analytics.internal.q.b$A0$a");
    }

    private final A0.C1142b e(Object obj) {
        G0 g0J = j(obj);
        A0.C1142b c1142bA = a(g0J);
        return c1142bA == null ? b(g0J, p.Y(), true) : c1142bA;
    }

    private final A0.C1142b f(Object obj) {
        G0 g0J = j(obj);
        A0.C1142b c1142bB = b(g0J, p.r0(), false);
        return c1142bB == null ? a(g0J) : c1142bB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final A0 g(Object obj) {
        H0 h0H = h(obj);
        int i = h0H == null ? -1 : I0.$EnumSwitchMapping$0[h0H.ordinal()];
        if (i == -1) {
            return null;
        }
        if (i == 1) {
            return d(obj);
        }
        if (i == 2) {
            return e(obj);
        }
        if (i == 3) {
            return f(obj);
        }
        throw new NoWhenBranchMatchedException();
    }

    private final H0 h(Object obj) {
        String upperCase = obj.toString().toUpperCase(Locale.ROOT);
        z0 z0Var = p;
        if (StringsKt__StringsJVMKt.startsWith$default(upperCase, z0Var.u0(), false, 2, null)) {
            return H0.MANUAL_PURCHASE_VALIDATION;
        }
        if (StringsKt__StringsJVMKt.startsWith$default(upperCase, z0Var.v0(), false, 2, null)) {
            return H0.PURCHASE_VALIDATE;
        }
        if (StringsKt__StringsJVMKt.startsWith$default(upperCase, z0Var.t0(), false, 2, null)) {
            return H0.AD_REVENUE;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final C4176c i(Object obj) {
        Object obj2;
        C4176c c4176c = new C4176c(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        a(obj, c4176c);
        for (Field field : this.f.b(obj.getClass())) {
            if (!Modifier.isStatic(field.getModifiers())) {
                try {
                    field.setAccessible(true);
                    obj2 = field.get(obj);
                } catch (Throwable unused) {
                    obj2 = null;
                }
                if (obj2 != null) {
                    a(obj2, c4176c);
                }
            }
        }
        return c4176c;
    }

    private final G0 j(Object obj) {
        Object objM2760constructorimpl;
        Object objM2760constructorimpl2;
        G0 g02 = new G0(null, null, 0, null, 0, false, 63, null);
        Class clsX0 = x0();
        ArrayDeque arrayDeque = new ArrayDeque();
        IdentityHashMap identityHashMap = new IdentityHashMap();
        arrayDeque.add(TuplesKt.to(obj, 0));
        identityHashMap.put(obj, Boolean.TRUE);
        int i = 0;
        while (!arrayDeque.isEmpty() && i < 600) {
            Pair pair = (Pair) arrayDeque.removeFirst();
            Object objComponent1 = pair.component1();
            int iIntValue = ((Number) pair.component2()).intValue();
            i++;
            a(objComponent1, g02, clsX0);
            if (iIntValue < 4) {
                c cVar = this.g;
                try {
                    Result.Companion companion = Result.Companion;
                    if (objComponent1 instanceof Map) {
                        for (Object obj2 : SequencesKt___SequencesKt.toList(SequencesKt___SequencesKt.filterNotNull(SequencesKt___SequencesKt.take(CollectionsKt___CollectionsKt.asSequence(((Map) objComponent1).values()), cVar.d)))) {
                            if (!cVar.a(obj2) && obj2 != null && identityHashMap.put(obj2, Boolean.TRUE) == null) {
                                arrayDeque.add(TuplesKt.to(obj2, Integer.valueOf(iIntValue + 1)));
                            }
                        }
                    } else if (objComponent1 instanceof Iterable) {
                        for (Object obj3 : SequencesKt___SequencesKt.toList(SequencesKt___SequencesKt.filterNotNull(SequencesKt___SequencesKt.take(CollectionsKt___CollectionsKt.asSequence((Iterable) objComponent1), cVar.d)))) {
                            if (!cVar.a(obj3) && obj3 != null && identityHashMap.put(obj3, Boolean.TRUE) == null) {
                                arrayDeque.add(TuplesKt.to(obj3, Integer.valueOf(iIntValue + 1)));
                            }
                        }
                    } else if (objComponent1 instanceof Object[]) {
                        for (Object obj4 : SequencesKt___SequencesKt.filterNotNull(SequencesKt___SequencesKt.take(ArraysKt___ArraysKt.asSequence((Object[]) objComponent1), cVar.d))) {
                            if (!cVar.a(obj4) && obj4 != null && identityHashMap.put(obj4, Boolean.TRUE) == null) {
                                arrayDeque.add(TuplesKt.to(obj4, Integer.valueOf(iIntValue + 1)));
                            }
                        }
                    } else {
                        for (Field field : cVar.a.b(objComponent1.getClass())) {
                            try {
                                Result.Companion companion2 = Result.Companion;
                                objM2760constructorimpl2 = Result.m2760constructorimpl(field.get(objComponent1));
                            } catch (Throwable th) {
                                Result.Companion companion3 = Result.Companion;
                                objM2760constructorimpl2 = Result.m2760constructorimpl(ResultKt.createFailure(th));
                            }
                            if (Result.m2765isFailureimpl(objM2760constructorimpl2)) {
                                objM2760constructorimpl2 = null;
                            }
                            if (objM2760constructorimpl2 != null && !cVar.a(objM2760constructorimpl2) && identityHashMap.put(objM2760constructorimpl2, Boolean.TRUE) == null) {
                                arrayDeque.add(TuplesKt.to(objM2760constructorimpl2, Integer.valueOf(iIntValue + 1)));
                            }
                        }
                    }
                    objM2760constructorimpl = Result.m2760constructorimpl(Unit.INSTANCE);
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.Companion;
                    objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th2));
                }
                Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
            }
        }
        return g02;
    }

    private final D0 k(Object obj) {
        List listSplit$default;
        D0 d0B;
        D0 d0B2;
        f fVarZ0 = z0();
        if (fVarZ0 == null) {
            return null;
        }
        List list = (List) p.s0().get(fVarZ0);
        if (list == null) {
            list = (List) this.i.get(fVarZ0);
        }
        if (list != null && (d0B2 = b(obj, list)) != null) {
            return d0B2;
        }
        String strA = io.bidmachine.analytics.internal.J.b.a(this.a, "af" + fVarZ0, null, 2, null);
        if (strA != null && (listSplit$default = StringsKt__StringsKt.split$default((CharSequence) strA, new String[]{","}, false, 0, 6, (Object) null)) != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : listSplit$default) {
                if (((String) obj2).length() > 0) {
                    arrayList.add(obj2);
                }
            }
            if (arrayList.isEmpty()) {
                arrayList = null;
            }
            if (arrayList == null || (d0B = b(obj, arrayList)) == null) {
                return null;
            }
            return d0B;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean c(Object obj) {
        return b((Class) (obj != null ? obj.getClass() : null));
    }

    private final Map c(Map map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map.size());
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            linkedHashMap.put(String.valueOf(key), entry.getValue());
        }
        return linkedHashMap;
    }

    public final void b(Map map) {
        this.i = map;
    }

    public final void b(InterfaceC1143b interfaceC1143b) {
        this.d.remove(interfaceC1143b);
        D0();
    }

    public final boolean a(InterfaceC1143b interfaceC1143b) {
        this.d.add(interfaceC1143b);
        return D0();
    }

    public static final class D0 {
        private final Object a;
        private final Field b;
        private final List c;
        private final Class d;
        private final int e;
        private final List f;

        public D0(Object obj, Field field, List list, Class cls, int i, List list2) {
            this.a = obj;
            this.b = field;
            this.c = list;
            this.d = cls;
            this.e = i;
            this.f = list2;
        }

        public final List a() {
            return this.f;
        }

        public final Class b() {
            return this.d;
        }

        public final List c() {
            return this.c;
        }

        public final int d() {
            return this.e;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof D0)) {
                return false;
            }
            D0 d0 = (D0) obj;
            return Intrinsics.areEqual(this.a, d0.a) && Intrinsics.areEqual(this.b, d0.b) && Intrinsics.areEqual(this.c, d0.c) && Intrinsics.areEqual(this.d, d0.d) && this.e == d0.e && Intrinsics.areEqual(this.f, d0.f);
        }

        public int hashCode() {
            int iHashCode = ((((((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.d.hashCode()) * 31) + Integer.hashCode(this.e)) * 31;
            List list = this.f;
            return iHashCode + (list == null ? 0 : list.hashCode());
        }

        public String toString() {
            return super.toString();
        }

        public /* synthetic */ D0(Object obj, Field field, List list, Class cls, int i, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(obj, field, list, cls, i, (i2 & 32) != 0 ? null : list2);
        }
    }

    public final void b(F0 f02) {
        this.e.remove(f02);
        D0();
    }

    public final boolean a(F0 f02) {
        this.e.add(f02);
        return D0();
    }

    private final boolean b(Object obj) {
        ArrayList arrayList = new ArrayList();
        D0 d0K = k(obj);
        if (d0K != null) {
            arrayList.add(d0K);
        } else {
            a(obj, arrayList);
        }
        return a((List) arrayList);
    }

    private final List a(String str, String str2) {
        if (str == null) {
            return null;
        }
        if (str.length() == 0) {
            return CollectionsKt__CollectionsJVMKt.listOf(str2);
        }
        return CollectionsKt___CollectionsKt.plus(StringsKt__StringsKt.split$default((CharSequence) str, new String[]{","}, false, 0, 6, (Object) null), str2);
    }

    private final void a(Object obj, List list) {
        Class clsA;
        int i;
        Object obj2;
        for (Pair pair : this.g.a(obj, ",", new K0())) {
            Object objComponent1 = pair.component1();
            String str = (String) pair.component2();
            for (Field field : this.f.b(objComponent1.getClass())) {
                if (!Modifier.isStatic(field.getModifiers()) && List.class.isAssignableFrom(field.getType())) {
                    Object obj3 = null;
                    try {
                        obj2 = field.get(objComponent1);
                    } catch (Throwable unused) {
                    }
                    List list2 = TypeIntrinsics.isMutableList(obj2) ? (List) obj2 : null;
                    if (list2 != null) {
                        Iterator it = list2.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            Object next = it.next();
                            if (next != null && c(next)) {
                                obj3 = next;
                                break;
                            }
                        }
                        if (obj3 != null && (clsA = a((Class) obj3.getClass())) != null && b(clsA)) {
                            if (list2.isEmpty()) {
                                i = 0;
                            } else {
                                i = 0;
                                for (Object obj4 : list2) {
                                    if (obj4 != null && clsA.isAssignableFrom(obj4.getClass()) && (i = i + 1) < 0) {
                                        CollectionsKt__CollectionsKt.throwCountOverflow();
                                    }
                                }
                            }
                            list.add(new D0(objComponent1, field, list2, clsA, i, a(str, field.getName())));
                        }
                    }
                }
            }
        }
    }

    private final D0 b(Object obj, List list) {
        Object next;
        Class clsA;
        Object obj2;
        int lastIndex = CollectionsKt__CollectionsKt.getLastIndex(list);
        int i = 0;
        Object objA = obj;
        for (int i2 = 0; i2 < lastIndex; i2++) {
            objA = this.f.a(objA.getClass(), objA, (String) list.get(i2), false);
            if (objA == null) {
                return null;
            }
        }
        Field fieldA = this.f.a((Class) objA.getClass(), (String) CollectionsKt___CollectionsKt.last(list), false);
        if (fieldA == null || !List.class.isAssignableFrom(fieldA.getType())) {
            return null;
        }
        try {
            obj2 = fieldA.get(objA);
        } catch (Throwable unused) {
        }
        List list2 = TypeIntrinsics.isMutableList(obj2) ? (List) obj2 : null;
        if (list2 == null) {
            return null;
        }
        Iterator it = list2.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (next != null && c(next)) {
                break;
            }
        }
        if (next == null || (clsA = a((Class) next.getClass())) == null || !b(clsA)) {
            return null;
        }
        if (!list2.isEmpty()) {
            for (Object obj3 : list2) {
                if (obj3 != null && clsA.isAssignableFrom(obj3.getClass()) && (i = i + 1) < 0) {
                    CollectionsKt__CollectionsKt.throwCountOverflow();
                }
            }
        }
        int i3 = i;
        if (i3 <= 0) {
            return null;
        }
        return new D0(objA, fieldA, list2, clsA, i3, null, 32, null);
    }

    private final Map a(Map map) {
        String string;
        String lowerCase;
        String strReplace$default;
        if (map == null) {
            return MapsKt__MapsKt.emptyMap();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (key != null && (string = key.toString()) != null && (lowerCase = string.toLowerCase(Locale.ROOT)) != null && (strReplace$default = StringsKt__StringsJVMKt.replace$default(lowerCase, '-', '_', false, 4, (Object) null)) != null) {
                z0 z0Var = p;
                if (Intrinsics.areEqual(strReplace$default, z0Var.M()) ? true : Intrinsics.areEqual(strReplace$default, z0Var.N())) {
                    linkedHashMap.put(z0Var.M(), value);
                } else if (Intrinsics.areEqual(strReplace$default, z0Var.C()) ? true : Intrinsics.areEqual(strReplace$default, z0Var.r())) {
                    linkedHashMap.put(z0Var.C(), value);
                } else if (Intrinsics.areEqual(strReplace$default, z0Var.D())) {
                    String strA = a(value);
                    if (strA != null) {
                        linkedHashMap.put(z0Var.C(), strA);
                    }
                } else if (Intrinsics.areEqual(strReplace$default, z0Var.O()) ? true : Intrinsics.areEqual(strReplace$default, z0Var.E())) {
                    linkedHashMap.put(z0Var.O(), value);
                } else if (Intrinsics.areEqual(strReplace$default, z0Var.A()) ? true : Intrinsics.areEqual(strReplace$default, z0Var.t())) {
                    linkedHashMap.put(z0Var.A(), value);
                } else if (Intrinsics.areEqual(strReplace$default, z0Var.w()) ? true : Intrinsics.areEqual(strReplace$default, z0Var.s())) {
                    linkedHashMap.put(z0Var.w(), value);
                } else if (Intrinsics.areEqual(strReplace$default, z0Var.J()) ? true : Intrinsics.areEqual(strReplace$default, z0Var.K())) {
                    linkedHashMap.put(z0Var.J(), value);
                } else if (Intrinsics.areEqual(strReplace$default, z0Var.R())) {
                    linkedHashMap.put(z0Var.J(), value);
                    if (value instanceof String) {
                        a(linkedHashMap, (String) value);
                    }
                } else if (Intrinsics.areEqual(strReplace$default, z0Var.S())) {
                    linkedHashMap.put(z0Var.S(), value);
                } else if (Intrinsics.areEqual(strReplace$default, z0Var.F()) ? true : Intrinsics.areEqual(strReplace$default, z0Var.G())) {
                    linkedHashMap.put(z0Var.F(), value);
                } else if (Intrinsics.areEqual(strReplace$default, z0Var.y())) {
                    if (value instanceof Map) {
                        linkedHashMap.putAll(a((Map) value));
                    }
                } else if (Intrinsics.areEqual(strReplace$default, z0Var.P())) {
                    if (value instanceof Map) {
                        linkedHashMap.putAll(a((Map) value));
                    }
                } else if (Intrinsics.areEqual(strReplace$default, z0Var.I()) && (value instanceof Map)) {
                    linkedHashMap.putAll(a((Map) value));
                }
            }
        }
        return linkedHashMap;
    }

    private final A0.C1142b a(G0 g02) {
        String string;
        String str;
        String strA;
        String str2;
        String string2;
        Object objF = g02.f();
        if (objF == null) {
            return null;
        }
        e eVar = this.f;
        z0 z0Var = p;
        Object objA = e.a(eVar, objF, z0Var.i0(), (List) null, 4, (Object) null);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Map mapC = g02.c();
        if (mapC != null) {
            linkedHashMap.putAll(c(mapC));
        }
        linkedHashMap.putAll(a(g02.c()));
        Object objA2 = e.a(this.f, objF, z0Var.f0(), (List) null, 4, (Object) null);
        String string3 = objA2 != null ? objA2.toString() : null;
        Object objA3 = e.a(this.f, objF, z0Var.a0(), (List) null, 4, (Object) null);
        String string4 = objA3 != null ? objA3.toString() : null;
        if (objA != null) {
            Object objA4 = e.a(this.f, objA, z0Var.l0(), (List) null, 4, (Object) null);
            if (objA4 == null || (string2 = objA4.toString()) == null) {
                string2 = objA.toString();
            }
            string = string2;
        } else {
            string = null;
        }
        Object objA5 = e.a(this.f, objF, z0Var.h0(), (List) null, 4, (Object) null);
        if (objA5 == null || (string = objA5.toString()) == null) {
            Object objRemove = linkedHashMap.remove(z0Var.M());
            if (objRemove != null) {
                String string5 = objRemove.toString();
                str = string5;
            } else {
                str = null;
            }
        } else {
            str = string5;
        }
        Object objA6 = e.a(this.f, objF, z0Var.g0(), (List) null, 4, (Object) null);
        if (objA6 == null || (strA = objA6.toString()) == null) {
            strA = a(linkedHashMap.remove(z0Var.C()));
        }
        String str3 = strA;
        if (string != null) {
            str2 = string;
        } else {
            Object objRemove2 = linkedHashMap.remove(z0Var.O());
            if (objRemove2 != null) {
                string = objRemove2.toString();
                str2 = string;
            } else {
                str2 = null;
            }
        }
        if (string3 == null) {
            Object objRemove3 = linkedHashMap.remove(z0Var.A());
            string3 = objRemove3 != null ? objRemove3.toString() : null;
            if (string3 == null) {
                Object objRemove4 = linkedHashMap.remove(z0Var.t());
                string3 = objRemove4 != null ? objRemove4.toString() : null;
            }
        }
        if (string4 == null) {
            Object objRemove5 = linkedHashMap.remove(z0Var.w());
            string4 = objRemove5 != null ? objRemove5.toString() : null;
            if (string4 == null) {
                Object objRemove6 = linkedHashMap.remove(z0Var.s());
                string4 = objRemove6 != null ? objRemove6.toString() : null;
            }
        }
        Object objRemove7 = linkedHashMap.remove(z0Var.J());
        String string6 = objRemove7 != null ? objRemove7.toString() : null;
        Object objRemove8 = linkedHashMap.remove(z0Var.S());
        String string7 = objRemove8 != null ? objRemove8.toString() : null;
        Object objRemove9 = linkedHashMap.remove(z0Var.F());
        return new A0.C1142b(new E0(str, str3, str2, string3, string4, string6, string7, objRemove9 != null ? objRemove9.toString() : null, linkedHashMap));
    }

    private final void a(Map map, String str) {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject(str);
        } catch (Throwable unused) {
            jSONObject = null;
        }
        if (jSONObject == null) {
            return;
        }
        z0 z0Var = p;
        String strOptString = jSONObject.optString(z0Var.q(), "");
        if (strOptString.length() <= 0) {
            strOptString = null;
        }
        String strOptString2 = jSONObject.optString(z0Var.p(), "");
        String str2 = strOptString2.length() > 0 ? strOptString2 : null;
        if (strOptString != null && !map.containsKey(z0Var.M())) {
            map.put(z0Var.M(), strOptString);
        }
        if (str2 == null || map.containsKey(z0Var.C())) {
            return;
        }
        map.put(z0Var.C(), str2);
    }

    private final Map a(G0 g02, Set set, boolean z2) {
        Map mapA = g02.a();
        if (mapA == null) {
            return null;
        }
        int iB = g02.b();
        if (iB < 2 && (iB < 1 || !g02.e())) {
            return null;
        }
        int iA = a(mapA, set);
        if (z2 && iA == 0) {
            return null;
        }
        return c(mapA);
    }

    private final void a(Object obj, C4176c c4176c) {
        Object obj2;
        Class clsW0 = w0();
        if (clsW0 != null && b((Class) obj.getClass())) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            Object obj3 = null;
            for (Field field : this.f.b(obj.getClass())) {
                if (!Modifier.isStatic(field.getModifiers())) {
                    try {
                        field.setAccessible(true);
                        obj2 = field.get(obj);
                    } catch (Throwable unused) {
                        obj2 = null;
                    }
                    if (obj2 != null) {
                        if (clsW0.isInstance(obj2)) {
                            obj3 = obj2;
                        } else if (obj2 instanceof Map) {
                            a(linkedHashMap, (Map) obj2, 255);
                        }
                    }
                }
            }
            if (obj3 == null) {
                return;
            }
            if (c4176c.a() == null) {
                c4176c.a(obj3);
            } else if (c4176c.a() != obj3) {
                return;
            }
            if (c4176c.b() == null && !linkedHashMap.isEmpty()) {
                c4176c.a((Map) linkedHashMap);
            }
        }
    }

    private final A0.C1142b b(G0 g02, Set set, boolean z2) {
        String string;
        String strA;
        String string2;
        String string3;
        String string4;
        String string5;
        String string6;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String string7;
        String string8;
        Map mapA = a(g02, set, z2);
        if (mapA == null) {
            return null;
        }
        Map mapA2 = a(mapA);
        z0 z0Var = p;
        Object obj = mapA2.get(z0Var.M());
        if (obj == null || (string = obj.toString()) == null) {
            Object obj2 = mapA.get(z0Var.M());
            if (obj2 != null) {
                string = obj2.toString();
            } else {
                Object obj3 = mapA.get(z0Var.N());
                string = obj3 != null ? obj3.toString() : null;
            }
        }
        Object obj4 = mapA2.get(z0Var.C());
        if (obj4 == null || (strA = obj4.toString()) == null) {
            Object obj5 = mapA.get(z0Var.C());
            if (obj5 != null) {
                strA = obj5.toString();
            } else {
                strA = a(mapA.get(z0Var.D()));
                if (strA == null) {
                    Object obj6 = mapA.get(z0Var.r());
                    strA = obj6 != null ? obj6.toString() : null;
                }
            }
        }
        Object obj7 = mapA2.get(z0Var.O());
        if (obj7 == null || (string2 = obj7.toString()) == null) {
            Object obj8 = mapA.get(z0Var.O());
            if (obj8 != null) {
                string2 = obj8.toString();
            } else {
                Object obj9 = mapA.get(z0Var.E());
                string2 = obj9 != null ? obj9.toString() : null;
            }
        }
        Object obj10 = mapA2.get(z0Var.A());
        if (obj10 == null || (string3 = obj10.toString()) == null) {
            Object obj11 = mapA.get(z0Var.A());
            if (obj11 != null) {
                string3 = obj11.toString();
            } else {
                Object obj12 = mapA.get(z0Var.v());
                string3 = obj12 != null ? obj12.toString() : null;
            }
        }
        Object obj13 = mapA2.get(z0Var.w());
        if (obj13 == null || (string4 = obj13.toString()) == null) {
            Object obj14 = mapA.get(z0Var.w());
            if (obj14 != null) {
                string4 = obj14.toString();
            } else {
                Object obj15 = mapA.get(z0Var.s());
                string4 = obj15 != null ? obj15.toString() : null;
            }
        }
        Object obj16 = mapA2.get(z0Var.J());
        if (obj16 == null || (string5 = obj16.toString()) == null) {
            Object obj17 = mapA.get(z0Var.J());
            string5 = obj17 != null ? obj17.toString() : null;
        }
        Object obj18 = mapA2.get(z0Var.S());
        if (obj18 == null || (string6 = obj18.toString()) == null) {
            Object obj19 = mapA.get(z0Var.S());
            string6 = obj19 != null ? obj19.toString() : null;
        }
        Object obj20 = mapA2.get(z0Var.F());
        if (obj20 == null || (string8 = obj20.toString()) == null) {
            Object obj21 = mapA.get(z0Var.F());
            str = string;
            str2 = strA;
            str3 = string2;
            str4 = string3;
            str5 = string4;
            str6 = string5;
            str7 = string6;
            string7 = obj21 != null ? obj21.toString() : null;
        } else {
            str = string;
            str2 = strA;
            str3 = string2;
            str4 = string3;
            str5 = string4;
            str6 = string5;
            str7 = string6;
            string7 = string8;
        }
        return new A0.C1142b(new E0(str, str2, str3, str4, str5, str6, str7, string7, mapA));
    }

    private final void a(Object obj, G0 g02, Class cls) {
        if (obj == null) {
            return;
        }
        if (cls != null && g02.f() == null && cls.isInstance(obj)) {
            g02.a(obj);
        }
        if (obj instanceof String) {
            String lowerCase = ((String) obj).toLowerCase(Locale.ROOT);
            if (g02.e() || !p.q0().contains(lowerCase)) {
                return;
            }
            g02.a(true);
            return;
        }
        if (obj instanceof Map) {
            a((Map) obj, g02);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean b(Class cls) {
        return cls != null && StringsKt__StringsJVMKt.startsWith$default(cls.getName(), p.a(), false, 2, null);
    }

    private final void a(Map map, Map map2, int i) {
        if (map2.isEmpty() || map.size() >= i) {
            return;
        }
        for (Map.Entry entry : map2.entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            String str = key instanceof String ? (String) key : null;
            if (str != null && value != null && !map.containsKey(str)) {
                map.put(str, value);
                if (map.size() >= i) {
                    return;
                }
            }
        }
    }

    private final void a(Map map, G0 g02) {
        String lowerCase;
        String string;
        String lowerCase2;
        String string2;
        if (map.isEmpty()) {
            return;
        }
        if (!g02.e()) {
            for (Map.Entry entry : map.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                String str = "";
                if (key == null || (string2 = key.toString()) == null || (lowerCase = string2.toLowerCase(Locale.ROOT)) == null) {
                    lowerCase = "";
                }
                if (value != null && (string = value.toString()) != null && (lowerCase2 = string.toLowerCase(Locale.ROOT)) != null) {
                    str = lowerCase2;
                }
                z0 z0Var = p;
                if (z0Var.q0().contains(lowerCase) || z0Var.q0().contains(str)) {
                    g02.a(true);
                    break;
                }
            }
        }
        if (map.size() <= 256) {
            z0 z0Var2 = p;
            int iA = a(map, z0Var2.p0());
            if (iA > g02.b()) {
                g02.a(iA);
                g02.a(map);
            }
            int iA2 = a(map, z0Var2.o0());
            if (iA2 < 1 || iA2 <= g02.d()) {
                return;
            }
            g02.b(iA2);
            g02.b(map);
        }
    }

    private final String a(Object obj) {
        String string;
        String string2;
        String string3;
        if (obj instanceof Iterable) {
            for (Object obj2 : (Iterable) obj) {
                if (obj2 == null || (string3 = obj2.toString()) == null || string3.length() <= 0) {
                    string3 = null;
                }
                if (string3 != null) {
                    return string3;
                }
            }
        } else if (obj instanceof Object[]) {
            for (Object obj3 : (Object[]) obj) {
                if (obj3 == null || (string2 = obj3.toString()) == null || string2.length() <= 0) {
                    string2 = null;
                }
                if (string2 != null) {
                    return string2;
                }
            }
        } else if (obj != null && (string = obj.toString()) != null && string.length() > 0) {
            return string;
        }
        return null;
    }

    private final int a(Map map, Set set) {
        String string;
        String lowerCase;
        String strReplace$default;
        int i = 0;
        for (Object obj : map.keySet()) {
            if (obj != null && (string = obj.toString()) != null && (lowerCase = string.toLowerCase(Locale.ROOT)) != null && (strReplace$default = StringsKt__StringsJVMKt.replace$default(lowerCase, '-', '_', false, 4, (Object) null)) != null && set.contains(strReplace$default)) {
                i++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(A0 a02) {
        if (a02 instanceof A0.a) {
            a(((A0.a) a02).a());
        } else if (a02 instanceof A0.C1142b) {
            a(((A0.C1142b) a02).a());
        }
    }

    private final void a(C4173a c4173a) {
        Object objM2760constructorimpl;
        for (InterfaceC1143b interfaceC1143b : this.d) {
            try {
                Result.Companion companion = Result.Companion;
                interfaceC1143b.a(c4173a);
                objM2760constructorimpl = Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
            Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
        }
    }

    private final void a(E0 e02) {
        Object objM2760constructorimpl;
        for (F0 f02 : this.e) {
            try {
                Result.Companion companion = Result.Companion;
                f02.a(e02);
                objM2760constructorimpl = Result.m2760constructorimpl(Unit.INSTANCE);
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
            }
            Result.m2763exceptionOrNullimpl(objM2760constructorimpl);
        }
    }

    private final Class a(Class cls) {
        for (Class cls2 : this.f.c(cls)) {
            if (b(cls2)) {
                Method[] declaredMethods = cls2.getDeclaredMethods();
                ArrayList arrayList = new ArrayList();
                for (Method method : declaredMethods) {
                    if (Modifier.isAbstract(method.getModifiers()) && Intrinsics.areEqual(method.getReturnType(), Void.TYPE)) {
                        arrayList.add(method);
                    }
                }
                if (arrayList.size() < 2) {
                    continue;
                } else {
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj : arrayList) {
                        if (o4$$ExternalSyntheticBackport0.m((Method) obj) == 1) {
                            arrayList2.add(obj);
                        }
                    }
                    ArrayList<Method> arrayList3 = new ArrayList();
                    for (Object obj2 : arrayList) {
                        if (o4$$ExternalSyntheticBackport0.m((Method) obj2) == 2) {
                            arrayList3.add(obj2);
                        }
                    }
                    if (!arrayList2.isEmpty() && !arrayList3.isEmpty()) {
                        Iterator it = arrayList2.iterator();
                        while (it.hasNext()) {
                            Class<?> cls3 = ((Method) it.next()).getParameterTypes()[0];
                            if (!cls3.isPrimitive() && b((Class) cls3)) {
                                for (Method method2 : arrayList3) {
                                    Class<?> cls4 = method2.getParameterTypes()[0];
                                    Class<?> cls5 = method2.getParameterTypes()[1];
                                    if (Intrinsics.areEqual(cls3, cls4) && !cls5.isPrimitive() && b((Class) cls5)) {
                                        return cls2;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    private final boolean a(List list) {
        Object obj;
        Object objM2760constructorimpl;
        f fVarZ0;
        Iterator it = list.iterator();
        if (it.hasNext()) {
            Object next = it.next();
            if (it.hasNext()) {
                int iD = ((D0) next).d();
                do {
                    Object next2 = it.next();
                    int iD2 = ((D0) next2).d();
                    if (iD < iD2) {
                        next = next2;
                        iD = iD2;
                    }
                } while (it.hasNext());
            }
            obj = next;
        } else {
            obj = null;
        }
        D0 d02 = (D0) obj;
        if (d02 == null) {
            return false;
        }
        Object objNewProxyInstance = Proxy.newProxyInstance(d02.b().getClassLoader(), new Class[]{d02.b()}, new C0());
        try {
            Result.Companion companion = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(Boolean.valueOf(d02.c().add(objNewProxyInstance)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        Boolean bool = Boolean.FALSE;
        if (Result.m2765isFailureimpl(objM2760constructorimpl)) {
            objM2760constructorimpl = bool;
        }
        if (!((Boolean) objM2760constructorimpl).booleanValue()) {
            return false;
        }
        this.c = new B0(d02.c(), d02.b(), objNewProxyInstance);
        List listA = d02.a();
        if (listA == null || (fVarZ0 = z0()) == null) {
            return true;
        }
        this.a.a("af" + fVarZ0, CollectionsKt___CollectionsKt.joinToString$default(listA, ",", null, null, 0, null, null, 62, null));
        return true;
    }
}
