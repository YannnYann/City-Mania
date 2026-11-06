package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ig3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public ig3(ha3 ha3Var, dw2 dw2Var) {
        this.a = ha3Var;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        ga3 scarSignalTypeSignalSource = (ga3) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(scarSignalTypeSignalSource, "scarSignalTypeSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.a;
        qf3 qf3Var = qf3.a;
        ph3 ph3Var = ph3.a;
        scarSignalTypeSignalSource.getClass();
        return new jb2(scarSignalTypeSignalSource, lg3Var, qf3Var, fk3.a(flags, y11.SCAR_SIGNAL_TYPE));
    }
}
