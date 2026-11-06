package io.bidmachine.util.log;

import io.bidmachine.util.Error;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LoggerInstance.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface LoggerInstance {
    void d(Object obj, Function0<String> function0);

    void e(Object obj, Function0<String> function0);

    void w(Object obj, Function0<String> function0);

    static /* synthetic */ void d$default(LoggerInstance loggerInstance, Object obj, Function0 function0, int i, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: d");
        }
        if ((i & 1) != 0) {
            obj = null;
        }
        loggerInstance.d(obj, function0);
    }

    static /* synthetic */ void e$default(LoggerInstance loggerInstance, Object obj, Function0 function0, int i, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: e");
        }
        if ((i & 1) != 0) {
            obj = null;
        }
        loggerInstance.e(obj, (Function0<String>) function0);
    }

    static /* synthetic */ void e$default(LoggerInstance loggerInstance, Object obj, Error error, int i, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: e");
        }
        if ((i & 1) != 0) {
            obj = null;
        }
        loggerInstance.e(obj, error);
    }

    default void e(Object obj, final Error error) {
        Intrinsics.checkNotNullParameter(error, "error");
        e(obj, new Function0<String>() { // from class: io.bidmachine.util.log.LoggerInstance.e.1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                return error.getMessage();
            }
        });
    }
}
