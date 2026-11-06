package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class cu0 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    public cu0(vh1 vh1Var, dw2 dw2Var, dw2 dw2Var2) {
        this.a = vh1Var;
        this.b = dw2Var;
        this.c = dw2Var2;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        zx0 zx0Var;
        zy commonConfiguration = (zy) this.a.get();
        dw2 firstPartyFullscreenAdPresenter = this.b;
        dw2 firstPartyAppOpenAdViewPresenter = this.c;
        Intrinsics.checkNotNullParameter(commonConfiguration, "commonConfiguration");
        Intrinsics.checkNotNullParameter(firstPartyFullscreenAdPresenter, "firstPartyFullscreenAdPresenter");
        Intrinsics.checkNotNullParameter(firstPartyAppOpenAdViewPresenter, "firstPartyAppOpenAdViewPresenter");
        if (commonConfiguration.u) {
            Object obj = firstPartyAppOpenAdViewPresenter.get();
            Intrinsics.checkNotNull(obj);
            zx0Var = (zx0) obj;
        } else {
            Object obj2 = firstPartyFullscreenAdPresenter.get();
            Intrinsics.checkNotNull(obj2);
            zx0Var = (zx0) obj2;
        }
        return (zx0) kq2.b(zx0Var);
    }
}
