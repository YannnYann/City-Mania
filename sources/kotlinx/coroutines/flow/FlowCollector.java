package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: FlowCollector.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface FlowCollector<T> {
    Object emit(T t, Continuation<? super Unit> continuation);
}
