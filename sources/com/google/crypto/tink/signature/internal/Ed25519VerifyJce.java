package com.google.crypto.tink.signature.internal;

import com.google.crypto.tink.PublicKeyVerify;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.ConscryptUtil;
import com.google.crypto.tink.internal.Util;
import com.google.crypto.tink.signature.Ed25519Parameters;
import com.google.crypto.tink.signature.Ed25519PublicKey;
import com.google.crypto.tink.subtle.Bytes;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;

/* JADX INFO: loaded from: classes3.dex */
public final class Ed25519VerifyJce implements PublicKeyVerify {
    public static final TinkFipsUtil.AlgorithmFipsCompatibility FIPS = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_NOT_FIPS;
    public static final byte[] ed25519X509Prefix = {48, 42, 48, 5, 6, 3, 43, 101, 112, 3, 33, 0};
    public final byte[] messageSuffix;
    public final byte[] outputPrefix;
    public final Provider provider;
    public final PublicKey publicKey;

    public static byte[] x509EncodePublicKey(byte[] publicKey) throws GeneralSecurityException {
        if (publicKey.length != 32) {
            throw new IllegalArgumentException(String.format("Given public key's length is not %s.", 32));
        }
        return Bytes.concat(ed25519X509Prefix, publicKey);
    }

    public static Provider conscryptProvider() throws GeneralSecurityException {
        Provider providerProviderOrNull = ConscryptUtil.providerOrNull();
        if (providerProviderOrNull != null) {
            return providerProviderOrNull;
        }
        throw new NoSuchProviderException("Ed25519VerifyJce requires the Conscrypt provider.");
    }

    public static PublicKeyVerify create(Ed25519PublicKey key) throws GeneralSecurityException {
        return createWithProvider(key, conscryptProvider());
    }

    public static PublicKeyVerify createWithProvider(Ed25519PublicKey key, Provider provider) throws GeneralSecurityException {
        byte[] bArr;
        if (!FIPS.isCompatible()) {
            throw new GeneralSecurityException("Can not use Ed25519 in FIPS-mode.");
        }
        byte[] byteArray = key.getPublicKeyBytes().toByteArray();
        byte[] byteArray2 = key.getOutputPrefix().toByteArray();
        if (key.getParameters().getVariant().equals(Ed25519Parameters.Variant.LEGACY)) {
            bArr = new byte[]{0};
        } else {
            bArr = new byte[0];
        }
        return new Ed25519VerifyJce(byteArray, byteArray2, bArr, provider);
    }

    public Ed25519VerifyJce(final byte[] publicKey, final byte[] outputPrefix, final byte[] messageSuffix, final Provider provider) throws GeneralSecurityException {
        if (!FIPS.isCompatible()) {
            throw new GeneralSecurityException("Can not use Ed25519 in FIPS-mode.");
        }
        this.publicKey = KeyFactory.getInstance("Ed25519", provider).generatePublic(new X509EncodedKeySpec(x509EncodePublicKey(publicKey)));
        this.outputPrefix = outputPrefix;
        this.messageSuffix = messageSuffix;
        this.provider = provider;
    }

    @Override // com.google.crypto.tink.PublicKeyVerify
    public void verify(final byte[] signature, final byte[] data) throws GeneralSecurityException {
        boolean zVerify;
        int length = signature.length;
        byte[] bArr = this.outputPrefix;
        if (length != bArr.length + 64) {
            throw new GeneralSecurityException(String.format("Invalid signature length: %s", 64));
        }
        if (!Util.isPrefix(bArr, signature)) {
            throw new GeneralSecurityException("Invalid signature (output prefix mismatch)");
        }
        Signature signature2 = Signature.getInstance("Ed25519", this.provider);
        signature2.initVerify(this.publicKey);
        signature2.update(data);
        signature2.update(this.messageSuffix);
        try {
            zVerify = signature2.verify(signature, this.outputPrefix.length, 64);
        } catch (RuntimeException unused) {
            zVerify = false;
        }
        if (!zVerify) {
            throw new GeneralSecurityException("Signature check failed.");
        }
    }
}
