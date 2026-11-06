package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.yf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3952yf extends Sg {
    private final InterfaceC3549cd d;
    private final Mg e;
    private final G f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3952yf(T0 adTools, InterfaceC3549cd outcomeReporter, Mg waterfallInstances, G adInstanceLoadStrategy) {
        super(adTools, outcomeReporter);
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(outcomeReporter, "outcomeReporter");
        Intrinsics.checkNotNullParameter(waterfallInstances, "waterfallInstances");
        Intrinsics.checkNotNullParameter(adInstanceLoadStrategy, "adInstanceLoadStrategy");
        this.d = outcomeReporter;
        this.e = waterfallInstances;
        this.f = adInstanceLoadStrategy;
    }

    @Override // com.ironsource.Sg
    public void a(A instance) {
        A a;
        Intrinsics.checkNotNullParameter(instance, "instance");
        if (this.f.a(instance)) {
            this.d.a(this.e.b(), instance);
        } else {
            if (!this.f.a() || (a = this.f.c().a()) == null) {
                return;
            }
            this.d.a(this.e.b(), a);
        }
    }

    @Override // com.ironsource.Sg
    public void b(A instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
    }

    @Override // com.ironsource.Sg
    public void c(A instanceToShow) {
        Intrinsics.checkNotNullParameter(instanceToShow, "instanceToShow");
        this.d.a(this.e.b(), instanceToShow);
    }

    @Override // com.ironsource.Sg
    public void a() {
        A a = this.f.c().a();
        if (a != null) {
            this.d.a(this.e.b(), a);
        }
    }
}
