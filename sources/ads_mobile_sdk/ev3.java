package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ev3 implements jr0 {
    public final dw2 a = jl0.a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        il0 delayPageClosedGmsgHandler = (il0) this.a.get();
        Intrinsics.checkNotNullParameter(delayPageClosedGmsgHandler, "delayPageClosedGmsgHandler");
        return new yu3(delayPageClosedGmsgHandler);
    }
}
