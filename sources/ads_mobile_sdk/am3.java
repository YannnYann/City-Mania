package ads_mobile_sdk;

import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class am3 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new File(new File((File) this.a.get(), "drgd"), "pcam.jar.tmp");
    }

    public am3(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
