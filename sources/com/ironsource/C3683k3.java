package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.sdk.utils.SDKUtils;
import com.unity3d.ironsourceads.AdSize;
import com.unity3d.ironsourceads.banner.BannerAdLoaderListener;
import com.unity3d.ironsourceads.banner.BannerAdRequest;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.k3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3683k3 implements Jb {
    private final BannerAdRequest a;
    private final BannerAdLoaderListener b;
    private final InterfaceC3574e1 c;
    private final InterfaceC3793q1 d;

    public C3683k3(BannerAdRequest adRequest, BannerAdLoaderListener publisherListener, InterfaceC3574e1 adapterConfigProvider, InterfaceC3793q1 analyticsFactory) {
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
        IronSourceError ironSourceErrorA;
        String instanceId = this.a.getInstanceId();
        String sDKVersion = SDKUtils.getSDKVersion();
        Intrinsics.checkNotNullExpressionValue(sDKVersion, "getSDKVersion(...)");
        InterfaceC3810r1 interfaceC3810r1A = this.d.a(new C3699l1(sDKVersion, instanceId, IronSource.a.BANNER, false, false, false, 56, null));
        try {
            Hb hbA = new Ib(this.a.getAdm(), this.a.getProviderName$mediationsdk_release(), this.c, C3786pc.e.a().c().get()).a();
            new C3648i3(hbA, this.a.getSize()).a();
            Bc bc = new Bc();
            C3903w2 c3903w2 = new C3903w2(this.a.getAdm(), this.a.getProviderName$mediationsdk_release());
            BannerAdRequest bannerAdRequest = this.a;
            AdSize size = bannerAdRequest.getSize();
            Intrinsics.checkNotNull(hbA);
            V7 v7 = V7.a;
            return new C3630h3(bannerAdRequest, size, c3903w2, hbA, bc, interfaceC3810r1A, new C3665j3(v7, this.b), new P2(interfaceC3810r1A, v7.e()), null, null, 768, null);
        } catch (Exception e) {
            C3813r4.d().a(e);
            if (e instanceof C3897ve) {
                ironSourceErrorA = ((C3897ve) e).a();
            } else {
                C3960z5 c3960z5 = C3960z5.a;
                String message = e.getMessage();
                if (message == null) {
                    message = "Unknown error";
                }
                ironSourceErrorA = c3960z5.a(message);
            }
            return new C3942y5(ironSourceErrorA, new C3665j3(V7.a, this.b), interfaceC3810r1A);
        }
    }

    public /* synthetic */ C3683k3(BannerAdRequest bannerAdRequest, BannerAdLoaderListener bannerAdLoaderListener, InterfaceC3574e1 interfaceC3574e1, InterfaceC3793q1 interfaceC3793q1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(bannerAdRequest, bannerAdLoaderListener, interfaceC3574e1, (i & 8) != 0 ? new C3771p1(IronSource.a.BANNER) : interfaceC3793q1);
    }
}
