package com.ironsource;

import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import java.lang.ref.WeakReference;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class Ea extends AbstractC3715m implements V2, Ga {
    private final C3770p0 b;
    private final Q2 c;
    private final C3563d9 d;
    private final WeakReference<H2> e;
    private LevelPlayAdInfo f;
    private final Fa g;

    public Ea(H2 listener, C3770p0 adTools, Q2 bannerAdProperties, C3557d3 bannerViewContainer, C3563d9 impressionDataListenerHolder) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(bannerAdProperties, "bannerAdProperties");
        Intrinsics.checkNotNullParameter(bannerViewContainer, "bannerViewContainer");
        Intrinsics.checkNotNullParameter(impressionDataListenerHolder, "impressionDataListenerHolder");
        this.b = adTools;
        this.c = bannerAdProperties;
        this.d = impressionDataListenerHolder;
        this.e = new WeakReference<>(listener);
        this.f = n();
        this.g = Za.a(Za.a, adTools, bannerViewContainer, adTools.d(bannerAdProperties.c()), this, m(), null, 32, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final S2 a(Ea ea, boolean z) {
        return ea.a(ea.b, ea.c, z);
    }

    private final U2 m() {
        return new U2() { // from class: com.ironsource.Ea$$ExternalSyntheticLambda0
            @Override // com.ironsource.U2
            public final S2 a(boolean z) {
                return Ea.a(this.f$0, z);
            }
        };
    }

    private final LevelPlayAdInfo n() {
        String string = this.c.b().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        String strC = this.c.c();
        String string2 = this.c.a().toString();
        Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
        return new LevelPlayAdInfo(string, strC, string2, null, null, null, null, 120, null);
    }

    public final void b() {
        this.g.b();
    }

    public final void c() {
        this.g.c();
    }

    public final void d() {
        this.g.d();
    }

    @Override // com.ironsource.J0
    public void e() {
        onAdClicked();
    }

    public final void f() {
        this.g.f();
    }

    @Override // com.ironsource.V2
    public /* bridge */ /* synthetic */ Unit g() {
        o();
        return Unit.INSTANCE;
    }

    @Override // com.ironsource.V2
    public /* bridge */ /* synthetic */ Unit h() {
        q();
        return Unit.INSTANCE;
    }

    @Override // com.ironsource.Ga
    public void i() {
        H2 h2 = this.e.get();
        if (h2 != null) {
            h2.a(this.f);
        }
    }

    @Override // com.ironsource.V2
    public /* bridge */ /* synthetic */ Unit j() {
        p();
        return Unit.INSTANCE;
    }

    @Override // com.ironsource.Ga
    public void k() {
        H2 h2 = this.e.get();
        if (h2 != null) {
            h2.c(this.f);
        }
    }

    public void o() {
        onAdLeftApplication();
    }

    @Override // com.ironsource.Ga
    public void onAdClicked() {
        H2 h2 = this.e.get();
        if (h2 != null) {
            h2.d(this.f);
        }
    }

    @Override // com.ironsource.Ga
    public void onAdDisplayed(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.f = adInfo;
        H2 h2 = this.e.get();
        if (h2 != null) {
            h2.b(this.f);
        }
    }

    @Override // com.ironsource.Ga
    public void onAdLeftApplication() {
        H2 h2 = this.e.get();
        if (h2 != null) {
            h2.e(this.f);
        }
    }

    @Override // com.ironsource.Ga
    public void onAdLoaded(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.f = adInfo;
        H2 h2 = this.e.get();
        if (h2 != null) {
            h2.a(adInfo, false);
        }
    }

    public void p() {
        k();
    }

    public void q() {
        i();
    }

    private final S2 a(C3770p0 c3770p0, Q2 q2, boolean z) {
        IronLog.INTERNAL.verbose();
        return new S2(c3770p0, T2.A.a(q2, l().a(), z), this, this.d);
    }

    @Override // com.ironsource.Ga
    public void d(IronSourceError ironSourceError) {
        H2 h2 = this.e.get();
        if (h2 != null) {
            LevelPlayAdInfo levelPlayAdInfo = this.f;
            String string = this.c.b().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            h2.a(levelPlayAdInfo, new LevelPlayAdError(ironSourceError, string, this.c.c()));
        }
    }

    @Override // com.ironsource.Ga
    public void a(IronSourceError ironSourceError) {
        H2 h2 = this.e.get();
        if (h2 != null) {
            String string = this.c.b().toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            h2.a(new LevelPlayAdError(ironSourceError, string, this.c.c()));
        }
    }
}
