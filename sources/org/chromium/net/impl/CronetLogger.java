package org.chromium.net.impl;

import j$.time.Duration;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CronetLogger {

    public static final class CronetEngineBuilderInitializedInfo {
        public CronetVersion apiVersion;
        public Author author;
        public Boolean creationSuccessful;
        public long cronetInitializationRef;
        public CronetVersion implVersion;
        public int uid;
        public int engineBuilderCreatedLatencyMillis = -1;
        public CronetSource source = CronetSource.CRONET_SOURCE_UNSPECIFIED;

        public enum Author {
            API,
            IMPL
        }
    }

    public enum CronetSource {
        CRONET_SOURCE_UNSPECIFIED,
        CRONET_SOURCE_STATICALLY_LINKED,
        CRONET_SOURCE_PLAY_SERVICES,
        CRONET_SOURCE_FALLBACK,
        CRONET_SOURCE_PLATFORM,
        CRONET_SOURCE_FAKE
    }

    public abstract long generateId();

    public abstract void logCronetEngineBuilderInitializedInfo(CronetEngineBuilderInitializedInfo info2);

    public abstract void logCronetEngineCreation(long cronetEngineId, CronetEngineBuilderInfo engineBuilderInfo, CronetVersion version, CronetSource source);

    public abstract void logCronetTrafficInfo(long cronetEngineId, CronetTrafficInfo trafficInfo);

    public static class CronetEngineBuilderInfo {
        public final boolean mBrotiEnabled;
        public final long mCronetInitializationRef;
        public final String mExperimentalOptions;
        public final boolean mHttp2Enabled;
        public final int mHttpCacheMode;
        public final boolean mNetworkQualityEstimatorEnabled;
        public final boolean mPublicKeyPinningBypassForLocalTrustAnchorsEnabled;
        public final boolean mQuicEnabled;
        public final String mStoragePath;
        public final int mThreadPriority;
        public final String mUserAgent;

        public CronetEngineBuilderInfo(boolean publicKeyPinningBypassForLocalTrustAnchorsEnabled, String userAgent, String storagePath, boolean quicEnabled, boolean http2Enabled, boolean brotiEnabled, int httpCacheMode, String experimentalOptions, boolean networkQualityEstimatorEnabled, int threadPriority, long cronetInitializationRef) {
            this.mPublicKeyPinningBypassForLocalTrustAnchorsEnabled = publicKeyPinningBypassForLocalTrustAnchorsEnabled;
            this.mUserAgent = userAgent;
            this.mStoragePath = storagePath;
            this.mQuicEnabled = quicEnabled;
            this.mHttp2Enabled = http2Enabled;
            this.mBrotiEnabled = brotiEnabled;
            this.mHttpCacheMode = httpCacheMode;
            this.mExperimentalOptions = experimentalOptions;
            this.mNetworkQualityEstimatorEnabled = networkQualityEstimatorEnabled;
            this.mThreadPriority = threadPriority;
            this.mCronetInitializationRef = cronetInitializationRef;
        }

        public boolean isPublicKeyPinningBypassForLocalTrustAnchorsEnabled() {
            return this.mPublicKeyPinningBypassForLocalTrustAnchorsEnabled;
        }

        public boolean isQuicEnabled() {
            return this.mQuicEnabled;
        }

        public boolean isHttp2Enabled() {
            return this.mHttp2Enabled;
        }

        public boolean isBrotliEnabled() {
            return this.mBrotiEnabled;
        }

        public int getHttpCacheMode() {
            return this.mHttpCacheMode;
        }

        public String getExperimentalOptions() {
            return this.mExperimentalOptions;
        }

        public boolean isNetworkQualityEstimatorEnabled() {
            return this.mNetworkQualityEstimatorEnabled;
        }

        public int getThreadPriority() {
            return this.mThreadPriority;
        }

        public long getCronetInitializationRef() {
            return this.mCronetInitializationRef;
        }
    }

    public static class CronetTrafficInfo {
        public final CronetSource mCronetSource;
        public final String mCronetVersion;
        public final boolean mDidConnectionMigrationSucceed;
        public final RequestFailureReason mFailureReason;
        public final boolean mFinalUserCallbackThrew;
        public final Duration mHeadersLatency;
        public final boolean mIsBidiStream;
        public final String mNegotiatedProtocol;
        public final int mNetworkInternalErrorCode;
        public final int mNonfinalUserCallbackExceptionCount;
        public final int mOnUploadReadCount;
        public final int mQuicErrorCode;
        public final int mReadCount;
        public final long mRequestBodySizeInBytes;
        public final long mRequestHeaderSizeInBytes;
        public final long mResponseBodySizeInBytes;
        public final long mResponseHeaderSizeInBytes;
        public final int mResponseStatusCode;
        public final boolean mSocketReused;
        public final int mSource;
        public final RequestTerminalState mTerminalState;
        public final long mTimeToConnectMillis;
        public final long mTimeToEstablishDnsMillis;
        public final long mTimeToEstablishSSLMillis;
        public final long mTimeToSendFirstByteMillis;
        public final Duration mTotalLatency;
        public final int mUid;
        public final boolean mWasConnectionMigrationAttempted;

        public enum RequestFailureReason {
            UNKNOWN,
            NETWORK,
            OTHER
        }

        public enum RequestTerminalState {
            SUCCEEDED,
            ERROR,
            CANCELLED
        }

        public CronetTrafficInfo(long requestHeaderSizeInBytes, long requestBodySizeInBytes, long responseHeaderSizeInBytes, long responseBodySizeInBytes, int responseStatusCode, Duration headersLatency, Duration totalLatency, String negotiatedProtocol, boolean wasConnectionMigrationAttempted, boolean didConnectionMigrationSucceed, RequestTerminalState terminalState, int nonfinalUserCallbackExceptionCount, int readCount, int uploadReadCount, boolean isBidiStream, boolean finalUserCallbackThrew, int uid, int networkInternalErrorCode, int quicErrorCode, int source, RequestFailureReason failureReason, boolean sockedReused, String cronetVersion, CronetSource cronetSource, long timeToEstablishDnsMillis, long timeToEstablishSSLMillis, long timeToConnectMillis, long timeToSendFirstByteMillis) {
            this.mRequestHeaderSizeInBytes = requestHeaderSizeInBytes;
            this.mRequestBodySizeInBytes = requestBodySizeInBytes;
            this.mResponseHeaderSizeInBytes = responseHeaderSizeInBytes;
            this.mResponseBodySizeInBytes = responseBodySizeInBytes;
            this.mResponseStatusCode = responseStatusCode;
            this.mHeadersLatency = headersLatency;
            this.mTotalLatency = totalLatency;
            this.mNegotiatedProtocol = negotiatedProtocol;
            this.mWasConnectionMigrationAttempted = wasConnectionMigrationAttempted;
            this.mDidConnectionMigrationSucceed = didConnectionMigrationSucceed;
            this.mTerminalState = terminalState;
            this.mNonfinalUserCallbackExceptionCount = nonfinalUserCallbackExceptionCount;
            this.mReadCount = readCount;
            this.mOnUploadReadCount = uploadReadCount;
            this.mIsBidiStream = isBidiStream;
            this.mFinalUserCallbackThrew = finalUserCallbackThrew;
            this.mUid = uid;
            this.mNetworkInternalErrorCode = networkInternalErrorCode;
            this.mQuicErrorCode = quicErrorCode;
            this.mSource = source;
            this.mFailureReason = failureReason;
            this.mSocketReused = sockedReused;
            this.mCronetVersion = cronetVersion;
            this.mCronetSource = cronetSource;
            this.mTimeToEstablishDnsMillis = timeToEstablishDnsMillis;
            this.mTimeToEstablishSSLMillis = timeToEstablishSSLMillis;
            this.mTimeToConnectMillis = timeToConnectMillis;
            this.mTimeToSendFirstByteMillis = timeToSendFirstByteMillis;
        }

        public long getRequestHeaderSizeInBytes() {
            return this.mRequestHeaderSizeInBytes;
        }

        public long getRequestBodySizeInBytes() {
            return this.mRequestBodySizeInBytes;
        }

        public long getResponseHeaderSizeInBytes() {
            return this.mResponseHeaderSizeInBytes;
        }

        public long getResponseBodySizeInBytes() {
            return this.mResponseBodySizeInBytes;
        }

        public int getResponseStatusCode() {
            return this.mResponseStatusCode;
        }

        public Duration getHeadersLatency() {
            return this.mHeadersLatency;
        }

        public Duration getTotalLatency() {
            return this.mTotalLatency;
        }

        public String getNegotiatedProtocol() {
            return this.mNegotiatedProtocol;
        }

        public boolean wasConnectionMigrationAttempted() {
            return this.mWasConnectionMigrationAttempted;
        }

        public boolean didConnectionMigrationSucceed() {
            return this.mDidConnectionMigrationSucceed;
        }

        public RequestTerminalState getTerminalState() {
            return this.mTerminalState;
        }

        public int getNonfinalUserCallbackExceptionCount() {
            return this.mNonfinalUserCallbackExceptionCount;
        }

        public int getReadCount() {
            return this.mReadCount;
        }

        public int getOnUploadReadCount() {
            return this.mOnUploadReadCount;
        }

        public boolean getIsBidiStream() {
            return this.mIsBidiStream;
        }

        public boolean getFinalUserCallbackThrew() {
            return this.mFinalUserCallbackThrew;
        }

        public int getUid() {
            return this.mUid;
        }

        public int getNetworkInternalErrorCode() {
            return this.mNetworkInternalErrorCode;
        }

        public int getQuicErrorCode() {
            return this.mQuicErrorCode;
        }

        public int getConnectionCloseSource() {
            return this.mSource;
        }

        public RequestFailureReason getFailureReason() {
            return this.mFailureReason;
        }

        public boolean getIsSocketReused() {
            return this.mSocketReused;
        }

        public String getCronetVersion() {
            return this.mCronetVersion;
        }

        public CronetSource getCronetSource() {
            return this.mCronetSource;
        }

        public long getTimeToEstablishDNSMillis() {
            return this.mTimeToEstablishDnsMillis;
        }

        public long getTimeToEstablishSSLMillis() {
            return this.mTimeToEstablishSSLMillis;
        }

        public long getTimeToConnectMillis() {
            return this.mTimeToConnectMillis;
        }

        public long getTimeToSendFirstByteMillis() {
            return this.mTimeToSendFirstByteMillis;
        }
    }

    public static class CronetVersion {
        public final int mBuildVersion;
        public final int mMajorVersion;
        public final int mMinorVersion;
        public final int mPatchVersion;

        public CronetVersion(String version) {
            String[] strArrSplit = version.split("\\.");
            this.mMajorVersion = Integer.parseInt(strArrSplit[0]);
            this.mMinorVersion = Integer.parseInt(strArrSplit[1]);
            this.mBuildVersion = Integer.parseInt(strArrSplit[2]);
            this.mPatchVersion = Integer.parseInt(strArrSplit[3]);
        }

        public int getMajorVersion() {
            return this.mMajorVersion;
        }

        public int getMinorVersion() {
            return this.mMinorVersion;
        }

        public int getBuildVersion() {
            return this.mBuildVersion;
        }

        public int getPatchVersion() {
            return this.mPatchVersion;
        }

        public String toString() {
            return this.mMajorVersion + "." + this.mMinorVersion + "." + this.mBuildVersion + "." + this.mPatchVersion;
        }
    }
}
