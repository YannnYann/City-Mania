package androidx.datastore.core;

/* JADX INFO: compiled from: Storage.kt */
/* JADX INFO: loaded from: classes.dex */
public interface Storage<T> {
    StorageConnection<T> createConnection();
}
