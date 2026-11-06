package ads_mobile_sdk;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes.dex */
public abstract class uc1 {
    public static vc1 a(JsonObject json, Deferred deferred) {
        JsonObject jsonObjectA;
        JsonObject jsonObjectA2;
        JsonObject jsonObjectA3;
        Intrinsics.checkNotNullParameter(json, "json");
        JsonElement jsonElement = json.get("ad_json");
        JsonObject asJsonObject = jsonElement != null ? jsonElement.getAsJsonObject() : null;
        JsonArray jsonArrayE = asJsonObject != null ? ds1.e(asJsonObject, "slots") : null;
        JsonArray jsonArrayE2 = (jsonArrayE == null || (jsonObjectA3 = ds1.a(jsonArrayE, 0)) == null) ? null : ds1.e(jsonObjectA3, "ads");
        JsonArray jsonArrayE3 = ds1.e(asJsonObject, "ads");
        String strA = (jsonArrayE3 == null || (jsonObjectA2 = ds1.a(jsonArrayE3, 0)) == null) ? null : ds1.a(jsonObjectA2, "ad_mid", "");
        boolean z = jsonArrayE != null && jsonArrayE.size() == 1;
        String strA2 = (jsonArrayE2 == null || (jsonObjectA = ds1.a(jsonArrayE2, 0)) == null) ? null : ds1.a(jsonObjectA, "ad_mid", "");
        boolean z2 = strA2 != null && (StringsKt__StringsKt.isBlank(strA2) ^ true);
        String str = (strA == null && z && z2) ? strA2 : strA;
        JsonElement jsonElement2 = json.get("ad_html");
        String asString = jsonElement2 != null ? jsonElement2.getAsString() : null;
        JsonElement jsonElement3 = json.get("ad_base_url");
        return new vc1(asString, deferred, jsonElement3 != null ? jsonElement3.getAsString() : null, asJsonObject, str, z2);
    }
}
