###### Class com.ironsource.Ua (com.ironsource.Ua)
.class public final Lcom/ironsource/Ua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Ya;


# instance fields
.field private final a:Lcom/ironsource/Ta;


# direct methods
.method public constructor <init>(Lcom/ironsource/Ta;)V
    .registers 3

    const-string v0, "strategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Ua;->a:Lcom/ironsource/Ta;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/u0;)V
    .registers 3

    const-string v0, "adUnitCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/Ua;->a:Lcom/ironsource/Ta;

    const-string v0, "Received load success before load called"

    invoke-virtual {p1, v0}, Lcom/ironsource/Ta;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ua;->a:Lcom/ironsource/Ta;

    invoke-virtual {v0}, Lcom/ironsource/Ta;->i()Lcom/ironsource/U2;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ironsource/U2;->a(Z)Lcom/ironsource/S2;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/ironsource/Ua;->a:Lcom/ironsource/Ta;

    invoke-virtual {v1, v0}, Lcom/ironsource/Ta;->a(Lcom/ironsource/S2;)V

    .line 3
    iget-object v1, p0, Lcom/ironsource/Ua;->a:Lcom/ironsource/Ta;

    new-instance v2, Lcom/ironsource/Xa;

    invoke-direct {v2, v1, v0}, Lcom/ironsource/Xa;-><init>(Lcom/ironsource/Ta;Lcom/ironsource/S2;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/Ta;->a(Lcom/ironsource/Ya;)V

    .line 4
    iget-object v1, p0, Lcom/ironsource/Ua;->a:Lcom/ironsource/Ta;

    invoke-virtual {v1}, Lcom/ironsource/Ta;->g()Lcom/ironsource/L0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/q0;->a(Lcom/ironsource/L0;)V

    return-void
.end method

.method public b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    .line 5
    iget-object p1, p0, Lcom/ironsource/Ua;->a:Lcom/ironsource/Ta;

    const-string v0, "Received load failed before load called"

    invoke-virtual {p1, v0}, Lcom/ironsource/Ta;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ua;->a:Lcom/ironsource/Ta;

    invoke-virtual {v0}, Lcom/ironsource/Ta;->k()Lcom/ironsource/S2;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/q0;->a(Z)V

    .line 2
    :cond_c
    iget-object v0, p0, Lcom/ironsource/Ua;->a:Lcom/ironsource/Ta;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/Ta;->a(Lcom/ironsource/S2;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/Ua;->a:Lcom/ironsource/Ta;

    new-instance v1, Lcom/ironsource/Va;

    invoke-direct {v1, v0}, Lcom/ironsource/Va;-><init>(Lcom/ironsource/Ta;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/Ta;->a(Lcom/ironsource/Ya;)V

    return-void
.end method
