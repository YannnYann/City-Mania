package com.google.crypto.tink.signature.internal;

import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.PublicKeySign;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.ConscryptUtil;
import com.google.crypto.tink.signature.Ed25519Parameters;
import com.google.crypto.tink.signature.Ed25519PrivateKey;
import com.google.crypto.tink.subtle.Bytes;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;

/* JADX INFO: loaded from: classes3.dex */
public final class Ed25519SignJce implements PublicKeySign {
    public static final TinkFipsUtil.AlgorithmFipsCompatibility FIPS = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_NOT_FIPS;
    public static final byte[] ed25519Pkcs8Prefix = {48, 46, 2, 1, 0, 48, 5, 6, 3, 43, 101, 112, 4, 34, 4, 32};
    public final byte[] messageSuffix;
    public final byte[] outputPrefix;
    public final PrivateKey privateKey;
    public final Provider provider;

    public static byte[] pkcs8EncodePrivateKey(byte[] privateKey) throws GeneralSecurityException {
        if (privateKey.length != 32) {
            throw new IllegalArgumentException(String.format("Given private key's length is not %s", 32));
        }
        return Bytes.concat(ed25519Pkcs8Prefix, privateKey);
    }

    public static Provider conscryptProvider() throws GeneralSecurityException {
        Provider providerProviderOrNull = ConscryptUtil.providerOrNull();
        if (providerProviderOrNull != null) {
            return providerProviderOrNull;
        }
        throw new NoSuchProviderException("Ed25519SignJce requires the Conscrypt provider.");
    }

    public static PublicKeySign create(Ed25519PrivateKey key) throws GeneralSecurityException {
        return createWithProvider(key, conscryptProvider());
    }

    public static PublicKeySign createWithProvider(Ed25519PrivateKey key, Provider provider) throws GeneralSecurityException {
        byte[] bArr;
        byte[] byteArray = key.getPrivateKeyBytes().toByteArray(InsecureSecretKeyAccess.get());
        byte[] byteArray2 = key.getOutputPrefix().toByteArray();
        if (key.getParameters().getVariant().equals(Ed25519Parameters.Variant.LEGACY)) {
            bArr = new byte[]{0};
        } else {
            bArr = new byte[0];
        }
        return new Ed25519SignJce(byteArray, byteArray2, bArr, provider);
    }

    public Ed25519SignJce(final byte[] privateKey, final byte[] outputPrefix, final byte[] messageSuffix, final Provider provider) throws GeneralSecurityException {
        if (!FIPS.isCompatible()) {
            throw new GeneralSecurityException("Can not use Ed25519 in FIPS-mode.");
        }
        this.outputPrefix = outputPrefix;
        this.messageSuffix = messageSuffix;
        this.provider = provider;
        this.privateKey = KeyFactory.getInstance("Ed25519", provider).generatePrivate(new PKCS8EncodedKeySpec(pkcs8EncodePrivateKey(privateKey)));
    }

    @Override // com.google.crypto.tink.PublicKeySign
    public byte[] sign(final byte[] data) throws GeneralSecurityException {
        Signature signature = Signature.getInstance("Ed25519", this.provider);
        signature.initSign(this.privateKey);
        signature.update(data);
        signature.update(this.messageSuffix);
        byte[] bArrSign = signature.sign();
        byte[] bArr = this.outputPrefix;
        return bArr.length == 0 ? bArrSign : Bytes.concat(bArr, bArrSign);
    }
}
