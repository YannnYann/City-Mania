package ads_mobile_sdk;

import com.google.common.base.Function;
import com.google.common.util.concurrent.FluentFuture;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public final class wj3 implements pc1 {
    public final na a;
    public final tj3 b;
    public final rj3 c;
    public final ExecutorService d;
    public final ts3 e;
    public final AtomicReference f = new AtomicReference();

    public wj3(na naVar, tj3 tj3Var, rj3 rj3Var, ExecutorService executorService, ts3 ts3Var) {
        this.a = naVar;
        this.b = tj3Var;
        this.c = rj3Var;
        this.d = executorService;
        this.e = ts3Var;
    }

    @Override // ads_mobile_sdk.pc1
    public final ListenableFuture a() {
        FluentFuture fluentFutureTransform = FluentFuture.from(this.b.a(this.a.T(), this.a.v())).transform(new Function() { // from class: ads_mobile_sdk.wj3$$ExternalSyntheticLambda0
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return this.f$0.a((qj3) obj);
            }
        }, MoreExecutors.directExecutor());
        Futures.addCallback(fluentFutureTransform, new vj3(this), this.d);
        return fluentFutureTransform;
    }

    public final /* synthetic */ qj3 a(qj3 qj3Var) {
        this.f.set(qj3Var);
        return qj3Var;
    }
}
