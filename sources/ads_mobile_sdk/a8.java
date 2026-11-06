package ads_mobile_sdk;

import android.content.Context;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class a8 implements jr0 {
    public final dw2 a;
    public final dw2 b;

    public a8(vh1 vh1Var, g8 g8Var) {
        this.a = vh1Var;
        this.b = g8Var;
    }

    @Override // ads_mobile_sdk.cw2
    public final Object get() {
        Context context = (Context) this.a.get();
        d40 coroutineScopeProvider = (d40) this.b.get();
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(coroutineScopeProvider, "coroutineScopeProvider");
        return (DataStore) kq2.b(DataStoreFactory.create$default(DataStoreFactory.INSTANCE, y7.a, null, null, coroutineScopeProvider.get(), new z7(context), 6, null));
    }
}
