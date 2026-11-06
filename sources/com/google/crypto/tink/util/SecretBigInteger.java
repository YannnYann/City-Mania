package com.google.crypto.tink.util;

import com.google.crypto.tink.SecretKeyAccess;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class SecretBigInteger {
    public final BigInteger value;

    public SecretBigInteger(BigInteger value) {
        this.value = value;
    }

    public static SecretBigInteger fromBigInteger(BigInteger value, SecretKeyAccess access) {
        if (access == null) {
            throw new NullPointerException("SecretKeyAccess required");
        }
        return new SecretBigInteger(value);
    }

    public BigInteger getBigInteger(SecretKeyAccess access) {
        if (access == null) {
            throw new NullPointerException("SecretKeyAccess required");
        }
        return this.value;
    }
}
