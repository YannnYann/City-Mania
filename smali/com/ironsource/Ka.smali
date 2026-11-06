###### Class com.ironsource.Ka (com.ironsource.Ka)
.class public final Lcom/ironsource/Ka;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Sa;


# annotations
.annotation build Lcom/ironsource/xb;
.end annotation


# instance fields
.field private final a:Lcom/ironsource/Ja;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/Ja;Z)V
    .registers 4

    const-string v0, "strategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Ka;->a:Lcom/ironsource/Ja;

    .line 3
    iput-boolean p2, p0, Lcom/ironsource/Ka;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/Ja;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 4
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/ironsource/Ka;-><init>(Lcom/ironsource/Ja;Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/u0;)V
    .registers 3

    const-string v0, "adUnitCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/Ka;->a:Lcom/ironsource/Ja;

    const-string v0, "Received load success before load"

    invoke-virtual {p1, v0}, Lcom/ironsource/Ja;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ka;->a:Lcom/ironsource/Ja;

    invoke-virtual {v0}, Lcom/ironsource/Ja;->i()Lcom/ironsource/U2;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ironsource/U2;->a(Z)Lcom/ironsource/S2;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/ironsource/Na;

    .line 5
    iget-object v2, p0, Lcom/ironsource/Ka;->a:Lcom/ironsource/Ja;

    .line 7
    iget-boolean v3, p0, Lcom/ironsource/Ka;->b:Z

    .line 8
    invoke-direct {v1, v2, v0, v3}, Lcom/ironsource/Na;-><init>(Lcom/ironsource/Ja;Lcom/ironsource/S2;Z)V

    .line 13
    iget-object v2, p0, Lcom/ironsource/Ka;->a:Lcom/ironsource/Ja;

    invoke-virtual {v2, v1}, Lcom/ironsource/Ja;->a(Lcom/ironsource/Sa;)V

    .line 14
    iget-object v1, p0, Lcom/ironsource/Ka;->a:Lcom/ironsource/Ja;

    invoke-virtual {v1}, Lcom/ironsource/Ja;->g()Lcom/ironsource/L0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/q0;->a(Lcom/ironsource/L0;)V

    return-void
.end method

.method public b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    .line 15
    iget-object p1, p0, Lcom/ironsource/Ka;->a:Lcom/ironsource/Ja;

    const-string v0, "Received load failed before load"

    invoke-virtual {p1, v0}, Lcom/ironsource/Ja;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ka;->a:Lcom/ironsource/Ja;

    new-instance v1, Lcom/ironsource/La;

    invoke-direct {v1, v0}, Lcom/ironsource/La;-><init>(Lcom/ironsource/Ja;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/Ja;->a(Lcom/ironsource/Sa;)V

    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ironsource/Ka;->b:Z

    return-void
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/ironsource/Ka;->b:Z

    return-void
.end method
