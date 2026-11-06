###### Class com.ironsource.C6 (com.ironsource.C6)
.class public final Lcom/ironsource/C6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/F6;


# annotations
.annotation build Lcom/ironsource/xb;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFullscreenOnLoadedStrategyLoadedState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FullscreenOnLoadedStrategyLoadedState.kt\ncom/unity3d/mediation/internal/ads/controllers/strategies/fullscreen/onLoaded/state/FullscreenOnLoadedStrategyLoadedState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,109:1\n1#2:110\n*E\n"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/A6;

.field private final b:Lcom/ironsource/u6;

.field private c:Lcom/ironsource/u6;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/A6;Lcom/ironsource/u6;Lcom/ironsource/u6;Z)V
    .registers 6

    const-string v0, "strategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentAdUnit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/C6;->a:Lcom/ironsource/A6;

    .line 3
    iput-object p2, p0, Lcom/ironsource/C6;->b:Lcom/ironsource/u6;

    .line 4
    iput-object p3, p0, Lcom/ironsource/C6;->c:Lcom/ironsource/u6;

    .line 5
    iput-boolean p4, p0, Lcom/ironsource/C6;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/A6;Lcom/ironsource/u6;Lcom/ironsource/u6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_5

    const/4 p4, 0x0

    .line 6
    :cond_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/C6;-><init>(Lcom/ironsource/A6;Lcom/ironsource/u6;Lcom/ironsource/u6;Z)V

    return-void
.end method

.method private final a()V
    .registers 9

    .line 21
    iget-object v0, p0, Lcom/ironsource/C6;->c:Lcom/ironsource/u6;

    if-nez v0, :cond_f

    .line 22
    iget-object v0, p0, Lcom/ironsource/C6;->a:Lcom/ironsource/A6;

    new-instance v1, Lcom/ironsource/B6;

    invoke-direct {v1, v0}, Lcom/ironsource/B6;-><init>(Lcom/ironsource/A6;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/A6;->a(Lcom/ironsource/F6;)V

    goto :goto_39

    .line 25
    :cond_f
    invoke-virtual {v0}, Lcom/ironsource/u6;->e()Lcom/unity3d/mediation/LevelPlayAdInfo;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 26
    new-instance v1, Lcom/ironsource/C6;

    iget-object v2, p0, Lcom/ironsource/C6;->a:Lcom/ironsource/A6;

    iget-object v3, p0, Lcom/ironsource/C6;->c:Lcom/ironsource/u6;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/C6;-><init>(Lcom/ironsource/A6;Lcom/ironsource/u6;Lcom/ironsource/u6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_34

    .line 28
    :cond_27
    new-instance v1, Lcom/ironsource/D6;

    iget-object v0, p0, Lcom/ironsource/C6;->a:Lcom/ironsource/A6;

    iget-object v2, p0, Lcom/ironsource/C6;->c:Lcom/ironsource/u6;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/ironsource/D6;-><init>(Lcom/ironsource/A6;Lcom/ironsource/u6;Z)V

    .line 30
    :goto_34
    iget-object v0, p0, Lcom/ironsource/C6;->a:Lcom/ironsource/A6;

    invoke-virtual {v0, v1}, Lcom/ironsource/A6;->a(Lcom/ironsource/F6;)V

    .line 33
    :goto_39
    iget-object v0, p0, Lcom/ironsource/C6;->a:Lcom/ironsource/A6;

    invoke-virtual {v0}, Lcom/ironsource/A6;->d()Lcom/ironsource/y6;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/y6;->a()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 6

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/ironsource/E6;

    iget-object v1, p0, Lcom/ironsource/C6;->a:Lcom/ironsource/A6;

    iget-object v2, p0, Lcom/ironsource/C6;->b:Lcom/ironsource/u6;

    iget-object v3, p0, Lcom/ironsource/C6;->c:Lcom/ironsource/u6;

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/E6;-><init>(Lcom/ironsource/A6;Lcom/ironsource/u6;Lcom/ironsource/u6;)V

    .line 2
    iget-object v1, p0, Lcom/ironsource/C6;->a:Lcom/ironsource/A6;

    invoke-virtual {v1, v0}, Lcom/ironsource/A6;->a(Lcom/ironsource/F6;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/C6;->b:Lcom/ironsource/u6;

    iget-object v1, p0, Lcom/ironsource/C6;->a:Lcom/ironsource/A6;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/u6;->a(Landroid/app/Activity;Lcom/ironsource/u6$a;)V

    return-void
.end method

.method public a(Lcom/ironsource/u6;)V
    .registers 3

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/ironsource/C6;->c:Lcom/ironsource/u6;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lcom/ironsource/C6;->c:Lcom/ironsource/u6;

    return-void

    .line 19
    :cond_11
    iget-object v0, p0, Lcom/ironsource/C6;->b:Lcom/ironsource/u6;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 20
    invoke-direct {p0}, Lcom/ironsource/C6;->a()V

    :cond_1c
    return-void
.end method

.method public a(Lcom/ironsource/u6;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    const-string p2, "adUnit"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/ironsource/C6;->b:Lcom/ironsource/u6;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 11
    iget-object p1, p0, Lcom/ironsource/C6;->a:Lcom/ironsource/A6;

    const-string p2, "show failed when loaded"

    invoke-virtual {p1, p2}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_15
    iget-object p1, p0, Lcom/ironsource/C6;->a:Lcom/ironsource/A6;

    const-string p2, "progressive show failed while current ad is loaded"

    invoke-virtual {p1, p2}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 4

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/ironsource/C6;->b:Lcom/ironsource/u6;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 5
    iget-object p1, p0, Lcom/ironsource/C6;->a:Lcom/ironsource/A6;

    const-string p2, "show success when loaded"

    invoke-virtual {p1, p2}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1a
    iget-object p1, p0, Lcom/ironsource/C6;->a:Lcom/ironsource/A6;

    const-string p2, "progressive show success while current ad is loaded"

    invoke-virtual {p1, p2}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/ironsource/u6;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    const-string p2, "adUnit"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/ironsource/C6;->c:Lcom/ironsource/u6;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/ironsource/C6;->c:Lcom/ironsource/u6;

    return-void

    .line 8
    :cond_11
    iget-object p1, p0, Lcom/ironsource/C6;->a:Lcom/ironsource/A6;

    const-string p2, "load failed after current ad is loaded"

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
    iget-object p2, p0, Lcom/ironsource/C6;->b:Lcom/ironsource/u6;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 2
    iget-object p1, p0, Lcom/ironsource/C6;->a:Lcom/ironsource/A6;

    const-string p2, "load success after current ad is loaded"

    invoke-virtual {p1, p2}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public c(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 4

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/C6;->b:Lcom/ironsource/u6;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 2
    iget-object p1, p0, Lcom/ironsource/C6;->a:Lcom/ironsource/A6;

    invoke-virtual {p1}, Lcom/ironsource/A6;->d()Lcom/ironsource/y6;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/ironsource/y6;->onAdInfoChanged(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    :cond_1b
    return-void
.end method

.method public loadAd()V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/C6;->d:Z

    if-eqz v0, :cond_c

    .line 2
    iget-object v0, p0, Lcom/ironsource/C6;->a:Lcom/ironsource/A6;

    const-string v1, "load called while current ad is loaded"

    invoke-virtual {v0, v1}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void

    :cond_c
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/ironsource/C6;->d:Z

    .line 7
    iget-object v0, p0, Lcom/ironsource/C6;->b:Lcom/ironsource/u6;

    invoke-virtual {v0}, Lcom/ironsource/u6;->e()Lcom/unity3d/mediation/LevelPlayAdInfo;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v1, p0, Lcom/ironsource/C6;->a:Lcom/ironsource/A6;

    invoke-virtual {v1}, Lcom/ironsource/A6;->d()Lcom/ironsource/y6;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ironsource/y6;->b(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    .line 13
    iget-object v0, p0, Lcom/ironsource/C6;->c:Lcom/ironsource/u6;

    if-nez v0, :cond_3c

    .line 14
    iget-object v0, p0, Lcom/ironsource/C6;->a:Lcom/ironsource/A6;

    invoke-virtual {v0}, Lcom/ironsource/A6;->b()Lcom/ironsource/v6;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/C6;->a:Lcom/ironsource/A6;

    invoke-virtual {v1}, Lcom/ironsource/A6;->c()Lcom/ironsource/x6;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/ironsource/v6;->a(ZLcom/ironsource/x6;)Lcom/ironsource/u6;

    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/ironsource/C6;->c:Lcom/ironsource/u6;

    .line 16
    iget-object v1, p0, Lcom/ironsource/C6;->a:Lcom/ironsource/A6;

    invoke-virtual {v0, v1}, Lcom/ironsource/u6;->a(Lcom/ironsource/u6$b;)V

    :cond_3c
    return-void

    .line 17
    :cond_3d
    iget-object v0, p0, Lcom/ironsource/C6;->a:Lcom/ironsource/A6;

    const-string v1, "current ad is loaded without ad info"

    invoke-virtual {v0, v1}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void
.end method
