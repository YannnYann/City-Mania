package androidx.datastore.core;

import java.io.InputStream;
import java.io.OutputStream;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: Serializer.kt */
/* JADX INFO: loaded from: classes.dex */
public interface Serializer<T> {
    T getDefaultValue();

    Object readFrom(InputStream inputStream, Continuation<? super T> continuation);

    Object writeTo(T t, OutputStream outputStream, Continuation<? super Unit> continuation);
}
