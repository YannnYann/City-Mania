package com.ironsource;

import com.ironsource.C3522b4;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class Bf {
    private final JSONObject a;

    public Bf(JSONObject jSONObject) {
        this.a = jSONObject == null ? new JSONObject() : jSONObject;
    }

    public boolean a() {
        return this.a.optBoolean("uxt", false);
    }

    public boolean b() {
        return this.a.optBoolean(C3522b4.a.o, false);
    }

    public boolean c() {
        return this.a.optBoolean(C3522b4.a.p, false);
    }

    public boolean d() {
        return this.a.optBoolean(C3522b4.a.l, false);
    }

    public boolean e() {
        return this.a.optBoolean(C3522b4.a.n, false);
    }
}
