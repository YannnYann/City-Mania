package com.google.crypto.tink.subtle;

import com.google.crypto.tink.PublicKeyVerify;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.signature.EcdsaPublicKey;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public final class EcdsaVerifyJce implements PublicKeyVerify {
    public static final TinkFipsUtil.AlgorithmFipsCompatibility FIPS = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_REQUIRES_BORINGCRYPTO;

    public static PublicKeyVerify create(EcdsaPublicKey key) throws GeneralSecurityException {
        return com.google.crypto.tink.signature.internal.EcdsaVerifyJce.create(key);
    }
}
