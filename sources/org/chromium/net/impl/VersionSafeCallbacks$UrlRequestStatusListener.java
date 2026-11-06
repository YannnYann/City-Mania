package org.chromium.net.impl;

import org.chromium.net.UrlRequest;

/* JADX INFO: loaded from: classes5.dex */
public final class VersionSafeCallbacks$UrlRequestStatusListener extends UrlRequest.StatusListener {
    public final UrlRequest.StatusListener mWrappedListener;

    public VersionSafeCallbacks$UrlRequestStatusListener(UrlRequest.StatusListener listener) {
        this.mWrappedListener = listener;
    }

    @Override // org.chromium.net.UrlRequest.StatusListener
    public void onStatus(int status) {
        this.mWrappedListener.onStatus(status);
    }
}
