package com.google.crypto.tink.aead;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class LegacyKmsAeadParameters extends AeadParameters {
    public final String keyUri;
    public final Variant variant;

    public static final class Variant {
        public final String name;
        public static final Variant TINK = new Variant("TINK");
        public static final Variant NO_PREFIX = new Variant("NO_PREFIX");

        public Variant(String name) {
            this.name = name;
        }

        public String toString() {
            return this.name;
        }
    }

    public LegacyKmsAeadParameters(String keyUri, Variant variant) {
        this.keyUri = keyUri;
        this.variant = variant;
    }

    public static LegacyKmsAeadParameters create(String keyUri, Variant variant) {
        return new LegacyKmsAeadParameters(keyUri, variant);
    }

    public String keyUri() {
        return this.keyUri;
    }

    public Variant variant() {
        return this.variant;
    }

    @Override // com.google.crypto.tink.Parameters
    public boolean hasIdRequirement() {
        return this.variant != Variant.NO_PREFIX;
    }

    public boolean equals(Object o) {
        if (!(o instanceof LegacyKmsAeadParameters)) {
            return false;
        }
        LegacyKmsAeadParameters legacyKmsAeadParameters = (LegacyKmsAeadParameters) o;
        return legacyKmsAeadParameters.keyUri.equals(this.keyUri) && legacyKmsAeadParameters.variant.equals(this.variant);
    }

    public int hashCode() {
        return Objects.hash(LegacyKmsAeadParameters.class, this.keyUri, this.variant);
    }

    public String toString() {
        return "LegacyKmsAead Parameters (keyUri: " + this.keyUri + ", variant: " + this.variant + ")";
    }
}
