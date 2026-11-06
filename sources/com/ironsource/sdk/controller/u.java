package com.ironsource.sdk.controller;

import android.content.Context;
import com.ironsource.C3730me;
import com.ironsource.C3750ng;
import com.ironsource.C3813r4;
import com.ironsource.C3877uc;
import com.ironsource.InterfaceC3875ua;
import com.ironsource.environment.StringUtils;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.sdk.utils.Logger;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class u {
    private static final String d = "u";
    private static final String e = "updateToken";
    private static final String f = "getToken";
    private static final String g = "functionName";
    private static final String h = "functionParams";
    private static final String i = "success";
    private static final String j = "fail";
    private Context b;
    private C3877uc a = new C3877uc();
    private C3750ng c = new C3750ng();

    public static class a {
        String a;
        JSONObject b;
        String c;
        String d;

        private a() {
        }
    }

    public u(Context context) {
        this.b = context;
    }

    private a a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        a aVar = new a();
        aVar.a = jSONObject.optString("functionName");
        aVar.b = jSONObject.optJSONObject("functionParams");
        aVar.c = jSONObject.optString("success");
        aVar.d = jSONObject.optString("fail");
        return aVar;
    }

    public void a(String str, InterfaceC3875ua interfaceC3875ua) throws Exception {
        a aVarA = a(str);
        if (e.equals(aVarA.a)) {
            a(aVarA.b, aVarA, interfaceC3875ua);
            return;
        }
        if (f.equals(aVarA.a)) {
            a(aVarA, interfaceC3875ua);
            return;
        }
        Logger.i(d, "unhandled API request " + str);
    }

    public void a(JSONObject jSONObject, a aVar, InterfaceC3875ua interfaceC3875ua) {
        C3730me c3730me = new C3730me();
        try {
            this.a.a(jSONObject);
            interfaceC3875ua.a(true, aVar.c, c3730me);
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            IronLog.INTERNAL.error(e2.toString());
            Logger.i(d, "updateToken exception " + e2.getMessage());
            interfaceC3875ua.a(false, aVar.d, c3730me);
        }
    }

    private void a(a aVar, InterfaceC3875ua interfaceC3875ua) {
        try {
            JSONObject jSONObjectA = this.c.a();
            Iterator<String> itKeys = jSONObjectA.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                Object obj = jSONObjectA.get(next);
                if (obj instanceof String) {
                    jSONObjectA.put(next, StringUtils.encodeURI((String) obj));
                }
            }
            interfaceC3875ua.a(true, aVar.c, jSONObjectA);
        } catch (Exception e2) {
            C3813r4.d().a(e2);
            interfaceC3875ua.a(false, aVar.d, e2.getMessage());
        }
    }
}
