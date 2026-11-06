package org.chromium.net.telemetry;

import android.os.Process;
import android.util.Log;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.concurrent.ThreadLocalRandom;
import java.util.concurrent.atomic.AtomicInteger;
import org.chromium.base.metrics.ScopedSysTraceEvent;
import org.chromium.net.impl.CronetLogger;

/* JADX INFO: loaded from: classes5.dex */
public class CronetLoggerImpl extends CronetLogger {
    public static final String TAG = "CronetLoggerImpl";
    public final RateLimiter mRateLimiter;
    public final AtomicInteger mSamplesRateLimited;

    public static int convertToProtoConnectionCloseSource(int source) {
        if (source != 1) {
            return source != 2 ? 0 : 1;
        }
        return 2;
    }

    public CronetLoggerImpl(int sampleRatePerSecond) {
        this(new RateLimiter(sampleRatePerSecond));
    }

    public CronetLoggerImpl(RateLimiter rateLimiter) {
        this.mSamplesRateLimited = new AtomicInteger();
        this.mRateLimiter = rateLimiter;
    }

    @Override // org.chromium.net.impl.CronetLogger
    public long generateId() {
        long jNextLong = ThreadLocalRandom.current().nextLong(-9223372036854775807L, 9223372036854775805L);
        return jNextLong >= -1 ? jNextLong + 2 : jNextLong;
    }

    @Override // org.chromium.net.impl.CronetLogger
    public void logCronetEngineBuilderInitializedInfo(CronetLogger.CronetEngineBuilderInitializedInfo info2) {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("CronetLoggerImpl#logCronetEngineBuilderInitializedInfo");
        try {
            long j = info2.cronetInitializationRef;
            int iConvertToProtoCronetEngineBuilderInitializedAuthor = convertToProtoCronetEngineBuilderInitializedAuthor(info2.author);
            int i = info2.engineBuilderCreatedLatencyMillis;
            int iConvertToProtoCronetEngineBuilderInitializedSource = convertToProtoCronetEngineBuilderInitializedSource(info2.source);
            int value = OptionalBoolean.fromBoolean(info2.creationSuccessful).getValue();
            int majorVersion = info2.apiVersion.getMajorVersion();
            int minorVersion = info2.apiVersion.getMinorVersion();
            int buildVersion = info2.apiVersion.getBuildVersion();
            int patchVersion = info2.apiVersion.getPatchVersion();
            CronetLogger.CronetVersion cronetVersion = info2.implVersion;
            int majorVersion2 = cronetVersion == null ? -1 : cronetVersion.getMajorVersion();
            CronetLogger.CronetVersion cronetVersion2 = info2.implVersion;
            int minorVersion2 = cronetVersion2 == null ? -1 : cronetVersion2.getMinorVersion();
            CronetLogger.CronetVersion cronetVersion3 = info2.implVersion;
            int buildVersion2 = cronetVersion3 == null ? -1 : cronetVersion3.getBuildVersion();
            CronetLogger.CronetVersion cronetVersion4 = info2.implVersion;
            CronetStatsLog.write(762, j, iConvertToProtoCronetEngineBuilderInitializedAuthor, i, iConvertToProtoCronetEngineBuilderInitializedSource, value, majorVersion, minorVersion, buildVersion, patchVersion, majorVersion2, minorVersion2, buildVersion2, cronetVersion4 == null ? -1 : cronetVersion4.getPatchVersion(), info2.uid);
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped == null) {
                throw th;
            }
            try {
                scopedSysTraceEventScoped.close();
                throw th;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                throw th;
            }
        }
    }

    @Override // org.chromium.net.impl.CronetLogger
    public void logCronetEngineCreation(long cronetEngineId, CronetLogger.CronetEngineBuilderInfo builder, CronetLogger.CronetVersion version, CronetLogger.CronetSource source) {
        if (builder == null || version == null || source == null) {
            return;
        }
        writeCronetEngineCreation(cronetEngineId, builder, version, source);
    }

    @Override // org.chromium.net.impl.CronetLogger
    public void logCronetTrafficInfo(long cronetEngineId, CronetLogger.CronetTrafficInfo trafficInfo) {
        if (trafficInfo == null) {
            return;
        }
        if (!this.mRateLimiter.tryAcquire()) {
            this.mSamplesRateLimited.incrementAndGet();
        } else {
            writeCronetTrafficReported(cronetEngineId, trafficInfo, this.mSamplesRateLimited.getAndSet(0));
        }
    }

    public void writeCronetEngineCreation(long cronetEngineId, CronetLogger.CronetEngineBuilderInfo builder, CronetLogger.CronetVersion version, CronetLogger.CronetSource source) {
        try {
            ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("CronetLoggerImpl#writeCronetEngineCreation");
            try {
                ExperimentalOptions experimentalOptions = new ExperimentalOptions(builder.getExperimentalOptions());
                CronetStatsLog.write(703, cronetEngineId, version.getMajorVersion(), version.getMinorVersion(), version.getBuildVersion(), version.getPatchVersion(), convertToProtoCronetEngineCreatedSource(source), builder.isBrotliEnabled(), builder.isHttp2Enabled(), convertToProtoHttpCacheMode(builder.getHttpCacheMode()), builder.isPublicKeyPinningBypassForLocalTrustAnchorsEnabled(), builder.isQuicEnabled(), builder.isNetworkQualityEstimatorEnabled(), builder.getThreadPriority(), experimentalOptions.getConnectionOptionsOption(), experimentalOptions.getStoreServerConfigsInPropertiesOption().getValue(), experimentalOptions.getMaxServerConfigsStoredInPropertiesOption(), experimentalOptions.getIdleConnectionTimeoutSecondsOption(), experimentalOptions.getGoawaySessionsOnIpChangeOption().getValue(), experimentalOptions.getCloseSessionsOnIpChangeOption().getValue(), experimentalOptions.getMigrateSessionsOnNetworkChangeV2Option().getValue(), experimentalOptions.getMigrateSessionsEarlyV2().getValue(), experimentalOptions.getDisableBidirectionalStreamsOption().getValue(), experimentalOptions.getMaxTimeBeforeCryptoHandshakeSecondsOption(), experimentalOptions.getMaxIdleTimeBeforeCryptoHandshakeSecondsOption(), experimentalOptions.getEnableSocketRecvOptimizationOption().getValue(), experimentalOptions.getAsyncDnsEnableOption().getValue(), experimentalOptions.getStaleDnsEnableOption().getValue(), experimentalOptions.getStaleDnsDelayMillisOption(), experimentalOptions.getStaleDnsMaxExpiredTimeMillisOption(), experimentalOptions.getStaleDnsMaxStaleUsesOption(), experimentalOptions.getStaleDnsAllowOtherNetworkOption().getValue(), experimentalOptions.getStaleDnsPersistToDiskOption().getValue(), experimentalOptions.getStaleDnsPersistDelayMillisOption(), experimentalOptions.getStaleDnsUseStaleOnNameNotResolvedOption().getValue(), experimentalOptions.getDisableIpv6OnWifiOption().getValue(), builder.getCronetInitializationRef(), Process.myUid());
                if (scopedSysTraceEventScoped != null) {
                    scopedSysTraceEventScoped.close();
                }
            } finally {
            }
        } catch (Exception e) {
            String str = TAG;
            if (Log.isLoggable(str, 3)) {
                Log.d(str, String.format("Failed to log CronetEngine:%s creation: %s", Long.valueOf(cronetEngineId), e.getMessage()));
            }
        }
    }

    public void writeCronetTrafficReported(long cronetEngineId, CronetLogger.CronetTrafficInfo trafficInfo, int samplesRateLimitedCount) {
        try {
            ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("CronetLoggerImpl#writeCronetTrafficReported");
            try {
                CronetStatsLog.write(IronSourceError.ERROR_NT_LOAD_PLACEMENT_CAPPED, cronetEngineId, SizeBuckets.calcRequestHeadersSizeBucket(trafficInfo.getRequestHeaderSizeInBytes()), SizeBuckets.calcRequestBodySizeBucket(trafficInfo.getRequestBodySizeInBytes()), SizeBuckets.calcResponseHeadersSizeBucket(trafficInfo.getResponseHeaderSizeInBytes()), SizeBuckets.calcResponseBodySizeBucket(trafficInfo.getResponseBodySizeInBytes()), trafficInfo.getResponseStatusCode(), Hash.hash(trafficInfo.getNegotiatedProtocol()), (int) trafficInfo.getHeadersLatency().toMillis(), (int) trafficInfo.getTotalLatency().toMillis(), trafficInfo.wasConnectionMigrationAttempted(), trafficInfo.didConnectionMigrationSucceed(), samplesRateLimitedCount, convertToProtoCronetRequestTerminalState(trafficInfo.getTerminalState()), trafficInfo.getNonfinalUserCallbackExceptionCount(), -1L, -1L, trafficInfo.getReadCount(), trafficInfo.getOnUploadReadCount(), OptionalBoolean.fromBoolean(Boolean.valueOf(trafficInfo.getIsBidiStream())).getValue(), OptionalBoolean.fromBoolean(Boolean.valueOf(trafficInfo.getFinalUserCallbackThrew())).getValue(), trafficInfo.getUid(), trafficInfo.getNetworkInternalErrorCode(), trafficInfo.getQuicErrorCode(), convertToProtoConnectionCloseSource(trafficInfo.getConnectionCloseSource()), convertToProtoFailureReason(trafficInfo.getFailureReason()), OptionalBoolean.fromBoolean(Boolean.valueOf(trafficInfo.getIsSocketReused())).getValue(), trafficInfo.getCronetVersion(), convertToProtoCronetEngineBuilderInitializedSource(trafficInfo.getCronetSource()), trafficInfo.getTimeToEstablishDNSMillis(), trafficInfo.getTimeToEstablishSSLMillis(), trafficInfo.getTimeToConnectMillis(), trafficInfo.getTimeToSendFirstByteMillis());
                if (scopedSysTraceEventScoped != null) {
                    scopedSysTraceEventScoped.close();
                }
            } finally {
            }
        } catch (Exception e) {
            this.mSamplesRateLimited.addAndGet(samplesRateLimitedCount);
            String str = TAG;
            if (Log.isLoggable(str, 3)) {
                Log.d(str, String.format("Failed to log cronet traffic sample for CronetEngine %s: %s", Long.valueOf(cronetEngineId), e.getMessage()));
            }
        }
    }

    public static int convertToProtoFailureReason(CronetLogger.CronetTrafficInfo.RequestFailureReason failureReason) {
        int i = AnonymousClass1.$SwitchMap$org$chromium$net$impl$CronetLogger$CronetTrafficInfo$RequestFailureReason[failureReason.ordinal()];
        if (i != 1) {
            return i != 2 ? 0 : 100;
        }
        return 1;
    }

    public static int convertToProtoCronetEngineBuilderInitializedAuthor(CronetLogger.CronetEngineBuilderInitializedInfo.Author author) {
        int i = AnonymousClass1.$SwitchMap$org$chromium$net$impl$CronetLogger$CronetEngineBuilderInitializedInfo$Author[author.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                return 0;
            }
        }
        return i2;
    }

    public static int convertToProtoCronetRequestTerminalState(CronetLogger.CronetTrafficInfo.RequestTerminalState requestTerminalState) {
        int i = AnonymousClass1.$SwitchMap$org$chromium$net$impl$CronetLogger$CronetTrafficInfo$RequestTerminalState[requestTerminalState.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    return 0;
                }
            }
        }
        return i2;
    }

    /* JADX INFO: renamed from: org.chromium.net.telemetry.CronetLoggerImpl$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$org$chromium$net$impl$CronetLogger$CronetEngineBuilderInitializedInfo$Author;
        public static final /* synthetic */ int[] $SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource;
        public static final /* synthetic */ int[] $SwitchMap$org$chromium$net$impl$CronetLogger$CronetTrafficInfo$RequestFailureReason;
        public static final /* synthetic */ int[] $SwitchMap$org$chromium$net$impl$CronetLogger$CronetTrafficInfo$RequestTerminalState;

        static {
            int[] iArr = new int[CronetLogger.CronetSource.values().length];
            $SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource = iArr;
            try {
                iArr[CronetLogger.CronetSource.CRONET_SOURCE_STATICALLY_LINKED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource[CronetLogger.CronetSource.CRONET_SOURCE_PLAY_SERVICES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource[CronetLogger.CronetSource.CRONET_SOURCE_FALLBACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource[CronetLogger.CronetSource.CRONET_SOURCE_PLATFORM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource[CronetLogger.CronetSource.CRONET_SOURCE_UNSPECIFIED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[CronetLogger.CronetTrafficInfo.RequestTerminalState.values().length];
            $SwitchMap$org$chromium$net$impl$CronetLogger$CronetTrafficInfo$RequestTerminalState = iArr2;
            try {
                iArr2[CronetLogger.CronetTrafficInfo.RequestTerminalState.SUCCEEDED.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$chromium$net$impl$CronetLogger$CronetTrafficInfo$RequestTerminalState[CronetLogger.CronetTrafficInfo.RequestTerminalState.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$chromium$net$impl$CronetLogger$CronetTrafficInfo$RequestTerminalState[CronetLogger.CronetTrafficInfo.RequestTerminalState.CANCELLED.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            int[] iArr3 = new int[CronetLogger.CronetEngineBuilderInitializedInfo.Author.values().length];
            $SwitchMap$org$chromium$net$impl$CronetLogger$CronetEngineBuilderInitializedInfo$Author = iArr3;
            try {
                iArr3[CronetLogger.CronetEngineBuilderInitializedInfo.Author.API.ordinal()] = 1;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$chromium$net$impl$CronetLogger$CronetEngineBuilderInitializedInfo$Author[CronetLogger.CronetEngineBuilderInitializedInfo.Author.IMPL.ordinal()] = 2;
            } catch (NoSuchFieldError unused10) {
            }
            int[] iArr4 = new int[CronetLogger.CronetTrafficInfo.RequestFailureReason.values().length];
            $SwitchMap$org$chromium$net$impl$CronetLogger$CronetTrafficInfo$RequestFailureReason = iArr4;
            try {
                iArr4[CronetLogger.CronetTrafficInfo.RequestFailureReason.NETWORK.ordinal()] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$chromium$net$impl$CronetLogger$CronetTrafficInfo$RequestFailureReason[CronetLogger.CronetTrafficInfo.RequestFailureReason.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    public static int convertToProtoCronetEngineBuilderInitializedSource(CronetLogger.CronetSource source) {
        int i = AnonymousClass1.$SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource[source.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    i2 = 4;
                    if (i != 4) {
                        return 0;
                    }
                }
            }
        }
        return i2;
    }

    public static int convertToProtoCronetEngineCreatedSource(CronetLogger.CronetSource source) {
        int i = AnonymousClass1.$SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource[source.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    i2 = 4;
                    if (i != 4) {
                        return 0;
                    }
                }
            }
        }
        return i2;
    }

    public static int convertToProtoHttpCacheMode(int httpCacheMode) {
        if (httpCacheMode == 0) {
            return 1;
        }
        if (httpCacheMode == 1) {
            return 2;
        }
        if (httpCacheMode == 2) {
            return 3;
        }
        if (httpCacheMode == 3) {
            return 4;
        }
        throw new IllegalArgumentException("Expected httpCacheMode to range from 0 to 3");
    }
}
