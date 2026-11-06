package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class pn1 implements jr0 {
    public final dw2 a;

    public pn1(jr0 jr0Var) {
        this.a = jr0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        j53 requestType = (j53) this.a.get();
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        return (j53) kq2.b(requestType);
    }
}
