package com.google.crypto.tink.aead.internal;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;

/* JADX INFO: loaded from: classes3.dex */
public final class InsecureNonceXChaCha20Poly1305 extends InsecureNonceChaCha20Poly1305Base {
    @Override // com.google.crypto.tink.aead.internal.InsecureNonceChaCha20Poly1305Base
    public /* bridge */ /* synthetic */ byte[] decrypt(ByteBuffer ciphertext, final byte[] nonce, final byte[] associatedData) throws GeneralSecurityException {
        return super.decrypt(ciphertext, nonce, associatedData);
    }

    public InsecureNonceXChaCha20Poly1305(final byte[] key) throws GeneralSecurityException {
        super(key);
    }

    @Override // com.google.crypto.tink.aead.internal.InsecureNonceChaCha20Poly1305Base
    public InsecureNonceChaCha20Base newChaCha20Instance(final byte[] key, int initialCounter) throws InvalidKeyException {
        return new InsecureNonceXChaCha20(key, initialCounter);
    }
}
