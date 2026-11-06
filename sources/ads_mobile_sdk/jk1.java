package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class jk1 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        pp bannerRefreshSignalSource = (pp) this.a.get();
        Intrinsics.checkNotNullParameter(bannerRefreshSignalSource, "bannerRefreshSignalSource");
        lg3 lg3Var = lg3.a;
        qf3 qf3Var = qf3.a;
        ph3 ph3Var = ph3.a;
        return new jb2(bannerRefreshSignalSource, lg3Var, qf3Var, kj3.b.a);
    }

    public jk1(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
