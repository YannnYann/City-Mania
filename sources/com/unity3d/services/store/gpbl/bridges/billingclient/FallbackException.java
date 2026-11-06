package com.unity3d.services.store.gpbl.bridges.billingclient;

/* JADX INFO: compiled from: FallbackException.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class FallbackException extends Exception {
    private final int detectedVersion;

    public FallbackException(int i) {
        this.detectedVersion = i;
    }

    public final int getDetectedVersion() {
        return this.detectedVersion;
    }
}
