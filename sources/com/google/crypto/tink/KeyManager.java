package com.google.crypto.tink;

import com.google.crypto.tink.proto.KeyData;
import com.google.crypto.tink.shaded.protobuf.ByteString;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public interface KeyManager<P> {
    String getKeyType();

    P getPrimitive(ByteString serializedKey) throws GeneralSecurityException;

    Class<P> getPrimitiveClass();

    KeyData newKeyData(ByteString serializedKeyFormat) throws GeneralSecurityException;
}
