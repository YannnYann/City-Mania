package com.google.crypto.tink.prf;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public interface Prf {
    byte[] compute(byte[] input, int outputLength) throws GeneralSecurityException;
}
