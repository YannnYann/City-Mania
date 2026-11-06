package com.ironsource;

import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class Ae {
    private final Ue a;
    private final Kd b;
    private final Md c;
    private final T3 d;
    private final R5 e;

    public Ae(Ue fullResponse) {
        Intrinsics.checkNotNullParameter(fullResponse, "fullResponse");
        this.a = fullResponse;
        JSONObject jSONObjectOptJSONObject = fullResponse.j().optJSONObject(Be.a);
        this.b = new Kd(jSONObjectOptJSONObject == null ? new JSONObject() : jSONObjectOptJSONObject);
        JSONObject jSONObjectOptJSONObject2 = fullResponse.j().optJSONObject(Be.b);
        this.c = new Md(jSONObjectOptJSONObject2 == null ? new JSONObject() : jSONObjectOptJSONObject2);
        JSONObject jSONObjectOptJSONObject3 = fullResponse.j().optJSONObject("configurations");
        this.d = new T3(jSONObjectOptJSONObject3 == null ? new JSONObject() : jSONObjectOptJSONObject3);
        JSONObject jSONObjectOptJSONObject4 = fullResponse.j().optJSONObject(Be.d);
        this.e = new R5(jSONObjectOptJSONObject4 == null ? new JSONObject() : jSONObjectOptJSONObject4);
    }

    public final T3 a() {
        return this.d;
    }

    public final R5 b() {
        return this.e;
    }

    public final Ue c() {
        return this.a;
    }

    public final Kd d() {
        return this.b;
    }

    public final Md e() {
        return this.c;
    }
}
