package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class fv0 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        h63 rewardGmsgHandler = (h63) this.a.get();
        Intrinsics.checkNotNullParameter(rewardGmsgHandler, "rewardGmsgHandler");
        return new i50(rewardGmsgHandler);
    }

    public fv0(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
