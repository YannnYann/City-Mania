###### Class com.ironsource.C3651i6 (com.ironsource.i6)
.class public final Lcom/ironsource/i6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/x6;
.implements Lcom/ironsource/y6;


# annotations
.annotation build Lcom/ironsource/xb;
.end annotation


# instance fields
.field private final a:Lcom/ironsource/k6;

.field private final b:Lcom/ironsource/g0;

.field private final c:Lcom/ironsource/z6;


# direct methods
.method public constructor <init>(Lcom/ironsource/k6;Lcom/ironsource/p0;Lcom/ironsource/g0;Lcom/ironsource/z6$b;Lcom/ironsource/v6;)V
    .registers 12

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adTools"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adProperties"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitStrategyFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullscreenAdUnitFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/i6;->a:Lcom/ironsource/k6;

    .line 4
    iput-object p3, p0, Lcom/ironsource/i6;->b:Lcom/ironsource/g0;

    .line 13
    invoke-virtual {p3}, Lcom/ironsource/g0;->e()Lcom/unity3d/mediation/LevelPlay$AdFormat;

    move-result-object p1

    invoke-virtual {p3}, Lcom/ironsource/g0;->c()Ljava/lang/String;

    move-result-object p3

    .line 14
    invoke-virtual {p2, p1, p3}, Lcom/ironsource/p0;->b(Lcom/unity3d/mediation/LevelPlay$AdFormat;Ljava/lang/String;)Lcom/ironsource/z6$a;

    move-result-object v2

    move-object v5, p0

    move-object v4, p0

    move-object v1, p2

    move-object v0, p4

    move-object v3, p5

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/z6$b;->a(Lcom/ironsource/p0;Lcom/ironsource/z6$a;Lcom/ironsource/v6;Lcom/ironsource/x6;Lcom/ironsource/y6;)Lcom/ironsource/z6;

    move-result-object p1

    iput-object p1, v4, Lcom/ironsource/i6;->c:Lcom/ironsource/z6;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/k6;Lcom/ironsource/p0;Lcom/ironsource/g0;Lcom/ironsource/z6$b;Lcom/ironsource/v6;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 14

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_9

    .line 16
    new-instance p4, Lcom/ironsource/z6$b;

    invoke-direct {p4}, Lcom/ironsource/z6$b;-><init>()V

    :cond_9
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/ironsource/i6;-><init>(Lcom/ironsource/k6;Lcom/ironsource/p0;Lcom/ironsource/g0;Lcom/ironsource/z6$b;Lcom/ironsource/v6;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .line 5
    iget-object v0, p0, Lcom/ironsource/i6;->a:Lcom/ironsource/k6;

    invoke-interface {v0}, Lcom/ironsource/k6;->a()V

    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/ironsource/md;)V
    .registers 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/i6;->b:Lcom/ironsource/g0;

    invoke-virtual {v0, p2}, Lcom/ironsource/g0;->a(Lcom/ironsource/md;)V

    .line 2
    iget-object p2, p0, Lcom/ironsource/i6;->c:Lcom/ironsource/z6;

    invoke-interface {p2, p1}, Lcom/ironsource/z6;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 3

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/i6;->a:Lcom/ironsource/k6;

    invoke-interface {v0, p1}, Lcom/ironsource/k6;->onAdDisplayed(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public a(Lcom/unity3d/mediation/rewarded/LevelPlayReward;)V
    .registers 3

    const-string v0, "reward"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/i6;->a:Lcom/ironsource/k6;

    invoke-interface {v0, p1}, Lcom/ironsource/k6;->a(Lcom/unity3d/mediation/rewarded/LevelPlayReward;)V

    return-void
.end method

.method public final b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/i6;->c:Lcom/ironsource/z6;

    invoke-interface {v0}, Lcom/ironsource/z6;->loadAd()V

    return-void
.end method

.method public b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 6

    .line 3
    iget-object v0, p0, Lcom/ironsource/i6;->a:Lcom/ironsource/k6;

    .line 4
    new-instance v1, Lcom/unity3d/mediation/LevelPlayAdError;

    iget-object v2, p0, Lcom/ironsource/i6;->b:Lcom/ironsource/g0;

    invoke-virtual {v2}, Lcom/ironsource/g0;->b()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ironsource/i6;->b:Lcom/ironsource/g0;

    invoke-virtual {v3}, Lcom/ironsource/g0;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/unity3d/mediation/LevelPlayAdError;-><init>(Lcom/ironsource/mediationsdk/logger/IronSourceError;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-interface {v0, v1}, Lcom/ironsource/k6;->onAdLoadFailed(Lcom/unity3d/mediation/LevelPlayAdError;)V

    return-void
.end method

.method public b(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 3

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/i6;->a:Lcom/ironsource/k6;

    invoke-interface {v0, p1}, Lcom/ironsource/k6;->onAdLoaded(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public c(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/i6;->a:Lcom/ironsource/k6;

    .line 2
    new-instance v1, Lcom/unity3d/mediation/LevelPlayAdError;

    iget-object v2, p0, Lcom/ironsource/i6;->b:Lcom/ironsource/g0;

    invoke-virtual {v2}, Lcom/ironsource/g0;->b()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ironsource/i6;->b:Lcom/ironsource/g0;

    invoke-virtual {v3}, Lcom/ironsource/g0;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/unity3d/mediation/LevelPlayAdError;-><init>(Lcom/ironsource/mediationsdk/logger/IronSourceError;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0, v1}, Lcom/ironsource/k6;->a(Lcom/unity3d/mediation/LevelPlayAdError;)V

    return-void
.end method

.method public e()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/i6;->a:Lcom/ironsource/k6;

    invoke-interface {v0}, Lcom/ironsource/k6;->onAdClicked()V

    return-void
.end method

.method public onAdInfoChanged(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 3

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/i6;->a:Lcom/ironsource/k6;

    invoke-interface {v0, p1}, Lcom/ironsource/k6;->onAdInfoChanged(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public onClosed()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/i6;->a:Lcom/ironsource/k6;

    invoke-interface {v0}, Lcom/ironsource/k6;->onAdClosed()V

    return-void
.end method
