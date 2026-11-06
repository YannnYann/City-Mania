package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ya1 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        dw2 adIdInfoSignalSource = this.a;
        Intrinsics.checkNotNullParameter(adIdInfoSignalSource, "adIdInfoSignalSource");
        return new gp2(adIdInfoSignalSource);
    }

    public ya1(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
