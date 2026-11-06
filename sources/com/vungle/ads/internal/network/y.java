package com.vungle.ads.internal.network;

/* JADX INFO: loaded from: classes4.dex */
public final class y implements a {
    public final /* synthetic */ com.vungle.ads.internal.v a;

    public y(com.vungle.ads.internal.x xVar) {
        this.a = xVar;
    }

    @Override // com.vungle.ads.internal.network.a
    public final void a(o oVar) {
        this.a.onSuccess();
    }

    @Override // com.vungle.ads.internal.network.a
    public final void a(Throwable th) {
        this.a.a();
    }
}
