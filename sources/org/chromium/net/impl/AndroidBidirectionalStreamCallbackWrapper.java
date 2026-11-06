package org.chromium.net.impl;

import android.net.http.BidirectionalStream$Callback;
import android.net.http.HeaderBlock;
import android.net.http.HttpException;
import android.net.http.UrlResponseInfo;
import java.nio.ByteBuffer;
import java.util.Objects;
import org.chromium.net.BidirectionalStream;
import org.chromium.net.CronetException;

/* JADX INFO: loaded from: classes5.dex */
public class AndroidBidirectionalStreamCallbackWrapper implements BidirectionalStream$Callback {
    public final BidirectionalStream.Callback mBackend;
    public AndroidBidirectionalStreamWrapper mWrappedStream;

    public AndroidBidirectionalStreamCallbackWrapper(BidirectionalStream.Callback backend) {
        Objects.requireNonNull(backend, "Callback is required.");
        this.mBackend = backend;
    }

    public void onStreamReady(android.net.http.BidirectionalStream bidirectionalStream) {
        this.mBackend.onStreamReady(this.mWrappedStream);
    }

    public void onResponseHeadersReceived(android.net.http.BidirectionalStream bidirectionalStream, UrlResponseInfo urlResponseInfo) {
        this.mBackend.onResponseHeadersReceived(this.mWrappedStream, AndroidUrlResponseInfoWrapper.createForBidirectionalStream(urlResponseInfo));
    }

    public void onReadCompleted(android.net.http.BidirectionalStream bidirectionalStream, UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer, boolean endOfStream) {
        this.mBackend.onReadCompleted(this.mWrappedStream, AndroidUrlResponseInfoWrapper.createForBidirectionalStream(urlResponseInfo), byteBuffer, endOfStream);
    }

    public void onWriteCompleted(android.net.http.BidirectionalStream bidirectionalStream, UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer, boolean endOfStream) {
        this.mBackend.onWriteCompleted(this.mWrappedStream, AndroidUrlResponseInfoWrapper.createForBidirectionalStream(urlResponseInfo), byteBuffer, endOfStream);
    }

    public void onResponseTrailersReceived(android.net.http.BidirectionalStream bidirectionalStream, UrlResponseInfo urlResponseInfo, HeaderBlock headerBlock) {
        this.mBackend.onResponseTrailersReceived(this.mWrappedStream, AndroidUrlResponseInfoWrapper.createForBidirectionalStream(urlResponseInfo), new AndroidHeaderBlockWrapper(headerBlock));
    }

    public void onSucceeded(android.net.http.BidirectionalStream bidirectionalStream, UrlResponseInfo urlResponseInfo) {
        AndroidUrlResponseInfoWrapper androidUrlResponseInfoWrapperCreateForBidirectionalStream = AndroidUrlResponseInfoWrapper.createForBidirectionalStream(urlResponseInfo);
        try {
            this.mBackend.onSucceeded(this.mWrappedStream, androidUrlResponseInfoWrapperCreateForBidirectionalStream);
        } finally {
            this.mWrappedStream.maybeReportMetrics(0, androidUrlResponseInfoWrapperCreateForBidirectionalStream, null);
        }
    }

    public void onFailed(android.net.http.BidirectionalStream bidirectionalStream, UrlResponseInfo urlResponseInfo, HttpException e) {
        AndroidUrlResponseInfoWrapper androidUrlResponseInfoWrapperCreateForBidirectionalStream = AndroidUrlResponseInfoWrapper.createForBidirectionalStream(urlResponseInfo);
        CronetException cronetExceptionTranslateCheckedAndroidCronetException = CronetExceptionTranslationUtils.translateCheckedAndroidCronetException(e);
        try {
            this.mBackend.onFailed(this.mWrappedStream, androidUrlResponseInfoWrapperCreateForBidirectionalStream, cronetExceptionTranslateCheckedAndroidCronetException);
        } finally {
            this.mWrappedStream.maybeReportMetrics(1, androidUrlResponseInfoWrapperCreateForBidirectionalStream, cronetExceptionTranslateCheckedAndroidCronetException);
        }
    }

    public void onCanceled(android.net.http.BidirectionalStream bidirectionalStream, UrlResponseInfo urlResponseInfo) {
        AndroidUrlResponseInfoWrapper androidUrlResponseInfoWrapperCreateForBidirectionalStream = AndroidUrlResponseInfoWrapper.createForBidirectionalStream(urlResponseInfo);
        try {
            this.mBackend.onCanceled(this.mWrappedStream, androidUrlResponseInfoWrapperCreateForBidirectionalStream);
        } finally {
            this.mWrappedStream.maybeReportMetrics(2, androidUrlResponseInfoWrapperCreateForBidirectionalStream, null);
        }
    }

    public void setStream(AndroidBidirectionalStreamWrapper stream) {
        this.mWrappedStream = stream;
    }
}
