package com.google.crypto.tink.signature.internal;

import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.PublicKeySign;
import com.google.crypto.tink.PublicKeyVerify;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.signature.RsaSsaPkcs1Parameters;
import com.google.crypto.tink.signature.RsaSsaPkcs1PrivateKey;
import com.google.crypto.tink.subtle.Bytes;
import com.google.crypto.tink.subtle.EngineFactory;
import com.google.crypto.tink.subtle.RsaSsaPkcs1VerifyJce;
import com.google.crypto.tink.subtle.Validators;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.Provider;
import java.security.Signature;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.spec.RSAPrivateCrtKeySpec;

/* JADX INFO: loaded from: classes3.dex */
public final class RsaSsaPkcs1SignJce implements PublicKeySign {
    public Provider conscryptOrNull;
    public final byte[] messageSuffix;
    public final byte[] outputPrefix;
    public final RSAPrivateCrtKey privateKey;
    public final String signatureAlgorithm;
    public final PublicKeyVerify verifier;
    public static final TinkFipsUtil.AlgorithmFipsCompatibility FIPS = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_REQUIRES_BORINGCRYPTO;
    public static final byte[] EMPTY = new byte[0];
    public static final byte[] legacyMessageSuffix = {0};
    public static final byte[] testData = {1, 2, 3};

    public static void validateHash(RsaSsaPkcs1Parameters.HashType hash) throws GeneralSecurityException {
        if (hash == RsaSsaPkcs1Parameters.HashType.SHA256 || hash == RsaSsaPkcs1Parameters.HashType.SHA384 || hash == RsaSsaPkcs1Parameters.HashType.SHA512) {
            return;
        }
        throw new GeneralSecurityException("Unsupported hash: " + hash);
    }

    public RsaSsaPkcs1SignJce(final RSAPrivateCrtKey privateKey, RsaSsaPkcs1Parameters.HashType hash, byte[] outputPrefix, byte[] messageSuffix, PublicKeyVerify verifier, Provider conscryptOrNull) throws GeneralSecurityException {
        if (!FIPS.isCompatible()) {
            throw new GeneralSecurityException("Can not use RSA PKCS1.5 in FIPS-mode, as BoringCrypto module is not available.");
        }
        validateHash(hash);
        Validators.validateRsaModulusSize(privateKey.getModulus().bitLength());
        Validators.validateRsaPublicExponent(privateKey.getPublicExponent());
        this.privateKey = privateKey;
        this.signatureAlgorithm = RsaSsaPkcs1VerifyConscrypt.toRsaSsaPkcs1Algo(hash);
        this.outputPrefix = outputPrefix;
        this.messageSuffix = messageSuffix;
        this.verifier = verifier;
        this.conscryptOrNull = conscryptOrNull;
    }

    public static PublicKeySign create(RsaSsaPkcs1PrivateKey key) throws GeneralSecurityException {
        return createWithProviderOrNull(key, RsaSsaPkcs1VerifyConscrypt.conscryptProviderOrNull());
    }

    public static PublicKeySign createWithProviderOrNull(RsaSsaPkcs1PrivateKey key, Provider providerOrNull) throws GeneralSecurityException {
        KeyFactory engineFactory;
        PublicKeyVerify publicKeyVerifyCreate;
        byte[] bArr;
        if (providerOrNull == null) {
            engineFactory = EngineFactory.KEY_FACTORY.getInstance("RSA");
        } else {
            engineFactory = KeyFactory.getInstance("RSA", providerOrNull);
        }
        RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) engineFactory.generatePrivate(new RSAPrivateCrtKeySpec(key.getPublicKey().getModulus(), key.getParameters().getPublicExponent(), key.getPrivateExponent().getBigInteger(InsecureSecretKeyAccess.get()), key.getPrimeP().getBigInteger(InsecureSecretKeyAccess.get()), key.getPrimeQ().getBigInteger(InsecureSecretKeyAccess.get()), key.getPrimeExponentP().getBigInteger(InsecureSecretKeyAccess.get()), key.getPrimeExponentQ().getBigInteger(InsecureSecretKeyAccess.get()), key.getCrtCoefficient().getBigInteger(InsecureSecretKeyAccess.get())));
        if (providerOrNull != null) {
            publicKeyVerifyCreate = RsaSsaPkcs1VerifyConscrypt.createWithProvider(key.getPublicKey(), providerOrNull);
        } else {
            publicKeyVerifyCreate = RsaSsaPkcs1VerifyJce.create(key.getPublicKey());
        }
        PublicKeyVerify publicKeyVerify = publicKeyVerifyCreate;
        RsaSsaPkcs1Parameters.HashType hashType = key.getParameters().getHashType();
        byte[] byteArray = key.getOutputPrefix().toByteArray();
        if (key.getParameters().getVariant().equals(RsaSsaPkcs1Parameters.Variant.LEGACY)) {
            bArr = legacyMessageSuffix;
        } else {
            bArr = EMPTY;
        }
        RsaSsaPkcs1SignJce rsaSsaPkcs1SignJce = new RsaSsaPkcs1SignJce(rSAPrivateCrtKey, hashType, byteArray, bArr, publicKeyVerify, providerOrNull);
        rsaSsaPkcs1SignJce.sign(testData);
        return rsaSsaPkcs1SignJce;
    }

    public final Signature getSignature() throws GeneralSecurityException {
        Provider provider = this.conscryptOrNull;
        if (provider != null) {
            return Signature.getInstance(this.signatureAlgorithm, provider);
        }
        return EngineFactory.SIGNATURE.getInstance(this.signatureAlgorithm);
    }

    @Override // com.google.crypto.tink.PublicKeySign
    public byte[] sign(final byte[] data) throws GeneralSecurityException {
        Signature signature = getSignature();
        signature.initSign(this.privateKey);
        signature.update(data);
        byte[] bArr = this.messageSuffix;
        if (bArr.length > 0) {
            signature.update(bArr);
        }
        byte[] bArrSign = signature.sign();
        byte[] bArr2 = this.outputPrefix;
        if (bArr2.length > 0) {
            bArrSign = Bytes.concat(bArr2, bArrSign);
        }
        try {
            this.verifier.verify(bArrSign, data);
            return bArrSign;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException("RSA signature computation error", e);
        }
    }
}
