package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlinx.coroutines.selects.SelectClause1;

/* JADX INFO: compiled from: Deferred.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface Deferred<T> extends Job {
    Object await(Continuation<? super T> continuation);

    T getCompleted();

    SelectClause1<T> getOnAwait();
}
