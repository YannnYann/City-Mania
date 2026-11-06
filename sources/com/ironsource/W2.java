package com.ironsource;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.ironsource.C3735n1;
import com.ironsource.InterfaceC3681k1;
import com.ironsource.Q8;
import com.ironsource.mediationsdk.IronSource;
import com.unity3d.ironsourceads.banner.BannerAdInfo;
import com.vungle.ads.internal.protos.Sdk;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class W2 implements N2 {
    private final R9 a;
    private final C3688k8 b;
    private final C3611g2 c;
    private final InterfaceC3810r1 d;
    private final InterfaceC3821rc e;
    private final InterfaceC3643hg f;
    private final Q8 g;
    private final Q8.a h;
    private final boolean i;
    private BannerAdInfo j;
    private WeakReference<X2> k;
    private View.OnAttachStateChangeListener l;
    private WeakReference<FrameLayout> m;

    public static final class a implements View.OnAttachStateChangeListener {
        public a() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View v) {
            Intrinsics.checkNotNullParameter(v, "v");
            C3653i8 size = W2.this.d().getSize();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(size.c(), size.a(), 17);
            if (W2.this.i) {
                ViewParent parent = W2.this.d().getParent();
                ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                if (viewGroup != null) {
                    viewGroup.removeView(W2.this.d());
                }
            }
            ((FrameLayout) v).addView(W2.this.d(), 0, layoutParams);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View v) {
            Intrinsics.checkNotNullParameter(v, "v");
            ((FrameLayout) v).removeAllViews();
        }
    }

    public W2(R9 adInstance, C3688k8 container, C3611g2 auctionDataReporter, InterfaceC3810r1 analytics, InterfaceC3821rc networkDestroyAPI, InterfaceC3643hg threadManager, Q8 sessionDepthService, Q8.a sessionDepthServiceEditor, D7 epService) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        Intrinsics.checkNotNullParameter(container, "container");
        Intrinsics.checkNotNullParameter(auctionDataReporter, "auctionDataReporter");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(networkDestroyAPI, "networkDestroyAPI");
        Intrinsics.checkNotNullParameter(threadManager, "threadManager");
        Intrinsics.checkNotNullParameter(sessionDepthService, "sessionDepthService");
        Intrinsics.checkNotNullParameter(sessionDepthServiceEditor, "sessionDepthServiceEditor");
        Intrinsics.checkNotNullParameter(epService, "epService");
        this.a = adInstance;
        this.b = container;
        this.c = auctionDataReporter;
        this.d = analytics;
        this.e = networkDestroyAPI;
        this.f = threadManager;
        this.g = sessionDepthService;
        this.h = sessionDepthServiceEditor;
        this.i = epService.o();
        String strF = adInstance.f();
        Intrinsics.checkNotNullExpressionValue(strF, "getInstanceId(...)");
        String strE = adInstance.e();
        Intrinsics.checkNotNullExpressionValue(strE, "getId(...)");
        this.j = new BannerAdInfo(strF, strE);
        this.k = new WeakReference<>(null);
        this.m = new WeakReference<>(null);
        Qc qc = new Qc();
        adInstance.a(qc);
        qc.a(this);
    }

    public final void b(WeakReference<FrameLayout> value) {
        FrameLayout frameLayout;
        Intrinsics.checkNotNullParameter(value, "value");
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.l;
        if (onAttachStateChangeListener != null && (frameLayout = this.m.get()) != null) {
            frameLayout.removeOnAttachStateChangeListener(onAttachStateChangeListener);
        }
        this.m = value;
        a aVarA = a();
        this.l = aVarA;
        FrameLayout frameLayout2 = value.get();
        if (frameLayout2 != null) {
            frameLayout2.addOnAttachStateChangeListener(aVarA);
        }
    }

    public final BannerAdInfo c() {
        return this.j;
    }

    public final C3688k8 d() {
        return this.b;
    }

    public final WeakReference<X2> e() {
        return this.k;
    }

    public final WeakReference<FrameLayout> f() {
        return this.m;
    }

    public final void finalize() {
        b();
    }

    @Override // com.ironsource.N2
    public void onBannerClick() {
        InterfaceC3681k1.a.a.a().a(this.d);
        this.f.a(new Runnable() { // from class: com.ironsource.W2$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                W2.c(this.f$0);
            }
        });
    }

    @Override // com.ironsource.N2
    public void onBannerShowSuccess() {
        Q8 q8 = this.g;
        IronSource.a aVar = IronSource.a.BANNER;
        InterfaceC3681k1.a.a.f(new C3735n1.w(q8.a(aVar))).a(this.d);
        this.h.b(aVar);
        this.c.b("onBannerShowSuccess");
        this.f.a(new Runnable() { // from class: com.ironsource.W2$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                W2.d(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(W2 w2) {
        X2 x2 = w2.k.get();
        if (x2 != null) {
            x2.onBannerAdClicked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(W2 w2) {
        X2 x2 = w2.k.get();
        if (x2 != null) {
            x2.onBannerAdShown();
        }
    }

    public final void a(BannerAdInfo bannerAdInfo) {
        Intrinsics.checkNotNullParameter(bannerAdInfo, "<set-?>");
        this.j = bannerAdInfo;
    }

    public final void a(WeakReference<X2> weakReference) {
        Intrinsics.checkNotNullParameter(weakReference, "<set-?>");
        this.k = weakReference;
    }

    private final a a() {
        return new a();
    }

    public final void b() {
        InterfaceC3643hg.a(this.f, new Runnable() { // from class: com.ironsource.W2$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                W2.b(this.f$0);
            }
        }, 0L, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(W2 w2) {
        InterfaceC3681k1.d.a.b().a(w2.d);
        w2.e.a(w2.a);
    }

    public /* synthetic */ W2(R9 r9, C3688k8 c3688k8, C3611g2 c3611g2, InterfaceC3810r1 interfaceC3810r1, InterfaceC3821rc interfaceC3821rc, InterfaceC3643hg interfaceC3643hg, Q8 q8, Q8.a aVar, D7 d7, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(r9, c3688k8, c3611g2, interfaceC3810r1, (i & 16) != 0 ? new C3839sc() : interfaceC3821rc, (i & 32) != 0 ? V7.a : interfaceC3643hg, (i & 64) != 0 ? Pb.w.d().s() : q8, (i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0 ? Pb.w.a().i() : aVar, (i & 256) != 0 ? Pb.w.d().h() : d7);
    }
}
