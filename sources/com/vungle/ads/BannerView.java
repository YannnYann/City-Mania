package com.vungle.ads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import com.iab.omid.library.vungle.internal.l;
import com.vungle.ads.internal.AnalyticsClient;
import com.vungle.ads.internal.ServiceLocator;
import com.vungle.ads.internal.c1;
import com.vungle.ads.internal.j2;
import com.vungle.ads.internal.model.i0;
import com.vungle.ads.internal.model.j3;
import com.vungle.ads.internal.omsdk.d;
import com.vungle.ads.internal.omsdk.e;
import com.vungle.ads.internal.presenter.a;
import com.vungle.ads.internal.presenter.b;
import com.vungle.ads.internal.presenter.r;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.ui.view.f;
import com.vungle.ads.internal.ui.view.h;
import com.vungle.ads.internal.ui.view.j;
import com.vungle.ads.internal.ui.x;
import com.vungle.ads.internal.ui.y;
import com.vungle.ads.internal.util.b0;
import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import com.vungle.ads.internal.z0;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class BannerView extends RelativeLayout {
    public static final Companion Companion = new Companion(null);
    public final j3 a;
    public final i0 b;
    public int c;
    public int d;
    public j e;
    public r f;
    public y g;
    public boolean h;
    public final AtomicBoolean i;
    public final AtomicBoolean j;
    public final AtomicBoolean k;
    public final Lazy l;

    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannerView(final Context context, j3 placement, i0 advertisement, VungleAdSize adSize, AdConfig adConfig, b adPlayCallback) throws InstantiationException {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placement, "placement");
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
        Intrinsics.checkNotNullParameter(adPlayCallback, "adPlayCallback");
        this.a = placement;
        this.b = advertisement;
        this.i = new AtomicBoolean(false);
        this.j = new AtomicBoolean(false);
        this.k = new AtomicBoolean(false);
        this.l = LazyKt__LazyJVMKt.lazy(new Function0<c1>() { // from class: com.vungle.ads.BannerView$impressionTracker$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final c1 invoke() {
                return new c1();
            }
        });
        this.d = b0.a(context, adSize.getHeight());
        this.c = b0.a(context, adSize.getWidth());
        a aVar = new a(adPlayCallback, placement);
        try {
            j jVar = new j(context, advertisement.h());
            this.e = jVar;
            jVar.setCloseDelegate(new f() { // from class: com.vungle.ads.BannerView.1
                @Override // com.vungle.ads.internal.ui.view.f
                public void close() {
                    BannerView.this.finishAdInternal(false);
                }
            });
            jVar.setOnViewTouchListener(new h() { // from class: com.vungle.ads.BannerView.2
                @Override // com.vungle.ads.internal.ui.view.h
                public boolean onTouch(MotionEvent motionEvent) {
                    r rVar = BannerView.this.f;
                    if (rVar == null) {
                        return false;
                    }
                    rVar.a(motionEvent);
                    return false;
                }
            });
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
            Lazy lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.executor.a>() { // from class: com.vungle.ads.BannerView$special$$inlined$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.executor.a, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final com.vungle.ads.internal.executor.a invoke() {
                    return ServiceLocator.d.a(context).getService(com.vungle.ads.internal.executor.a.class);
                }
            });
            d dVarB = b(LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<d>() { // from class: com.vungle.ads.BannerView$special$$inlined$inject$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.omsdk.d, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final d invoke() {
                    return ServiceLocator.d.a(context).getService(d.class);
                }
            }));
            boolean z = advertisement.z();
            dVarB.getClass();
            e eVarA = d.a(z);
            Lazy lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, new Function0<com.vungle.ads.internal.platform.f>() { // from class: com.vungle.ads.BannerView$special$$inlined$inject$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.platform.f, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final com.vungle.ads.internal.platform.f invoke() {
                    return ServiceLocator.d.a(context).getService(com.vungle.ads.internal.platform.f.class);
                }
            });
            x xVar = new x(advertisement, placement, ((com.vungle.ads.internal.executor.d) a(lazy)).f(), c(lazy2));
            xVar.a(eVarA);
            r rVar = new r(jVar, advertisement, placement, xVar, ((com.vungle.ads.internal.executor.d) a(lazy)).d(), eVarA, c(lazy2));
            rVar.a(aVar);
            this.f = rVar;
            String watermark$vungle_ads_release = adConfig.getWatermark$vungle_ads_release();
            if (watermark$vungle_ads_release != null) {
                this.g = new y(context, watermark$vungle_ads_release);
            }
        } catch (InstantiationException e) {
            aVar.a(new AdCantPlayWithoutWebView(null, 1, null).setLogEntry$vungle_ads_release(this.b.q()).logError$vungle_ads_release(), this.a.b());
            throw e;
        }
    }

    public static final com.vungle.ads.internal.executor.a a(Lazy lazy) {
        return (com.vungle.ads.internal.executor.a) lazy.getValue();
    }

    public static final void access$checkHardwareAcceleration(BannerView bannerView) {
        bannerView.getClass();
        boolean z = v.a;
        StringBuilder sbA = l.a("hardwareAccelerated = ");
        sbA.append(bannerView.isHardwareAccelerated());
        u.c("BannerView", sbA.toString());
        if (bannerView.isHardwareAccelerated()) {
            return;
        }
        AnalyticsClient.a(AnalyticsClient.INSTANCE, Sdk.SDKMetric.SDKMetricType.HARDWARE_ACCELERATE_DISABLED, 0L, bannerView.b.h, null, 10);
    }

    public static final void access$logViewVisibleOnPlay(BannerView bannerView) throws Throwable {
        long j = bannerView.k.get() ? 3L : 2L;
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        j2 j2Var = new j2(Sdk.SDKMetric.SDKMetricType.AD_VISIBILITY);
        j2Var.c = Long.valueOf(j);
        AnalyticsClient.a(analyticsClient, j2Var, bannerView.b.h, 4);
        boolean z = v.a;
        u.a("BannerView", "Log metric AD_VISIBILITY: " + j);
    }

    public static final d b(Lazy lazy) {
        return (d) lazy.getValue();
    }

    public static final com.vungle.ads.internal.platform.f c(Lazy lazy) {
        return (com.vungle.ads.internal.platform.f) lazy.getValue();
    }

    private final c1 getImpressionTracker() {
        return (c1) this.l.getValue();
    }

    private final void setAdVisibility(boolean z) {
        r rVar;
        if (!this.h || this.i.get() || (rVar = this.f) == null) {
            return;
        }
        rVar.d.b(z);
    }

    public final void finishAdInternal(boolean z) {
        if (this.i.get()) {
            return;
        }
        this.i.set(true);
        int i = (z ? 4 : 0) | 2;
        r rVar = this.f;
        if (rVar != null) {
            boolean z2 = v.a;
            u.a("MRAIDPresenter", "stop()");
            rVar.a.b();
            rVar.d.b(false);
        }
        r rVar2 = this.f;
        if (rVar2 != null) {
            rVar2.a(i);
        }
        getImpressionTracker().a();
        try {
            ViewParent parent = getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(this);
            }
            removeAllViews();
        } catch (Exception e) {
            boolean z3 = v.a;
            u.a("BannerView", "Removing webView error: " + e);
        }
    }

    public final i0 getAdvertisement() {
        return this.b;
    }

    public final j3 getPlacement() {
        return this.a;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        boolean z = v.a;
        u.a("BannerView", "onAttachedToWindow()");
        if (!this.j.getAndSet(true)) {
            r rVar = this.f;
            if (rVar != null) {
                rVar.h();
            }
            getImpressionTracker().a(this, new z0() { // from class: com.vungle.ads.BannerView.onAttachedToWindow.1
                @Override // com.vungle.ads.internal.z0
                public void onImpression(View view) throws Throwable {
                    boolean z2 = v.a;
                    u.a("BannerView", "ImpressionTracker checked the banner view become visible.");
                    BannerView.this.h = true;
                    BannerView.access$logViewVisibleOnPlay(BannerView.this);
                    BannerView.access$checkHardwareAcceleration(BannerView.this);
                    r rVar2 = BannerView.this.f;
                    if (rVar2 != null) {
                        u.a("MRAIDPresenter", "start()");
                        rVar2.a.d();
                        rVar2.d.b(true);
                    }
                }

                @Override // com.vungle.ads.internal.z0
                public void onViewInvisible(View view) throws Throwable {
                    if (BannerView.this.k.getAndSet(true)) {
                        return;
                    }
                    boolean z2 = v.a;
                    u.a("BannerView", "ImpressionTracker checked the banner view invisible on play.");
                    AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
                    j2 j2Var = new j2(Sdk.SDKMetric.SDKMetricType.AD_VISIBILITY);
                    j2Var.c = 1L;
                    AnalyticsClient.a(analyticsClient, j2Var, BannerView.this.getAdvertisement().h, 4);
                }
            });
        }
        j jVar = this.e;
        if (jVar != null && !Intrinsics.areEqual(jVar.getParent(), this)) {
            addView(this.e, this.c, this.d);
            y yVar = this.g;
            if (yVar != null) {
                addView(yVar, this.c, this.d);
                y yVar2 = this.g;
                if (yVar2 != null) {
                    yVar2.bringToFront();
                }
            }
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = this.d;
            layoutParams.width = this.c;
            requestLayout();
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        setAdVisibility(i == 0);
    }
}
