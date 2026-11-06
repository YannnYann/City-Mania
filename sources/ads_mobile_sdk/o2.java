package ads_mobile_sdk;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class o2 {
    public static p2 a(JsonObject json) {
        Intrinsics.checkNotNullParameter(json, "json");
        try {
            ds1 ds1Var = ds1.a;
            Intrinsics.checkNotNullParameter(json, "<this>");
            Intrinsics.checkNotNullParameter("width", C3522b4.i.W);
            int asInt = json.get("width").getAsInt();
            Intrinsics.checkNotNullParameter(json, "<this>");
            Intrinsics.checkNotNullParameter("height", C3522b4.i.W);
            int asInt2 = json.get("height").getAsInt();
            JsonElement jsonElement = json.get("is_fluid_height");
            return new p2(asInt, asInt2, jsonElement != null ? jsonElement.getAsBoolean() : false);
        } catch (Exception e) {
            List list = a2.a(e, "t", e).s;
            String message = e.getMessage();
            if (message == null) {
                message = e.getClass().getName();
            }
            Intrinsics.checkNotNull(message);
            list.add(message);
            return null;
        }
    }
}
