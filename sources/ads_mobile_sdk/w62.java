package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class w62 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        tx3 videoGmsgHandler = (tx3) this.a.get();
        Intrinsics.checkNotNullParameter(videoGmsgHandler, "videoGmsgHandler");
        return new q62(videoGmsgHandler);
    }

    public w62(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
