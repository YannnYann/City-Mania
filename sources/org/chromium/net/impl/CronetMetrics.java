package org.chromium.net.impl;

import internal.org.jni_zero.CalledByNative;
import internal.org.jni_zero.JNINamespace;
import java.util.Date;
import org.chromium.net.RequestFinishedInfo;

/* JADX INFO: loaded from: classes5.dex */
@JNINamespace("cronet")
public final class CronetMetrics extends RequestFinishedInfo.Metrics {
    public final long mConnectEndMs;
    public final long mConnectStartMs;
    public final long mDnsEndMs;
    public final long mDnsStartMs;
    public final long mPushEndMs;
    public final long mPushStartMs;
    public final Long mReceivedByteCount;
    public final long mRequestEndMs;
    public final long mRequestStartMs;
    public final long mResponseStartMs;
    public final long mSendingEndMs;
    public final long mSendingStartMs;
    public final Long mSentByteCount;
    public final boolean mSocketReused;
    public final long mSslEndMs;
    public final long mSslStartMs;
    public final Long mTotalTimeMs;
    public final Long mTtfbMs;

    public static Date toDate(long timestamp) {
        if (timestamp != -1) {
            return new Date(timestamp);
        }
        return null;
    }

    public static CronetMetrics empty() {
        return new CronetMetrics(-1L, -1L, -1L, -1L, -1L, -1L, -1L, -1L, -1L, -1L, -1L, -1L, -1L, false, 0L, 0L);
    }

    @CalledByNative
    public CronetMetrics(long requestStartMs, long dnsStartMs, long dnsEndMs, long connectStartMs, long connectEndMs, long sslStartMs, long sslEndMs, long sendingStartMs, long sendingEndMs, long pushStartMs, long pushEndMs, long responseStartMs, long requestEndMs, boolean socketReused, long sentByteCount, long receivedByteCount) {
        this.mRequestStartMs = requestStartMs;
        this.mDnsStartMs = dnsStartMs;
        this.mDnsEndMs = dnsEndMs;
        this.mConnectStartMs = connectStartMs;
        this.mConnectEndMs = connectEndMs;
        this.mSslStartMs = sslStartMs;
        this.mSslEndMs = sslEndMs;
        this.mSendingStartMs = sendingStartMs;
        this.mSendingEndMs = sendingEndMs;
        this.mPushStartMs = pushStartMs;
        this.mPushEndMs = pushEndMs;
        this.mResponseStartMs = responseStartMs;
        this.mRequestEndMs = requestEndMs;
        this.mSocketReused = socketReused;
        this.mSentByteCount = Long.valueOf(sentByteCount);
        this.mReceivedByteCount = Long.valueOf(receivedByteCount);
        if (requestStartMs != -1 && responseStartMs != -1) {
            this.mTtfbMs = Long.valueOf(responseStartMs - requestStartMs);
        } else {
            this.mTtfbMs = null;
        }
        if (requestStartMs != -1 && requestEndMs != -1) {
            this.mTotalTimeMs = Long.valueOf(requestEndMs - requestStartMs);
        } else {
            this.mTotalTimeMs = null;
        }
    }

    @Override // org.chromium.net.RequestFinishedInfo.Metrics
    public Date getRequestStart() {
        return toDate(this.mRequestStartMs);
    }

    @Override // org.chromium.net.RequestFinishedInfo.Metrics
    public Date getDnsStart() {
        return toDate(this.mDnsStartMs);
    }

    @Override // org.chromium.net.RequestFinishedInfo.Metrics
    public Date getDnsEnd() {
        return toDate(this.mDnsEndMs);
    }

    @Override // org.chromium.net.RequestFinishedInfo.Metrics
    public Date getConnectStart() {
        return toDate(this.mConnectStartMs);
    }

    @Override // org.chromium.net.RequestFinishedInfo.Metrics
    public Date getConnectEnd() {
        return toDate(this.mConnectEndMs);
    }

    @Override // org.chromium.net.RequestFinishedInfo.Metrics
    public Date getSslStart() {
        return toDate(this.mSslStartMs);
    }

    @Override // org.chromium.net.RequestFinishedInfo.Metrics
    public Date getSslEnd() {
        return toDate(this.mSslEndMs);
    }

    @Override // org.chromium.net.RequestFinishedInfo.Metrics
    public Date getSendingStart() {
        return toDate(this.mSendingStartMs);
    }

    @Override // org.chromium.net.RequestFinishedInfo.Metrics
    public Date getSendingEnd() {
        return toDate(this.mSendingEndMs);
    }

    @Override // org.chromium.net.RequestFinishedInfo.Metrics
    public Date getPushStart() {
        return toDate(this.mPushStartMs);
    }

    @Override // org.chromium.net.RequestFinishedInfo.Metrics
    public Date getPushEnd() {
        return toDate(this.mPushEndMs);
    }

    @Override // org.chromium.net.RequestFinishedInfo.Metrics
    public Date getResponseStart() {
        return toDate(this.mResponseStartMs);
    }

    @Override // org.chromium.net.RequestFinishedInfo.Metrics
    public Date getRequestEnd() {
        return toDate(this.mRequestEndMs);
    }

    @Override // org.chromium.net.RequestFinishedInfo.Metrics
    public boolean getSocketReused() {
        return this.mSocketReused;
    }

    @Override // org.chromium.net.RequestFinishedInfo.Metrics
    public Long getTtfbMs() {
        return this.mTtfbMs;
    }

    @Override // org.chromium.net.RequestFinishedInfo.Metrics
    public Long getTotalTimeMs() {
        return this.mTotalTimeMs;
    }

    @Override // org.chromium.net.RequestFinishedInfo.Metrics
    public Long getSentByteCount() {
        return this.mSentByteCount;
    }

    @Override // org.chromium.net.RequestFinishedInfo.Metrics
    public Long getReceivedByteCount() {
        return this.mReceivedByteCount;
    }
}
