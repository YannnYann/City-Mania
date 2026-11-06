package com.google.android.libraries.ads.mobile.sdk.common;

import android.os.Bundle;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class b {
    public final String a;
    public final Bundle b;
    public final Map c;
    public final BaseRequest d;

    public b(String adUnitId, Bundle googleExtrasBundle, Map adSourceExtrasBundles, BaseRequest baseRequest) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(googleExtrasBundle, "googleExtrasBundle");
        Intrinsics.checkNotNullParameter(adSourceExtrasBundles, "adSourceExtrasBundles");
        Intrinsics.checkNotNullParameter(baseRequest, "baseRequest");
        this.a = adUnitId;
        this.b = googleExtrasBundle;
        this.c = adSourceExtrasBundles;
        this.d = baseRequest;
    }

    public final AdRequest a() {
        return new AdRequest(this.a, this.d.getCategoryExclusions(), this.d.getContentUrl(), this.d.getCustomTargeting(), this.b, this.d.getKeywords(), this.d.getNeighboringContentUrls(), this.c, this.d.getPublisherProvidedId(), this.d.getRequestAgent(), this.d.getPlacementId(), this.d.getSkipUninitializedAdapters());
    }
}
