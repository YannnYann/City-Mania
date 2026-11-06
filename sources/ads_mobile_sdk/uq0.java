package ads_mobile_sdk;

import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class uq0 {
    public final AbstractExecutorService a;
    public final fr3 b;

    public uq0(ThreadPoolExecutor executorService, fr3 threadFactory) {
        Intrinsics.checkNotNullParameter(executorService, "executorService");
        Intrinsics.checkNotNullParameter(threadFactory, "threadFactory");
        this.a = executorService;
        this.b = threadFactory;
    }

    public final AbstractExecutorService a() {
        return this.a;
    }
}
