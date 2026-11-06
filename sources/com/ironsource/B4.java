package com.ironsource;

import android.content.Context;
import android.text.TextUtils;
import com.ironsource.C3522b4;
import com.ironsource.Cc;
import com.ironsource.sdk.utils.Logger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class B4 {
    private static final String c = "B4";
    private static final String d = "setSharedSignal";
    private static final String e = "getSharedSignal";
    private static final String f = "functionName";
    private static final String g = "functionParams";
    private static final String h = "success";
    private static final String i = "fail";
    private final Context a;
    A4 b;

    public static class a {
        String a;
        JSONObject b;
        String c;
        String d;

        private a() {
        }

        public static a a(JSONObject jSONObject) {
            a aVar = new a();
            aVar.a = jSONObject.optString("functionName");
            aVar.b = jSONObject.optJSONObject("functionParams");
            aVar.c = jSONObject.optString("success");
            aVar.d = jSONObject.optString("fail");
            return aVar;
        }
    }

    public B4(Context context, A4 a4) {
        this.a = context;
        this.b = a4;
    }

    private a a(String str) throws JSONException {
        return a.a(new JSONObject(str));
    }

    private void b(Context context, a aVar, InterfaceC3875ua interfaceC3875ua) {
        C3730me c3730me = new C3730me();
        JSONObject jSONObject = aVar.b;
        this.b.a(context, EnumC3959z4.a(jSONObject.optString("source")), jSONObject.optString(C3522b4.i.W), jSONObject.optString("data"));
        interfaceC3875ua.a(true, aVar.c, c3730me);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(java.lang.String r6, com.ironsource.InterfaceC3875ua r7) throws java.lang.Exception {
        /*
            r5 = this;
            com.ironsource.B4$a r0 = r5.a(r6)
            java.lang.String r1 = r0.a     // Catch: java.lang.Exception -> L20
            int r2 = r1.hashCode()     // Catch: java.lang.Exception -> L20
            r3 = 576059875(0x2255f9e3, float:2.8999172E-18)
            r4 = 1
            if (r2 == r3) goto L22
            r3 = 1486812399(0x589ef4ef, float:1.3981986E15)
            if (r2 == r3) goto L16
            goto L2c
        L16:
            java.lang.String r2 = "setSharedSignal"
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Exception -> L20
            if (r1 == 0) goto L2c
            r1 = 0
            goto L2d
        L20:
            r6 = move-exception
            goto L54
        L22:
            java.lang.String r2 = "getSharedSignal"
            boolean r1 = r1.equals(r2)     // Catch: java.lang.Exception -> L20
            if (r1 == 0) goto L2c
            r1 = r4
            goto L2d
        L2c:
            r1 = -1
        L2d:
            if (r1 == 0) goto L4e
            if (r1 != r4) goto L37
            android.content.Context r6 = r5.a     // Catch: java.lang.Exception -> L20
            r5.a(r6, r0, r7)     // Catch: java.lang.Exception -> L20
            return
        L37:
            java.lang.UnsupportedOperationException r1 = new java.lang.UnsupportedOperationException     // Catch: java.lang.Exception -> L20
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L20
            r2.<init>()     // Catch: java.lang.Exception -> L20
            java.lang.String r3 = "unsupported API: "
            r2.append(r3)     // Catch: java.lang.Exception -> L20
            r2.append(r6)     // Catch: java.lang.Exception -> L20
            java.lang.String r6 = r2.toString()     // Catch: java.lang.Exception -> L20
            r1.<init>(r6)     // Catch: java.lang.Exception -> L20
            throw r1     // Catch: java.lang.Exception -> L20
        L4e:
            android.content.Context r6 = r5.a     // Catch: java.lang.Exception -> L20
            r5.b(r6, r0, r7)     // Catch: java.lang.Exception -> L20
            return
        L54:
            r5.a(r0, r7, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.B4.a(java.lang.String, com.ironsource.ua):void");
    }

    private void a(Context context, a aVar, InterfaceC3875ua interfaceC3875ua) {
        C3730me c3730me = new C3730me();
        JSONObject jSONObject = aVar.b;
        c3730me.b("data", this.b.a(context, EnumC3959z4.a(jSONObject.optString("source")), jSONObject.optString(C3522b4.i.W)));
        interfaceC3875ua.a(true, aVar.c, c3730me);
    }

    private void a(a aVar, InterfaceC3875ua interfaceC3875ua, Exception exc) {
        C3813r4.d().a(exc);
        String message = exc.getMessage();
        Logger.i(c, aVar.a + " exception " + message);
        C3730me c3730me = new C3730me();
        if (TextUtils.isEmpty(message)) {
            message = "Unknown error";
        }
        c3730me.b(Cc.a.g, message);
        interfaceC3875ua.a(false, aVar.d, c3730me);
    }
}
