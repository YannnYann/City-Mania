###### Class com.ironsource.E6 (com.ironsource.E6)
.class public final Lcom/ironsource/E6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/F6;
.implements Lcom/ironsource/x6;


# annotations
.annotation build Lcom/ironsource/xb;
.end annotation


# instance fields
.field private final a:Lcom/ironsource/A6;

.field private final b:Lcom/ironsource/u6;

.field private c:Lcom/ironsource/u6;


# direct methods
.method public constructor <init>(Lcom/ironsource/A6;Lcom/ironsource/u6;Lcom/ironsource/u6;)V
    .registers 5

    const-string v0, "strategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentAdUnit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/E6;->a:Lcom/ironsource/A6;

    .line 3
    iput-object p2, p0, Lcom/ironsource/E6;->b:Lcom/ironsource/u6;

    .line 4
    iput-object p3, p0, Lcom/ironsource/E6;->c:Lcom/ironsource/u6;

    .line 7
    invoke-virtual {p2, p0}, Lcom/ironsource/u6;->a(Lcom/ironsource/x6;)V

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/E6;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/F6;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 22
    :cond_5
    invoke-direct {p0, p1}, Lcom/ironsource/E6;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Lcom/ironsource/F6;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Lcom/ironsource/F6;
    .registers 13

    .line 23
    sget-object v0, Lcom/ironsource/f5;->a:Lcom/ironsource/f5;

    invoke-virtual {v0, p1}, Lcom/ironsource/f5;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 24
    new-instance p1, Lcom/ironsource/C6;

    iget-object v0, p0, Lcom/ironsource/E6;->a:Lcom/ironsource/A6;

    iget-object v1, p0, Lcom/ironsource/E6;->b:Lcom/ironsource/u6;

    iget-object v2, p0, Lcom/ironsource/E6;->c:Lcom/ironsource/u6;

    const/4 v3, 0x1

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/ironsource/C6;-><init>(Lcom/ironsource/A6;Lcom/ironsource/u6;Lcom/ironsource/u6;Z)V

    return-object p1

    .line 27
    :cond_15
    iget-object v6, p0, Lcom/ironsource/E6;->c:Lcom/ironsource/u6;

    if-nez v6, :cond_21

    new-instance p1, Lcom/ironsource/B6;

    iget-object v0, p0, Lcom/ironsource/E6;->a:Lcom/ironsource/A6;

    invoke-direct {p1, v0}, Lcom/ironsource/B6;-><init>(Lcom/ironsource/A6;)V

    return-object p1

    .line 29
    :cond_21
    invoke-virtual {v6}, Lcom/ironsource/u6;->e()Lcom/unity3d/mediation/LevelPlayAdInfo;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 30
    new-instance v4, Lcom/ironsource/C6;

    iget-object v5, p0, Lcom/ironsource/E6;->a:Lcom/ironsource/A6;

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/ironsource/C6;-><init>(Lcom/ironsource/A6;Lcom/ironsource/u6;Lcom/ironsource/u6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    .line 31
    :cond_34
    new-instance p1, Lcom/ironsource/D6;

    iget-object v0, p0, Lcom/ironsource/E6;->a:Lcom/ironsource/A6;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v6, v1}, Lcom/ironsource/D6;-><init>(Lcom/ironsource/A6;Lcom/ironsource/u6;Z)V

    return-object p1
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/E6;->a:Lcom/ironsource/A6;

    const-string v0, "show called while showing"

    invoke-virtual {p1, v0}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/u6;)V
    .registers 3

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/ironsource/E6;->c:Lcom/ironsource/u6;

    if-ne p1, v0, :cond_d

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/ironsource/E6;->c:Lcom/ironsource/u6;

    return-void

    .line 20
    :cond_d
    iget-object p1, p0, Lcom/ironsource/E6;->a:Lcom/ironsource/A6;

    const-string v0, "ad expired while current ad is showing"

    invoke-virtual {p1, v0}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/u6;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/ironsource/E6;->b:Lcom/ironsource/u6;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 9
    iget-object p1, p0, Lcom/ironsource/E6;->a:Lcom/ironsource/A6;

    const-string p2, "progressive show failed while showing current ad"

    invoke-virtual {p1, p2}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void

    .line 13
    :cond_15
    invoke-direct {p0, p2}, Lcom/ironsource/E6;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)Lcom/ironsource/F6;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/ironsource/E6;->a:Lcom/ironsource/A6;

    invoke-virtual {v0, p1}, Lcom/ironsource/A6;->a(Lcom/ironsource/F6;)V

    .line 15
    iget-object p1, p0, Lcom/ironsource/E6;->a:Lcom/ironsource/A6;

    invoke-virtual {p1}, Lcom/ironsource/A6;->d()Lcom/ironsource/y6;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/ironsource/y6;->c(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public a(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 4

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/E6;->b:Lcom/ironsource/u6;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 3
    iget-object p1, p0, Lcom/ironsource/E6;->a:Lcom/ironsource/A6;

    const-string p2, "progressive show success while showing current ad"

    invoke-virtual {p1, p2}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1a
    iget-object p1, p0, Lcom/ironsource/E6;->a:Lcom/ironsource/A6;

    invoke-virtual {p1}, Lcom/ironsource/A6;->d()Lcom/ironsource/y6;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/ironsource/y6;->a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public a(Lcom/unity3d/mediation/rewarded/LevelPlayReward;)V
    .registers 3

    const-string v0, "reward"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/ironsource/E6;->a:Lcom/ironsource/A6;

    invoke-virtual {v0}, Lcom/ironsource/A6;->c()Lcom/ironsource/x6;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ironsource/x6;->a(Lcom/unity3d/mediation/rewarded/LevelPlayReward;)V

    return-void
.end method

.method public b(Lcom/ironsource/u6;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    const-string p2, "adUnit"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/ironsource/E6;->c:Lcom/ironsource/u6;

    if-ne p1, p2, :cond_d

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/ironsource/E6;->c:Lcom/ironsource/u6;

    return-void

    .line 8
    :cond_d
    iget-object p1, p0, Lcom/ironsource/E6;->a:Lcom/ironsource/A6;

    const-string p2, "load failed while current ad is showing"

    invoke-virtual {p1, p2}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 4

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/ironsource/E6;->b:Lcom/ironsource/u6;

    if-ne p1, p2, :cond_15

    .line 2
    iget-object p1, p0, Lcom/ironsource/E6;->a:Lcom/ironsource/A6;

    const-string p2, "load success while current ad is showing"

    invoke-virtual {p1, p2}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public c(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 4

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/ironsource/E6;->b:Lcom/ironsource/u6;

    if-ne p1, p2, :cond_15

    .line 2
    iget-object p1, p0, Lcom/ironsource/E6;->a:Lcom/ironsource/A6;

    const-string p2, "ad info changed while current ad is showing"

    invoke-virtual {p1, p2}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public e()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/E6;->a:Lcom/ironsource/A6;

    invoke-virtual {v0}, Lcom/ironsource/A6;->c()Lcom/ironsource/x6;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/J0;->e()V

    return-void
.end method

.method public loadAd()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/E6;->a:Lcom/ironsource/A6;

    const-string v1, "load called while showing"

    invoke-virtual {v0, v1}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onClosed()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1, v0}, Lcom/ironsource/E6;->a(Lcom/ironsource/E6;Lcom/ironsource/mediationsdk/logger/IronSourceError;ILjava/lang/Object;)Lcom/ironsource/F6;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ironsource/E6;->a:Lcom/ironsource/A6;

    invoke-virtual {v1, v0}, Lcom/ironsource/A6;->a(Lcom/ironsource/F6;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/E6;->a:Lcom/ironsource/A6;

    invoke-virtual {v0}, Lcom/ironsource/A6;->c()Lcom/ironsource/x6;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/x6;->onClosed()V

    return-void
.end method
