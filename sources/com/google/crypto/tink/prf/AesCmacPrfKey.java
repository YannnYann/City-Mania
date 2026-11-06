package com.google.crypto.tink.prf;

import com.google.crypto.tink.util.SecretBytes;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public final class AesCmacPrfKey extends PrfKey {
    public final SecretBytes keyBytes;
    public final AesCmacPrfParameters parameters;

    @Override // com.google.crypto.tink.Key
    public Integer getIdRequirementOrNull() {
        return null;
    }

    public AesCmacPrfKey(AesCmacPrfParameters parameters, SecretBytes keyBytes) {
        this.parameters = parameters;
        this.keyBytes = keyBytes;
    }

    public static AesCmacPrfKey create(AesCmacPrfParameters parameters, SecretBytes keyBytes) throws GeneralSecurityException {
        if (parameters.getKeySizeBytes() != keyBytes.size()) {
            throw new GeneralSecurityException("Key size mismatch");
        }
        return new AesCmacPrfKey(parameters, keyBytes);
    }

    public SecretBytes getKeyBytes() {
        return this.keyBytes;
    }

    @Override // com.google.crypto.tink.Key
    public AesCmacPrfParameters getParameters() {
        return this.parameters;
    }
}
