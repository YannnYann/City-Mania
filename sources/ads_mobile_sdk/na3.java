package ads_mobile_sdk;

import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class na3 implements ib2 {
    public final ib2 a;

    public na3(by3 by3Var) {
        this.a = by3Var;
    }

    @Override // ads_mobile_sdk.ib2
    public final JSONObject a(View view) {
        JSONObject jSONObjectA = pe2.a(0, 0, 0, 0);
        try {
            jSONObjectA.put("noOutputDevice", yv2.a(sd2.a() != 1 ? 2 : zf2.a) == 0);
            return jSONObjectA;
        } catch (JSONException e) {
            Log.e("OMIDLIB", "Error with setting output device status", e);
            return jSONObjectA;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ads_mobile_sdk.ib2
    public final void a(View view, JSONObject jSONObject, hb2 hb2Var, boolean z, boolean z2) {
        View rootView;
        ArrayList arrayList = new ArrayList();
        q9 q9Var = q9.c;
        if (q9Var != null) {
            Collection collectionUnmodifiableCollection = Collections.unmodifiableCollection(q9Var.b);
            IdentityHashMap identityHashMap = new IdentityHashMap((collectionUnmodifiableCollection.size() * 2) + 3);
            Iterator it = collectionUnmodifiableCollection.iterator();
            while (it.hasNext()) {
                View view2 = (View) ((p9) it.next()).c.get();
                if (view2 != null && jg2.d(view2) && (rootView = view2.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float fB = jg2.b(rootView);
                    int size = arrayList.size();
                    while (size > 0 && jg2.b((View) arrayList.get(size - 1)) > fB) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((rt3) hb2Var).a((View) it2.next(), this.a, jSONObject, z2);
        }
    }
}
