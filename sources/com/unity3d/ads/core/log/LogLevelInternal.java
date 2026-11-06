package com.unity3d.ads.core.log;

import com.google.android.gms.common.api.Api;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: LogLevel.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class LogLevelInternal {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LogLevelInternal[] $VALUES;
    private final int level;
    public static final LogLevelInternal DISABLED = new LogLevelInternal("DISABLED", 0, 0);
    public static final LogLevelInternal ERROR = new LogLevelInternal("ERROR", 1, 1);
    public static final LogLevelInternal INFO = new LogLevelInternal("INFO", 2, 2);
    public static final LogLevelInternal DEBUG = new LogLevelInternal("DEBUG", 3, 3);
    public static final LogLevelInternal TRACE = new LogLevelInternal("TRACE", 4, 4);

    /* JADX INFO: compiled from: LogLevel.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LogLevelInternal.values().length];
            try {
                iArr[LogLevelInternal.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LogLevelInternal.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LogLevelInternal.INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LogLevelInternal.DEBUG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LogLevelInternal.TRACE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final /* synthetic */ LogLevelInternal[] $values() {
        return new LogLevelInternal[]{DISABLED, ERROR, INFO, DEBUG, TRACE};
    }

    public static EnumEntries<LogLevelInternal> getEntries() {
        return $ENTRIES;
    }

    private LogLevelInternal(String str, int i, int i2) {
        this.level = i2;
    }

    public final int getLevel$unity_ads_defaultRelease() {
        return this.level;
    }

    static {
        LogLevelInternal[] logLevelInternalArr$values = $values();
        $VALUES = logLevelInternalArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(logLevelInternalArr$values);
    }

    public final int toAndroidLogLevel() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            return Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
        if (i == 2) {
            return 6;
        }
        if (i == 3) {
            return 4;
        }
        if (i == 4) {
            return 3;
        }
        if (i == 5) {
            return 2;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static LogLevelInternal valueOf(String str) {
        return (LogLevelInternal) Enum.valueOf(LogLevelInternal.class, str);
    }

    public static LogLevelInternal[] values() {
        return (LogLevelInternal[]) $VALUES.clone();
    }
}
