package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class bj3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public bj3(hn2 hn2Var, dw2 dw2Var) {
        this.a = hn2Var;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        gn2 phoneOrientationSignalSource = (gn2) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(phoneOrientationSignalSource, "phoneOrientationSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.b;
        qf3 qf3Var = qf3.b;
        ph3 ph3Var = ph3.a;
        phoneOrientationSignalSource.getClass();
        return new jb2(phoneOrientationSignalSource, lg3Var, qf3Var, fk3.a(flags, y11.PHONE_ORIENTATION));
    }
}
