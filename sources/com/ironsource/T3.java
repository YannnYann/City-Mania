package com.ironsource;

import com.unity3d.mediation.LevelPlay;
import java.util.Map;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class T3 {
    private final C3844t a;
    private final C3844t b;
    private final C3460a3 c;
    private final Xb d;
    private final J1 e;
    private final Map<LevelPlay.AdFormat, C3844t> f;

    public T3(JSONObject configurations) {
        Intrinsics.checkNotNullParameter(configurations, "configurations");
        C3844t c3844t = new C3844t(a(configurations, "rewarded"));
        this.a = c3844t;
        C3844t c3844t2 = new C3844t(a(configurations, "interstitial"));
        this.b = c3844t2;
        this.c = new C3460a3(a(configurations, "banner"));
        this.d = new Xb(a(configurations, "nativeAd"));
        JSONObject jSONObjectOptJSONObject = configurations.optJSONObject("application");
        this.e = new J1(jSONObjectOptJSONObject == null ? new JSONObject() : jSONObjectOptJSONObject);
        this.f = MapsKt__MapsKt.mapOf(TuplesKt.to(LevelPlay.AdFormat.INTERSTITIAL, c3844t2), TuplesKt.to(LevelPlay.AdFormat.REWARDED, c3844t));
    }

    public final Map<LevelPlay.AdFormat, C3844t> a() {
        return this.f;
    }

    public final J1 b() {
        return this.e;
    }

    public final C3460a3 c() {
        return this.c;
    }

    public final Xb d() {
        return this.d;
    }

    private final JSONObject a(JSONObject jSONObject, String str) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("adFormats");
        return (jSONObjectOptJSONObject2 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject(str)) == null) ? new JSONObject() : jSONObjectOptJSONObject;
    }
}
