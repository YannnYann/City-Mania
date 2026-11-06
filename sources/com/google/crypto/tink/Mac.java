package com.google.crypto.tink;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public interface Mac {
    void verifyMac(final byte[] mac, final byte[] data) throws GeneralSecurityException;
}
