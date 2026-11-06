package com.vungle.ads.internal;

import com.vungle.ads.BaseFullscreenAd;
import com.vungle.ads.VungleError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class w0 extends com.vungle.ads.internal.presenter.c {
    public final /* synthetic */ x0 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w0(BaseFullscreenAd.AnonymousClass2 anonymousClass2, x0 x0Var) {
        super(anonymousClass2);
        this.b = x0Var;
    }

    @Override // com.vungle.ads.internal.presenter.b
    public final void onAdEnd(String str) {
        this.b.a(h.f);
        this.a.onAdEnd(str);
    }

    @Override // com.vungle.ads.internal.presenter.b
    public final void onAdImpression(String str) {
        this.b.a(h.e);
        this.a.onAdImpression(str);
    }

    @Override // com.vungle.ads.internal.presenter.b
    public final void onAdStart(String str) throws Throwable {
        this.b.a(h.d);
        this.b.l.d();
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        x0 x0Var = this.b;
        p1 p1Var = x0Var.l;
        analyticsClient.a(p1Var, x0Var.m, p1Var.b);
        this.a.onAdStart(str);
    }

    @Override // com.vungle.ads.internal.presenter.c, com.vungle.ads.internal.presenter.b
    public final void onFailure(VungleError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.b.a(h.g);
        super.onFailure(error);
    }
}
