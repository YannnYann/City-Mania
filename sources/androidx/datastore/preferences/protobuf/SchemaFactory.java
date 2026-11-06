package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public interface SchemaFactory {
    <T> Schema<T> createSchema(Class<T> messageType);
}
