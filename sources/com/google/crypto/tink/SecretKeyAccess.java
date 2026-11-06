package com.google.crypto.tink;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public final class SecretKeyAccess {
    public static final SecretKeyAccess INSTANCE = new SecretKeyAccess();

    public static SecretKeyAccess instance() {
        return INSTANCE;
    }

    public static SecretKeyAccess requireAccess(SecretKeyAccess access) throws GeneralSecurityException {
        if (access != null) {
            return access;
        }
        throw new GeneralSecurityException("SecretKeyAccess is required");
    }
}
