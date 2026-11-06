package com.google.crypto.tink.mac.internal;

import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.mac.AesCmacKey;
import com.google.crypto.tink.mac.AesCmacParameters;
import com.google.crypto.tink.mac.ChunkedMac;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes3.dex */
public final class ChunkedAesCmacConscrypt implements ChunkedMac {
    public static final TinkFipsUtil.AlgorithmFipsCompatibility FIPS = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_NOT_FIPS;
    public final Provider conscrypt;
    public final byte[] outputPrefix;
    public final AesCmacParameters parameters;
    public final SecretKeySpec secretKeySpec;

    public static SecretKeySpec toSecretKeySpec(AesCmacKey key) {
        return new SecretKeySpec(key.getAesKey().toByteArray(InsecureSecretKeyAccess.get()), "AES");
    }

    public ChunkedAesCmacConscrypt(AesCmacKey key, Provider conscrypt) throws GeneralSecurityException {
        if (conscrypt == null) {
            throw new IllegalArgumentException("conscrypt is null");
        }
        if (!FIPS.isCompatible()) {
            throw new GeneralSecurityException("Cannot use AES-CMAC in FIPS-mode.");
        }
        try {
            Mac.getInstance("AESCMAC", conscrypt);
            this.conscrypt = conscrypt;
            this.outputPrefix = key.getOutputPrefix().toByteArray();
            this.parameters = key.getParameters();
            this.secretKeySpec = toSecretKeySpec(key);
        } catch (NoSuchAlgorithmException e) {
            throw new GeneralSecurityException("AES-CMAC not available.", e);
        }
    }

    public static ChunkedMac create(AesCmacKey key, Provider conscrypt) throws GeneralSecurityException {
        return new ChunkedAesCmacConscrypt(key, conscrypt);
    }
}
