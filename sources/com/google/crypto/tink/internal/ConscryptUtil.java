package com.google.crypto.tink.internal;

import java.security.Provider;
import java.security.Security;

/* JADX INFO: loaded from: classes3.dex */
public final class ConscryptUtil {
    public static final String[] conscryptProviderNames = {"GmsCore_OpenSSL", "AndroidOpenSSL", "Conscrypt"};

    public static Provider providerOrNull() {
        for (String str : conscryptProviderNames) {
            Provider provider = Security.getProvider(str);
            if (provider != null) {
                return provider;
            }
        }
        return null;
    }

    public static Provider providerWithReflectionOrNull() {
        try {
            return (Provider) Class.forName("org.conscrypt.Conscrypt").getMethod("newProvider", new Class[0]).invoke(null, new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }
}
