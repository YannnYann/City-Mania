package org.chromium.net.impl;

import android.net.http.HttpException;
import android.net.http.UrlRequest$Callback;
import android.net.http.UrlResponseInfo;
import java.nio.ByteBuffer;
import java.util.Objects;
import org.chromium.net.CronetException;
import org.chromium.net.UrlRequest;
import org.chromium.net.impl.CronetExceptionTranslationUtils;

/* JADX INFO: loaded from: classes5.dex */
public class AndroidUrlRequestCallbackWrapper implements UrlRequest$Callback {
    public final UrlRequest.Callback mBackend;
    public AndroidUrlRequestWrapper mWrappedRequest;

    public AndroidUrlRequestCallbackWrapper(UrlRequest.Callback backend) {
        Objects.requireNonNull(backend, "Callback is required.");
        this.mBackend = backend;
    }

    public void onRedirectReceived(android.net.http.UrlRequest request, final UrlResponseInfo info2, final String newLocationUrl) throws Exception {
        CronetExceptionTranslationUtils.executeTranslatingCronetExceptions(new CronetExceptionTranslationUtils.CronetWork() { // from class: org.chromium.net.impl.AndroidUrlRequestCallbackWrapper$$ExternalSyntheticLambda2
            @Override // org.chromium.net.impl.CronetExceptionTranslationUtils.CronetWork
            public final Object run() {
                return this.f$0.lambda$onRedirectReceived$0(info2, newLocationUrl);
            }
        }, Exception.class);
    }

    public final /* synthetic */ Object lambda$onRedirectReceived$0(UrlResponseInfo urlResponseInfo, String str) throws Exception {
        this.mBackend.onRedirectReceived(this.mWrappedRequest, AndroidUrlResponseInfoWrapper.createForUrlRequest(urlResponseInfo), str);
        return null;
    }

    public void onResponseStarted(android.net.http.UrlRequest request, final UrlResponseInfo info2) throws Exception {
        CronetExceptionTranslationUtils.executeTranslatingCronetExceptions(new CronetExceptionTranslationUtils.CronetWork() { // from class: org.chromium.net.impl.AndroidUrlRequestCallbackWrapper$$ExternalSyntheticLambda0
            @Override // org.chromium.net.impl.CronetExceptionTranslationUtils.CronetWork
            public final Object run() {
                return this.f$0.lambda$onResponseStarted$1(info2);
            }
        }, Exception.class);
    }

    public final /* synthetic */ Object lambda$onResponseStarted$1(UrlResponseInfo urlResponseInfo) throws Exception {
        this.mBackend.onResponseStarted(this.mWrappedRequest, AndroidUrlResponseInfoWrapper.createForUrlRequest(urlResponseInfo));
        return null;
    }

    public void onReadCompleted(android.net.http.UrlRequest request, final UrlResponseInfo info2, final ByteBuffer byteBuffer) throws Exception {
        CronetExceptionTranslationUtils.executeTranslatingCronetExceptions(new CronetExceptionTranslationUtils.CronetWork() { // from class: org.chromium.net.impl.AndroidUrlRequestCallbackWrapper$$ExternalSyntheticLambda1
            @Override // org.chromium.net.impl.CronetExceptionTranslationUtils.CronetWork
            public final Object run() {
                return this.f$0.lambda$onReadCompleted$2(info2, byteBuffer);
            }
        }, Exception.class);
    }

    public final /* synthetic */ Object lambda$onReadCompleted$2(UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer) throws Exception {
        this.mBackend.onReadCompleted(this.mWrappedRequest, AndroidUrlResponseInfoWrapper.createForUrlRequest(urlResponseInfo), byteBuffer);
        return null;
    }

    public void onSucceeded(android.net.http.UrlRequest request, UrlResponseInfo info2) {
        AndroidUrlResponseInfoWrapper androidUrlResponseInfoWrapperCreateForUrlRequest = AndroidUrlResponseInfoWrapper.createForUrlRequest(info2);
        try {
            this.mBackend.onSucceeded(this.mWrappedRequest, androidUrlResponseInfoWrapperCreateForUrlRequest);
        } finally {
            this.mWrappedRequest.maybeReportMetrics(0, androidUrlResponseInfoWrapperCreateForUrlRequest, null);
        }
    }

    public void onFailed(android.net.http.UrlRequest request, UrlResponseInfo info2, HttpException error) {
        AndroidUrlResponseInfoWrapper androidUrlResponseInfoWrapperCreateForUrlRequest = AndroidUrlResponseInfoWrapper.createForUrlRequest(info2);
        CronetException cronetExceptionTranslateCheckedAndroidCronetException = CronetExceptionTranslationUtils.translateCheckedAndroidCronetException(error);
        try {
            this.mBackend.onFailed(this.mWrappedRequest, androidUrlResponseInfoWrapperCreateForUrlRequest, cronetExceptionTranslateCheckedAndroidCronetException);
        } finally {
            this.mWrappedRequest.maybeReportMetrics(1, androidUrlResponseInfoWrapperCreateForUrlRequest, cronetExceptionTranslateCheckedAndroidCronetException);
        }
    }

    public void onCanceled(android.net.http.UrlRequest request, UrlResponseInfo info2) {
        AndroidUrlResponseInfoWrapper androidUrlResponseInfoWrapperCreateForUrlRequest = AndroidUrlResponseInfoWrapper.createForUrlRequest(info2);
        try {
            this.mBackend.onCanceled(this.mWrappedRequest, androidUrlResponseInfoWrapperCreateForUrlRequest);
        } finally {
            this.mWrappedRequest.maybeReportMetrics(2, androidUrlResponseInfoWrapperCreateForUrlRequest, null);
        }
    }

    public void setRequest(AndroidUrlRequestWrapper request) {
        this.mWrappedRequest = request;
    }
}
