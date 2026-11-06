###### Class com.ironsource.C3798q6 (com.ironsource.q6)
.class public final Lcom/ironsource/q6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/t6;


# instance fields
.field private final a:Lcom/ironsource/cb;

.field private final b:Lcom/ironsource/t4;

.field private final c:J

.field private final d:Lcom/unity3d/mediation/LevelPlayAdInfo;


# direct methods
.method public constructor <init>(Lcom/ironsource/cb;Lcom/ironsource/t4;)V
    .registers 15

    const-string v0, "adInternal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentTimeProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/q6;->a:Lcom/ironsource/cb;

    .line 3
    iput-object p2, p0, Lcom/ironsource/q6;->b:Lcom/ironsource/t4;

    .line 6
    invoke-interface {p2}, Lcom/ironsource/t4;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/q6;->c:J

    .line 9
    new-instance v2, Lcom/unity3d/mediation/LevelPlayAdInfo;

    .line 10
    invoke-virtual {p1}, Lcom/ironsource/cb;->e()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string p2, "toString(...)"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ironsource/cb;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/ironsource/cb;->d()Lcom/unity3d/mediation/LevelPlay$AdFormat;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v10, 0x78

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 11
    invoke-direct/range {v2 .. v11}, Lcom/unity3d/mediation/LevelPlayAdInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/y2;Lcom/unity3d/mediation/LevelPlayAdSize;Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, p0, Lcom/ironsource/q6;->d:Lcom/unity3d/mediation/LevelPlayAdInfo;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 11
    iget-object v0, p0, Lcom/ironsource/q6;->a:Lcom/ironsource/cb;

    const-string v1, "onAdExpired on loading state"

    invoke-virtual {v0, v1}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/unity3d/mediation/LevelPlayAdError;

    .line 2
    iget-object p2, p0, Lcom/ironsource/q6;->a:Lcom/ironsource/cb;

    invoke-virtual {p2}, Lcom/ironsource/cb;->e()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "toString(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/q6;->a:Lcom/ironsource/cb;

    invoke-virtual {v0}, Lcom/ironsource/cb;->h()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x274

    .line 4
    const-string v2, "Show is called while loading ad"

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/unity3d/mediation/LevelPlayAdError;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/ironsource/q6;->a:Lcom/ironsource/cb;

    iget-object v0, p0, Lcom/ironsource/q6;->d:Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-virtual {p2, p1, v0}, Lcom/ironsource/cb;->a(Lcom/unity3d/mediation/LevelPlayAdError;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method

.method public a(Lcom/unity3d/mediation/LevelPlayAdError;)V
    .registers 5

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/ironsource/q6;->a:Lcom/ironsource/cb;

    .line 13
    invoke-virtual {p1}, Lcom/unity3d/mediation/LevelPlayAdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdDisplayFailed on loading state with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b()Lcom/unity3d/mediation/LevelPlayAdInfo;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/q6;->d:Lcom/unity3d/mediation/LevelPlayAdInfo;

    return-object v0
.end method

.method public c()Lcom/ironsource/k0;
    .registers 3

    .line 1
    new-instance v0, Lcom/ironsource/k0$a;

    const-string v1, "Ad is loading"

    invoke-direct {v0, v1}, Lcom/ironsource/k0$a;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public loadAd()V
    .registers 6

    .line 1
    new-instance v0, Lcom/unity3d/mediation/LevelPlayAdError;

    .line 2
    iget-object v1, p0, Lcom/ironsource/q6;->a:Lcom/ironsource/cb;

    invoke-virtual {v1}, Lcom/ironsource/cb;->e()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/ironsource/q6;->a:Lcom/ironsource/cb;

    invoke-virtual {v2}, Lcom/ironsource/cb;->h()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x273

    .line 4
    const-string v4, "Load is already called"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/unity3d/mediation/LevelPlayAdError;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/ironsource/q6;->b:Lcom/ironsource/t4;

    invoke-interface {v1}, Lcom/ironsource/t4;->a()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/ironsource/q6;->c:J

    sub-long/2addr v1, v3

    .line 11
    iget-object v3, p0, Lcom/ironsource/q6;->a:Lcom/ironsource/cb;

    invoke-virtual {v3, v0, v1, v2}, Lcom/ironsource/cb;->a(Lcom/unity3d/mediation/LevelPlayAdError;J)V

    return-void
.end method

.method public onAdClicked()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/q6;->a:Lcom/ironsource/cb;

    const-string v1, "onAdClicked on loading state"

    invoke-virtual {v0, v1}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onAdClosed()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/q6;->a:Lcom/ironsource/cb;

    const-string v1, "onAdClosed on loading state"

    invoke-virtual {v0, v1}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onAdDisplayed(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 3

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/q6;->a:Lcom/ironsource/cb;

    const-string v0, "onAdDisplayed on loading state"

    invoke-virtual {p1, v0}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onAdInfoChanged(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 3

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/q6;->a:Lcom/ironsource/cb;

    const-string v0, "onAdInfoChanged on loading state"

    invoke-virtual {p1, v0}, Lcom/ironsource/cb;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoadFailed(Lcom/unity3d/mediation/LevelPlayAdError;)V
    .registers 6

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/q6;->b:Lcom/ironsource/t4;

    invoke-interface {v0}, Lcom/ironsource/t4;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/q6;->c:J

    sub-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Lcom/ironsource/q6;->a:Lcom/ironsource/cb;

    invoke-virtual {v2, p1, v0, v1}, Lcom/ironsource/cb;->a(Lcom/unity3d/mediation/LevelPlayAdError;J)V

    .line 3
    iget-object p1, p0, Lcom/ironsource/q6;->a:Lcom/ironsource/cb;

    sget-object v0, Lcom/ironsource/l6$a;->e:Lcom/ironsource/l6$a;

    invoke-virtual {p1, v0}, Lcom/ironsource/cb;->a(Lcom/ironsource/l6$a;)V

    return-void
.end method

.method public onAdLoaded(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 5

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/q6;->a:Lcom/ironsource/cb;

    new-instance v1, Lcom/ironsource/p6;

    iget-object v2, p0, Lcom/ironsource/q6;->b:Lcom/ironsource/t4;

    invoke-direct {v1, v0, p1, v2}, Lcom/ironsource/p6;-><init>(Lcom/ironsource/cb;Lcom/unity3d/mediation/LevelPlayAdInfo;Lcom/ironsource/t4;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/cb;->a(Lcom/ironsource/t6;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/q6;->a:Lcom/ironsource/cb;

    invoke-virtual {v0, p1}, Lcom/ironsource/cb;->a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void
.end method
