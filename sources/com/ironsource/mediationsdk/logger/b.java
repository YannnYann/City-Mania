package com.ironsource.mediationsdk.logger;

import com.ironsource.C3813r4;
import com.ironsource.G4;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
class b {
    private IronSourceLogger.IronSourceTag a;
    private String b;
    private String c;
    private int d;

    public b(IronSourceLogger.IronSourceTag ironSourceTag, String str, String str2, int i) {
        this.a = ironSourceTag;
        this.b = str;
        this.c = str2;
        this.d = i;
    }

    public int a() {
        return this.d;
    }

    public JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(G4.a.d, this.b);
            jSONObject.put("tag", this.a);
            jSONObject.put("level", this.d);
            jSONObject.put("message", this.c);
            return jSONObject;
        } catch (JSONException e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return jSONObject;
        }
    }
}
