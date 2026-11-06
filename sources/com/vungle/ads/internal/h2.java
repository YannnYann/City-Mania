package com.vungle.ads.internal;

import com.vungle.ads.internal.persistence.FilePreferences;
import com.vungle.ads.internal.util.PathProvider;

/* JADX INFO: loaded from: classes4.dex */
public final class h2 extends s1 {
    public final /* synthetic */ ServiceLocator b;

    public h2(ServiceLocator serviceLocator) {
        this.b = serviceLocator;
    }

    @Override // com.vungle.ads.internal.s1
    public final Object a() {
        return FilePreferences.d.a(((com.vungle.ads.internal.executor.d) ((com.vungle.ads.internal.executor.a) this.b.a(com.vungle.ads.internal.executor.a.class))).a, (PathProvider) this.b.a(PathProvider.class), "settings_vungle");
    }
}
