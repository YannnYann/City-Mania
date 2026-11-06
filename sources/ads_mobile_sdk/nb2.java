package ads_mobile_sdk;

import com.google.gson.JsonObject;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class nb2 {
    public static qb2 a(JsonObject json) {
        Intrinsics.checkNotNullParameter(json, "json");
        ds1 ds1Var = ds1.a;
        try {
            ob2 ob2Var = pb2.a;
            int iA = ds1.a(json, "impression_prerequisite", 0);
            ob2Var.getClass();
            pb2 pb2Var = iA != 0 ? iA != 1 ? iA != 2 ? pb2.b : pb2.d : pb2.c : pb2.b;
            int iA2 = ds1.a(json, "click_prerequisite", 0);
            return new qb2(pb2Var, iA2 != 0 ? iA2 != 1 ? iA2 != 2 ? pb2.b : pb2.d : pb2.c : pb2.b, ds1.a(json, "notification_flow_enabled", false));
        } catch (Exception e) {
            List list = a2.a(e, "t", e).s;
            String message = e.getMessage();
            if (message == null) {
                message = e.getClass().getName();
            }
            Intrinsics.checkNotNull(message);
            list.add(message);
            return null;
        }
    }
}
