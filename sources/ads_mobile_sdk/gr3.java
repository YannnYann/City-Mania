package ads_mobile_sdk;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class gr3 {
    public static hr3 a(JsonObject jsonObject) {
        zr0 zr0Var;
        if (jsonObject == null) {
            return null;
        }
        JsonElement jsonElement = jsonObject.get("fill_definition");
        int asInt = jsonElement != null ? jsonElement.getAsInt() : 0;
        zr0.b.getClass();
        zr0[] zr0VarArrValues = zr0.values();
        int length = zr0VarArrValues.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                zr0Var = null;
                break;
            }
            zr0Var = zr0VarArrValues[i];
            if (zr0Var.a == asInt) {
                break;
            }
            i++;
        }
        if (zr0Var == null) {
            zr0Var = zr0.c;
        }
        zr0 zr0Var2 = zr0Var;
        if (zr0Var2 == zr0.c) {
            return null;
        }
        JsonElement jsonElement2 = jsonObject.get("nofill_retention_time_ms");
        long asLong = jsonElement2 != null ? jsonElement2.getAsLong() : 0L;
        JsonElement jsonElement3 = jsonObject.get("callback_delay_ms");
        long asLong2 = jsonElement3 != null ? jsonElement3.getAsLong() : 50L;
        JsonElement jsonElement4 = jsonObject.get("nofills_before_throttle");
        int asInt2 = jsonElement4 != null ? jsonElement4.getAsInt() : 0;
        JsonElement jsonElement5 = jsonObject.get("post_throttle_nofills_before_throttle");
        Integer numValueOf = jsonElement5 != null ? Integer.valueOf(jsonElement5.getAsInt()) : null;
        Duration.Companion companion = Duration.Companion;
        DurationUnit durationUnit = DurationUnit.MILLISECONDS;
        return new hr3(asInt2, numValueOf, DurationKt.toDuration(asLong, durationUnit), DurationKt.toDuration(asLong2, durationUnit), zr0Var2);
    }
}
