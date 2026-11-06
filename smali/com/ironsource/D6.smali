###### Class com.ironsource.D6 (com.ironsource.D6)
.class public final Lcom/ironsource/D6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/F6;


# annotations
.annotation build Lcom/ironsource/xb;
.end annotation


# instance fields
.field private final a:Lcom/ironsource/A6;

.field private final b:Lcom/ironsource/u6;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/A6;Lcom/ironsource/u6;Z)V
    .registers 5

    const-string v0, "strategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentAdUnit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/D6;->a:Lcom/ironsource/A6;

    .line 3
    iput-object p2, p0, Lcom/ironsource/D6;->b:Lcom/ironsource/u6;

    .line 4
    iput-boolean p3, p0, Lcom/ironsource/D6;->c:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/D6;->a:Lcom/ironsource/A6;

    const-string v0, "show called while loading"

    invoke-virtual {p1, v0}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/u6;)V
    .registers 3

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/ironsource/D6;->a:Lcom/ironsource/A6;

    const-string v0, "ad expired while loading"

    invoke-virtual {p1, v0}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/u6;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    const-string p2, "adUnit"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/ironsource/D6;->a:Lcom/ironsource/A6;

    const-string p2, "show failed while loading"

    invoke-virtual {p1, p2}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 4

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/ironsource/D6;->a:Lcom/ironsource/A6;

    const-string p2, "show success while loading"

    invoke-virtual {p1, p2}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/ironsource/u6;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance p1, Lcom/ironsource/B6;

    iget-object v0, p0, Lcom/ironsource/D6;->a:Lcom/ironsource/A6;

    invoke-direct {p1, v0}, Lcom/ironsource/B6;-><init>(Lcom/ironsource/A6;)V

    .line 14
    iget-object v0, p0, Lcom/ironsource/D6;->a:Lcom/ironsource/A6;

    invoke-virtual {v0, p1}, Lcom/ironsource/A6;->a(Lcom/ironsource/F6;)V

    .line 16
    iget-boolean p1, p0, Lcom/ironsource/D6;->c:Z

    if-eqz p1, :cond_1e

    .line 17
    iget-object p1, p0, Lcom/ironsource/D6;->a:Lcom/ironsource/A6;

    invoke-virtual {p1}, Lcom/ironsource/A6;->d()Lcom/ironsource/y6;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/ironsource/y6;->b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_1e
    return-void
.end method

.method public b(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 7

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lcom/ironsource/D6;->c:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    .line 2
    iget-object p1, p0, Lcom/ironsource/D6;->a:Lcom/ironsource/A6;

    invoke-virtual {p1}, Lcom/ironsource/A6;->b()Lcom/ironsource/v6;

    move-result-object p1

    iget-object v1, p0, Lcom/ironsource/D6;->a:Lcom/ironsource/A6;

    invoke-virtual {v1}, Lcom/ironsource/A6;->c()Lcom/ironsource/x6;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/ironsource/v6;->a(ZLcom/ironsource/x6;)Lcom/ironsource/u6;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/ironsource/C6;

    iget-object v1, p0, Lcom/ironsource/D6;->a:Lcom/ironsource/A6;

    iget-object v2, p0, Lcom/ironsource/D6;->b:Lcom/ironsource/u6;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/ironsource/C6;-><init>(Lcom/ironsource/A6;Lcom/ironsource/u6;Lcom/ironsource/u6;Z)V

    .line 5
    iget-object v1, p0, Lcom/ironsource/D6;->a:Lcom/ironsource/A6;

    invoke-virtual {v1, v0}, Lcom/ironsource/A6;->a(Lcom/ironsource/F6;)V

    .line 7
    iget-object v0, p0, Lcom/ironsource/D6;->a:Lcom/ironsource/A6;

    invoke-virtual {v0}, Lcom/ironsource/A6;->d()Lcom/ironsource/y6;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/ironsource/y6;->b(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    .line 9
    iget-object p2, p0, Lcom/ironsource/D6;->a:Lcom/ironsource/A6;

    invoke-virtual {p1, p2}, Lcom/ironsource/u6;->a(Lcom/ironsource/u6$b;)V

    return-void

    .line 11
    :cond_3d
    new-instance p1, Lcom/ironsource/C6;

    iget-object p2, p0, Lcom/ironsource/D6;->a:Lcom/ironsource/A6;

    iget-object v1, p0, Lcom/ironsource/D6;->b:Lcom/ironsource/u6;

    const/4 v2, 0x0

    invoke-direct {p1, p2, v1, v2, v0}, Lcom/ironsource/C6;-><init>(Lcom/ironsource/A6;Lcom/ironsource/u6;Lcom/ironsource/u6;Z)V

    .line 12
    iget-object p2, p0, Lcom/ironsource/D6;->a:Lcom/ironsource/A6;

    invoke-virtual {p2, p1}, Lcom/ironsource/A6;->a(Lcom/ironsource/F6;)V

    return-void
.end method

.method public c(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 4

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/D6;->a:Lcom/ironsource/A6;

    const-string p2, "ad info changed while loading"

    invoke-virtual {p1, p2}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public loadAd()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/D6;->c:Z

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Lcom/ironsource/D6;->a:Lcom/ironsource/A6;

    const-string v1, "load called while loading"

    invoke-virtual {v0, v1}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    :cond_b
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/ironsource/D6;->c:Z

    return-void
.end method
