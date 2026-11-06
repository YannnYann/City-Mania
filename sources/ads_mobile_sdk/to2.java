package ads_mobile_sdk;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class to2 {
    public static uo2 a(JsonObject json) {
        Map mapEmptyMap;
        Intrinsics.checkNotNullParameter(json, "json");
        String strA = ds1.a(json, "extra_query_params", "{}");
        try {
            Intrinsics.checkNotNullParameter(strA, "<this>");
            Object objFromJson = new Gson().fromJson(strA, (Class<Object>) JsonObject.class);
            Intrinsics.checkNotNullExpressionValue(objFromJson, "fromJson(...)");
            JsonObject jsonObject = (JsonObject) objFromJson;
            Intrinsics.checkNotNullParameter(jsonObject, "<this>");
            mapEmptyMap = new LinkedHashMap();
            for (Map.Entry<String, JsonElement> entry : jsonObject.entrySet()) {
                Intrinsics.checkNotNull(entry);
                String key = entry.getKey();
                JsonElement value = entry.getValue();
                Intrinsics.checkNotNull(key);
                String asString = value.getAsString();
                Intrinsics.checkNotNullExpressionValue(asString, "getAsString(...)");
                mapEmptyMap.put(key, asString);
            }
        } catch (Exception e) {
            List list = a2.a(e, "t", e).s;
            String message = e.getMessage();
            if (message == null) {
                message = e.getClass().getName();
            }
            Intrinsics.checkNotNull(message);
            list.add(message);
            mapEmptyMap = null;
        }
        if (mapEmptyMap == null) {
            mapEmptyMap = MapsKt__MapsKt.emptyMap();
        }
        return new uo2(ds1.a(json, "enable_prewarming", false), ds1.a(json, "prefetch_url", ""), ds1.a(json, "skip_offline_notification_flow", false), ds1.a(json, "enable_hsdp_service", false), ds1.a(json, "target_package", ""), ds1.a(json, "hsdp_invocation_callback_bitmask", 0), ds1.a(json, "referrer", ""), mapEmptyMap);
    }
}
