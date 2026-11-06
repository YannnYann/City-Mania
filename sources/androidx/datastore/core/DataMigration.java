package androidx.datastore.core;

import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: DataMigration.kt */
/* JADX INFO: loaded from: classes.dex */
public interface DataMigration<T> {
    Object cleanUp(Continuation<? super Unit> continuation);

    Object migrate(T t, Continuation<? super T> continuation);

    Object shouldMigrate(T t, Continuation<? super Boolean> continuation);
}
