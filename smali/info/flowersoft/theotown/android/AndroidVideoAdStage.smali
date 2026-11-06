###### Class info.flowersoft.theotown.android.AndroidVideoAdStage (info.flowersoft.theotown.android.AndroidVideoAdStage)
.class public Linfo/flowersoft/theotown/android/AndroidVideoAdStage;
.super Linfo/flowersoft/theotown/crossplatform/VideoAdStage;
.source "AndroidVideoAdStage.java"


# static fields
.field public static admobRewardedAd:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd; = null

.field public static application:Lcom/badlogic/gdx/backends/android/AndroidApplication; = null

.field public static isRewardedAd:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd; = null

.field public static lastCheckMS:J = 0x0L

.field public static loadingAdmobAd:Z = false


# direct methods
.method public static synthetic $r8$lambda$SCOJwCrhGAQwFeJ6Tv90wzapbAs(Linfo/flowersoft/theotown/android/AndroidVideoAdStage;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    sget-object v0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->admobRewardedAd:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;

    sget-object v1, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    new-instance v2, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$3;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$3;-><init>(Linfo/flowersoft/theotown/android/AndroidVideoAdStage;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/libraries/ads/mobile/sdk/rewarded/OnUserEarnedRewardListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zfem3M3fgufzgSjRxN61s_xvIek()V
    .registers 2

    .line 185
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-eqz v0, :cond_7

    const-string v0, "ca-app-pub-3940256099942544/5224354917"

    goto :goto_9

    :cond_7
    const-string v0, "ca-app-pub-7938342441046245/5039975190"

    .line 186
    :goto_9
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$4;

    invoke-direct {v1}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$4;-><init>()V

    .line 186
    invoke-static {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;->load(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;)V
    .registers 4

    .line 55
    invoke-direct {p0, p1, p2, p3}, Linfo/flowersoft/theotown/crossplatform/VideoAdStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;)V

    .line 57
    sget-object p1, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->isRewardedAd:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    new-instance p2, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$1;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$1;-><init>(Linfo/flowersoft/theotown/android/AndroidVideoAdStage;)V

    invoke-virtual {p1, p2}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->setListener(Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAdListener;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/android/AndroidVideoAdStage;)V
    .registers 1

    .line 37
    invoke-virtual {p0}, Linfo/flowersoft/theotown/crossplatform/VideoAdStage;->handleSuccess()V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/android/AndroidVideoAdStage;)Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;
    .registers 1

    .line 37
    iget-object p0, p0, Linfo/flowersoft/theotown/crossplatform/VideoAdStage;->handler:Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/android/AndroidVideoAdStage;)Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;
    .registers 1

    .line 37
    iget-object p0, p0, Linfo/flowersoft/theotown/crossplatform/VideoAdStage;->handler:Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;

    return-object p0
.end method

.method public static synthetic access$300()Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;
    .registers 1

    .line 37
    sget-object v0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->isRewardedAd:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    return-object v0
.end method

.method public static synthetic access$402(Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;)Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;
    .registers 1

    .line 37
    sput-object p0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->admobRewardedAd:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;

    return-object p0
.end method

.method public static synthetic access$500()V
    .registers 0

    .line 37
    invoke-static {}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->loadAdMobAd()V

    return-void
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/android/AndroidVideoAdStage;)Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;
    .registers 1

    .line 37
    iget-object p0, p0, Linfo/flowersoft/theotown/crossplatform/VideoAdStage;->handler:Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;

    return-object p0
.end method

.method public static synthetic access$702(Z)Z
    .registers 1

    .line 37
    sput-boolean p0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->loadingAdmobAd:Z

    return p0
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/android/AndroidVideoAdStage;)V
    .registers 1

    .line 37
    invoke-virtual {p0}, Linfo/flowersoft/theotown/crossplatform/VideoAdStage;->handleSuccess()V

    return-void
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/android/AndroidVideoAdStage;)Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;
    .registers 1

    .line 37
    iget-object p0, p0, Linfo/flowersoft/theotown/crossplatform/VideoAdStage;->handler:Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;

    return-object p0
.end method

.method public static getFactory(Lcom/badlogic/gdx/backends/android/AndroidApplication;)Linfo/flowersoft/theotown/crossplatform/VideoAdStage$VideoAdStageFactory;
    .registers 3

    .line 208
    sput-object p0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    .line 211
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;

    const-string v1, "ca-app-pub-7938342441046245~2012310046"

    invoke-direct {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object v0

    .line 211
    invoke-static {p0, v0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;)V

    .line 216
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->NOT_CHILD_DIRECTED:Z

    invoke-static {v0}, Lcom/unity3d/mediation/LevelPlay;->setConsent(Z)V

    .line 218
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->NOT_CHILD_DIRECTED:Z

    if-eqz v0, :cond_34

    .line 219
    const-string v0, "do_not_sell"

    const-string v1, "false"

    invoke-static {v0, v1}, Lcom/unity3d/mediation/LevelPlay;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v0, "is_child_directed"

    invoke-static {v0, v1}, Lcom/unity3d/mediation/LevelPlay;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v0, "AdMob_TFCD"

    invoke-static {v0, v1}, Lcom/unity3d/mediation/LevelPlay;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v0, "AdMob_TFUA"

    invoke-static {v0, v1}, Lcom/unity3d/mediation/LevelPlay;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v0, "Vungle_coppa"

    invoke-static {v0, v1}, Lcom/unity3d/mediation/LevelPlay;->setMetaData(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_34
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-eqz v0, :cond_3f

    const/4 v0, 0x1

    .line 227
    invoke-static {v0}, Lcom/unity3d/mediation/LevelPlay;->setAdaptersDebug(Z)V

    .line 228
    invoke-static {p0}, Lcom/unity3d/mediation/LevelPlay;->validateIntegration(Landroid/content/Context;)V

    .line 231
    :cond_3f
    new-instance v0, Lcom/unity3d/mediation/LevelPlayInitRequest$Builder;

    const-string v1, "642cc78d"

    invoke-direct {v0, v1}, Lcom/unity3d/mediation/LevelPlayInitRequest$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/unity3d/mediation/LevelPlayInitRequest$Builder;->build()Lcom/unity3d/mediation/LevelPlayInitRequest;

    move-result-object v0

    .line 232
    new-instance v1, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$5;

    invoke-direct {v1}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$5;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/unity3d/mediation/LevelPlay;->init(Landroid/content/Context;Lcom/unity3d/mediation/LevelPlayInitRequest;Lcom/unity3d/mediation/LevelPlayInitListener;)V

    .line 245
    new-instance v0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$6;

    invoke-direct {v0}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$6;-><init>()V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->addLifecycleListener(Lcom/badlogic/gdx/LifecycleListener;)V

    .line 259
    new-instance p0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    const-string v0, "amkl4mik95lu1qas"

    invoke-direct {p0, v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;-><init>(Ljava/lang/String;)V

    sput-object p0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->isRewardedAd:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    .line 262
    invoke-static {}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->loadAdMobAd()V

    .line 264
    new-instance p0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$$ExternalSyntheticLambda0;-><init>()V

    return-object p0
.end method

.method public static loadAdMobAd()V
    .registers 2

    .line 179
    sget-boolean v0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->loadingAdmobAd:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 183
    sput-boolean v0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->loadingAdmobAd:Z

    .line 184
    sget-object v0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .line 122
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 124
    invoke-virtual {p0}, Linfo/flowersoft/theotown/crossplatform/VideoAdStage;->handleStart()V

    .line 125
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v1, p0, Linfo/flowersoft/theotown/crossplatform/VideoAdStage;->placement:Ljava/lang/String;

    const-string v2, ""

    const-string v3, "Show ad"

    invoke-interface {v0, v3, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->isRewardedAd:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    invoke-virtual {v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 128
    sget-object v0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->isRewardedAd:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    sget-object v1, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    const-string v2, "DefaultRewardedVideo"

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->showAd(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_27
    sget-object v0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->admobRewardedAd:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;

    if-eqz v0, :cond_3f

    .line 131
    new-instance v1, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$2;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$2;-><init>(Linfo/flowersoft/theotown/android/AndroidVideoAdStage;)V

    invoke-interface {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;->setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAdEventCallback;)V

    .line 155
    sget-object v0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->application:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iget-object v0, v0, Lcom/badlogic/gdx/backends/android/AndroidApplication;->handler:Landroid/os/Handler;

    new-instance v1, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/android/AndroidVideoAdStage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3f
    return-void
.end method

.method public isLoaded()Z
    .registers 11

    .line 97
    sget-object v0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->isRewardedAd:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    invoke-virtual {v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->isAdReady()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 101
    :cond_a
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    .line 102
    sget-wide v4, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->lastCheckMS:J

    sub-long v6, v2, v4

    const-wide/16 v8, 0x1388

    cmp-long v0, v6, v8

    if-gtz v0, :cond_1c

    cmp-long v0, v2, v4

    if-gez v0, :cond_2a

    .line 104
    :cond_1c
    sput-wide v2, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->lastCheckMS:J

    .line 105
    sget-object v0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->isRewardedAd:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    invoke-virtual {v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->loadAd()V

    .line 107
    sget-object v0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->admobRewardedAd:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;

    if-nez v0, :cond_2a

    .line 108
    invoke-static {}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->loadAdMobAd()V

    .line 112
    :cond_2a
    sget-object v0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->admobRewardedAd:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;

    if-eqz v0, :cond_2f

    return v1

    :cond_2f
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdate()V
    .registers 1

    .line 0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 175
    const-string v0, "IronSrc"

    return-object v0
.end method

###### Class info.flowersoft.theotown.android.AndroidVideoAdStage.AnonymousClass1 (info.flowersoft.theotown.android.AndroidVideoAdStage$1)
.class public Linfo/flowersoft/theotown/android/AndroidVideoAdStage$1;
.super Ljava/lang/Object;
.source "AndroidVideoAdStage.java"

# interfaces
.implements Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidVideoAdStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/android/AndroidVideoAdStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidVideoAdStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 57
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$1;->this$0:Linfo/flowersoft/theotown/android/AndroidVideoAdStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 2

    .line 88
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/SoundPlayer;->onResume()V

    .line 89
    invoke-static {}, Linfo/flowersoft/theotown/resources/MusicBox;->getInstance()Linfo/flowersoft/theotown/resources/MusicBox;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/MusicBox;->onResume()V

    .line 90
    invoke-static {}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->access$300()Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->loadAd()V

    return-void
.end method

.method public onAdDisplayFailed(Lcom/unity3d/mediation/LevelPlayAdError;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 4

    .line 82
    iget-object p2, p0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$1;->this$0:Linfo/flowersoft/theotown/android/AndroidVideoAdStage;

    invoke-static {p2}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->access$200(Linfo/flowersoft/theotown/android/AndroidVideoAdStage;)Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;

    move-result-object p2

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;->handle(I)V

    .line 83
    sget-object p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v0, Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/unity3d/mediation/LevelPlayAdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/Exception;)V

    return-void
.end method

.method public onAdDisplayed(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 2

    .line 70
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/SoundPlayer;->onPause()V

    .line 71
    invoke-static {}, Linfo/flowersoft/theotown/resources/MusicBox;->getInstance()Linfo/flowersoft/theotown/resources/MusicBox;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/MusicBox;->onPause()V

    return-void
.end method

.method public onAdLoadFailed(Lcom/unity3d/mediation/LevelPlayAdError;)V
    .registers 3

    .line 65
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public onAdLoaded(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 3

    .line 60
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public onAdRewarded(Lcom/unity3d/mediation/rewarded/LevelPlayReward;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 3

    .line 76
    iget-object p1, p0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$1;->this$0:Linfo/flowersoft/theotown/android/AndroidVideoAdStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->access$000(Linfo/flowersoft/theotown/android/AndroidVideoAdStage;)V

    .line 77
    iget-object p1, p0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$1;->this$0:Linfo/flowersoft/theotown/android/AndroidVideoAdStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->access$100(Linfo/flowersoft/theotown/android/AndroidVideoAdStage;)Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;->handle(I)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidVideoAdStage.AnonymousClass2 (info.flowersoft.theotown.android.AndroidVideoAdStage$2)
.class public Linfo/flowersoft/theotown/android/AndroidVideoAdStage$2;
.super Ljava/lang/Object;
.source "AndroidVideoAdStage.java"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAdEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/android/AndroidVideoAdStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidVideoAdStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 131
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$2;->this$0:Linfo/flowersoft/theotown/android/AndroidVideoAdStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .registers 2

    .line 134
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/SoundPlayer;->onResume()V

    .line 135
    invoke-static {}, Linfo/flowersoft/theotown/resources/MusicBox;->getInstance()Linfo/flowersoft/theotown/resources/MusicBox;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/MusicBox;->onResume()V

    const/4 v0, 0x0

    .line 136
    invoke-static {v0}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->access$402(Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;)Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;

    .line 137
    invoke-static {}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->access$500()V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;)V
    .registers 4

    const/4 v0, 0x0

    .line 142
    invoke-static {v0}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->access$402(Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;)Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;

    .line 143
    invoke-static {}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->access$500()V

    .line 144
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$2;->this$0:Linfo/flowersoft/theotown/android/AndroidVideoAdStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->access$600(Linfo/flowersoft/theotown/android/AndroidVideoAdStage;)Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;->handle(I)V

    .line 145
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/FullScreenContentError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/Exception;)V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .registers 2

    .line 150
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/SoundPlayer;->onPause()V

    .line 151
    invoke-static {}, Linfo/flowersoft/theotown/resources/MusicBox;->getInstance()Linfo/flowersoft/theotown/resources/MusicBox;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/MusicBox;->onPause()V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidVideoAdStage.AnonymousClass3 (info.flowersoft.theotown.android.AndroidVideoAdStage$3)
.class public Linfo/flowersoft/theotown/android/AndroidVideoAdStage$3;
.super Ljava/lang/Object;
.source "AndroidVideoAdStage.java"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/rewarded/OnUserEarnedRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/android/AndroidVideoAdStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/android/AndroidVideoAdStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 158
    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$3;->this$0:Linfo/flowersoft/theotown/android/AndroidVideoAdStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserEarnedReward(Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardItem;)V
    .registers 3

    .line 161
    iget-object p1, p0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$3;->this$0:Linfo/flowersoft/theotown/android/AndroidVideoAdStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->access$800(Linfo/flowersoft/theotown/android/AndroidVideoAdStage;)V

    .line 162
    iget-object p1, p0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$3;->this$0:Linfo/flowersoft/theotown/android/AndroidVideoAdStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->access$900(Linfo/flowersoft/theotown/android/AndroidVideoAdStage;)Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;->handle(I)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidVideoAdStage.AnonymousClass4 (info.flowersoft.theotown.android.AndroidVideoAdStage$4)
.class public Linfo/flowersoft/theotown/android/AndroidVideoAdStage$4;
.super Ljava/lang/Object;
.source "AndroidVideoAdStage.java"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->loadAdMobAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback<",
        "Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V
    .registers 3

    .line 191
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "AdMob ad not loaded"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 192
    invoke-static {p1}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->access$702(Z)Z

    const/4 p1, 0x0

    .line 193
    invoke-static {p1}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->access$402(Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;)Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;)V
    .registers 4

    .line 198
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "AdMob ad loaded"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 199
    invoke-static {v0}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->access$702(Z)Z

    .line 200
    invoke-static {p1}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->access$402(Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;)Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 188
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$4;->onAdLoaded(Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;)V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidVideoAdStage.AnonymousClass5 (info.flowersoft.theotown.android.AndroidVideoAdStage$5)
.class public Linfo/flowersoft/theotown/android/AndroidVideoAdStage$5;
.super Ljava/lang/Object;
.source "AndroidVideoAdStage.java"

# interfaces
.implements Lcom/unity3d/mediation/LevelPlayInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->getFactory(Lcom/badlogic/gdx/backends/android/AndroidApplication;)Linfo/flowersoft/theotown/crossplatform/VideoAdStage$VideoAdStageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitFailed(Lcom/unity3d/mediation/LevelPlayInitError;)V
    .registers 3

    .line 241
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public onInitSuccess(Lcom/unity3d/mediation/LevelPlayConfiguration;)V
    .registers 3

    .line 235
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "AdInit success"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 236
    invoke-static {}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->access$300()Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->loadAd()V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidVideoAdStage.AnonymousClass6 (info.flowersoft.theotown.android.AndroidVideoAdStage$6)
.class public Linfo/flowersoft/theotown/android/AndroidVideoAdStage$6;
.super Ljava/lang/Object;
.source "AndroidVideoAdStage.java"

# interfaces
.implements Lcom/badlogic/gdx/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->getFactory(Lcom/badlogic/gdx/backends/android/AndroidApplication;)Linfo/flowersoft/theotown/crossplatform/VideoAdStage$VideoAdStageFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 1

    .line 0
    return-void
.end method

.method public pause()V
    .registers 1

    .line 0
    return-void
.end method

.method public resume()V
    .registers 2

    .line 251
    invoke-static {}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->access$300()Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->loadAd()V

    .line 252
    invoke-static {}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->access$500()V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidVideoAdStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.android.AndroidVideoAdStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/android/AndroidVideoAdStage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/crossplatform/VideoAdStage$VideoAdStageFactory;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;)Linfo/flowersoft/theotown/crossplatform/VideoAdStage;
    .registers 5

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;

    invoke-direct {v0, p1, p2, p3}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Linfo/flowersoft/theotown/crossplatform/VideoAdStage$AdResultHandler;)V

    return-object v0
.end method

###### Class info.flowersoft.theotown.android.AndroidVideoAdStage$$ExternalSyntheticLambda1 (info.flowersoft.theotown.android.AndroidVideoAdStage$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/android/AndroidVideoAdStage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->$r8$lambda$zfem3M3fgufzgSjRxN61s_xvIek()V

    return-void
.end method

###### Class info.flowersoft.theotown.android.AndroidVideoAdStage$$ExternalSyntheticLambda2 (info.flowersoft.theotown.android.AndroidVideoAdStage$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/android/AndroidVideoAdStage$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/android/AndroidVideoAdStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/android/AndroidVideoAdStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/android/AndroidVideoAdStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/android/AndroidVideoAdStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/android/AndroidVideoAdStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/android/AndroidVideoAdStage;->$r8$lambda$SCOJwCrhGAQwFeJ6Tv90wzapbAs(Linfo/flowersoft/theotown/android/AndroidVideoAdStage;)V

    return-void
.end method
