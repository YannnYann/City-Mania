package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﮐ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0899 extends AbstractRunnableC0689 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0865 f3458;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ Activity f3459;

    public C0899(C0865 c0865, Activity activity) {
        this.f3458 = c0865;
        this.f3459 = activity;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0689
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1013() {
        if (C0865.m1460(this.f3458, this.f3459)) {
            AbstractC0272.m1214(new C0909(this));
            C0865 c0865 = this.f3458;
            c0865.f3332 = false;
            c0865.f3333 = true;
            if ((!c0865.f3334 || c0865.f3331) && !this.f3459.isFinishing()) {
                C0865 c08652 = this.f3458;
                Activity activity = this.f3459;
                c08652.getClass();
                String hexString = Integer.toHexString(activity.hashCode());
                if (c08652.f3334) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put(AbstractC0047.f581, true);
                    } catch (JSONException e) {
                        AbstractC0182.m1147(C0865.f3329, StringFog.decrypt("Y3MKi/PMHJRCaBaDoYgSvkl1K4HviF2ESSESl+6CR9A=\n", "JgF45IHsffA=\n") + e.getLocalizedMessage());
                    }
                    c08652.m1204(jSONObject, activity, hexString);
                } else {
                    c08652.f3334 = true;
                    c08652.m1204(new JSONObject(), activity, hexString);
                }
            }
            this.f3458.f3331 = false;
        }
    }
}
