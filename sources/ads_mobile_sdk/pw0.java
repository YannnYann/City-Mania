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
public final class pw0 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public pw0(vh1 vh1Var, dw2 dw2Var) {
        this.a = vh1Var;
        this.b = dw2Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        Context context = (Context) this.a.get();
        sz concurrencyObjects = (sz) this.b.get();
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(concurrencyObjects, "concurrencyObjects");
        return (DataStore) kq2.b(DataStoreFactory.create$default(DataStoreFactory.INSTANCE, wv0.a, null, null, CoroutineScopeKt.CoroutineScope(ExecutorsKt.from((ExecutorService) concurrencyObjects.d).plus(SupervisorKt.SupervisorJob$default(null, 1, null)).plus(new rs3())), new mw0(context), 6, null));
    }
}
