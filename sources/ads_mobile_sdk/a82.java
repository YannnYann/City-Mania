package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a82 implements jr0 {
    public final dw2 a;

    public a82(ol0 ol0Var) {
        this.a = ol0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        h61 hideValidatorOverlayGmsgHandler = (h61) this.a.get();
        Intrinsics.checkNotNullParameter(hideValidatorOverlayGmsgHandler, "hideValidatorOverlayGmsgHandler");
        return (ai1) kq2.b(hideValidatorOverlayGmsgHandler);
    }
}
