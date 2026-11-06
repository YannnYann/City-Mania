package ads_mobile_sdk;

import android.util.Base64;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.RequestBody;

/* JADX INFO: loaded from: classes.dex */
public final class y61 {
    public static final JsonObject a(Request request) {
        JsonObject jsonObject = new JsonObject();
        JsonObject jsonObject2 = new JsonObject();
        jsonObject2.addProperty("uri", request.url().toString());
        jsonObject2.addProperty("verb", request.method());
        Unit unit = Unit.INSTANCE;
        jsonObject.add("firstline", jsonObject2);
        Headers headers = request.headers();
        if (headers.size() > 0) {
            JsonArray jsonArray = new JsonArray();
            for (Pair<? extends String, ? extends String> pair : headers) {
                JsonObject jsonObject3 = new JsonObject();
                jsonObject3.addProperty("name", pair.getFirst());
                jsonObject3.addProperty(C3522b4.i.X, pair.getSecond());
                jsonArray.add(jsonObject3);
            }
            Unit unit2 = Unit.INSTANCE;
            jsonObject.add("headers", jsonArray);
        }
        RequestBody requestBodyBody = request.body();
        if (requestBodyBody != null) {
            byte[] bytes = requestBodyBody.toString().getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            jsonObject.addProperty(C3522b4.i.E0, Base64.encodeToString(bytes, 0));
        }
        return jsonObject;
    }
}
