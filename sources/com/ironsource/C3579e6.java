package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.e6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3579e6 implements InterfaceC3802qa {
    private final Xe a;
    private long b;

    public C3579e6(InterfaceC3759o7 applicationLifecycleService, Xe task) {
        Intrinsics.checkNotNullParameter(applicationLifecycleService, "applicationLifecycleService");
        Intrinsics.checkNotNullParameter(task, "task");
        this.a = task;
        applicationLifecycleService.a(this);
        f();
    }

    private final long e() {
        return System.currentTimeMillis() - this.b;
    }

    private final void f() {
        this.b = System.currentTimeMillis();
    }

    @Override // com.ironsource.InterfaceC3802qa
    public void a() {
        this.a.a(Long.valueOf(e()));
        this.a.run();
    }

    @Override // com.ironsource.InterfaceC3802qa
    public void b() {
        f();
    }

    @Override // com.ironsource.InterfaceC3802qa
    public void c() {
    }

    @Override // com.ironsource.InterfaceC3802qa
    public void d() {
    }
}
