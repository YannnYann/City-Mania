package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᖾ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0607 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ C0606 f2578;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0764 f2579;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONArray f2580;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ boolean f2581;

    public C0607(C0606 c0606, boolean z, JSONArray jSONArray, C0764 c0764) {
        this.f2578 = c0606;
        this.f2581 = z;
        this.f2580 = jSONArray;
        this.f2579 = c0764;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() throws JSONException {
        JSONObject jSONObjectMo1145 = this.f2578.mo1145(null, this.f2581, false, false);
        try {
            jSONObjectMo1145.put(StringFog.decrypt("xShRUBpd\n", "oF40Pm4u90M=\n"), this.f2580);
        } catch (JSONException e) {
            String strDecrypt = StringFog.decrypt("wHiL5PHQkXvyU5zt5tC/fe9zmOn8y4o=\n", "gRbqiIik+Bg=\n");
            AbstractC0182.m1156(strDecrypt, strDecrypt, StringFog.decrypt("cTvy0N+aY3hRKPTWw90gb0Is7svg33Rr\n", "NEmAv626AAo=\n"), e, null, false);
        }
        AbstractC0272.m1211(new C0608(this, jSONObjectMo1145));
    }
}
