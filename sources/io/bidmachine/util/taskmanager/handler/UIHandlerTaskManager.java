package io.bidmachine.util.taskmanager.handler;

import android.os.Looper;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UIHandlerTaskManager.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class UIHandlerTaskManager extends HandlerTaskManager {
    /* JADX WARN: Illegal instructions before constructor call */
    public UIHandlerTaskManager() {
        Looper mainLooper = Looper.getMainLooper();
        Intrinsics.checkNotNullExpressionValue(mainLooper, "getMainLooper()");
        super(mainLooper);
    }
}
