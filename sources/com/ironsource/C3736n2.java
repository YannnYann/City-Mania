package com.ironsource;

import com.ironsource.R6;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.n2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3736n2 {
    private final R6.a a;
    private final ArrayList<String> b = new ArrayList<>(new C3700l2().a());
    private final T6 c = new T6();

    public C3736n2(R6.a aVar) {
        this.a = aVar;
    }

    public final JSONObject a() {
        JSONObject jSONObjectA;
        R6.a aVar = this.a;
        if (aVar == null || (jSONObjectA = this.c.a(this.b, aVar)) == null) {
            jSONObjectA = this.c.a(this.b);
            Intrinsics.checkNotNullExpressionValue(jSONObjectA, "getDataByKeys(...)");
        }
        return a(jSONObjectA);
    }

    private final JSONObject a(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObjectB = U6.b(jSONObject.optJSONObject(R6.u));
        if (jSONObjectB != null) {
            jSONObject.put(R6.u, jSONObjectB);
        }
        return jSONObject;
    }
}
