package com.google.crypto.tink.aead;

import com.google.crypto.tink.aead.AesCtrHmacAeadParameters;
import com.google.crypto.tink.internal.OutputPrefixUtil;
import com.google.crypto.tink.util.Bytes;
import com.google.crypto.tink.util.SecretBytes;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public final class AesCtrHmacAeadKey extends AeadKey {
    public final SecretBytes aesKeyBytes;
    public final SecretBytes hmacKeyBytes;
    public final Integer idRequirement;
    public final Bytes outputPrefix;
    public final AesCtrHmacAeadParameters parameters;

    public static class Builder {
        public SecretBytes aesKeyBytes;
        public SecretBytes hmacKeyBytes;
        public Integer idRequirement;
        public AesCtrHmacAeadParameters parameters;

        public Builder() {
            this.parameters = null;
            this.aesKeyBytes = null;
            this.hmacKeyBytes = null;
            this.idRequirement = null;
        }

        public Builder setParameters(AesCtrHmacAeadParameters parameters) {
            this.parameters = parameters;
            return this;
        }

        public Builder setAesKeyBytes(SecretBytes aesKeyBytes) {
            this.aesKeyBytes = aesKeyBytes;
            return this;
        }

        public Builder setHmacKeyBytes(SecretBytes hmacKeyBytes) {
            this.hmacKeyBytes = hmacKeyBytes;
            return this;
        }

        public Builder setIdRequirement(Integer idRequirement) {
            this.idRequirement = idRequirement;
            return this;
        }

        public final Bytes getOutputPrefix() {
            if (this.parameters.getVariant() == AesCtrHmacAeadParameters.Variant.NO_PREFIX) {
                return OutputPrefixUtil.EMPTY_PREFIX;
            }
            if (this.parameters.getVariant() == AesCtrHmacAeadParameters.Variant.CRUNCHY) {
                return OutputPrefixUtil.getLegacyOutputPrefix(this.idRequirement.intValue());
            }
            if (this.parameters.getVariant() == AesCtrHmacAeadParameters.Variant.TINK) {
                return OutputPrefixUtil.getTinkOutputPrefix(this.idRequirement.intValue());
            }
            throw new IllegalStateException("Unknown AesCtrHmacAeadParameters.Variant: " + this.parameters.getVariant());
        }

        public AesCtrHmacAeadKey build() throws GeneralSecurityException {
            AesCtrHmacAeadParameters aesCtrHmacAeadParameters = this.parameters;
            if (aesCtrHmacAeadParameters == null) {
                throw new GeneralSecurityException("Cannot build without parameters");
            }
            if (this.aesKeyBytes == null || this.hmacKeyBytes == null) {
                throw new GeneralSecurityException("Cannot build without key material");
            }
            if (aesCtrHmacAeadParameters.getAesKeySizeBytes() != this.aesKeyBytes.size()) {
                throw new GeneralSecurityException("AES key size mismatch");
            }
            if (this.parameters.getHmacKeySizeBytes() != this.hmacKeyBytes.size()) {
                throw new GeneralSecurityException("HMAC key size mismatch");
            }
            if (this.parameters.hasIdRequirement() && this.idRequirement == null) {
                throw new GeneralSecurityException("Cannot create key without ID requirement with parameters with ID requirement");
            }
            if (!this.parameters.hasIdRequirement() && this.idRequirement != null) {
                throw new GeneralSecurityException("Cannot create key with ID requirement with parameters without ID requirement");
            }
            return new AesCtrHmacAeadKey(this.parameters, this.aesKeyBytes, this.hmacKeyBytes, getOutputPrefix(), this.idRequirement);
        }
    }

    public AesCtrHmacAeadKey(AesCtrHmacAeadParameters parameters, SecretBytes aesKeyBytes, SecretBytes hmacKeyBytes, Bytes outputPrefix, Integer idRequirement) {
        this.parameters = parameters;
        this.aesKeyBytes = aesKeyBytes;
        this.hmacKeyBytes = hmacKeyBytes;
        this.outputPrefix = outputPrefix;
        this.idRequirement = idRequirement;
    }

    public static Builder builder() {
        return new Builder();
    }

    public SecretBytes getAesKeyBytes() {
        return this.aesKeyBytes;
    }

    public SecretBytes getHmacKeyBytes() {
        return this.hmacKeyBytes;
    }

    @Override // com.google.crypto.tink.aead.AeadKey
    public Bytes getOutputPrefix() {
        return this.outputPrefix;
    }

    @Override // com.google.crypto.tink.aead.AeadKey, com.google.crypto.tink.Key
    public AesCtrHmacAeadParameters getParameters() {
        return this.parameters;
    }

    @Override // com.google.crypto.tink.Key
    public Integer getIdRequirementOrNull() {
        return this.idRequirement;
    }
}
