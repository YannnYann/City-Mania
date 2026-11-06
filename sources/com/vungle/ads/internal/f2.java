package com.vungle.ads.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class f2 extends s1 {
    public final /* synthetic */ ServiceLocator b;

    public f2(ServiceLocator serviceLocator) {
        this.b = serviceLocator;
    }

    @Override // com.vungle.ads.internal.s1
    public final Object a() {
        return new com.vungle.ads.internal.omsdk.c(this.b.a);
    }
}
