package com.vungle.ads.internal;

import com.vungle.ads.internal.util.PathProvider;

/* JADX INFO: loaded from: classes4.dex */
public final class a2 extends s1 {
    public final /* synthetic */ ServiceLocator b;

    public a2(ServiceLocator serviceLocator) {
        this.b = serviceLocator;
    }

    @Override // com.vungle.ads.internal.s1
    public final Object a() {
        ServiceLocator serviceLocator = this.b;
        return new com.vungle.ads.internal.task.o(serviceLocator.a, (PathProvider) serviceLocator.a(PathProvider.class));
    }
}
