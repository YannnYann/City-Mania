package ads_mobile_sdk;

import android.content.Context;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class cv2 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;

    public cv2(vh1 vh1Var, vh1 vh1Var2, vh1 vh1Var3, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3) {
        this.a = vh1Var;
        this.b = vh1Var2;
        this.c = vh1Var3;
        this.d = dw2Var;
        this.e = dw2Var2;
        this.f = dw2Var3;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new bv2((Context) this.a.get(), (ExecutorService) this.b.get(), (na) this.c.get(), (n71) this.d.get(), (ts3) this.e.get(), (pv2) this.f.get());
    }
}
