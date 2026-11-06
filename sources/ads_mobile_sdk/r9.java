package ads_mobile_sdk;

import android.webkit.WebView;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class r9 {
    public final String a;
    public uy3 b;
    public int c;
    public long d;

    public void c() {
    }

    public final void a() {
        this.d = System.nanoTime();
        this.c = 1;
    }

    public static JSONArray a(List list) {
        JSONArray jSONArray = new JSONArray();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((cs0) ((co) it.next())).getClass();
            for (String str : Collections.singletonList("1.0")) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("mechanism", "FireTVFOSDAT");
                jSONObject.put("executionEnvironment", "NATIVE");
                jSONObject.put("version", str);
                jSONArray.put(jSONObject);
            }
        }
        return jSONArray;
    }

    public r9(String str) {
        a();
        this.a = str;
        this.b = new uy3(null);
    }

    public void b() {
        this.b.clear();
    }

    public void a(p9 p9Var, n9 n9Var) {
        a(p9Var, n9Var, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(p9 p9Var, n9 n9Var, JSONObject jSONObject) {
        String str = p9Var.g;
        JSONObject jSONObject2 = new JSONObject();
        pe2.a(jSONObject2, "environment", "app");
        pe2.a(jSONObject2, "adSessionType", n9Var.h);
        pe2.a(jSONObject2, "deviceInfo", td2.a());
        pe2.a(jSONObject2, "deviceCategory", pm0.a(sd2.a()));
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        pe2.a(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        pe2.a(jSONObject3, HandleInvocationsFromAdViewer.KEY_OM_PARTNER, n9Var.a.a);
        pe2.a(jSONObject3, HandleInvocationsFromAdViewer.KEY_OM_PARTNER_VERSION, n9Var.a.b);
        pe2.a(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        pe2.a(jSONObject4, "libraryVersion", "1.6.9-google_20260729");
        pe2.a(jSONObject4, "appId", wh1.b.a.getApplicationContext().getPackageName());
        pe2.a(jSONObject2, "app", jSONObject4);
        String str2 = n9Var.g;
        if (str2 != null) {
            pe2.a(jSONObject2, "contentUrl", str2);
        }
        String str3 = n9Var.f;
        if (str3 != null) {
            pe2.a(jSONObject2, "customReferenceData", str3);
        }
        JSONObject jSONObject5 = new JSONObject();
        Iterator it = Collections.unmodifiableList(n9Var.c).iterator();
        if (!it.hasNext()) {
            qd2.a.a((WebView) this.b.get(), "startSession", str, jSONObject2, jSONObject5, jSONObject);
        } else {
            it.next().getClass();
            throw new ClassCastException();
        }
    }

    public final void a(WebView webView) {
        this.b = new uy3(webView);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(m9 m9Var) {
        qd2 qd2Var = qd2.a;
        WebView webView = (WebView) this.b.get();
        String str = this.a;
        JSONObject jSONObject = new JSONObject();
        pe2.a(jSONObject, "impressionOwner", m9Var.a);
        pe2.a(jSONObject, "mediaEventsOwner", m9Var.b);
        pe2.a(jSONObject, "creativeType", m9Var.d);
        pe2.a(jSONObject, "impressionType", m9Var.e);
        pe2.a(jSONObject, "isolateVerificationScripts", Boolean.valueOf(m9Var.c));
        qd2Var.a(webView, "init", jSONObject, str);
    }
}
