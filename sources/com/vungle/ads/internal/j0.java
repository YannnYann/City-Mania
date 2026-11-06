package com.vungle.ads.internal;

import android.content.Context;
import com.vungle.ads.VungleAdSize;
import com.vungle.ads.internal.model.j3;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class j0 extends r {
    public final VungleAdSize q;
    public volatile VungleAdSize r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j0(Context context, VungleAdSize adSize) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        this.q = adSize;
    }

    public final i0 a(com.vungle.ads.internal.presenter.b adPlayCallback) {
        Intrinsics.checkNotNullParameter(adPlayCallback, "adPlayCallback");
        return new i0(adPlayCallback, this);
    }

    @Override // com.vungle.ads.internal.r
    public final VungleAdSize b() {
        return this.q;
    }

    public final VungleAdSize k() {
        VungleAdSize vungleAdSize = this.r;
        return vungleAdSize == null ? this.q : vungleAdSize;
    }

    @Override // com.vungle.ads.internal.r
    public final boolean a(j3 placement) {
        Intrinsics.checkNotNullParameter(placement, "placement");
        return placement.e() || placement.h() || placement.f();
    }

    @Override // com.vungle.ads.internal.r
    public final boolean a(VungleAdSize vungleAdSize) {
        if (vungleAdSize != null) {
            return vungleAdSize.isValidSize$vungle_ads_release();
        }
        return false;
    }

    @Override // com.vungle.ads.internal.r
    public final void a(com.vungle.ads.internal.model.i0 advertisement) throws Throwable {
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        super.a(advertisement);
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("req=");
        sbA.append(this.q.getWidth());
        sbA.append('x');
        sbA.append(this.q.getHeight());
        sbA.append(" resp=");
        sbA.append(advertisement.d());
        sbA.append('x');
        sbA.append(advertisement.a());
        sbA.append(" adaptW=");
        sbA.append(this.q.isAdaptiveWidth$vungle_ads_release());
        sbA.append(" adaptH=");
        sbA.append(this.q.isAdaptiveHeight$vungle_ads_release());
        String string = sbA.toString();
        if (this.q.isAdaptiveWidth$vungle_ads_release() || this.q.isAdaptiveHeight$vungle_ads_release()) {
            Pair pairA = com.vungle.ads.internal.util.b0.a(d());
            int iIntValue = ((Number) pairA.component1()).intValue();
            int iIntValue2 = ((Number) pairA.component2()).intValue();
            string = string + " device=" + iIntValue + 'x' + iIntValue2;
            int iD = this.q.isAdaptiveWidth$vungle_ads_release() ? advertisement.d() : this.q.getWidth();
            int iA = this.q.isAdaptiveHeight$vungle_ads_release() ? advertisement.a() : this.q.getHeight();
            int iMin = Math.min(iIntValue, iD);
            int iMin2 = Math.min(iIntValue2, iA);
            if (this.q.isAdaptiveHeight$vungle_ads_release() && this.q.getHeight() > 0) {
                iMin2 = Math.min(this.q.getHeight(), iMin2);
            }
            this.r = new VungleAdSize(iMin, iMin2);
        }
        VungleAdSize vungleAdSizeK = k();
        AnalyticsClient.INSTANCE.a(new j2(Sdk.SDKMetric.SDKMetricType.BANNER_SIZE_NEGOTIATED), e(), string + " final=" + vungleAdSizeK.getWidth() + 'x' + vungleAdSizeK.getHeight());
    }
}
