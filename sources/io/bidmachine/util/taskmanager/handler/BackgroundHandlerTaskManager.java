package io.bidmachine.util.taskmanager.handler;

import android.os.Handler;
import android.os.HandlerThread;

/* JADX INFO: compiled from: BackgroundHandlerTaskManager.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class BackgroundHandlerTaskManager extends HandlerTaskManager {
    public BackgroundHandlerTaskManager() {
        HandlerThread handlerThread = new HandlerThread("BackgroundHandlerTaskManager");
        handlerThread.start();
        super(new Handler(handlerThread.getLooper()));
    }
}
