package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class hb1 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        dw2 audioSignalSource = this.a;
        Intrinsics.checkNotNullParameter(audioSignalSource, "audioSignalSource");
        return new gp2(audioSignalSource);
    }

    public hb1(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
