package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ub implements rh3 {
    public final rb a;

    public ub(rb adSpamClient) {
        Intrinsics.checkNotNullParameter(adSpamClient, "adSpamClient");
        this.a = adSpamClient;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.AD_SPAM;
    }

    @Override // ads_mobile_sdk.rh3
    public final Object s(Continuation continuation) {
        rb rbVar = this.a;
        fa faVarG = rbVar.g();
        String strA = faVarG.a.a(rbVar.i());
        Intrinsics.checkNotNullExpressionValue(strA, "getQuerySignals(...)");
        return new q01(new tb(strA));
    }
}
