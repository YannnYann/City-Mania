package ads_mobile_sdk;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class d93 implements xd {
    public final v3 a;
    public final i2 b;
    public final AtomicBoolean c;

    public d93(v3 adEventEmitter, i2 adConfiguration) {
        Intrinsics.checkNotNullParameter(adEventEmitter, "adEventEmitter");
        Intrinsics.checkNotNullParameter(adConfiguration, "adConfiguration");
        this.a = adEventEmitter;
        this.b = adConfiguration;
        this.c = new AtomicBoolean(false);
    }

    @Override // ads_mobile_sdk.xd
    public final Object b(boolean z, Continuation continuation) {
        if (z && this.c.compareAndSet(false, true)) {
            if (this.b.q0 == h2.g) {
                Object objK = this.a.k(continuation);
                return objK == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objK : Unit.INSTANCE;
            }
            Object objR = this.a.r(continuation);
            return objR == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objR : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }
}
