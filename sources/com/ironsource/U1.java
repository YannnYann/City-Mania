package com.ironsource;

import com.ironsource.C3522b4;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class U1 {
    private final JSONObject a;
    private final boolean b;
    private final String c;
    private final boolean d;
    private final boolean e;
    private final int f;
    private final boolean g;
    private final boolean h;
    private final int i;
    private final boolean j;
    private final boolean k;
    private final JSONObject l;
    private final JSONArray m;

    public U1(JSONObject config) {
        Intrinsics.checkNotNullParameter(config, "config");
        this.a = config;
        this.b = config.optBoolean("isExternalArmEventsEnabled", true);
        String strOptString = config.optString("externalArmEventsUrl", U5.j);
        Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
        this.c = strOptString;
        this.d = config.optBoolean(R6.e1, true);
        this.e = config.optBoolean("radvid", false);
        this.f = config.optInt("uaeh", 0);
        this.g = config.optBoolean("sharedThreadPool", false);
        this.h = config.optBoolean("sharedThreadPoolADP", true);
        this.i = config.optInt(R6.V0, -1);
        this.j = config.optBoolean("axal", false);
        this.k = config.optBoolean("psrt", false);
        this.l = config.optJSONObject(C3522b4.a.c);
        this.m = config.optJSONArray("ilrSubscribers");
    }

    private final JSONObject a() {
        return this.a;
    }

    public final int b() {
        return this.i;
    }

    public final JSONObject c() {
        return this.l;
    }

    public final String d() {
        return this.c;
    }

    public final JSONArray e() {
        return this.m;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof U1) && Intrinsics.areEqual(this.a, ((U1) obj).a);
    }

    public final boolean f() {
        return this.k;
    }

    public final boolean g() {
        return this.e;
    }

    public final boolean h() {
        return this.d;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public final boolean i() {
        return this.g;
    }

    public final boolean j() {
        return this.h;
    }

    public final int k() {
        return this.f;
    }

    public final boolean l() {
        return this.j;
    }

    public final boolean m() {
        return this.b;
    }

    public String toString() {
        return "ApplicationGeneralSettings(config=" + this.a + ")";
    }

    public final U1 a(JSONObject config) {
        Intrinsics.checkNotNullParameter(config, "config");
        return new U1(config);
    }

    public static /* synthetic */ U1 a(U1 u1, JSONObject jSONObject, int i, Object obj) {
        if ((i & 1) != 0) {
            jSONObject = u1.a;
        }
        return u1.a(jSONObject);
    }
}
