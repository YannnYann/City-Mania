package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｱ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C1000 {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String f3801;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final JSONObject f3802;

    public C1000(JSONObject jSONObject) {
        String string = UUID.randomUUID().toString();
        this.f3802 = jSONObject;
        this.f3801 = string;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final JSONObject m1589() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(StringFog.decrypt("jzMj5Hns5B8=\n", "/1xQkD2NkH4=\n"), this.f3802);
        jSONObject.put(StringFog.decrypt("MlLyaQ==\n", "RyebDQbnck4=\n"), this.f3801);
        return jSONObject;
    }

    public C1000(String str, JSONObject jSONObject) {
        this.f3802 = jSONObject;
        this.f3801 = str;
    }
}
