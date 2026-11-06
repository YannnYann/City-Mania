package com.vungle.ads.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class d2 extends s1 {
    public final /* synthetic */ ServiceLocator b;

    public d2(ServiceLocator serviceLocator) {
        this.b = serviceLocator;
    }

    @Override // com.vungle.ads.internal.s1
    public final Object a() {
        return new com.vungle.ads.internal.platform.c(this.b.a, ((com.vungle.ads.internal.executor.d) ((com.vungle.ads.internal.executor.a) this.b.a(com.vungle.ads.internal.executor.a.class))).e);
    }
}
