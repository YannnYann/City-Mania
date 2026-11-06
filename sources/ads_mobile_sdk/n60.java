package ads_mobile_sdk;

import android.util.Base64;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;

/* JADX INFO: loaded from: classes.dex */
public final class n60 {
    public static final JsonObject a(f81 f81Var) {
        JsonObject jsonObject = new JsonObject();
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty("uri", f81Var.a.toString());
        jsonObject2.addProperty("verb", f81Var.b);
        Unit unit = Unit.INSTANCE;
        jsonObject.add("firstline", jsonObject2);
        Map map = f81Var.c;
        if (map != null && !map.isEmpty()) {
            JsonArray jsonArray = new JsonArray();
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                JsonObject jsonObject3 = new JsonObject();
                jsonObject3.addProperty("name", str);
                jsonObject3.addProperty(C3522b4.i.X, str2);
                jsonArray.add(jsonObject3);
            }
            Unit unit2 = Unit.INSTANCE;
            jsonObject.add("headers", jsonArray);
        }
        byte[] bArr = f81Var.d;
        if (bArr != null) {
            byte[] bytes = bArr.toString().getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            jsonObject.addProperty(C3522b4.i.E0, Base64.encodeToString(bytes, 0));
        }
        return jsonObject;
    }
}
