package androidx.datastore.core;

import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: CorruptionHandler.kt */
/* JADX INFO: loaded from: classes.dex */
public interface CorruptionHandler<T> {
    Object handleCorruption(CorruptionException corruptionException, Continuation<? super T> continuation);
}
