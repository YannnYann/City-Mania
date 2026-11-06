package ads_mobile_sdk;

import androidx.webkit.OutcomeReceiverCompat;
import androidx.webkit.PrefetchException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class wy3 implements OutcomeReceiverCompat {
    @Override // androidx.webkit.OutcomeReceiverCompat
    public final void onError(Throwable th) {
        PrefetchException error = (PrefetchException) th;
        Intrinsics.checkNotNullParameter(error, "error");
    }

    @Override // androidx.webkit.OutcomeReceiverCompat
    public final /* bridge */ /* synthetic */ void onResult(Object obj) {
    }
}
