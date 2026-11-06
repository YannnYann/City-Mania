package androidx.datastore.core;

import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: StorageConnection.kt */
/* JADX INFO: loaded from: classes.dex */
public interface WriteScope<T> extends ReadScope<T> {
    Object writeData(T t, Continuation<? super Unit> continuation);
}
