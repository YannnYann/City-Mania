package ads_mobile_sdk;

import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class zq0 implements rh3 {
    public final ex0 a;

    public zq0(ex0 flags) {
        Intrinsics.checkNotNullParameter(flags, "flags");
        this.a = flags;
    }

    @Override // ads_mobile_sdk.rh3
    public final y11 f() {
        return y11.EXPERIMENT_IDS;
    }

    @Override // ads_mobile_sdk.rh3
    public final Object s(Continuation continuation) {
        return new q01(new yq0(this.a.s.c()));
    }
}
