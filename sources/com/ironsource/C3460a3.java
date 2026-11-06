package com.ironsource;

import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.a3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3460a3 {
    private final a a;
    private final Map<String, a> b;

    /* JADX INFO: renamed from: com.ironsource.a3$a */
    public static final class a {
        private final JSONObject a;
        private final int b;
        private final boolean c;
        private final long d;
        private final float e;
        private final List<String> f;

        public a(JSONObject features) {
            Intrinsics.checkNotNullParameter(features, "features");
            JSONObject jSONObject = features.has(C3539c3.a) ? features : null;
            JSONObject jSONObjectOptJSONObject = jSONObject != null ? jSONObject.optJSONObject(C3539c3.a) : null;
            this.a = jSONObjectOptJSONObject;
            int iOptInt = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optInt(C3539c3.b, C3539c3.g) : C3539c3.g;
            this.b = iOptInt;
            this.c = jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.optBoolean("enabled", true) : true;
            this.d = (jSONObjectOptJSONObject == null || !jSONObjectOptJSONObject.has(C3539c3.d) || jSONObjectOptJSONObject.isNull(C3539c3.d)) ? iOptInt : jSONObjectOptJSONObject.optLong(C3539c3.d);
            this.e = features.has(C3539c3.e) ? features.optInt(C3539c3.e) / 100.0f : 0.15f;
            List<String> listB = features.has(C3539c3.f) ? C3780pa.b(features.getJSONArray(C3539c3.f)) : CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"BANNER", "LEADERBOARD"});
            Intrinsics.checkNotNullExpressionValue(listB, "let(...)");
            this.f = listB;
        }

        public final List<String> a() {
            return this.f;
        }

        public final float b() {
            return this.e;
        }

        public final int c() {
            return this.b;
        }

        public final long d() {
            return this.d;
        }

        public final boolean e() {
            return this.c;
        }
    }

    public C3460a3(JSONObject bannerConfigurations) {
        Intrinsics.checkNotNullParameter(bannerConfigurations, "bannerConfigurations");
        this.a = new a(bannerConfigurations);
        this.b = new Y0(bannerConfigurations).a(new Function1() { // from class: com.ironsource.a3$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return C3460a3.a((JSONObject) obj);
            }
        });
    }

    public final Map<String, a> a() {
        return this.b;
    }

    public final a b() {
        return this.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final a a(JSONObject it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return new a(it);
    }
}
