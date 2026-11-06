package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;
import com.vungle.ads.internal.protos.Sdk;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECGenParameterSpec;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPrivateKeySpec;
import java.security.spec.ECPublicKeySpec;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.KeyAgreement;
import javax.crypto.Mac;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺬ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class C0948 {

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static final byte[] f3587;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final byte[] f3588;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final SecureRandom f3594 = new SecureRandom();

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final String f3593 = StringFog.decrypt("vl0=\n", "+x7TmdEHEeg=\n");

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f3592 = StringFog.decrypt("4pOEhw==\n", "p9DAz4r70fY=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f3591 = StringFog.decrypt("oWKmo67V28/cOQ==\n", "6Q/HwP2dmv0=\n");

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final String f3590 = StringFog.decrypt("d9Y596eeaoh4/Dq5hLlOyVE=\n", "NpNq2ODdJ6c=\n");

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final String f3589 = StringFog.decrypt("hYKfO0kZuFXH\n", "9uf8S3ssjic=\n");

    static {
        String strDecrypt = StringFog.decrypt("4kOUV2G1p5P2R5FC\n", "twLQBkzDlr4=\n");
        Charset charset = StandardCharsets.US_ASCII;
        f3588 = strDecrypt.getBytes(charset);
        f3587 = StringFog.decrypt("kSbtwDvJNf+WIvrB\n", "xGepkRa/BNI=\n").getBytes(charset);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0192 m1561(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        if (bArr.length != 32) {
            throw new IllegalArgumentException(StringFog.decrypt("L36Vwp8EFq4DTrWW1AMKrl0J5oCNFQr9QhuhjYBB\n", "bjvG4vRhb44=\n") + bArr.length);
        }
        if (bArr2.length != 12) {
            throw new IllegalArgumentException(StringFog.decrypt("fHmOjLIv11ZeGq7ZrzSZV14a8p78IsBBXknvjLsvzRU=\n", "OzrDrNxAuTU=\n") + bArr2.length);
        }
        try {
            Cipher cipher = Cipher.getInstance(f3590);
            cipher.init(1, new SecretKeySpec(bArr, StringFog.decrypt("Y1Dl\n", "IhW2ehg8PyU=\n")), new GCMParameterSpec(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE, bArr2));
            cipher.updateAAD(bArr4);
            return new C0192(cipher.doFinal(bArr3));
        } catch (GeneralSecurityException e) {
            throw new RuntimeException(StringFog.decrypt("p1AXQBpu9lSDeycfJF3PHYl7ZAs8RNcRgg==\n", "5hVEbV0tu3Q=\n"), e);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0190 m1562() {
        try {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance(f3593);
            keyPairGenerator.initialize(new ECGenParameterSpec(f3589), this.f3594);
            KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
            ECPrivateKey eCPrivateKey = (ECPrivateKey) keyPairGenerateKeyPair.getPrivate();
            ECPublicKey eCPublicKey = (ECPublicKey) keyPairGenerateKeyPair.getPublic();
            byte[] bArrM1560 = m1560(eCPrivateKey.getS());
            ECPoint w = eCPublicKey.getW();
            byte[] bArrM15602 = m1560(w.getAffineX());
            byte[] bArrM15603 = m1560(w.getAffineY());
            byte[] bArr = new byte[65];
            bArr[0] = 4;
            System.arraycopy(bArrM15602, 0, bArr, 1, 32);
            System.arraycopy(bArrM15603, 0, bArr, 33, 32);
            return new C0190(bArrM1560, bArr);
        } catch (GeneralSecurityException e) {
            throw new RuntimeException(StringFog.decrypt("BQyMB1v2bjYsTYIOUPc8IzcIxQ5O+isvJh+EBx75KztjHYQCTA==\n", "Q23laz6STkI=\n"), e);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final byte[] m1563(byte[] bArr, byte[] bArr2) {
        if (bArr.length == 32) {
            if (bArr2.length == 65) {
                if (bArr2[0] == 4) {
                    try {
                        String str = f3593;
                        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance(str);
                        keyPairGenerator.initialize(new ECGenParameterSpec(f3589));
                        ECParameterSpec params = ((ECPublicKey) keyPairGenerator.generateKeyPair().getPublic()).getParams();
                        ECPrivateKey eCPrivateKey = (ECPrivateKey) KeyFactory.getInstance(str).generatePrivate(new ECPrivateKeySpec(new BigInteger(1, bArr), params));
                        ECPublicKey eCPublicKeyM1559 = m1559(bArr2, params);
                        KeyAgreement keyAgreement = KeyAgreement.getInstance(f3592);
                        keyAgreement.init(eCPrivateKey);
                        keyAgreement.doPhase(eCPublicKeyM1559, true);
                        byte[] bArrGenerateSecret = keyAgreement.generateSecret();
                        if (bArrGenerateSecret.length == 32) {
                            return bArrGenerateSecret;
                        }
                        if (bArrGenerateSecret.length < 32) {
                            byte[] bArr3 = new byte[32];
                            System.arraycopy(bArrGenerateSecret, 0, bArr3, 32 - bArrGenerateSecret.length, bArrGenerateSecret.length);
                            return bArr3;
                        }
                        if (bArrGenerateSecret.length == 65 && bArrGenerateSecret[0] == 4) {
                            return Arrays.copyOfRange(bArrGenerateSecret, 1, 33);
                        }
                        return Arrays.copyOfRange(bArrGenerateSecret, bArrGenerateSecret.length - 32, bArrGenerateSecret.length);
                    } catch (GeneralSecurityException e) {
                        throw new RuntimeException(StringFog.decrypt("d+HNkX9T4D4Sw+6rOl3oIlzWqb8+UekiVg==\n", "MqKJ2V84hUc=\n"), e);
                    }
                }
                throw new IllegalArgumentException(StringFog.decrypt("rdVq4HXNjV+Y2Sjhad3ZFI7Uaf5ojtpdicgovGSemQ==\n", "/aAIjByurTQ=\n"));
            }
            throw new IllegalArgumentException(StringFog.decrypt("mpwkiZXpou+vkGaIifn2pKiMZtPJquD9vow1xdT/7OelhDaXmfnx4a7AasWb5fak\n", "yulG5fyKgoQ=\n") + bArr2.length);
        }
        throw new IllegalArgumentException(StringFog.decrypt("ZGGhpfvlaZpfdrHz9+R/zhRxrfOpoyzYTWetoLaxa9VAMw==\n", "NBPI05qRDLo=\n") + bArr.length);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final byte[] m1565(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        if (bArr.length == 32) {
            if (bArr2.length == 12) {
                if (bArr3.length >= 16) {
                    try {
                        Cipher cipher = Cipher.getInstance(f3590);
                        cipher.init(2, new SecretKeySpec(bArr, StringFog.decrypt("zzCk\n", "jnX3J6iv3t4=\n")), new GCMParameterSpec(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE, bArr2));
                        cipher.updateAAD(bArr4);
                        return cipher.doFinal(bArr3);
                    } catch (GeneralSecurityException e) {
                        throw new RuntimeException(StringFog.decrypt("ev/kEG5r2mVf39RPUFjjLFTUl1tIQfsgXw==\n", "O7q3PSkol0U=\n"), e);
                    }
                }
                throw new IllegalArgumentException(StringFog.decrypt("N5dynmr0yWYMiiKBZvLVIwCfZdZi8853VJxn1m7ynW8Rn3GCL7eLIxaHdpN8\n", "dP4C9g+GvQM=\n"));
            }
            throw new IllegalArgumentException(StringFog.decrypt("6CsLODDFdoHKSCttLd44gMpIdyp+yGGWyhtqODnFbMI=\n", "r2hGGF6qGOI=\n") + bArr2.length);
        }
        throw new IllegalArgumentException(StringFog.decrypt("s+biSNet+rmf1sIcnKrmucGRkQrFvObq3oPWB8jo\n", "8qOxaLzIg5k=\n") + bArr.length);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final byte[] m1564(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        try {
            String str = f3591;
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(bArr2, str));
            byte[] bArrDoFinal = mac.doFinal(bArr);
            byte[] bArr4 = new byte[bArr3.length + 1];
            System.arraycopy(bArr3, 0, bArr4, 0, bArr3.length);
            bArr4[bArr3.length] = 1;
            Mac mac2 = Mac.getInstance(str);
            mac2.init(new SecretKeySpec(bArrDoFinal, str));
            return mac2.doFinal(bArr4);
        } catch (GeneralSecurityException e) {
            throw new RuntimeException(StringFog.decrypt("OArevhhK2DpQJf+KUVfcNxku9NheQNQvFSU=\n", "cEGa+DghvUM=\n"), e);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static ECPublicKey m1559(byte[] bArr, ECParameterSpec eCParameterSpec) {
        if (bArr.length == 65 && bArr[0] == 4) {
            return (ECPublicKey) KeyFactory.getInstance(f3593).generatePublic(new ECPublicKeySpec(new ECPoint(new BigInteger(1, Arrays.copyOfRange(bArr, 1, 33)), new BigInteger(1, Arrays.copyOfRange(bArr, 33, 65))), eCParameterSpec));
        }
        throw new IllegalArgumentException(StringFog.decrypt("q9R7ghKvG5mX1G6ME7YN3JHJaIdegzyZktVkjQo=\n", "4roN437Gf7k=\n"));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static byte[] m1560(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.toByteArray();
        if (byteArray.length == 32) {
            return byteArray;
        }
        if (byteArray.length > 32) {
            return Arrays.copyOfRange(byteArray, byteArray.length - 32, byteArray.length);
        }
        byte[] bArr = new byte[32];
        System.arraycopy(byteArray, 0, bArr, 32 - byteArray.length, byteArray.length);
        return bArr;
    }
}
