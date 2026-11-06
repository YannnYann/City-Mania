package com.vungle.ads.internal.network;

/* JADX INFO: loaded from: classes4.dex */
public final class x implements a {
    public final /* synthetic */ com.vungle.ads.internal.v a;

    public x(com.vungle.ads.internal.w wVar) {
        this.a = wVar;
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
