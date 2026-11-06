package ads_mobile_sdk;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class rt3 implements hb2 {
    public static final rt3 g = new rt3();
    public static final Handler h = new Handler(Looper.getMainLooper());
    public static Handler i = null;
    public static final pt3 j = new pt3();
    public static final qt3 k = new qt3();
    public long f;
    public final ArrayList a = new ArrayList();
    public final ArrayList b = new ArrayList();
    public final fd d = new fd();
    public final pu2 c = new pu2();
    public final gl3 e = new gl3(new od2());

    public final void a(View view, ib2 ib2Var, JSONObject jSONObject, boolean z) {
        Object obj;
        boolean z2;
        if (jg2.a(view) == null) {
            fd fdVar = this.d;
            char c = fdVar.d.contains(view) ? (char) 1 : fdVar.j ? (char) 2 : (char) 3;
            if (c == 3) {
                return;
            }
            JSONObject jSONObjectA = ib2Var.a(view);
            pe2.a(jSONObject, jSONObjectA);
            fd fdVar2 = this.d;
            if (fdVar2.a.size() == 0) {
                obj = null;
            } else {
                Object obj2 = (String) fdVar2.a.get(view);
                if (obj2 != null) {
                    fdVar2.a.remove(view);
                }
                obj = obj2;
            }
            boolean z3 = false;
            if (obj != null) {
                try {
                    jSONObjectA.put("adSessionId", obj);
                } catch (JSONException e) {
                    bf2.a("Error with setting ad session id", e);
                }
                fd fdVar3 = this.d;
                if (fdVar3.i.containsKey(view)) {
                    fdVar3.i.put(view, Boolean.TRUE);
                } else {
                    z3 = true;
                }
                try {
                    jSONObjectA.put("hasWindowFocus", Boolean.valueOf(z3));
                } catch (JSONException e2) {
                    Log.e("OMIDLIB", "Error with setting has window focus", e2);
                }
                boolean zContains = this.d.h.contains(obj);
                Object objValueOf = Boolean.valueOf(zContains);
                if (zContains) {
                    try {
                        jSONObjectA.put("isPipActive", objValueOf);
                    } catch (JSONException e3) {
                        Log.e("OMIDLIB", "Error with setting is picture-in-picture active", e3);
                    }
                }
                this.d.j = true;
                return;
            }
            fd fdVar4 = this.d;
            ed edVar = (ed) fdVar4.b.get(view);
            if (edVar != null) {
                fdVar4.b.remove(view);
            }
            if (edVar != null) {
                sx0 sx0Var = edVar.a;
                JSONArray jSONArray = new JSONArray();
                Iterator it = edVar.b.iterator();
                while (it.hasNext()) {
                    jSONArray.put((String) it.next());
                }
                try {
                    jSONObjectA.put("isFriendlyObstructionFor", jSONArray);
                    jSONObjectA.put("friendlyObstructionClass", sx0Var.b);
                    jSONObjectA.put("friendlyObstructionPurpose", sx0Var.c);
                    jSONObjectA.put("friendlyObstructionReason", sx0Var.d);
                } catch (JSONException e4) {
                    Log.e("OMIDLIB", "Error with setting friendly obstruction", e4);
                }
                z2 = true;
            } else {
                z2 = false;
            }
            ib2Var.a(view, jSONObjectA, this, c == 1, z || z2);
        }
    }
}
