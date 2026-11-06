package ads_mobile_sdk;

import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class dz2 extends CancellationException implements v24 {
    public final CancellationException a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dz2(CancellationException cancellationException) {
        super(cancellationException.getMessage());
        Intrinsics.checkNotNullParameter(cancellationException, "cancellationException");
        this.a = cancellationException;
    }

    @Override // ads_mobile_sdk.v24
    public final Throwable a() {
        return this.a;
    }
}
