package ads_mobile_sdk;

import java.io.IOException;
import java.net.UnknownServiceException;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;

/* JADX INFO: loaded from: classes.dex */
public final class x71 implements Callback {
    public final /* synthetic */ CancellableContinuation a;

    public x71(CancellableContinuationImpl cancellableContinuationImpl) {
        this.a = cancellableContinuationImpl;
    }

    @Override // okhttp3.Callback
    public final void onFailure(Call call, IOException e) {
        i01 j01Var;
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(e, "e");
        if (e instanceof UnknownServiceException) {
            String message = e.getMessage();
            if (message == null) {
                message = "Non-retryable OkHttp network error";
            }
            j01Var = new o01(message, e);
        } else {
            j01Var = new j01(e, kk1.e, null, 4);
        }
        this.a.resume(j01Var, new v71(call));
    }

    @Override // okhttp3.Callback
    public final void onResponse(Call call, Response response) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
        this.a.resume(new q01(response), new w71(call));
    }
}
