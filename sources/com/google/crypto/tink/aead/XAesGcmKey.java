package com.google.crypto.tink.aead;

import com.google.crypto.tink.aead.XAesGcmParameters;
import com.google.crypto.tink.internal.OutputPrefixUtil;
import com.google.crypto.tink.util.Bytes;
import com.google.crypto.tink.util.SecretBytes;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public final class XAesGcmKey extends AeadKey {
    public final Integer idRequirement;
    public final SecretBytes keyBytes;
    public final Bytes outputPrefix;
    public final XAesGcmParameters parameters;

    public XAesGcmKey(XAesGcmParameters parameters, SecretBytes keyBytes, Bytes outputPrefix, Integer idRequirement) {
        this.parameters = parameters;
        this.keyBytes = keyBytes;
        this.outputPrefix = outputPrefix;
        this.idRequirement = idRequirement;
    }

    public static Bytes getOutputPrefix(XAesGcmParameters parameters, Integer idRequirement) {
        if (parameters.getVariant() == XAesGcmParameters.Variant.NO_PREFIX) {
            return OutputPrefixUtil.EMPTY_PREFIX;
        }
        if (parameters.getVariant() == XAesGcmParameters.Variant.TINK) {
            return OutputPrefixUtil.getTinkOutputPrefix(idRequirement.intValue());
        }
        throw new IllegalStateException("Unknown Variant: " + parameters.getVariant());
    }

    @Override // com.google.crypto.tink.aead.AeadKey
    public Bytes getOutputPrefix() {
        return this.outputPrefix;
    }

    public static XAesGcmKey create(XAesGcmParameters parameters, SecretBytes secretBytes, Integer idRequirement) throws GeneralSecurityException {
        XAesGcmParameters.Variant variant = parameters.getVariant();
        XAesGcmParameters.Variant variant2 = XAesGcmParameters.Variant.NO_PREFIX;
        if (variant != variant2 && idRequirement == null) {
            throw new GeneralSecurityException("For given Variant " + parameters.getVariant() + " the value of idRequirement must be non-null");
        }
        if (parameters.getVariant() == variant2 && idRequirement != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        if (secretBytes.size() != 32) {
            throw new GeneralSecurityException("XAesGcmKey key must be constructed with key of length 32 bytes, not " + secretBytes.size());
        }
        return new XAesGcmKey(parameters, secretBytes, getOutputPrefix(parameters, idRequirement), idRequirement);
    }

    public SecretBytes getKeyBytes() {
        return this.keyBytes;
    }

    @Override // com.google.crypto.tink.aead.AeadKey, com.google.crypto.tink.Key
    public XAesGcmParameters getParameters() {
        return this.parameters;
    }

    @Override // com.google.crypto.tink.Key
    public Integer getIdRequirementOrNull() {
        return this.idRequirement;
    }
}
