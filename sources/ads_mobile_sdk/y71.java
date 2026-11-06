package ads_mobile_sdk;

import android.os.Build;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class y71 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new q71((ExecutorService) this.a.get(), "Mozilla/5.0 (Linux; Android " + Build.VERSION.RELEASE + "; " + Build.MODEL + ")", ((na) this.b.get()).N());
    }

    public y71(dw2 dw2Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = dw2Var2;
    }
}
