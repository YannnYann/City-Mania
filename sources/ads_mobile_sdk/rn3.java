package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class rn3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public rn3(sn3 sn3Var, dw2 dw2Var) {
        this.a = sn3Var;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        qn3 source = (qn3) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.a;
        qf3 qf3Var = qf3.b;
        ph3 ph3Var = ph3.a;
        source.getClass();
        return new jb2(source, lg3Var, qf3Var, fk3.a(flags, y11.AD_REQUEST));
    }
}
