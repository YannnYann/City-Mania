package com.ironsource;

import android.app.Activity;
import com.ironsource.C3547cb;
import com.ironsource.mediationsdk.logger.IronLog;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.impression.LevelPlayImpressionDataListener;
import com.unity3d.mediation.rewarded.LevelPlayReward;
import com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.rb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3820rb {
    private final C3547cb a;

    /* JADX INFO: renamed from: com.ironsource.rb$a */
    public static final class a implements InterfaceC3937y0 {
        final /* synthetic */ M7 a;

        public a(M7 m7) {
            this.a = m7;
        }

        @Override // com.ironsource.InterfaceC3937y0
        public AbstractC3919x0 a(boolean z, C3609g0 adProperties) {
            Intrinsics.checkNotNullParameter(adProperties, "adProperties");
            return C3623ge.A.a(adProperties, this.a.f().a(), z);
        }
    }

    public C3820rb(String adUnitId, C3547cb.b config, C3770p0 adTools, C3668j6 adControllerFactory, M7 provider, InterfaceC3851t4 currentTimeProvider, C3962z7 idFactory, X0 adUnitValidator) {
        Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(adTools, "adTools");
        Intrinsics.checkNotNullParameter(adControllerFactory, "adControllerFactory");
        Intrinsics.checkNotNullParameter(provider, "provider");
        Intrinsics.checkNotNullParameter(currentTimeProvider, "currentTimeProvider");
        Intrinsics.checkNotNullParameter(idFactory, "idFactory");
        Intrinsics.checkNotNullParameter(adUnitValidator, "adUnitValidator");
        this.a = new C3547cb(LevelPlay.AdFormat.REWARDED, adUnitId, config, adTools, adControllerFactory, adUnitValidator, a(provider), provider, currentTimeProvider, idFactory);
    }

    public final String a() {
        String string = this.a.e().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public final boolean b() {
        IronLog.API.info("LevelPlayRewardedAd.isAdReady()");
        return this.a.m();
    }

    public final void c() {
        IronLog.API.info("LevelPlayRewardedAd.loadAd()");
        this.a.n();
    }

    public final void a(Activity activity, String str) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        IronLog.API.info("LevelPlayRewardedAd.showAd() placementName: " + str);
        this.a.a(activity, str);
    }

    public final void a(LevelPlayRewardedAdListener levelPlayRewardedAdListener) {
        IronLog.API.info("LevelPlayRewardedAd.setListener()");
        this.a.a(levelPlayRewardedAdListener != null ? C3838sb.b(levelPlayRewardedAdListener) : null);
    }

    public final void a(LevelPlayImpressionDataListener levelPlayImpressionDataListener) {
        IronLog.API.info("LevelPlayRewardedAd.setImpressionDataListener()");
        this.a.a(levelPlayImpressionDataListener);
    }

    public final LevelPlayReward a(String str) {
        IronLog.API.info("LevelPlayRewardedAd.getReward()");
        return this.a.a(str);
    }

    private final a a(M7 m7) {
        return new a(m7);
    }
}
