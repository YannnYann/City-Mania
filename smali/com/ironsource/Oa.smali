###### Class com.ironsource.Oa (com.ironsource.Oa)
.class public final Lcom/ironsource/Oa;
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


# direct methods
.method public constructor <init>(Lcom/ironsource/Ja;Lcom/ironsource/S2;)V
    .registers 4

    const-string v0, "strategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentAdUnit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Oa;->a:Lcom/ironsource/Ja;

    .line 3
    iput-object p2, p0, Lcom/ironsource/Oa;->b:Lcom/ironsource/S2;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/u0;)V
    .registers 3

    const-string v0, "adUnitCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/Oa;->a:Lcom/ironsource/Ja;

    const-string v0, "Received load success while paused"

    invoke-virtual {p1, v0}, Lcom/ironsource/Ja;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Oa;->a:Lcom/ironsource/Ja;

    const-string v1, "Loading a loaded ad"

    invoke-virtual {v0, v1}, Lcom/ironsource/Ja;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    .line 2
    iget-object p1, p0, Lcom/ironsource/Oa;->a:Lcom/ironsource/Ja;

    const-string v0, "Received load failed while paused"

    invoke-virtual {p1, v0}, Lcom/ironsource/Ja;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Oa;->b:Lcom/ironsource/S2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/q0;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/Oa;->a:Lcom/ironsource/Ja;

    new-instance v1, Lcom/ironsource/La;

    invoke-direct {v1, v0}, Lcom/ironsource/La;-><init>(Lcom/ironsource/Ja;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/Ja;->a(Lcom/ironsource/Sa;)V

    return-void
.end method

.method public d()V
    .registers 1

    .line 0
    return-void
.end method

.method public f()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/ironsource/Oa;->a:Lcom/ironsource/Ja;

    .line 2
    iget-object v1, p0, Lcom/ironsource/Oa;->b:Lcom/ironsource/S2;

    .line 4
    new-instance v2, Lcom/ironsource/m3$a;

    .line 5
    sget-object v3, Lcom/ironsource/m3$b$c;->a:Lcom/ironsource/m3$b$c;

    .line 6
    invoke-direct {v2, v3}, Lcom/ironsource/m3$a;-><init>(Lcom/ironsource/m3$b;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/ironsource/Ja;->a(Lcom/ironsource/Ja;Lcom/ironsource/S2;Lcom/ironsource/m3;ZILjava/lang/Object;)V

    return-void
.end method
