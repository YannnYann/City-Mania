package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ci3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public ci3(ec ecVar, dw2 dw2Var) {
        this.a = ecVar;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        dc adTypeSignalSource = (dc) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(adTypeSignalSource, "adTypeSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.a;
        qf3 qf3Var = qf3.a;
        ph3 ph3Var = ph3.a;
        adTypeSignalSource.getClass();
        return new jb2(adTypeSignalSource, lg3Var, qf3Var, fk3.a(flags, y11.AD_TYPE));
    }
}
