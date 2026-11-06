package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.PriorityQueue;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ぃ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0811 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0622 f3158;

    public C0811(C0622 c0622) {
        this.f3158 = c0622;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1452(ArrayList arrayList) {
        JSONObject jSONObject;
        C0512 c0512;
        try {
            if (arrayList.isEmpty()) {
                C0622.m1388(this.f3158);
                return;
            }
            PriorityQueue priorityQueue = new PriorityQueue();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                priorityQueue.add(new C0619((C1000) it.next()));
            }
            ArrayList arrayList2 = new ArrayList();
            for (C0619 c0619 = (C0619) priorityQueue.poll(); c0619 != null; c0619 = (C0619) priorityQueue.poll()) {
                C0622 c0622 = this.f3158;
                c0622.getClass();
                AbstractC0885 abstractC0885M1491 = AbstractC0885.m1491();
                synchronized (c0619) {
                    jSONObject = c0619.f2613.f3802;
                }
                String strOptString = jSONObject.optString(StringFog.decrypt("JNSXnQ==\n", "VLjw8/jUoAQ=\n"));
                String str = c0622.f2622;
                C0893 c0893 = (C0893) abstractC0885M1491;
                if (strOptString != null) {
                    c0512 = (C0512) c0893.mo1506().get(strOptString);
                } else {
                    c0893.getClass();
                    c0512 = null;
                }
                if (c0512 == null || !c0512.m1294(str)) {
                    if (TextUtils.isEmpty(c0619.m1382())) {
                        c0619.m1387(this.f3158.f2633.f1195.m1028());
                    }
                    arrayList2.add(c0619);
                } else {
                    C0931 c0931 = this.f3158.f2634;
                    C1000 c1000 = c0619.f2613;
                    c0931.getClass();
                    C0773.m1446().post(new C0935(c0931, c1000));
                }
            }
            if (arrayList2.isEmpty()) {
                return;
            }
            C0622.m1390(this.f3158, arrayList2, new C0817(this));
        } catch (Exception unused) {
            C0622.m1388(this.f3158);
        }
    }
}
