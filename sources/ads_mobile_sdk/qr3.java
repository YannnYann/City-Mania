package ads_mobile_sdk;

import android.os.SystemClock;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class qr3 {
    public final lq0 a;
    public final qt1 b;
    public final tx c;
    public final AtomicBoolean d = new AtomicBoolean(false);
    public long e = -1;
    public long f = -1;
    public Throwable g = null;

    public qr3(lq0 lq0Var, tx txVar, qt1 qt1Var) {
        this.a = lq0Var;
        this.b = qt1Var;
        this.c = txVar;
    }

    public final void b() {
        if (!this.d.get()) {
            this.c.getClass();
            this.e = SystemClock.uptimeMillis();
            return;
        }
        throw new IllegalStateException("Finished trace.");
    }

    public final void a() {
        if (!this.d.getAndSet(true)) {
            this.c.getClass();
            this.f = SystemClock.uptimeMillis();
            ((st1) this.b).a(this.a.a, this.d.get() ? this.f - this.e : -1L, this.g, null);
            return;
        }
        throw new IllegalStateException("Finished trace.");
    }

    public final void a(Throwable th) {
        if (!this.d.get()) {
            this.g = th;
            return;
        }
        throw new IllegalStateException("Finished trace.");
    }
}
