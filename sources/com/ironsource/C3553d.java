package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3553d implements InterfaceC3542c6 {
    private final C3658id a;

    public C3553d(C3658id folderRootUrl) {
        Intrinsics.checkNotNullParameter(folderRootUrl, "folderRootUrl");
        this.a = folderRootUrl;
    }

    @Override // com.ironsource.InterfaceC3542c6
    public String value() {
        return this.a.a() + "/abTestMap.json";
    }
}
