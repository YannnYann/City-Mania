###### Class com.ironsource.N6 (com.ironsource.N6)
.class public final Lcom/ironsource/N6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/z6;
.implements Lcom/ironsource/u6$b;
.implements Lcom/ironsource/u6$a;


# annotations
.annotation build Lcom/ironsource/xb;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFullscreenSingleLoadingStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FullscreenSingleLoadingStrategy.kt\ncom/unity3d/mediation/internal/ads/controllers/strategies/fullscreen/FullscreenSingleLoadingStrategy\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,59:1\n1#2:60\n*E\n"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/p0;

.field private final b:Lcom/ironsource/z6$a;

.field private final c:Lcom/ironsource/v6;

.field private final d:Lcom/ironsource/x6;

.field private final e:Lcom/ironsource/y6;

.field private f:Lcom/ironsource/u6;


# direct methods
.method public constructor <init>(Lcom/ironsource/p0;Lcom/ironsource/z6$a;Lcom/ironsource/v6;Lcom/ironsource/x6;Lcom/ironsource/y6;)V
    .registers 7

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullscreenAdUnitFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullscreenAdUnitListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/N6;->a:Lcom/ironsource/p0;

    .line 3
    iput-object p2, p0, Lcom/ironsource/N6;->b:Lcom/ironsource/z6$a;

    .line 4
    iput-object p3, p0, Lcom/ironsource/N6;->c:Lcom/ironsource/v6;

    .line 5
    iput-object p4, p0, Lcom/ironsource/N6;->d:Lcom/ironsource/x6;

    .line 6
    iput-object p5, p0, Lcom/ironsource/N6;->e:Lcom/ironsource/y6;

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/p0;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/N6;->a:Lcom/ironsource/p0;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/N6;->f:Lcom/ironsource/u6;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1, p0}, Lcom/ironsource/u6;->a(Landroid/app/Activity;Lcom/ironsource/u6$a;)V

    :cond_c
    return-void
.end method

.method public a(Lcom/ironsource/u6;)V
    .registers 3

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/ironsource/N6;->f:Lcom/ironsource/u6;

    .line 4
    iget-object p1, p0, Lcom/ironsource/N6;->e:Lcom/ironsource/y6;

    invoke-interface {p1}, Lcom/ironsource/y6;->a()V

    return-void
.end method

.method public a(Lcom/ironsource/u6;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/ironsource/N6;->e:Lcom/ironsource/y6;

    invoke-interface {p1, p2}, Lcom/ironsource/y6;->c(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public a(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 4

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/ironsource/N6;->e:Lcom/ironsource/y6;

    invoke-interface {p1, p2}, Lcom/ironsource/y6;->a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public final b()Lcom/ironsource/z6$a;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/N6;->b:Lcom/ironsource/z6$a;

    return-object v0
.end method

.method public b(Lcom/ironsource/u6;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/ironsource/N6;->e:Lcom/ironsource/y6;

    invoke-interface {p1, p2}, Lcom/ironsource/y6;->b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public b(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 4

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/ironsource/N6;->e:Lcom/ironsource/y6;

    invoke-interface {p1, p2}, Lcom/ironsource/y6;->b(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public c(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 4

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/N6;->e:Lcom/ironsource/y6;

    invoke-interface {p1, p2}, Lcom/ironsource/y6;->onAdInfoChanged(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public loadAd()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/N6;->c:Lcom/ironsource/v6;

    iget-object v1, p0, Lcom/ironsource/N6;->d:Lcom/ironsource/x6;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/ironsource/v6;->a(ZLcom/ironsource/x6;)Lcom/ironsource/u6;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/u6;->a(Lcom/ironsource/u6$b;)V

    .line 2
    iput-object v0, p0, Lcom/ironsource/N6;->f:Lcom/ironsource/u6;

    return-void
.end method
