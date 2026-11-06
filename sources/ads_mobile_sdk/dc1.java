package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class dc1 implements jr0 {
    public final dw2 a;

    public dc1(ol0 ol0Var) {
        this.a = ol0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        dw2 webViewProfileWrapper = this.a;
        Intrinsics.checkNotNullParameter(webViewProfileWrapper, "webViewProfileWrapper");
        return new gp2(webViewProfileWrapper);
    }
}
