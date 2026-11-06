###### Class com.ironsource.Yb (com.ironsource.Yb)
.class public final Lcom/ironsource/Yb;
.super Lcom/ironsource/m;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mc;
.implements Lcom/ironsource/L0;
.implements Lcom/ironsource/z0;


# annotations
.annotation build Lcom/ironsource/xb;
.end annotation


# instance fields
.field private final b:Lcom/ironsource/bc;

.field private final c:Lcom/ironsource/p0;

.field private final d:Lcom/ironsource/ic;

.field private e:Lcom/ironsource/kc;

.field private f:Lcom/unity3d/mediation/LevelPlayAdInfo;


# direct methods
.method public constructor <init>(Lcom/ironsource/bc;Lcom/ironsource/p0;Lcom/ironsource/ic;)V
    .registers 5

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adTools"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdProperties"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/ironsource/m;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Yb;->b:Lcom/ironsource/bc;

    .line 3
    iput-object p2, p0, Lcom/ironsource/Yb;->c:Lcom/ironsource/p0;

    .line 4
    iput-object p3, p0, Lcom/ironsource/Yb;->d:Lcom/ironsource/ic;

    .line 8
    invoke-direct {p0}, Lcom/ironsource/Yb;->m()Lcom/unity3d/mediation/LevelPlayAdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/Yb;->f:Lcom/unity3d/mediation/LevelPlayAdInfo;

    return-void
.end method

.method private final a(Lcom/ironsource/p0;Lcom/ironsource/ic;)Lcom/ironsource/kc;
    .registers 5

    .line 2
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 4
    sget-object v0, Lcom/ironsource/lc;->z:Lcom/ironsource/lc$a;

    invoke-virtual {p0}, Lcom/ironsource/m;->l()Lcom/ironsource/M8;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/M8;->a()Lcom/ironsource/ab;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/ironsource/lc$a;->a(Lcom/ironsource/g0;Lcom/ironsource/ab;)Lcom/ironsource/lc;

    move-result-object p2

    .line 5
    new-instance v0, Lcom/ironsource/kc;

    invoke-direct {v0, p1, p2, p0}, Lcom/ironsource/kc;-><init>(Lcom/ironsource/p0;Lcom/ironsource/lc;Lcom/ironsource/mc;)V

    return-object v0
.end method

.method private final m()Lcom/unity3d/mediation/LevelPlayAdInfo;
    .registers 11

    .line 1
    new-instance v0, Lcom/unity3d/mediation/LevelPlayAdInfo;

    .line 2
    iget-object v1, p0, Lcom/ironsource/Yb;->d:Lcom/ironsource/ic;

    invoke-virtual {v1}, Lcom/ironsource/g0;->b()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v3, p0, Lcom/ironsource/Yb;->d:Lcom/ironsource/ic;

    invoke-virtual {v3}, Lcom/ironsource/g0;->c()Ljava/lang/String;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lcom/ironsource/Yb;->d:Lcom/ironsource/ic;

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
.method public final a(Lcom/ironsource/Vb;)V
    .registers 4

    const-string v0, "nativeAdBinder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/Yb;->e:Lcom/ironsource/kc;

    if-nez v0, :cond_f

    const-string v0, "nativeAdUnit"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_f
    new-instance v1, Lcom/ironsource/dc;

    invoke-direct {v1, p1}, Lcom/ironsource/dc;-><init>(Lcom/ironsource/Vb;)V

    invoke-virtual {v0, v1, p0}, Lcom/ironsource/q0;->a(Lcom/ironsource/J;Lcom/ironsource/z0;)V

    return-void
.end method

.method public a(Lcom/ironsource/u0;)V
    .registers 3

    const-string v0, "adUnitCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/ironsource/u0;->c()Lcom/unity3d/mediation/LevelPlayAdInfo;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 7
    iput-object p1, p0, Lcom/ironsource/Yb;->f:Lcom/unity3d/mediation/LevelPlayAdInfo;

    .line 8
    iget-object v0, p0, Lcom/ironsource/Yb;->b:Lcom/ironsource/bc;

    invoke-interface {v0, p1}, Lcom/ironsource/bc;->a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    :cond_12
    return-void
.end method

.method public a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 4

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance p1, Lkotlin/NotImplementedError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An operation is not implemented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Not yet implemented"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Yb;->b:Lcom/ironsource/bc;

    invoke-interface {v0, p1}, Lcom/ironsource/bc;->onNativeAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public c(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    .line 1
    new-instance p1, Lkotlin/NotImplementedError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An operation is not implemented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Not yet implemented"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Yb;->b:Lcom/ironsource/bc;

    iget-object v1, p0, Lcom/ironsource/Yb;->f:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-interface {v0, v1}, Lcom/ironsource/bc;->b(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public final n()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/ironsource/Yb;->m()Lcom/unity3d/mediation/LevelPlayAdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/Yb;->f:Lcom/unity3d/mediation/LevelPlayAdInfo;

    .line 2
    iget-object v0, p0, Lcom/ironsource/Yb;->e:Lcom/ironsource/kc;

    if-nez v0, :cond_10

    const-string v0, "nativeAdUnit"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_10
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/q0;->a(Z)V

    return-void
.end method

.method public final o()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Yb;->c:Lcom/ironsource/p0;

    iget-object v1, p0, Lcom/ironsource/Yb;->d:Lcom/ironsource/ic;

    invoke-direct {p0, v0, v1}, Lcom/ironsource/Yb;->a(Lcom/ironsource/p0;Lcom/ironsource/ic;)Lcom/ironsource/kc;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/Yb;->e:Lcom/ironsource/kc;

    if-nez v0, :cond_12

    .line 2
    const-string v0, "nativeAdUnit"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_12
    invoke-virtual {v0, p0}, Lcom/ironsource/q0;->a(Lcom/ironsource/L0;)V

    return-void
.end method
