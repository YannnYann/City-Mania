package ads_mobile_sdk;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class by3 implements ib2 {
    public final int[] a = new int[2];

    @Override // ads_mobile_sdk.ib2
    public final JSONObject a(View view) {
        if (view == null) {
            return pe2.a(0, 0, 0, 0);
        }
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.a);
        int[] iArr = this.a;
        return pe2.a(iArr[0], iArr[1], width, height);
    }

    @Override // ads_mobile_sdk.ib2
    public final void a(View view, JSONObject jSONObject, hb2 hb2Var, boolean z, boolean z2) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int i = 0;
            if (z) {
                HashMap map = new HashMap();
                while (i < viewGroup.getChildCount()) {
                    View childAt = viewGroup.getChildAt(i);
                    ArrayList arrayList = (ArrayList) map.get(Float.valueOf(childAt.getZ()));
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        map.put(Float.valueOf(childAt.getZ()), arrayList);
                    }
                    arrayList.add(childAt);
                    i++;
                }
                ArrayList arrayList2 = new ArrayList(map.keySet());
                Collections.sort(arrayList2);
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    Iterator it2 = ((ArrayList) map.get((Float) it.next())).iterator();
                    while (it2.hasNext()) {
                        ((rt3) hb2Var).a((View) it2.next(), this, jSONObject, z2);
                    }
                }
                return;
            }
            while (i < viewGroup.getChildCount()) {
                ((rt3) hb2Var).a(viewGroup.getChildAt(i), this, jSONObject, z2);
                i++;
            }
        }
    }
}
