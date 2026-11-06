package com.unity3d.ads.core.data.datasource;

import com.google.protobuf.ByteString;
import com.unity3d.ads.datastore.ByteStringStoreOuterClass;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* JADX INFO: compiled from: ByteStringDataSource.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface ByteStringDataSource {
    Object get(Continuation<? super ByteStringStoreOuterClass.ByteStringStore> continuation);

    Object set(ByteString byteString, Continuation<? super Unit> continuation);
}
