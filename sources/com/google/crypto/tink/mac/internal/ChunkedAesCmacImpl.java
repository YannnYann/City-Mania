package com.google.crypto.tink.mac.internal;

import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.ConscryptUtil;
import com.google.crypto.tink.mac.AesCmacKey;
import com.google.crypto.tink.mac.ChunkedMac;
import java.security.GeneralSecurityException;
import java.security.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ChunkedAesCmacImpl implements ChunkedMac {
    public static final TinkFipsUtil.AlgorithmFipsCompatibility FIPS = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_NOT_FIPS;
    public final AesCmacKey key;

    public ChunkedAesCmacImpl(AesCmacKey key) {
        this.key = key;
    }

    public static ChunkedMac create(AesCmacKey key) throws GeneralSecurityException {
        if (!FIPS.isCompatible()) {
            throw new GeneralSecurityException("Cannot use AES-CMAC in FIPS-mode.");
        }
        Provider providerProviderOrNull = ConscryptUtil.providerOrNull();
        if (providerProviderOrNull != null) {
            try {
                return ChunkedAesCmacConscrypt.create(key, providerProviderOrNull);
            } catch (GeneralSecurityException unused) {
            }
        }
        return new ChunkedAesCmacImpl(key);
    }
}
