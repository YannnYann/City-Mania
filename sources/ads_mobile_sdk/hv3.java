package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class hv3 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        k81 httpTrackGmsgHandler = (k81) this.a.get();
        Intrinsics.checkNotNullParameter(httpTrackGmsgHandler, "httpTrackGmsgHandler");
        return new yu3(httpTrackGmsgHandler);
    }

    public hv3(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
