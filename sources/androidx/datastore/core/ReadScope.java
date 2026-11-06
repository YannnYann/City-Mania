package androidx.datastore.core;

import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: StorageConnection.kt */
/* JADX INFO: loaded from: classes.dex */
public interface ReadScope<T> extends Closeable {
    Object readData(Continuation<? super T> continuation);
}
