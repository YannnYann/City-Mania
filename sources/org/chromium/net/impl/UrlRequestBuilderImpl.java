package org.chromium.net.impl;

import android.util.Log;
import com.ironsource.C3746nc;
import java.nio.ByteBuffer;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import org.chromium.net.ExperimentalUrlRequest;
import org.chromium.net.RequestFinishedInfo;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UrlRequest;

/* JADX INFO: loaded from: classes5.dex */
public class UrlRequestBuilderImpl extends ExperimentalUrlRequest.Builder {
    public static final String TAG = "UrlRequestBuilderImpl";
    public boolean mAllowDirectExecutor;
    public final UrlRequest.Callback mCallback;
    public final CronetEngineBase mCronetEngine;
    public ByteBuffer mDictionary;
    public byte[] mDictionarySha256Hash;
    public boolean mDisableCache;
    public boolean mDisableConnectionMigration;
    public final Executor mExecutor;
    public String mMethod;
    public Collection<Object> mRequestAnnotations;
    public RequestFinishedInfo.Listener mRequestFinishedListener;
    public int mTrafficStatsTag;
    public boolean mTrafficStatsTagSet;
    public int mTrafficStatsUid;
    public boolean mTrafficStatsUidSet;
    public UploadDataProvider mUploadDataProvider;
    public Executor mUploadDataProviderExecutor;
    public final String mUrl;
    public final ArrayList<Map.Entry<String, String>> mRequestHeaders = new ArrayList<>();
    public int mPriority = 3;
    public String mDictionaryId = "";
    public long mNetworkHandle = -1;
    public int mIdempotency = 0;

    public UrlRequestBuilderImpl(String url, UrlRequest.Callback callback, Executor executor, CronetEngineBase cronetEngine) {
        Objects.requireNonNull(url, "URL is required.");
        this.mUrl = url;
        Objects.requireNonNull(callback, "Callback is required.");
        this.mCallback = callback;
        Objects.requireNonNull(executor, "Executor is required.");
        this.mExecutor = executor;
        Objects.requireNonNull(cronetEngine, "CronetEngine is required.");
        this.mCronetEngine = cronetEngine;
    }

    @Override // org.chromium.net.ExperimentalUrlRequest.Builder, org.chromium.net.UrlRequest.Builder
    public ExperimentalUrlRequest.Builder setHttpMethod(String method) {
        Objects.requireNonNull(method, "Method is required.");
        this.mMethod = method;
        return this;
    }

    @Override // org.chromium.net.ExperimentalUrlRequest.Builder, org.chromium.net.UrlRequest.Builder
    public UrlRequestBuilderImpl addHeader(String header, String value) {
        Objects.requireNonNull(header, "Invalid header name.");
        Objects.requireNonNull(value, "Invalid header value.");
        if ("Accept-Encoding".equalsIgnoreCase(header)) {
            String str = TAG;
            if (Log.isLoggable(str, 3)) {
                Log.d(str, "It's not necessary to set Accept-Encoding on requests - cronet will do this automatically for you, and setting it yourself has no effect. See https://crbug.com/581399 for details.", new Exception());
            }
            return this;
        }
        this.mRequestHeaders.add(new AbstractMap.SimpleEntry(header, value));
        return this;
    }

    @Override // org.chromium.net.ExperimentalUrlRequest.Builder, org.chromium.net.UrlRequest.Builder
    public UrlRequestBuilderImpl disableCache() {
        this.mDisableCache = true;
        return this;
    }

    @Override // org.chromium.net.ExperimentalUrlRequest.Builder
    public UrlRequestBuilderImpl disableConnectionMigration() {
        this.mDisableConnectionMigration = true;
        return this;
    }

    @Override // org.chromium.net.ExperimentalUrlRequest.Builder, org.chromium.net.UrlRequest.Builder
    public UrlRequestBuilderImpl setPriority(int priority) {
        this.mPriority = priority;
        return this;
    }

    @Override // org.chromium.net.ExperimentalUrlRequest.Builder
    public UrlRequestBuilderImpl setIdempotency(int idempotency) {
        this.mIdempotency = idempotency;
        return this;
    }

    @Override // org.chromium.net.ExperimentalUrlRequest.Builder, org.chromium.net.UrlRequest.Builder
    public UrlRequestBuilderImpl setUploadDataProvider(UploadDataProvider uploadDataProvider, Executor executor) {
        Objects.requireNonNull(uploadDataProvider, "Invalid UploadDataProvider.");
        this.mUploadDataProvider = uploadDataProvider;
        Objects.requireNonNull(executor, "Invalid UploadDataProvider Executor.");
        this.mUploadDataProviderExecutor = executor;
        if (this.mMethod == null) {
            this.mMethod = C3746nc.b;
        }
        return this;
    }

    @Override // org.chromium.net.ExperimentalUrlRequest.Builder, org.chromium.net.UrlRequest.Builder
    public UrlRequestBuilderImpl allowDirectExecutor() {
        this.mAllowDirectExecutor = true;
        return this;
    }

    @Override // org.chromium.net.ExperimentalUrlRequest.Builder, org.chromium.net.UrlRequest.Builder
    public UrlRequestBuilderImpl addRequestAnnotation(Object annotation) {
        Objects.requireNonNull(annotation, "Invalid metrics annotation.");
        if (this.mRequestAnnotations == null) {
            this.mRequestAnnotations = new ArrayList();
        }
        this.mRequestAnnotations.add(annotation);
        return this;
    }

    @Override // org.chromium.net.ExperimentalUrlRequest.Builder, org.chromium.net.UrlRequest.Builder
    public UrlRequestBuilderImpl setTrafficStatsTag(int tag) {
        this.mTrafficStatsTagSet = true;
        this.mTrafficStatsTag = tag;
        return this;
    }

    @Override // org.chromium.net.ExperimentalUrlRequest.Builder, org.chromium.net.UrlRequest.Builder
    public UrlRequestBuilderImpl setTrafficStatsUid(int uid) {
        this.mTrafficStatsUidSet = true;
        this.mTrafficStatsUid = uid;
        return this;
    }

    @Override // org.chromium.net.ExperimentalUrlRequest.Builder, org.chromium.net.UrlRequest.Builder
    public UrlRequestBuilderImpl setRequestFinishedListener(RequestFinishedInfo.Listener listener) {
        this.mRequestFinishedListener = listener;
        return this;
    }

    @Override // org.chromium.net.UrlRequest.Builder
    public UrlRequestBuilderImpl setRawCompressionDictionary(byte[] dictionarySha256Hash, ByteBuffer dictionary, String dictionaryId) {
        Objects.requireNonNull(dictionarySha256Hash, "Hash is required");
        this.mDictionarySha256Hash = dictionarySha256Hash;
        if (dictionarySha256Hash.length != 32) {
            throw new IllegalArgumentException("SHA-256 hashes are supposed to be 32 bytes");
        }
        Objects.requireNonNull(dictionary, "Dictionary is required");
        this.mDictionary = dictionary;
        Preconditions.checkDirect(dictionary);
        Objects.requireNonNull(dictionaryId, "Dictionary ID cannot be null. If missing, pass an empty string");
        this.mDictionaryId = dictionaryId;
        return this;
    }

    @Override // org.chromium.net.UrlRequest.Builder
    public UrlRequestBuilderImpl bindToNetwork(long networkHandle) {
        this.mNetworkHandle = networkHandle;
        return this;
    }

    @Override // org.chromium.net.ExperimentalUrlRequest.Builder, org.chromium.net.UrlRequest.Builder
    public ExperimentalUrlRequest build() {
        CronetEngineBase cronetEngineBase = this.mCronetEngine;
        String str = this.mUrl;
        UrlRequest.Callback callback = this.mCallback;
        Executor executor = this.mExecutor;
        int i = this.mPriority;
        Collection<Object> collection = this.mRequestAnnotations;
        boolean z = this.mDisableCache;
        boolean z2 = this.mDisableConnectionMigration;
        boolean z3 = this.mAllowDirectExecutor;
        boolean z4 = this.mTrafficStatsTagSet;
        int i2 = this.mTrafficStatsTag;
        boolean z5 = this.mTrafficStatsUidSet;
        int i3 = this.mTrafficStatsUid;
        RequestFinishedInfo.Listener listener = this.mRequestFinishedListener;
        int i4 = this.mIdempotency;
        long j = this.mNetworkHandle;
        String str2 = this.mMethod;
        if (str2 == null) {
            str2 = C3746nc.a;
        }
        return cronetEngineBase.createRequest(str, callback, executor, i, collection, z, z2, z3, z4, i2, z5, i3, listener, i4, j, str2, this.mRequestHeaders, this.mUploadDataProvider, this.mUploadDataProviderExecutor, this.mDictionarySha256Hash, this.mDictionary, this.mDictionaryId);
    }
}
