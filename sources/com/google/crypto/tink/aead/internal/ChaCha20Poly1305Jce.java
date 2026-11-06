package com.google.crypto.tink.aead.internal;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.aead.ChaCha20Poly1305Key;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.Util;
import com.google.crypto.tink.subtle.EngineFactory;
import com.google.crypto.tink.subtle.Hex;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.Provider;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes3.dex */
public final class ChaCha20Poly1305Jce implements Aead {
    public final SecretKey keySpec;
    public final byte[] outputPrefix;
    public final Provider provider;
    public static final TinkFipsUtil.AlgorithmFipsCompatibility FIPS = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_NOT_FIPS;
    public static final byte[] testKey = Hex.decode("808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9f");
    public static final byte[] testNonce = Hex.decode("070000004041424344454647");
    public static final byte[] testCiphertextOfEmpty = Hex.decode("a0784d7a4716f3feb4f64e7f4b39bf04");

    public static boolean isValid(Cipher cipher) {
        try {
            IvParameterSpec ivParameterSpec = new IvParameterSpec(testNonce);
            byte[] bArr = testKey;
            cipher.init(2, new SecretKeySpec(bArr, "ChaCha20"), ivParameterSpec);
            byte[] bArr2 = testCiphertextOfEmpty;
            if (cipher.doFinal(bArr2).length != 0) {
                return false;
            }
            cipher.init(2, new SecretKeySpec(bArr, "ChaCha20"), ivParameterSpec);
            return cipher.doFinal(bArr2).length == 0;
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    public ChaCha20Poly1305Jce(final byte[] key, final byte[] outputPrefix, Provider provider) throws GeneralSecurityException {
        if (!FIPS.isCompatible()) {
            throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
        }
        if (key.length != 32) {
            throw new InvalidKeyException("The key length in bytes must be 32.");
        }
        this.keySpec = new SecretKeySpec(key, "ChaCha20");
        this.outputPrefix = outputPrefix;
        this.provider = provider;
    }

    public static Aead create(ChaCha20Poly1305Key key) throws GeneralSecurityException {
        return new ChaCha20Poly1305Jce(key.getKeyBytes().toByteArray(InsecureSecretKeyAccess.get()), key.getOutputPrefix().toByteArray(), getValidCipherInstance().getProvider());
    }

    public static Cipher getValidCipherInstance() throws GeneralSecurityException {
        Cipher engineFactory = EngineFactory.CIPHER.getInstance("ChaCha20-Poly1305");
        if (isValid(engineFactory)) {
            return engineFactory;
        }
        throw new GeneralSecurityException("JCE does not support algorithm: ChaCha20-Poly1305");
    }

    public static Cipher getCipherInstance(Provider provider) throws GeneralSecurityException {
        return Cipher.getInstance("ChaCha20-Poly1305", provider);
    }

    public static boolean isSupported() {
        try {
            getValidCipherInstance();
            return true;
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    @Override // com.google.crypto.tink.Aead
    public byte[] decrypt(final byte[] ciphertext, final byte[] associatedData) throws GeneralSecurityException {
        if (ciphertext == null) {
            throw new NullPointerException("ciphertext is null");
        }
        int length = ciphertext.length;
        byte[] bArr = this.outputPrefix;
        if (length < bArr.length + 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        if (!Util.isPrefix(bArr, ciphertext)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        byte[] bArr2 = new byte[12];
        System.arraycopy(ciphertext, this.outputPrefix.length, bArr2, 0, 12);
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr2);
        Cipher cipherInstance = getCipherInstance(this.provider);
        cipherInstance.init(2, this.keySpec, ivParameterSpec);
        if (associatedData != null && associatedData.length != 0) {
            cipherInstance.updateAAD(associatedData);
        }
        byte[] bArr3 = this.outputPrefix;
        return cipherInstance.doFinal(ciphertext, bArr3.length + 12, (ciphertext.length - bArr3.length) - 12);
    }
}
