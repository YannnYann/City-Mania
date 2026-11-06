package ads_mobile_sdk;

import android.content.Context;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public final class ga implements jr0 {
    public final dw2 a;

    public ga(vh1 vh1Var) {
        this.a = vh1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return (File) kq2.b(((Context) this.a.get()).getDir("yqzdkcache", 0));
    }
}
