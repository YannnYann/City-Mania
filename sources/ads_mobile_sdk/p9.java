package ads_mobile_sdk;

import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import com.ironsource.G4;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class p9 extends k9 {
    public final n9 a;
    public ty3 c;
    public r9 d;
    public final String g;
    public final ux0 b = new ux0();
    public boolean e = false;
    public boolean f = false;
    public final u9 h = new u9();

    public final void c() {
        this.c = new ty3(null);
    }

    public p9(m9 m9Var, n9 n9Var, String str) {
        this.a = n9Var;
        this.g = str;
        c();
        if (n9Var.a() != o9.b && n9Var.a() != o9.c) {
            this.d = new h22(str, n9Var.c(), n9Var.b());
        } else {
            this.d = new v61(n9Var.d(), str);
        }
        this.d.c();
        q9.a().a(this);
        this.d.a(m9Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ads_mobile_sdk.k9
    public final void b() {
        if (this.e || this.d == null) {
            return;
        }
        this.e = true;
        q9 q9Var = q9.c;
        boolean z = q9Var.b.size() > 0;
        q9Var.b.add(this);
        if (!z) {
            cf2 cf2VarA = cf2.a();
            cf2VarA.getClass();
            l9 l9Var = l9.d;
            l9Var.c = cf2VarA;
            l9Var.a = true;
            boolean zA = l9Var.a();
            l9Var.b = zA;
            l9Var.a(zA);
            rt3.g.getClass();
            if (rt3.i == null) {
                Handler handler = new Handler(Looper.getMainLooper());
                rt3.i = handler;
                handler.post(rt3.j);
                rt3.i.postDelayed(rt3.k, 200L);
            }
            pn0 pn0Var = cf2VarA.d;
            pn0Var.h.submit(new on0(pn0Var));
            pn0Var.b.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, pn0Var);
        }
        float f = cf2.a().a;
        r9 r9Var = this.d;
        qd2 qd2Var = qd2.a;
        qd2Var.a((WebView) r9Var.b.get(), "setDeviceVolume", Float.valueOf(f), r9Var.a);
        r9 r9Var2 = this.d;
        Date date = o.f.b;
        Date date2 = date != null ? (Date) date.clone() : null;
        r9Var2.getClass();
        if (date2 != null) {
            JSONObject jSONObject = new JSONObject();
            pe2.a(jSONObject, G4.a.d, Long.valueOf(date2.getTime()));
            qd2Var.a((WebView) r9Var2.b.get(), "setLastActivity", jSONObject);
        }
        r9 r9Var3 = this.d;
        List listA = Cdo.a(wh1.b.a).a();
        r9Var3.getClass();
        try {
            JSONArray jSONArrayA = r9.a(listA);
            JSONObject jSONObject2 = new JSONObject();
            pe2.a(jSONObject2, "supportedAttestationMechanisms", jSONArrayA);
            qd2Var.a((WebView) r9Var3.b.get(), "setSupportedAttestations", jSONObject2);
        } catch (JSONException e) {
            Log.e("OMIDLIB", "Error creating JSON object publishSupportedAttestationMechanisms", e);
        }
        this.d.a(this, this.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ads_mobile_sdk.k9
    public final void a() {
        if (this.f) {
            return;
        }
        this.h.a();
        this.c.clear();
        if (!this.f) {
            this.b.a.clear();
        }
        this.f = true;
        r9 r9Var = this.d;
        qd2.a.a((WebView) r9Var.b.get(), "finishSession", r9Var.a);
        q9 q9Var = q9.c;
        boolean z = q9Var.b.size() > 0;
        q9Var.a.remove(this);
        q9Var.b.remove(this);
        if (z && q9Var.b.size() <= 0) {
            cf2 cf2VarA = cf2.a();
            cf2VarA.getClass();
            rt3 rt3Var = rt3.g;
            rt3Var.getClass();
            Handler handler = rt3.i;
            if (handler != null) {
                handler.removeCallbacks(rt3.k);
                rt3.i = null;
            }
            rt3Var.a.clear();
            rt3.h.post(new ot3(rt3Var));
            l9 l9Var = l9.d;
            l9Var.a = false;
            l9Var.c = null;
            pn0 pn0Var = cf2VarA.d;
            pn0Var.b.getContentResolver().unregisterContentObserver(pn0Var);
        }
        this.d.b();
        this.d = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ads_mobile_sdk.k9
    public final void a(View view) {
        if (this.f || ((View) this.c.get()) == view) {
            return;
        }
        this.h.b(view);
        this.c = new ty3(view);
        this.d.a();
        Collection<p9> collectionUnmodifiableCollection = Collections.unmodifiableCollection(q9.c.a);
        if (collectionUnmodifiableCollection == null || collectionUnmodifiableCollection.isEmpty()) {
            return;
        }
        for (p9 p9Var : collectionUnmodifiableCollection) {
            if (p9Var != this && ((View) p9Var.c.get()) == view) {
                p9Var.c.clear();
            }
        }
    }
}
