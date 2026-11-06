package com.google.crypto.tink.aead.internal;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.aead.AesGcmSivKey;
import com.google.crypto.tink.internal.Util;
import com.google.crypto.tink.subtle.Bytes;
import com.google.crypto.tink.subtle.Hex;
import com.google.crypto.tink.subtle.Validators;
import com.vungle.ads.internal.protos.Sdk;
import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes3.dex */
public final class AesGcmSiv implements Aead {
    public final ThrowingSupplier<Cipher> cipherSupplier;
    public final SecretKey keySpec;
    public final byte[] outputPrefix;
    public static final byte[] testPlaintext = Hex.decode("7a806c");
    public static final byte[] testAad = Hex.decode("46bb91c3c5");
    public static final byte[] testKey = Hex.decode("36864200e0eaf5284d884a0e77d31646");
    public static final byte[] testNounce = Hex.decode("bae8e37fc83441b16034566b");
    public static final byte[] testResult = Hex.decode("af60eb711bd85bc1e4d3e0a462e074eea428a8");

    public interface ThrowingSupplier<T> {
        T get() throws GeneralSecurityException;
    }

    public static boolean isAesGcmSivCipher(Cipher cipher) {
        try {
            cipher.init(2, new SecretKeySpec(testKey, "AES"), getParams(testNounce));
            cipher.updateAAD(testAad);
            byte[] bArr = testResult;
            return Bytes.equal(cipher.doFinal(bArr, 0, bArr.length), testPlaintext);
        } catch (GeneralSecurityException unused) {
            return false;
        }
    }

    public static Aead create(AesGcmSivKey key, ThrowingSupplier<Cipher> cipherSupplier) throws GeneralSecurityException {
        if (!isAesGcmSivCipher(cipherSupplier.get())) {
            throw new IllegalStateException("Cipher does not implement AES GCM SIV.");
        }
        return new AesGcmSiv(key.getKeyBytes().toByteArray(InsecureSecretKeyAccess.get()), key.getOutputPrefix().toByteArray(), cipherSupplier);
    }

    public AesGcmSiv(byte[] key, byte[] outputPrefix, ThrowingSupplier<Cipher> cipherSupplier) throws GeneralSecurityException {
        this.outputPrefix = outputPrefix;
        Validators.validateAesKeySize(key.length);
        this.keySpec = new SecretKeySpec(key, "AES");
        this.cipherSupplier = cipherSupplier;
    }

    @Override // com.google.crypto.tink.Aead
    public byte[] decrypt(final byte[] ciphertext, final byte[] associatedData) throws GeneralSecurityException {
        int length = ciphertext.length;
        byte[] bArr = this.outputPrefix;
        if (length < bArr.length + 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        if (!Util.isPrefix(bArr, ciphertext)) {
            throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
        }
        Cipher cipher = this.cipherSupplier.get();
        cipher.init(2, this.keySpec, getParams(ciphertext, this.outputPrefix.length, 12));
        if (associatedData != null && associatedData.length != 0) {
            cipher.updateAAD(associatedData);
        }
        byte[] bArr2 = this.outputPrefix;
        return cipher.doFinal(ciphertext, bArr2.length + 12, (ciphertext.length - bArr2.length) - 12);
    }

    public static AlgorithmParameterSpec getParams(final byte[] iv) {
        return getParams(iv, 0, iv.length);
    }

    public static AlgorithmParameterSpec getParams(final byte[] buf, int offset, int len) {
        return new GCMParameterSpec(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE, buf, offset, len);
    }
}
