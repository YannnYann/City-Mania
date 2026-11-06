package com.ironsource;

import android.os.Handler;
import android.os.HandlerThread;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
final class F5 extends HandlerThread {
    private Handler a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F5(String name) {
        super(name);
        Intrinsics.checkNotNullParameter(name, "name");
    }

    public final void a(Runnable task) {
        Intrinsics.checkNotNullParameter(task, "task");
        Handler handler = this.a;
        if (handler != null) {
            handler.post(task);
        }
    }

    public final void a() {
        this.a = new Handler(getLooper());
    }
}
