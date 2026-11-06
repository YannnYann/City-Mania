package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᴝ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0641 implements InterfaceC0449 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0622 f2661;

    public C0641(C0622 c0622) {
        this.f2661 = c0622;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static JSONObject m1410(C0641 c0641, Activity activity) {
        c0641.getClass();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(StringFog.decrypt("RwOwm8s01A==\n", "JmDE1apZsdo=\n"), activity.getClass().getName());
            return jSONObject;
        } catch (JSONException unused) {
            AbstractC0182.m1147(StringFog.decrypt("aAsVWXIrrYha\n", "KWV0NQtfxOs=\n"), StringFog.decrypt("mRhSZ+naXtK4A05vu5tcwrUcSXzi2lHXsQ8=\n", "3GogCJv6P7Y=\n"));
            return jSONObject;
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0449
    /* JADX INFO: renamed from: ﾇ */
    public final void mo1270(Activity activity) {
        AbstractC0272.m1211(new C0645(this, activity));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0449
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1271(Activity activity) {
        AbstractC0272.m1211(new C0647(this, activity));
    }
}
