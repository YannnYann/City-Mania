package com.google.crypto.tink.aead;

import com.google.crypto.tink.aead.LegacyKmsAeadParameters;
import com.google.crypto.tink.util.Bytes;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public final class LegacyKmsAeadKey extends AeadKey {
    public final Integer idRequirement;
    public final Bytes outputPrefix;
    public final LegacyKmsAeadParameters parameters;

    public LegacyKmsAeadKey(LegacyKmsAeadParameters parameters, Bytes outputPrefix, Integer idRequirement) {
        this.parameters = parameters;
        this.outputPrefix = outputPrefix;
        this.idRequirement = idRequirement;
    }

    public static LegacyKmsAeadKey create(LegacyKmsAeadParameters parameters, Integer idRequirement) throws GeneralSecurityException {
        Bytes bytesCopyFrom;
        if (parameters.variant() == LegacyKmsAeadParameters.Variant.TINK) {
            if (idRequirement == null) {
                throw new GeneralSecurityException("For given Variant TINK the value of idRequirement must be non-null");
            }
            bytesCopyFrom = Bytes.copyFrom(ByteBuffer.allocate(5).put((byte) 1).putInt(idRequirement.intValue()).array());
        } else {
            if (parameters.variant() != LegacyKmsAeadParameters.Variant.NO_PREFIX) {
                throw new GeneralSecurityException("Unknown Variant: " + parameters.variant());
            }
            if (idRequirement != null) {
                throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
            }
            bytesCopyFrom = Bytes.copyFrom(new byte[0]);
        }
        return new LegacyKmsAeadKey(parameters, bytesCopyFrom, idRequirement);
    }

    @Override // com.google.crypto.tink.aead.AeadKey
    public Bytes getOutputPrefix() {
        return this.outputPrefix;
    }

    @Override // com.google.crypto.tink.aead.AeadKey, com.google.crypto.tink.Key
    public LegacyKmsAeadParameters getParameters() {
        return this.parameters;
    }

    @Override // com.google.crypto.tink.Key
    public Integer getIdRequirementOrNull() {
        return this.idRequirement;
    }
}
