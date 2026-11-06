package org.chromium.net.impl;

import android.net.http.UrlRequest;
import java.nio.ByteBuffer;
import java.util.Collection;
import org.chromium.net.CronetException;
import org.chromium.net.ExperimentalUrlRequest;
import org.chromium.net.RequestFinishedInfo;
import org.chromium.net.UrlRequest;

/* JADX INFO: loaded from: classes5.dex */
public class AndroidUrlRequestWrapper extends ExperimentalUrlRequest {
    public final Collection<Object> mAnnotations;
    public final UrlRequest mBackend;
    public final AndroidHttpEngineWrapper mEngine;
    public final String mInitialUrl;
    public final VersionSafeCallbacks$RequestFinishedInfoListener mRequestFinishedInfoListener;

    public AndroidUrlRequestWrapper(UrlRequest backend, AndroidHttpEngineWrapper engine, String url, Collection<Object> annotations, RequestFinishedInfo.Listener requestFinishedInfoListener) {
        this.mBackend = backend;
        this.mEngine = engine;
        this.mInitialUrl = url;
        this.mAnnotations = annotations;
        this.mRequestFinishedInfoListener = requestFinishedInfoListener == null ? null : new VersionSafeCallbacks$RequestFinishedInfoListener(requestFinishedInfoListener);
    }

    @Override // org.chromium.net.UrlRequest
    public void start() {
        this.mBackend.start();
    }

    @Override // org.chromium.net.UrlRequest
    public void followRedirect() {
        this.mBackend.followRedirect();
    }

    @Override // org.chromium.net.UrlRequest
    public void read(ByteBuffer buffer) {
        this.mBackend.read(buffer);
    }

    @Override // org.chromium.net.UrlRequest
    public void cancel() {
        this.mBackend.cancel();
    }

    @Override // org.chromium.net.UrlRequest
    public boolean isDone() {
        return this.mBackend.isDone();
    }

    @Override // org.chromium.net.UrlRequest
    public void getStatus(UrlRequest.StatusListener listener) {
        this.mBackend.getStatus(new AndroidUrlRequestStatusListenerWrapper(listener));
    }

    public static AndroidUrlRequestWrapper createAndAddToCallback(android.net.http.UrlRequest backend, AndroidUrlRequestCallbackWrapper callback, AndroidHttpEngineWrapper engine, String url, Collection<Object> annotations, RequestFinishedInfo.Listener requestFinishedInfoListener) {
        AndroidUrlRequestWrapper androidUrlRequestWrapper = new AndroidUrlRequestWrapper(backend, engine, url, annotations, requestFinishedInfoListener);
        callback.setRequest(androidUrlRequestWrapper);
        return androidUrlRequestWrapper;
    }

    public void maybeReportMetrics(int finishedReason, AndroidUrlResponseInfoWrapper responseInfo, CronetException exception) {
        AndroidRequestFinishedInfoWrapper.reportFinished(this.mEngine, this.mInitialUrl, this.mAnnotations, this.mRequestFinishedInfoListener, finishedReason, responseInfo, exception);
    }
}
