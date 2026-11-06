package com.vungle.ads.internal;

import com.vungle.ads.VungleError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class i0 extends com.vungle.ads.internal.presenter.c {
    public final /* synthetic */ j0 b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i0(com.vungle.ads.internal.presenter.b bVar, j0 j0Var) {
        super(bVar);
        this.b = j0Var;
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
    public final void onAdStart(String str) {
        this.b.a(h.d);
        this.a.onAdStart(str);
    }

    @Override // com.vungle.ads.internal.presenter.c, com.vungle.ads.internal.presenter.b
    public final void onFailure(VungleError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.b.a(h.g);
        super.onFailure(error);
    }
}
