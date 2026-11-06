package ads_mobile_sdk;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class qc1 {
    public final ks1 a;
    public final ks1 b;
    public final ExecutorService c;
    public final ks1 d;
    public ListenableFuture e = null;

    public static /* synthetic */ Void a(List list) {
        return null;
    }

    public qc1(ks1 ks1Var, ks1 ks1Var2, ExecutorService executorService, ks1 ks1Var3) {
        this.a = ks1Var;
        this.b = ks1Var2;
        this.c = executorService;
        this.d = ks1Var3;
    }

    public final synchronized ListenableFuture b() {
        try {
            ListenableFuture listenableFuture = this.e;
            if (listenableFuture != null) {
                return listenableFuture;
            }
            Set set = (Set) this.b.get();
            ArrayList arrayList = new ArrayList(set.size());
            Iterator it = set.iterator();
            while (it.hasNext()) {
                arrayList.add(((pc1) it.next()).a());
            }
            this.e = ((ts3) this.d.get()).a(lq0.EVENT_ID_INITIALIZATION, Futures.transform(Futures.allAsList(arrayList), new Function() { // from class: ads_mobile_sdk.qc1$$ExternalSyntheticLambda0
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return qc1.a((List) obj);
                }
            }, this.c));
            Iterator it2 = ((Set) this.a.get()).iterator();
            while (it2.hasNext()) {
                ((pc1) it2.next()).a();
            }
            return (ListenableFuture) Preconditions.checkNotNull(this.e);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized ListenableFuture a() {
        return (ListenableFuture) Preconditions.checkNotNull(this.e);
    }
}
