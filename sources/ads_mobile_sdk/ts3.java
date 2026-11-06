package ads_mobile_sdk;

import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;

/* JADX INFO: loaded from: classes.dex */
public final class ts3 {
    public final qt1 a;
    public final tx b;

    public final ListenableFuture a(lq0 lq0Var, ListenableFuture listenableFuture) {
        qr3 qr3Var = new qr3(lq0Var, this.b, this.a);
        qr3Var.b();
        Futures.addCallback(listenableFuture, new ss3(qr3Var), MoreExecutors.directExecutor());
        return listenableFuture;
    }

    public final qr3 a(lq0 lq0Var) {
        return new qr3(lq0Var, this.b, this.a);
    }

    public final void a(lq0 lq0Var, Runnable runnable) {
        try {
            new qr3(lq0Var, this.b, this.a).b();
            runnable.run();
        } finally {
        }
    }

    public ts3(tx txVar, qt1 qt1Var) {
        this.a = qt1Var;
        this.b = txVar;
    }

    public final void b(lq0 lq0Var) {
        ((st1) this.a).a(lq0Var.a, -1L, null, null);
    }
}
