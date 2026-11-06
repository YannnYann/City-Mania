package androidx.datastore.preferences.protobuf;

/* JADX INFO: loaded from: classes.dex */
public interface MessageInfoFactory {
    boolean isSupported(Class<?> clazz);

    MessageInfo messageInfoFor(Class<?> clazz);
}
