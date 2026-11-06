package com.vungle.ads.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class t1 extends s1 {
    public final /* synthetic */ ServiceLocator b;

    public t1(ServiceLocator serviceLocator) {
        this.b = serviceLocator;
    }

    @Override // com.vungle.ads.internal.s1
    public final Object a() {
        return new com.vungle.ads.internal.bidding.e(this.b.a);
    }
}
