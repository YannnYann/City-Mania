package ads_mobile_sdk;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class vk implements ld {
    public final sj1 a;
    public final zx0 b;
    public final AtomicBoolean c;

    public vk(sj1 internalAppOpenAd, zx0 fullscreenAdPresenter) {
        Intrinsics.checkNotNullParameter(internalAppOpenAd, "internalAppOpenAd");
        Intrinsics.checkNotNullParameter(fullscreenAdPresenter, "fullscreenAdPresenter");
        this.a = internalAppOpenAd;
        this.b = fullscreenAdPresenter;
        this.c = new AtomicBoolean(false);
    }

    @Override // ads_mobile_sdk.ld
    public final Object a(ey3 ey3Var, Continuation continuation) {
        if (ey3Var.b && this.c.compareAndSet(false, true) && this.a.i().u) {
            this.b.d();
        }
        return Unit.INSTANCE;
    }
}
