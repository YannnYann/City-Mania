package org.chromium.net.impl;

import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import android.util.Base64;
import java.io.File;
import java.net.IDN;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.regex.Pattern;
import org.chromium.net.CronetEngine;
import org.chromium.net.ICronetEngineBuilder;
import org.chromium.net.ProxyOptions;
import org.chromium.net.impl.CronetLogger;

/* JADX INFO: loaded from: classes5.dex */
public abstract class CronetEngineBuilderImpl extends ICronetEngineBuilder {
    public static final Pattern INVALID_PKP_HOST_NAME = Pattern.compile("^[0-9\\.]*$");
    public static int sApiLevel = VersionSafeCallbacks$ApiVersion.getMaximumAvailableApiLevel();
    public final Context mApplicationContext;
    public boolean mBrotiEnabled;
    public String mExperimentalOptions;
    public boolean mHttp2Enabled;
    public long mHttpCacheMaxSize;
    public HttpCacheMode mHttpCacheMode;
    public final CronetLogger mLogger;
    public boolean mNetworkQualityEstimatorEnabled;
    public VersionSafeProxyOptions mProxyOptions;
    public boolean mPublicKeyPinningBypassForLocalTrustAnchorsEnabled;
    public boolean mQuicEnabled;
    public String mStoragePath;
    public String mUserAgent;
    public final List<QuicHint> mQuicHints = new ArrayList();
    public final List<Pkp> mPkps = new ArrayList();

    @Override // org.chromium.net.ICronetEngineBuilder
    public CronetEngineBuilderImpl enableSdch(boolean value) {
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public abstract long getLogCronetInitializationRef();

    @Override // org.chromium.net.ICronetEngineBuilder
    public CronetEngineBuilderImpl setLibraryLoader(CronetEngine.Builder.LibraryLoader loader) {
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public CronetEngineBuilderImpl setThreadPriority(int priority) {
        return this;
    }

    public static class QuicHint {
        public final int mAlternatePort;
        public final String mHost;
        public final int mPort;

        public QuicHint(String host, int port, int alternatePort) {
            this.mHost = host;
            this.mPort = port;
            this.mAlternatePort = alternatePort;
        }
    }

    public static class Pkp {
        public final Date mExpirationDate;
        public final byte[][] mHashes;
        public final String mHost;
        public final boolean mIncludeSubdomains;

        public Pkp(String host, byte[][] hashes, boolean includeSubdomains, Date expirationDate) {
            this.mHost = host;
            this.mHashes = hashes;
            this.mIncludeSubdomains = includeSubdomains;
            this.mExpirationDate = expirationDate;
        }
    }

    public enum HttpCacheMode {
        DISABLED(0, false),
        DISK(1, true),
        DISK_NO_HTTP(1, false),
        MEMORY(2, true);

        public final boolean mContentCacheEnabled;
        public final int mType;

        HttpCacheMode(int type, boolean contentCacheEnabled) {
            this.mContentCacheEnabled = contentCacheEnabled;
            this.mType = type;
        }

        public int getType() {
            return this.mType;
        }

        public int toPublicBuilderCacheMode() {
            int iOrdinal = ordinal();
            if (iOrdinal == 0) {
                return 0;
            }
            if (iOrdinal == 1) {
                return 3;
            }
            if (iOrdinal == 2) {
                return 2;
            }
            if (iOrdinal == 3) {
                return 1;
            }
            throw new IllegalArgumentException("Unknown internal builder cache mode");
        }

        public static HttpCacheMode fromPublicBuilderCacheMode(int cacheMode) {
            if (cacheMode == 0) {
                return DISABLED;
            }
            if (cacheMode == 1) {
                return MEMORY;
            }
            if (cacheMode == 2) {
                return DISK_NO_HTTP;
            }
            if (cacheMode == 3) {
                return DISK;
            }
            throw new IllegalArgumentException("Unknown public builder cache mode");
        }
    }

    public CronetEngineBuilderImpl(Context context, CronetLogger.CronetSource cronetSource) {
        long jUptimeMillis = SystemClock.uptimeMillis();
        Context applicationContext = context.getApplicationContext();
        this.mApplicationContext = applicationContext;
        this.mLogger = CronetLoggerFactory.createLogger(applicationContext, cronetSource);
        try {
            enableQuic(true);
            enableHttp2(true);
            enableBrotli(false);
            enableHttpCache(0, 0L);
            enableNetworkQualityEstimator(false);
            enablePublicKeyPinningBypassForLocalTrustAnchors(true);
            maybeLogCronetEngineBuilderInitializedInfo(jUptimeMillis, true, cronetSource);
        } catch (Throwable th) {
            maybeLogCronetEngineBuilderInitializedInfo(jUptimeMillis, false, cronetSource);
            throw th;
        }
    }

    public final void maybeLogCronetEngineBuilderInitializedInfo(long startUptimeMillis, boolean successful, CronetLogger.CronetSource cronetSource) {
        if (sApiLevel >= 30) {
            return;
        }
        CronetLogger.CronetEngineBuilderInitializedInfo cronetEngineBuilderInitializedInfo = new CronetLogger.CronetEngineBuilderInitializedInfo();
        cronetEngineBuilderInitializedInfo.creationSuccessful = Boolean.FALSE;
        try {
            cronetEngineBuilderInitializedInfo.author = CronetLogger.CronetEngineBuilderInitializedInfo.Author.IMPL;
            cronetEngineBuilderInitializedInfo.uid = Process.myUid();
            cronetEngineBuilderInitializedInfo.implVersion = new CronetLogger.CronetVersion(ImplVersion.getCronetVersion());
            cronetEngineBuilderInitializedInfo.source = cronetSource;
            cronetEngineBuilderInitializedInfo.apiVersion = new CronetLogger.CronetVersion(VersionSafeCallbacks$ApiVersion.getCronetVersion());
            cronetEngineBuilderInitializedInfo.cronetInitializationRef = getLogCronetInitializationRef();
            cronetEngineBuilderInitializedInfo.creationSuccessful = Boolean.valueOf(successful);
        } finally {
            cronetEngineBuilderInitializedInfo.engineBuilderCreatedLatencyMillis = (int) (SystemClock.uptimeMillis() - startUptimeMillis);
            this.mLogger.logCronetEngineBuilderInitializedInfo(cronetEngineBuilderInitializedInfo);
        }
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public String getDefaultUserAgent() {
        return UserAgent.from(this.mApplicationContext);
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public CronetEngineBuilderImpl setUserAgent(String userAgent) {
        this.mUserAgent = userAgent;
        return this;
    }

    public String getUserAgent() {
        return this.mUserAgent;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public CronetEngineBuilderImpl setStoragePath(String value) {
        if (!new File(value).isDirectory()) {
            throw new IllegalArgumentException("Storage path must be set to existing directory");
        }
        this.mStoragePath = value;
        return this;
    }

    public String storagePath() {
        return this.mStoragePath;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public CronetEngineBuilderImpl enableQuic(boolean value) {
        this.mQuicEnabled = value;
        return this;
    }

    public boolean quicEnabled() {
        return this.mQuicEnabled;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public CronetEngineBuilderImpl enableHttp2(boolean value) {
        this.mHttp2Enabled = value;
        return this;
    }

    public boolean http2Enabled() {
        return this.mHttp2Enabled;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public CronetEngineBuilderImpl enableBrotli(boolean value) {
        this.mBrotiEnabled = value;
        return this;
    }

    public boolean brotliEnabled() {
        return this.mBrotiEnabled;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public CronetEngineBuilderImpl enableHttpCache(int cacheMode, long maxSize) {
        HttpCacheMode httpCacheModeFromPublicBuilderCacheMode = HttpCacheMode.fromPublicBuilderCacheMode(cacheMode);
        if (httpCacheModeFromPublicBuilderCacheMode.getType() == 1 && storagePath() == null) {
            throw new IllegalArgumentException("Storage path must be set");
        }
        this.mHttpCacheMode = httpCacheModeFromPublicBuilderCacheMode;
        this.mHttpCacheMaxSize = maxSize;
        return this;
    }

    public int publicBuilderHttpCacheMode() {
        return this.mHttpCacheMode.toPublicBuilderCacheMode();
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public CronetEngineBuilderImpl addQuicHint(String host, int port, int alternatePort) {
        if (host.contains("/")) {
            throw new IllegalArgumentException("Illegal QUIC Hint Host: " + host);
        }
        this.mQuicHints.add(new QuicHint(host, port, alternatePort));
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public CronetEngineBuilderImpl addPublicKeyPins(String hostName, Set<byte[]> pinsSha256, boolean includeSubdomains, Date expirationDate) {
        Objects.requireNonNull(hostName, "The hostname cannot be null.");
        Objects.requireNonNull(pinsSha256, "The set of SHA256 pins cannot be null.");
        Objects.requireNonNull(expirationDate, "The pin expiration date cannot be null.");
        String strValidateHostNameForPinningAndConvert = validateHostNameForPinningAndConvert(hostName);
        HashMap map = new HashMap();
        for (byte[] bArr : pinsSha256) {
            if (bArr == null || bArr.length != 32) {
                throw new IllegalArgumentException("Public key pin is invalid");
            }
            map.put(Base64.encodeToString(bArr, 0), bArr);
        }
        this.mPkps.add(new Pkp(strValidateHostNameForPinningAndConvert, (byte[][]) map.values().toArray(new byte[map.size()][]), includeSubdomains, expirationDate));
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public CronetEngineBuilderImpl enablePublicKeyPinningBypassForLocalTrustAnchors(boolean value) {
        this.mPublicKeyPinningBypassForLocalTrustAnchorsEnabled = value;
        return this;
    }

    public boolean publicKeyPinningBypassForLocalTrustAnchorsEnabled() {
        return this.mPublicKeyPinningBypassForLocalTrustAnchorsEnabled;
    }

    public static String validateHostNameForPinningAndConvert(String hostName) throws IllegalArgumentException {
        if (INVALID_PKP_HOST_NAME.matcher(hostName).matches()) {
            throw new IllegalArgumentException("Hostname " + hostName + " is illegal. A hostname should not consist of digits and/or dots only.");
        }
        if (hostName.length() > 255) {
            throw new IllegalArgumentException("Hostname " + hostName + " is too long. The name of the host does not comply with RFC 1122 and RFC 1123.");
        }
        try {
            return IDN.toASCII(hostName, 2);
        } catch (IllegalArgumentException unused) {
            throw new IllegalArgumentException("Hostname " + hostName + " is illegal. The name of the host does not comply with RFC 1122 and RFC 1123.");
        }
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public CronetEngineBuilderImpl setExperimentalOptions(String options) {
        this.mExperimentalOptions = options;
        return this;
    }

    public String experimentalOptions() {
        return this.mExperimentalOptions;
    }

    public boolean networkQualityEstimatorEnabled() {
        return this.mNetworkQualityEstimatorEnabled;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public CronetEngineBuilderImpl enableNetworkQualityEstimator(boolean value) {
        this.mNetworkQualityEstimatorEnabled = value;
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public CronetEngineBuilderImpl setProxyOptions(ProxyOptions proxyOptions) {
        if (proxyOptions != null) {
            this.mProxyOptions = new VersionSafeProxyOptions(proxyOptions);
        }
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public Set<Integer> getSupportedConfigOptions() {
        HashSet hashSet = new HashSet();
        hashSet.add(4);
        return Collections.unmodifiableSet(hashSet);
    }

    public Context getContext() {
        return this.mApplicationContext;
    }

    public CronetLogger.CronetEngineBuilderInfo toLoggerInfo() {
        return new CronetLogger.CronetEngineBuilderInfo(publicKeyPinningBypassForLocalTrustAnchorsEnabled(), getUserAgent(), storagePath(), quicEnabled(), http2Enabled(), brotliEnabled(), publicBuilderHttpCacheMode(), experimentalOptions(), networkQualityEstimatorEnabled(), 0, getLogCronetInitializationRef());
    }
}
