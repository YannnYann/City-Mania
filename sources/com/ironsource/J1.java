package com.ironsource;

import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class J1 {
    private final Lb a;
    private final Q1 b;
    private final boolean c;
    private final N1 d;
    private final U1 e;
    private final H1 f;

    public J1(JSONObject applicationConfigurations) {
        Intrinsics.checkNotNullParameter(applicationConfigurations, "applicationConfigurations");
        JSONObject jSONObjectOptJSONObject = applicationConfigurations.optJSONObject(L1.a);
        this.a = new Lb(jSONObjectOptJSONObject == null ? new JSONObject() : jSONObjectOptJSONObject);
        JSONObject jSONObjectOptJSONObject2 = applicationConfigurations.optJSONObject("events");
        this.b = new Q1(jSONObjectOptJSONObject2 == null ? new JSONObject() : jSONObjectOptJSONObject2);
        this.c = applicationConfigurations.optBoolean(L1.g, false);
        JSONObject jSONObjectOptJSONObject3 = applicationConfigurations.optJSONObject(L1.h);
        this.d = new N1(jSONObjectOptJSONObject3 == null ? new JSONObject() : jSONObjectOptJSONObject3);
        JSONObject jSONObjectOptJSONObject4 = applicationConfigurations.optJSONObject("settings");
        this.e = new U1(jSONObjectOptJSONObject4 == null ? new JSONObject() : jSONObjectOptJSONObject4);
        JSONObject jSONObjectOptJSONObject5 = applicationConfigurations.optJSONObject(L1.f);
        this.f = new H1(jSONObjectOptJSONObject5 == null ? new JSONObject() : jSONObjectOptJSONObject5);
    }

    public final H1 a() {
        return this.f;
    }

    public final N1 b() {
        return this.d;
    }

    public final Q1 c() {
        return this.b;
    }

    public final U1 d() {
        return this.e;
    }

    public final boolean e() {
        return this.c;
    }

    public final Lb f() {
        return this.a;
    }
}
