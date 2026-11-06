###### Class com.ironsource.K6 (com.ironsource.K6)
.class public final Lcom/ironsource/K6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/M6;


# annotations
.annotation build Lcom/ironsource/xb;
.end annotation


# instance fields
.field private final a:Lcom/ironsource/G6;

.field private final b:Lcom/ironsource/u6;


# direct methods
.method public constructor <init>(Lcom/ironsource/G6;Lcom/ironsource/u6;)V
    .registers 4

    const-string v0, "strategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/K6;->a:Lcom/ironsource/G6;

    .line 3
    iput-object p2, p0, Lcom/ironsource/K6;->b:Lcom/ironsource/u6;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/ironsource/K6;->a:Lcom/ironsource/G6;

    new-instance v1, Lcom/ironsource/H6;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/ironsource/H6;-><init>(Lcom/ironsource/G6;Lcom/ironsource/u6;Z)V

    invoke-virtual {v0, v1}, Lcom/ironsource/G6;->a(Lcom/ironsource/M6;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/K6;->a:Lcom/ironsource/G6;

    invoke-virtual {v0}, Lcom/ironsource/G6;->d()Lcom/ironsource/y6;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/y6;->a()V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/K6;->b:Lcom/ironsource/u6;

    iget-object v1, p0, Lcom/ironsource/K6;->a:Lcom/ironsource/G6;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/u6;->a(Landroid/app/Activity;Lcom/ironsource/u6$a;)V

    return-void
.end method

.method public a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 5

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/K6;->a:Lcom/ironsource/G6;

    invoke-virtual {v0}, Lcom/ironsource/G6;->d()Lcom/ironsource/y6;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ironsource/y6;->a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    .line 6
    iget-object p1, p0, Lcom/ironsource/K6;->a:Lcom/ironsource/G6;

    invoke-virtual {p1}, Lcom/ironsource/G6;->b()Lcom/ironsource/v6;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/K6;->a:Lcom/ironsource/G6;

    invoke-virtual {v0}, Lcom/ironsource/G6;->c()Lcom/ironsource/x6;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/ironsource/v6;->a(ZLcom/ironsource/x6;)Lcom/ironsource/u6;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/ironsource/K6;->a:Lcom/ironsource/G6;

    .line 8
    new-instance v1, Lcom/ironsource/J6;

    iget-object v2, p0, Lcom/ironsource/K6;->b:Lcom/ironsource/u6;

    invoke-direct {v1, v0, v2, p1}, Lcom/ironsource/J6;-><init>(Lcom/ironsource/G6;Lcom/ironsource/u6;Lcom/ironsource/u6;)V

    .line 9
    invoke-virtual {v0, v1}, Lcom/ironsource/G6;->a(Lcom/ironsource/M6;)V

    .line 11
    iget-object v0, p0, Lcom/ironsource/K6;->a:Lcom/ironsource/G6;

    invoke-virtual {p1, v0}, Lcom/ironsource/u6;->a(Lcom/ironsource/u6$b;)V

    return-void
.end method

.method public b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/ironsource/K6;->a:Lcom/ironsource/G6;

    const-string v0, "load failed after ad unit is already loaded"

    invoke-virtual {p1, v0}, Lcom/ironsource/G6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 3

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/K6;->a:Lcom/ironsource/G6;

    invoke-virtual {v0}, Lcom/ironsource/G6;->d()Lcom/ironsource/y6;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ironsource/y6;->onAdInfoChanged(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public c(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 9

    .line 2
    sget-object v0, Lcom/ironsource/f5;->a:Lcom/ironsource/f5;

    invoke-virtual {v0, p1}, Lcom/ironsource/f5;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 3
    iget-object v2, p0, Lcom/ironsource/K6;->a:Lcom/ironsource/G6;

    new-instance v1, Lcom/ironsource/H6;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/H6;-><init>(Lcom/ironsource/G6;Lcom/ironsource/u6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v1}, Lcom/ironsource/G6;->a(Lcom/ironsource/M6;)V

    .line 6
    :cond_16
    iget-object v0, p0, Lcom/ironsource/K6;->a:Lcom/ironsource/G6;

    invoke-virtual {v0}, Lcom/ironsource/G6;->d()Lcom/ironsource/y6;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ironsource/y6;->c(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public c(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 3

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/K6;->a:Lcom/ironsource/G6;

    const-string v0, "Ad unit is already loaded"

    invoke-virtual {p1, v0}, Lcom/ironsource/G6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public loadAd()V
    .registers 7

    .line 1
    iget-object v1, p0, Lcom/ironsource/K6;->a:Lcom/ironsource/G6;

    new-instance v0, Lcom/ironsource/H6;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/H6;-><init>(Lcom/ironsource/G6;Lcom/ironsource/u6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v0}, Lcom/ironsource/G6;->a(Lcom/ironsource/M6;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/K6;->a:Lcom/ironsource/G6;

    invoke-virtual {v0}, Lcom/ironsource/G6;->loadAd()V

    return-void
.end method
