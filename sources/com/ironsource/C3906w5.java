package com.ironsource;

import com.ironsource.C3735n1;
import com.ironsource.InterfaceC3681k1;
import com.ironsource.mediationsdk.logger.IronSourceError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.w5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3906w5 {
    private final InterfaceC3810r1 a;

    public C3906w5(InterfaceC3810r1 analytics, String adRequestAdId, Jd adRequestProviderName) {
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(adRequestAdId, "adRequestAdId");
        Intrinsics.checkNotNullParameter(adRequestProviderName, "adRequestProviderName");
        this.a = analytics;
        analytics.a(new C3735n1.s(adRequestProviderName.value()), new C3735n1.b(adRequestAdId));
    }

    public final void a() {
        InterfaceC3681k1.c.a.a().a(this.a);
    }

    public final void a(IronSourceError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        InterfaceC3681k1.c.a.a(new C3735n1.j(error.getErrorCode()), new C3735n1.k(error.getErrorMessage()), new C3735n1.f(0L)).a(this.a);
    }
}
