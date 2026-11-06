package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ui3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public ui3(tp1 tp1Var, dw2 dw2Var) {
        this.a = tp1Var;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        sp1 isDeviceHeldSignalSource = (sp1) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(isDeviceHeldSignalSource, "isDeviceHeldSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.b;
        qf3 qf3Var = qf3.b;
        ph3 ph3Var = ph3.a;
        isDeviceHeldSignalSource.getClass();
        return new jb2(isDeviceHeldSignalSource, lg3Var, qf3Var, fk3.a(flags, y11.IS_DEVICE_HELD));
    }
}
