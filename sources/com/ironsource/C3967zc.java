package com.ironsource;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.zc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3967zc implements InterfaceC3789pf<JSONObject>, InterfaceC3749nf<C3931xc> {
    private final Map<String, C3646i1> a = new LinkedHashMap();

    @Override // com.ironsource.InterfaceC3616g7
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public JSONObject a(EnumC3767of mode) throws JSONException {
        Intrinsics.checkNotNullParameter(mode, "mode");
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, C3646i1> entry : this.a.entrySet()) {
            String key = entry.getKey();
            JSONArray jSONArrayA = entry.getValue().a(mode);
            if (jSONArrayA.length() > 0) {
                jSONObject.put(key, jSONArrayA);
            }
        }
        return jSONObject;
    }

    @Override // com.ironsource.InterfaceC3749nf
    public void a(C3931xc record) {
        Intrinsics.checkNotNullParameter(record, "record");
        String strC = record.c();
        Map<String, C3646i1> map = this.a;
        C3646i1 c3646i1 = map.get(strC);
        if (c3646i1 == null) {
            c3646i1 = new C3646i1();
            map.put(strC, c3646i1);
        }
        c3646i1.a(record.a(new C3949yc()));
    }
}
