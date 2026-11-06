package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class fc2 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        ex0 flags = (ex0) this.a.get();
        Intrinsics.checkNotNullParameter(flags, "flags");
        return Long.valueOf(Duration.m2881getInWholeMillisecondsimpl(flags.C()));
    }

    public fc2(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
