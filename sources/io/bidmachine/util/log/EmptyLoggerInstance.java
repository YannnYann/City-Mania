package io.bidmachine.util.log;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EmptyLoggerInstance.kt */
/* JADX INFO: loaded from: classes5.dex */
public class EmptyLoggerInstance implements LoggerInstance {
    public static final Companion Companion = new Companion(null);
    public static final LoggerInstance INSTANCE = new EmptyLoggerInstance();

    @Override // io.bidmachine.util.log.LoggerInstance
    public void d(Object obj, Function0<String> messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "messageBuilder");
    }

    @Override // io.bidmachine.util.log.LoggerInstance
    public void e(Object obj, Function0<String> messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "messageBuilder");
    }

    @Override // io.bidmachine.util.log.LoggerInstance
    public void w(Object obj, Function0<String> messageBuilder) {
        Intrinsics.checkNotNullParameter(messageBuilder, "messageBuilder");
    }

    /* JADX INFO: compiled from: EmptyLoggerInstance.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final LoggerInstance getINSTANCE() {
            return EmptyLoggerInstance.INSTANCE;
        }
    }
}
