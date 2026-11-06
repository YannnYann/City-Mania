package ads_mobile_sdk;

import android.os.Process;
import com.google.common.base.Splitter;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class fr3 implements ThreadFactory {
    public final String a;
    public Integer b;
    public final AtomicInteger c;

    public fr3(String poolName, Integer num) {
        Intrinsics.checkNotNullParameter(poolName, "poolName");
        this.a = poolName;
        this.b = num;
        this.c = new AtomicInteger(1);
    }

    public static final void a(Integer num, Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "$runnable");
        Splitter splitter = f01.a;
        f01.a(new er3(num));
        Process.setThreadPriority(num.intValue());
        runnable.run();
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(final Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        String str = "GMA(" + this.a + ") " + this.c.getAndIncrement();
        final Integer num = this.b;
        if (num != null) {
            return new Thread(new Runnable() { // from class: ads_mobile_sdk.fr3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    fr3.a(num, runnable);
                }
            }, str);
        }
        Splitter splitter = f01.a;
        f01.a(dr3.a);
        return new Thread(runnable, str);
    }
}
