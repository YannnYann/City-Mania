package com.google.crypto.tink.subtle;

import com.google.crypto.tink.prf.AesCmacPrfKey;
import com.google.crypto.tink.prf.Prf;
import com.google.crypto.tink.prf.internal.PrfAesCmacConscrypt;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public final class PrfAesCmac implements Prf {

    public static class PrfImplementation implements Prf {
        public final Prf large;
        public final Prf small;

        @Override // com.google.crypto.tink.prf.Prf
        public byte[] compute(final byte[] data, int outputLength) throws GeneralSecurityException {
            if (data.length <= 64) {
                return this.small.compute(data, outputLength);
            }
            return this.large.compute(data, outputLength);
        }

        public PrfImplementation(Prf small, Prf large) {
            this.small = small;
            this.large = large;
        }
    }

    public static Prf create(AesCmacPrfKey key) throws GeneralSecurityException {
        Prf prfCreate = com.google.crypto.tink.prf.internal.PrfAesCmac.create(key);
        try {
            return new PrfImplementation(prfCreate, PrfAesCmacConscrypt.create(key));
        } catch (GeneralSecurityException unused) {
            return prfCreate;
        }
    }
}
