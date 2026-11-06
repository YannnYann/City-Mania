package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class tf1 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        zg1 inspectorStorageGmsgHandler = (zg1) this.a.get();
        Intrinsics.checkNotNullParameter(inspectorStorageGmsgHandler, "inspectorStorageGmsgHandler");
        return new mf1(inspectorStorageGmsgHandler);
    }

    public tf1(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
