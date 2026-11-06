package ads_mobile_sdk;

import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewStartUpResult;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;

/* JADX INFO: loaded from: classes.dex */
public final class yy3 implements WebViewCompat.WebViewStartUpCallback {
    public final /* synthetic */ i41 a;

    public yy3(wz3 wz3Var) {
        this.a = wz3Var;
    }

    @Override // androidx.webkit.WebViewCompat.WebViewStartUpCallback
    public final void onSuccess(WebViewStartUpResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        i41 i41Var = this.a;
        if (i41Var != null) {
            AtomicBoolean atomicBoolean = az3.a;
            zy3 result2 = new zy3(result);
            Intrinsics.checkNotNullParameter(result2, "result");
            CancellableContinuation cancellableContinuation = ((wz3) i41Var).a;
            Result.Companion companion = Result.Companion;
            cancellableContinuation.resumeWith(Result.m2760constructorimpl(new q01(result2)));
        }
    }
}
