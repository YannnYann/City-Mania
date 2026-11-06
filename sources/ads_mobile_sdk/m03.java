package ads_mobile_sdk;

import java.util.Optional;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.optionals.OptionalsKt;

/* JADX INFO: loaded from: classes.dex */
public final class m03 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public m03(vh1 vh1Var, vh1 vh1Var2, vh1 vh1Var3) {
        this.a = vh1Var;
        this.b = vh1Var2;
        this.c = vh1Var3;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        Optional publisherRequestTraceMeta = (Optional) this.a.get();
        Optional internalRequestTraceMeta = (Optional) this.b.get();
        Optional renderTraceMeta = (Optional) this.c.get();
        Intrinsics.checkNotNullParameter(publisherRequestTraceMeta, "publisherRequestTraceMeta");
        Intrinsics.checkNotNullParameter(internalRequestTraceMeta, "internalRequestTraceMeta");
        Intrinsics.checkNotNullParameter(renderTraceMeta, "renderTraceMeta");
        return new ks3((n03) OptionalsKt.getOrDefault(publisherRequestTraceMeta, new n03()), (tn1) OptionalsKt.getOrDefault(internalRequestTraceMeta, new tn1()), (m33) OptionalsKt.getOrDefault(renderTraceMeta, new m33()), new zb());
    }
}
