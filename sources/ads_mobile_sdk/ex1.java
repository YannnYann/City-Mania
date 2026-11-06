package ads_mobile_sdk;

import java.util.List;
import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class ex1 {
    public static fx1 a(s11 cuiName, List tags, boolean z) {
        Intrinsics.checkNotNullParameter(cuiName, "cuiName");
        Intrinsics.checkNotNullParameter(tags, "tags");
        UUID uuidRandomUUID = UUID.randomUUID();
        Intrinsics.checkNotNullExpressionValue(uuidRandomUUID, "randomUUID(...)");
        return new fx1(cuiName, tags, uuidRandomUUID, new ks3(new n03(), new tn1(), new m33(), new zb()), 0, 0, null, z);
    }
}
