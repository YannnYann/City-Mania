package com.ironsource;

import android.content.Context;
import android.os.Handler;
import com.ironsource.V8;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.testSuite.TestSuiteActivity;
import com.unity3d.mediation.banner.LevelPlayBannerAdView;
import com.unity3d.mediation.interstitial.LevelPlayInterstitialAd;
import com.unity3d.mediation.rewarded.LevelPlayRewardedAd;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Lf {
    private final V8.a a;
    private final WeakReference<TestSuiteActivity> b;
    private final Handler c;
    private final AtomicReference<LevelPlayBannerAdView> d;
    private final AtomicReference<LevelPlayInterstitialAd> e;
    private final AtomicReference<LevelPlayRewardedAd> f;

    public Lf(TestSuiteActivity activity, Handler handler) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.a = Pb.w.a().d();
        this.b = new WeakReference<>(activity);
        this.c = handler;
        this.d = new AtomicReference<>();
        this.e = new AtomicReference<>();
        this.f = new AtomicReference<>();
    }

    public final void a(Tf loadAdConfig, String description, int i, int i2) {
        Intrinsics.checkNotNullParameter(loadAdConfig, "loadAdConfig");
        Intrinsics.checkNotNullParameter(description, "description");
        a();
        TestSuiteActivity testSuiteActivityB = b();
        if (testSuiteActivityB == null) {
            return;
        }
        this.a.a(loadAdConfig);
        a(loadAdConfig);
        LevelPlayBannerAdView.Config configBuild = new LevelPlayBannerAdView.Config.Builder().setAdSize(Wf.a.b(description, i, i2)).build();
        AtomicReference<LevelPlayBannerAdView> atomicReference = this.d;
        String strB = loadAdConfig.b();
        if (strB == null) {
            strB = "";
        }
        LevelPlayBannerAdView levelPlayBannerAdView = new LevelPlayBannerAdView(testSuiteActivityB, strB, configBuild);
        levelPlayBannerAdView.setBannerListener(new Mf());
        levelPlayBannerAdView.pauseAutoRefresh();
        levelPlayBannerAdView.loadAd();
        atomicReference.set(levelPlayBannerAdView);
    }

    public final void b(Tf loadAdConfig) {
        Intrinsics.checkNotNullParameter(loadAdConfig, "loadAdConfig");
        this.a.a(loadAdConfig);
        a(loadAdConfig);
        AtomicReference<LevelPlayInterstitialAd> atomicReference = this.e;
        String strB = loadAdConfig.b();
        if (strB == null) {
            strB = "";
        }
        LevelPlayInterstitialAd levelPlayInterstitialAd = new LevelPlayInterstitialAd(strB);
        levelPlayInterstitialAd.setListener(new Qf());
        levelPlayInterstitialAd.loadAd();
        atomicReference.set(levelPlayInterstitialAd);
    }

    public final boolean c() {
        LevelPlayInterstitialAd levelPlayInterstitialAd = this.e.get();
        if (levelPlayInterstitialAd != null) {
            return levelPlayInterstitialAd.isAdReady();
        }
        return false;
    }

    public final boolean d() {
        LevelPlayRewardedAd levelPlayRewardedAd = this.f.get();
        if (levelPlayRewardedAd != null) {
            return levelPlayRewardedAd.isAdReady();
        }
        return false;
    }

    public final void e() {
        TestSuiteActivity testSuiteActivityB = b();
        if (testSuiteActivityB == null) {
            return;
        }
        LevelPlayInterstitialAd.showAd$default(this.e.get(), testSuiteActivityB, null, 2, null);
    }

    public final void f() {
        TestSuiteActivity testSuiteActivityB = b();
        if (testSuiteActivityB == null) {
            return;
        }
        LevelPlayRewardedAd.showAd$default(this.f.get(), testSuiteActivityB, null, 2, null);
    }

    public final void c(Tf loadAdConfig) {
        Intrinsics.checkNotNullParameter(loadAdConfig, "loadAdConfig");
        this.a.a(loadAdConfig);
        a(loadAdConfig);
        AtomicReference<LevelPlayRewardedAd> atomicReference = this.f;
        String strB = loadAdConfig.b();
        if (strB == null) {
            strB = "";
        }
        LevelPlayRewardedAd levelPlayRewardedAd = new LevelPlayRewardedAd(strB);
        levelPlayRewardedAd.setListener(new Zf());
        levelPlayRewardedAd.loadAd();
        atomicReference.set(levelPlayRewardedAd);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(TestSuiteActivity testSuiteActivity, LevelPlayBannerAdView levelPlayBannerAdView) {
        testSuiteActivity.getContainer().removeView(levelPlayBannerAdView);
    }

    private final TestSuiteActivity b() {
        return this.b.get();
    }

    public final void a(double d) {
        final LevelPlayBannerAdView levelPlayBannerAdView;
        final TestSuiteActivity testSuiteActivityB = b();
        if (testSuiteActivityB == null || (levelPlayBannerAdView = this.d.get()) == null || levelPlayBannerAdView.getParent() != null) {
            return;
        }
        this.c.post(new Runnable() { // from class: com.ironsource.Lf$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Lf.a(testSuiteActivityB, levelPlayBannerAdView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(TestSuiteActivity testSuiteActivity, LevelPlayBannerAdView levelPlayBannerAdView) {
        testSuiteActivity.getContainer().addView(levelPlayBannerAdView, C3534bg.a.a((Context) testSuiteActivity));
    }

    public final void a() {
        final LevelPlayBannerAdView andSet;
        final TestSuiteActivity testSuiteActivityB = b();
        if (testSuiteActivityB == null || (andSet = this.d.getAndSet(null)) == null) {
            return;
        }
        andSet.destroy();
        this.c.post(new Runnable() { // from class: com.ironsource.Lf$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                Lf.b(testSuiteActivityB, andSet);
            }
        });
    }

    private final void a(Tf tf) {
        String strA = tf.a();
        if (strA != null) {
            com.ironsource.mediationsdk.c.c().a(tf.c(), strA);
        } else {
            IronLog.INTERNAL.verbose("applyTestMode: adNetworkName is null");
        }
    }
}
