package ads_mobile_sdk;

import android.os.SystemClock;
import java.util.Iterator;
import java.util.PriorityQueue;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class ls1 implements ja3 {
    public final Executor a;
    public final tx b;
    public final PriorityQueue c = new PriorityQueue();

    public ls1(Executor executor, tx txVar) {
        this.a = executor;
        this.b = txVar;
    }

    @Override // ads_mobile_sdk.ja3
    public final void a() {
        synchronized (this.c) {
            try {
                if (this.c.isEmpty()) {
                    return;
                }
                PriorityQueue priorityQueue = new PriorityQueue();
                this.b.getClass();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                ia3 ia3Var = (ia3) this.c.peek();
                while (ia3Var != null && ia3Var.b <= jElapsedRealtime) {
                    priorityQueue.add(ia3Var);
                    ia3Var = (ia3) this.c.peek();
                }
                Iterator it = priorityQueue.iterator();
                while (it.hasNext()) {
                    try {
                        this.a.execute(((ia3) it.next()).a);
                    } catch (RuntimeException unused) {
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // ads_mobile_sdk.ja3
    public final void a(Runnable runnable, long j) {
        if (j <= 0) {
            this.a.execute(runnable);
            return;
        }
        this.b.getClass();
        ia3 ia3Var = new ia3(runnable, SystemClock.elapsedRealtime() + j);
        synchronized (this.c) {
            this.c.add(ia3Var);
        }
    }
}
