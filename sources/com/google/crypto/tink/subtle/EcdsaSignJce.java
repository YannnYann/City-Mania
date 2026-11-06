package com.google.crypto.tink.subtle;

import com.google.crypto.tink.PublicKeySign;
import com.google.crypto.tink.signature.EcdsaPrivateKey;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public final class EcdsaSignJce implements PublicKeySign {
    public static PublicKeySign create(EcdsaPrivateKey key) throws GeneralSecurityException {
        return com.google.crypto.tink.signature.internal.EcdsaSignJce.create(key);
    }
}
