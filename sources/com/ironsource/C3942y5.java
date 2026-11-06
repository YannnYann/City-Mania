package com.ironsource;

import com.ironsource.C3735n1;
import com.ironsource.InterfaceC3681k1;
import com.ironsource.mediationsdk.logger.IronSourceError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.y5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3942y5 implements Gb {
    private final IronSourceError a;
    private final C3665j3 b;
    private final InterfaceC3810r1 c;

    public C3942y5(IronSourceError error, C3665j3 adLoadTaskListener, InterfaceC3810r1 analytics) {
        Intrinsics.checkNotNullParameter(error, "error");
        Intrinsics.checkNotNullParameter(adLoadTaskListener, "adLoadTaskListener");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        this.a = error;
        this.b = adLoadTaskListener;
        this.c = analytics;
    }

    public final IronSourceError a() {
        return this.a;
    }

    @Override // com.ironsource.Gb
    public void start() {
        InterfaceC3681k1.c.a aVar = InterfaceC3681k1.c.a;
        aVar.a().a(this.c);
        aVar.a(new C3735n1.j(this.a.getErrorCode()), new C3735n1.k(this.a.getErrorMessage()), new C3735n1.f(0L)).a(this.c);
        this.b.a(this.a);
    }
}
