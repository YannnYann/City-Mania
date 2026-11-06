package ads_mobile_sdk;

import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class aq1 implements h04 {
    public final bj2 a;
    public final WebView b;
    public final boolean c;
    public ty3 d;
    public final HashMap e = new HashMap();
    public final ux0 f = new ux0();
    public final g04 g;

    @Override // ads_mobile_sdk.h04
    public final void b() {
        throw new UnsupportedOperationException("The JavaScriptSessionService cannot be supported in this WebView version.");
    }

    public aq1(bj2 bj2Var, WebView webView, boolean z) {
        ig2.a();
        ig2.a(bj2Var, "Partner is null");
        ig2.a(webView, "WebView is null");
        this.a = bj2Var;
        this.b = webView;
        this.c = z;
        if (z) {
            a(webView);
        }
        g04 g04Var = new g04(webView, this);
        this.g = g04Var;
        g04Var.a();
    }

    @Override // ads_mobile_sdk.h04
    public final void a(String str, JSONObject jSONObject) {
        k9 k9Var;
        try {
            String string = jSONObject.getString("adSessionId");
            if (str.equals("startSession")) {
                a(string);
            } else {
                if (!str.equals("finishSession") || (k9Var = (k9) this.e.get(string)) == null) {
                    return;
                }
                k9Var.a();
                this.e.remove(string);
            }
        } catch (JSONException e) {
            Log.e("OMIDLIB", "Error parsing JS message in JavaScriptSessionService.", e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(View view) {
        ty3 ty3Var = this.d;
        if ((ty3Var == null ? null : (View) ty3Var.get()) == view) {
            return;
        }
        Iterator it = this.e.values().iterator();
        while (it.hasNext()) {
            ((k9) it.next()).a(view);
        }
        this.d = new ty3(view);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(String str) {
        n9 n9VarB;
        l40 l40Var = l40.b;
        x91 x91Var = x91.b;
        xh2 xh2Var = xh2.c;
        m9 m9VarA = m9.a(l40Var, x91Var, xh2Var, xh2Var, false);
        if (this.c) {
            n9VarB = n9.a(this.a, this.b, null, null);
        } else {
            n9VarB = n9.b(this.a, this.b, null, null);
        }
        p9 p9Var = new p9(m9VarA, n9VarB, str);
        this.e.put(str, p9Var);
        ty3 ty3Var = this.d;
        p9Var.a(ty3Var != null ? (View) ty3Var.get() : null);
        for (sx0 sx0Var : this.f.a) {
            View view = (View) sx0Var.a.get();
            tx0 tx0Var = sx0Var.c;
            String str2 = sx0Var.d;
            if (!p9Var.f) {
                p9Var.b.a(view, tx0Var, str2);
            }
        }
        p9Var.b();
    }

    @Override // ads_mobile_sdk.h04
    public final String a() {
        return "omidJsSessionService";
    }
}
