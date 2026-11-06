package com.google.crypto.tink;

import java.io.IOException;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public final class TinkJsonProtoKeysetFormat {
    public static KeysetHandle parseKeysetWithoutSecret(String serializedKeyset) throws GeneralSecurityException {
        try {
            return KeysetHandle.readNoSecret(JsonKeysetReader.withString(serializedKeyset));
        } catch (IOException unused) {
            throw new GeneralSecurityException("Parse keyset failed");
        }
    }
}
