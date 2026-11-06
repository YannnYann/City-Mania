package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class sf1 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        gd3 shareSheetGmsgHandler = (gd3) this.a.get();
        Intrinsics.checkNotNullParameter(shareSheetGmsgHandler, "shareSheetGmsgHandler");
        return new mf1(shareSheetGmsgHandler);
    }

    public sf1(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
