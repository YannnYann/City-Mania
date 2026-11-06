package io.bidmachine.util.log;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TagLogger.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class TagLogger implements LoggerInstance {
    public final LoggerInstance logger;
    public final String tag;

    public TagLogger(String tag, LoggerInstance logger) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.tag = tag;
        this.logger = logger;
    }

    public /* synthetic */ TagLogger(String str, LoggerInstance loggerInstance, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i & 2) != 0 ? LoggerSettings.INSTANCE.getLogger$bidmachine_android_sdk_bd_3_8_0() : loggerInstance);
    }

    @Override // io.bidmachine.util.log.LoggerInstance
    public void d(Object obj, Function0<String> messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "messageBuilder");
        LoggerInstance loggerInstance = this.logger;
        if (obj == null) {
            obj = this.tag;
        }
        loggerInstance.d(obj, messageBuilder);
    }

    @Override // io.bidmachine.util.log.LoggerInstance
    public void w(Object obj, Function0<String> messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "messageBuilder");
        LoggerInstance loggerInstance = this.logger;
        if (obj == null) {
            obj = this.tag;
        }
        loggerInstance.w(obj, messageBuilder);
    }

    @Override // io.bidmachine.util.log.LoggerInstance
    public void e(Object obj, Function0<String> messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "messageBuilder");
        LoggerInstance loggerInstance = this.logger;
        if (obj == null) {
            obj = this.tag;
        }
        loggerInstance.e(obj, messageBuilder);
    }
}
