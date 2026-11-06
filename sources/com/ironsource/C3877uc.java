package com.ironsource;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.ironsource.C3522b4;
import com.ironsource.C3855t8;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.sdk.utils.IronSourceQaProperties;
import com.ironsource.sdk.utils.IronSourceStorageUtils;
import com.ironsource.sdk.utils.SDKUtils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.uc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3877uc {
    private final B7 b = Pb.k0().a();
    V6 a = new V6();

    public void a(Context context) {
        if (context instanceof Activity) {
            this.a.a(R6.n, Boolean.valueOf(this.b.a((Activity) context)));
        }
    }

    public void b() {
        String controllerConfig = SDKUtils.getControllerConfig();
        if (TextUtils.isEmpty(controllerConfig)) {
            return;
        }
        try {
            this.a.a(R6.i, new JSONObject(controllerConfig).opt(C3522b4.a.q));
        } catch (JSONException e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    public void c() {
        this.a.a("uxt", Boolean.valueOf(IronSourceStorageUtils.isUxt()));
    }

    public void d() {
        this.a.a(R6.V, "9.6.1");
    }

    public void e() {
        HashMap map = new HashMap();
        map.put(R6.E, Nc.f);
        map.put(R6.D, Nc.e);
        this.a.a(map);
    }

    public void a() {
        JSONObject jSONObject = new JSONObject(IronSourceQaProperties.getInstance().getParameters());
        if (jSONObject.length() > 0) {
            this.a.a("debug", jSONObject);
        }
    }

    public void a(JSONObject jSONObject) {
        this.a.a(R6.l, jSONObject);
    }

    public void a(C3855t8.c cVar) {
        this.a.a(R6.y1, Integer.valueOf(cVar.ordinal()));
    }

    public void a(Map<String, JSONObject> map) {
        for (Map.Entry<String, JSONObject> entry : map.entrySet()) {
            this.a.a(entry.getKey(), (Object) entry.getValue());
        }
    }

    public void a(List<String> list) {
        this.a.a(R6.B1, list);
    }

    public void a(boolean z) {
        this.a.a(R6.U0, Boolean.valueOf(z));
    }
}
