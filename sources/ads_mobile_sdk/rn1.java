package ads_mobile_sdk;

import java.util.Optional;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.optionals.OptionalsKt;

/* JADX INFO: loaded from: classes.dex */
public final class rn1 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        Optional publisherRequestTraceMeta = (Optional) this.a.get();
        Optional internalRequestTraceMeta = (Optional) this.b.get();
        Intrinsics.checkNotNullParameter(publisherRequestTraceMeta, "publisherRequestTraceMeta");
        Intrinsics.checkNotNullParameter(internalRequestTraceMeta, "internalRequestTraceMeta");
        return new ks3((n03) OptionalsKt.getOrDefault(publisherRequestTraceMeta, new n03()), (tn1) OptionalsKt.getOrDefault(internalRequestTraceMeta, new tn1()), new m33(), new zb());
    }

    public rn1(dw2 dw2Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = dw2Var2;
    }
}
