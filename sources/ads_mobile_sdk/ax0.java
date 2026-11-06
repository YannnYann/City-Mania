package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class ax0 {
    public static final void a(ax0 ax0Var, JsonObject jsonObject, y11 y11Var, kj3 kj3Var) {
        jsonObject.addProperty(String.valueOf(y11Var.getNumber()), Long.valueOf(Duration.m2881getInWholeMillisecondsimpl(kj3Var.a)));
    }

    public static long a() {
        return ex0.A;
    }
}
