package com.unity3d.ads.core.data.model;

import com.unity3d.ads.LogLevel;
import com.unity3d.ads.MediationInfo;
import java.util.Map;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: InitializationConfigurationInternal.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class InitializationConfigurationInternal {
    private final Map<String, String> extras;
    private final String gameId;
    private final boolean isTestModeEnabled;
    private final LogLevel logLevel;
    private final MediationInfo mediationInfo;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ InitializationConfigurationInternal copy$default(InitializationConfigurationInternal initializationConfigurationInternal, String str, boolean z, LogLevel logLevel, Map map, MediationInfo mediationInfo, int i, Object obj) {
        if ((i & 1) != 0) {
            str = initializationConfigurationInternal.gameId;
        }
        if ((i & 2) != 0) {
            z = initializationConfigurationInternal.isTestModeEnabled;
        }
        if ((i & 4) != 0) {
            logLevel = initializationConfigurationInternal.logLevel;
        }
        if ((i & 8) != 0) {
            map = initializationConfigurationInternal.extras;
        }
        if ((i & 16) != 0) {
            mediationInfo = initializationConfigurationInternal.mediationInfo;
        }
        MediationInfo mediationInfo2 = mediationInfo;
        LogLevel logLevel2 = logLevel;
        return initializationConfigurationInternal.copy(str, z, logLevel2, map, mediationInfo2);
    }

    public final String component1() {
        return this.gameId;
    }

    public final boolean component2() {
        return this.isTestModeEnabled;
    }

    public final LogLevel component3() {
        return this.logLevel;
    }

    public final Map<String, String> component4() {
        return this.extras;
    }

    public final MediationInfo component5() {
        return this.mediationInfo;
    }

    public final InitializationConfigurationInternal copy(String gameId, boolean z, LogLevel logLevel, Map<String, String> extras, MediationInfo mediationInfo) {
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        Intrinsics.checkNotNullParameter(extras, "extras");
        return new InitializationConfigurationInternal(gameId, z, logLevel, extras, mediationInfo);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InitializationConfigurationInternal)) {
            return false;
        }
        InitializationConfigurationInternal initializationConfigurationInternal = (InitializationConfigurationInternal) obj;
        return Intrinsics.areEqual(this.gameId, initializationConfigurationInternal.gameId) && this.isTestModeEnabled == initializationConfigurationInternal.isTestModeEnabled && this.logLevel == initializationConfigurationInternal.logLevel && Intrinsics.areEqual(this.extras, initializationConfigurationInternal.extras) && Intrinsics.areEqual(this.mediationInfo, initializationConfigurationInternal.mediationInfo);
    }

    public int hashCode() {
        int iHashCode = ((((((this.gameId.hashCode() * 31) + Boolean.hashCode(this.isTestModeEnabled)) * 31) + this.logLevel.hashCode()) * 31) + this.extras.hashCode()) * 31;
        MediationInfo mediationInfo = this.mediationInfo;
        return iHashCode + (mediationInfo == null ? 0 : mediationInfo.hashCode());
    }

    public String toString() {
        return "InitializationConfigurationInternal(gameId=" + this.gameId + ", isTestModeEnabled=" + this.isTestModeEnabled + ", logLevel=" + this.logLevel + ", extras=" + this.extras + ", mediationInfo=" + this.mediationInfo + ')';
    }

    public InitializationConfigurationInternal(String gameId, boolean z, LogLevel logLevel, Map<String, String> extras, MediationInfo mediationInfo) {
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

    public /* synthetic */ InitializationConfigurationInternal(String str, boolean z, LogLevel logLevel, Map map, MediationInfo mediationInfo, int i, DefaultConstructorMarker defaultConstructorMarker) {
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
}
