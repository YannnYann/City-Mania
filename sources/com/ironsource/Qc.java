package com.ironsource;

import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Qc implements Pc {
    private L2 a;
    private WeakReference<N2> b = new WeakReference<>(null);

    public final void a(L2 loadListener) {
        Intrinsics.checkNotNullParameter(loadListener, "loadListener");
        this.a = loadListener;
    }

    @Override // com.ironsource.Pc
    public void onBannerClick() {
        N2 n2 = this.b.get();
        if (n2 != null) {
            n2.onBannerClick();
        }
    }

    @Override // com.ironsource.Pc
    public void onBannerInitFailed(String str) {
    }

    @Override // com.ironsource.Pc
    public void onBannerInitSuccess() {
    }

    @Override // com.ironsource.Pc
    public void onBannerLoadFail(String description) {
        Intrinsics.checkNotNullParameter(description, "description");
        L2 l2 = this.a;
        if (l2 != null) {
            l2.onBannerLoadFail(description);
        }
    }

    @Override // com.ironsource.Pc
    public void onBannerLoadSuccess(R9 adInstance, C3688k8 adContainer) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        Intrinsics.checkNotNullParameter(adContainer, "adContainer");
        L2 l2 = this.a;
        if (l2 != null) {
            l2.onBannerLoadSuccess(adInstance, adContainer);
        }
    }

    @Override // com.ironsource.Pc
    public void onBannerShowSuccess() {
        N2 n2 = this.b.get();
        if (n2 != null) {
            n2.onBannerShowSuccess();
        }
    }

    public final void a(N2 showListener) {
        Intrinsics.checkNotNullParameter(showListener, "showListener");
        this.b = new WeakReference<>(showListener);
    }
}
