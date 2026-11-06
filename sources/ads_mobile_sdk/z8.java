package ads_mobile_sdk;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import java.util.Optional;

/* JADX INFO: loaded from: classes.dex */
public final class z8 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;
    public final dw2 h;
    public final dw2 i;
    public final dw2 j;
    public final dw2 k;

    public z8(dw2 dw2Var, vh1 vh1Var, dw2 dw2Var2, dw2 dw2Var3, vh1 vh1Var2, jr0 jr0Var, dw2 dw2Var4, dw2 dw2Var5, dw2 dw2Var6, vh1 vh1Var3, dw2 dw2Var7) {
        this.a = dw2Var;
        this.b = vh1Var;
        this.c = dw2Var2;
        this.d = dw2Var3;
        this.e = vh1Var2;
        this.f = jr0Var;
        this.g = dw2Var4;
        this.h = dw2Var5;
        this.i = dw2Var6;
        this.j = vh1Var3;
        this.k = dw2Var7;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new y8((tx) this.a.get(), (BaseRequest) this.b.get(), (Optional) this.c.get(), (l43) this.d.get(), (Context) this.e.get(), (j53) this.f.get(), ((Boolean) this.g.get()).booleanValue(), (ex0) this.h.get(), ((Long) this.i.get()).longValue(), ((Boolean) this.j.get()).booleanValue(), (Optional) this.k.get());
    }
}
