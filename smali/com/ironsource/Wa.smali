###### Class com.ironsource.Wa (com.ironsource.Wa)
.class public final Lcom/ironsource/Wa;
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
    iput-object p1, p0, Lcom/ironsource/Wa;->a:Lcom/ironsource/Ta;

    .line 3
    iput-object p2, p0, Lcom/ironsource/Wa;->b:Lcom/ironsource/S2;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/u0;)V
    .registers 3

    const-string v0, "adUnitCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/ironsource/Wa;->a:Lcom/ironsource/Ta;

    const-string v0, "Ad unit is already loaded"

    invoke-virtual {p1, v0}, Lcom/ironsource/Ta;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Wa;->a:Lcom/ironsource/Ta;

    const-string v1, "Loading a loaded ad"

    invoke-virtual {v0, v1}, Lcom/ironsource/Ta;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3

    .line 2
    iget-object p1, p0, Lcom/ironsource/Wa;->a:Lcom/ironsource/Ta;

    const-string v0, "Ad unit is already loaded"

    invoke-virtual {p1, v0}, Lcom/ironsource/Ta;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Wa;->b:Lcom/ironsource/S2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/q0;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/Wa;->a:Lcom/ironsource/Ta;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/Ta;->a(Lcom/ironsource/S2;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/Wa;->a:Lcom/ironsource/Ta;

    new-instance v1, Lcom/ironsource/Va;

    invoke-direct {v1, v0}, Lcom/ironsource/Va;-><init>(Lcom/ironsource/Ta;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/Ta;->a(Lcom/ironsource/Ya;)V

    return-void
.end method
