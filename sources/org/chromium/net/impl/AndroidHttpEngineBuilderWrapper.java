package org.chromium.net.impl;

import android.net.http.ConnectionMigrationOptions;
import android.net.http.DnsOptions;
import android.net.http.HttpEngine;
import android.net.http.QuicOptions;
import android.util.Log;
import j$.time.Duration;
import j$.time.TimeConversions;
import j$.util.DateRetargetClass;
import java.util.Date;
import java.util.Set;
import org.chromium.net.CronetEngine;
import org.chromium.net.ExperimentalCronetEngine;
import org.chromium.net.ICronetEngineBuilder;
import org.chromium.net.telemetry.ExperimentalOptions;
import org.chromium.net.telemetry.OptionalBoolean;

/* JADX INFO: loaded from: classes5.dex */
public class AndroidHttpEngineBuilderWrapper extends ICronetEngineBuilder {
    public static boolean sLibraryLoaderUnsupportedLogged;
    public static boolean sNQEUnsupportedLogged;
    public final HttpEngine.Builder mBackend;

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder enableSdch(boolean value) {
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder setThreadPriority(int priority) {
        return this;
    }

    public AndroidHttpEngineBuilderWrapper(HttpEngine.Builder backend) {
        this.mBackend = backend;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public String getDefaultUserAgent() {
        return this.mBackend.getDefaultUserAgent();
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder setUserAgent(String userAgent) {
        this.mBackend.setUserAgent(userAgent);
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder setStoragePath(String value) {
        this.mBackend.setStoragePath(value);
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder setLibraryLoader(CronetEngine.Builder.LibraryLoader loader) {
        if (!sLibraryLoaderUnsupportedLogged) {
            Log.i("HttpEngBuilderWrap", "Custom library loader is unsupported when HttpEngineNativeProvider is used.");
            sLibraryLoaderUnsupportedLogged = true;
        }
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder enableQuic(boolean value) {
        this.mBackend.setEnableQuic(value);
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder enableHttp2(boolean value) {
        this.mBackend.setEnableHttp2(value);
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder enableBrotli(boolean value) {
        this.mBackend.setEnableBrotli(value);
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder enableHttpCache(int cacheMode, long maxSize) {
        this.mBackend.setEnableHttpCache(cacheMode, maxSize);
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder addQuicHint(String host, int port, int alternatePort) {
        this.mBackend.addQuicHint(host, port, alternatePort);
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder addPublicKeyPins(String hostName, Set<byte[]> pinsSha256, boolean includeSubdomains, Date expirationDate) {
        this.mBackend.addPublicKeyPins(hostName, pinsSha256, includeSubdomains, TimeConversions.convert(DateRetargetClass.toInstant(expirationDate)));
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder enablePublicKeyPinningBypassForLocalTrustAnchors(boolean value) {
        this.mBackend.setEnablePublicKeyPinningBypassForLocalTrustAnchors(value);
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder setExperimentalOptions(String stringOptions) {
        ExperimentalOptions experimentalOptions = new ExperimentalOptions(stringOptions);
        this.mBackend.setConnectionMigrationOptions(parseConnectionMigrationOptions(experimentalOptions));
        this.mBackend.setDnsOptions(parseDnsOptions(experimentalOptions));
        this.mBackend.setQuicOptions(parseQuicOptions(experimentalOptions));
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ICronetEngineBuilder enableNetworkQualityEstimator(boolean value) {
        if (!sNQEUnsupportedLogged) {
            Log.i("HttpEngBuilderWrap", "NetworkQualityEstimator is unsupported when HttpEngineNativeProvider is used");
            sNQEUnsupportedLogged = true;
        }
        return this;
    }

    @Override // org.chromium.net.ICronetEngineBuilder
    public ExperimentalCronetEngine build() {
        return new AndroidHttpEngineWrapper(this.mBackend.build());
    }

    public static ConnectionMigrationOptions parseConnectionMigrationOptions(ExperimentalOptions options) {
        ConnectionMigrationOptions.Builder builderM = AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline21.m();
        builderM.setDefaultNetworkMigration(optionalBooleanToMigrationOptionState(options.getMigrateSessionsOnNetworkChangeV2Option()));
        builderM.setPathDegradationMigration(optionalBooleanToMigrationOptionState(options.getAllowPortMigration()));
        OptionalBoolean migrateSessionsEarlyV2 = options.getMigrateSessionsEarlyV2();
        builderM.setAllowNonDefaultNetworkUsage(optionalBooleanToMigrationOptionState(migrateSessionsEarlyV2));
        OptionalBoolean optionalBoolean = OptionalBoolean.TRUE;
        if (migrateSessionsEarlyV2 == optionalBoolean) {
            builderM.setPathDegradationMigration(optionalBooleanToMigrationOptionState(optionalBoolean));
        }
        return builderM.build();
    }

    public static DnsOptions parseDnsOptions(ExperimentalOptions options) {
        DnsOptions.StaleDnsOptions.Builder builderM = AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline18.m();
        int staleDnsDelayMillisOption = options.getStaleDnsDelayMillisOption();
        if (staleDnsDelayMillisOption != -1) {
            builderM.setFreshLookupTimeout(TimeConversions.convert(Duration.ofMillis(staleDnsDelayMillisOption)));
        }
        int staleDnsMaxExpiredTimeMillisOption = options.getStaleDnsMaxExpiredTimeMillisOption();
        if (staleDnsMaxExpiredTimeMillisOption != -1) {
            builderM.setMaxExpiredDelay(TimeConversions.convert(Duration.ofMillis(staleDnsMaxExpiredTimeMillisOption)));
        }
        builderM.setAllowCrossNetworkUsage(optionalBooleanToMigrationOptionState(options.getStaleDnsAllowOtherNetworkOption())).setUseStaleOnNameNotResolved(optionalBooleanToMigrationOptionState(options.getStaleDnsUseStaleOnNameNotResolvedOption()));
        DnsOptions.Builder builderM2 = AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline19.m();
        builderM2.setUseHttpStackDnsResolver(optionalBooleanToMigrationOptionState(options.getAsyncDnsEnableOption())).setStaleDns(optionalBooleanToMigrationOptionState(options.getStaleDnsEnableOption())).setStaleDnsOptions(builderM.build()).setPreestablishConnectionsToStaleDnsResults(optionalBooleanToMigrationOptionState(options.getRaceStaleDnsOnConnection())).setPersistHostCache(optionalBooleanToMigrationOptionState(options.getStaleDnsPersistToDiskOption()));
        int staleDnsPersistDelayMillisOption = options.getStaleDnsPersistDelayMillisOption();
        if (staleDnsPersistDelayMillisOption != -1) {
            builderM2.setPersistHostCachePeriod(TimeConversions.convert(Duration.ofMillis(staleDnsPersistDelayMillisOption)));
        }
        return builderM2.build();
    }

    public static QuicOptions parseQuicOptions(ExperimentalOptions options) {
        QuicOptions.Builder builderM = AndroidHttpEngineBuilderWrapper$$ExternalSyntheticApiModelOutline20.m();
        if (options.getHostWhitelist() != null) {
            for (String str : options.getHostWhitelist().split(",")) {
                builderM.addAllowedQuicHost(str);
            }
        }
        int maxServerConfigsStoredInPropertiesOption = options.getMaxServerConfigsStoredInPropertiesOption();
        if (maxServerConfigsStoredInPropertiesOption != -1) {
            builderM.setInMemoryServerConfigsCacheSize(maxServerConfigsStoredInPropertiesOption);
        }
        String userAgentId = options.getUserAgentId();
        if (userAgentId != null) {
            builderM.setHandshakeUserAgent(userAgentId);
        }
        int idleConnectionTimeoutSecondsOption = options.getIdleConnectionTimeoutSecondsOption();
        if (idleConnectionTimeoutSecondsOption != -1) {
            builderM.setIdleConnectionTimeout(TimeConversions.convert(Duration.ofSeconds(idleConnectionTimeoutSecondsOption)));
        }
        return builderM.build();
    }

    /* JADX INFO: renamed from: org.chromium.net.impl.AndroidHttpEngineBuilderWrapper$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$org$chromium$net$telemetry$OptionalBoolean;

        static {
            int[] iArr = new int[OptionalBoolean.values().length];
            $SwitchMap$org$chromium$net$telemetry$OptionalBoolean = iArr;
            try {
                iArr[OptionalBoolean.TRUE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$chromium$net$telemetry$OptionalBoolean[OptionalBoolean.FALSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$chromium$net$telemetry$OptionalBoolean[OptionalBoolean.UNSET.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static int optionalBooleanToMigrationOptionState(OptionalBoolean value) {
        int i = AnonymousClass1.$SwitchMap$org$chromium$net$telemetry$OptionalBoolean[value.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                if (i == 3) {
                    return 0;
                }
                throw new AssertionError("Invalid OptionalBoolean value: " + String.valueOf(value));
            }
        }
        return i2;
    }
}
