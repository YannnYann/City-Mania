package ads_mobile_sdk;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes.dex */
public final class pz {
    public static final pz a = new pz();

    public final uq0 a(int i, long j, String poolName) {
        Intrinsics.checkNotNullParameter(poolName, "poolName");
        fr3 threadFactory = new fr3(poolName, null);
        int i2 = sz.$r8$clinit;
        Intrinsics.checkNotNullParameter(threadFactory, "threadFactory");
        return new uq0(new ThreadPoolExecutor(i, i, Duration.m2883getInWholeSecondsimpl(j), TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory), threadFactory);
    }
}
