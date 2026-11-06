package ads_mobile_sdk;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.ironsource.C3522b4;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class xf2 {
    public static void a(Uri uri) {
        try {
            String queryParameter = uri.getQueryParameter("method");
            if (TextUtils.isEmpty(queryParameter)) {
                uri.toString();
                return;
            }
            if (queryParameter.hashCode() == -1407254715 && queryParameter.equals("attest")) {
                HashMap map = new HashMap();
                for (String str : uri.getQueryParameterNames()) {
                    map.put(str, uri.getQueryParameter(str));
                }
                try {
                    fo.a(wh1.b.a.getApplicationContext(), (String) map.get("mechanism"), new bo(map));
                } catch (Exception e) {
                    Log.e("OMIDLIB", "Error processing attestation request in OmidNativeUrlHandler", e);
                }
            }
        } catch (Exception e2) {
            Log.e("OMIDLIB", "OmidNativeUrlHandler failed to handle url [" + uri.toString() + C3522b4.j.e, e2);
        }
    }
}
