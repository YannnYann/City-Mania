package com.unity3d.ads.core.data.manager;

import android.content.Context;
import com.unity3d.services.core.device.Storage;
import com.unity3d.services.core.device.StorageManager;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidStorageManager.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AndroidStorageManager implements StorageManager {
    public static final Companion Companion = new Companion(null);
    private static final String KEY_INITIALIZED = "configuration.hasInitialized";

    @Override // com.unity3d.ads.core.data.manager.StorageManager
    public boolean init(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return com.unity3d.services.core.device.StorageManager.init(context);
    }

    @Override // com.unity3d.ads.core.data.manager.StorageManager
    public void initStorage(StorageManager.StorageType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        com.unity3d.services.core.device.StorageManager.initStorage(type);
    }

    @Override // com.unity3d.ads.core.data.manager.StorageManager
    public Storage getStorage(StorageManager.StorageType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        Storage storage = com.unity3d.services.core.device.StorageManager.getStorage(type);
        Intrinsics.checkNotNullExpressionValue(storage, "getStorage(...)");
        return storage;
    }

    @Override // com.unity3d.ads.core.data.manager.StorageManager
    public boolean hasStorage(StorageManager.StorageType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        return com.unity3d.services.core.device.StorageManager.hasStorage(type);
    }

    @Override // com.unity3d.ads.core.data.manager.StorageManager
    public void addStorageLocation(StorageManager.StorageType type, String fileName) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        com.unity3d.services.core.device.StorageManager.addStorageLocation(type, fileName);
    }

    @Override // com.unity3d.ads.core.data.manager.StorageManager
    public void removeStorage(StorageManager.StorageType type) {
        Intrinsics.checkNotNullParameter(type, "type");
        com.unity3d.services.core.device.StorageManager.removeStorage(type);
    }

    @Override // com.unity3d.ads.core.data.manager.StorageManager
    public void hasInitialized() {
        Storage storage = getStorage(StorageManager.StorageType.PRIVATE);
        storage.set(KEY_INITIALIZED, Boolean.TRUE);
        storage.writeStorage();
    }

    /* JADX INFO: compiled from: AndroidStorageManager.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
