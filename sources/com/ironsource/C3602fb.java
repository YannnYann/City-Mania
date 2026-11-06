package com.ironsource;

import android.app.Activity;
import com.ironsource.C3547cb;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.impression.LevelPlayImpressionDataListener;
import com.unity3d.mediation.interstitial.LevelPlayInterstitialAdListener;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.fb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3602fb {
    private final M7 a;
    private final C3547cb b;

    /* JADX INFO: renamed from: com.ironsource.fb$a */
    public static final class a implements InterfaceC3937y0 {
        public a() {
        }

        @Override // com.ironsource.InterfaceC3937y0
        public AbstractC3919x0 a(boolean z, C3609g0 adProperties) {
            Intrinsics.checkNotNullParameter(adProperties, "adProperties");
            return J9.A.a(adProperties, C3602fb.this.a.f().a(), z);
        }
    }

    public C3602fb(String adUnitId, C3547cb.b config, C3770p0 adTools, C3668j6 adControllerFactory, M7 provider, InterfaceC3851t4 currentTimeProvider, C3962z7 idFactory, X0 adUnitValidator) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adControllerFactory, "adControllerFactory");
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        Intrinsics.checkNotNullParameter(idFactory, "idFactory");
        Intrinsics.checkNotNullParameter(adUnitValidator, "adUnitValidator");
        this.a = provider;
        this.b = new C3547cb(LevelPlay.AdFormat.INTERSTITIAL, adUnitId, config, adTools, adControllerFactory, adUnitValidator, a(), provider, currentTimeProvider, idFactory);
    }

    public final String b() {
        String string = this.b.e().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public final boolean c() {
        IronLog.API.info("LevelPlayInterstitialAd.isAdReady()");
        return this.b.m();
    }

    public final void d() {
        IronLog.API.info("LevelPlayInterstitialAd.loadAd()");
        this.b.n();
    }

    public final void a(LevelPlayInterstitialAdListener levelPlayInterstitialAdListener) {
        IronLog.API.info("LevelPlayInterstitialAd.setListener()");
        this.b.a(levelPlayInterstitialAdListener != null ? C3620gb.b(levelPlayInterstitialAdListener) : null);
    }

    public final void a(LevelPlayImpressionDataListener levelPlayImpressionDataListener) {
        IronLog.API.info("LevelPlayInterstitialAd.setImpressionDataListener()");
        this.b.a(levelPlayImpressionDataListener);
    }

    public final void a(Activity activity, String str) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        IronLog.API.info("LevelPlayInterstitialAd.showAd() placementName: " + str);
        this.b.a(activity, str);
    }

    private final InterfaceC3937y0 a() {
        return new a();
    }
}
