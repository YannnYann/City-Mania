package com.vungle.ads.internal;

import android.content.Context;
import com.vungle.ads.AdConfig;
import com.vungle.ads.BaseAd;
import com.vungle.ads.VungleAdSize;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class h0 extends BaseAd {
    public final VungleAdSize t;
    public final i0 u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h0(Context context, String placementId, VungleAdSize adSize, AdConfig adConfig) {
        super(context, placementId, adConfig);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        this.t = adSize;
        r adInternal$vungle_ads_release = getAdInternal$vungle_ads_release();
        Intrinsics.checkNotNull(adInternal$vungle_ads_release, "null cannot be cast to non-null type com.vungle.ads.internal.BannerAdInternal");
        this.u = ((j0) adInternal$vungle_ads_release).a(new g0(this));
    }

    public final i0 a() {
        return this.u;
    }

    @Override // com.vungle.ads.BaseAd
    public final r constructAdInternal$vungle_ads_release(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new j0(context, this.t);
    }

    public final VungleAdSize getAdViewSize() {
        r adInternal$vungle_ads_release = getAdInternal$vungle_ads_release();
        Intrinsics.checkNotNull(adInternal$vungle_ads_release, "null cannot be cast to non-null type com.vungle.ads.internal.BannerAdInternal");
        return ((j0) adInternal$vungle_ads_release).k();
    }
}
