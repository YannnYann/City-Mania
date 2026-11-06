package androidx.datastore.core;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: InitializerApi.kt */
/* JADX INFO: loaded from: classes.dex */
public interface InitializerApi<T> {
    Object updateData(Function2<? super T, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation);
}
