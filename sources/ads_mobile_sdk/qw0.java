package ads_mobile_sdk;

import android.content.Context;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import java.util.concurrent.ExecutorService;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes.dex */
public final class qw0 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        Context context = (Context) this.a.get();
        sz concurrencyObjects = (sz) this.b.get();
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(concurrencyObjects, "concurrencyObjects");
        return (DataStore) kq2.b(DataStoreFactory.create$default(DataStoreFactory.INSTANCE, va3.a, null, null, CoroutineScopeKt.CoroutineScope(ExecutorsKt.from((ExecutorService) concurrencyObjects.d).plus(SupervisorKt.SupervisorJob$default(null, 1, null)).plus(new rs3())), new nw0(context), 6, null));
    }

    public qw0(dw2 dw2Var, dw2 dw2Var2) {
        this.a = dw2Var;
        this.b = dw2Var2;
    }
}
