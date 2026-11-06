package com.google.crypto.tink.subtle;

import com.google.crypto.tink.PublicKeySign;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.signature.RsaSsaPkcs1PrivateKey;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public final class RsaSsaPkcs1SignJce implements PublicKeySign {
    public static final TinkFipsUtil.AlgorithmFipsCompatibility FIPS = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_REQUIRES_BORINGCRYPTO;

    public static PublicKeySign create(RsaSsaPkcs1PrivateKey key) throws GeneralSecurityException {
        return com.google.crypto.tink.signature.internal.RsaSsaPkcs1SignJce.create(key);
    }
}
