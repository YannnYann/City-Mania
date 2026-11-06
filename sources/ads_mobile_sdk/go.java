package ads_mobile_sdk;

import android.util.Log;
import android.webkit.WebView;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class go implements h04 {
    @Override // ads_mobile_sdk.h04
    public final void a(String str, JSONObject jSONObject) {
        if ("attest".equals(str)) {
            try {
                String string = jSONObject.getString("mechanism");
                String string2 = jSONObject.getString("version");
                HashMap mapA = pe2.a(jSONObject.getJSONObject("attestationArgs"));
                mapA.put("version", string2);
                fo.a(wh1.b.a.getApplicationContext(), string, new bo(mapA));
            } catch (Exception e) {
                Log.e("OMIDLIB", "Error processing attestation request", e);
            }
        }
    }

    @Override // ads_mobile_sdk.h04
    public final void b() {
    }

    @Override // ads_mobile_sdk.h04
    public final String a() {
        return "omidJsAttestationListener";
    }

    public go(WebView webView) {
        new g04(webView, this).a();
    }
}
