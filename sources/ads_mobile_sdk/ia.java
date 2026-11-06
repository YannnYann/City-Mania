package ads_mobile_sdk;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class ia {
    public final qc1 a;
    public final wj3 b;
    public final hl3 c;
    public final ts3 d;
    public final ja3 e;
    public final long f;
    public final ks1 g;
    public final long h;
    public final long i = System.currentTimeMillis();
    public final boolean j;
    public final long k;
    public final boolean l;

    public ia(qc1 qc1Var, wj3 wj3Var, hl3 hl3Var, ts3 ts3Var, ja3 ja3Var, ks1 ks1Var, na naVar) {
        this.a = qc1Var;
        this.b = wj3Var;
        this.c = hl3Var;
        this.d = ts3Var;
        this.e = ja3Var;
        this.f = naVar.U();
        this.g = ks1Var;
        this.h = naVar.x();
        this.j = naVar.F();
        this.k = naVar.y();
        this.l = naVar.z();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String b(final Context context, final String str, final View view, final Activity activity) {
        ListenableFuture listenableFutureA;
        ListenableFuture listenableFuture;
        ts3 ts3Var = this.d;
        qr3 qr3Var = new qr3(lq0.EVENT_ID_SIGNAL_VIEW, ts3Var.b, ts3Var.a);
        if (this.l) {
            qc1 qc1Var = this.a;
            synchronized (qc1Var) {
                listenableFuture = (ListenableFuture) Preconditions.checkNotNull(qc1Var.e);
            }
            listenableFutureA = Futures.nonCancellationPropagating(listenableFuture);
        } else {
            listenableFutureA = this.a.a();
        }
        ListenableFuture listenableFutureTransformAsync = Futures.transformAsync(listenableFutureA, new AsyncFunction() { // from class: ads_mobile_sdk.ia$$ExternalSyntheticLambda1
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                return this.f$0.b(context, str, view, activity, (Void) obj);
            }
        }, MoreExecutors.directExecutor());
        try {
            try {
                try {
                    try {
                        try {
                            qr3Var.b();
                            String str2 = (String) listenableFutureTransformAsync.get(this.f, TimeUnit.MILLISECONDS);
                            qr3Var.a();
                            this.e.a();
                            return str2;
                        } catch (Throwable th) {
                            qr3Var.a(th);
                            throw th;
                        }
                    } catch (ExecutionException e) {
                        Throwable th2 = e;
                        Throwable cause = th2.getCause();
                        if (cause != null) {
                            th2 = cause;
                        }
                        qr3Var.a(th2);
                        String string = Integer.toString(3);
                        qr3Var.a();
                        this.e.a();
                        return string;
                    }
                } catch (TimeoutException unused) {
                    if (this.l) {
                        listenableFutureTransformAsync.cancel(false);
                    }
                    this.d.b(lq0.EVENT_ID_VIEW_SIGNAL_TIMEOUT);
                    String string2 = Integer.toString(17);
                    qr3Var.a();
                    this.e.a();
                    return string2;
                }
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
                qr3Var.a(e2);
                qr3Var.a();
                this.e.a();
                return "";
            }
        } catch (Throwable th3) {
            qr3Var.a();
            this.e.a();
            throw th3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String a(final Context context, final String str, final View view, final Activity activity) {
        ListenableFuture listenableFutureA;
        ListenableFuture listenableFuture;
        ts3 ts3Var = this.d;
        qr3 qr3Var = new qr3(lq0.EVENT_ID_SIGNAL_CLICK, ts3Var.b, ts3Var.a);
        if (this.l) {
            qc1 qc1Var = this.a;
            synchronized (qc1Var) {
                listenableFuture = (ListenableFuture) Preconditions.checkNotNull(qc1Var.e);
            }
            listenableFutureA = Futures.nonCancellationPropagating(listenableFuture);
        } else {
            listenableFutureA = this.a.a();
        }
        ListenableFuture listenableFutureTransformAsync = Futures.transformAsync(listenableFutureA, new AsyncFunction() { // from class: ads_mobile_sdk.ia$$ExternalSyntheticLambda0
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                return this.f$0.a(context, str, view, activity, (Void) obj);
            }
        }, MoreExecutors.directExecutor());
        try {
            try {
                try {
                    try {
                        try {
                            qr3Var.b();
                            String str2 = (String) listenableFutureTransformAsync.get(this.f, TimeUnit.MILLISECONDS);
                            qr3Var.a();
                            this.e.a();
                            return str2;
                        } catch (Throwable th) {
                            qr3Var.a(th);
                            throw th;
                        }
                    } catch (ExecutionException e) {
                        Throwable th2 = e;
                        Throwable cause = th2.getCause();
                        if (cause != null) {
                            th2 = cause;
                        }
                        qr3Var.a(th2);
                        String string = Integer.toString(3);
                        qr3Var.a();
                        this.e.a();
                        return string;
                    }
                } catch (TimeoutException unused) {
                    if (this.l) {
                        listenableFutureTransformAsync.cancel(false);
                    }
                    this.d.b(lq0.EVENT_ID_CLICK_SIGNAL_TIMEOUT);
                    String string2 = Integer.toString(17);
                    qr3Var.a();
                    this.e.a();
                    return string2;
                }
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
                qr3Var.a(e2);
                qr3Var.a();
                this.e.a();
                return "";
            }
        } catch (Throwable th3) {
            qr3Var.a();
            this.e.a();
            throw th3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String a(final Context context) {
        ListenableFuture listenableFutureA;
        long j;
        ListenableFuture listenableFuture;
        boolean z = this.j && System.currentTimeMillis() - this.i <= this.k;
        ts3 ts3Var = this.d;
        qr3 qr3Var = new qr3(lq0.EVENT_ID_SIGNAL_QUERY, ts3Var.b, ts3Var.a);
        if (this.l) {
            qc1 qc1Var = this.a;
            synchronized (qc1Var) {
                listenableFuture = (ListenableFuture) Preconditions.checkNotNull(qc1Var.e);
            }
            listenableFutureA = Futures.nonCancellationPropagating(listenableFuture);
        } else {
            listenableFutureA = this.a.a();
        }
        ListenableFuture listenableFutureTransformAsync = Futures.transformAsync(listenableFutureA, new AsyncFunction() { // from class: ads_mobile_sdk.ia$$ExternalSyntheticLambda2
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                return this.f$0.a(context, (Void) obj);
            }
        }, MoreExecutors.directExecutor());
        try {
            try {
                try {
                    try {
                        try {
                            qr3Var.b();
                            if (z) {
                                j = this.h;
                            } else {
                                j = this.f;
                            }
                            String str = (String) listenableFutureTransformAsync.get(j, TimeUnit.MILLISECONDS);
                            qr3Var.a();
                            this.e.a();
                            return str;
                        } catch (ExecutionException e) {
                            e = e;
                            Throwable cause = e.getCause();
                            if (cause != null) {
                                e = cause;
                            }
                            qr3Var.a(e);
                            String string = Integer.toString(3);
                            qr3Var.a();
                            this.e.a();
                            return string;
                        }
                    } catch (Throwable th) {
                        qr3Var.a(th);
                        throw th;
                    }
                } catch (TimeoutException unused) {
                    if (this.l) {
                        listenableFutureTransformAsync.cancel(false);
                    }
                    String strA = a(z);
                    qr3Var.a();
                    this.e.a();
                    return strA;
                }
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
                qr3Var.a(e2);
                qr3Var.a();
                this.e.a();
                return "";
            }
        } catch (Throwable th2) {
            qr3Var.a();
            this.e.a();
            throw th2;
        }
    }

    public final ListenableFuture b(Context context, String str, View view, Activity activity, Void r5) {
        return ((qj3) this.b.f.get()).a(context, str, view, activity);
    }

    public final String a(boolean z) {
        if (z) {
            bx1 bx1Var = (bx1) this.g.get();
            long j = this.i;
            cx1 cx1Var = (cx1) bx1Var;
            ts3 ts3Var = cx1Var.b;
            try {
                new qr3(lq0.EVENT_ID_MINIMAL_SIGNAL_QUERY, ts3Var.b, ts3Var.a).b();
                return cx1Var.a(j);
            } finally {
            }
        } else {
            this.d.b(lq0.EVENT_ID_QUERY_SIGNAL_TIMEOUT);
            return Integer.toString(17);
        }
    }

    public final ListenableFuture a(Context context, String str, View view, Activity activity, Void r5) {
        return ((qj3) this.b.f.get()).b(context, str, view, activity);
    }

    public final ListenableFuture a(Context context, Void r2) {
        return ((qj3) this.b.f.get()).a(context);
    }
}
