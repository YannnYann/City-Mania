package ads_mobile_sdk;

import java.util.Optional;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.optionals.OptionalsKt;

/* JADX INFO: loaded from: classes.dex */
public final class uy implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;

    public uy(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, sh0 sh0Var) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
        this.d = sh0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        Optional publisherRequestTraceMeta = (Optional) this.a.get();
        Optional internalRequestTraceMeta = (Optional) this.b.get();
        Optional renderTraceMeta = (Optional) this.c.get();
        Optional adTraceMeta = (Optional) this.d.get();
        Intrinsics.checkNotNullParameter(publisherRequestTraceMeta, "publisherRequestTraceMeta");
        Intrinsics.checkNotNullParameter(internalRequestTraceMeta, "internalRequestTraceMeta");
        Intrinsics.checkNotNullParameter(renderTraceMeta, "renderTraceMeta");
        Intrinsics.checkNotNullParameter(adTraceMeta, "adTraceMeta");
        return new ks3((n03) OptionalsKt.getOrDefault(publisherRequestTraceMeta, new n03()), (tn1) OptionalsKt.getOrDefault(internalRequestTraceMeta, new tn1()), (m33) OptionalsKt.getOrDefault(renderTraceMeta, new m33()), (zb) OptionalsKt.getOrDefault(adTraceMeta, new zb()));
    }
}
