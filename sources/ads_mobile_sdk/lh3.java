package ads_mobile_sdk;

import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.ListeningExecutorService;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class lh3 {
    public final ListeningExecutorService a;
    public final a b;
    public final Set c;
    public final String d;
    public final xf e;
    public final yw1 f;
    public final ts3 g;

    public lh3(ListeningExecutorService listeningExecutorService, a aVar, yw1 yw1Var, fl3 fl3Var, String str, xf xfVar, dw2 dw2Var, dw2 dw2Var2, dw2 dw2Var3, ts3 ts3Var) {
        this.a = listeningExecutorService;
        this.b = aVar;
        this.d = str;
        this.f = yw1Var;
        this.e = xfVar;
        this.g = ts3Var;
        int iOrdinal = fl3Var.ordinal();
        if (iOrdinal == 0) {
            this.c = (Set) dw2Var.get();
        } else if (iOrdinal == 1) {
            this.c = (Set) dw2Var2.get();
        } else {
            if (iOrdinal != 2) {
                throw new IllegalStateException();
            }
            this.c = (Set) dw2Var3.get();
        }
    }

    public final ListenableFuture b() {
        boolean z;
        a aVar = this.b;
        synchronized (aVar) {
            z = aVar.d;
        }
        if (!z) {
            return Futures.immediateFuture(Integer.toString(7));
        }
        if (!((zw1) this.f).b()) {
            return Futures.submit(new Callable() { // from class: ads_mobile_sdk.lh3$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f$0.d();
                }
            }, this.a);
        }
        ArrayList arrayList = new ArrayList(this.c.size());
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            arrayList.add(this.a.submit((Callable) it.next()));
        }
        return Futures.whenAllComplete(arrayList).call(new Callable() { // from class: ads_mobile_sdk.lh3$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.a();
            }
        }, MoreExecutors.directExecutor());
    }

    public final /* synthetic */ String d() {
        return this.b.a(ug.PSN_INITIALIZATION_FAIL, this.d);
    }

    public final String a() {
        ts3 ts3Var = this.g;
        lq0 lq0Var = lq0.EVENT_ID_ENCRYPTION;
        Callable callable = new Callable() { // from class: ads_mobile_sdk.lh3$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.c();
            }
        };
        qr3 qr3Var = new qr3(lq0Var, ts3Var.b, ts3Var.a);
        try {
            qr3Var.b();
            Object objCall = callable.call();
            qr3Var.a();
            return (String) objCall;
        } finally {
        }
    }

    public final /* synthetic */ String c() {
        return this.b.a((fh) this.e.b(), this.d);
    }
}
