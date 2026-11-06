package com.ironsource;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.model.NetworkSettings;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.q3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3795q3 implements InterfaceC3574e1 {
    private final S3 a;
    private final Nd b;
    private final IronSource.a c;

    /* JADX INFO: renamed from: com.ironsource.q3$a */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[IronSource.a.values().length];
            try {
                iArr[IronSource.a.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IronSource.a.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IronSource.a.REWARDED_VIDEO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    public C3795q3(S3 adFormatConfigurations, Nd nd, IronSource.a adFormat) {
        Intrinsics.checkNotNullParameter(adFormatConfigurations, "adFormatConfigurations");
        Intrinsics.checkNotNullParameter(adFormat, "adFormat");
        this.a = adFormatConfigurations;
        this.b = nd;
        this.c = adFormat;
    }

    @Override // com.ironsource.InterfaceC3574e1
    public InterfaceC3892v9 a(Jd providerName) {
        NetworkSettings networkSettingsB;
        C3659ie c3659ieF;
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        Nd nd = this.b;
        if (nd == null || (networkSettingsB = nd.b(providerName.value())) == null) {
            return null;
        }
        int i = a.a[this.c.ordinal()];
        if (i == 1) {
            C3521b3 c3521b3C = this.a.c();
            if (c3521b3C != null) {
                return new C3612g3(new C3537c1(networkSettingsB, networkSettingsB.getBannerSettings(), this.c), c3521b3C);
            }
            return null;
        }
        if (i != 2) {
            if (i == 3 && (c3659ieF = this.a.f()) != null) {
                return new Zd(new C3537c1(networkSettingsB, networkSettingsB.getRewardedVideoSettings(), this.c), c3659ieF);
            }
            return null;
        }
        L9 l9D = this.a.d();
        if (l9D != null) {
            return new O9(new C3537c1(networkSettingsB, networkSettingsB.getInterstitialSettings(), this.c), l9D);
        }
        return null;
    }
}
