package com.google.crypto.tink.subtle;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.aead.XChaCha20Poly1305Key;
import com.google.crypto.tink.aead.internal.InsecureNonceXChaCha20Poly1305;
import com.google.crypto.tink.internal.Util;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class XChaCha20Poly1305 implements Aead {
    public final InsecureNonceXChaCha20Poly1305 cipher;
    public final byte[] outputPrefix;

    public XChaCha20Poly1305(final byte[] key, final byte[] outputPrefix) throws GeneralSecurityException {
        this.cipher = new InsecureNonceXChaCha20Poly1305(key);
        this.outputPrefix = outputPrefix;
    }

    public static Aead create(XChaCha20Poly1305Key key) throws GeneralSecurityException {
        return new XChaCha20Poly1305(key.getKeyBytes().toByteArray(InsecureSecretKeyAccess.get()), key.getOutputPrefix().toByteArray());
    }

    private byte[] rawDecrypt(final byte[] ciphertext, final byte[] associatedData) throws GeneralSecurityException {
        if (ciphertext.length < 40) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        byte[] bArrCopyOf = Arrays.copyOf(ciphertext, 24);
        return this.cipher.decrypt(ByteBuffer.wrap(ciphertext, 24, ciphertext.length - 24), bArrCopyOf, associatedData);
    }

    @Override // com.google.crypto.tink.Aead
    public byte[] decrypt(final byte[] ciphertext, final byte[] associatedData) throws GeneralSecurityException {
        byte[] bArr = this.outputPrefix;
        if (bArr.length == 0) {
            return rawDecrypt(ciphertext, associatedData);
        }
        if (!Util.isPrefix(bArr, ciphertext)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        return rawDecrypt(Arrays.copyOfRange(ciphertext, this.outputPrefix.length, ciphertext.length), associatedData);
    }
}
