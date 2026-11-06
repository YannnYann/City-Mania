package com.ironsource;

import android.app.Activity;
import com.ironsource.InterfaceC3961z6;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.rewarded.LevelPlayReward;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.i6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
@InterfaceC3930xb
public final class C3651i6 implements InterfaceC3925x6, InterfaceC3943y6 {
    private final InterfaceC3686k6 a;
    private final C3609g0 b;
    private final InterfaceC3961z6 c;

    public C3651i6(InterfaceC3686k6 listener, C3770p0 adTools, C3609g0 adProperties, InterfaceC3961z6.b adUnitStrategyFactory, InterfaceC3889v6 fullscreenAdUnitFactory) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adProperties, "adProperties");
        Intrinsics.checkNotNullParameter(adUnitStrategyFactory, "adUnitStrategyFactory");
        Intrinsics.checkNotNullParameter(fullscreenAdUnitFactory, "fullscreenAdUnitFactory");
        this.a = listener;
        this.b = adProperties;
        this.c = adUnitStrategyFactory.a(adTools, adTools.b(adProperties.e(), adProperties.c()), fullscreenAdUnitFactory, this, this);
    }

    public final void a(Activity activity, C3729md c3729md) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.b.a(c3729md);
        this.c.a(activity);
    }

    public final void b() {
        this.c.loadAd();
    }

    @Override // com.ironsource.InterfaceC3943y6
    public void c(IronSourceError ironSourceError) {
        InterfaceC3686k6 interfaceC3686k6 = this.a;
        String string = this.b.b().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        interfaceC3686k6.a(new LevelPlayAdError(ironSourceError, string, this.b.c()));
    }

    @Override // com.ironsource.J0
    public void e() {
        this.a.onAdClicked();
    }

    @Override // com.ironsource.InterfaceC3943y6
    public void onAdInfoChanged(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.onAdInfoChanged(adInfo);
    }

    @Override // com.ironsource.InterfaceC3925x6
    public void onClosed() {
        this.a.onAdClosed();
    }

    @Override // com.ironsource.InterfaceC3943y6
    public void b(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.onAdLoaded(adInfo);
    }

    @Override // com.ironsource.InterfaceC3943y6
    public void a(LevelPlayAdInfo adInfo) {
        Intrinsics.checkNotNullParameter(adInfo, "adInfo");
        this.a.onAdDisplayed(adInfo);
    }

    @Override // com.ironsource.InterfaceC3943y6
    public void b(IronSourceError ironSourceError) {
        InterfaceC3686k6 interfaceC3686k6 = this.a;
        String string = this.b.b().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        interfaceC3686k6.onAdLoadFailed(new LevelPlayAdError(ironSourceError, string, this.b.c()));
    }

    @Override // com.ironsource.InterfaceC3925x6
    public void a(LevelPlayReward reward) {
        Intrinsics.checkNotNullParameter(reward, "reward");
        this.a.a(reward);
    }

    @Override // com.ironsource.InterfaceC3943y6
    public void a() {
        this.a.a();
    }

    public /* synthetic */ C3651i6(InterfaceC3686k6 interfaceC3686k6, C3770p0 c3770p0, C3609g0 c3609g0, InterfaceC3961z6.b bVar, InterfaceC3889v6 interfaceC3889v6, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(interfaceC3686k6, c3770p0, c3609g0, (i & 8) != 0 ? new InterfaceC3961z6.b() : bVar, interfaceC3889v6);
    }
}
