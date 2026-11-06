package com.google.crypto.tink.subtle;

import com.google.crypto.tink.internal.EllipticCurvesUtil;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.spec.ECParameterSpec;
import java.security.spec.EllipticCurve;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class EllipticCurves {

    public enum CurveType {
        NIST_P256,
        NIST_P384,
        NIST_P521
    }

    public enum EcdsaEncoding {
        IEEE_P1363,
        DER
    }

    public static ECParameterSpec getNistP256Params() {
        return EllipticCurvesUtil.NIST_P256_PARAMS;
    }

    public static ECParameterSpec getNistP384Params() {
        return EllipticCurvesUtil.NIST_P384_PARAMS;
    }

    public static ECParameterSpec getNistP521Params() {
        return EllipticCurvesUtil.NIST_P521_PARAMS;
    }

    public static BigInteger getModulus(EllipticCurve curve) throws GeneralSecurityException {
        return EllipticCurvesUtil.getModulus(curve);
    }

    public static int fieldSizeInBits(EllipticCurve curve) throws GeneralSecurityException {
        return getModulus(curve).subtract(BigInteger.ONE).bitLength();
    }

    public static int fieldSizeInBytes(EllipticCurve curve) throws GeneralSecurityException {
        return (fieldSizeInBits(curve) + 7) / 8;
    }

    public static byte[] toMinimalSignedNumber(byte[] bs) {
        int length = 0;
        while (length < bs.length && bs[length] == 0) {
            length++;
        }
        if (length == bs.length) {
            length = bs.length - 1;
        }
        int i = (bs[length] & 128) == 128 ? 1 : 0;
        byte[] bArr = new byte[(bs.length - length) + i];
        System.arraycopy(bs, length, bArr, i, bs.length - length);
        return bArr;
    }

    public static byte[] ecdsaIeee2Der(byte[] ieee) throws GeneralSecurityException {
        byte[] bArr;
        int i;
        if (ieee.length % 2 != 0 || ieee.length == 0 || ieee.length > 132) {
            throw new GeneralSecurityException("Invalid IEEE_P1363 encoding");
        }
        byte[] minimalSignedNumber = toMinimalSignedNumber(Arrays.copyOf(ieee, ieee.length / 2));
        byte[] minimalSignedNumber2 = toMinimalSignedNumber(Arrays.copyOfRange(ieee, ieee.length / 2, ieee.length));
        int length = minimalSignedNumber.length + 4 + minimalSignedNumber2.length;
        if (length >= 128) {
            bArr = new byte[length + 3];
            bArr[0] = 48;
            bArr[1] = -127;
            bArr[2] = (byte) length;
            i = 3;
        } else {
            bArr = new byte[length + 2];
            bArr[0] = 48;
            bArr[1] = (byte) length;
            i = 2;
        }
        int i2 = i + 1;
        bArr[i] = 2;
        int i3 = i + 2;
        bArr[i2] = (byte) minimalSignedNumber.length;
        System.arraycopy(minimalSignedNumber, 0, bArr, i3, minimalSignedNumber.length);
        int length2 = i3 + minimalSignedNumber.length;
        bArr[length2] = 2;
        bArr[length2 + 1] = (byte) minimalSignedNumber2.length;
        System.arraycopy(minimalSignedNumber2, 0, bArr, length2 + 2, minimalSignedNumber2.length);
        return bArr;
    }

    public static byte[] ecdsaDer2Ieee(byte[] der, int ieeeLength) throws GeneralSecurityException {
        if (!isValidDerEncoding(der)) {
            throw new GeneralSecurityException("Invalid DER encoding");
        }
        byte[] bArr = new byte[ieeeLength];
        int i = (der[1] & 255) >= 128 ? 3 : 2;
        int i2 = i + 1;
        int i3 = i + 2;
        int i4 = der[i2];
        int i5 = der[i3] == 0 ? 1 : 0;
        System.arraycopy(der, i3 + i5, bArr, ((ieeeLength / 2) - i4) + i5, i4 - i5);
        int i6 = i3 + i4 + 1;
        int i7 = i6 + 1;
        int i8 = der[i6];
        int i9 = der[i7] != 0 ? 0 : 1;
        System.arraycopy(der, i7 + i9, bArr, (ieeeLength - i8) + i9, i8 - i9);
        return bArr;
    }

    public static boolean isValidDerEncoding(final byte[] sig) {
        int i;
        int i2;
        int i3;
        int i4;
        if (sig.length < 8 || sig[0] != 48) {
            return false;
        }
        int i5 = sig[1] & 255;
        if (i5 == 129) {
            i5 = sig[2] & 255;
            if (i5 < 128) {
                return false;
            }
            i = 2;
        } else {
            if (i5 == 128 || i5 > 129) {
                return false;
            }
            i = 1;
        }
        if (i5 != (sig.length - 1) - i || sig[i + 1] != 2 || (i4 = (i3 = i + 3 + (i2 = sig[i + 2] & 255)) + 1) >= sig.length || i2 == 0) {
            return false;
        }
        int i6 = i + 3;
        byte b = sig[i6];
        if ((b & 255) >= 128) {
            return false;
        }
        if ((i2 > 1 && b == 0 && (sig[i + 4] & 255) < 128) || sig[i6 + i2] != 2) {
            return false;
        }
        int i7 = sig[i4] & 255;
        if (i3 + 2 + i7 != sig.length || i7 == 0) {
            return false;
        }
        byte b2 = sig[i + 5 + i2];
        if ((b2 & 255) >= 128) {
            return false;
        }
        return i7 <= 1 || b2 != 0 || (sig[(i + 6) + i2] & 255) >= 128;
    }

    public static ECParameterSpec getCurveSpec(CurveType curve) throws NoSuchAlgorithmException {
        int iOrdinal = curve.ordinal();
        if (iOrdinal == 0) {
            return getNistP256Params();
        }
        if (iOrdinal == 1) {
            return getNistP384Params();
        }
        if (iOrdinal == 2) {
            return getNistP521Params();
        }
        throw new NoSuchAlgorithmException("curve not implemented:" + curve);
    }

    public static KeyPair generateKeyPair(ECParameterSpec spec) throws GeneralSecurityException {
        KeyPairGenerator engineFactory = EngineFactory.KEY_PAIR_GENERATOR.getInstance("EC");
        engineFactory.initialize(spec);
        return engineFactory.generateKeyPair();
    }
}
