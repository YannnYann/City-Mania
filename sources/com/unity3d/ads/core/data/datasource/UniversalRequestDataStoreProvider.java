package com.unity3d.ads.core.data.datasource;

import android.content.Context;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import com.unity3d.ads.core.data.model.UniversalRequestStoreSerializer;
import com.unity3d.ads.core.extensions.ContextExtensionsKt;
import com.unity3d.ads.datastore.UniversalRequestStoreOuterClass;
import com.unity3d.services.core.di.ServiceProvider;
import java.io.File;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: UniversalRequestDataStoreProvider.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class UniversalRequestDataStoreProvider {
    private DataStore<UniversalRequestStoreOuterClass.UniversalRequestStore> cachedDataStore;
    private final Context context;
    private final CoroutineDispatcher dispatcher;

    public UniversalRequestDataStoreProvider(Context context, CoroutineDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        this.context = context;
        this.dispatcher = dispatcher;
    }

    public final Context getContext() {
        return this.context;
    }

    public final CoroutineDispatcher getDispatcher() {
        return this.dispatcher;
    }

    public final DataStore<UniversalRequestStoreOuterClass.UniversalRequestStore> invoke() {
        synchronized (this) {
            DataStore<UniversalRequestStoreOuterClass.UniversalRequestStore> dataStore = this.cachedDataStore;
            if (dataStore != null) {
                return dataStore;
            }
            DataStore<UniversalRequestStoreOuterClass.UniversalRequestStore> dataStoreCreateDataStore = createDataStore();
            this.cachedDataStore = dataStoreCreateDataStore;
            return dataStoreCreateDataStore;
        }
    }

    private final DataStore<UniversalRequestStoreOuterClass.UniversalRequestStore> createDataStore() {
        return DataStoreFactory.create$default(DataStoreFactory.INSTANCE, new UniversalRequestStoreSerializer(), new ReplaceFileCorruptionHandler(new Function1() { // from class: com.unity3d.ads.core.data.datasource.UniversalRequestDataStoreProvider$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return UniversalRequestDataStoreProvider.createDataStore$lambda$2((CorruptionException) obj);
            }
        }), null, CoroutineScopeKt.CoroutineScope(this.dispatcher.plus(SupervisorKt.SupervisorJob$default(null, 1, null))), new Function0() { // from class: com.unity3d.ads.core.data.datasource.UniversalRequestDataStoreProvider$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return UniversalRequestDataStoreProvider.createDataStore$lambda$3(this.f$0);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final File createDataStore$lambda$3(UniversalRequestDataStoreProvider universalRequestDataStoreProvider) {
        return ContextExtensionsKt.unityAdsDataStoreFile(universalRequestDataStoreProvider.context, ServiceProvider.DATA_STORE_UNIVERSAL_REQUEST);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UniversalRequestStoreOuterClass.UniversalRequestStore createDataStore$lambda$2(CorruptionException it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return new UniversalRequestStoreSerializer().getDefaultValue();
    }
}
