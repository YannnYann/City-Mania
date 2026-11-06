package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.ironsourceads.interstitial.InterstitialAdRequest;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class A5 implements Gb {
    private final InterstitialAdRequest a;
    private final H9 b;
    private final InterfaceC3810r1 c;
    private final IronSourceError d;

    public A5(InterstitialAdRequest adRequest, H9 adLoadTaskListener, InterfaceC3810r1 analytics, IronSourceError error) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(adLoadTaskListener, "adLoadTaskListener");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(error, "error");
        this.a = adRequest;
        this.b = adLoadTaskListener;
        this.c = analytics;
        this.d = error;
    }

    public final IronSourceError a() {
        return this.d;
    }

    @Override // com.ironsource.Gb
    public void start() {
        C3906w5 c3906w5 = new C3906w5(this.c, this.a.getAdId$mediationsdk_release(), this.a.getProviderName$mediationsdk_release());
        c3906w5.a();
        c3906w5.a(this.d);
        this.b.a(this.d);
    }
}
