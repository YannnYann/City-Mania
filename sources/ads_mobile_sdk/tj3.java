package ads_mobile_sdk;

import com.google.common.base.Function;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.FluentFuture;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class tj3 {
    public final ks1 a;
    public final ks1 b;
    public final ks1 c;
    public final ks1 d;
    public final ExecutorService e;
    public final ts3 f;
    public final kb g;

    public static /* synthetic */ qj3 a(qj3 qj3Var, Void r1) {
        return qj3Var;
    }

    public static /* synthetic */ qj3 a(Throwable th) {
        return null;
    }

    public final FluentFuture a(kb kbVar, boolean z) {
        FluentFuture fluentFutureA = a(kbVar);
        return (!z || kbVar == this.g) ? fluentFutureA : FluentFuture.from(fluentFutureA).catching(Throwable.class, new Function() { // from class: ads_mobile_sdk.tj3$$ExternalSyntheticLambda0
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return tj3.a((Throwable) obj);
            }
        }, MoreExecutors.directExecutor()).transformAsync(new sj3(this), MoreExecutors.directExecutor());
    }

    public final qj3 b(kb kbVar) {
        int iOrdinal = kbVar.ordinal();
        if (iOrdinal == 1) {
            return (qj3) this.a.get();
        }
        if (iOrdinal == 2) {
            return (qj3) this.b.get();
        }
        if (iOrdinal == 3) {
            return (qj3) this.c.get();
        }
        if (iOrdinal == 4) {
            return (qj3) this.d.get();
        }
        throw new IllegalArgumentException();
    }

    public final FluentFuture a(final kb kbVar) {
        return FluentFuture.from(Futures.submit(new Callable() { // from class: ads_mobile_sdk.tj3$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.b(kbVar);
            }
        }, this.e)).transformAsync(new AsyncFunction() { // from class: ads_mobile_sdk.tj3$$ExternalSyntheticLambda2
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                qj3 qj3Var = (qj3) obj;
                return Futures.transform(qj3Var.a(), new Function() { // from class: ads_mobile_sdk.tj3$$ExternalSyntheticLambda3
                    @Override // com.google.common.base.Function
                    public final Object apply(Object obj2) {
                        return tj3.a(qj3Var, (Void) obj2);
                    }
                }, MoreExecutors.directExecutor());
            }
        }, MoreExecutors.directExecutor());
    }

    public tj3(ks1 ks1Var, ks1 ks1Var2, ks1 ks1Var3, ks1 ks1Var4, na naVar, ExecutorService executorService, ts3 ts3Var) {
        this.a = ks1Var;
        this.b = ks1Var2;
        this.c = ks1Var3;
        this.d = ks1Var4;
        this.e = executorService;
        this.f = ts3Var;
        this.g = naVar.I();
    }
}
