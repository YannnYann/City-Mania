package ads_mobile_sdk;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.ironsource.C3522b4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class fk3 {
    public static boolean a(JsonObject jsonObject, JsonObject jsonObject2, y11 y11Var) {
        try {
            try {
                JsonElement jsonElement = jsonObject.get(String.valueOf(y11Var.getNumber()));
                Intrinsics.checkNotNullExpressionValue(jsonElement, "get(...)");
                return jsonElement.getAsBoolean();
            } catch (Exception unused) {
                if (au.a() == bu.a) {
                    return false;
                }
                throw new Exception("No default value for signal: " + y11Var);
            }
        } catch (Exception unused2) {
            JsonElement jsonElement2 = jsonObject2.get(String.valueOf(y11Var.getNumber()));
            Intrinsics.checkNotNullExpressionValue(jsonElement2, "get(...)");
            return jsonElement2.getAsBoolean();
        }
    }

    public static long a(JsonObject jsonObject, JsonObject jsonObject2, y11 y11Var, long j) {
        try {
            try {
                Duration.Companion companion = Duration.Companion;
                JsonElement jsonElement = jsonObject.get(String.valueOf(y11Var.getNumber()));
                Intrinsics.checkNotNullExpressionValue(jsonElement, "get(...)");
                return DurationKt.toDuration(jsonElement.getAsLong(), DurationUnit.MILLISECONDS);
            } catch (Exception unused) {
                Duration.Companion companion2 = Duration.Companion;
                JsonElement jsonElement2 = jsonObject2.get(String.valueOf(y11Var.getNumber()));
                Intrinsics.checkNotNullExpressionValue(jsonElement2, "get(...)");
                return DurationKt.toDuration(jsonElement2.getAsLong(), DurationUnit.MILLISECONDS);
            }
        } catch (Exception unused2) {
            if (au.a() == bu.a) {
                return j;
            }
            throw new Exception("No default value for signal: " + y11Var);
        }
    }

    public static long a(ex0 flags, y11 signalId) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(signalId, "signalId");
        flags.getClass();
        JsonObject defaultValue = ex0.D;
        Intrinsics.checkNotNullParameter("gads:signal_source_timeouts_ms", C3522b4.i.W);
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return a((JsonObject) flags.a("gads:signal_source_timeouts_ms", defaultValue, yr.i), defaultValue, signalId, kj3.c.a);
    }
}
