package ads_mobile_sdk;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class gx1 implements ai1 {
    public final bz1 a;

    public gx1(bz1 mraidResizeHandler) {
        Intrinsics.checkNotNullParameter(mraidResizeHandler, "mraidResizeHandler");
        this.a = mraidResizeHandler;
    }

    @Override // ads_mobile_sdk.ai1
    public final Object a(Continuation continuation) {
        this.a.a(true);
        return Unit.INSTANCE;
    }
}
