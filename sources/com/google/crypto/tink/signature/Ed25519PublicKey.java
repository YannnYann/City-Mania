package com.google.crypto.tink.signature;

import com.google.crypto.tink.internal.OutputPrefixUtil;
import com.google.crypto.tink.signature.Ed25519Parameters;
import com.google.crypto.tink.util.Bytes;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public final class Ed25519PublicKey extends SignaturePublicKey {
    public final Integer idRequirement;
    public final Bytes outputPrefix;
    public final Ed25519Parameters parameters;
    public final Bytes publicKeyBytes;

    public Ed25519PublicKey(Ed25519Parameters parameters, Bytes publicKeyBytes, Bytes outputPrefix, Integer idRequirement) {
        this.parameters = parameters;
        this.publicKeyBytes = publicKeyBytes;
        this.outputPrefix = outputPrefix;
        this.idRequirement = idRequirement;
    }

    public static Bytes createOutputPrefix(Ed25519Parameters parameters, Integer idRequirement) {
        if (parameters.getVariant() == Ed25519Parameters.Variant.NO_PREFIX) {
            return OutputPrefixUtil.EMPTY_PREFIX;
        }
        if (parameters.getVariant() == Ed25519Parameters.Variant.CRUNCHY || parameters.getVariant() == Ed25519Parameters.Variant.LEGACY) {
            return OutputPrefixUtil.getLegacyOutputPrefix(idRequirement.intValue());
        }
        if (parameters.getVariant() == Ed25519Parameters.Variant.TINK) {
            return OutputPrefixUtil.getTinkOutputPrefix(idRequirement.intValue());
        }
        throw new IllegalStateException("Unknown Variant: " + parameters.getVariant());
    }

    @Override // com.google.crypto.tink.signature.SignaturePublicKey
    public Bytes getOutputPrefix() {
        return this.outputPrefix;
    }

    public static Ed25519PublicKey create(Ed25519Parameters.Variant variant, Bytes publicKeyBytes, Integer idRequirement) throws GeneralSecurityException {
        Ed25519Parameters ed25519ParametersCreate = Ed25519Parameters.create(variant);
        Ed25519Parameters.Variant variant2 = Ed25519Parameters.Variant.NO_PREFIX;
        if (!variant.equals(variant2) && idRequirement == null) {
            throw new GeneralSecurityException("For given Variant " + variant + " the value of idRequirement must be non-null");
        }
        if (variant.equals(variant2) && idRequirement != null) {
            throw new GeneralSecurityException("For given Variant NO_PREFIX the value of idRequirement must be null");
        }
        if (publicKeyBytes.size() != 32) {
            throw new GeneralSecurityException("Ed25519 key must be constructed with key of length 32 bytes, not " + publicKeyBytes.size());
        }
        return new Ed25519PublicKey(ed25519ParametersCreate, publicKeyBytes, createOutputPrefix(ed25519ParametersCreate, idRequirement), idRequirement);
    }

    public Bytes getPublicKeyBytes() {
        return this.publicKeyBytes;
    }

    @Override // com.google.crypto.tink.signature.SignaturePublicKey, com.google.crypto.tink.Key
    public Ed25519Parameters getParameters() {
        return this.parameters;
    }

    @Override // com.google.crypto.tink.Key
    public Integer getIdRequirementOrNull() {
        return this.idRequirement;
    }
}
