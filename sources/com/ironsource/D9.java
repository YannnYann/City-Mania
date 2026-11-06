package com.ironsource;

import android.app.Activity;
import com.ironsource.C3735n1;
import com.ironsource.InterfaceC3681k1;
import com.ironsource.Q8;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.ironsourceads.interstitial.InterstitialAdInfo;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class D9 implements InterfaceC3633h6 {
    private R9 a;
    private InterfaceC3518b0 b;
    private InterfaceC3629h2 c;
    private InterfaceC3810r1 d;
    private InterfaceC3821rc e;
    private InterfaceC3643hg f;
    private Q8 g;
    private Q8.a h;
    private final Map<String, D9> i;
    private InterstitialAdInfo j;
    private E9 k;

    public D9(R9 adInstance, InterfaceC3518b0 adNetworkShow, InterfaceC3629h2 auctionDataReporter, InterfaceC3810r1 analytics, InterfaceC3821rc networkDestroyAPI, InterfaceC3643hg threadManager, Q8 sessionDepthService, Q8.a sessionDepthServiceEditor, Map<String, D9> retainer) {
        Intrinsics.checkNotNullParameter(adInstance, "adInstance");
        Intrinsics.checkNotNullParameter(adNetworkShow, "adNetworkShow");
        Intrinsics.checkNotNullParameter(auctionDataReporter, "auctionDataReporter");
        Intrinsics.checkNotNullParameter(analytics, "analytics");
        Intrinsics.checkNotNullParameter(networkDestroyAPI, "networkDestroyAPI");
        Intrinsics.checkNotNullParameter(threadManager, "threadManager");
        Intrinsics.checkNotNullParameter(sessionDepthService, "sessionDepthService");
        Intrinsics.checkNotNullParameter(sessionDepthServiceEditor, "sessionDepthServiceEditor");
        Intrinsics.checkNotNullParameter(retainer, "retainer");
        this.a = adInstance;
        this.b = adNetworkShow;
        this.c = auctionDataReporter;
        this.d = analytics;
        this.e = networkDestroyAPI;
        this.f = threadManager;
        this.g = sessionDepthService;
        this.h = sessionDepthServiceEditor;
        this.i = retainer;
        String strF = adInstance.f();
        Intrinsics.checkNotNullExpressionValue(strF, "getInstanceId(...)");
        String strE = this.a.e();
        Intrinsics.checkNotNullExpressionValue(strE, "getId(...)");
        this.j = new InterstitialAdInfo(strF, strE);
        C3597f6 c3597f6 = new C3597f6();
        this.a.a(c3597f6);
        c3597f6.a(this);
    }

    public final void a(InterstitialAdInfo interstitialAdInfo) {
        Intrinsics.checkNotNullParameter(interstitialAdInfo, "<set-?>");
        this.j = interstitialAdInfo;
    }

    public final InterstitialAdInfo b() {
        return this.j;
    }

    public final E9 c() {
        return this.k;
    }

    public final boolean d() {
        boolean zA = this.b.a(this.a);
        InterfaceC3681k1.a.a.a(zA).a(this.d);
        return zA;
    }

    public final void finalize() {
        a();
    }

    @Override // com.ironsource.InterfaceC3633h6
    public void onAdInstanceDidBecomeVisible() {
        InterfaceC3681k1.a.a.f(new InterfaceC3753o1[0]).a(this.d);
    }

    @Override // com.ironsource.InterfaceC3633h6
    public void onAdInstanceDidClick() {
        InterfaceC3681k1.a.a.a().a(this.d);
        this.f.a(new Runnable() { // from class: com.ironsource.D9$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                D9.b(this.f$0);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3633h6
    public void onAdInstanceDidDismiss() {
        this.i.remove(this.j.getAdId());
        InterfaceC3681k1.a.a.a(new InterfaceC3753o1[0]).a(this.d);
        this.f.a(new Runnable() { // from class: com.ironsource.D9$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                D9.c(this.f$0);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3633h6
    public void onAdInstanceDidReward(String str, int i) {
    }

    @Override // com.ironsource.InterfaceC3633h6
    public void onAdInstanceDidShow() {
        Q8 q8 = this.g;
        IronSource.a aVar = IronSource.a.INTERSTITIAL;
        InterfaceC3681k1.a.a.b(new C3735n1.w(q8.a(aVar))).a(this.d);
        this.h.b(aVar);
        this.c.b("onAdInstanceDidShow");
        this.f.a(new Runnable() { // from class: com.ironsource.D9$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                D9.d(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(D9 d9) {
        E9 e9 = d9.k;
        if (e9 != null) {
            e9.onAdInstanceDidClick();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(D9 d9) {
        E9 e9 = d9.k;
        if (e9 != null) {
            e9.onAdInstanceDidDismiss();
        }
    }

    public final void a(E9 e9) {
        this.k = e9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(D9 d9) {
        E9 e9 = d9.k;
        if (e9 != null) {
            e9.onAdInstanceDidShow();
        }
    }

    public final void a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.i.put(this.j.getAdId(), this);
        if (!this.b.a(this.a)) {
            a(C3960z5.a.t());
        } else {
            InterfaceC3681k1.a.a.d(new InterfaceC3753o1[0]).a(this.d);
            this.b.a(activity, this.a);
        }
    }

    @Override // com.ironsource.InterfaceC3633h6
    public void a(String str) {
        a(C3960z5.a.c(new IronSourceError(0, str)));
    }

    private final void a(final IronSourceError ironSourceError) {
        this.i.remove(this.j.getAdId());
        InterfaceC3681k1.a.a.a(new C3735n1.j(ironSourceError.getErrorCode()), new C3735n1.k(ironSourceError.getErrorMessage())).a(this.d);
        this.f.a(new Runnable() { // from class: com.ironsource.D9$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                D9.a(this.f$0, ironSourceError);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(D9 d9, IronSourceError ironSourceError) {
        E9 e9 = d9.k;
        if (e9 != null) {
            e9.onAdInstanceDidFailedToShow(ironSourceError);
        }
    }

    public final void a() {
        InterfaceC3643hg.a(this.f, new Runnable() { // from class: com.ironsource.D9$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                D9.a(this.f$0);
            }
        }, 0L, 2, null);
    }

    public /* synthetic */ D9(R9 r9, InterfaceC3518b0 interfaceC3518b0, InterfaceC3629h2 interfaceC3629h2, InterfaceC3810r1 interfaceC3810r1, InterfaceC3821rc interfaceC3821rc, InterfaceC3643hg interfaceC3643hg, Q8 q8, Q8.a aVar, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(r9, interfaceC3518b0, interfaceC3629h2, interfaceC3810r1, (i & 16) != 0 ? new C3839sc() : interfaceC3821rc, (i & 32) != 0 ? V7.a : interfaceC3643hg, (i & 64) != 0 ? Pb.w.d().s() : q8, (i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0 ? Pb.w.a().i() : aVar, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(D9 d9) {
        InterfaceC3681k1.d.a.b().a(d9.d);
        d9.e.a(d9.a);
    }
}
