package com.google.crypto.tink.internal;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes3.dex */
public final class Random {
    public static final ThreadLocal<SecureRandom> localRandom = new ThreadLocal<SecureRandom>() { // from class: com.google.crypto.tink.internal.Random.1
        @Override // java.lang.ThreadLocal
        public SecureRandom initialValue() {
            return Random.newDefaultSecureRandom();
        }
    };

    public static SecureRandom create() {
        Provider providerProviderOrNull = ConscryptUtil.providerOrNull();
        if (providerProviderOrNull != null) {
            try {
                return SecureRandom.getInstance("SHA1PRNG", providerProviderOrNull);
            } catch (GeneralSecurityException unused) {
            }
        }
        Provider providerProviderWithReflectionOrNull = ConscryptUtil.providerWithReflectionOrNull();
        if (providerProviderWithReflectionOrNull != null) {
            try {
                return SecureRandom.getInstance("SHA1PRNG", providerProviderWithReflectionOrNull);
            } catch (GeneralSecurityException unused2) {
            }
        }
        return new SecureRandom();
    }

    public static SecureRandom newDefaultSecureRandom() {
        SecureRandom secureRandomCreate = create();
        secureRandomCreate.nextLong();
        return secureRandomCreate;
    }

    public static byte[] randBytes(int size) {
        byte[] bArr = new byte[size];
        localRandom.get().nextBytes(bArr);
        return bArr;
    }
}
