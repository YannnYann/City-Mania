package com.google.crypto.tink.subtle;

import com.google.crypto.tink.Aead;
import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.aead.AesGcmKey;
import com.google.crypto.tink.aead.internal.AesGcmJceUtil;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.Util;
import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;

/* JADX INFO: loaded from: classes3.dex */
public final class AesGcmJce implements Aead {
    public static final TinkFipsUtil.AlgorithmFipsCompatibility FIPS = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_REQUIRES_BORINGCRYPTO;
    public final SecretKey keySpec;
    public final byte[] outputPrefix;

    public AesGcmJce(final byte[] key, com.google.crypto.tink.util.Bytes outputPrefix) throws GeneralSecurityException {
        if (!FIPS.isCompatible()) {
            throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
        }
        this.keySpec = AesGcmJceUtil.getSecretKey(key);
        this.outputPrefix = outputPrefix.toByteArray();
    }

    public static Aead create(AesGcmKey key) throws GeneralSecurityException {
        if (key.getParameters().getIvSizeBytes() != 12) {
            throw new GeneralSecurityException("Expected IV Size 12, got " + key.getParameters().getIvSizeBytes());
        }
        if (key.getParameters().getTagSizeBytes() != 16) {
            throw new GeneralSecurityException("Expected tag Size 16, got " + key.getParameters().getTagSizeBytes());
        }
        return new AesGcmJce(key.getKeyBytes().toByteArray(InsecureSecretKeyAccess.get()), key.getOutputPrefix());
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
        AlgorithmParameterSpec params = AesGcmJceUtil.getParams(ciphertext, this.outputPrefix.length, 12);
        Cipher threadLocalCipher = AesGcmJceUtil.getThreadLocalCipher();
        threadLocalCipher.init(2, this.keySpec, params);
        if (associatedData != null && associatedData.length != 0) {
            threadLocalCipher.updateAAD(associatedData);
        }
        byte[] bArr2 = this.outputPrefix;
        return threadLocalCipher.doFinal(ciphertext, bArr2.length + 12, (ciphertext.length - bArr2.length) - 12);
    }
}
