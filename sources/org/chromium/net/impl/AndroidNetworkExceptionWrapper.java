package org.chromium.net.impl;

import org.chromium.net.NetworkException;

/* JADX INFO: loaded from: classes5.dex */
public class AndroidNetworkExceptionWrapper extends NetworkException {
    public final android.net.http.NetworkException mBackend;

    @Override // org.chromium.net.NetworkException
    public int getCronetInternalErrorCode() {
        return -1;
    }

    public AndroidNetworkExceptionWrapper(android.net.http.NetworkException backend) {
        this(backend, false);
    }

    public AndroidNetworkExceptionWrapper(android.net.http.NetworkException backend, boolean expectQuicException) {
        super(backend.getMessage(), backend);
        this.mBackend = backend;
        if (!expectQuicException && AndroidNetworkExceptionWrapper$$ExternalSyntheticApiModelOutline3.m(backend)) {
            throw new IllegalArgumentException("Translating QuicException as NetworkException results in loss of information. Make sure you handle QuicException first. See the stacktrace for where the translation is being performed, and the cause for the exception being translated.", backend);
        }
    }

    @Override // org.chromium.net.NetworkException
    public int getErrorCode() {
        return this.mBackend.getErrorCode();
    }

    @Override // org.chromium.net.NetworkException
    public boolean immediatelyRetryable() {
        return this.mBackend.isImmediatelyRetryable();
    }
}
