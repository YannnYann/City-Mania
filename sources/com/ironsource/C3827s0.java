package com.ironsource;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.s0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3827s0 implements InterfaceC3829s2 {
    private final C3609g0 a;

    public C3827s0(C3609g0 adProperties) {
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        this.a = adProperties;
    }

    @Override // com.ironsource.InterfaceC3829s2
    public void a(com.ironsource.mediationsdk.h auctionRequestParams) {
        Intrinsics.checkNotNullParameter(auctionRequestParams, "auctionRequestParams");
        auctionRequestParams.b(this.a.c());
        auctionRequestParams.a(this.a.a().toString());
        auctionRequestParams.a(Boolean.TRUE);
    }
}
