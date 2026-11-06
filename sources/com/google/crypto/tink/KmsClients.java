package com.google.crypto.tink;

import java.security.GeneralSecurityException;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class KmsClients {
    public static final CopyOnWriteArrayList<KmsClient> clients = new CopyOnWriteArrayList<>();

    public static KmsClient get(String keyUri) throws GeneralSecurityException {
        for (KmsClient kmsClient : clients) {
            if (kmsClient.doesSupport(keyUri)) {
                return kmsClient;
            }
        }
        throw new GeneralSecurityException("No KMS client does support: " + keyUri);
    }
}
