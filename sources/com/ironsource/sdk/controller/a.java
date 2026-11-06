package com.ironsource.sdk.controller;

import android.content.Context;
import android.text.TextUtils;
import com.ironsource.C3800q8;
import com.ironsource.Gg;
import com.ironsource.InterfaceC3706l8;
import com.ironsource.dh;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class a implements InterfaceC3706l8 {
    private static final String d = "loadWithUrl";
    private static final String e = "sendMessage";
    public static final String f = "removeAdView";
    public static final String g = "webviewAction";
    public static final String h = "handleGetViewVisibility";
    private static final String i = "functionName";
    private static final String j = "functionParams";
    private static final String k = "success";
    private static final String l = "fail";
    public static final String m = "errMsg";
    private static final String n = "%s | unsupported AdViews API";
    private dh a;
    private C3800q8 b = C3800q8.a();
    private Context c;

    /* JADX INFO: renamed from: com.ironsource.sdk.controller.a$a, reason: collision with other inner class name */
    public static class C1052a {
        String a;
        JSONObject b;
        String c;
        String d;

        private C1052a() {
        }
    }

    public a(Context context) {
        this.c = context;
    }

    public void a(dh dhVar) {
        this.a = dhVar;
    }

    @Override // com.ironsource.InterfaceC3706l8
    public void a(String str, JSONObject jSONObject) {
        if (this.a == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.a.a(str, jSONObject);
    }

    @Override // com.ironsource.InterfaceC3706l8
    public void a(String str, String str2, String str3) {
        a(str, Gg.a(str2, str3));
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(java.lang.String r10, com.ironsource.InterfaceC3875ua r11) throws java.lang.Exception {
        /*
            Method dump skipped, instruction units count: 234
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.sdk.controller.a.a(java.lang.String, com.ironsource.ua):void");
    }

    private C1052a a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        C1052a c1052a = new C1052a();
        c1052a.a = jSONObject.optString("functionName");
        c1052a.b = jSONObject.optJSONObject("functionParams");
        c1052a.c = jSONObject.optString("success");
        c1052a.d = jSONObject.optString("fail");
        return c1052a;
    }
}
