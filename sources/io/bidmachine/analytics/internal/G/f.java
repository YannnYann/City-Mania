package io.bidmachine.analytics.internal.G;

import com.ironsource.C3655ia;
import io.bidmachine.analytics.internal.g.C4118e;
import io.bidmachine.analytics.internal.g.h;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class f {
    public static final e a(C4118e c4118e) {
        byte[] bytes;
        JSONObject jSONObjectA;
        String string;
        String strC = c4118e.c();
        String strD = c4118e.d();
        long jF = c4118e.f();
        String strA = c4118e.a();
        String string2 = a(c4118e.e()).toString();
        h hVarB = c4118e.b();
        if (hVarB == null || (jSONObjectA = g.a(hVarB)) == null || (string = jSONObjectA.toString()) == null || (bytes = string.getBytes(Charsets.UTF_8)) == null) {
            bytes = new byte[0];
        }
        return new e(strC, strD, jF, strA, string2, bytes, c4118e.g());
    }

    public static final C4118e a(e eVar) {
        return new C4118e(eVar.c(), eVar.d(), eVar.f(), eVar.a(), a(new JSONObject(eVar.e())), eVar.b().length == 0 ? null : g.a(new JSONObject(new String(eVar.b(), Charsets.UTF_8))), eVar.g());
    }

    public static final JSONObject a(C4118e.a aVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (aVar instanceof C4118e.a.C1122a) {
            jSONObject.put("type", C3655ia.n);
            C4118e.a.C1122a c1122a = (C4118e.a.C1122a) aVar;
            jSONObject.put("tag", c1122a.b());
            jSONObject.put("path", c1122a.a());
            return jSONObject;
        }
        if (aVar instanceof C4118e.a.b) {
            jSONObject.put("type", "pur");
            C4118e.a.b bVar = (C4118e.a.b) aVar;
            jSONObject.put("tag", bVar.d());
            jSONObject.put("path", bVar.a());
            jSONObject.putOpt("query", bVar.b());
            jSONObject.put("shouldRep", bVar.c());
        }
        return jSONObject;
    }

    public static final C4118e.a a(JSONObject jSONObject) {
        if (Intrinsics.areEqual(jSONObject.optString("type", C3655ia.n), "pur")) {
            return new C4118e.a.b(jSONObject.optString("tag"), jSONObject.optString("path"), jSONObject.has("query") ? jSONObject.optString("query") : null, jSONObject.optBoolean("shouldRep", true));
        }
        return new C4118e.a.C1122a(jSONObject.optString("tag"), jSONObject.optString("path"));
    }
}
