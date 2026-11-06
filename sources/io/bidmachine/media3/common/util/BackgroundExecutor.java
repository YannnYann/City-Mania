package io.bidmachine.media3.common.util;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes5.dex */
public final class BackgroundExecutor {
    public static Executor staticInstance;

    public static synchronized Executor get() {
        try {
            if (staticInstance == null) {
                staticInstance = Util.newSingleThreadExecutor("ExoPlayer:BackgroundExecutor");
            }
        } catch (Throwable th) {
            throw th;
        }
        return staticInstance;
    }
}
