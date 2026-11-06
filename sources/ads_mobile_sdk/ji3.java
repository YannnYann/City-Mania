package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ji3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public ji3(zv zvVar, dw2 dw2Var) {
        this.a = zvVar;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        yv cldSignalSource = (yv) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(cldSignalSource, "cldSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.b;
        qf3 qf3Var = qf3.b;
        ph3 ph3Var = ph3.a;
        cldSignalSource.getClass();
        return new jb2(cldSignalSource, lg3Var, qf3Var, fk3.a(flags, y11.CLD));
    }
}
