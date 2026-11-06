package com.google.crypto.tink.signature;

import com.google.crypto.tink.internal.TinkBugException;
import com.google.crypto.tink.signature.EcdsaParameters;
import com.google.crypto.tink.signature.Ed25519Parameters;
import com.google.crypto.tink.signature.MlDsaParameters;
import com.google.crypto.tink.signature.RsaSsaPkcs1Parameters;
import com.google.crypto.tink.signature.RsaSsaPssParameters;

/* JADX INFO: loaded from: classes3.dex */
public final class PredefinedSignatureParameters {
    public static final EcdsaParameters ECDSA_P256 = (EcdsaParameters) TinkBugException.exceptionIsBug(new TinkBugException.ThrowingSupplier() { // from class: com.google.crypto.tink.signature.PredefinedSignatureParameters$$ExternalSyntheticLambda0
        @Override // com.google.crypto.tink.internal.TinkBugException.ThrowingSupplier
        public final Object get() {
            return EcdsaParameters.builder().setHashType(EcdsaParameters.HashType.SHA256).setCurveType(EcdsaParameters.CurveType.NIST_P256).setSignatureEncoding(EcdsaParameters.SignatureEncoding.DER).setVariant(EcdsaParameters.Variant.TINK).build();
        }
    });
    public static final EcdsaParameters ECDSA_P384 = (EcdsaParameters) TinkBugException.exceptionIsBug(new TinkBugException.ThrowingSupplier() { // from class: com.google.crypto.tink.signature.PredefinedSignatureParameters$$ExternalSyntheticLambda6
        @Override // com.google.crypto.tink.internal.TinkBugException.ThrowingSupplier
        public final Object get() {
            return EcdsaParameters.builder().setHashType(EcdsaParameters.HashType.SHA512).setCurveType(EcdsaParameters.CurveType.NIST_P384).setSignatureEncoding(EcdsaParameters.SignatureEncoding.DER).setVariant(EcdsaParameters.Variant.TINK).build();
        }
    });
    public static final EcdsaParameters ECDSA_P521 = (EcdsaParameters) TinkBugException.exceptionIsBug(new TinkBugException.ThrowingSupplier() { // from class: com.google.crypto.tink.signature.PredefinedSignatureParameters$$ExternalSyntheticLambda7
        @Override // com.google.crypto.tink.internal.TinkBugException.ThrowingSupplier
        public final Object get() {
            return EcdsaParameters.builder().setHashType(EcdsaParameters.HashType.SHA512).setCurveType(EcdsaParameters.CurveType.NIST_P521).setSignatureEncoding(EcdsaParameters.SignatureEncoding.DER).setVariant(EcdsaParameters.Variant.TINK).build();
        }
    });
    public static final EcdsaParameters ECDSA_P256_IEEE_P1363 = (EcdsaParameters) TinkBugException.exceptionIsBug(new TinkBugException.ThrowingSupplier() { // from class: com.google.crypto.tink.signature.PredefinedSignatureParameters$$ExternalSyntheticLambda8
        @Override // com.google.crypto.tink.internal.TinkBugException.ThrowingSupplier
        public final Object get() {
            return EcdsaParameters.builder().setSignatureEncoding(EcdsaParameters.SignatureEncoding.IEEE_P1363).setCurveType(EcdsaParameters.CurveType.NIST_P256).setHashType(EcdsaParameters.HashType.SHA256).setVariant(EcdsaParameters.Variant.TINK).build();
        }
    });
    public static final EcdsaParameters ECDSA_P384_IEEE_P1363 = (EcdsaParameters) TinkBugException.exceptionIsBug(new TinkBugException.ThrowingSupplier() { // from class: com.google.crypto.tink.signature.PredefinedSignatureParameters$$ExternalSyntheticLambda9
        @Override // com.google.crypto.tink.internal.TinkBugException.ThrowingSupplier
        public final Object get() {
            return EcdsaParameters.builder().setSignatureEncoding(EcdsaParameters.SignatureEncoding.IEEE_P1363).setCurveType(EcdsaParameters.CurveType.NIST_P384).setHashType(EcdsaParameters.HashType.SHA512).setVariant(EcdsaParameters.Variant.TINK).build();
        }
    });
    public static final EcdsaParameters ECDSA_P256_IEEE_P1363_WITHOUT_PREFIX = (EcdsaParameters) TinkBugException.exceptionIsBug(new TinkBugException.ThrowingSupplier() { // from class: com.google.crypto.tink.signature.PredefinedSignatureParameters$$ExternalSyntheticLambda10
        @Override // com.google.crypto.tink.internal.TinkBugException.ThrowingSupplier
        public final Object get() {
            return EcdsaParameters.builder().setSignatureEncoding(EcdsaParameters.SignatureEncoding.IEEE_P1363).setCurveType(EcdsaParameters.CurveType.NIST_P256).setHashType(EcdsaParameters.HashType.SHA256).setVariant(EcdsaParameters.Variant.NO_PREFIX).build();
        }
    });
    public static final EcdsaParameters ECDSA_P521_IEEE_P1363 = (EcdsaParameters) TinkBugException.exceptionIsBug(new TinkBugException.ThrowingSupplier() { // from class: com.google.crypto.tink.signature.PredefinedSignatureParameters$$ExternalSyntheticLambda11
        @Override // com.google.crypto.tink.internal.TinkBugException.ThrowingSupplier
        public final Object get() {
            return EcdsaParameters.builder().setHashType(EcdsaParameters.HashType.SHA512).setCurveType(EcdsaParameters.CurveType.NIST_P521).setSignatureEncoding(EcdsaParameters.SignatureEncoding.IEEE_P1363).setVariant(EcdsaParameters.Variant.TINK).build();
        }
    });
    public static final Ed25519Parameters ED25519 = (Ed25519Parameters) TinkBugException.exceptionIsBug(new TinkBugException.ThrowingSupplier() { // from class: com.google.crypto.tink.signature.PredefinedSignatureParameters$$ExternalSyntheticLambda12
        @Override // com.google.crypto.tink.internal.TinkBugException.ThrowingSupplier
        public final Object get() {
            return Ed25519Parameters.create(Ed25519Parameters.Variant.TINK);
        }
    });
    public static final Ed25519Parameters ED25519WithRawOutput = (Ed25519Parameters) TinkBugException.exceptionIsBug(new TinkBugException.ThrowingSupplier() { // from class: com.google.crypto.tink.signature.PredefinedSignatureParameters$$ExternalSyntheticLambda13
        @Override // com.google.crypto.tink.internal.TinkBugException.ThrowingSupplier
        public final Object get() {
            return Ed25519Parameters.create(Ed25519Parameters.Variant.NO_PREFIX);
        }
    });
    public static final RsaSsaPkcs1Parameters RSA_SSA_PKCS1_3072_SHA256_F4 = (RsaSsaPkcs1Parameters) TinkBugException.exceptionIsBug(new TinkBugException.ThrowingSupplier() { // from class: com.google.crypto.tink.signature.PredefinedSignatureParameters$$ExternalSyntheticLambda14
        @Override // com.google.crypto.tink.internal.TinkBugException.ThrowingSupplier
        public final Object get() {
            return RsaSsaPkcs1Parameters.builder().setHashType(RsaSsaPkcs1Parameters.HashType.SHA256).setModulusSizeBits(3072).setPublicExponent(RsaSsaPkcs1Parameters.F4).setVariant(RsaSsaPkcs1Parameters.Variant.TINK).build();
        }
    });
    public static final RsaSsaPkcs1Parameters RSA_SSA_PKCS1_3072_SHA256_F4_WITHOUT_PREFIX = (RsaSsaPkcs1Parameters) TinkBugException.exceptionIsBug(new TinkBugException.ThrowingSupplier() { // from class: com.google.crypto.tink.signature.PredefinedSignatureParameters$$ExternalSyntheticLambda1
        @Override // com.google.crypto.tink.internal.TinkBugException.ThrowingSupplier
        public final Object get() {
            return RsaSsaPkcs1Parameters.builder().setHashType(RsaSsaPkcs1Parameters.HashType.SHA256).setModulusSizeBits(3072).setPublicExponent(RsaSsaPkcs1Parameters.F4).setVariant(RsaSsaPkcs1Parameters.Variant.NO_PREFIX).build();
        }
    });
    public static final RsaSsaPkcs1Parameters RSA_SSA_PKCS1_4096_SHA512_F4 = (RsaSsaPkcs1Parameters) TinkBugException.exceptionIsBug(new TinkBugException.ThrowingSupplier() { // from class: com.google.crypto.tink.signature.PredefinedSignatureParameters$$ExternalSyntheticLambda2
        @Override // com.google.crypto.tink.internal.TinkBugException.ThrowingSupplier
        public final Object get() {
            return RsaSsaPkcs1Parameters.builder().setHashType(RsaSsaPkcs1Parameters.HashType.SHA512).setModulusSizeBits(4096).setPublicExponent(RsaSsaPkcs1Parameters.F4).setVariant(RsaSsaPkcs1Parameters.Variant.TINK).build();
        }
    });
    public static final RsaSsaPssParameters RSA_SSA_PSS_3072_SHA256_SHA256_32_F4 = (RsaSsaPssParameters) TinkBugException.exceptionIsBug(new TinkBugException.ThrowingSupplier() { // from class: com.google.crypto.tink.signature.PredefinedSignatureParameters$$ExternalSyntheticLambda3
        @Override // com.google.crypto.tink.internal.TinkBugException.ThrowingSupplier
        public final Object get() {
            return PredefinedSignatureParameters.m767$r8$lambda$Wge7cUjRvWL9Oz9pyCBYqSsBN0();
        }
    });
    public static final RsaSsaPssParameters RSA_SSA_PSS_4096_SHA512_SHA512_64_F4 = (RsaSsaPssParameters) TinkBugException.exceptionIsBug(new TinkBugException.ThrowingSupplier() { // from class: com.google.crypto.tink.signature.PredefinedSignatureParameters$$ExternalSyntheticLambda4
        @Override // com.google.crypto.tink.internal.TinkBugException.ThrowingSupplier
        public final Object get() {
            return PredefinedSignatureParameters.m769$r8$lambda$tUx08qBcDZ43Cr0pSG8kJlE604();
        }
    });
    public static final MlDsaParameters ML_DSA_65 = (MlDsaParameters) TinkBugException.exceptionIsBug(new TinkBugException.ThrowingSupplier() { // from class: com.google.crypto.tink.signature.PredefinedSignatureParameters$$ExternalSyntheticLambda5
        @Override // com.google.crypto.tink.internal.TinkBugException.ThrowingSupplier
        public final Object get() {
            return MlDsaParameters.create(MlDsaParameters.MlDsaInstance.ML_DSA_65, MlDsaParameters.Variant.TINK);
        }
    });

    /* JADX INFO: renamed from: $r8$lambda$Wge7cUjRvWL9O-z9pyCBYqSsBN0, reason: not valid java name */
    public static /* synthetic */ RsaSsaPssParameters m767$r8$lambda$Wge7cUjRvWL9Oz9pyCBYqSsBN0() {
        RsaSsaPssParameters.Builder builder = RsaSsaPssParameters.builder();
        RsaSsaPssParameters.HashType hashType = RsaSsaPssParameters.HashType.SHA256;
        return builder.setSigHashType(hashType).setMgf1HashType(hashType).setSaltLengthBytes(32).setModulusSizeBits(3072).setPublicExponent(RsaSsaPssParameters.F4).setVariant(RsaSsaPssParameters.Variant.TINK).build();
    }

    /* JADX INFO: renamed from: $r8$lambda$tUx08qBcDZ43Cr0pSG8k-JlE604, reason: not valid java name */
    public static /* synthetic */ RsaSsaPssParameters m769$r8$lambda$tUx08qBcDZ43Cr0pSG8kJlE604() {
        RsaSsaPssParameters.Builder builder = RsaSsaPssParameters.builder();
        RsaSsaPssParameters.HashType hashType = RsaSsaPssParameters.HashType.SHA512;
        return builder.setSigHashType(hashType).setMgf1HashType(hashType).setSaltLengthBytes(64).setModulusSizeBits(4096).setPublicExponent(RsaSsaPssParameters.F4).setVariant(RsaSsaPssParameters.Variant.TINK).build();
    }
}
