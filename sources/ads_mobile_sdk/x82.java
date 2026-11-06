package ads_mobile_sdk;

import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.common.BaseRequest;
import com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest;

/* JADX INFO: loaded from: classes.dex */
public final class x82 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;
    public final dw2 d;
    public final dw2 e;
    public final dw2 f;
    public final dw2 g;

    public x82(dw2 dw2Var, vh1 vh1Var, dw2 dw2Var2, vh1 vh1Var2, dw2 dw2Var3, dw2 dw2Var4, gf0 gf0Var) {
        this.a = dw2Var;
        this.b = vh1Var;
        this.c = dw2Var2;
        this.d = vh1Var2;
        this.e = dw2Var3;
        this.f = dw2Var4;
        this.g = gf0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new w82((BaseRequest) this.a.get(), (NativeRequest) this.b.get(), (l43) this.c.get(), (Context) this.d.get(), (f0) this.e.get(), (hm0) this.f.get(), this.g);
    }
}
