package com.vungle.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import com.iab.omid.library.vungle.internal.l;
import com.vungle.ads.internal.AnalyticsClient;
import com.vungle.ads.internal.ServiceLocator;
import com.vungle.ads.internal.c1;
import com.vungle.ads.internal.h;
import com.vungle.ads.internal.h0;
import com.vungle.ads.internal.j2;
import com.vungle.ads.internal.model.i0;
import com.vungle.ads.internal.model.j3;
import com.vungle.ads.internal.omsdk.d;
import com.vungle.ads.internal.omsdk.e;
import com.vungle.ads.internal.p1;
import com.vungle.ads.internal.presenter.a;
import com.vungle.ads.internal.presenter.f0;
import com.vungle.ads.internal.presenter.r;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.ui.view.f;
import com.vungle.ads.internal.ui.view.j;
import com.vungle.ads.internal.ui.y;
import com.vungle.ads.internal.util.b0;
import com.vungle.ads.internal.util.t;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import com.vungle.ads.internal.util.x;
import com.vungle.ads.internal.util.z;
import com.vungle.ads.internal.z0;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class VungleBannerView extends RelativeLayout implements VungleAdType {
    public static final Companion Companion = new Companion(null);
    public final String a;
    public final VungleAdSize b;
    public final x c;
    public BannerAdListener d;
    public final h0 e;
    public int f;
    public int g;
    public j h;
    public r i;
    public y j;
    public boolean k;
    public final AtomicBoolean l;
    public final AtomicBoolean m;
    public final AtomicBoolean n;
    public final AtomicBoolean o;
    public final AtomicBoolean p;
    public final Lazy q;
    public boolean r;

    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VungleBannerView(Context context, String placementId, VungleAdSize adSize) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        this.a = placementId;
        this.b = adSize;
        this.c = new x();
        h0 h0Var = new h0(context, placementId, adSize, new AdConfig());
        this.e = h0Var;
        this.l = new AtomicBoolean(false);
        this.m = new AtomicBoolean(false);
        this.n = new AtomicBoolean(false);
        this.o = new AtomicBoolean(false);
        this.p = new AtomicBoolean(false);
        this.q = LazyKt__LazyJVMKt.lazy(new Function0<c1>() { // from class: com.vungle.ads.VungleBannerView$impressionTracker$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final c1 invoke() {
                return new c1();
            }
        });
        h0Var.setAdListener(new BannerAdListener() { // from class: com.vungle.ads.VungleBannerView.1
            @Override // com.vungle.ads.BaseAdListener
            public void onAdClicked(BaseAd baseAd) {
                Intrinsics.checkNotNullParameter(baseAd, "baseAd");
                BannerAdListener adListener = VungleBannerView.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdClicked(baseAd);
                }
            }

            @Override // com.vungle.ads.BaseAdListener
            public void onAdEnd(BaseAd baseAd) {
                Intrinsics.checkNotNullParameter(baseAd, "baseAd");
                BannerAdListener adListener = VungleBannerView.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdEnd(baseAd);
                }
            }

            @Override // com.vungle.ads.BaseAdListener
            public void onAdFailedToLoad(BaseAd baseAd, VungleError adError) {
                Intrinsics.checkNotNullParameter(baseAd, "baseAd");
                Intrinsics.checkNotNullParameter(adError, "adError");
                BannerAdListener adListener = VungleBannerView.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdFailedToLoad(baseAd, adError);
                }
            }

            @Override // com.vungle.ads.BaseAdListener
            public void onAdFailedToPlay(BaseAd baseAd, VungleError adError) {
                Intrinsics.checkNotNullParameter(baseAd, "baseAd");
                Intrinsics.checkNotNullParameter(adError, "adError");
                BannerAdListener adListener = VungleBannerView.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdFailedToPlay(baseAd, adError);
                }
            }

            @Override // com.vungle.ads.BaseAdListener
            public void onAdImpression(BaseAd baseAd) {
                Intrinsics.checkNotNullParameter(baseAd, "baseAd");
                BannerAdListener adListener = VungleBannerView.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdImpression(baseAd);
                }
            }

            @Override // com.vungle.ads.BaseAdListener
            public void onAdLeftApplication(BaseAd baseAd) {
                Intrinsics.checkNotNullParameter(baseAd, "baseAd");
                BannerAdListener adListener = VungleBannerView.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdLeftApplication(baseAd);
                }
            }

            @Override // com.vungle.ads.BaseAdListener
            public void onAdLoaded(BaseAd baseAd) throws Throwable {
                Intrinsics.checkNotNullParameter(baseAd, "baseAd");
                VungleBannerView.access$onBannerAdLoaded(VungleBannerView.this, baseAd);
            }

            @Override // com.vungle.ads.BaseAdListener
            public void onAdStart(BaseAd baseAd) {
                Intrinsics.checkNotNullParameter(baseAd, "baseAd");
                BannerAdListener adListener = VungleBannerView.this.getAdListener();
                if (adListener != null) {
                    adListener.onAdStart(baseAd);
                }
            }
        });
    }

    public static final void access$checkHardwareAcceleration(VungleBannerView vungleBannerView) {
        vungleBannerView.getClass();
        boolean z = v.a;
        StringBuilder sbA = l.a("hardwareAccelerated = ");
        sbA.append(vungleBannerView.isHardwareAccelerated());
        u.c("VungleBannerView", sbA.toString());
        if (vungleBannerView.isHardwareAccelerated()) {
            return;
        }
        AnalyticsClient.a(AnalyticsClient.INSTANCE, Sdk.SDKMetric.SDKMetricType.HARDWARE_ACCELERATE_DISABLED, 0L, vungleBannerView.e.getLogEntry$vungle_ads_release(), null, 10);
    }

    public static final void access$finishAdInternal(VungleBannerView vungleBannerView, boolean z) {
        if (vungleBannerView.l.get()) {
            return;
        }
        vungleBannerView.l.set(true);
        int i = (z ? 4 : 0) | 2;
        r rVar = vungleBannerView.i;
        if (rVar != null) {
            boolean z2 = v.a;
            u.a("MRAIDPresenter", "stop()");
            rVar.a.b();
            rVar.d.b(false);
        }
        r rVar2 = vungleBannerView.i;
        if (rVar2 != null) {
            rVar2.a(i);
        }
        vungleBannerView.getImpressionTracker().a();
        try {
            ViewParent parent = vungleBannerView.getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(vungleBannerView);
            }
            vungleBannerView.removeAllViews();
        } catch (Exception e) {
            boolean z3 = v.a;
            u.a("VungleBannerView", "Removing webView error: " + e);
        }
    }

    public static final void access$logViewInvisibleOnPlay(VungleBannerView vungleBannerView) throws Throwable {
        if (vungleBannerView.p.getAndSet(true)) {
            return;
        }
        boolean z = v.a;
        StringBuilder sbA = l.a("ImpressionTracker checked the banner view invisible on play, log AD_VISIBILITY_INVISIBLE. ");
        sbA.append(vungleBannerView.hashCode());
        u.a("VungleBannerView", sbA.toString());
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        j2 j2Var = new j2(Sdk.SDKMetric.SDKMetricType.AD_VISIBILITY);
        j2Var.c = 1L;
        AnalyticsClient.a(analyticsClient, j2Var, vungleBannerView.e.getLogEntry$vungle_ads_release(), 4);
    }

    public static final void access$logViewVisibleOnPlay(VungleBannerView vungleBannerView) throws Throwable {
        long j = vungleBannerView.p.get() ? 3L : 2L;
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        j2 j2Var = new j2(Sdk.SDKMetric.SDKMetricType.AD_VISIBILITY);
        j2Var.c = Long.valueOf(j);
        AnalyticsClient.a(analyticsClient, j2Var, vungleBannerView.e.getLogEntry$vungle_ads_release(), 4);
        boolean z = v.a;
        u.a("VungleBannerView", "Log metric AD_VISIBILITY: " + j);
    }

    public static final void access$onBannerAdLoaded(VungleBannerView vungleBannerView, BaseAd baseAd) throws Throwable {
        vungleBannerView.getClass();
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        AnalyticsClient.a(analyticsClient, new j2(Sdk.SDKMetric.SDKMetricType.PLAY_AD_API), vungleBannerView.e.getLogEntry$vungle_ads_release(), 4);
        vungleBannerView.e.getResponseToShowMetric$vungle_ads_release().d();
        p1 responseToShowMetric$vungle_ads_release = vungleBannerView.e.getResponseToShowMetric$vungle_ads_release();
        analyticsClient.a(responseToShowMetric$vungle_ads_release, vungleBannerView.e.getLogEntry$vungle_ads_release(), responseToShowMetric$vungle_ads_release.b);
        vungleBannerView.e.getAdInternal$vungle_ads_release().k.e();
        vungleBannerView.e.getShowToCloseMetric$vungle_ads_release().e();
        vungleBannerView.e.getShowToFailMetric$vungle_ads_release().e();
        VungleError vungleErrorA = vungleBannerView.e.getAdInternal$vungle_ads_release().a(true);
        if (vungleErrorA != null) {
            if (vungleBannerView.e.getAdInternal$vungle_ads_release().a(vungleErrorA.getCode())) {
                vungleBannerView.e.getAdInternal$vungle_ads_release().a(h.g);
            }
            BannerAdListener bannerAdListener = vungleBannerView.d;
            if (bannerAdListener != null) {
                bannerAdListener.onAdFailedToPlay(baseAd, vungleErrorA);
                return;
            }
            return;
        }
        i0 i0Var = vungleBannerView.e.getAdInternal$vungle_ads_release().c;
        j3 j3Var = vungleBannerView.e.getAdInternal$vungle_ads_release().d;
        if (i0Var == null || j3Var == null) {
            BannerAdListener bannerAdListener2 = vungleBannerView.d;
            if (bannerAdListener2 != null) {
                bannerAdListener2.onAdFailedToPlay(baseAd, new AdNotLoadedCantPlay("Ad or Placement is null").setLogEntry$vungle_ads_release(vungleBannerView.e.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
                return;
            }
            return;
        }
        vungleBannerView.e.getAdInternal$vungle_ads_release().a();
        vungleBannerView.e.getAdInternal$vungle_ads_release().k.d();
        p1 p1Var = vungleBannerView.e.getAdInternal$vungle_ads_release().k;
        analyticsClient.a(p1Var, vungleBannerView.e.getLogEntry$vungle_ads_release(), p1Var.b);
        vungleBannerView.e.getAdInternal$vungle_ads_release().l.e();
        try {
            vungleBannerView.a(i0Var, j3Var, vungleBannerView.getAdViewSize());
            vungleBannerView.n.set(true);
            BannerAdListener bannerAdListener3 = vungleBannerView.d;
            if (bannerAdListener3 != null) {
                bannerAdListener3.onAdLoaded(baseAd);
            }
            vungleBannerView.a();
        } catch (InstantiationException unused) {
        }
    }

    private final c1 getImpressionTracker() {
        return (c1) this.q.getValue();
    }

    public static /* synthetic */ void load$default(VungleBannerView vungleBannerView, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = null;
        }
        vungleBannerView.load(str);
    }

    public static /* synthetic */ void sendLossURL$default(VungleBannerView vungleBannerView, double d, int i, Object obj) {
        if ((i & 1) != 0) {
            d = 0.0d;
        }
        vungleBannerView.sendLossURL(d);
    }

    public static /* synthetic */ void sendWinURL$default(VungleBannerView vungleBannerView, double d, int i, Object obj) {
        if ((i & 1) != 0) {
            d = 0.0d;
        }
        vungleBannerView.sendWinURL(d);
    }

    private final void setAdVisibility(boolean z) {
        r rVar;
        if (!this.k || this.l.get() || (rVar = this.i) == null) {
            return;
        }
        rVar.d.b(z);
    }

    public final void a() {
        if (this.l.get()) {
            boolean z = v.a;
            u.c("VungleBannerView", "renderAd() - destroyed");
            return;
        }
        if (!this.n.get()) {
            boolean z2 = v.a;
            u.a("VungleBannerView", "renderAd() - not ready: not downloaded.");
            return;
        }
        if (!this.o.get()) {
            boolean z3 = v.a;
            u.a("VungleBannerView", "renderAd() - not ready: not attached.");
            return;
        }
        if (!this.m.getAndSet(true)) {
            r rVar = this.i;
            if (rVar != null) {
                rVar.h();
            }
            getImpressionTracker().a(this, new z0() { // from class: com.vungle.ads.VungleBannerView$renderAd$1
                @Override // com.vungle.ads.internal.z0
                public void onImpression(View view) throws Throwable {
                    boolean z4 = v.a;
                    u.a("VungleBannerView", "ImpressionTracker checked the banner view become visible.");
                    this.a.k = true;
                    VungleBannerView.access$logViewVisibleOnPlay(this.a);
                    VungleBannerView.access$checkHardwareAcceleration(this.a);
                    r rVar2 = this.a.i;
                    if (rVar2 != null) {
                        u.a("MRAIDPresenter", "start()");
                        rVar2.a.d();
                        rVar2.d.b(true);
                    }
                }

                @Override // com.vungle.ads.internal.z0
                public void onViewInvisible(View view) throws Throwable {
                    VungleBannerView.access$logViewInvisibleOnPlay(this.a);
                }
            });
        }
        j jVar = this.h;
        if (jVar != null && !Intrinsics.areEqual(jVar.getParent(), this)) {
            ViewParent parent = jVar.getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(jVar);
            }
            addView(jVar, this.f, this.g);
        }
        y yVar = this.j;
        if (yVar != null && !Intrinsics.areEqual(yVar.getParent(), this)) {
            ViewParent parent2 = yVar.getParent();
            ViewGroup viewGroup2 = parent2 instanceof ViewGroup ? (ViewGroup) parent2 : null;
            if (viewGroup2 != null) {
                viewGroup2.removeView(yVar);
            }
            addView(yVar, this.f, this.g);
            yVar.bringToFront();
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = this.g;
            layoutParams.width = this.f;
            requestLayout();
        }
    }

    public final void finishAd() {
        Handler handler = z.a;
        z.a(new Function0<Unit>() { // from class: com.vungle.ads.VungleBannerView.finishAd.1
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
                VungleBannerView.access$finishAdInternal(VungleBannerView.this, true);
            }
        });
    }

    public final AdConfig getAdConfig() {
        return this.e.getAdConfig();
    }

    public final BannerAdListener getAdListener() {
        return this.d;
    }

    public final VungleAdSize getAdSize() {
        return this.b;
    }

    public final VungleAdSize getAdViewSize() {
        return this.e.getAdViewSize();
    }

    @Override // com.vungle.ads.VungleAdType
    public String getAdapterAdFormat() {
        return this.e.getAdapterAdFormat();
    }

    public final String getCreativeId() {
        return this.e.getCreativeId();
    }

    public final String getEventId() {
        return this.e.getEventId();
    }

    public final t getLogEntry$vungle_ads_release() {
        return this.e.getLogEntry$vungle_ads_release();
    }

    @Override // com.vungle.ads.VungleAdType
    public String getMediationPartnerName() {
        return this.e.getMediationPartnerName();
    }

    public final String getPlacementId() {
        return this.a;
    }

    public final double getWinningPrice() {
        return this.e.getWinningPrice();
    }

    public final void load() {
        this.e.load();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        boolean z = v.a;
        StringBuilder sbA = l.a("onAttachedToWindow(): ");
        sbA.append(hashCode());
        u.a("VungleBannerView", sbA.toString());
        this.o.set(true);
        if (this.e.getAdInternal$vungle_ads_release().d != null) {
            try {
                if (!this.r) {
                    getContext().registerReceiver(this.c, new IntentFilter("android.media.RINGER_MODE_CHANGED"));
                    this.r = true;
                    u.a("VungleBannerView", "registerReceiver(): " + this.c.hashCode());
                }
            } catch (Exception e) {
                boolean z2 = v.a;
                StringBuilder sbA2 = l.a("registerReceiver error: ");
                sbA2.append(e.getLocalizedMessage());
                u.b("VungleBannerView", sbA2.toString());
            }
        }
        a();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        boolean z = v.a;
        StringBuilder sbA = l.a("onDetachedFromWindow(): ");
        sbA.append(hashCode());
        u.a("VungleBannerView", sbA.toString());
        this.o.set(false);
        if (this.e.getAdInternal$vungle_ads_release().d != null) {
            try {
                if (this.r) {
                    getContext().unregisterReceiver(this.c);
                    this.r = false;
                }
            } catch (Exception e) {
                boolean z2 = v.a;
                StringBuilder sbA2 = l.a("unregisterReceiver error: ");
                sbA2.append(e.getLocalizedMessage());
                u.b("VungleBannerView", sbA2.toString());
            }
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        setAdVisibility(i == 0);
    }

    public final void sendLossURL() {
        sendLossURL$default(this, 0.0d, 1, null);
    }

    public final void sendLossURL(double d) {
        this.e.sendLossURL(d);
    }

    public final void sendWinURL() {
        sendWinURL$default(this, 0.0d, 1, null);
    }

    public final void sendWinURL(double d) {
        this.e.sendWinURL(d);
    }

    public final void setAdListener(BannerAdListener bannerAdListener) {
        this.d = bannerAdListener;
    }

    @Override // com.vungle.ads.VungleAdType
    public void setAdapterAdFormat(String str) {
        this.e.setAdapterAdFormat(str);
    }

    @Override // com.vungle.ads.VungleAdType
    public void setMediationPartnerName(String str) {
        this.e.setMediationPartnerName(str);
    }

    public final void load(String str) {
        this.e.load(str);
    }

    public final void load(VungleCSBData csbData) {
        Intrinsics.checkNotNullParameter(csbData, "csbData");
        this.e.load(csbData);
    }

    public final void a(i0 i0Var, j3 j3Var, VungleAdSize vungleAdSize) throws InstantiationException {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        this.g = b0.a(context, vungleAdSize.getHeight());
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "context");
        this.f = b0.a(context2, vungleAdSize.getWidth());
        a aVar = new a(this.e.a(), this.e.getAdInternal$vungle_ads_release().f());
        try {
            Context context3 = getContext();
            Intrinsics.checkNotNullExpressionValue(context3, "context");
            j jVar = new j(context3, i0Var.h());
            this.h = jVar;
            jVar.setCloseDelegate(new f() { // from class: com.vungle.ads.VungleBannerView$willPresentAdView$1
                @Override // com.vungle.ads.internal.ui.view.f
                public void close() {
                    VungleBannerView.access$finishAdInternal(this.a, false);
                }
            });
            jVar.setOnViewTouchListener(new com.vungle.ads.internal.ui.view.h() { // from class: com.vungle.ads.VungleBannerView$willPresentAdView$2
                @Override // com.vungle.ads.internal.ui.view.h
                public boolean onTouch(MotionEvent motionEvent) {
                    r rVar = this.a.i;
                    if (rVar == null) {
                        return false;
                    }
                    rVar.a(motionEvent);
                    return false;
                }
            });
            final Context context4 = getContext();
            Intrinsics.checkNotNullExpressionValue(context4, "context");
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
            Lazy lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.executor.a>() { // from class: com.vungle.ads.VungleBannerView$willPresentAdView$$inlined$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.executor.a, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final com.vungle.ads.internal.executor.a invoke() {
                    return ServiceLocator.d.a(context4).getService(com.vungle.ads.internal.executor.a.class);
                }
            });
            final Context context5 = getContext();
            Intrinsics.checkNotNullExpressionValue(context5, "context");
            d dVar = (d) LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<d>() { // from class: com.vungle.ads.VungleBannerView$willPresentAdView$$inlined$inject$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.omsdk.d, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final d invoke() {
                    return ServiceLocator.d.a(context5).getService(d.class);
                }
            }).getValue();
            boolean z = i0Var.z();
            dVar.getClass();
            e eVarA = d.a(z);
            final Context context6 = getContext();
            Intrinsics.checkNotNullExpressionValue(context6, "context");
            Lazy lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.platform.f>() { // from class: com.vungle.ads.VungleBannerView$willPresentAdView$$inlined$inject$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.platform.f, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final com.vungle.ads.internal.platform.f invoke() {
                    return ServiceLocator.d.a(context6).getService(com.vungle.ads.internal.platform.f.class);
                }
            });
            com.vungle.ads.internal.executor.j jVarF = ((com.vungle.ads.internal.executor.d) ((com.vungle.ads.internal.executor.a) lazy.getValue())).f();
            ReentrantLock reentrantLock = f0.a;
            com.vungle.ads.internal.ui.x xVarA = f0.a(i0Var, j3Var, jVarF, (com.vungle.ads.internal.platform.f) lazy2.getValue());
            this.c.a(xVarA);
            xVarA.a(eVarA);
            r rVar = new r(jVar, i0Var, j3Var, xVarA, ((com.vungle.ads.internal.executor.d) ((com.vungle.ads.internal.executor.a) lazy.getValue())).d(), eVarA, (com.vungle.ads.internal.platform.f) lazy2.getValue());
            rVar.a(aVar);
            this.i = rVar;
            String watermark$vungle_ads_release = getAdConfig().getWatermark$vungle_ads_release();
            if (watermark$vungle_ads_release != null) {
                Context context7 = getContext();
                Intrinsics.checkNotNullExpressionValue(context7, "context");
                this.j = new y(context7, watermark$vungle_ads_release);
            }
        } catch (InstantiationException e) {
            aVar.a(new AdCantPlayWithoutWebView(e.getMessage()).setLogEntry$vungle_ads_release(this.e.getLogEntry$vungle_ads_release()).logError$vungle_ads_release(), this.a);
            throw e;
        }
    }
}
