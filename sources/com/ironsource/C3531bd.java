package com.ironsource;

import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.bd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
class C3531bd extends AbstractC3572e {
    private final String i = C3711ld.a;

    public C3531bd(int i) {
        this.g = i;
    }

    @Override // com.ironsource.AbstractC3572e
    public String a() {
        return C3711ld.a;
    }

    @Override // com.ironsource.AbstractC3572e
    public String c() {
        return "outcome";
    }

    @Override // com.ironsource.AbstractC3572e
    public String a(ArrayList<C5> arrayList, JSONObject jSONObject) {
        if (jSONObject == null) {
            this.f = new JSONObject();
        } else {
            this.f = jSONObject;
        }
        JSONArray jSONArray = new JSONArray();
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<C5> it = arrayList.iterator();
            while (it.hasNext()) {
                JSONObject jSONObjectA = a(it.next());
                if (jSONObjectA != null) {
                    jSONArray.put(jSONObjectA);
                }
            }
        }
        return a(jSONArray);
    }
}
