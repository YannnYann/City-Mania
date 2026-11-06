###### Class com.ironsource.Na (com.ironsource.Na)
.class public final Lcom/ironsource/Na;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Sa;


# annotations
.annotation build Lcom/ironsource/xb;
.end annotation


# instance fields
.field private final a:Lcom/ironsource/Ja;

.field private final b:Lcom/ironsource/S2;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/Ja;Lcom/ironsource/S2;Z)V
    .registers 5

    const-string v0, "strategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentAdUnit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Na;->a:Lcom/ironsource/Ja;

    .line 3
    iput-object p2, p0, Lcom/ironsource/Na;->b:Lcom/ironsource/S2;

    .line 4
    iput-boolean p3, p0, Lcom/ironsource/Na;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/u0;)V
    .registers 10

    const-string v0, "adUnitCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/ironsource/Na;->a:Lcom/ironsource/Ja;

    .line 3
    iget-object v3, p0, Lcom/ironsource/Na;->b:Lcom/ironsource/S2;

    .line 6
    new-instance v5, Lcom/ironsource/m3$a;

    sget-object v0, Lcom/ironsource/m3$b$b;->a:Lcom/ironsource/m3$b$b;

    invoke-direct {v5, v0}, Lcom/ironsource/m3$a;-><init>(Lcom/ironsource/m3$b;)V

    .line 7
    iget-boolean v6, p0, Lcom/ironsource/Na;->c:Z

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    .line 8
    invoke-virtual/range {v1 .. v7}, Lcom/ironsource/Ja;->a(Lcom/ironsource/u0;Lcom/ironsource/S2;Lcom/ironsource/S2;Lcom/ironsource/m3;ZLjava/lang/Long;)V

    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Na;->a:Lcom/ironsource/Ja;

    const-string v1, "Loading an ad while loading"

    invoke-virtual {v0, v1}, Lcom/ironsource/Ja;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 9

    .line 2
    iget-object v0, p0, Lcom/ironsource/Na;->a:Lcom/ironsource/Ja;

    .line 4
    iget-object v2, p0, Lcom/ironsource/Na;->b:Lcom/ironsource/S2;

    .line 5
    new-instance v3, Lcom/ironsource/m3$a;

    sget-object v1, Lcom/ironsource/m3$b$a;->a:Lcom/ironsource/m3$b$a;

    invoke-direct {v3, v1}, Lcom/ironsource/m3$a;-><init>(Lcom/ironsource/m3$b;)V

    .line 6
    iget-boolean v5, p0, Lcom/ironsource/Na;->c:Z

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    .line 7
    invoke-virtual/range {v0 .. v6}, Lcom/ironsource/Ja;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/S2;Lcom/ironsource/m3;ZZLjava/lang/Long;)V

    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Na;->b:Lcom/ironsource/S2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/q0;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/Na;->a:Lcom/ironsource/Ja;

    new-instance v1, Lcom/ironsource/La;

    invoke-direct {v1, v0}, Lcom/ironsource/La;-><init>(Lcom/ironsource/Ja;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/Ja;->a(Lcom/ironsource/Sa;)V

    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ironsource/Na;->c:Z

    return-void
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/ironsource/Na;->c:Z

    return-void
.end method
