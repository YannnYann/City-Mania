package com.google.crypto.tink.signature.internal;

import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.PublicKeySign;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.signature.RsaSsaPssParameters;
import com.google.crypto.tink.signature.RsaSsaPssPrivateKey;
import com.google.crypto.tink.subtle.Bytes;
import com.google.crypto.tink.subtle.Validators;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.Signature;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.spec.PSSParameterSpec;
import java.security.spec.RSAPrivateCrtKeySpec;

/* JADX INFO: loaded from: classes3.dex */
public final class RsaSsaPssSignConscrypt implements PublicKeySign {
    public final Provider conscrypt;
    public final byte[] messageSuffix;
    public final byte[] outputPrefix;
    public final PSSParameterSpec parameterSpec;
    public final RSAPrivateCrtKey privateKey;
    public final String signatureAlgorithm;
    public static final TinkFipsUtil.AlgorithmFipsCompatibility FIPS = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_REQUIRES_BORINGCRYPTO;
    public static final byte[] EMPTY = new byte[0];
    public static final byte[] legacyMessageSuffix = {0};

    public static PublicKeySign create(RsaSsaPssPrivateKey key) throws GeneralSecurityException {
        return createWithProvider(key, RsaSsaPssVerifyConscrypt.conscryptProviderOrNull());
    }

    public static PublicKeySign createWithProvider(RsaSsaPssPrivateKey key, Provider conscrypt) throws GeneralSecurityException {
        byte[] bArr;
        if (conscrypt == null) {
            throw new NoSuchProviderException("RSA SSA PSS using Conscrypt is not supported.");
        }
        KeyFactory keyFactory = KeyFactory.getInstance("RSA", conscrypt);
        RsaSsaPssParameters parameters = key.getParameters();
        RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) keyFactory.generatePrivate(new RSAPrivateCrtKeySpec(key.getPublicKey().getModulus(), parameters.getPublicExponent(), key.getPrivateExponent().getBigInteger(InsecureSecretKeyAccess.get()), key.getPrimeP().getBigInteger(InsecureSecretKeyAccess.get()), key.getPrimeQ().getBigInteger(InsecureSecretKeyAccess.get()), key.getPrimeExponentP().getBigInteger(InsecureSecretKeyAccess.get()), key.getPrimeExponentQ().getBigInteger(InsecureSecretKeyAccess.get()), key.getCrtCoefficient().getBigInteger(InsecureSecretKeyAccess.get())));
        RsaSsaPssParameters.HashType sigHashType = parameters.getSigHashType();
        RsaSsaPssParameters.HashType mgf1HashType = parameters.getMgf1HashType();
        int saltLengthBytes = parameters.getSaltLengthBytes();
        byte[] byteArray = key.getOutputPrefix().toByteArray();
        if (parameters.getVariant().equals(RsaSsaPssParameters.Variant.LEGACY)) {
            bArr = legacyMessageSuffix;
        } else {
            bArr = EMPTY;
        }
        return new RsaSsaPssSignConscrypt(rSAPrivateCrtKey, sigHashType, mgf1HashType, saltLengthBytes, byteArray, bArr, conscrypt);
    }

    public RsaSsaPssSignConscrypt(final RSAPrivateCrtKey privateKey, RsaSsaPssParameters.HashType sigHash, RsaSsaPssParameters.HashType mgf1Hash, int saltLength, byte[] outputPrefix, byte[] messageSuffix, Provider conscrypt) throws GeneralSecurityException {
        if (!FIPS.isCompatible()) {
            throw new GeneralSecurityException("Cannot use RSA PSS in FIPS-mode, as BoringCrypto module is not available.");
        }
        Validators.validateRsaModulusSize(privateKey.getModulus().bitLength());
        Validators.validateRsaPublicExponent(privateKey.getPublicExponent());
        this.privateKey = privateKey;
        this.signatureAlgorithm = RsaSsaPssVerifyConscrypt.getConscryptRsaSsaPssAlgo(sigHash);
        this.parameterSpec = RsaSsaPssVerifyConscrypt.getPssParameterSpec(sigHash, mgf1Hash, saltLength);
        this.outputPrefix = outputPrefix;
        this.messageSuffix = messageSuffix;
        this.conscrypt = conscrypt;
    }

    @Override // com.google.crypto.tink.PublicKeySign
    public byte[] sign(final byte[] data) throws GeneralSecurityException {
        Signature signature = Signature.getInstance(this.signatureAlgorithm, this.conscrypt);
        signature.initSign(this.privateKey);
        signature.setParameter(this.parameterSpec);
        signature.update(data);
        byte[] bArr = this.messageSuffix;
        if (bArr.length > 0) {
            signature.update(bArr);
        }
        byte[] bArrSign = signature.sign();
        byte[] bArr2 = this.outputPrefix;
        return bArr2.length == 0 ? bArrSign : Bytes.concat(bArr2, bArrSign);
    }
}
