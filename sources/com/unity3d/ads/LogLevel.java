package com.unity3d.ads;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: LogLevel.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class LogLevel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LogLevel[] $VALUES;
    private final int level;
    public static final LogLevel DISABLED = new LogLevel("DISABLED", 0, 0);
    public static final LogLevel ERROR = new LogLevel("ERROR", 1, 1);
    public static final LogLevel INFO = new LogLevel("INFO", 2, 2);
    public static final LogLevel DEBUG = new LogLevel("DEBUG", 3, 3);
    public static final LogLevel TRACE = new LogLevel("TRACE", 4, 4);

    private static final /* synthetic */ LogLevel[] $values() {
        return new LogLevel[]{DISABLED, ERROR, INFO, DEBUG, TRACE};
    }

    public static EnumEntries<LogLevel> getEntries() {
        return $ENTRIES;
    }

    private LogLevel(String str, int i, int i2) {
        this.level = i2;
    }

    public final int getLevel$unity_ads_defaultRelease() {
        return this.level;
    }

    static {
        LogLevel[] logLevelArr$values = $values();
        $VALUES = logLevelArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(logLevelArr$values);
    }

    public static LogLevel valueOf(String str) {
        return (LogLevel) Enum.valueOf(LogLevel.class, str);
    }

    public static LogLevel[] values() {
        return (LogLevel[]) $VALUES.clone();
    }
}
