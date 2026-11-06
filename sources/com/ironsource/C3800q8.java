package com.ironsource;

import android.content.Context;
import com.ironsource.C3522b4;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.sdk.utils.IronSourceStorageUtils;
import com.ironsource.sdk.utils.Logger;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.q8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3800q8 implements InterfaceC3519b1 {
    private static final String b = "q8";
    private static C3800q8 c;
    private final Map<String, L8> a = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: com.ironsource.q8$a */
    public class a implements Runnable {
        final /* synthetic */ C3778p8 a;
        final /* synthetic */ Context b;
        final /* synthetic */ String c;

        public a(C3778p8 c3778p8, Context context, String str) {
            this.a = c3778p8;
            this.b = context;
            this.c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3800q8.this.a.put(this.c, new C3688k8(this.a, this.b));
        }
    }

    public static synchronized C3800q8 a() {
        try {
            if (c == null) {
                c = new C3800q8();
            }
        } catch (Throwable th) {
            throw th;
        }
        return c;
    }

    private C3653i8 b(JSONObject jSONObject) {
        C3653i8 c3653i8 = new C3653i8();
        try {
            return a(jSONObject);
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
            return c3653i8;
        }
    }

    private boolean d(JSONObject jSONObject) {
        return jSONObject.optBoolean(C3522b4.i.s0);
    }

    public String c(JSONObject jSONObject) throws JSONException {
        return (jSONObject == null || !jSONObject.has("adViewId")) ? (jSONObject == null || !jSONObject.has("params")) ? "" : new JSONObject(jSONObject.getString("params")).getString("adViewId") : jSONObject.getString("adViewId");
    }

    public void d(JSONObject jSONObject, String str, String str2) throws Exception {
        String string = new JSONObject(jSONObject.getString("params")).getString("adViewId");
        if (string.isEmpty()) {
            Logger.i(b, "sendMessageToAd fail - adViewId is empty");
            throw new Exception("adViewId is empty");
        }
        if (!this.a.containsKey(string)) {
            Logger.i(b, "sendMessageToAd fail - collection does not contain adViewId");
            throw new Exception("collection does not contain adViewId");
        }
        L8 l8 = this.a.get(string);
        if (l8 != null) {
            l8.c(jSONObject, str, str2);
        }
    }

    private C3653i8 a(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject(jSONObject.getString(C3522b4.i.O));
            String string = jSONObject2.get("height").toString();
            String string2 = jSONObject2.get("width").toString();
            return new C3653i8(Integer.parseInt(string2), Integer.parseInt(string), jSONObject2.get("label").toString());
        } catch (Exception e) {
            C3813r4.d().a(e);
            return new C3653i8();
        }
    }

    public void b(JSONObject jSONObject, String str, String str2) throws Exception {
        String string = jSONObject.getString("adViewId");
        if (!string.isEmpty()) {
            if (this.a.containsKey(string)) {
                L8 l8 = this.a.get(string);
                String string2 = jSONObject.getString(C3522b4.i.v0);
                if (l8 != null) {
                    l8.a(string2, str, str2);
                    return;
                }
                return;
            }
            Logger.i(b, "performWebViewAction fail - collection does not contain adViewId");
            throw new Exception("collection does not contain adViewId");
        }
        Logger.i(b, "performWebViewAction fail - adViewId is empty");
        throw new Exception("adViewId is empty");
    }

    public void c(JSONObject jSONObject, String str, String str2) throws Exception {
        String string = jSONObject.getString("adViewId");
        if (!string.isEmpty()) {
            if (this.a.containsKey(string)) {
                L8 l8 = this.a.get(string);
                this.a.remove(string);
                if (l8 != null) {
                    l8.a(str, str2);
                    return;
                }
                return;
            }
            Logger.i(b, "removeAdView fail - collection does not contain adViewId");
            throw new Exception("collection does not contain adViewId");
        }
        Logger.i(b, "removeAdView fail - adViewId is empty");
        throw new Exception("adViewId is empty");
    }

    public void a(InterfaceC3706l8 interfaceC3706l8, JSONObject jSONObject, Context context, String str, String str2) throws Exception {
        String string = jSONObject.getString("adViewId");
        if (!string.isEmpty()) {
            C3653i8 c3653i8B = b(jSONObject);
            if (!this.a.containsKey(string)) {
                C3778p8 c3778p8 = new C3778p8(interfaceC3706l8, context, string, c3653i8B);
                c3778p8.e(IronSourceStorageUtils.getNetworkStorageDir(context));
                c3778p8.b(jSONObject, str, str2);
                if (d(jSONObject)) {
                    V7.a.d(new a(c3778p8, context, string));
                    return;
                } else {
                    this.a.put(string, c3778p8);
                    return;
                }
            }
            Logger.i(b, "sendMessageToAd fail - collection already contain adViewId");
            throw new Exception("collection already contain adViewId");
        }
        Logger.i(b, "loadWithUrl fail - adViewId is empty");
        throw new Exception("adViewId is empty");
    }

    @Override // com.ironsource.InterfaceC3519b1
    public L8 a(String str) {
        if (str.isEmpty() || !this.a.containsKey(str)) {
            return null;
        }
        return this.a.get(str);
    }

    public void a(JSONObject jSONObject, String str, String str2) throws Exception {
        String string = jSONObject.getString("adViewId");
        if (!string.isEmpty()) {
            if (this.a.containsKey(string)) {
                L8 l8 = this.a.get(string);
                if (l8 != null) {
                    l8.a(jSONObject, str, str2);
                    return;
                }
                return;
            }
            Logger.i(b, "removeAdView fail - collection does not contain adViewId");
            throw new Exception("collection does not contain adViewId");
        }
        Logger.i(b, "removeAdView fail - adViewId is empty");
        throw new Exception("adViewId is empty");
    }
}
