package com.unity3d.ads.core.domain.adquality;

import com.google.protobuf.ByteString;

/* JADX INFO: compiled from: InitializeAdQuality.kt */
/* JADX INFO: loaded from: classes4.dex */
public interface InitializeAdQuality {
    void invoke(String str, ByteString byteString);

    void invokeWithGameId(ByteString byteString);
}
