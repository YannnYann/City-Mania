package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class zi3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        nj2 perAppIdV1SignalSource = (nj2) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(perAppIdV1SignalSource, "perAppIdV1SignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.b;
        qf3 qf3Var = qf3.b;
        ph3 ph3Var = ph3.a;
        perAppIdV1SignalSource.getClass();
        return new jb2(perAppIdV1SignalSource, lg3Var, qf3Var, fk3.a(flags, y11.PER_APP_ID_V1));
    }

    public zi3(dw2 dw2Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = dw2Var2;
    }
}
