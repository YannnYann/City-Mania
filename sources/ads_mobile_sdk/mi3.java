package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class mi3 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public mi3(gn0 gn0Var, dw2 dw2Var) {
        this.a = gn0Var;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        fn0 deviceTierSignalSource = (fn0) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(deviceTierSignalSource, "deviceTierSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.b;
        qf3 qf3Var = qf3.b;
        ph3 ph3Var = ph3.a;
        deviceTierSignalSource.getClass();
        return new jb2(deviceTierSignalSource, lg3Var, qf3Var, fk3.a(flags, y11.DEVICE_TIER));
    }
}
