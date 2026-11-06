package com.google.crypto.tink;

import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes3.dex */
public class RegistryConfiguration {
    public static Configuration get() throws GeneralSecurityException {
        return com.google.crypto.tink.internal.RegistryConfiguration.get();
    }
}
