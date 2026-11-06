package com.vungle.ads.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class y1 extends s1 {
    public final /* synthetic */ ServiceLocator b;

    public y1(ServiceLocator serviceLocator) {
        this.b = serviceLocator;
    }

    @Override // com.vungle.ads.internal.s1
    public final Object a() {
        return new com.vungle.ads.internal.signals.j(this.b.a);
    }
}
