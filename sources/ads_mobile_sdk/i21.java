package ads_mobile_sdk;

import java.util.concurrent.CancellationException;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.TimeoutCancellationException;

/* JADX INFO: loaded from: classes.dex */
public final class i21 extends CancellationException implements v24 {
    public final TimeoutCancellationException a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i21(TimeoutCancellationException timeoutException) {
        super(timeoutException.getMessage());
        Intrinsics.checkNotNullParameter(timeoutException, "timeoutException");
        this.a = timeoutException;
    }

    @Override // ads_mobile_sdk.v24
    public final Throwable a() {
        return this.a;
    }
}
