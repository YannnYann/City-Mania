package com.google.crypto.tink.shaded.protobuf;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface LazyStringList extends List {
    void add(ByteString element);

    Object getRaw(int index);
}
