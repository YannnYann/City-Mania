package com.ironsource.sdk.controller;

import android.content.Context;
import com.ironsource.B7;
import com.ironsource.C3522b4;
import com.ironsource.C3730me;
import com.ironsource.InterfaceC3875ua;
import com.ironsource.Pb;
import com.ironsource.sdk.utils.Logger;
import com.ironsource.sdk.utils.SDKUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class i {
    private static final String c = "i";
    private static final String d = "getDeviceData";
    private static final String e = "deviceDataFunction";
    private static final String f = "deviceDataParams";
    private static final String g = "success";
    private static final String h = "fail";
    private Context a;
    private final B7 b = Pb.k0().a();

    public static class a {
        String a;
        JSONObject b;
        String c;
        String d;

        private a() {
        }
    }

    public i(Context context) {
        this.a = context;
    }

    public void a(String str, InterfaceC3875ua interfaceC3875ua) throws Exception {
        a aVarA = a(str);
        if (d.equals(aVarA.a)) {
            interfaceC3875ua.a(true, aVarA.c, a());
            return;
        }
        Logger.i(c, "unhandled API request " + str);
    }

    private C3730me a() {
        C3730me c3730me = new C3730me();
        c3730me.b(SDKUtils.encodeString(C3522b4.j.i0), SDKUtils.encodeString(String.valueOf(this.b.j())));
        c3730me.b(SDKUtils.encodeString(C3522b4.j.j0), SDKUtils.encodeString(String.valueOf(this.b.r(this.a))));
        c3730me.b(SDKUtils.encodeString(C3522b4.j.k0), SDKUtils.encodeString(String.valueOf(this.b.D(this.a))));
        c3730me.b(SDKUtils.encodeString(C3522b4.j.l0), SDKUtils.encodeString(String.valueOf(this.b.E(this.a))));
        c3730me.b(SDKUtils.encodeString(C3522b4.j.m0), SDKUtils.encodeString(String.valueOf(this.b.f(this.a))));
        c3730me.b(SDKUtils.encodeString(C3522b4.j.n0), SDKUtils.encodeString(String.valueOf(this.b.i(this.a))));
        return c3730me;
    }

    private a a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        a aVar = new a();
        aVar.a = jSONObject.optString(e);
        aVar.b = jSONObject.optJSONObject(f);
        aVar.c = jSONObject.optString("success");
        aVar.d = jSONObject.optString("fail");
        return aVar;
    }
}
