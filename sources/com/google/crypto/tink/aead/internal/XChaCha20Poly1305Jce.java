package com.google.crypto.tink.aead.internal;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.aead.XChaCha20Poly1305Key;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.Util;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.Provider;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes3.dex */
public final class XChaCha20Poly1305Jce implements Aead {
    public static final TinkFipsUtil.AlgorithmFipsCompatibility FIPS = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_NOT_FIPS;
    public final byte[] key;
    public final byte[] outputPrefix;
    public final Provider provider;

    public XChaCha20Poly1305Jce(final byte[] key, final byte[] outputPrefix, Provider provider) throws GeneralSecurityException {
        if (!FIPS.isCompatible()) {
            throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
        }
        if (key.length != 32) {
            throw new InvalidKeyException("The key length in bytes must be 32.");
        }
        this.key = key;
        this.outputPrefix = outputPrefix;
        this.provider = provider;
    }

    public static Aead create(XChaCha20Poly1305Key key) throws GeneralSecurityException {
        return new XChaCha20Poly1305Jce(key.getKeyBytes().toByteArray(InsecureSecretKeyAccess.get()), key.getOutputPrefix().toByteArray(), ChaCha20Poly1305Jce.getValidCipherInstance().getProvider());
    }

    public static boolean isSupported() {
        return ChaCha20Poly1305Jce.isSupported();
    }

    @Override // com.google.crypto.tink.Aead
    public byte[] decrypt(final byte[] ciphertext, final byte[] associatedData) throws GeneralSecurityException {
        if (ciphertext == null) {
            throw new NullPointerException("ciphertext is null");
        }
        int length = ciphertext.length;
        byte[] bArr = this.outputPrefix;
        if (length < bArr.length + 40) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        if (!Util.isPrefix(bArr, ciphertext)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        byte[] bArr2 = new byte[24];
        System.arraycopy(ciphertext, this.outputPrefix.length, bArr2, 0, 24);
        SecretKeySpec secretKeySpec = new SecretKeySpec(ChaCha20Util.hChaCha20(this.key, bArr2), "ChaCha20");
        IvParameterSpec ivParameterSpec = new IvParameterSpec(getChaCha20Nonce(bArr2));
        Cipher cipherInstance = ChaCha20Poly1305Jce.getCipherInstance(this.provider);
        cipherInstance.init(2, secretKeySpec, ivParameterSpec);
        if (associatedData != null && associatedData.length != 0) {
            cipherInstance.updateAAD(associatedData);
        }
        byte[] bArr3 = this.outputPrefix;
        return cipherInstance.doFinal(ciphertext, bArr3.length + 24, (ciphertext.length - bArr3.length) - 24);
    }

    public static byte[] getChaCha20Nonce(byte[] nonce) {
        byte[] bArr = new byte[12];
        System.arraycopy(nonce, 16, bArr, 4, 8);
        return bArr;
    }
}
