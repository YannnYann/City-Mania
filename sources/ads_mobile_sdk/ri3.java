package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ri3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public ri3(c61 c61Var, dw2 dw2Var) {
        this.a = c61Var;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        b61 handSignalSource = (b61) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(handSignalSource, "handSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.b;
        qf3 qf3Var = qf3.b;
        ph3 ph3Var = ph3.a;
        handSignalSource.getClass();
        return new jb2(handSignalSource, lg3Var, qf3Var, fk3.a(flags, y11.HAND_HELD));
    }
}
