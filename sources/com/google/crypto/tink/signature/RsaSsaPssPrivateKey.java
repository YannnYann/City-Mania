package com.google.crypto.tink.signature;

import com.google.crypto.tink.InsecureSecretKeyAccess;
import com.google.crypto.tink.util.SecretBigInteger;
import java.math.BigInteger;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public final class RsaSsaPssPrivateKey extends SignaturePrivateKey {
    public final SecretBigInteger d;
    public final SecretBigInteger dP;
    public final SecretBigInteger dQ;
    public final SecretBigInteger p;
    public final RsaSsaPssPublicKey publicKey;
    public final SecretBigInteger q;
    public final SecretBigInteger qInv;

    public static class Builder {
        public SecretBigInteger d;
        public SecretBigInteger dP;
        public SecretBigInteger dQ;
        public SecretBigInteger p;
        public RsaSsaPssPublicKey publicKey;
        public SecretBigInteger q;
        public SecretBigInteger qInv;

        public Builder() {
            this.publicKey = null;
            this.d = null;
            this.p = null;
            this.q = null;
            this.dP = null;
            this.dQ = null;
            this.qInv = null;
        }

        public Builder setPublicKey(RsaSsaPssPublicKey publicKey) {
            this.publicKey = publicKey;
            return this;
        }

        public Builder setPrimes(SecretBigInteger p, SecretBigInteger q) {
            this.p = p;
            this.q = q;
            return this;
        }

        public Builder setPrivateExponent(SecretBigInteger d) {
            this.d = d;
            return this;
        }

        public Builder setPrimeExponents(SecretBigInteger dP, SecretBigInteger dQ) {
            this.dP = dP;
            this.dQ = dQ;
            return this;
        }

        public Builder setCrtCoefficient(SecretBigInteger qInv) {
            this.qInv = qInv;
            return this;
        }

        public RsaSsaPssPrivateKey build() throws GeneralSecurityException {
            RsaSsaPssPublicKey rsaSsaPssPublicKey = this.publicKey;
            if (rsaSsaPssPublicKey == null) {
                throw new GeneralSecurityException("Cannot build without a RSA SSA PKCS1 public key");
            }
            if (this.p == null || this.q == null) {
                throw new GeneralSecurityException("Cannot build without prime factors");
            }
            if (this.d == null) {
                throw new GeneralSecurityException("Cannot build without private exponent");
            }
            if (this.dP == null || this.dQ == null) {
                throw new GeneralSecurityException("Cannot build without prime exponents");
            }
            if (this.qInv == null) {
                throw new GeneralSecurityException("Cannot build without CRT coefficient");
            }
            BigInteger publicExponent = rsaSsaPssPublicKey.getParameters().getPublicExponent();
            BigInteger modulus = this.publicKey.getModulus();
            BigInteger bigInteger = this.p.getBigInteger(InsecureSecretKeyAccess.get());
            BigInteger bigInteger2 = this.q.getBigInteger(InsecureSecretKeyAccess.get());
            BigInteger bigInteger3 = this.d.getBigInteger(InsecureSecretKeyAccess.get());
            BigInteger bigInteger4 = this.dP.getBigInteger(InsecureSecretKeyAccess.get());
            BigInteger bigInteger5 = this.dQ.getBigInteger(InsecureSecretKeyAccess.get());
            BigInteger bigInteger6 = this.qInv.getBigInteger(InsecureSecretKeyAccess.get());
            if (!bigInteger.isProbablePrime(10)) {
                throw new GeneralSecurityException("p is not a prime");
            }
            if (!bigInteger2.isProbablePrime(10)) {
                throw new GeneralSecurityException("q is not a prime");
            }
            if (!bigInteger.multiply(bigInteger2).equals(modulus)) {
                throw new GeneralSecurityException("Prime p times prime q is not equal to the public key's modulus");
            }
            BigInteger bigInteger7 = BigInteger.ONE;
            BigInteger bigIntegerSubtract = bigInteger.subtract(bigInteger7);
            BigInteger bigIntegerSubtract2 = bigInteger2.subtract(bigInteger7);
            if (!publicExponent.multiply(bigInteger3).mod(bigIntegerSubtract.divide(bigIntegerSubtract.gcd(bigIntegerSubtract2)).multiply(bigIntegerSubtract2)).equals(bigInteger7)) {
                throw new GeneralSecurityException("D is invalid.");
            }
            if (!publicExponent.multiply(bigInteger4).mod(bigIntegerSubtract).equals(bigInteger7)) {
                throw new GeneralSecurityException("dP is invalid.");
            }
            if (!publicExponent.multiply(bigInteger5).mod(bigIntegerSubtract2).equals(bigInteger7)) {
                throw new GeneralSecurityException("dQ is invalid.");
            }
            if (!bigInteger2.multiply(bigInteger6).mod(bigInteger).equals(bigInteger7)) {
                throw new GeneralSecurityException("qInv is invalid.");
            }
            return new RsaSsaPssPrivateKey(this.publicKey, this.p, this.q, this.d, this.dP, this.dQ, this.qInv);
        }
    }

    public RsaSsaPssPrivateKey(RsaSsaPssPublicKey publicKey, SecretBigInteger p, SecretBigInteger q, SecretBigInteger d, SecretBigInteger dP, SecretBigInteger dQ, SecretBigInteger qInv) {
        this.publicKey = publicKey;
        this.p = p;
        this.q = q;
        this.d = d;
        this.dP = dP;
        this.dQ = dQ;
        this.qInv = qInv;
    }

    public static Builder builder() {
        return new Builder();
    }

    @Override // com.google.crypto.tink.Key
    public RsaSsaPssParameters getParameters() {
        return this.publicKey.getParameters();
    }

    @Override // com.google.crypto.tink.signature.SignaturePrivateKey
    public RsaSsaPssPublicKey getPublicKey() {
        return this.publicKey;
    }

    public SecretBigInteger getPrimeP() {
        return this.p;
    }

    public SecretBigInteger getPrimeQ() {
        return this.q;
    }

    public SecretBigInteger getPrivateExponent() {
        return this.d;
    }

    public SecretBigInteger getPrimeExponentP() {
        return this.dP;
    }

    public SecretBigInteger getPrimeExponentQ() {
        return this.dQ;
    }

    public SecretBigInteger getCrtCoefficient() {
        return this.qInv;
    }
}
