package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.sdk.utils.SDKUtils;
import com.unity3d.ironsourceads.rewarded.RewardedAdLoaderListener;
import com.unity3d.ironsourceads.rewarded.RewardedAdRequest;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.fe, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3605fe implements Jb {
    private final RewardedAdRequest a;
    private final RewardedAdLoaderListener b;
    private final InterfaceC3574e1 c;
    private final InterfaceC3793q1 d;

    public C3605fe(RewardedAdRequest adRequest, RewardedAdLoaderListener publisherListener, InterfaceC3574e1 adapterConfigProvider, InterfaceC3793q1 analyticsFactory) {
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        Intrinsics.checkNotNullParameter(publisherListener, "publisherListener");
        Intrinsics.checkNotNullParameter(adapterConfigProvider, "adapterConfigProvider");
        Intrinsics.checkNotNullParameter(analyticsFactory, "analyticsFactory");
        this.a = adRequest;
        this.b = publisherListener;
        this.c = adapterConfigProvider;
        this.d = analyticsFactory;
    }

    @Override // com.ironsource.Jb
    public Gb a() throws Exception {
        IronSourceError ironSourceErrorD;
        String instanceId = this.a.getInstanceId();
        String sDKVersion = SDKUtils.getSDKVersion();
        Intrinsics.checkNotNullExpressionValue(sDKVersion, "getSDKVersion(...)");
        InterfaceC3810r1 interfaceC3810r1A = this.d.a(new C3699l1(sDKVersion, instanceId, IronSource.a.REWARDED_VIDEO, false, false, false, 56, null));
        try {
            Hb hbA = new Ib(this.a.getAdm(), this.a.getProviderName$mediationsdk_release(), this.c, C3786pc.e.a().c().get()).a();
            new C3569de(hbA).a();
            Bc bc = new Bc();
            C3903w2 c3903w2 = new C3903w2(this.a.getAdm(), this.a.getProviderName$mediationsdk_release());
            RewardedAdRequest rewardedAdRequest = this.a;
            Intrinsics.checkNotNull(hbA);
            V7 v7 = V7.a;
            return new C3550ce(rewardedAdRequest, hbA, new C3587ee(v7, this.b), c3903w2, bc, interfaceC3810r1A, new Xd(interfaceC3810r1A, v7.e()), null, null, 384, null);
        } catch (Exception e) {
            C3813r4.d().a(e);
            if (e instanceof C3897ve) {
                ironSourceErrorD = ((C3897ve) e).a();
            } else {
                C3960z5 c3960z5 = C3960z5.a;
                String message = e.getMessage();
                if (message == null) {
                    message = "Unknown error";
                }
                ironSourceErrorD = c3960z5.d(message);
            }
            return new B5(this.a, new C3587ee(V7.a, this.b), interfaceC3810r1A, ironSourceErrorD);
        }
    }

    public /* synthetic */ C3605fe(RewardedAdRequest rewardedAdRequest, RewardedAdLoaderListener rewardedAdLoaderListener, InterfaceC3574e1 interfaceC3574e1, InterfaceC3793q1 interfaceC3793q1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(rewardedAdRequest, rewardedAdLoaderListener, interfaceC3574e1, (i & 8) != 0 ? new C3771p1(IronSource.a.REWARDED_VIDEO) : interfaceC3793q1);
    }
}
