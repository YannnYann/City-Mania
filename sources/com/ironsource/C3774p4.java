package com.ironsource;

import java.lang.Thread;

/* JADX INFO: renamed from: com.ironsource.p4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3774p4 implements Thread.UncaughtExceptionHandler {
    private Thread.UncaughtExceptionHandler a;

    public C3774p4(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.a = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        C3796q4 c3796q4 = new C3796q4(th);
        if (c3796q4.d()) {
            new P5(c3796q4.b(), "" + System.currentTimeMillis(), "Crash").a();
        }
        this.a.uncaughtException(thread, th);
    }
}
