package com.google.crypto.tink.signature.internal;

import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.PublicKeySign;
import com.google.crypto.tink.internal.KeyManagerRegistry;
import com.google.crypto.tink.internal.LegacyProtoKey;
import com.google.crypto.tink.internal.ProtoKeySerialization;
import com.google.crypto.tink.subtle.Bytes;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public final class LegacyFullSign implements PublicKeySign {
    public final byte[] messageSuffix;
    public final byte[] outputPrefix;
    public final PublicKeySign rawSigner;

    public static PublicKeySign create(LegacyProtoKey key) throws GeneralSecurityException {
        ProtoKeySerialization serialization = key.getSerialization(InsecureSecretKeyAccess.get());
        return new LegacyFullSign((PublicKeySign) KeyManagerRegistry.globalInstance().getKeyManager(serialization.getTypeUrl(), PublicKeySign.class).getPrimitive(serialization.getValue()), LegacyFullVerify.getOutputPrefix(serialization), LegacyFullVerify.getMessageSuffix(serialization));
    }

    public LegacyFullSign(PublicKeySign rawSigner, byte[] outputPrefix, byte[] messageSuffix) {
        this.rawSigner = rawSigner;
        this.outputPrefix = outputPrefix;
        this.messageSuffix = messageSuffix;
    }

    @Override // com.google.crypto.tink.PublicKeySign
    public byte[] sign(byte[] data) throws GeneralSecurityException {
        byte[] bArrSign;
        byte[] bArr = this.messageSuffix;
        if (bArr.length == 0) {
            bArrSign = this.rawSigner.sign(data);
        } else {
            bArrSign = this.rawSigner.sign(Bytes.concat(data, bArr));
        }
        byte[] bArr2 = this.outputPrefix;
        return bArr2.length == 0 ? bArrSign : Bytes.concat(bArr2, bArrSign);
    }
}
