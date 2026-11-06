package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᗁ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0610 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final /* synthetic */ C0606 f2585;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ C0730 f2586;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ boolean f2587;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f2588;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ JSONObject f2589;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f2590;

    public C0610(C0606 c0606, String str, JSONObject jSONObject, JSONObject jSONObject2, boolean z, C0730 c0730) {
        this.f2585 = c0606;
        this.f2590 = str;
        this.f2589 = jSONObject;
        this.f2588 = jSONObject2;
        this.f2587 = z;
        this.f2586 = c0730;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() throws JSONException {
        if (this.f2590.equals(StringFog.decrypt("oOPsiBY0T46n59KJBw==\n", "1JOz+3NHPNE=\n"))) {
            this.f2585.f2575++;
        }
        C0606 c0606 = this.f2585;
        int i = c0606.f2574;
        c0606.f2574 = i + 1;
        JSONObject jSONObjectM1573 = AbstractC0962.m1573(this.f2589, false);
        jSONObjectM1573.put(StringFog.decrypt("zFZT/A==\n", "ojc+mYT5B5o=\n"), this.f2590);
        jSONObjectM1573.put(StringFog.decrypt("xOY=\n", "oYijoBc7M7k=\n"), i);
        String strDecrypt = StringFog.decrypt("IcVaC28Tq6U+\n", "Vbc7aApxysY=\n");
        JSONObject jSONObject = this.f2588;
        if (jSONObject != null) {
            strDecrypt = jSONObject.optString(AbstractC0047.f630);
            String str = AbstractC0047.f584;
            jSONObjectM1573.put(str, this.f2588.optString(str, null));
        }
        if (TextUtils.isEmpty(strDecrypt)) {
            strDecrypt = StringFog.decrypt("j7VIag==\n", "4domD9WneUs=\n");
        }
        jSONObjectM1573.put(AbstractC0047.f629, strDecrypt);
        String str2 = AbstractC0047.f628;
        if (!jSONObjectM1573.has(str2)) {
            jSONObjectM1573.put(str2, strDecrypt);
        }
        AbstractC0272.m1211(new C0615(this, this.f2585.mo1145(jSONObjectM1573, this.f2587, true, this.f2590.equals(StringFog.decrypt("bMmxOy6BuA==\n", "GLnuUkDozNA=\n")))));
    }
}
