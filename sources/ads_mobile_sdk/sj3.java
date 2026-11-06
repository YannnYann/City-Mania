package ads_mobile_sdk;

import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes.dex */
public final class sj3 implements AsyncFunction {
    public final /* synthetic */ tj3 a;

    public sj3(tj3 tj3Var) {
        this.a = tj3Var;
    }

    @Override // com.google.common.util.concurrent.AsyncFunction
    public final ListenableFuture apply(Object obj) {
        qj3 qj3Var = (qj3) obj;
        if (qj3Var != null) {
            return Futures.immediateFuture(qj3Var);
        }
        this.a.f.b(lq0.EVENT_ID_INIT_FALLBACK_TO_DEFAULT_COLLECTOR);
        tj3 tj3Var = this.a;
        return tj3Var.a(tj3Var.g);
    }
}
