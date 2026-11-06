package com.vungle.ads.internal.executor;

import com.iab.omid.library.vungle.internal.l;
import com.vungle.ads.OutOfMemory;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class j extends ThreadPoolExecutor {
    public static final /* synthetic */ int b = 0;
    public final c a;

    static {
        new g();
    }

    public j(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue blockingQueue, c cVar) {
        super(i, i2, j, timeUnit, (BlockingQueue<Runnable>) blockingQueue, cVar);
        this.a = cVar;
        allowCoreThreadTimeOut(true);
    }

    public static final void b(j this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        StringBuilder sbA = l.a("submit error in ");
        sbA.append(this$0.a());
        new OutOfMemory(sbA.toString()).logErrorNoReturnValue$vungle_ads_release();
    }

    public static final void c(j this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        StringBuilder sbA = l.a("submit error with result in ");
        sbA.append(this$0.a());
        new OutOfMemory(sbA.toString()).logErrorNoReturnValue$vungle_ads_release();
    }

    public final String a() {
        String str;
        c cVar = this.a;
        return (cVar == null || (str = cVar.a) == null) ? "VungleThreadPoolExecutor" : str;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public final void execute(Runnable command) {
        Intrinsics.checkNotNullParameter(command, "command");
        try {
            super.execute(g.a(command, new Runnable() { // from class: com.vungle.ads.internal.executor.j$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    j.a(this.f$0);
                }
            }));
        } catch (Exception e) {
            boolean z = v.a;
            u.a("VungleThreadPool", "execute exception", e);
        } catch (OutOfMemoryError e2) {
            StringBuilder sbA = l.a("execute error in ");
            sbA.append(a());
            sbA.append(": ");
            sbA.append(e2.getLocalizedMessage());
            String string = sbA.toString();
            boolean z2 = v.a;
            u.a("VungleThreadPool", string, e2);
            new OutOfMemory(string).logErrorNoReturnValue$vungle_ads_release();
        }
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final Future submit(Runnable task) {
        Intrinsics.checkNotNullParameter(task, "task");
        try {
            Future<?> futureSubmit = super.submit(g.a(task, new Runnable() { // from class: com.vungle.ads.internal.executor.j$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    j.b(this.f$0);
                }
            }));
            Intrinsics.checkNotNullExpressionValue(futureSubmit, "{\n            super.subm…\n            })\n        }");
            return futureSubmit;
        } catch (Exception e) {
            boolean z = v.a;
            u.a("VungleThreadPool", "submit exception", e);
            return new b(null);
        } catch (OutOfMemoryError e2) {
            StringBuilder sbA = l.a("submit error in ");
            sbA.append(a());
            sbA.append(": ");
            sbA.append(e2.getLocalizedMessage());
            String string = sbA.toString();
            boolean z2 = v.a;
            u.a("VungleThreadPool", string, e2);
            new OutOfMemory(string).logErrorNoReturnValue$vungle_ads_release();
            return new b(null);
        }
    }

    public static final void a(j this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        StringBuilder sbA = l.a("execute error in ");
        sbA.append(this$0.a());
        new OutOfMemory(sbA.toString()).logErrorNoReturnValue$vungle_ads_release();
    }

    public final void a(Runnable command, Runnable fail) {
        Intrinsics.checkNotNullParameter(command, "command");
        Intrinsics.checkNotNullParameter(fail, "fail");
        try {
            super.execute(g.a(command, fail));
        } catch (Exception e) {
            boolean z = v.a;
            u.a("VungleThreadPool", "execute exception with fail", e);
            fail.run();
        } catch (OutOfMemoryError e2) {
            StringBuilder sbA = l.a("execute error with fail in ");
            sbA.append(a());
            sbA.append(": ");
            sbA.append(e2.getLocalizedMessage());
            String string = sbA.toString();
            boolean z2 = v.a;
            u.a("VungleThreadPool", string, e2);
            new OutOfMemory(string).logErrorNoReturnValue$vungle_ads_release();
            fail.run();
        }
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final Future submit(Runnable task, Object obj) {
        Intrinsics.checkNotNullParameter(task, "task");
        try {
            Future futureSubmit = super.submit(g.a(task, new Runnable() { // from class: com.vungle.ads.internal.executor.j$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    j.c(this.f$0);
                }
            }), obj);
            Intrinsics.checkNotNullExpressionValue(futureSubmit, "{\n            super.subm…     }, result)\n        }");
            return futureSubmit;
        } catch (Exception e) {
            boolean z = v.a;
            u.a("VungleThreadPool", "submit exception with result", e);
            return new b(null);
        } catch (OutOfMemoryError e2) {
            StringBuilder sbA = l.a("submit error with result in ");
            sbA.append(a());
            sbA.append(": ");
            sbA.append(e2.getLocalizedMessage());
            String string = sbA.toString();
            boolean z2 = v.a;
            u.a("VungleThreadPool", string, e2);
            new OutOfMemory(string).logErrorNoReturnValue$vungle_ads_release();
            return new b(null);
        }
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final Future submit(Callable task) {
        Intrinsics.checkNotNullParameter(task, "task");
        try {
            Future futureSubmit = super.submit(g.b(task, new i(this)));
            Intrinsics.checkNotNullExpressionValue(futureSubmit, "override fun <T> submit(…Future<T>\n        }\n    }");
            return futureSubmit;
        } catch (Exception e) {
            boolean z = v.a;
            u.b("VungleThreadPool", "submit exception callable: " + e);
            return new b(null);
        } catch (OutOfMemoryError e2) {
            StringBuilder sbA = l.a("submit error callable in ");
            sbA.append(a());
            sbA.append(": ");
            sbA.append(e2.getLocalizedMessage());
            String string = sbA.toString();
            boolean z2 = v.a;
            u.a("VungleThreadPool", string, e2);
            new OutOfMemory(string).logErrorNoReturnValue$vungle_ads_release();
            return new b(null);
        }
    }
}
