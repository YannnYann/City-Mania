package com.ironsource;

import android.os.Handler;
import android.os.Looper;
import java.util.Date;

/* JADX INFO: loaded from: classes3.dex */
public class Bb {
    private final a a;
    protected long b;

    public class a extends Thread {
        private Handler a;

        private a() {
        }

        public Handler a() {
            return this.a;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Looper.prepare();
            this.a = new Handler();
            Looper.loop();
        }
    }

    public Bb() {
        a aVar = new a();
        this.a = aVar;
        aVar.start();
        this.b = new Date().getTime();
    }

    public boolean a(Object obj) {
        return (obj == null || this.a == null) ? false : true;
    }

    public void a(Runnable runnable) {
        Handler handlerA;
        a aVar = this.a;
        if (aVar == null || (handlerA = aVar.a()) == null) {
            return;
        }
        handlerA.post(runnable);
    }
}
