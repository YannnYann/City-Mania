###### Class com.ironsource.B6 (com.ironsource.B6)
.class public final Lcom/ironsource/B6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/F6;


# annotations
.annotation build Lcom/ironsource/xb;
.end annotation


# instance fields
.field private final a:Lcom/ironsource/A6;


# direct methods
.method public constructor <init>(Lcom/ironsource/A6;)V
    .registers 3

    const-string v0, "strategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/B6;->a:Lcom/ironsource/A6;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/B6;->a:Lcom/ironsource/A6;

    const-string v0, "show called before load success"

    invoke-virtual {p1, v0}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/u6;)V
    .registers 3

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/ironsource/B6;->a:Lcom/ironsource/A6;

    const-string v0, "ad expired before load called"

    invoke-virtual {p1, v0}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/u6;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    const-string p2, "adUnit"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/ironsource/B6;->a:Lcom/ironsource/A6;

    const-string p2, "ad display failed before load called"

    invoke-virtual {p1, p2}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 4

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/ironsource/B6;->a:Lcom/ironsource/A6;

    const-string p2, "ad display success before load called"

    invoke-virtual {p1, p2}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/ironsource/u6;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    const-string p2, "adUnit"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/ironsource/B6;->a:Lcom/ironsource/A6;

    const-string p2, "load failed before load called"

    invoke-virtual {p1, p2}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 4

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/B6;->a:Lcom/ironsource/A6;

    const-string p2, "load success before load called"

    invoke-virtual {p1, p2}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/ironsource/u6;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 4

    const-string v0, "adUnit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/B6;->a:Lcom/ironsource/A6;

    const-string p2, "load success with better ad before load called"

    invoke-virtual {p1, p2}, Lcom/ironsource/A6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public loadAd()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/B6;->a:Lcom/ironsource/A6;

    invoke-virtual {v0}, Lcom/ironsource/A6;->b()Lcom/ironsource/v6;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/B6;->a:Lcom/ironsource/A6;

    invoke-virtual {v1}, Lcom/ironsource/A6;->c()Lcom/ironsource/x6;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/ironsource/v6;->a(ZLcom/ironsource/x6;)Lcom/ironsource/u6;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/ironsource/D6;

    iget-object v3, p0, Lcom/ironsource/B6;->a:Lcom/ironsource/A6;

    invoke-direct {v1, v3, v0, v2}, Lcom/ironsource/D6;-><init>(Lcom/ironsource/A6;Lcom/ironsource/u6;Z)V

    .line 3
    iget-object v2, p0, Lcom/ironsource/B6;->a:Lcom/ironsource/A6;

    invoke-virtual {v2, v1}, Lcom/ironsource/A6;->a(Lcom/ironsource/F6;)V

    .line 4
    iget-object v1, p0, Lcom/ironsource/B6;->a:Lcom/ironsource/A6;

    invoke-virtual {v0, v1}, Lcom/ironsource/u6;->a(Lcom/ironsource/u6$b;)V

    return-void
.end method
