package com.vungle.ads.internal;

import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.persistence.FilePreferences;

/* JADX INFO: loaded from: classes4.dex */
public final class c2 extends s1 {
    public final /* synthetic */ ServiceLocator b;

    public c2(ServiceLocator serviceLocator) {
        this.b = serviceLocator;
    }

    @Override // com.vungle.ads.internal.s1
    public final Object a() {
        ServiceLocator serviceLocator = this.b;
        return new VungleApiClient(serviceLocator.a, (com.vungle.ads.internal.platform.f) serviceLocator.a(com.vungle.ads.internal.platform.f.class), (FilePreferences) this.b.a(FilePreferences.class));
    }
}
