package com.ironsource.adqualitysdk.sdk.i;

import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｔ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0985 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0964 f3699;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f3700;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f3701;

    public C0985(C0964 c0964, String str, JSONObject jSONObject) {
        this.f3699 = c0964;
        this.f3701 = str;
        this.f3700 = jSONObject;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        C0964 c0964 = this.f3699;
        String str = this.f3701;
        JSONObject jSONObject = this.f3700;
        c0964.getClass();
        Iterator it = new HashSet(c0964.f3643).iterator();
        while (it.hasNext()) {
            JSONObject jSONObjectMo1267 = ((InterfaceC0511) it.next()).mo1267(str, jSONObject);
            if (jSONObjectMo1267 != null) {
                AbstractC0962.m1575(jSONObject, jSONObjectMo1267, false);
            }
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            String str2 = AbstractC0047.f630;
            jSONObject2.put(str2, jSONObject.remove(str2));
            String str3 = AbstractC0047.f584;
            jSONObject2.put(str3, jSONObject.remove(str3));
        } catch (JSONException unused) {
        }
        c0964.f3644.m1404(str, jSONObject, jSONObject2, new C0977(c0964, str));
    }
}
