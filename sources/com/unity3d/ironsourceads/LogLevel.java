package com.unity3d.ironsourceads;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class LogLevel {
    private static final /* synthetic */ LogLevel[] a;
    private static final /* synthetic */ EnumEntries b;
    public static final LogLevel NONE = new LogLevel("NONE", 0);
    public static final LogLevel ERROR = new LogLevel("ERROR", 1);
    public static final LogLevel VERBOSE = new LogLevel("VERBOSE", 2);

    static {
        LogLevel[] logLevelArrA = a();
        a = logLevelArrA;
        b = EnumEntriesKt.enumEntries(logLevelArrA);
    }

    private LogLevel(String str, int i) {
    }

    private static final /* synthetic */ LogLevel[] a() {
        return new LogLevel[]{NONE, ERROR, VERBOSE};
    }

    public static EnumEntries<LogLevel> getEntries() {
        return b;
    }

    public static LogLevel valueOf(String str) {
        return (LogLevel) Enum.valueOf(LogLevel.class, str);
    }

    public static LogLevel[] values() {
        return (LogLevel[]) a.clone();
    }
}
