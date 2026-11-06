package androidx.datastore.preferences.protobuf;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface LazyStringList extends List {
    void add(ByteString element);

    Object getRaw(int index);

    List<?> getUnderlyingElements();
}
