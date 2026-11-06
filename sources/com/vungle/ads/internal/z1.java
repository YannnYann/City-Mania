package com.vungle.ads.internal;

import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.util.PathProvider;

/* JADX INFO: loaded from: classes4.dex */
public final class z1 extends s1 {
    public final /* synthetic */ ServiceLocator b;

    public z1(ServiceLocator serviceLocator) {
        this.b = serviceLocator;
    }

    @Override // com.vungle.ads.internal.s1
    public final Object a() {
        return new com.vungle.ads.internal.network.r((VungleApiClient) this.b.a(VungleApiClient.class), ((com.vungle.ads.internal.executor.d) ((com.vungle.ads.internal.executor.a) this.b.a(com.vungle.ads.internal.executor.a.class))).a, ((com.vungle.ads.internal.executor.d) ((com.vungle.ads.internal.executor.a) this.b.a(com.vungle.ads.internal.executor.a.class))).c, (PathProvider) this.b.a(PathProvider.class), (com.vungle.ads.internal.signals.j) this.b.a(com.vungle.ads.internal.signals.j.class));
    }
}
