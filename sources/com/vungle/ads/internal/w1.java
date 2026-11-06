package com.vungle.ads.internal;

import com.vungle.ads.internal.util.PathProvider;

/* JADX INFO: loaded from: classes4.dex */
public final class w1 extends s1 {
    public final /* synthetic */ ServiceLocator b;

    public w1(ServiceLocator serviceLocator) {
        this.b = serviceLocator;
    }

    @Override // com.vungle.ads.internal.s1
    public final Object a() {
        return new com.vungle.ads.internal.downloader.u((com.vungle.ads.internal.executor.a) this.b.a(com.vungle.ads.internal.executor.a.class), (PathProvider) this.b.a(PathProvider.class));
    }
}
