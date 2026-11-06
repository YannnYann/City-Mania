package com.google.crypto.tink.signature;

import com.google.crypto.tink.Key;
import com.google.crypto.tink.util.Bytes;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SignaturePrivateKey extends Key {
    public abstract SignaturePublicKey getPublicKey();

    public final Bytes getOutputPrefix() {
        return getPublicKey().getOutputPrefix();
    }

    @Override // com.google.crypto.tink.Key
    public Integer getIdRequirementOrNull() {
        return getPublicKey().getIdRequirementOrNull();
    }
}
