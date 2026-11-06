package com.unity3d.ads;

import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InitializationConfiguration.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class InitializationConfiguration {
    private final Map<String, String> extras;
    private final String gameId;
    private final boolean isTestModeEnabled;
    private final LogLevel logLevel;
    private final MediationInfo mediationInfo;

    public InitializationConfiguration(String gameId, boolean z, LogLevel logLevel, Map<String, String> extras, MediationInfo mediationInfo) {
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        Intrinsics.checkNotNullParameter(extras, "extras");
        this.gameId = gameId;
        this.isTestModeEnabled = z;
        this.logLevel = logLevel;
        this.extras = extras;
        this.mediationInfo = mediationInfo;
    }

    public final String getGameId() {
        return this.gameId;
    }

    public final boolean isTestModeEnabled() {
        return this.isTestModeEnabled;
    }

    public /* synthetic */ InitializationConfiguration(String str, boolean z, LogLevel logLevel, Map map, MediationInfo mediationInfo, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, z, (i & 4) != 0 ? LogLevel.INFO : logLevel, (i & 8) != 0 ? MapsKt__MapsKt.emptyMap() : map, (i & 16) != 0 ? null : mediationInfo);
    }

    public final LogLevel getLogLevel() {
        return this.logLevel;
    }

    public final Map<String, String> getExtras() {
        return this.extras;
    }

    public final MediationInfo getMediationInfo() {
        return this.mediationInfo;
    }

    /* JADX INFO: compiled from: InitializationConfiguration.kt */
    public static final class Builder {
        private Map<String, String> extras;
        private final String gameId;
        private boolean isTestModeEnabled;
        private LogLevel logLevel;
        private MediationInfo mediationInfo;

        public Builder(String gameId) {
            Intrinsics.checkNotNullParameter(gameId, "gameId");
            this.gameId = gameId;
            this.logLevel = LogLevel.INFO;
            this.extras = MapsKt__MapsKt.emptyMap();
        }

        public final Builder withLogLevel(LogLevel logLevel) {
            Intrinsics.checkNotNullParameter(logLevel, "logLevel");
            this.logLevel = logLevel;
            return this;
        }

        public final Builder withMediationInfo(MediationInfo mediationInfo) {
            this.mediationInfo = mediationInfo;
            return this;
        }

        public final Builder withExtras(Map<String, String> extras) {
            Intrinsics.checkNotNullParameter(extras, "extras");
            this.extras = extras;
            return this;
        }

        public final Builder withTestMode(boolean z) {
            this.isTestModeEnabled = z;
            return this;
        }

        public final InitializationConfiguration build() {
            return new InitializationConfiguration(this.gameId, this.isTestModeEnabled, this.logLevel, this.extras, this.mediationInfo);
        }
    }
}
