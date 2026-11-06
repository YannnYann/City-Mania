package com.ironsource;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class P3 implements Y5 {
    private final JSONObject a;

    public static final class a {
        public static final a a = new a();
        public static final boolean b = false;

        private a() {
        }
    }

    public P3(JSONObject jSONObject) {
        this.a = jSONObject == null ? new JSONObject() : jSONObject;
    }

    @Override // com.ironsource.Y5
    public boolean b() {
        return this.a.optBoolean("clickCheck", false);
    }
}
