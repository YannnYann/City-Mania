package io.bidmachine.rendering.utils.taskmanager;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes5.dex */
public class UITaskManager extends SingleThreadTaskManager {
    public static final Handler a = new Handler(Looper.getMainLooper());

    @Override // io.bidmachine.rendering.utils.taskmanager.SingleThreadTaskManager
    public Handler a() {
        return a;
    }
}
