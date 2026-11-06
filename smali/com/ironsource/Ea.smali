###### Class com.ironsource.Ea (com.ironsource.Ea)
.class public final Lcom/ironsource/Ea;
.super Lcom/ironsource/m;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/V2;
.implements Lcom/ironsource/Ga;


# annotations
.annotation build Lcom/ironsource/xb;
.end annotation


# instance fields
.field private final b:Lcom/ironsource/p0;

.field private final c:Lcom/ironsource/Q2;

.field private final d:Lcom/ironsource/d9;

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/H2;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/unity3d/mediation/LevelPlayAdInfo;

.field private final g:Lcom/ironsource/Fa;


# direct methods
.method public static synthetic $r8$lambda$5Ho41_9rXezKlrc4BFqI0hd6kUw(Lcom/ironsource/Ea;Z)Lcom/ironsource/S2;
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/Ea;->a(Lcom/ironsource/Ea;Z)Lcom/ironsource/S2;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/ironsource/H2;Lcom/ironsource/p0;Lcom/ironsource/Q2;Lcom/ironsource/d3;Lcom/ironsource/d9;)V
    .registers 15

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adTools"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerAdProperties"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerViewContainer"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "impressionDataListenerHolder"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/ironsource/m;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/ironsource/Ea;->b:Lcom/ironsource/p0;

    .line 3
    iput-object p3, p0, Lcom/ironsource/Ea;->c:Lcom/ironsource/Q2;

    .line 5
    iput-object p5, p0, Lcom/ironsource/Ea;->d:Lcom/ironsource/d9;

    .line 8
    new-instance p5, Ljava/lang/ref/WeakReference;

    invoke-direct {p5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p5, p0, Lcom/ironsource/Ea;->e:Ljava/lang/ref/WeakReference;

    .line 9
    invoke-direct {p0}, Lcom/ironsource/Ea;->n()Lcom/unity3d/mediation/LevelPlayAdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/Ea;->f:Lcom/unity3d/mediation/LevelPlayAdInfo;

    .line 12
    sget-object v0, Lcom/ironsource/Za;->a:Lcom/ironsource/Za;

    .line 15
    invoke-virtual {p3}, Lcom/ironsource/g0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ironsource/p0;->d(Ljava/lang/String;)Lcom/ironsource/Za$a;

    move-result-object v3

    .line 17
    invoke-direct {p0}, Lcom/ironsource/Ea;->m()Lcom/ironsource/U2;

    move-result-object v5

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v4, p0

    move-object v1, p2

    move-object v2, p4

    .line 18
    invoke-static/range {v0 .. v8}, Lcom/ironsource/Za;->a(Lcom/ironsource/Za;Lcom/ironsource/p0;Lcom/ironsource/d3;Lcom/ironsource/Za$a;Lcom/ironsource/Ga;Lcom/ironsource/U2;Lcom/ironsource/t4;ILjava/lang/Object;)Lcom/ironsource/Fa;

    move-result-object p1

    iput-object p1, v4, Lcom/ironsource/Ea;->g:Lcom/ironsource/Fa;

    return-void
.end method

.method private static final a(Lcom/ironsource/Ea;Z)Lcom/ironsource/S2;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ea;->b:Lcom/ironsource/p0;

    iget-object v1, p0, Lcom/ironsource/Ea;->c:Lcom/ironsource/Q2;

    invoke-direct {p0, v0, v1, p1}, Lcom/ironsource/Ea;->a(Lcom/ironsource/p0;Lcom/ironsource/Q2;Z)Lcom/ironsource/S2;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lcom/ironsource/p0;Lcom/ironsource/Q2;Z)Lcom/ironsource/S2;
    .registers 6

    .line 2
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 4
    sget-object v0, Lcom/ironsource/T2;->A:Lcom/ironsource/T2$a;

    .line 5
    invoke-virtual {p0}, Lcom/ironsource/m;->l()Lcom/ironsource/M8;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/M8;->a()Lcom/ironsource/ab;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p2, v1, p3}, Lcom/ironsource/T2$a;->a(Lcom/ironsource/Q2;Lcom/ironsource/ab;Z)Lcom/ironsource/T2;

    move-result-object p2

    .line 8
    new-instance p3, Lcom/ironsource/S2;

    iget-object v0, p0, Lcom/ironsource/Ea;->d:Lcom/ironsource/d9;

    invoke-direct {p3, p1, p2, p0, v0}, Lcom/ironsource/S2;-><init>(Lcom/ironsource/p0;Lcom/ironsource/T2;Lcom/ironsource/V2;Lcom/ironsource/d9;)V

    return-object p3
.end method

.method private final m()Lcom/ironsource/U2;
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/Ea$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ironsource/Ea$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/Ea;)V

    return-object v0
.end method

.method private final n()Lcom/unity3d/mediation/LevelPlayAdInfo;
    .registers 11

    .line 1
    new-instance v0, Lcom/unity3d/mediation/LevelPlayAdInfo;

    .line 2
    iget-object v1, p0, Lcom/ironsource/Ea;->c:Lcom/ironsource/Q2;

    invoke-virtual {v1}, Lcom/ironsource/g0;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v3, p0, Lcom/ironsource/Ea;->c:Lcom/ironsource/Q2;

    invoke-virtual {v3}, Lcom/ironsource/g0;->c()Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lcom/ironsource/Ea;->c:Lcom/ironsource/Q2;

    invoke-virtual {v4}, Lcom/ironsource/g0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSource$a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x78

    const/4 v9, 0x0

    move-object v2, v3

    move-object v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 5
    invoke-direct/range {v0 .. v9}, Lcom/unity3d/mediation/LevelPlayAdInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/y2;Lcom/unity3d/mediation/LevelPlayAdSize;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 6

    .line 9
    iget-object v0, p0, Lcom/ironsource/Ea;->e:Ljava/lang/ref/WeakReference;

    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/H2;

    if-eqz v0, :cond_27

    .line 12
    new-instance v1, Lcom/unity3d/mediation/LevelPlayAdError;

    .line 13
    iget-object v2, p0, Lcom/ironsource/Ea;->c:Lcom/ironsource/Q2;

    invoke-virtual {v2}, Lcom/ironsource/g0;->b()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ironsource/Ea;->c:Lcom/ironsource/Q2;

    invoke-virtual {v3}, Lcom/ironsource/g0;->c()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-direct {v1, p1, v2, v3}, Lcom/unity3d/mediation/LevelPlayAdError;-><init>(Lcom/ironsource/mediationsdk/logger/IronSourceError;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-interface {v0, v1}, Lcom/ironsource/H2;->a(Lcom/unity3d/mediation/LevelPlayAdError;)V

    :cond_27
    return-void
.end method

.method public final b()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ea;->g:Lcom/ironsource/Fa;

    invoke-interface {v0}, Lcom/ironsource/Fa;->b()V

    return-void
.end method

.method public final c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ea;->g:Lcom/ironsource/Fa;

    invoke-interface {v0}, Lcom/ironsource/Fa;->c()V

    return-void
.end method

.method public final d()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ea;->g:Lcom/ironsource/Fa;

    invoke-interface {v0}, Lcom/ironsource/Fa;->d()V

    return-void
.end method

.method public d(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 7

    .line 2
    iget-object v0, p0, Lcom/ironsource/Ea;->e:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/H2;

    if-eqz v0, :cond_29

    .line 5
    iget-object v1, p0, Lcom/ironsource/Ea;->f:Lcom/unity3d/mediation/LevelPlayAdInfo;

    .line 6
    new-instance v2, Lcom/unity3d/mediation/LevelPlayAdError;

    .line 7
    iget-object v3, p0, Lcom/ironsource/Ea;->c:Lcom/ironsource/Q2;

    invoke-virtual {v3}, Lcom/ironsource/g0;->b()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ironsource/Ea;->c:Lcom/ironsource/Q2;

    invoke-virtual {v4}, Lcom/ironsource/g0;->c()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-direct {v2, p1, v3, v4}, Lcom/unity3d/mediation/LevelPlayAdError;-><init>(Lcom/ironsource/mediationsdk/logger/IronSourceError;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-interface {v0, v1, v2}, Lcom/ironsource/H2;->a(Lcom/unity3d/mediation/LevelPlayAdInfo;Lcom/unity3d/mediation/LevelPlayAdError;)V

    :cond_29
    return-void
.end method

.method public e()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/Ea;->onAdClicked()V

    return-void
.end method

.method public final f()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ea;->g:Lcom/ironsource/Fa;

    invoke-interface {v0}, Lcom/ironsource/Fa;->f()V

    return-void
.end method

.method public bridge synthetic g()Lkotlin/Unit;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/Ea;->o()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public bridge synthetic h()Lkotlin/Unit;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/Ea;->q()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public i()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ea;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/H2;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/ironsource/Ea;->f:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-interface {v0, v1}, Lcom/ironsource/H2;->a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    :cond_f
    return-void
.end method

.method public bridge synthetic j()Lkotlin/Unit;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/Ea;->p()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public k()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ea;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/H2;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/ironsource/Ea;->f:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-interface {v0, v1}, Lcom/ironsource/H2;->c(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    :cond_f
    return-void
.end method

.method public o()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/Ea;->onAdLeftApplication()V

    return-void
.end method

.method public onAdClicked()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ea;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/H2;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/ironsource/Ea;->f:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-interface {v0, v1}, Lcom/ironsource/H2;->d(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    :cond_f
    return-void
.end method

.method public onAdDisplayed(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 3

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/ironsource/Ea;->f:Lcom/unity3d/mediation/LevelPlayAdInfo;

    .line 2
    iget-object p1, p0, Lcom/ironsource/Ea;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/H2;

    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/ironsource/Ea;->f:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-interface {p1, v0}, Lcom/ironsource/H2;->b(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    :cond_16
    return-void
.end method

.method public onAdLeftApplication()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ea;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/H2;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/ironsource/Ea;->f:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-interface {v0, v1}, Lcom/ironsource/H2;->e(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    :cond_f
    return-void
.end method

.method public onAdLoaded(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 4

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/ironsource/Ea;->f:Lcom/unity3d/mediation/LevelPlayAdInfo;

    .line 2
    iget-object v0, p0, Lcom/ironsource/Ea;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/H2;

    if-eqz v0, :cond_15

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/ironsource/H2;->a(Lcom/unity3d/mediation/LevelPlayAdInfo;Z)V

    :cond_15
    return-void
.end method

.method public p()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/Ea;->k()V

    return-void
.end method

.method public q()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/Ea;->i()V

    return-void
.end method

###### Class com.ironsource.Ea$$ExternalSyntheticLambda0 (com.ironsource.Ea$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/Ea$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/ironsource/U2;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/Ea;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/Ea;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Ea$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/Ea;

    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/ironsource/S2;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/Ea$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/Ea;

    invoke-static {v0, p1}, Lcom/ironsource/Ea;->$r8$lambda$5Ho41_9rXezKlrc4BFqI0hd6kUw(Lcom/ironsource/Ea;Z)Lcom/ironsource/S2;

    move-result-object p1

    return-object p1
.end method
