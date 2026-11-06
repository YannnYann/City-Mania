package ads_mobile_sdk;

import com.google.gson.JsonObject;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class og3 {
    public static v01 a(JsonObject jsonObject) {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        ng3 block = new ng3(jsonObject);
        Intrinsics.checkNotNullParameter(block, "block");
        try {
            return new q01(block.invoke());
        } catch (Exception e) {
            return new j01(e, null, null, 6);
        }
    }
}
