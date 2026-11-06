package com.ironsource;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class H0 implements InterfaceC3789pf<JSONObject>, InterfaceC3749nf<F0> {
    private final Map<String, C3967zc> a = new LinkedHashMap();

    @Override // com.ironsource.InterfaceC3616g7
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public JSONObject a(EnumC3767of mode) throws JSONException {
        Intrinsics.checkNotNullParameter(mode, "mode");
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, C3967zc> entry : this.a.entrySet()) {
            String key = entry.getKey();
            JSONObject jSONObjectA = entry.getValue().a(mode);
            if (jSONObjectA.length() > 0) {
                jSONObject.put(StringsKt__StringsKt.substringAfterLast$default(key, "_", (String) null, 2, (Object) null), jSONObjectA);
            }
        }
        return jSONObject;
    }

    @Override // com.ironsource.InterfaceC3749nf
    public void a(F0 record) {
        Intrinsics.checkNotNullParameter(record, "record");
        String strD = record.d();
        Map<String, C3967zc> map = this.a;
        C3967zc c3967zc = map.get(strD);
        if (c3967zc == null) {
            c3967zc = new C3967zc();
            map.put(strD, c3967zc);
        }
        c3967zc.a(record.a(new G0()));
    }
}
