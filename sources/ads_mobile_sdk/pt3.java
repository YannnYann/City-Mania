package ads_mobile_sdk;

import android.util.Log;
import android.view.View;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class pt3 implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        rt3 rt3Var = rt3.g;
        rt3Var.getClass();
        rt3Var.b.clear();
        Iterator it = Collections.unmodifiableCollection(q9.c.b).iterator();
        while (it.hasNext()) {
            ((p9) it.next()).getClass();
        }
        rt3Var.f = System.nanoTime();
        rt3Var.d.a();
        long jNanoTime = System.nanoTime();
        na3 na3Var = rt3Var.c.b;
        if (rt3Var.d.f.size() > 0) {
            for (String str : rt3Var.d.f) {
                JSONObject jSONObjectA = na3Var.a(null);
                View view = (View) rt3Var.d.c.get(str);
                by3 by3Var = rt3Var.c.a;
                String str2 = (String) rt3Var.d.g.get(str);
                if (str2 != null) {
                    JSONObject jSONObjectA2 = by3Var.a(view);
                    try {
                        jSONObjectA2.put("adSessionId", str);
                    } catch (JSONException e) {
                        bf2.a("Error with setting ad session id", e);
                    }
                    try {
                        jSONObjectA2.put("notVisibleReason", str2);
                    } catch (JSONException e2) {
                        Log.e("OMIDLIB", "Error with setting not visible reason", e2);
                    }
                    pe2.a(jSONObjectA, jSONObjectA2);
                }
                pe2.b(jSONObjectA);
                HashSet hashSet = new HashSet();
                hashSet.add(str);
                gl3 gl3Var = rt3Var.e;
                gl3Var.b.a(new ud2(gl3Var, hashSet, jSONObjectA, jNanoTime));
            }
        }
        if (rt3Var.d.e.size() > 0) {
            JSONObject jSONObjectA3 = na3Var.a(null);
            na3Var.a(null, jSONObjectA3, rt3Var, true, false);
            pe2.b(jSONObjectA3);
            gl3 gl3Var2 = rt3Var.e;
            gl3Var2.b.a(new ag2(gl3Var2, rt3Var.d.e, jSONObjectA3, jNanoTime));
        } else {
            gl3 gl3Var3 = rt3Var.e;
            gl3Var3.b.a(new rd2(gl3Var3));
        }
        fd fdVar = rt3Var.d;
        fdVar.a.clear();
        fdVar.b.clear();
        fdVar.c.clear();
        fdVar.d.clear();
        fdVar.e.clear();
        fdVar.f.clear();
        fdVar.g.clear();
        fdVar.j = false;
        fdVar.h.clear();
        long jNanoTime2 = System.nanoTime() - rt3Var.f;
        if (rt3Var.a.size() > 0) {
            Iterator it2 = rt3Var.a.iterator();
            if (it2.hasNext()) {
                if (it2.next() != null) {
                    throw new ClassCastException();
                }
                TimeUnit.NANOSECONDS.toMillis(jNanoTime2);
                throw null;
            }
        }
        ra3.d.a();
    }
}
