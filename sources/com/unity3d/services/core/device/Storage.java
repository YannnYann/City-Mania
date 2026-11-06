package com.unity3d.services.core.device;

import com.unity3d.services.core.device.StorageManager;
import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.misc.JsonStorage;
import com.unity3d.services.core.misc.Utilities;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.json.JSONObject;

/* JADX INFO: compiled from: Storage.kt */
/* JADX INFO: loaded from: classes4.dex */
public class Storage extends JsonStorage {
    public static final Companion Companion = new Companion(null);
    private static final MutableStateFlow<List<Function1<StorageEventInfo, Unit>>> onStorageEventCallbacks = StateFlowKt.MutableStateFlow(CollectionsKt__CollectionsKt.emptyList());
    private final String _targetFileName;
    private final StorageManager.StorageType type;

    public Storage(String _targetFileName, StorageManager.StorageType type) {
        Intrinsics.checkNotNullParameter(_targetFileName, "_targetFileName");
        Intrinsics.checkNotNullParameter(type, "type");
        this._targetFileName = _targetFileName;
        this.type = type;
    }

    public final StorageManager.StorageType getType() {
        return this.type;
    }

    public synchronized boolean readStorage() {
        boolean z = false;
        try {
            try {
                byte[] fileBytes = Utilities.readFileBytes(new File(this._targetFileName));
                if (fileBytes == null) {
                    return false;
                }
                setData(new JSONObject(new String(fileBytes, Charsets.UTF_8)));
                z = true;
            } catch (FileNotFoundException e) {
                DeviceLog.debug("Storage JSON file not found in local cache:", e);
            }
        } catch (Exception e2) {
            DeviceLog.debug("Failed to read storage JSON file:", e2);
        }
        return z;
    }

    public final synchronized boolean initStorage() {
        readStorage();
        super.initData();
        return true;
    }

    public synchronized boolean writeStorage() {
        File file = new File(this._targetFileName);
        if (getData() == null) {
            return false;
        }
        return Utilities.writeFile(file, getData().toString());
    }

    public synchronized boolean clearStorage() {
        clearData();
        return new File(this._targetFileName).delete();
    }

    public final synchronized boolean storageFileExists() {
        return new File(this._targetFileName).exists();
    }

    public final synchronized void sendEvent(StorageEvent storageEvent, Object obj) {
        List<Function1<StorageEventInfo, Unit>> value = onStorageEventCallbacks.getValue();
        if (value.isEmpty()) {
            return;
        }
        Intrinsics.checkNotNull(storageEvent);
        StorageEventInfo storageEventInfo = new StorageEventInfo(storageEvent, this.type, obj);
        Iterator<T> it = value.iterator();
        while (it.hasNext()) {
            ((Function1) it.next()).invoke(storageEventInfo);
        }
    }

    /* JADX INFO: compiled from: Storage.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final void addStorageEventCallback(Function1<? super StorageEventInfo, Unit> callback) {
            Object value;
            Intrinsics.checkNotNullParameter(callback, "callback");
            MutableStateFlow mutableStateFlow = Storage.onStorageEventCallbacks;
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.compareAndSet(value, CollectionsKt___CollectionsKt.plus((List) value, callback)));
        }

        public final void removeStorageEventCallback(Function1<? super StorageEventInfo, Unit> callback) {
            Object value;
            Intrinsics.checkNotNullParameter(callback, "callback");
            MutableStateFlow mutableStateFlow = Storage.onStorageEventCallbacks;
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.compareAndSet(value, CollectionsKt___CollectionsKt.minus((List) value, callback)));
        }
    }
}
