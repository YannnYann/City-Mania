package ads_mobile_sdk;

import android.webkit.WebView;
import java.util.Collections;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class ud2 extends g {
    public ud2(gl3 gl3Var, HashSet hashSet, JSONObject jSONObject, long j) {
        super(gl3Var, hashSet, jSONObject, j);
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        return this.d.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ads_mobile_sdk.nd2, android.os.AsyncTask
    public final void onPostExecute(String str) {
        q9 q9Var = q9.c;
        if (q9Var != null) {
            for (p9 p9Var : Collections.unmodifiableCollection(q9Var.a)) {
                if (this.c.contains(p9Var.g)) {
                    r9 r9Var = p9Var.d;
                    if (this.e >= r9Var.d && r9Var.c != 3) {
                        r9Var.c = 3;
                        qd2.a.a((WebView) r9Var.b.get(), "setNativeViewHierarchy", str, r9Var.a);
                    }
                }
            }
        }
        super.onPostExecute(str);
    }
}
