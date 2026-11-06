package ads_mobile_sdk;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class jq2 implements jr0 {
    public final dw2 a;

    public jq2(iu1 iu1Var) {
        this.a = iu1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        Map modifiers = (Map) this.a.get();
        Intrinsics.checkNotNullParameter(modifiers, "modifiers");
        return new bq2(modifiers);
    }
}
