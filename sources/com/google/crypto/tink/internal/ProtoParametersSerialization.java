package com.google.crypto.tink.internal;

import com.google.crypto.tink.proto.KeyTemplate;
import com.google.crypto.tink.util.Bytes;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public final class ProtoParametersSerialization implements Serialization {
    public final KeyTemplate keyTemplate;
    public final Bytes objectIdentifier;

    public ProtoParametersSerialization(KeyTemplate keyTemplate, Bytes objectIdentifier) {
        this.keyTemplate = keyTemplate;
        this.objectIdentifier = objectIdentifier;
    }

    public static ProtoParametersSerialization create(KeyTemplate keyTemplate) {
        return new ProtoParametersSerialization(keyTemplate, Util.toBytesFromPrintableAscii(keyTemplate.getTypeUrl()));
    }

    public static ProtoParametersSerialization checkedCreate(KeyTemplate keyTemplate) throws GeneralSecurityException {
        return new ProtoParametersSerialization(keyTemplate, Util.checkedToBytesFromPrintableAscii(keyTemplate.getTypeUrl()));
    }

    public KeyTemplate getKeyTemplate() {
        return this.keyTemplate;
    }

    @Override // com.google.crypto.tink.internal.Serialization
    public Bytes getObjectIdentifier() {
        return this.objectIdentifier;
    }
}
