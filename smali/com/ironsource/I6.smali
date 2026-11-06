###### Class com.ironsource.I6 (com.ironsource.I6)
.class public final Lcom/ironsource/I6;
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

.field private final c:Lcom/ironsource/u6;

.field private d:Lcom/unity3d/mediation/LevelPlayAdInfo;


# direct methods
.method public constructor <init>(Lcom/ironsource/G6;Lcom/ironsource/u6;Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 6

    const-string v0, "strategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentAdUnit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressiveAdUnit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInfo"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/I6;->a:Lcom/ironsource/G6;

    .line 3
    iput-object p2, p0, Lcom/ironsource/I6;->b:Lcom/ironsource/u6;

    .line 4
    iput-object p3, p0, Lcom/ironsource/I6;->c:Lcom/ironsource/u6;

    .line 5
    iput-object p4, p0, Lcom/ironsource/I6;->d:Lcom/unity3d/mediation/LevelPlayAdInfo;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    .line 4
    iget-object v0, p0, Lcom/ironsource/I6;->a:Lcom/ironsource/G6;

    new-instance v1, Lcom/ironsource/H6;

    iget-object v2, p0, Lcom/ironsource/I6;->b:Lcom/ironsource/u6;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/ironsource/H6;-><init>(Lcom/ironsource/G6;Lcom/ironsource/u6;Z)V

    invoke-virtual {v0, v1}, Lcom/ironsource/G6;->a(Lcom/ironsource/M6;)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/I6;->a:Lcom/ironsource/G6;

    invoke-virtual {p1}, Lcom/ironsource/G6;->d()Lcom/ironsource/y6;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x274

    const-string v2, "Show called before load success"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 3
    invoke-interface {p1, v0}, Lcom/ironsource/y6;->c(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 3

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/ironsource/I6;->a:Lcom/ironsource/G6;

    const-string v0, "show success on progressive ad unit that already loaded"

    invoke-virtual {p1, v0}, Lcom/ironsource/G6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/ironsource/I6;->a:Lcom/ironsource/G6;

    const-string v0, "load failed on progressive ad unit that already loaded"

    invoke-virtual {p1, v0}, Lcom/ironsource/G6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 3

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/ironsource/I6;->d:Lcom/unity3d/mediation/LevelPlayAdInfo;

    return-void
.end method

.method public c(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    .line 2
    iget-object p1, p0, Lcom/ironsource/I6;->a:Lcom/ironsource/G6;

    const-string v0, "show failed on progressive ad unit that already loaded"

    invoke-virtual {p1, v0}, Lcom/ironsource/G6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 3

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/I6;->a:Lcom/ironsource/G6;

    const-string v0, "load success on progressive ad unit is already loaded"

    invoke-virtual {p1, v0}, Lcom/ironsource/G6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public loadAd()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/I6;->a:Lcom/ironsource/G6;

    invoke-virtual {v0}, Lcom/ironsource/G6;->d()Lcom/ironsource/y6;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/I6;->d:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-interface {v0, v1}, Lcom/ironsource/y6;->b(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/I6;->a:Lcom/ironsource/G6;

    new-instance v1, Lcom/ironsource/K6;

    iget-object v2, p0, Lcom/ironsource/I6;->c:Lcom/ironsource/u6;

    invoke-direct {v1, v0, v2}, Lcom/ironsource/K6;-><init>(Lcom/ironsource/G6;Lcom/ironsource/u6;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/G6;->a(Lcom/ironsource/M6;)V

    return-void
.end method
