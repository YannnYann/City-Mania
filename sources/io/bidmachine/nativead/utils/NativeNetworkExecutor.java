package io.bidmachine.nativead.utils;

import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class NativeNetworkExecutor implements Executor {
    public static NativeNetworkExecutor executor;
    public final ThreadPoolExecutor loaderExecutor;

    public NativeNetworkExecutor() {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors() * 2;
        this.loaderExecutor = new ThreadPoolExecutor(iAvailableProcessors, iAvailableProcessors, 0L, TimeUnit.MICROSECONDS, new LinkedBlockingQueue());
    }

    public static NativeNetworkExecutor getInstance() {
        if (executor == null) {
            executor = new NativeNetworkExecutor();
        }
        return executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.loaderExecutor.execute(runnable);
    }
}
