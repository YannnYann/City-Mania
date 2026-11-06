package com.google.crypto.tink.subtle;

import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.Mac;
import com.google.crypto.tink.mac.AesCmacKey;
import com.google.crypto.tink.mac.AesCmacParameters;
import com.google.crypto.tink.mac.HmacKey;
import com.google.crypto.tink.mac.HmacParameters;
import com.google.crypto.tink.prf.AesCmacPrfKey;
import com.google.crypto.tink.prf.AesCmacPrfParameters;
import com.google.crypto.tink.prf.Prf;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes3.dex */
public class PrfMac implements Mac {
    public static final byte[] formatVersion = {0};
    public final byte[] outputPrefix;
    public final byte[] plaintextLegacySuffix;
    public final int tagSize;
    public final Prf wrappedPrf;

    public PrfMac(Prf wrappedPrf, int tagSize) throws GeneralSecurityException {
        this.wrappedPrf = wrappedPrf;
        this.tagSize = tagSize;
        this.outputPrefix = new byte[0];
        this.plaintextLegacySuffix = new byte[0];
        if (tagSize < 10) {
            throw new InvalidAlgorithmParameterException("tag size too small, need at least 10 bytes");
        }
        wrappedPrf.compute(new byte[0], tagSize);
    }

    public PrfMac(AesCmacKey key) throws GeneralSecurityException {
        this.wrappedPrf = createPrf(key);
        this.tagSize = key.getParameters().getCryptographicTagSizeBytes();
        this.outputPrefix = key.getOutputPrefix().toByteArray();
        if (key.getParameters().getVariant().equals(AesCmacParameters.Variant.LEGACY)) {
            byte[] bArr = formatVersion;
            this.plaintextLegacySuffix = Arrays.copyOf(bArr, bArr.length);
        } else {
            this.plaintextLegacySuffix = new byte[0];
        }
    }

    public PrfMac(HmacKey key) throws GeneralSecurityException {
        this.wrappedPrf = new PrfHmacJce("HMAC" + key.getParameters().getHashType(), new SecretKeySpec(key.getKeyBytes().toByteArray(InsecureSecretKeyAccess.get()), "HMAC"));
        this.tagSize = key.getParameters().getCryptographicTagSizeBytes();
        this.outputPrefix = key.getOutputPrefix().toByteArray();
        if (key.getParameters().getVariant().equals(HmacParameters.Variant.LEGACY)) {
            byte[] bArr = formatVersion;
            this.plaintextLegacySuffix = Arrays.copyOf(bArr, bArr.length);
        } else {
            this.plaintextLegacySuffix = new byte[0];
        }
    }

    public static Mac create(AesCmacKey key) throws GeneralSecurityException {
        return new PrfMac(key);
    }

    public static Mac create(HmacKey key) throws GeneralSecurityException {
        return new PrfMac(key);
    }

    public byte[] computeMac(byte[] data) throws GeneralSecurityException {
        byte[] bArr = this.plaintextLegacySuffix;
        if (bArr.length > 0) {
            return Bytes.concat(this.outputPrefix, this.wrappedPrf.compute(Bytes.concat(data, bArr), this.tagSize));
        }
        return Bytes.concat(this.outputPrefix, this.wrappedPrf.compute(data, this.tagSize));
    }

    @Override // com.google.crypto.tink.Mac
    public void verifyMac(byte[] mac, byte[] data) throws GeneralSecurityException {
        if (!Bytes.equal(computeMac(data), mac)) {
            throw new GeneralSecurityException("invalid MAC");
        }
    }

    public static Prf createPrf(AesCmacKey key) throws GeneralSecurityException {
        return PrfAesCmac.create(AesCmacPrfKey.create(AesCmacPrfParameters.create(key.getParameters().getKeySizeBytes()), key.getAesKey()));
    }
}
