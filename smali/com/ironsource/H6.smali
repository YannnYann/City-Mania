###### Class com.ironsource.H6 (com.ironsource.H6)
.class public final Lcom/ironsource/H6;
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

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/G6;Lcom/ironsource/u6;Z)V
    .registers 5

    const-string v0, "strategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/H6;->a:Lcom/ironsource/G6;

    .line 3
    iput-object p2, p0, Lcom/ironsource/H6;->b:Lcom/ironsource/u6;

    .line 4
    iput-boolean p3, p0, Lcom/ironsource/H6;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/G6;Lcom/ironsource/u6;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    .line 5
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/H6;-><init>(Lcom/ironsource/G6;Lcom/ironsource/u6;Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 5
    iget-boolean v0, p0, Lcom/ironsource/H6;->c:Z

    if-eqz v0, :cond_7

    const-string v0, "ad expired on expired ad"

    goto :goto_9

    :cond_7
    const-string v0, "ad expired before load called"

    .line 6
    :goto_9
    iget-object v1, p0, Lcom/ironsource/H6;->a:Lcom/ironsource/G6;

    invoke-virtual {v1, v0}, Lcom/ironsource/G6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 5

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lcom/ironsource/H6;->c:Z

    if-eqz p1, :cond_c

    const-string p1, "Show called on expired ad"

    goto :goto_e

    :cond_c
    const-string p1, "Show called before load success"

    .line 2
    :goto_e
    iget-object v0, p0, Lcom/ironsource/H6;->a:Lcom/ironsource/G6;

    invoke-virtual {v0}, Lcom/ironsource/G6;->d()Lcom/ironsource/y6;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v2, 0x274

    invoke-direct {v1, v2, p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 4
    invoke-interface {v0, v1}, Lcom/ironsource/y6;->c(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 3

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-boolean p1, p0, Lcom/ironsource/H6;->c:Z

    if-eqz p1, :cond_c

    const-string p1, "show success on expired ad"

    goto :goto_e

    :cond_c
    const-string p1, "show success before load called"

    .line 8
    :goto_e
    iget-object v0, p0, Lcom/ironsource/H6;->a:Lcom/ironsource/G6;

    invoke-virtual {v0, p1}, Lcom/ironsource/G6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    .line 1
    iget-boolean p1, p0, Lcom/ironsource/H6;->c:Z

    if-eqz p1, :cond_7

    const-string p1, "load failed on expired ad"

    goto :goto_9

    :cond_7
    const-string p1, "load failed before load called"

    .line 2
    :goto_9
    iget-object v0, p0, Lcom/ironsource/H6;->a:Lcom/ironsource/G6;

    invoke-virtual {v0, p1}, Lcom/ironsource/G6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 3

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-boolean p1, p0, Lcom/ironsource/H6;->c:Z

    if-eqz p1, :cond_c

    const-string p1, "load with better ad on expired ad"

    goto :goto_e

    .line 4
    :cond_c
    const-string p1, "load success with better ad before load success"

    .line 5
    :goto_e
    iget-object v0, p0, Lcom/ironsource/H6;->a:Lcom/ironsource/G6;

    invoke-virtual {v0, p1}, Lcom/ironsource/G6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    .line 3
    iget-boolean p1, p0, Lcom/ironsource/H6;->c:Z

    if-eqz p1, :cond_7

    const-string p1, "show failed on expired ad"

    goto :goto_9

    :cond_7
    const-string p1, "show failed before load called"

    .line 4
    :goto_9
    iget-object v0, p0, Lcom/ironsource/H6;->a:Lcom/ironsource/G6;

    invoke-virtual {v0, p1}, Lcom/ironsource/G6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 3

    const-string v0, "adInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Lcom/ironsource/H6;->c:Z

    if-eqz p1, :cond_c

    const-string p1, "load success on expired ad"

    goto :goto_e

    :cond_c
    const-string p1, "load success before load called"

    .line 2
    :goto_e
    iget-object v0, p0, Lcom/ironsource/H6;->a:Lcom/ironsource/G6;

    invoke-virtual {v0, p1}, Lcom/ironsource/G6;->a(Ljava/lang/String;)V

    return-void
.end method

.method public loadAd()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/H6;->a:Lcom/ironsource/G6;

    invoke-virtual {v0}, Lcom/ironsource/G6;->b()Lcom/ironsource/v6;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/H6;->a:Lcom/ironsource/G6;

    invoke-virtual {v1}, Lcom/ironsource/G6;->c()Lcom/ironsource/x6;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/ironsource/v6;->a(ZLcom/ironsource/x6;)Lcom/ironsource/u6;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ironsource/H6;->a:Lcom/ironsource/G6;

    new-instance v2, Lcom/ironsource/L6;

    invoke-direct {v2, v1, v0}, Lcom/ironsource/L6;-><init>(Lcom/ironsource/G6;Lcom/ironsource/u6;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/G6;->a(Lcom/ironsource/M6;)V

    .line 3
    iget-object v1, p0, Lcom/ironsource/H6;->a:Lcom/ironsource/G6;

    invoke-virtual {v0, v1}, Lcom/ironsource/u6;->a(Lcom/ironsource/u6$b;)V

    return-void
.end method
