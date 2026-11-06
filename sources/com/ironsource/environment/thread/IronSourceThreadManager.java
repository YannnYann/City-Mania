package com.ironsource.environment.thread;

import android.os.Handler;
import com.ironsource.C3766oe;
import com.ironsource.C3813r4;
import com.ironsource.Ef;
import com.ironsource.Ff;
import com.ironsource.Z9;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;

/* JADX INFO: loaded from: classes3.dex */
public final class IronSourceThreadManager {
    private static boolean a;
    public static final IronSourceThreadManager INSTANCE = new IronSourceThreadManager();
    private static final Lazy b = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.environment.thread.IronSourceThreadManager$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return IronSourceThreadManager.i();
        }
    });
    private static final Lazy c = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.environment.thread.IronSourceThreadManager$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return IronSourceThreadManager.l();
        }
    });
    private static final Lazy d = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.environment.thread.IronSourceThreadManager$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return IronSourceThreadManager.h();
        }
    });
    private static final Lazy e = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.environment.thread.IronSourceThreadManager$$ExternalSyntheticLambda3
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return IronSourceThreadManager.m();
        }
    });
    private static final Lazy f = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.environment.thread.IronSourceThreadManager$$ExternalSyntheticLambda4
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return IronSourceThreadManager.j();
        }
    });
    private static final Lazy g = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.environment.thread.IronSourceThreadManager$$ExternalSyntheticLambda5
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return IronSourceThreadManager.a();
        }
    });
    private static final Lazy h = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.environment.thread.IronSourceThreadManager$$ExternalSyntheticLambda6
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return IronSourceThreadManager.k();
        }
    });
    private static final Lazy i = LazyKt__LazyJVMKt.lazy(new Function0() { // from class: com.ironsource.environment.thread.IronSourceThreadManager$$ExternalSyntheticLambda7
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return IronSourceThreadManager.b();
        }
    });

    private IronSourceThreadManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Z9 a() {
        Z9 z9 = new Z9("adapterBackground");
        z9.start();
        z9.a();
        return z9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final C3766oe b() {
        return new C3766oe(0, null, 3, 0 == true ? 1 : 0);
    }

    private final Z9 c() {
        return (Z9) g.getValue();
    }

    private final C3766oe d() {
        return (C3766oe) i.getValue();
    }

    private final Z9 e() {
        return (Z9) f.getValue();
    }

    private final Z9 f() {
        return (Z9) h.getValue();
    }

    private final Ef g() {
        return (Ef) c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Handler h() {
        Z9 z9 = new Z9("IronSourceInitiatorHandler");
        z9.start();
        z9.a();
        return new Handler(z9.getLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b i() {
        return b.c.a("LevelPlayThread");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Z9 j() {
        Z9 z9 = new Z9("mediationBackground");
        z9.start();
        z9.a();
        return z9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Z9 k() {
        Z9 z9 = new Z9("publisher-callbacks");
        z9.start();
        z9.a();
        return z9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Ef l() {
        return new Ef(null, null, null, 7, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Z9 m() {
        Z9 z9 = new Z9("managersThread");
        z9.start();
        z9.a();
        return z9;
    }

    public static /* synthetic */ void postAdapterBackgroundTask$default(IronSourceThreadManager ironSourceThreadManager, Runnable runnable, long j, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            j = 0;
        }
        ironSourceThreadManager.postAdapterBackgroundTask(runnable, j);
    }

    public static /* synthetic */ void postMediationBackgroundTask$default(IronSourceThreadManager ironSourceThreadManager, Runnable runnable, long j, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            j = 0;
        }
        ironSourceThreadManager.postMediationBackgroundTask(runnable, j);
    }

    public static /* synthetic */ Ff.a postOnUiThreadTask$default(IronSourceThreadManager ironSourceThreadManager, Runnable runnable, long j, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            j = 0;
        }
        return ironSourceThreadManager.postOnUiThreadTask(runnable, j);
    }

    public static /* synthetic */ void postPublisherCallback$default(IronSourceThreadManager ironSourceThreadManager, Runnable runnable, long j, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            j = 0;
        }
        ironSourceThreadManager.postPublisherCallback(runnable, j);
    }

    public final void executeTasks(boolean z, boolean z2, List<? extends Runnable> tasks) {
        Intrinsics.checkNotNullParameter(tasks, "tasks");
        if (!z) {
            Iterator<? extends Runnable> it = tasks.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
            return;
        }
        if (!z2) {
            Iterator<? extends Runnable> it2 = tasks.iterator();
            while (it2.hasNext()) {
                postMediationBackgroundTask$default(INSTANCE, it2.next(), 0L, 2, null);
            }
            return;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(tasks.size());
        for (final Runnable runnable : tasks) {
            postMediationBackgroundTask$default(INSTANCE, new Runnable() { // from class: com.ironsource.environment.thread.IronSourceThreadManager$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    IronSourceThreadManager.a(runnable, countDownLatch);
                }
            }, 0L, 2, null);
        }
        try {
            countDownLatch.await();
        } catch (InterruptedException e2) {
            C3813r4.d().a(e2);
        }
    }

    public final Handler getInitHandler() {
        return (Handler) d.getValue();
    }

    public final b getLevelPlayThread() {
        return (b) b.getValue();
    }

    public final Z9 getSharedManagersThread() {
        return (Z9) e.getValue();
    }

    public final ThreadPoolExecutor getThreadPoolExecutor() {
        return new ThreadPoolExecutor(Runtime.getRuntime().availableProcessors(), Runtime.getRuntime().availableProcessors(), Long.MAX_VALUE, TimeUnit.NANOSECONDS, new LinkedBlockingQueue());
    }

    public final boolean getUseSharedExecutorService() {
        return a;
    }

    public final void postAdapterBackgroundTask(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        postAdapterBackgroundTask$default(this, action, 0L, 2, null);
    }

    public final void postMediationBackgroundTask(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        postMediationBackgroundTask$default(this, action, 0L, 2, null);
    }

    public final Ff.a postOnUiThreadTask(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return postOnUiThreadTask$default(this, action, 0L, 2, null);
    }

    public final void postPublisherCallback(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        postPublisherCallback$default(this, action, 0L, 2, null);
    }

    public final void removeAdapterBackgroundTask(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (a(action)) {
            d().remove(action);
        } else {
            c().b(action);
        }
    }

    public final void removeMediationBackgroundTask(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (a(action)) {
            d().remove(action);
        } else {
            e().b(action);
        }
    }

    public final void setUseSharedExecutorService(boolean z) {
        a = z;
    }

    public final void postAdapterBackgroundTask(Runnable action, long j) {
        Intrinsics.checkNotNullParameter(action, "action");
        c().a(action, j);
    }

    public final void postMediationBackgroundTask(Runnable action, long j) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (a) {
            d().schedule(action, j, TimeUnit.MILLISECONDS);
        } else {
            e().a(action, j);
        }
    }

    public final Ff.a postOnUiThreadTask(Runnable action, long j) {
        Intrinsics.checkNotNullParameter(action, "action");
        Ef efG = g();
        Duration.Companion companion = Duration.Companion;
        return efG.a(action, DurationKt.toDuration(j, DurationUnit.MILLISECONDS));
    }

    public final void postPublisherCallback(Runnable action, long j) {
        Intrinsics.checkNotNullParameter(action, "action");
        f().a(action, j);
    }

    private final boolean a(Runnable runnable) {
        return a && d().getQueue().contains(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Runnable runnable, final CountDownLatch countDownLatch) {
        runnable.run();
        new Runnable() { // from class: com.ironsource.environment.thread.IronSourceThreadManager$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                IronSourceThreadManager.a(countDownLatch);
            }
        }.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(CountDownLatch countDownLatch) {
        countDownLatch.countDown();
    }
}
