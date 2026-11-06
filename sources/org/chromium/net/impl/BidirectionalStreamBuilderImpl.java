package org.chromium.net.impl;

import android.annotation.SuppressLint;
import com.ironsource.C3746nc;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import org.chromium.net.BidirectionalStream;
import org.chromium.net.ExperimentalBidirectionalStream;

/* JADX INFO: loaded from: classes5.dex */
public class BidirectionalStreamBuilderImpl extends ExperimentalBidirectionalStream.Builder {
    public final BidirectionalStream.Callback mCallback;
    public final CronetEngineBase mCronetEngine;
    public boolean mDelayRequestHeadersUntilFirstFlush;
    public final Executor mExecutor;
    public Collection<Object> mRequestAnnotations;
    public int mTrafficStatsTag;
    public boolean mTrafficStatsTagSet;
    public int mTrafficStatsUid;
    public boolean mTrafficStatsUidSet;
    public final String mUrl;
    public final ArrayList<Map.Entry<String, String>> mRequestHeaders = new ArrayList<>();
    public String mHttpMethod = C3746nc.b;
    public int mPriority = 3;
    public long mNetworkHandle = -1;

    public BidirectionalStreamBuilderImpl(String url, BidirectionalStream.Callback callback, Executor executor, CronetEngineBase cronetEngine) {
        Objects.requireNonNull(url, "URL is required.");
        this.mUrl = url;
        Objects.requireNonNull(callback, "Callback is required.");
        this.mCallback = callback;
        Objects.requireNonNull(executor, "Executor is required.");
        this.mExecutor = executor;
        Objects.requireNonNull(cronetEngine, "CronetEngine is required.");
        this.mCronetEngine = cronetEngine;
    }

    @Override // org.chromium.net.ExperimentalBidirectionalStream.Builder, org.chromium.net.BidirectionalStream.Builder
    public BidirectionalStreamBuilderImpl setHttpMethod(String method) {
        Objects.requireNonNull(method, "Method is required.");
        this.mHttpMethod = method;
        return this;
    }

    @Override // org.chromium.net.ExperimentalBidirectionalStream.Builder, org.chromium.net.BidirectionalStream.Builder
    public BidirectionalStreamBuilderImpl addHeader(String header, String value) {
        Objects.requireNonNull(header, "Invalid header name.");
        Objects.requireNonNull(value, "Invalid header value.");
        this.mRequestHeaders.add(new AbstractMap.SimpleImmutableEntry(header, value));
        return this;
    }

    @Override // org.chromium.net.ExperimentalBidirectionalStream.Builder, org.chromium.net.BidirectionalStream.Builder
    public BidirectionalStreamBuilderImpl setPriority(int priority) {
        this.mPriority = priority;
        return this;
    }

    @Override // org.chromium.net.ExperimentalBidirectionalStream.Builder, org.chromium.net.BidirectionalStream.Builder
    public BidirectionalStreamBuilderImpl delayRequestHeadersUntilFirstFlush(boolean delayRequestHeadersUntilFirstFlush) {
        this.mDelayRequestHeadersUntilFirstFlush = delayRequestHeadersUntilFirstFlush;
        return this;
    }

    @Override // org.chromium.net.ExperimentalBidirectionalStream.Builder, org.chromium.net.BidirectionalStream.Builder
    public ExperimentalBidirectionalStream.Builder addRequestAnnotation(Object annotation) {
        Objects.requireNonNull(annotation, "Invalid metrics annotation.");
        if (this.mRequestAnnotations == null) {
            this.mRequestAnnotations = new ArrayList();
        }
        this.mRequestAnnotations.add(annotation);
        return this;
    }

    @Override // org.chromium.net.ExperimentalBidirectionalStream.Builder, org.chromium.net.BidirectionalStream.Builder
    public ExperimentalBidirectionalStream.Builder setTrafficStatsTag(int tag) {
        this.mTrafficStatsTagSet = true;
        this.mTrafficStatsTag = tag;
        return this;
    }

    @Override // org.chromium.net.ExperimentalBidirectionalStream.Builder, org.chromium.net.BidirectionalStream.Builder
    public ExperimentalBidirectionalStream.Builder setTrafficStatsUid(int uid) {
        this.mTrafficStatsUidSet = true;
        this.mTrafficStatsUid = uid;
        return this;
    }

    @Override // org.chromium.net.BidirectionalStream.Builder
    public ExperimentalBidirectionalStream.Builder bindToNetwork(long networkHandle) {
        this.mNetworkHandle = networkHandle;
        return this;
    }

    @Override // org.chromium.net.ExperimentalBidirectionalStream.Builder, org.chromium.net.BidirectionalStream.Builder
    @SuppressLint({"WrongConstant"})
    public ExperimentalBidirectionalStream build() {
        return this.mCronetEngine.createBidirectionalStream(this.mUrl, this.mCallback, this.mExecutor, this.mHttpMethod, this.mRequestHeaders, this.mPriority, this.mDelayRequestHeadersUntilFirstFlush, this.mRequestAnnotations, this.mTrafficStatsTagSet, this.mTrafficStatsTag, this.mTrafficStatsUidSet, this.mTrafficStatsUid, this.mNetworkHandle);
    }
}
