package com.google.crypto.tink.util;

import com.google.crypto.tink.SecretKeyAccess;
import com.google.crypto.tink.subtle.Random;

/* JADX INFO: loaded from: classes3.dex */
public final class SecretBytes {
    public final Bytes bytes;

    public SecretBytes(Bytes bytes) {
        this.bytes = bytes;
    }

    public static SecretBytes copyFrom(byte[] value, SecretKeyAccess access) {
        if (access == null) {
            throw new NullPointerException("SecretKeyAccess required");
        }
        return new SecretBytes(Bytes.copyFrom(value));
    }

    public static SecretBytes randomBytes(int length) {
        return new SecretBytes(Bytes.copyFrom(Random.randBytes(length)));
    }

    public byte[] toByteArray(SecretKeyAccess access) {
        if (access == null) {
            throw new NullPointerException("SecretKeyAccess required");
        }
        return this.bytes.toByteArray();
    }

    public int size() {
        return this.bytes.size();
    }
}
