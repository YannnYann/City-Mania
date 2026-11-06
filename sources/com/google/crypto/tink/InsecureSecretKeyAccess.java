package com.google.crypto.tink;

/* JADX INFO: loaded from: classes3.dex */
public final class InsecureSecretKeyAccess {
    public static SecretKeyAccess get() {
        return SecretKeyAccess.instance();
    }
}
