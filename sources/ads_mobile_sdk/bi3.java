package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class bi3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public bi3(vb vbVar, dw2 dw2Var) {
        this.a = vbVar;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        ub adSpamSignalSource = (ub) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(adSpamSignalSource, "adSpamSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.a;
        qf3 qf3Var = qf3.b;
        ph3 ph3Var = ph3.a;
        adSpamSignalSource.getClass();
        return new jb2(adSpamSignalSource, lg3Var, qf3Var, fk3.a(flags, y11.AD_SPAM));
    }
}
