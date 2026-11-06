package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class m63 {
    public static final l63 a(JsonElement jsonElement) {
        Intrinsics.checkNotNullParameter(jsonElement, "<this>");
        if (!jsonElement.isJsonArray()) {
            return null;
        }
        JsonArray asJsonArray = jsonElement.getAsJsonArray();
        if (asJsonArray.isEmpty()) {
            return null;
        }
        JsonElement jsonElement2 = asJsonArray.get(0);
        if (!jsonElement2.isJsonObject()) {
            return null;
        }
        JsonObject asJsonObject = jsonElement2.getAsJsonObject();
        ds1 ds1Var = ds1.a;
        RewardItem.Companion.getClass();
        return new l63(ds1.a(asJsonObject, "rb_amount", 1), ds1.a(asJsonObject, "rb_type", ""));
    }
}
