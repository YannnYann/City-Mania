package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class b82 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public b82(vh1 vh1Var, ol0 ol0Var) {
        this.a = vh1Var;
        this.b = ol0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        i2 adConfiguration = (i2) this.a.get();
        h61 hideValidatorOverlayGmsgHandler = (h61) this.b.get();
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        Intrinsics.checkNotNullParameter(hideValidatorOverlayGmsgHandler, "hideValidatorOverlayGmsgHandler");
        return new x72(hideValidatorOverlayGmsgHandler);
    }
}
