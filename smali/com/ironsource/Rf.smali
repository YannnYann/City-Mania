###### Class com.ironsource.Rf (com.ironsource.Rf)
.class public final Lcom/ironsource/Rf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/Lf;

.field private final b:Lcom/ironsource/Sf;

.field private final c:Lcom/ironsource/W8;


# direct methods
.method public constructor <init>(Lcom/ironsource/Lf;Lcom/ironsource/W8;Lcom/ironsource/Sf;)V
    .registers 5

    const-string v0, "adsManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiLifeCycleListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaScriptEvaluator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/ironsource/Rf;->a:Lcom/ironsource/Lf;

    .line 8
    iput-object p3, p0, Lcom/ironsource/Rf;->b:Lcom/ironsource/Sf;

    .line 9
    iput-object p2, p0, Lcom/ironsource/Rf;->c:Lcom/ironsource/W8;

    return-void
.end method

.method private final a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/unity3d/mediation/LevelPlay$AdFormat;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/Rf;->b:Lcom/ironsource/Sf;

    invoke-interface {v0, p1, p2, p3}, Lcom/ironsource/Sf;->a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final addBannerAdToScreen(D)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/Rf;->a:Lcom/ironsource/Lf;

    invoke-virtual {v0, p1, p2}, Lcom/ironsource/Lf;->a(D)V

    return-void
.end method

.method public final closeTestSuite()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/Rf;->destroyBannerAd()V

    .line 2
    iget-object v0, p0, Lcom/ironsource/Rf;->c:Lcom/ironsource/W8;

    invoke-interface {v0}, Lcom/ironsource/W8;->onClosed()V

    return-void
.end method

.method public final destroyBannerAd()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/Rf;->a:Lcom/ironsource/Lf;

    invoke-virtual {v0}, Lcom/ironsource/Lf;->a()V

    return-void
.end method

.method public final isInterstitialReady()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/Rf;->a:Lcom/ironsource/Lf;

    invoke-virtual {v0}, Lcom/ironsource/Lf;->c()Z

    move-result v0

    .line 4
    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->INTERSTITIAL:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    .line 5
    sget-object v2, Lcom/ironsource/bg;->a:Lcom/ironsource/bg;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ironsource/bg;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 6
    const-string v2, "isInterstitialReady"

    invoke-direct {p0, v2, v1, v0}, Lcom/ironsource/Rf;->a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/util/List;)V

    return-void
.end method

.method public final isRewardedVideoReady()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/Rf;->a:Lcom/ironsource/Lf;

    invoke-virtual {v0}, Lcom/ironsource/Lf;->d()Z

    move-result v0

    .line 4
    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->REWARDED:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    .line 5
    sget-object v2, Lcom/ironsource/bg;->a:Lcom/ironsource/bg;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/ironsource/bg;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 6
    const-string v2, "isRewardedVideoReady"

    invoke-direct {p0, v2, v1, v0}, Lcom/ironsource/Rf;->a(Ljava/lang/String;Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/util/List;)V

    return-void
.end method

.method public final loadBannerAd(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;II)V
    .registers 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "adNetwork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/ironsource/Tf;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/ironsource/Tf;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/ironsource/Rf;->a:Lcom/ironsource/Lf;

    invoke-virtual {p1, v0, p5, p6, p7}, Lcom/ironsource/Lf;->a(Lcom/ironsource/Tf;Ljava/lang/String;II)V

    return-void
.end method

.method public final loadBannerAd(Ljava/lang/String;ZZLjava/lang/String;II)V
    .registers 16
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "adNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    .line 1
    invoke-virtual/range {v1 .. v8}, Lcom/ironsource/Rf;->loadBannerAd(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;II)V

    return-void
.end method

.method public final loadInterstitialAd(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "adNetwork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/ironsource/Tf;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/ironsource/Tf;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/ironsource/Rf;->a:Lcom/ironsource/Lf;

    invoke-virtual {p1, v0}, Lcom/ironsource/Lf;->b(Lcom/ironsource/Tf;)V

    return-void
.end method

.method public final loadInterstitialAd(Ljava/lang/String;ZZ)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "adNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ironsource/Rf;->loadInterstitialAd(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final loadRewardedVideoAd(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "adNetwork"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/ironsource/Tf;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/ironsource/Tf;-><init>(Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/ironsource/Rf;->a:Lcom/ironsource/Lf;

    invoke-virtual {p1, v0}, Lcom/ironsource/Lf;->c(Lcom/ironsource/Tf;)V

    return-void
.end method

.method public final loadRewardedVideoAd(Ljava/lang/String;ZZ)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "adNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ironsource/Rf;->loadRewardedVideoAd(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final onDataLoaded()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/Rf;->c:Lcom/ironsource/W8;

    invoke-interface {v0}, Lcom/ironsource/W8;->onUIReady()V

    return-void
.end method

.method public final showInterstitialAd()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/Rf;->a:Lcom/ironsource/Lf;

    invoke-virtual {v0}, Lcom/ironsource/Lf;->e()V

    return-void
.end method

.method public final showRewardedVideoAd()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/Rf;->a:Lcom/ironsource/Lf;

    invoke-virtual {v0}, Lcom/ironsource/Lf;->f()V

    return-void
.end method
