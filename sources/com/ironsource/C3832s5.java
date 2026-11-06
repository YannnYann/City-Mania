package com.ironsource;

import com.ironsource.D7;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.ads.core.domain.WebViewScreenCapture;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.s5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3832s5 implements D7, D7.a {
    private JSONObject a = new JSONObject();
    private final Lazy b = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.s5$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(C3832s5.i(this.f$0));
        }
    });
    private final Lazy c = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.s5$$ExternalSyntheticLambda3
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(C3832s5.l(this.f$0));
        }
    });
    private final Lazy d = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.s5$$ExternalSyntheticLambda4
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(C3832s5.g(this.f$0));
        }
    });
    private final Lazy e = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.s5$$ExternalSyntheticLambda5
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(C3832s5.f(this.f$0));
        }
    });
    private final Lazy f = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.s5$$ExternalSyntheticLambda6
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(C3832s5.e(this.f$0));
        }
    });
    private final Lazy g = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.s5$$ExternalSyntheticLambda7
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(C3832s5.k(this.f$0));
        }
    });
    private final Lazy h = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.s5$$ExternalSyntheticLambda8
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(C3832s5.h(this.f$0));
        }
    });
    private final Lazy i = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.s5$$ExternalSyntheticLambda9
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(C3832s5.j(this.f$0));
        }
    });
    private final Lazy j = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.s5$$ExternalSyntheticLambda10
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(C3832s5.d(this.f$0));
        }
    });
    private final Lazy k = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.s5$$ExternalSyntheticLambda11
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(C3832s5.c(this.f$0));
        }
    });
    private final Lazy l = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.s5$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(C3832s5.b(this.f$0));
        }
    });
    private final Lazy m = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.s5$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(C3832s5.a(this.f$0));
        }
    });

    private final boolean N() {
        return ((Boolean) this.m.getValue()).booleanValue();
    }

    private final boolean O() {
        return ((Boolean) this.l.getValue()).booleanValue();
    }

    private final boolean P() {
        return ((Boolean) this.k.getValue()).booleanValue();
    }

    private final boolean Q() {
        return ((Boolean) this.j.getValue()).booleanValue();
    }

    private final boolean R() {
        return ((Boolean) this.f.getValue()).booleanValue();
    }

    private final boolean S() {
        return ((Boolean) this.e.getValue()).booleanValue();
    }

    private final boolean T() {
        return ((Boolean) this.d.getValue()).booleanValue();
    }

    private final boolean U() {
        return ((Boolean) this.h.getValue()).booleanValue();
    }

    private final boolean V() {
        return ((Boolean) this.b.getValue()).booleanValue();
    }

    private final boolean W() {
        return ((Boolean) this.i.getValue()).booleanValue();
    }

    private final boolean X() {
        return ((Boolean) this.g.getValue()).booleanValue();
    }

    private final boolean Y() {
        return ((Boolean) this.c.getValue()).booleanValue();
    }

    private final JSONObject Z() {
        JSONObject jSONObjectOptJSONObject = this.a.optJSONObject("traits");
        return jSONObjectOptJSONObject == null ? new JSONObject() : jSONObjectOptJSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean e(C3832s5 c3832s5) {
        return c3832s5.Z().optBoolean(C3888v5.v, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean g(C3832s5 c3832s5) {
        return c3832s5.Z().optBoolean(C3888v5.y, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean h(C3832s5 c3832s5) {
        return c3832s5.Z().optBoolean(C3888v5.q, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean i(C3832s5 c3832s5) {
        return c3832s5.Z().optBoolean(C3888v5.w, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean j(C3832s5 c3832s5) {
        return c3832s5.Z().optBoolean(C3888v5.p, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean l(C3832s5 c3832s5) {
        return c3832s5.Z().optBoolean(C3888v5.x, false);
    }

    @Override // com.ironsource.InterfaceC3870u5
    public int A() {
        String strOptString = Z().optString(C3888v5.h);
        Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
        Integer intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(strOptString);
        if (intOrNull != null) {
            return intOrNull.intValue();
        }
        return 2;
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean B() {
        return Z().optBoolean(C3888v5.H, true);
    }

    @Override // com.ironsource.InterfaceC3870u5
    public int C() {
        String strOptString = Z().optString(C3888v5.s);
        Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
        Integer intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(strOptString);
        if (intOrNull != null) {
            return intOrNull.intValue();
        }
        return 2;
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean D() {
        return O();
    }

    @Override // com.ironsource.InterfaceC3870u5
    public int E() {
        String strOptString = Z().optString(C3888v5.a);
        Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
        Integer intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(strOptString);
        if (intOrNull != null) {
            return intOrNull.intValue();
        }
        return 0;
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean F() {
        return Z().optBoolean(C3888v5.C, false);
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean G() {
        return Z().optBoolean(C3888v5.n, false);
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean H() {
        return Z().optBoolean(C3888v5.L, false);
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean I() {
        return U();
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean J() {
        return X();
    }

    @Override // com.ironsource.InterfaceC3870u5
    public long K() {
        String strOptString = Z().optString(C3888v5.c);
        Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
        Long longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(strOptString);
        if (longOrNull != null) {
            return longOrNull.longValue();
        }
        return 50L;
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean L() {
        return Q();
    }

    @Override // com.ironsource.InterfaceC3870u5
    public int M() {
        String strOptString = Z().optString(C3888v5.t);
        Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
        Integer intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(strOptString);
        if (intOrNull != null) {
            return intOrNull.intValue();
        }
        return 2;
    }

    @Override // com.ironsource.D7.a
    public void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = this.a;
        }
        this.a = jSONObject;
        IronLog.INTERNAL.verbose("setEpConfig: " + jSONObject);
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean b() {
        return R();
    }

    @Override // com.ironsource.InterfaceC3870u5
    public int c() {
        String strOptString = Z().optString(C3888v5.b);
        Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
        Integer intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(strOptString);
        if (intOrNull != null) {
            return intOrNull.intValue();
        }
        return 3;
    }

    @Override // com.ironsource.D7
    public JSONObject config() {
        return this.a;
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean d() {
        return Z().optBoolean(C3888v5.i, true);
    }

    @Override // com.ironsource.InterfaceC3870u5
    public long f() {
        String strOptString = Z().optString(C3888v5.d);
        Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
        Long longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(strOptString);
        if (longOrNull != null) {
            return longOrNull.longValue();
        }
        return 0L;
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean k() {
        return Z().optBoolean(C3888v5.k, true);
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean m() {
        return Z().optBoolean(C3888v5.D, true);
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean n() {
        return Z().optBoolean(C3888v5.f, false);
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean o() {
        return P();
    }

    @Override // com.ironsource.InterfaceC3870u5
    public long p() {
        String strOptString = Z().optString(C3888v5.e);
        Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
        Long longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(strOptString);
        return longOrNull != null ? longOrNull.longValue() : WebViewScreenCapture.CACHE_TTL_MS;
    }

    @Override // com.ironsource.InterfaceC3870u5
    public int q() {
        String strOptString = Z().optString(C3888v5.M);
        Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
        Integer intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(strOptString);
        if (intOrNull != null) {
            return intOrNull.intValue();
        }
        return 5;
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean r() {
        return V();
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean s() {
        return S();
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean t() {
        return Y();
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean u() {
        return W();
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean v() {
        return Z().optBoolean(C3888v5.m, true);
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean w() {
        return Z().optBoolean(C3888v5.G, false);
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean x() {
        return Z().optBoolean(C3888v5.A, false);
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean y() {
        return Z().optBoolean(C3888v5.l, false);
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean z() {
        return Z().optBoolean(C3888v5.j, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean b(C3832s5 c3832s5) {
        return c3832s5.Z().optBoolean(C3888v5.J, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean c(C3832s5 c3832s5) {
        return c3832s5.Z().optBoolean(C3888v5.u, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d(C3832s5 c3832s5) {
        return c3832s5.Z().optBoolean(C3888v5.o, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean f(C3832s5 c3832s5) {
        return c3832s5.Z().optBoolean(C3888v5.z, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean k(C3832s5 c3832s5) {
        return c3832s5.Z().optBoolean(C3888v5.r, false);
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean e() {
        return N();
    }

    @Override // com.ironsource.InterfaceC3870u5
    public int g() {
        String strOptString = Z().optString(C3888v5.N);
        Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
        Integer intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(strOptString);
        if (intOrNull != null) {
            return intOrNull.intValue();
        }
        return 48;
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean h() {
        return Z().optBoolean(C3888v5.I, false);
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean i() {
        return Z().optBoolean(C3888v5.F, false);
    }

    @Override // com.ironsource.InterfaceC3870u5
    public int j() {
        String strOptString = Z().optString(C3888v5.g);
        Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
        Integer intOrNull = StringsKt__StringNumberConversionsKt.toIntOrNull(strOptString);
        if (intOrNull != null) {
            return intOrNull.intValue();
        }
        return 2;
    }

    @Override // com.ironsource.InterfaceC3870u5
    public boolean l() {
        return T();
    }

    @Override // com.ironsource.InterfaceC3870u5
    public String a() {
        String strOptString = Z().optString("controllerUrl", "");
        Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
        return strOptString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a(C3832s5 c3832s5) {
        return c3832s5.Z().optBoolean(C3888v5.K, true);
    }
}
