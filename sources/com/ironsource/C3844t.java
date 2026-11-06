package com.ironsource;

import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3844t {
    public static final a d = new a(null);
    public static final String e = "capping";
    public static final String f = "pacing";
    public static final String g = "delivery";
    public static final String h = "progressiveLoadingConfig";
    public static final String i = "expiredDurationInMinutes";
    public static final String j = "reward";
    public static final String k = "name";
    public static final String l = "amount";
    public static final String m = "virtualItemName";
    public static final String n = "virtualItemCount";
    public static final long o = 60;
    private final Map<String, b> a;
    private final b b;
    private final Map<String, b> c;

    /* JADX INFO: renamed from: com.ironsource.t$a */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: renamed from: com.ironsource.t$b */
    public static final class b {
        private final H3 a;
        private final C3640hd b;
        private final Q4 c;
        private final Long d;
        private final Ud e;
        private final Ud f;
        private final Hd g;

        public b(JSONObject features) throws JSONException {
            H3 h3;
            C3640hd c3640hd;
            Intrinsics.checkNotNullParameter(features, "features");
            Hd hd = null;
            if (features.has(C3844t.e)) {
                JSONObject jSONObject = features.getJSONObject(C3844t.e);
                Intrinsics.checkNotNullExpressionValue(jSONObject, "getJSONObject(...)");
                h3 = new H3(jSONObject);
            } else {
                h3 = null;
            }
            this.a = h3;
            if (features.has(C3844t.f)) {
                JSONObject jSONObject2 = features.getJSONObject(C3844t.f);
                Intrinsics.checkNotNullExpressionValue(jSONObject2, "getJSONObject(...)");
                c3640hd = new C3640hd(jSONObject2);
            } else {
                c3640hd = null;
            }
            this.b = c3640hd;
            this.c = features.has(C3844t.g) ? new Q4(features.getBoolean(C3844t.g)) : null;
            this.d = features.has(C3844t.i) ? Long.valueOf(features.getLong(C3844t.i)) : null;
            JSONObject jSONObjectOptJSONObject = features.optJSONObject(C3844t.j);
            this.e = jSONObjectOptJSONObject != null ? new Ud(jSONObjectOptJSONObject, "name", C3844t.l) : null;
            Ud ud = new Ud(features, C3844t.m, C3844t.n);
            String strB = ud.b();
            this.f = (strB == null || strB.length() == 0 || ud.a() == null) ? null : ud;
            if (features.has(C3844t.h)) {
                JSONObject jSONObject3 = features.getJSONObject(C3844t.h);
                Intrinsics.checkNotNullExpressionValue(jSONObject3, "getJSONObject(...)");
                hd = new Hd(jSONObject3);
            }
            this.g = hd;
        }

        public final Ud a() {
            return this.e;
        }

        public final H3 b() {
            return this.a;
        }

        public final Q4 c() {
            return this.c;
        }

        public final Long d() {
            return this.d;
        }

        public final C3640hd e() {
            return this.b;
        }

        public final Ud f() {
            return this.f;
        }

        public final Hd g() {
            return this.g;
        }
    }

    public C3844t(JSONObject configurations) {
        Intrinsics.checkNotNullParameter(configurations, "configurations");
        this.a = new C3878ud(configurations).a(new Function1() { // from class: com.ironsource.t$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return C3844t.b((JSONObject) obj);
            }
        });
        this.b = new b(configurations);
        this.c = new Y0(configurations).a(new Function1() { // from class: com.ironsource.t$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return C3844t.a((JSONObject) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b a(JSONObject it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return new b(it);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b b(JSONObject it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return new b(it);
    }

    public final Map<String, b> c() {
        return this.a;
    }

    public final Map<String, b> a() {
        return this.c;
    }

    public final b b() {
        return this.b;
    }
}
