package com.iab.omid.library.vungle.internal;

import android.net.Uri;
import android.text.TextUtils;
import com.ironsource.C3522b4;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class j {
    private static Map<String, String> a(Uri uri) {
        HashMap map = new HashMap();
        for (String str : uri.getQueryParameterNames()) {
            map.put(str, uri.getQueryParameter(str));
        }
        return map;
    }

    private static void a(Map<String, String> map) {
        try {
            com.iab.omid.library.vungle.attestation.e.a(g.b().a().getApplicationContext(), map.get("mechanism"), new com.iab.omid.library.vungle.attestation.a(map));
        } catch (Exception e) {
            com.iab.omid.library.vungle.utils.d.a("Error processing attestation request in OmidNativeUrlHandler", e);
        }
    }

    public static void b(Uri uri) {
        try {
            String queryParameter = uri.getQueryParameter("method");
            if (TextUtils.isEmpty(queryParameter)) {
                com.iab.omid.library.vungle.utils.d.b("OmidNativeUrlHandler failed to handle url [" + uri.toString() + "] as 'method' not available");
                return;
            }
            if (queryParameter.hashCode() == -1407254715 && queryParameter.equals("attest")) {
                a(a(uri));
                return;
            }
            com.iab.omid.library.vungle.utils.d.b("Unknown method in OmidNativeUrlHandler.handle :" + queryParameter);
        } catch (Exception e) {
            StringBuilder sbA = l.a("OmidNativeUrlHandler failed to handle url [");
            sbA.append(uri.toString());
            sbA.append(C3522b4.j.e);
            com.iab.omid.library.vungle.utils.d.a(sbA.toString(), e);
        }
    }
}
