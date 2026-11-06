package com.google.crypto.tink.subtle;

import com.google.crypto.tink.PublicKeyVerify;
import com.google.crypto.tink.config.internal.TinkFipsUtil;
import com.google.crypto.tink.internal.EnumTypeProtoConverter;
import com.google.crypto.tink.internal.Util;
import com.google.crypto.tink.signature.RsaSsaPssParameters;
import com.google.crypto.tink.signature.RsaSsaPssPublicKey;
import com.google.crypto.tink.signature.internal.RsaSsaPssVerifyConscrypt;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchProviderException;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class RsaSsaPssVerifyJce implements PublicKeyVerify {
    public static final TinkFipsUtil.AlgorithmFipsCompatibility FIPS = TinkFipsUtil.AlgorithmFipsCompatibility.ALGORITHM_REQUIRES_BORINGCRYPTO;
    public static final EnumTypeProtoConverter<Enums$HashType, RsaSsaPssParameters.HashType> HASH_TYPE_CONVERTER = EnumTypeProtoConverter.builder().add(Enums$HashType.SHA256, RsaSsaPssParameters.HashType.SHA256).add(Enums$HashType.SHA384, RsaSsaPssParameters.HashType.SHA384).add(Enums$HashType.SHA512, RsaSsaPssParameters.HashType.SHA512).build();
    public static final byte[] EMPTY = new byte[0];
    public static final byte[] legacyMessageSuffix = {0};

    public static final class InternalImpl implements PublicKeyVerify {
        public final byte[] messageSuffix;
        public final Enums$HashType mgf1Hash;
        public final byte[] outputPrefix;
        public final RSAPublicKey publicKey;
        public final int saltLength;
        public final Enums$HashType sigHash;

        public InternalImpl(final RSAPublicKey pubKey, Enums$HashType sigHash, Enums$HashType mgf1Hash, int saltLength, byte[] outputPrefix, byte[] messageSuffix) throws GeneralSecurityException {
            if (TinkFipsUtil.useOnlyFips()) {
                throw new GeneralSecurityException("Can not use RSA PSS in FIPS-mode, as BoringCrypto module is not available.");
            }
            Validators.validateSignatureHash(sigHash);
            if (!sigHash.equals(mgf1Hash)) {
                throw new GeneralSecurityException("sigHash and mgf1Hash must be the same");
            }
            Validators.validateRsaModulusSize(pubKey.getModulus().bitLength());
            Validators.validateRsaPublicExponent(pubKey.getPublicExponent());
            this.publicKey = pubKey;
            this.sigHash = sigHash;
            this.mgf1Hash = mgf1Hash;
            this.saltLength = saltLength;
            this.outputPrefix = outputPrefix;
            this.messageSuffix = messageSuffix;
        }

        private void noPrefixVerify(final byte[] signature, final byte[] data) throws GeneralSecurityException {
            BigInteger publicExponent = this.publicKey.getPublicExponent();
            BigInteger modulus = this.publicKey.getModulus();
            int iBitLength = (modulus.bitLength() + 7) / 8;
            int iBitLength2 = (modulus.bitLength() + 6) / 8;
            if (iBitLength != signature.length) {
                throw new GeneralSecurityException("invalid signature's length");
            }
            BigInteger bigIntegerBytes2Integer = SubtleUtil.bytes2Integer(signature);
            if (bigIntegerBytes2Integer.compareTo(modulus) >= 0) {
                throw new GeneralSecurityException("signature out of range");
            }
            emsaPssVerify(data, SubtleUtil.integer2Bytes(bigIntegerBytes2Integer.modPow(publicExponent, modulus), iBitLength2), modulus.bitLength() - 1);
        }

        public final void emsaPssVerify(byte[] message, byte[] em, int emBits) throws GeneralSecurityException {
            Validators.validateSignatureHash(this.sigHash);
            MessageDigest engineFactory = EngineFactory.MESSAGE_DIGEST.getInstance(SubtleUtil.toDigestAlgo(this.sigHash));
            engineFactory.update(message);
            byte[] bArr = this.messageSuffix;
            if (bArr.length != 0) {
                engineFactory.update(bArr);
            }
            byte[] bArrDigest = engineFactory.digest();
            int digestLength = engineFactory.getDigestLength();
            int length = em.length;
            if (length < this.saltLength + digestLength + 2) {
                throw new GeneralSecurityException("inconsistent");
            }
            byte b = 1;
            if (em[em.length - 1] != -68) {
                throw new GeneralSecurityException("inconsistent");
            }
            int i = (length - digestLength) - 1;
            byte[] bArrCopyOf = Arrays.copyOf(em, i);
            byte[] bArrCopyOfRange = Arrays.copyOfRange(em, bArrCopyOf.length, bArrCopyOf.length + digestLength);
            int i2 = 0;
            while (true) {
                int i3 = i2;
                byte b2 = b;
                int i4 = i;
                long j = (((long) length) * 8) - ((long) emBits);
                if (i2 < j) {
                    if (((bArrCopyOf[i3 / 8] >> (7 - (i3 % 8))) & 1) != 0) {
                        throw new GeneralSecurityException("inconsistent");
                    }
                    i2 = i3 + 1;
                    b = b2;
                    i = i4;
                } else {
                    byte[] bArrMgf1 = SubtleUtil.mgf1(bArrCopyOfRange, i4, this.mgf1Hash);
                    int length2 = bArrMgf1.length;
                    byte[] bArr2 = new byte[length2];
                    for (int i5 = 0; i5 < length2; i5++) {
                        bArr2[i5] = (byte) (bArrMgf1[i5] ^ bArrCopyOf[i5]);
                    }
                    for (int i6 = 0; i6 <= j; i6++) {
                        int i7 = i6 / 8;
                        bArr2[i7] = (byte) ((~(b2 << (7 - (i6 % 8)))) & bArr2[i7]);
                    }
                    int i8 = 0;
                    while (true) {
                        int i9 = this.saltLength;
                        if (i8 < (r6 - i9) - 2) {
                            if (bArr2[i8] != 0) {
                                throw new GeneralSecurityException("inconsistent");
                            }
                            i8++;
                        } else {
                            if (bArr2[(r6 - i9) - 2] != b2) {
                                throw new GeneralSecurityException("inconsistent");
                            }
                            byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr2, length2 - i9, length2);
                            int i10 = digestLength + 8;
                            byte[] bArr3 = new byte[this.saltLength + i10];
                            System.arraycopy(bArrDigest, 0, bArr3, 8, bArrDigest.length);
                            System.arraycopy(bArrCopyOfRange2, 0, bArr3, i10, bArrCopyOfRange2.length);
                            if (!Bytes.equal(engineFactory.digest(bArr3), bArrCopyOfRange)) {
                                throw new GeneralSecurityException("inconsistent");
                            }
                            return;
                        }
                    }
                }
            }
        }

        @Override // com.google.crypto.tink.PublicKeyVerify
        public void verify(final byte[] signature, final byte[] data) throws GeneralSecurityException {
            byte[] bArr = this.outputPrefix;
            if (bArr.length == 0) {
                noPrefixVerify(signature, data);
            } else {
                if (!Util.isPrefix(bArr, signature)) {
                    throw new GeneralSecurityException("Invalid signature (output prefix mismatch)");
                }
                noPrefixVerify(Arrays.copyOfRange(signature, this.outputPrefix.length, signature.length), data);
            }
        }
    }

    public static PublicKeyVerify create(RsaSsaPssPublicKey key) throws GeneralSecurityException {
        byte[] bArr;
        try {
            return RsaSsaPssVerifyConscrypt.create(key);
        } catch (NoSuchProviderException unused) {
            RSAPublicKey rSAPublicKey = (RSAPublicKey) EngineFactory.KEY_FACTORY.getInstance("RSA").generatePublic(new RSAPublicKeySpec(key.getModulus(), key.getParameters().getPublicExponent()));
            RsaSsaPssParameters parameters = key.getParameters();
            Enums$HashType enums$HashType = (Enums$HashType) HASH_TYPE_CONVERTER.toProtoEnum(parameters.getSigHashType());
            Enums$HashType enums$HashType2 = (Enums$HashType) HASH_TYPE_CONVERTER.toProtoEnum(parameters.getMgf1HashType());
            int saltLengthBytes = parameters.getSaltLengthBytes();
            byte[] byteArray = key.getOutputPrefix().toByteArray();
            if (key.getParameters().getVariant().equals(RsaSsaPssParameters.Variant.LEGACY)) {
                bArr = legacyMessageSuffix;
            } else {
                bArr = EMPTY;
            }
            return new InternalImpl(rSAPublicKey, enums$HashType, enums$HashType2, saltLengthBytes, byteArray, bArr);
        }
    }
}
