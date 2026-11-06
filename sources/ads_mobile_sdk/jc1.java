package ads_mobile_sdk;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class jc1 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public jc1(dw2 dw2Var, ol0 ol0Var) {
        this.a = dw2Var;
        this.b = ol0Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        gl2 persistentCacheInitializationTask = (gl2) this.a.get();
        im2 persistentCacheManager = (im2) this.b.get();
        Intrinsics.checkNotNullParameter(persistentCacheInitializationTask, "persistentCacheInitializationTask");
        Intrinsics.checkNotNullParameter(persistentCacheManager, "persistentCacheManager");
        return new sa1(persistentCacheInitializationTask, persistentCacheManager);
    }
}
