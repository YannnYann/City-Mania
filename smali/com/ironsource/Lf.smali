###### Class com.ironsource.Lf (com.ironsource.Lf)
.class public final Lcom/ironsource/Lf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/V8$a;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$XLxPSwG5d2SKR_JJF7EoXQxYi4Q(Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/Lf;->a(Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vzMrXDal5fCN3QgCUqSJleKq-bI(Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/Lf;->b(Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;Landroid/os/Handler;)V
    .registers 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v0}, Lcom/ironsource/Pb$a;->a()Lcom/ironsource/L7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/L7;->d()Lcom/ironsource/V8$a;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/Lf;->a:Lcom/ironsource/V8$a;

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ironsource/Lf;->b:Ljava/lang/ref/WeakReference;

    .line 7
    iput-object p2, p0, Lcom/ironsource/Lf;->c:Landroid/os/Handler;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Lf;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Lf;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Lf;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private final a(Lcom/ironsource/Tf;)V
    .registers 4

    .line 32
    invoke-virtual {p1}, Lcom/ironsource/Tf;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 33
    invoke-static {}, Lcom/ironsource/mediationsdk/c;->c()Lcom/ironsource/mediationsdk/c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/Tf;->c()Z

    move-result p1

    invoke-virtual {v1, p1, v0}, Lcom/ironsource/mediationsdk/c;->a(ZLjava/lang/String;)V

    return-void

    .line 34
    :cond_12
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "applyTestMode: adNetworkName is null"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;)V
    .registers 4

    .line 25
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 26
    sget-object v1, Lcom/ironsource/bg;->a:Lcom/ironsource/bg;

    invoke-virtual {v1, p0}, Lcom/ironsource/bg;->a(Landroid/content/Context;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final b()Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/ironsource/Lf;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;

    return-object v0
.end method

.method private static final b(Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;)V
    .registers 2

    .line 9
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;->getContainer()Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 27
    invoke-direct {p0}, Lcom/ironsource/Lf;->b()Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_1f

    .line 29
    :cond_7
    iget-object v1, p0, Lcom/ironsource/Lf;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    if-eqz v1, :cond_1f

    .line 30
    invoke-virtual {v1}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;->destroy()V

    .line 31
    iget-object v2, p0, Lcom/ironsource/Lf;->c:Landroid/os/Handler;

    new-instance v3, Lcom/ironsource/Lf$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v1}, Lcom/ironsource/Lf$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    :goto_1f
    return-void
.end method

.method public final a(D)V
    .registers 5

    .line 18
    invoke-direct {p0}, Lcom/ironsource/Lf;->b()Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_22

    .line 20
    :cond_7
    iget-object p2, p0, Lcom/ironsource/Lf;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    if-eqz p2, :cond_22

    .line 21
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_18

    goto :goto_22

    .line 24
    :cond_18
    iget-object v0, p0, Lcom/ironsource/Lf;->c:Landroid/os/Handler;

    new-instance v1, Lcom/ironsource/Lf$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/ironsource/Lf$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_22
    :goto_22
    return-void
.end method

.method public final a(Lcom/ironsource/Tf;Ljava/lang/String;II)V
    .registers 8

    const-string v0, "loadAdConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/Lf;->a()V

    .line 3
    invoke-direct {p0}, Lcom/ironsource/Lf;->b()Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;

    move-result-object v0

    if-nez v0, :cond_14

    return-void

    .line 5
    :cond_14
    iget-object v1, p0, Lcom/ironsource/Lf;->a:Lcom/ironsource/V8$a;

    invoke-interface {v1, p1}, Lcom/ironsource/V8$a;->a(Lcom/ironsource/Tf;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/ironsource/Lf;->a(Lcom/ironsource/Tf;)V

    .line 9
    new-instance v1, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config$Builder;

    invoke-direct {v1}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config$Builder;-><init>()V

    .line 10
    sget-object v2, Lcom/ironsource/Wf;->a:Lcom/ironsource/Wf;

    invoke-virtual {v2, p2, p3, p4}, Lcom/ironsource/Wf;->b(Ljava/lang/String;II)Lcom/unity3d/mediation/LevelPlayAdSize;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config$Builder;->setAdSize(Lcom/unity3d/mediation/LevelPlayAdSize;)Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config$Builder;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config$Builder;->build()Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config;

    move-result-object p2

    .line 12
    iget-object p3, p0, Lcom/ironsource/Lf;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    new-instance p4, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    invoke-virtual {p1}, Lcom/ironsource/Tf;->b()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3b

    const-string p1, ""

    :cond_3b
    invoke-direct {p4, v0, p1, p2}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config;)V

    .line 14
    new-instance p1, Lcom/ironsource/Mf;

    invoke-direct {p1}, Lcom/ironsource/Mf;-><init>()V

    invoke-virtual {p4, p1}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;->setBannerListener(Lcom/unity3d/mediation/banner/LevelPlayBannerAdViewListener;)V

    .line 15
    invoke-virtual {p4}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;->pauseAutoRefresh()V

    .line 16
    invoke-virtual {p4}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;->loadAd()V

    .line 17
    invoke-virtual {p3, p4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/ironsource/Tf;)V
    .registers 4

    const-string v0, "loadAdConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/Lf;->a:Lcom/ironsource/V8$a;

    invoke-interface {v0, p1}, Lcom/ironsource/V8$a;->a(Lcom/ironsource/Tf;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/ironsource/Lf;->a(Lcom/ironsource/Tf;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/Lf;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v1, Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;

    invoke-virtual {p1}, Lcom/ironsource/Tf;->b()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_19

    const-string p1, ""

    :cond_19
    invoke-direct {v1, p1}, Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/ironsource/Qf;

    invoke-direct {p1}, Lcom/ironsource/Qf;-><init>()V

    invoke-virtual {v1, p1}, Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;->setListener(Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAdListener;)V

    .line 7
    invoke-virtual {v1}, Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;->loadAd()V

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Lcom/ironsource/Tf;)V
    .registers 4

    const-string v0, "loadAdConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/Lf;->a:Lcom/ironsource/V8$a;

    invoke-interface {v0, p1}, Lcom/ironsource/V8$a;->a(Lcom/ironsource/Tf;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/ironsource/Lf;->a(Lcom/ironsource/Tf;)V

    .line 5
    iget-object v0, p0, Lcom/ironsource/Lf;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance v1, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    invoke-virtual {p1}, Lcom/ironsource/Tf;->b()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_19

    const-string p1, ""

    :cond_19
    invoke-direct {v1, p1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;-><init>(Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/ironsource/Zf;

    invoke-direct {p1}, Lcom/ironsource/Zf;-><init>()V

    invoke-virtual {v1, p1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->setListener(Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAdListener;)V

    .line 8
    invoke-virtual {v1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->loadAd()V

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final c()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Lf;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;->isAdReady()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Lf;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->isAdReady()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/ironsource/Lf;->b()Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object v1, p0, Lcom/ironsource/Lf;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;->showAd$default(Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final f()V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/ironsource/Lf;->b()Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    iget-object v1, p0, Lcom/ironsource/Lf;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->showAd$default(Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

###### Class com.ironsource.Lf$$ExternalSyntheticLambda0 (com.ironsource.Lf$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/Lf$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;

.field public final synthetic f$1:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Lf$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;

    iput-object p2, p0, Lcom/ironsource/Lf$$ExternalSyntheticLambda0;->f$1:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/Lf$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;

    iget-object v1, p0, Lcom/ironsource/Lf$$ExternalSyntheticLambda0;->f$1:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    invoke-static {v0, v1}, Lcom/ironsource/Lf;->$r8$lambda$XLxPSwG5d2SKR_JJF7EoXQxYi4Q(Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;)V

    return-void
.end method

###### Class com.ironsource.Lf$$ExternalSyntheticLambda1 (com.ironsource.Lf$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/Lf$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;

.field public final synthetic f$1:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Lf$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;

    iput-object p2, p0, Lcom/ironsource/Lf$$ExternalSyntheticLambda1;->f$1:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/Lf$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;

    iget-object v1, p0, Lcom/ironsource/Lf$$ExternalSyntheticLambda1;->f$1:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    invoke-static {v0, v1}, Lcom/ironsource/Lf;->$r8$lambda$vzMrXDal5fCN3QgCUqSJleKq-bI(Lcom/ironsource/mediationsdk/testSuite/TestSuiteActivity;Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;)V

    return-void
.end method
