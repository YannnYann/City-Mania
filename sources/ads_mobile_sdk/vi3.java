package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class vi3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public vi3(dw2 dw2Var, qw1 qw1Var) {
        this.a = dw2Var;
        this.b = qw1Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        ex0 flags = (ex0) this.a.get();
        pw1 memorySignalSource = (pw1) this.b.get();
        Intrinsics.checkNotNullParameter(flags, "flags");
        Intrinsics.checkNotNullParameter(memorySignalSource, "memorySignalSource");
        lg3 lg3Var = lg3.b;
        qf3 qf3Var = qf3.b;
        ph3 ph3Var = ph3.a;
        memorySignalSource.getClass();
        return new jb2(memorySignalSource, lg3Var, qf3Var, fk3.a(flags, y11.MEMORY));
    }
}
