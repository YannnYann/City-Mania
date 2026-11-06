package ads_mobile_sdk;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class n93 {
    public static o93 a(JsonObject json) {
        o93 o93Var;
        Intrinsics.checkNotNullParameter(json, "json");
        try {
            String strA = ds1.a(json, "click_string", "");
            String strA2 = ds1.a(json, "report_url", "");
            int i = 0;
            boolean zA = ds1.a(json, "non_malicious_reporting_enabled", false);
            boolean zA2 = ds1.a(json, "protection_enabled", false);
            JsonArray jsonArrayE = ds1.e(json, "allowed_headers");
            ArrayList arrayList = new ArrayList();
            if (jsonArrayE != null) {
                for (JsonElement jsonElement : jsonArrayE) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    JsonElement jsonElement2 = jsonElement;
                    Intrinsics.checkNotNull(jsonElement2);
                    String asString = jsonElement2.getAsString();
                    if (asString != null) {
                        arrayList.add(asString);
                    }
                    i = i2;
                }
            }
            o93Var = new o93(strA, strA2, zA, zA2, arrayList);
        } catch (Exception e) {
            List list = a2.a(e, "t", e).s;
            String message = e.getMessage();
            if (message == null) {
                message = e.getClass().getName();
            }
            Intrinsics.checkNotNull(message);
            list.add(message);
            o93Var = null;
        }
        return o93Var == null ? new o93() : o93Var;
    }
}
