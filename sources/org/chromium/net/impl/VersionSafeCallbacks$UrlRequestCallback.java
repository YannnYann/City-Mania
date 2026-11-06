package org.chromium.net.impl;

import java.nio.ByteBuffer;
import org.chromium.net.CronetException;
import org.chromium.net.UrlRequest;
import org.chromium.net.UrlResponseInfo;

/* JADX INFO: loaded from: classes5.dex */
public final class VersionSafeCallbacks$UrlRequestCallback extends UrlRequest.Callback {
    public final UrlRequest.Callback mWrappedCallback;

    public VersionSafeCallbacks$UrlRequestCallback(UrlRequest.Callback callback) {
        this.mWrappedCallback = callback;
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public void onRedirectReceived(UrlRequest request, UrlResponseInfo info2, String newLocationUrl) throws Exception {
        this.mWrappedCallback.onRedirectReceived(request, info2, newLocationUrl);
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public void onResponseStarted(UrlRequest request, UrlResponseInfo info2) throws Exception {
        this.mWrappedCallback.onResponseStarted(request, info2);
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public void onReadCompleted(UrlRequest request, UrlResponseInfo info2, ByteBuffer byteBuffer) throws Exception {
        this.mWrappedCallback.onReadCompleted(request, info2, byteBuffer);
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public void onSucceeded(UrlRequest request, UrlResponseInfo info2) {
        this.mWrappedCallback.onSucceeded(request, info2);
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public void onFailed(UrlRequest request, UrlResponseInfo info2, CronetException error) {
        this.mWrappedCallback.onFailed(request, info2, error);
    }

    @Override // org.chromium.net.UrlRequest.Callback
    public void onCanceled(UrlRequest request, UrlResponseInfo info2) {
        this.mWrappedCallback.onCanceled(request, info2);
    }
}
