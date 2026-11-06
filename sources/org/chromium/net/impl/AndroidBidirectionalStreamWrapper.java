package org.chromium.net.impl;

import android.net.http.BidirectionalStream;
import java.nio.ByteBuffer;
import java.util.Collection;
import org.chromium.net.CronetException;
import org.chromium.net.ExperimentalBidirectionalStream;

/* JADX INFO: loaded from: classes5.dex */
public class AndroidBidirectionalStreamWrapper extends ExperimentalBidirectionalStream {
    public final Collection<Object> mAnnotations;
    public final BidirectionalStream mBackend;
    public final AndroidHttpEngineWrapper mEngine;
    public final String mInitialUrl;

    public AndroidBidirectionalStreamWrapper(BidirectionalStream backend, AndroidHttpEngineWrapper engine, String url, Collection<Object> annotations) {
        this.mBackend = backend;
        this.mEngine = engine;
        this.mInitialUrl = url;
        this.mAnnotations = annotations;
    }

    @Override // org.chromium.net.BidirectionalStream
    public void start() {
        this.mBackend.start();
    }

    @Override // org.chromium.net.BidirectionalStream
    public void read(ByteBuffer buffer) {
        this.mBackend.read(buffer);
    }

    @Override // org.chromium.net.BidirectionalStream
    public void write(ByteBuffer buffer, boolean endOfStream) {
        this.mBackend.write(buffer, endOfStream);
    }

    @Override // org.chromium.net.BidirectionalStream
    public void flush() {
        this.mBackend.flush();
    }

    @Override // org.chromium.net.BidirectionalStream
    public void cancel() {
        this.mBackend.cancel();
    }

    @Override // org.chromium.net.BidirectionalStream
    public boolean isDone() {
        return this.mBackend.isDone();
    }

    public static AndroidBidirectionalStreamWrapper createAndAddToCallback(BidirectionalStream backend, AndroidBidirectionalStreamCallbackWrapper callback, AndroidHttpEngineWrapper engine, String url, Collection<Object> annotations) {
        AndroidBidirectionalStreamWrapper androidBidirectionalStreamWrapper = new AndroidBidirectionalStreamWrapper(backend, engine, url, annotations);
        callback.setStream(androidBidirectionalStreamWrapper);
        return androidBidirectionalStreamWrapper;
    }

    public void maybeReportMetrics(int finishedReason, AndroidUrlResponseInfoWrapper responseInfo, CronetException exception) {
        AndroidRequestFinishedInfoWrapper.reportFinished(this.mEngine, this.mInitialUrl, this.mAnnotations, null, finishedReason, responseInfo, exception);
    }
}
