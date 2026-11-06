package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ty implements jr0 {
    public final dw2 a;

    public ty(vh1 vh1Var) {
        this.a = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        j53 requestType = (j53) this.a.get();
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        return (j53) kq2.b(requestType);
    }
}
