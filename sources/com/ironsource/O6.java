package com.ironsource;

import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class O6 {
    public static final String b = "userId";
    public static final String c = "appKey";
    private static O6 d;
    private final JSONObject a = new JSONObject();

    private O6() {
    }

    public static synchronized O6 a() {
        try {
            if (d == null) {
                d = new O6();
            }
        } catch (Throwable th) {
            throw th;
        }
        return d;
    }

    public synchronized JSONObject b() throws JSONException {
        if (Pb.k0().h().y()) {
            return new JSONObject(this.a.toString());
        }
        return this.a;
    }

    public synchronized void a(Map<String, Object> map) {
        if (map != null) {
            for (String str : map.keySet()) {
                a(str, map.get(str));
            }
        }
    }

    public synchronized void a(String str, Object obj) {
        try {
            this.a.put(str, obj);
        } catch (Exception e) {
            C3813r4.d().a(e);
        }
    }

    public synchronized String a(String str) {
        return this.a.optString(str);
    }
}
