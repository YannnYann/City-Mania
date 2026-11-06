package ads_mobile_sdk;

import android.content.Context;
import android.util.DisplayMetrics;

/* JADX INFO: loaded from: classes.dex */
public final class oh3 implements jr0 {
    public final dw2 a;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return (DisplayMetrics) kq2.b(((Context) this.a.get()).getResources().getDisplayMetrics());
    }

    public oh3(dw2 dw2Var) {
        this.a = dw2Var;
    }
}
