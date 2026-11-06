package com.google.crypto.tink.aead.subtle;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.aead.AesGcmSivKey;
import com.google.crypto.tink.aead.internal.AesGcmSiv;
import com.google.crypto.tink.subtle.EngineFactory;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes3.dex */
public final class AesGcmSiv implements Aead {
    public static final ThreadLocal<Cipher> localAesGcmSivCipher = new ThreadLocal<Cipher>() { // from class: com.google.crypto.tink.aead.subtle.AesGcmSiv.1
        @Override // java.lang.ThreadLocal
        public Cipher initialValue() {
            try {
                Cipher engineFactory = EngineFactory.CIPHER.getInstance("AES/GCM-SIV/NoPadding");
                if (com.google.crypto.tink.aead.internal.AesGcmSiv.isAesGcmSivCipher(engineFactory)) {
                    return engineFactory;
                }
                return null;
            } catch (GeneralSecurityException e) {
                throw new IllegalStateException(e);
            }
        }
    };

    public static Cipher cipherSupplier() throws GeneralSecurityException {
        try {
            Cipher cipher = localAesGcmSivCipher.get();
            if (cipher != null) {
                return cipher;
            }
            throw new GeneralSecurityException("AES GCM SIV cipher is invalid.");
        } catch (IllegalStateException e) {
            throw new GeneralSecurityException("AES GCM SIV cipher is not available or is invalid.", e);
        }
    }

    public static Aead create(AesGcmSivKey key) throws GeneralSecurityException {
        return com.google.crypto.tink.aead.internal.AesGcmSiv.create(key, new AesGcmSiv.ThrowingSupplier() { // from class: com.google.crypto.tink.aead.subtle.AesGcmSiv$$ExternalSyntheticLambda0
            @Override // com.google.crypto.tink.aead.internal.AesGcmSiv.ThrowingSupplier
            public final Object get() {
                return AesGcmSiv.cipherSupplier();
            }
        });
    }
}
