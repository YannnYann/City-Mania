package io.bidmachine.utils.log;

import io.bidmachine.core.Logger;
import io.bidmachine.utils.lazy.LazyValue;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class UtilsLoggerInstance implements io.bidmachine.util.log.LoggerInstance {
    public static final String d$lambda$0(Function0 messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "$messageBuilder");
        return (String) messageBuilder.invoke();
    }

    public static final String d$lambda$1(Function0 messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "$messageBuilder");
        return (String) messageBuilder.invoke();
    }

    public static final String e$lambda$4(Function0 messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "$messageBuilder");
        return (String) messageBuilder.invoke();
    }

    public static final String e$lambda$5(Function0 messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "$messageBuilder");
        return (String) messageBuilder.invoke();
    }

    public static final String w$lambda$2(Function0 messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "$messageBuilder");
        return (String) messageBuilder.invoke();
    }

    public static final String w$lambda$3(Function0 messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "$messageBuilder");
        return (String) messageBuilder.invoke();
    }

    @Override // io.bidmachine.util.log.LoggerInstance
    public void d(Object obj, final Function0<String> messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "messageBuilder");
        if (obj == null) {
            Logger.d((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.utils.log.UtilsLoggerInstance$$ExternalSyntheticLambda0
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return UtilsLoggerInstance.d$lambda$0(messageBuilder);
                }
            });
        } else {
            Logger.d(obj, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.utils.log.UtilsLoggerInstance$$ExternalSyntheticLambda1
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return UtilsLoggerInstance.d$lambda$1(messageBuilder);
                }
            });
        }
    }

    @Override // io.bidmachine.util.log.LoggerInstance
    public void e(Object obj, final Function0<String> messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "messageBuilder");
        if (obj == null) {
            Logger.e((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.utils.log.UtilsLoggerInstance$$ExternalSyntheticLambda2
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return UtilsLoggerInstance.e$lambda$4(messageBuilder);
                }
            });
        } else {
            Logger.e(obj, new LazyValue() { // from class: io.bidmachine.utils.log.UtilsLoggerInstance$$ExternalSyntheticLambda3
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return UtilsLoggerInstance.e$lambda$5(messageBuilder);
                }
            });
        }
    }

    @Override // io.bidmachine.util.log.LoggerInstance
    public void w(Object obj, final Function0<String> messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "messageBuilder");
        if (obj == null) {
            Logger.w((LazyValue<String>) new LazyValue() { // from class: io.bidmachine.utils.log.UtilsLoggerInstance$$ExternalSyntheticLambda4
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return UtilsLoggerInstance.w$lambda$2(messageBuilder);
                }
            });
        } else {
            Logger.w(obj, (LazyValue<String>) new LazyValue() { // from class: io.bidmachine.utils.log.UtilsLoggerInstance$$ExternalSyntheticLambda5
                @Override // io.bidmachine.utils.lazy.LazyValue
                public final Object get() {
                    return UtilsLoggerInstance.w$lambda$3(messageBuilder);
                }
            });
        }
    }
}
