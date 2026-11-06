package info.flowersoft.theotown.android;

import com.badlogic.gdx.LifecycleListener;
import com.badlogic.gdx.backends.android.AndroidApplication;
import com.badlogic.gdx.utils.TimeUtils;
import com.google.android.libraries.ads.mobile.sdk.MobileAds;
import com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.FullScreenContentError;
import com.google.android.libraries.ads.mobile.sdk.common.LoadAdError;
import com.google.android.libraries.ads.mobile.sdk.initialization.InitializationConfig;
import com.google.android.libraries.ads.mobile.sdk.rewarded.OnUserEarnedRewardListener;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardItem;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardedAd;
import com.google.android.libraries.ads.mobile.sdk.rewarded.RewardedAdEventCallback;
import com.ironsource.mediationsdk.metadata.a;
import com.unity3d.mediation.LevelPlay;
import com.unity3d.mediation.LevelPlayAdError;
import com.unity3d.mediation.LevelPlayAdInfo;
import com.unity3d.mediation.LevelPlayConfiguration;
import com.unity3d.mediation.LevelPlayInitError;
import com.unity3d.mediation.LevelPlayInitListener;
import com.unity3d.mediation.LevelPlayInitRequest;
import com.unity3d.mediation.rewarded.LevelPlayReward;
import com.unity3d.mediation.rewarded.LevelPlayRewardedAd;
import com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.crossplatform.VideoAdStage;
import info.flowersoft.theotown.resources.MusicBox;
import info.flowersoft.theotown.resources.SoundPlayer;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;

/* JADX INFO: loaded from: classes4.dex */
public class AndroidVideoAdStage extends VideoAdStage {
    public static RewardedAd admobRewardedAd = null;
    public static AndroidApplication application = null;
    public static LevelPlayRewardedAd isRewardedAd = null;
    public static long lastCheckMS = 0;
    public static boolean loadingAdmobAd = false;

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
    }

    public AndroidVideoAdStage(Stapel2DGameContext stapel2DGameContext, String str, VideoAdStage.AdResultHandler adResultHandler) {
        super(stapel2DGameContext, str, adResultHandler);
        isRewardedAd.setListener(new LevelPlayRewardedAdListener() { // from class: info.flowersoft.theotown.android.AndroidVideoAdStage.1
            @Override // com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener
            public void onAdLoaded(LevelPlayAdInfo levelPlayAdInfo) {
                System.out.println(levelPlayAdInfo);
            }

            @Override // com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener
            public void onAdLoadFailed(LevelPlayAdError levelPlayAdError) {
                System.out.println(levelPlayAdError);
            }

            @Override // com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener
            public void onAdDisplayed(LevelPlayAdInfo levelPlayAdInfo) {
                SoundPlayer.getInstance().onPause();
                MusicBox.getInstance().onPause();
            }

            @Override // com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener
            public void onAdRewarded(LevelPlayReward levelPlayReward, LevelPlayAdInfo levelPlayAdInfo) {
                AndroidVideoAdStage.this.handleSuccess();
                AndroidVideoAdStage.this.handler.handle(0);
            }

            @Override // com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener
            public void onAdDisplayFailed(LevelPlayAdError levelPlayAdError, LevelPlayAdInfo levelPlayAdInfo) {
                AndroidVideoAdStage.this.handler.handle(2);
                TheoTown.analytics.logException(new Exception(levelPlayAdError.getErrorMessage()));
            }

            @Override // com.unity3d.mediation.rewarded.LevelPlayRewardedAdListener
            public void onAdClosed(LevelPlayAdInfo levelPlayAdInfo) {
                SoundPlayer.getInstance().onResume();
                MusicBox.getInstance().onResume();
                AndroidVideoAdStage.isRewardedAd.loadAd();
            }
        });
    }

    @Override // info.flowersoft.theotown.util.Loadable
    public boolean isLoaded() {
        if (isRewardedAd.isAdReady()) {
            return true;
        }
        long jMillis = TimeUtils.millis();
        long j = lastCheckMS;
        if (jMillis - j > 5000 || jMillis < j) {
            lastCheckMS = jMillis;
            isRewardedAd.loadAd();
            if (admobRewardedAd == null) {
                loadAdMobAd();
            }
        }
        return admobRewardedAd != null;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        getGameStack().pop();
        handleStart();
        TheoTown.analytics.logEvent("Show ad", this.placement, "");
        if (isRewardedAd.isAdReady()) {
            isRewardedAd.showAd(application, "DefaultRewardedVideo");
            return;
        }
        RewardedAd rewardedAd = admobRewardedAd;
        if (rewardedAd != null) {
            rewardedAd.setAdEventCallback(new RewardedAdEventCallback() { // from class: info.flowersoft.theotown.android.AndroidVideoAdStage.2
                @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
                public void onAdDismissedFullScreenContent() {
                    SoundPlayer.getInstance().onResume();
                    MusicBox.getInstance().onResume();
                    RewardedAd unused = AndroidVideoAdStage.admobRewardedAd = null;
                    AndroidVideoAdStage.loadAdMobAd();
                }

                @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
                public void onAdFailedToShowFullScreenContent(FullScreenContentError fullScreenContentError) {
                    RewardedAd unused = AndroidVideoAdStage.admobRewardedAd = null;
                    AndroidVideoAdStage.loadAdMobAd();
                    AndroidVideoAdStage.this.handler.handle(2);
                    TheoTown.analytics.logException(new Exception(fullScreenContentError.getMessage()));
                }

                @Override // com.google.android.libraries.ads.mobile.sdk.common.AdEventCallback
                public void onAdShowedFullScreenContent() {
                    SoundPlayer.getInstance().onPause();
                    MusicBox.getInstance().onPause();
                }
            });
            application.handler.post(new Runnable() { // from class: info.flowersoft.theotown.android.AndroidVideoAdStage$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidVideoAdStage.$r8$lambda$SCOJwCrhGAQwFeJ6Tv90wzapbAs(this.f$0);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$SCOJwCrhGAQwFeJ6Tv90wzapbAs(AndroidVideoAdStage androidVideoAdStage) {
        androidVideoAdStage.getClass();
        admobRewardedAd.show(application, new OnUserEarnedRewardListener() { // from class: info.flowersoft.theotown.android.AndroidVideoAdStage.3
            @Override // com.google.android.libraries.ads.mobile.sdk.rewarded.OnUserEarnedRewardListener
            public void onUserEarnedReward(RewardItem rewardItem) {
                AndroidVideoAdStage.this.handleSuccess();
                AndroidVideoAdStage.this.handler.handle(0);
            }
        });
    }

    public String toString() {
        return "IronSrc";
    }

    public static void loadAdMobAd() {
        if (loadingAdmobAd) {
            return;
        }
        loadingAdmobAd = true;
        application.runOnUiThread(new Runnable() { // from class: info.flowersoft.theotown.android.AndroidVideoAdStage$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                RewardedAd.load(new AdRequest.Builder(TheoTown.DEBUG ? "ca-app-pub-3940256099942544/5224354917" : "ca-app-pub-7938342441046245/5039975190").build(), new AdLoadCallback<RewardedAd>() { // from class: info.flowersoft.theotown.android.AndroidVideoAdStage.4
                    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback
                    public void onAdFailedToLoad(LoadAdError loadAdError) {
                        System.out.println("AdMob ad not loaded");
                        boolean unused = AndroidVideoAdStage.loadingAdmobAd = false;
                        RewardedAd unused2 = AndroidVideoAdStage.admobRewardedAd = null;
                    }

                    @Override // com.google.android.libraries.ads.mobile.sdk.common.AdLoadCallback
                    public void onAdLoaded(RewardedAd rewardedAd) {
                        System.out.println("AdMob ad loaded");
                        boolean unused = AndroidVideoAdStage.loadingAdmobAd = false;
                        RewardedAd unused2 = AndroidVideoAdStage.admobRewardedAd = rewardedAd;
                    }
                });
            }
        });
    }

    public static VideoAdStage.VideoAdStageFactory getFactory(AndroidApplication androidApplication) throws InterruptedException {
        application = androidApplication;
        MobileAds.initialize(androidApplication, new InitializationConfig.Builder("ca-app-pub-7938342441046245~2012310046").build());
        LevelPlay.setConsent(TheoTown.NOT_CHILD_DIRECTED);
        if (TheoTown.NOT_CHILD_DIRECTED) {
            LevelPlay.setMetaData(a.a, "false");
            LevelPlay.setMetaData(a.b, "false");
            LevelPlay.setMetaData("AdMob_TFCD", "false");
            LevelPlay.setMetaData("AdMob_TFUA", "false");
            LevelPlay.setMetaData("Vungle_coppa", "false");
        }
        if (TheoTown.DEBUG) {
            LevelPlay.setAdaptersDebug(true);
            LevelPlay.validateIntegration(androidApplication);
        }
        LevelPlay.init(androidApplication, new LevelPlayInitRequest.Builder("642cc78d").build(), new LevelPlayInitListener() { // from class: info.flowersoft.theotown.android.AndroidVideoAdStage.5
            @Override // com.unity3d.mediation.LevelPlayInitListener
            public void onInitSuccess(LevelPlayConfiguration levelPlayConfiguration) {
                System.out.println("AdInit success");
                AndroidVideoAdStage.isRewardedAd.loadAd();
            }

            @Override // com.unity3d.mediation.LevelPlayInitListener
            public void onInitFailed(LevelPlayInitError levelPlayInitError) {
                System.err.println(levelPlayInitError);
            }
        });
        androidApplication.addLifecycleListener(new LifecycleListener() { // from class: info.flowersoft.theotown.android.AndroidVideoAdStage.6
            @Override // com.badlogic.gdx.LifecycleListener
            public void dispose() {
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void pause() {
            }

            @Override // com.badlogic.gdx.LifecycleListener
            public void resume() {
                AndroidVideoAdStage.isRewardedAd.loadAd();
                AndroidVideoAdStage.loadAdMobAd();
            }
        });
        isRewardedAd = new LevelPlayRewardedAd("amkl4mik95lu1qas");
        loadAdMobAd();
        return new VideoAdStage.VideoAdStageFactory() { // from class: info.flowersoft.theotown.android.AndroidVideoAdStage$$ExternalSyntheticLambda0
            @Override // info.flowersoft.theotown.crossplatform.VideoAdStage.VideoAdStageFactory
            public final VideoAdStage create(Stapel2DGameContext stapel2DGameContext, String str, VideoAdStage.AdResultHandler adResultHandler) {
                return new AndroidVideoAdStage(stapel2DGameContext, str, adResultHandler);
            }
        };
    }
}
