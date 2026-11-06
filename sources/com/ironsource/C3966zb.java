package com.ironsource;

import android.util.Log;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: renamed from: com.ironsource.zb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3966zb {
    private static final String g = "zb";
    private final com.ironsource.lifecycle.b a;
    private final Runnable b;
    private final C3678jg c;
    private Timer e;
    private final Object d = new Object();
    private final InterfaceC3802qa f = new a();

    /* JADX INFO: renamed from: com.ironsource.zb$a */
    public class a implements InterfaceC3802qa {
        public a() {
        }

        @Override // com.ironsource.InterfaceC3802qa
        public void a() {
            C3966zb.this.c.c(System.currentTimeMillis());
            C3966zb.this.c();
        }

        @Override // com.ironsource.InterfaceC3802qa
        public void b() {
            C3966zb.this.c.b(System.currentTimeMillis());
            C3966zb c3966zb = C3966zb.this;
            c3966zb.b(c3966zb.c.a());
        }

        @Override // com.ironsource.InterfaceC3802qa
        public void c() {
        }

        @Override // com.ironsource.InterfaceC3802qa
        public void d() {
        }
    }

    /* JADX INFO: renamed from: com.ironsource.zb$b */
    public class b extends TimerTask {
        public b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            C3966zb c3966zb = C3966zb.this;
            c3966zb.a.b(c3966zb.f);
            C3966zb.this.c.b();
            C3966zb.this.b.run();
        }
    }

    public C3966zb(Runnable runnable, com.ironsource.lifecycle.b bVar, C3678jg c3678jg) {
        this.b = runnable;
        this.a = bVar;
        this.c = c3678jg;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        synchronized (this.d) {
            try {
                Timer timer = this.e;
                if (timer != null) {
                    timer.cancel();
                    this.e = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a() {
        a(0L);
    }

    public void b() {
        c();
        this.a.b(this.f);
        this.c.b();
    }

    public void a(long j) {
        if (j < 0) {
            Log.d(g, "cannot start timer with delay < 0");
            return;
        }
        this.a.a(this.f);
        this.c.a(j);
        if (this.a.e()) {
            this.c.c(System.currentTimeMillis());
        } else {
            b(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(long j) {
        synchronized (this.d) {
            c();
            Timer timer = new Timer();
            this.e = timer;
            timer.schedule(new b(), j);
        }
    }
}
