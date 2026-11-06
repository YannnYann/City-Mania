package ads_mobile_sdk;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class f1 implements cf3 {
    public final Map a;
    public final xf b;
    public final ts3 c;
    public final qr3 d;
    public final long e;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.concurrent.Callable
    public final Object call() {
        fh fhVar;
        try {
            try {
                try {
                    this.d.b();
                    ListenableFuture listenableFuture = (ListenableFuture) this.a.get("gs");
                    if (listenableFuture != null && (fhVar = (fh) listenableFuture.get(this.e, TimeUnit.MILLISECONDS)) != null) {
                        synchronized (this.b) {
                            this.b.a(fhVar.y());
                            this.b.m(fhVar.v());
                        }
                    }
                    return null;
                } catch (ExecutionException e) {
                    e = e;
                    Throwable cause = e.getCause();
                    qr3 qr3Var = this.d;
                    if (cause != null) {
                        e = cause;
                    }
                    qr3Var.a(e);
                    return null;
                } catch (TimeoutException unused) {
                    this.c.b(lq0.EVENT_ID_AD_ATTEST_SIGNALS_TASK_TIMEOUT);
                    return null;
                }
            } catch (ClassCastException e2) {
                this.d.a(e2);
                return null;
            } catch (InterruptedException unused2) {
                Thread.currentThread().interrupt();
                return null;
            }
        } finally {
            this.d.a();
        }
    }

    public f1(xf xfVar, Map map, na naVar, ts3 ts3Var) {
        this.a = map;
        this.b = xfVar;
        this.c = ts3Var;
        this.d = ts3Var.a(lq0.EVENT_ID_AD_ATTEST_SIGNALS_TASK);
        this.e = naVar.K();
    }
}
