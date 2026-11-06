package com.vungle.ads;

import android.content.Context;
import android.os.Handler;
import com.ironsource.C3939y2;
import com.ironsource.mediationsdk.d;
import com.vungle.ads.internal.ServiceLocator;
import com.vungle.ads.internal.j2;
import com.vungle.ads.internal.load.a;
import com.vungle.ads.internal.model.i0;
import com.vungle.ads.internal.model.l;
import com.vungle.ads.internal.model.s;
import com.vungle.ads.internal.p1;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.r;
import com.vungle.ads.internal.signals.j;
import com.vungle.ads.internal.signals.m;
import com.vungle.ads.internal.util.t;
import com.vungle.ads.internal.util.z;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseAd implements Ad, VungleAdType {
    public final Context a;
    public final String b;
    public final AdConfig c;
    public BaseAdListener d;
    public final Lazy e;
    public final Lazy f;
    public final t g;
    public final p1 h;
    public final p1 i;
    public final p1 j;
    public final p1 k;
    public final j2 l;
    public final j2 m;
    public final p1 n;
    public m o;
    public String p;
    public String q;
    public String r;
    public String s;

    public BaseAd(final Context context, String placementId, AdConfig adConfig) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        this.a = context;
        this.b = placementId;
        this.c = adConfig;
        this.e = LazyKt__LazyJVMKt.lazy(new Function0<r>() { // from class: com.vungle.ads.BaseAd$adInternal$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final r invoke() {
                BaseAd baseAd = this.a;
                r rVarConstructAdInternal$vungle_ads_release = baseAd.constructAdInternal$vungle_ads_release(baseAd.getContext());
                rVarConstructAdInternal$vungle_ads_release.m = this.a.getLogEntry$vungle_ads_release();
                return rVarConstructAdInternal$vungle_ads_release;
            }
        });
        this.f = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<j>() { // from class: com.vungle.ads.BaseAd$special$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.signals.j, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final j invoke() {
                return ServiceLocator.d.a(context).getService(j.class);
            }
        });
        t tVar = new t();
        tVar.g(placementId);
        this.g = tVar;
        this.h = new p1(Sdk.SDKMetric.SDKMetricType.AD_RESPONSE_TO_SHOW_DURATION_MS);
        this.i = new p1(Sdk.SDKMetric.SDKMetricType.AD_PRESENT_TO_DISPLAY_DURATION_MS);
        this.j = new p1(Sdk.SDKMetric.SDKMetricType.AD_SHOW_TO_FAIL_DURATION_MS);
        this.k = new p1(Sdk.SDKMetric.SDKMetricType.AD_DISPLAY_TO_CLICK_DURATION_MS);
        this.l = new j2(Sdk.SDKMetric.SDKMetricType.AD_LEAVE_APPLICATION);
        this.m = new j2(Sdk.SDKMetric.SDKMetricType.AD_REWARD_USER);
        this.n = new p1(Sdk.SDKMetric.SDKMetricType.AD_SHOW_TO_CLOSE_DURATION_MS);
    }

    public static /* synthetic */ void sendLossURL$default(BaseAd baseAd, double d, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendLossURL");
        }
        if ((i & 1) != 0) {
            d = 0.0d;
        }
        baseAd.sendLossURL(d);
    }

    public static /* synthetic */ void sendWinURL$default(BaseAd baseAd, double d, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendWinURL");
        }
        if ((i & 1) != 0) {
            d = 0.0d;
        }
        baseAd.sendWinURL(d);
    }

    @Override // com.vungle.ads.Ad
    public Boolean canPlayAd() {
        r adInternal$vungle_ads_release = getAdInternal$vungle_ads_release();
        Json json = r.o;
        return Boolean.valueOf(adInternal$vungle_ads_release.a(false) == null);
    }

    public abstract r constructAdInternal$vungle_ads_release(Context context);

    public final AdConfig getAdConfig() {
        return this.c;
    }

    public final r getAdInternal$vungle_ads_release() {
        return (r) this.e.getValue();
    }

    public final BaseAdListener getAdListener() {
        return this.d;
    }

    @Override // com.vungle.ads.VungleAdType
    public String getAdapterAdFormat() {
        return this.r;
    }

    public final Context getContext() {
        return this.a;
    }

    public final String getCreativeId() {
        return this.p;
    }

    public final p1 getDisplayToClickMetric$vungle_ads_release() {
        return this.k;
    }

    public final String getEventId() {
        return this.q;
    }

    public final j2 getLeaveApplicationMetric$vungle_ads_release() {
        return this.l;
    }

    public final t getLogEntry$vungle_ads_release() {
        return this.g;
    }

    @Override // com.vungle.ads.VungleAdType
    public String getMediationPartnerName() {
        return this.s;
    }

    public final String getPlacementId() {
        return this.b;
    }

    public final p1 getPresentToDisplayMetric$vungle_ads_release() {
        return this.i;
    }

    public final p1 getResponseToShowMetric$vungle_ads_release() {
        return this.h;
    }

    public final j2 getRewardedMetric$vungle_ads_release() {
        return this.m;
    }

    public final p1 getShowToCloseMetric$vungle_ads_release() {
        return this.n;
    }

    public final p1 getShowToFailMetric$vungle_ads_release() {
        return this.j;
    }

    public final j getSignalManager$vungle_ads_release() {
        return (j) this.f.getValue();
    }

    public final m getSignaledAd$vungle_ads_release() {
        return this.o;
    }

    public final double getWinningPrice() {
        l lVar;
        i0 i0Var = getAdInternal$vungle_ads_release().c;
        if (i0Var == null) {
            return 0.0d;
        }
        s sVarI = i0Var.i();
        Double d = (sVarI == null || (lVar = sVarI.c) == null) ? null : lVar.a;
        if (d != null) {
            return d.doubleValue();
        }
        return 0.0d;
    }

    @Override // com.vungle.ads.Ad
    public void load() {
        load((String) null);
    }

    public void onAdLoaded$vungle_ads_release(i0 advertisement) {
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        advertisement.a(this.c);
        this.p = advertisement.n();
        String strH = advertisement.h();
        this.q = strH;
        m mVar = this.o;
        if (mVar == null) {
            return;
        }
        mVar.a(strH);
    }

    public void onLoadFailure$vungle_ads_release(BaseAd baseAd, final VungleError vungleError) {
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
        Intrinsics.checkNotNullParameter(vungleError, "vungleError");
        this.h.e();
        Handler handler = z.a;
        z.a(new Function0<Unit>() { // from class: com.vungle.ads.BaseAd$onLoadFailure$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                BaseAdListener adListener = this.a.getAdListener();
                if (adListener != null) {
                    adListener.onAdFailedToLoad(this.a, vungleError);
                }
            }
        });
    }

    public void onLoadSuccess$vungle_ads_release(BaseAd baseAd, String str) {
        Intrinsics.checkNotNullParameter(baseAd, "baseAd");
        this.h.e();
        Handler handler = z.a;
        z.a(new Function0<Unit>() { // from class: com.vungle.ads.BaseAd$onLoadSuccess$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                BaseAdListener adListener = this.a.getAdListener();
                if (adListener != null) {
                    adListener.onAdLoaded(this.a);
                }
            }
        });
    }

    public final void sendLossURL() {
        sendLossURL$default(this, 0.0d, 1, null);
    }

    public final void sendLossURL(double d) {
        l lVar;
        r adInternal$vungle_ads_release = getAdInternal$vungle_ads_release();
        i0 i0Var = adInternal$vungle_ads_release.c;
        if (i0Var != null) {
            s sVarI = i0Var.i();
            List list = (sVarI == null || (lVar = sVarI.c) == null) ? null : lVar.c;
            if (list == null) {
                return;
            }
            adInternal$vungle_ads_release.a(list, d.n, d, C3939y2.z);
        }
    }

    public final void sendWinURL() {
        sendWinURL$default(this, 0.0d, 1, null);
    }

    public final void sendWinURL(double d) {
        l lVar;
        r adInternal$vungle_ads_release = getAdInternal$vungle_ads_release();
        i0 i0Var = adInternal$vungle_ads_release.c;
        if (i0Var != null) {
            s sVarI = i0Var.i();
            List list = (sVarI == null || (lVar = sVarI.c) == null) ? null : lVar.b;
            if (list == null) {
                return;
            }
            adInternal$vungle_ads_release.a(list, "${AUCTION_MIN_TO_WIN}", d, C3939y2.A);
        }
    }

    public final void setAdListener(BaseAdListener baseAdListener) {
        this.d = baseAdListener;
    }

    @Override // com.vungle.ads.VungleAdType
    public void setAdapterAdFormat(String str) {
        this.r = str;
        this.g.l = str;
    }

    @Override // com.vungle.ads.VungleAdType
    public void setMediationPartnerName(String str) {
        this.s = str;
        this.g.m = str;
    }

    public final void setSignaledAd$vungle_ads_release(m mVar) {
        this.o = mVar;
    }

    @Override // com.vungle.ads.Ad
    public void load(final String str) {
        getAdInternal$vungle_ads_release().a(this.b, str, (VungleCSBData) null, new a() { // from class: com.vungle.ads.BaseAd.load.1
            @Override // com.vungle.ads.internal.load.a
            public void onFailure(VungleError error) {
                Intrinsics.checkNotNullParameter(error, "error");
                BaseAd baseAd = BaseAd.this;
                baseAd.onLoadFailure$vungle_ads_release(baseAd, error);
            }

            @Override // com.vungle.ads.internal.load.a
            public void onSuccess(i0 advertisement) {
                Intrinsics.checkNotNullParameter(advertisement, "advertisement");
                BaseAd.this.onAdLoaded$vungle_ads_release(advertisement);
                BaseAd baseAd = BaseAd.this;
                baseAd.onLoadSuccess$vungle_ads_release(baseAd, str);
            }
        });
    }

    @Override // com.vungle.ads.Ad
    public void load(VungleCSBData csbData) {
        Intrinsics.checkNotNullParameter(csbData, "csbData");
        getAdInternal$vungle_ads_release().a(this.b, (String) null, csbData, new a() { // from class: com.vungle.ads.BaseAd.load.2
            @Override // com.vungle.ads.internal.load.a
            public void onFailure(VungleError error) {
                Intrinsics.checkNotNullParameter(error, "error");
                BaseAd baseAd = BaseAd.this;
                baseAd.onLoadFailure$vungle_ads_release(baseAd, error);
            }

            @Override // com.vungle.ads.internal.load.a
            public void onSuccess(i0 advertisement) {
                Intrinsics.checkNotNullParameter(advertisement, "advertisement");
                BaseAd.this.onAdLoaded$vungle_ads_release(advertisement);
                BaseAd baseAd = BaseAd.this;
                baseAd.onLoadSuccess$vungle_ads_release(baseAd, null);
            }
        });
    }
}
