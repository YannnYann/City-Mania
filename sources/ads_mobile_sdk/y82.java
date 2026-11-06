package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class y82 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public y82(e32 e32Var, dw2 dw2Var) {
        this.a = e32Var;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        d32 nativeAdSignalSource = (d32) this.a.get();
        ex0 flags = (ex0) this.b.get();
        Intrinsics.checkNotNullParameter(nativeAdSignalSource, "nativeAdSignalSource");
        Intrinsics.checkNotNullParameter(flags, "flags");
        lg3 lg3Var = lg3.a;
        qf3 qf3Var = qf3.b;
        ph3 ph3Var = ph3.a;
        nativeAdSignalSource.getClass();
        return new jb2(nativeAdSignalSource, lg3Var, qf3Var, fk3.a(flags, y11.NATIVE_AD));
    }
}
