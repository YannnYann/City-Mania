package com.ironsource;

import android.os.Debug;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.Api;

/* JADX INFO: renamed from: com.ironsource.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3456a extends Thread {
    private static final int l = 1;
    private static final InterfaceC3517b m = new C0035a();
    private static final A9 n = new b();
    private final int d;
    private InterfaceC3517b a = m;
    private A9 b = n;
    private final Handler c = new Handler(Looper.getMainLooper());
    private String e = "";
    private boolean f = false;
    private boolean g = false;
    private volatile int h = 0;
    private int i = 1;
    private int j = 0;
    private final Runnable k = new c();

    /* JADX INFO: renamed from: com.ironsource.a$a, reason: collision with other inner class name */
    public class C0035a implements InterfaceC3517b {
        @Override // com.ironsource.InterfaceC3517b
        public void a() {
        }

        @Override // com.ironsource.InterfaceC3517b
        public void b() {
            throw new RuntimeException("ANRHandler has given up");
        }
    }

    /* JADX INFO: renamed from: com.ironsource.a$b */
    public class b implements A9 {
        @Override // com.ironsource.A9
        public void a(InterruptedException interruptedException) {
            Log.w("ANRHandler", "Interrupted: " + interruptedException.getMessage());
        }
    }

    /* JADX INFO: renamed from: com.ironsource.a$c */
    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C3456a c3456a = C3456a.this;
            c3456a.h = (c3456a.h + 1) % Api.BaseClientBuilder.API_PRIORITY_OTHER;
        }
    }

    public C3456a(int i) {
        this.d = i;
    }

    public void a(int i) {
        this.i = i;
    }

    public int b() {
        return this.i;
    }

    public C3456a c() {
        this.e = null;
        return this;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        setName("|ANR-ANRHandler|");
        int i = -1;
        while (!isInterrupted() && this.j < this.i) {
            int i2 = this.h;
            this.c.post(this.k);
            try {
                Thread.sleep(this.d);
                if (this.h != i2) {
                    this.j = 0;
                } else if (this.g || !Debug.isDebuggerConnected()) {
                    this.j++;
                    this.a.a();
                    String str = C3813r4.l;
                    if (str != null && !str.trim().isEmpty()) {
                        new P5(C3813r4.l, String.valueOf(System.currentTimeMillis()), "ANR").a();
                    }
                } else {
                    if (this.h != i) {
                        Log.w("ANRHandler", "An ANR was detected but ignored because the debugger is connected (you can prevent this with setIgnoreDebugger(true))");
                    }
                    i = this.h;
                }
            } catch (InterruptedException e) {
                this.b.a(e);
                return;
            }
        }
        if (this.j >= this.i) {
            this.a.b();
        }
    }

    public int a() {
        return this.j;
    }

    public C3456a b(boolean z) {
        this.f = z;
        return this;
    }

    public C3456a a(InterfaceC3517b interfaceC3517b) {
        if (interfaceC3517b == null) {
            this.a = m;
            return this;
        }
        this.a = interfaceC3517b;
        return this;
    }

    public C3456a a(A9 a9) {
        if (a9 == null) {
            this.b = n;
            return this;
        }
        this.b = a9;
        return this;
    }

    public C3456a a(String str) {
        if (str == null) {
            str = "";
        }
        this.e = str;
        return this;
    }

    public C3456a a(boolean z) {
        this.g = z;
        return this;
    }

    private String a(StackTraceElement[] stackTraceElementArr) {
        String str = "";
        if (stackTraceElementArr != null && stackTraceElementArr.length > 0) {
            for (StackTraceElement stackTraceElement : stackTraceElementArr) {
                if (stackTraceElement != null) {
                    str = str + stackTraceElement.toString() + ";\n";
                }
            }
        }
        return str;
    }
}
