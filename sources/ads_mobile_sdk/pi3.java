package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class pi3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        zq0 experimentIdsSignalSource = (zq0) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(experimentIdsSignalSource, "experimentIdsSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.a;
        qf3 qf3Var = qf3.a;
        ph3 ph3Var = ph3.a;
        experimentIdsSignalSource.getClass();
        return new jb2(experimentIdsSignalSource, lg3Var, qf3Var, fk3.a(flags, y11.EXPERIMENT_IDS));
    }

    public pi3(dw2 dw2Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = dw2Var2;
    }
}
