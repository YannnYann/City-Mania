package ads_mobile_sdk;

import java.util.UUID;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class sy implements jr0 {
    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return (String) kq2.b(string);
    }
}
