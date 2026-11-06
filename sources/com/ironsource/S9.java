package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.sdk.utils.SDKUtils;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class S9 {
    private String a;
    private String e;
    private Map<String, String> f;
    private final Oc g;
    private boolean h;
    private boolean b = false;
    private boolean c = false;
    private C3653i8 d = null;
    protected boolean i = false;
    protected String j = null;

    public S9(String str, Oc oc) throws NullPointerException {
        this.a = SDKUtils.requireNonEmptyOrNull(str, "Instance name can't be null");
        this.g = (Oc) SDKUtils.requireNonNull(oc, "AdListener name can't be null");
    }

    public S9 a(boolean z) {
        this.c = z;
        return this;
    }

    public S9 b(boolean z) {
        this.i = z;
        return this;
    }

    public S9 c() {
        this.b = true;
        return this;
    }

    public S9 a(C3653i8 c3653i8) {
        this.d = c3653i8;
        return this;
    }

    public S9 b(String str) {
        this.j = str;
        return this;
    }

    public S9 c(boolean z) {
        this.h = z;
        return this;
    }

    public S9 a(String str) {
        this.e = str;
        return this;
    }

    public String b() {
        String str = this.e;
        if (str != null) {
            return str;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", this.a);
            jSONObject.put("rewarded", this.b);
        } catch (JSONException e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
        return (this.c || this.h) ? C3565da.a() : C3565da.a(jSONObject);
    }

    public S9 a(Map<String, String> map) {
        this.f = map;
        return this;
    }

    public R9 a() {
        return new R9(b(), this.a, this.b, this.c, this.h, this.i, this.j, this.f, this.g, this.d);
    }
}
