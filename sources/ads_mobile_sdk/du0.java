package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class du0 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public du0(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        ay0 ay0Var;
        zy commonConfiguration = (zy) this.a.get();
        dw2 firstPartyFullscreenAdPresenter = this.b;
        dw2 firstPartyAppOpenAdViewPresenter = this.c;
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(firstPartyFullscreenAdPresenter, "firstPartyFullscreenAdPresenter");
        Intrinsics.checkNotNullParameter(firstPartyAppOpenAdViewPresenter, "firstPartyAppOpenAdViewPresenter");
        if (commonConfiguration.u) {
            Object obj = firstPartyAppOpenAdViewPresenter.get();
            Intrinsics.checkNotNull(obj);
            ay0Var = (ay0) obj;
        } else {
            Object obj2 = firstPartyFullscreenAdPresenter.get();
            Intrinsics.checkNotNull(obj2);
            ay0Var = (ay0) obj2;
        }
        return (ay0) kq2.b(ay0Var);
    }
}
