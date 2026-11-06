package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ij3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        kl3 staticDeviceSignalSource = (kl3) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(staticDeviceSignalSource, "staticDeviceSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.a;
        qf3 qf3Var = qf3.b;
        ph3 ph3Var = ph3.a;
        staticDeviceSignalSource.getClass();
        return new jb2(staticDeviceSignalSource, lg3Var, qf3Var, fk3.a(flags, y11.STATIC_DEVICE));
    }

    public ij3(dw2 dw2Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = dw2Var2;
    }
}
