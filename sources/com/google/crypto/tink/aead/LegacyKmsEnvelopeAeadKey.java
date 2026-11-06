package com.google.crypto.tink.aead;

import com.google.crypto.tink.aead.LegacyKmsEnvelopeAeadParameters;
import com.google.crypto.tink.internal.OutputPrefixUtil;
import com.google.crypto.tink.util.Bytes;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public final class LegacyKmsEnvelopeAeadKey extends AeadKey {
    public final Integer idRequirement;
    public final Bytes outputPrefix;
    public final LegacyKmsEnvelopeAeadParameters parameters;

    public LegacyKmsEnvelopeAeadKey(LegacyKmsEnvelopeAeadParameters parameters, Bytes outputPrefix, Integer idRequirement) {
        this.parameters = parameters;
        this.outputPrefix = outputPrefix;
        this.idRequirement = idRequirement;
    }

    public static LegacyKmsEnvelopeAeadKey create(LegacyKmsEnvelopeAeadParameters parameters, Integer idRequirement) throws GeneralSecurityException {
        Bytes tinkOutputPrefix;
        if (parameters.getVariant() == LegacyKmsEnvelopeAeadParameters.Variant.NO_PREFIX) {
            if (idRequirement != null) {
                throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
            }
            tinkOutputPrefix = OutputPrefixUtil.EMPTY_PREFIX;
        } else {
            if (parameters.getVariant() != LegacyKmsEnvelopeAeadParameters.Variant.TINK) {
                throw new GeneralSecurityException("Unknown Variant: " + parameters.getVariant());
            }
            if (idRequirement == null) {
                throw new GeneralSecurityException("For given Variant TINK the value of idRequirement must be non-null");
            }
            tinkOutputPrefix = OutputPrefixUtil.getTinkOutputPrefix(idRequirement.intValue());
        }
        return new LegacyKmsEnvelopeAeadKey(parameters, tinkOutputPrefix, idRequirement);
    }

    @Override // com.google.crypto.tink.aead.AeadKey
    public Bytes getOutputPrefix() {
        return this.outputPrefix;
    }

    @Override // com.google.crypto.tink.aead.AeadKey, com.google.crypto.tink.Key
    public LegacyKmsEnvelopeAeadParameters getParameters() {
        return this.parameters;
    }

    @Override // com.google.crypto.tink.Key
    public Integer getIdRequirementOrNull() {
        return this.idRequirement;
    }
}
