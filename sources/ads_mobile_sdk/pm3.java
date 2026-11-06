package ads_mobile_sdk;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.Locale;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class pm3 {
    public static qm3 a(JsonObject json) throws Exception {
        qb3 qb3VarA;
        JsonArray jsonArrayE;
        Intrinsics.checkNotNullParameter(json, "json");
        if (json.has("video_auto_play_start_time")) {
            String asString = json.get("video_auto_play_start_time").getAsString();
            try {
                Intrinsics.checkNotNull(asString);
                String upperCase = asString.toUpperCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                qb3VarA = qb3.a(upperCase);
            } catch (IllegalArgumentException e) {
                throw new Exception("Invalid for value enum " + pm3.class.getName() + ": " + asString, e);
            }
        } else {
            qb3VarA = null;
        }
        JsonObject jsonObjectA = ds1.a(json, "url_mapping", (JsonObject) null);
        String strA = jsonObjectA != null ? ds1.a(jsonObjectA, "click_url", "") : null;
        ArrayList arrayList = new ArrayList();
        if (jsonObjectA != null && (jsonArrayE = ds1.e(jsonObjectA, "interaction_types")) != null) {
            int i = 0;
            for (JsonElement jsonElement : jsonArrayE) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                JsonElement jsonElement2 = jsonElement;
                Intrinsics.checkNotNull(jsonElement2);
                String asString2 = jsonElement2.getAsString();
                if (asString2 != null) {
                    arrayList.add(asString2);
                }
                i = i2;
            }
        }
        return new qm3(ds1.a(json, "required_screen_hold_sec", 0), qb3VarA, strA, arrayList);
    }
}
