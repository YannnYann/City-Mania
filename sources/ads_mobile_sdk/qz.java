package ads_mobile_sdk;

import com.ironsource.C3522b4;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes.dex */
public abstract class qz {
    public static rz a(AbstractExecutorService delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        return new rz(delegate);
    }

    public static void a(ThreadPoolExecutor threadPool, int i, ex0 flags) {
        Intrinsics.checkNotNullParameter(threadPool, "threadPool");
        Intrinsics.checkNotNullParameter(flags, "flags");
        Duration.Companion companion = Duration.Companion;
        threadPool.setKeepAliveTime(Duration.m2881getInWholeMillisecondsimpl(((Duration) flags.a("gad:thread_keep_alive_time", wm2.a(10, DurationUnit.SECONDS, "gad:thread_keep_alive_time", C3522b4.i.W), yr.j)).m2906unboximpl()), TimeUnit.MILLISECONDS);
        if (i > threadPool.getMaximumPoolSize()) {
            threadPool.setMaximumPoolSize(i);
            threadPool.setCorePoolSize(i);
        } else {
            threadPool.setCorePoolSize(i);
            threadPool.setMaximumPoolSize(i);
        }
    }
}
