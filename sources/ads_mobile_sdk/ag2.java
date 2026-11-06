package ads_mobile_sdk;

import android.text.TextUtils;
import android.webkit.WebView;
import java.util.Collections;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class ag2 extends g {
    public ag2(gl3 gl3Var, HashSet hashSet, JSONObject jSONObject, long j) {
        super(gl3Var, hashSet, jSONObject, j);
    }

    @Override // android.os.AsyncTask
    public final Object doInBackground(Object[] objArr) {
        if (pe2.c(this.d, ((gl3) this.b).a)) {
            return null;
        }
        md2 md2Var = this.b;
        JSONObject jSONObject = this.d;
        ((gl3) md2Var).a = jSONObject;
        return jSONObject.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ads_mobile_sdk.nd2, android.os.AsyncTask
    public final void onPostExecute(String str) {
        q9 q9Var;
        if (!TextUtils.isEmpty(str) && (q9Var = q9.c) != null) {
            for (p9 p9Var : Collections.unmodifiableCollection(q9Var.a)) {
                if (this.c.contains(p9Var.g)) {
                    r9 r9Var = p9Var.d;
                    if (this.e >= r9Var.d) {
                        r9Var.c = 2;
                        qd2.a.a((WebView) r9Var.b.get(), "setNativeViewHierarchy", str, r9Var.a);
                    }
                }
            }
        }
        super.onPostExecute(str);
    }
}
