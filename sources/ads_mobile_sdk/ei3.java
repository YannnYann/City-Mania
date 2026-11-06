package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ei3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        ei amazonFireAdIdSignalSource = (ei) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(amazonFireAdIdSignalSource, "amazonFireAdIdSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.b;
        qf3 qf3Var = qf3.b;
        ph3 ph3Var = ph3.a;
        amazonFireAdIdSignalSource.getClass();
        return new jb2(amazonFireAdIdSignalSource, lg3Var, qf3Var, fk3.a(flags, y11.AMAZON_FIRE_AD_ID));
    }

    public ei3(dw2 dw2Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = dw2Var2;
    }
}
