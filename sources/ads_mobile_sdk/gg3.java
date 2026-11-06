package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;

/* JADX INFO: loaded from: classes.dex */
public final class gg3 implements jr0 {
    public final dw2 a;
    public final dw2 b;
    public final dw2 c;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        return new fg3((ex0) this.a.get(), (p70) this.b.get(), (SignalRequest) this.c.get());
    }

    public gg3(dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3) {
        this.a = dw2Var;
        this.b = dw2Var2;
        this.c = dw2Var3;
    }
}
