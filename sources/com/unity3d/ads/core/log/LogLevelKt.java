package com.unity3d.ads.core.log;

import com.unity3d.ads.LogLevel;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LogLevel.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class LogLevelKt {

    /* JADX INFO: compiled from: LogLevel.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LogLevel.values().length];
            try {
                iArr[LogLevel.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LogLevel.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LogLevel.INFO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LogLevel.DEBUG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[LogLevel.TRACE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final LogLevelInternal toLogLevelInternal(LogLevel logLevel) {
        Intrinsics.checkNotNullParameter(logLevel, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$0[logLevel.ordinal()];
        if (i == 1) {
            return LogLevelInternal.DISABLED;
        }
        if (i == 2) {
            return LogLevelInternal.ERROR;
        }
        if (i == 3) {
            return LogLevelInternal.INFO;
        }
        if (i == 4) {
            return LogLevelInternal.DEBUG;
        }
        if (i != 5) {
            throw new NoWhenBranchMatchedException();
        }
        return LogLevelInternal.TRACE;
    }
}
