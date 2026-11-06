package ads_mobile_sdk;

import androidx.webkit.PrerenderException;
import androidx.webkit.PrerenderOperationCallback;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class xy3 implements PrerenderOperationCallback {
    @Override // androidx.webkit.PrerenderOperationCallback
    public final void onError(PrerenderException error) {
        Intrinsics.checkNotNullParameter(error, "error");
    }

    @Override // androidx.webkit.PrerenderOperationCallback
    public final void onPrerenderActivated() {
    }
}
