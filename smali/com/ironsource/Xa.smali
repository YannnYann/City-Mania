###### Class com.ironsource.Xa (com.ironsource.Xa)
.class public final Lcom/ironsource/Xa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Ya;


# instance fields
.field private final a:Lcom/ironsource/Ta;

.field private final b:Lcom/ironsource/S2;


# direct methods
.method public constructor <init>(Lcom/ironsource/Ta;Lcom/ironsource/S2;)V
    .registers 4

    const-string v0, "strategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Xa;->a:Lcom/ironsource/Ta;

    .line 3
    iput-object p2, p0, Lcom/ironsource/Xa;->b:Lcom/ironsource/S2;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/u0;)V
    .registers 4

    const-string v0, "adUnitCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/Xa;->a:Lcom/ironsource/Ta;

    iget-object v1, p0, Lcom/ironsource/Xa;->b:Lcom/ironsource/S2;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/Ta;->a(Lcom/ironsource/u0;Lcom/ironsource/S2;)V

    .line 2
    iget-object p1, p0, Lcom/ironsource/Xa;->a:Lcom/ironsource/Ta;

    new-instance v0, Lcom/ironsource/Wa;

    iget-object v1, p0, Lcom/ironsource/Xa;->b:Lcom/ironsource/S2;

    invoke-direct {v0, p1, v1}, Lcom/ironsource/Wa;-><init>(Lcom/ironsource/Ta;Lcom/ironsource/S2;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/Ta;->a(Lcom/ironsource/Ya;)V

    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Xa;->a:Lcom/ironsource/Ta;

    const-string v1, "Loading an ad while loading"

    invoke-virtual {v0, v1}, Lcom/ironsource/Ta;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    .line 2
    iget-object v0, p0, Lcom/ironsource/Xa;->a:Lcom/ironsource/Ta;

    invoke-virtual {v0, p1}, Lcom/ironsource/Ta;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 3
    iget-object p1, p0, Lcom/ironsource/Xa;->b:Lcom/ironsource/S2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ironsource/q0;->a(Z)V

    .line 4
    iget-object p1, p0, Lcom/ironsource/Xa;->a:Lcom/ironsource/Ta;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ironsource/Ta;->a(Lcom/ironsource/S2;)V

    .line 5
    iget-object p1, p0, Lcom/ironsource/Xa;->a:Lcom/ironsource/Ta;

    new-instance v0, Lcom/ironsource/Va;

    invoke-direct {v0, p1}, Lcom/ironsource/Va;-><init>(Lcom/ironsource/Ta;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/Ta;->a(Lcom/ironsource/Ya;)V

    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Xa;->b:Lcom/ironsource/S2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/q0;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/Xa;->a:Lcom/ironsource/Ta;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/Ta;->a(Lcom/ironsource/S2;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/Xa;->a:Lcom/ironsource/Ta;

    new-instance v1, Lcom/ironsource/Va;

    invoke-direct {v1, v0}, Lcom/ironsource/Va;-><init>(Lcom/ironsource/Ta;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/Ta;->a(Lcom/ironsource/Ya;)V

    return-void
.end method
