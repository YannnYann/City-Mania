package com.ironsource;

import android.app.Activity;
import com.ironsource.C3735n1;
import com.ironsource.InterfaceC3681k1;
import com.ironsource.Q8;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.unity3d.ironsourceads.rewarded.RewardedAdInfo;
import com.vungle.ads.internal.protos.Sdk;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.ae, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3514ae implements InterfaceC3633h6 {
    private R9 a;
    private InterfaceC3518b0 b;
    private InterfaceC3629h2 c;
    private InterfaceC3810r1 d;
    private InterfaceC3821rc e;
    private InterfaceC3643hg f;
    private Q8 g;
    private Q8.a h;
    private final Map<String, C3514ae> i;
    private RewardedAdInfo j;
    private InterfaceC3532be k;

    public C3514ae(R9 adInstance, InterfaceC3518b0 adNetworkShow, InterfaceC3629h2 auctionDataReporter, InterfaceC3810r1 analytics, InterfaceC3821rc networkDestroyAPI, InterfaceC3643hg threadManager, Q8 sessionDepthService, Q8.a sessionDepthServiceEditor, Map<String, C3514ae> retainer) {
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
        this.j = new RewardedAdInfo(strF, strE);
        C3597f6 c3597f6 = new C3597f6();
        this.a.a(c3597f6);
        c3597f6.a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(C3514ae c3514ae) {
        InterfaceC3532be interfaceC3532be = c3514ae.k;
        if (interfaceC3532be != null) {
            interfaceC3532be.onRewardedAdShown();
        }
    }

    public final void a(RewardedAdInfo rewardedAdInfo) {
        Intrinsics.checkNotNullParameter(rewardedAdInfo, "<set-?>");
        this.j = rewardedAdInfo;
    }

    public final RewardedAdInfo b() {
        return this.j;
    }

    public final InterfaceC3532be c() {
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
        this.f.a(new Runnable() { // from class: com.ironsource.ae$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                C3514ae.b(this.f$0);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3633h6
    public void onAdInstanceDidDismiss() {
        this.i.remove(this.j.getAdId());
        InterfaceC3681k1.a.a.a(new InterfaceC3753o1[0]).a(this.d);
        this.f.a(new Runnable() { // from class: com.ironsource.ae$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                C3514ae.c(this.f$0);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3633h6
    public void onAdInstanceDidReward(String str, int i) {
        C3735n1.u uVar = new C3735n1.u("Virtual Item");
        C3735n1.t tVar = new C3735n1.t(1);
        C3735n1.q qVar = new C3735n1.q("DefaultRewardedVideo");
        String strA = IronSourceUtils.a(System.currentTimeMillis(), this.a.g());
        Intrinsics.checkNotNullExpressionValue(strA, "getTransId(...)");
        InterfaceC3681k1.a.a.c(uVar, tVar, qVar, new C3735n1.y(strA)).a(this.d);
        this.f.a(new Runnable() { // from class: com.ironsource.ae$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                C3514ae.d(this.f$0);
            }
        });
    }

    @Override // com.ironsource.InterfaceC3633h6
    public void onAdInstanceDidShow() {
        Q8 q8 = this.g;
        IronSource.a aVar = IronSource.a.REWARDED_VIDEO;
        InterfaceC3681k1.a.a.b(new C3735n1.w(q8.a(aVar))).a(this.d);
        this.h.b(aVar);
        this.c.b("onAdInstanceDidShow");
        this.f.a(new Runnable() { // from class: com.ironsource.ae$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                C3514ae.e(this.f$0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(C3514ae c3514ae) {
        InterfaceC3532be interfaceC3532be = c3514ae.k;
        if (interfaceC3532be != null) {
            interfaceC3532be.onRewardedAdClicked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(C3514ae c3514ae) {
        InterfaceC3532be interfaceC3532be = c3514ae.k;
        if (interfaceC3532be != null) {
            interfaceC3532be.onRewardedAdDismissed();
        }
    }

    public final void a(InterfaceC3532be interfaceC3532be) {
        this.k = interfaceC3532be;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(C3514ae c3514ae) {
        InterfaceC3532be interfaceC3532be = c3514ae.k;
        if (interfaceC3532be != null) {
            interfaceC3532be.onUserEarnedReward();
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
        this.f.a(new Runnable() { // from class: com.ironsource.ae$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3514ae.a(this.f$0, ironSourceError);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3514ae c3514ae, IronSourceError ironSourceError) {
        InterfaceC3532be interfaceC3532be = c3514ae.k;
        if (interfaceC3532be != null) {
            interfaceC3532be.onRewardedAdFailedToShow(ironSourceError);
        }
    }

    public final void a() {
        InterfaceC3643hg.a(this.f, new Runnable() { // from class: com.ironsource.ae$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                C3514ae.a(this.f$0);
            }
        }, 0L, 2, null);
    }

    public /* synthetic */ C3514ae(R9 r9, InterfaceC3518b0 interfaceC3518b0, InterfaceC3629h2 interfaceC3629h2, InterfaceC3810r1 interfaceC3810r1, InterfaceC3821rc interfaceC3821rc, InterfaceC3643hg interfaceC3643hg, Q8 q8, Q8.a aVar, Map map, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(r9, interfaceC3518b0, interfaceC3629h2, interfaceC3810r1, (i & 16) != 0 ? new C3839sc() : interfaceC3821rc, (i & 32) != 0 ? V7.a : interfaceC3643hg, (i & 64) != 0 ? Pb.w.d().s() : q8, (i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0 ? Pb.w.a().i() : aVar, map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(C3514ae c3514ae) {
        InterfaceC3681k1.d.a.b().a(c3514ae.d);
        c3514ae.e.a(c3514ae.a);
    }
}
