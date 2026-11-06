package com.google.crypto.tink.subtle;

import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.PublicKeySign;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.signature.RsaSsaPssParameters;
import com.google.crypto.tink.signature.RsaSsaPssPrivateKey;
import com.google.crypto.tink.signature.internal.RsaSsaPssSignConscrypt;
import com.google.crypto.tink.subtle.EngineWrapper;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchProviderException;
import java.security.interfaces.RSAPrivateCrtKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPrivateCrtKeySpec;
import java.security.spec.RSAPublicKeySpec;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes3.dex */
public final class RsaSsaPssSignJce implements PublicKeySign {
    public static final TinkFipsUtil.AlgorithmFipsCompatibility FIPS = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_REQUIRES_BORINGCRYPTO;
    public static final byte[] EMPTY = new byte[0];
    public static final byte[] legacyMessageSuffix = {0};

    public static final class InternalImpl implements PublicKeySign {
        public final byte[] messageSuffix;
        public final Enums$HashType mgf1Hash;
        public final byte[] outputPrefix;
        public final RSAPrivateCrtKey privateKey;
        public final RSAPublicKey publicKey;
        public final int saltLength;
        public final Enums$HashType sigHash;

        public InternalImpl(final RSAPrivateCrtKey priv, Enums$HashType sigHash, Enums$HashType mgf1Hash, int saltLength, byte[] outputPrefix, byte[] messageSuffix) throws GeneralSecurityException {
            if (TinkFipsUtil.useOnlyFips()) {
                throw new GeneralSecurityException("Can not use RSA PSS in FIPS-mode, as BoringCrypto module is not available.");
            }
            Validators.validateSignatureHash(sigHash);
            if (!sigHash.equals(mgf1Hash)) {
                throw new GeneralSecurityException("sigHash and mgf1Hash must be the same");
            }
            Validators.validateRsaModulusSize(priv.getModulus().bitLength());
            Validators.validateRsaPublicExponent(priv.getPublicExponent());
            this.privateKey = priv;
            this.publicKey = (RSAPublicKey) EngineFactory.KEY_FACTORY.getInstance("RSA").generatePublic(new RSAPublicKeySpec(priv.getModulus(), priv.getPublicExponent()));
            this.sigHash = sigHash;
            this.mgf1Hash = mgf1Hash;
            this.saltLength = saltLength;
            this.outputPrefix = outputPrefix;
            this.messageSuffix = messageSuffix;
        }

        private byte[] noPrefixSign(final byte[] data) throws GeneralSecurityException {
            return rsasp1(emsaPssEncode(data, this.publicKey.getModulus().bitLength() - 1));
        }

        @Override // com.google.crypto.tink.PublicKeySign
        public byte[] sign(final byte[] data) throws GeneralSecurityException {
            byte[] bArrNoPrefixSign = noPrefixSign(data);
            byte[] bArr = this.outputPrefix;
            return bArr.length == 0 ? bArrNoPrefixSign : Bytes.concat(bArr, bArrNoPrefixSign);
        }

        public final byte[] rsasp1(byte[] m) throws GeneralSecurityException {
            EngineFactory<EngineWrapper.TCipher, Cipher> engineFactory = EngineFactory.CIPHER;
            Cipher engineFactory2 = engineFactory.getInstance("RSA/ECB/NOPADDING");
            engineFactory2.init(2, this.privateKey);
            byte[] bArrDoFinal = engineFactory2.doFinal(m);
            Cipher engineFactory3 = engineFactory.getInstance("RSA/ECB/NOPADDING");
            engineFactory3.init(1, this.publicKey);
            if (new BigInteger(1, m).equals(new BigInteger(1, engineFactory3.doFinal(bArrDoFinal)))) {
                return bArrDoFinal;
            }
            throw new IllegalStateException("Security bug: RSA signature computation error");
        }

        public final byte[] emsaPssEncode(byte[] message, int emBits) throws GeneralSecurityException {
            Validators.validateSignatureHash(this.sigHash);
            MessageDigest engineFactory = EngineFactory.MESSAGE_DIGEST.getInstance(SubtleUtil.toDigestAlgo(this.sigHash));
            engineFactory.update(message);
            byte[] bArr = this.messageSuffix;
            if (bArr.length != 0) {
                engineFactory.update(bArr);
            }
            byte[] bArrDigest = engineFactory.digest();
            int digestLength = engineFactory.getDigestLength();
            int i = 1;
            int i2 = ((emBits - 1) / 8) + 1;
            int i3 = this.saltLength;
            if (i2 < digestLength + i3 + 2) {
                throw new GeneralSecurityException("encoding error");
            }
            byte[] bArrRandBytes = Random.randBytes(i3);
            int i4 = digestLength + 8;
            byte[] bArr2 = new byte[this.saltLength + i4];
            System.arraycopy(bArrDigest, 0, bArr2, 8, digestLength);
            System.arraycopy(bArrRandBytes, 0, bArr2, i4, bArrRandBytes.length);
            byte[] bArrDigest2 = engineFactory.digest(bArr2);
            int i5 = (i2 - digestLength) - 1;
            byte[] bArr3 = new byte[i5];
            int i6 = this.saltLength;
            bArr3[((i2 - i6) - digestLength) - 2] = 1;
            System.arraycopy(bArrRandBytes, 0, bArr3, ((i2 - i6) - digestLength) - 1, bArrRandBytes.length);
            byte[] bArrMgf1 = SubtleUtil.mgf1(bArrDigest2, i5, this.mgf1Hash);
            byte[] bArr4 = new byte[i5];
            for (int i7 = 0; i7 < i5; i7++) {
                bArr4[i7] = (byte) (bArr3[i7] ^ bArrMgf1[i7]);
            }
            int i8 = 0;
            while (true) {
                int i9 = i;
                if (i8 < (((long) i2) * 8) - ((long) emBits)) {
                    int i10 = i8 / 8;
                    bArr4[i10] = (byte) ((~(i9 << (7 - (i8 % 8)))) & bArr4[i10]);
                    i8++;
                    i = i9;
                } else {
                    int i11 = digestLength + i5;
                    byte[] bArr5 = new byte[i11 + 1];
                    System.arraycopy(bArr4, 0, bArr5, 0, i5);
                    System.arraycopy(bArrDigest2, 0, bArr5, i5, bArrDigest2.length);
                    bArr5[i11] = -68;
                    return bArr5;
                }
            }
        }
    }

    public static PublicKeySign create(RsaSsaPssPrivateKey key) throws GeneralSecurityException {
        byte[] bArr;
        try {
            return RsaSsaPssSignConscrypt.create(key);
        } catch (NoSuchProviderException unused) {
            RSAPrivateCrtKey rSAPrivateCrtKey = (RSAPrivateCrtKey) EngineFactory.KEY_FACTORY.getInstance("RSA").generatePrivate(new RSAPrivateCrtKeySpec(key.getPublicKey().getModulus(), key.getParameters().getPublicExponent(), key.getPrivateExponent().getBigInteger(InsecureSecretKeyAccess.get()), key.getPrimeP().getBigInteger(InsecureSecretKeyAccess.get()), key.getPrimeQ().getBigInteger(InsecureSecretKeyAccess.get()), key.getPrimeExponentP().getBigInteger(InsecureSecretKeyAccess.get()), key.getPrimeExponentQ().getBigInteger(InsecureSecretKeyAccess.get()), key.getCrtCoefficient().getBigInteger(InsecureSecretKeyAccess.get())));
            RsaSsaPssParameters parameters = key.getParameters();
            Enums$HashType enums$HashType = (Enums$HashType) RsaSsaPssVerifyJce.HASH_TYPE_CONVERTER.toProtoEnum(parameters.getSigHashType());
            Enums$HashType enums$HashType2 = (Enums$HashType) RsaSsaPssVerifyJce.HASH_TYPE_CONVERTER.toProtoEnum(parameters.getMgf1HashType());
            int saltLengthBytes = parameters.getSaltLengthBytes();
            byte[] byteArray = key.getOutputPrefix().toByteArray();
            if (key.getParameters().getVariant().equals(RsaSsaPssParameters.Variant.LEGACY)) {
                bArr = legacyMessageSuffix;
            } else {
                bArr = EMPTY;
            }
            return new InternalImpl(rSAPrivateCrtKey, enums$HashType, enums$HashType2, saltLengthBytes, byteArray, bArr);
        }
    }
}
