package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class oi3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public oi3(iq0 iq0Var, dw2 dw2Var) {
        this.a = iq0Var;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        hq0 eoidSignalSource = (hq0) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(eoidSignalSource, "eoidSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.b;
        qf3 qf3Var = qf3.b;
        ph3 ph3Var = ph3.a;
        eoidSignalSource.getClass();
        return new jb2(eoidSignalSource, lg3Var, qf3Var, fk3.a(flags, y11.EOID));
    }
}
