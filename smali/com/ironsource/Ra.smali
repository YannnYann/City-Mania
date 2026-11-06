###### Class com.ironsource.Ra (com.ironsource.Ra)
.class public final Lcom/ironsource/Ra;
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

.field private final c:Lcom/ironsource/S2;

.field private final d:J

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/Ja;Lcom/ironsource/S2;Lcom/ironsource/S2;JZ)V
    .registers 8

    const-string v0, "strategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentAdUnit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reloadingAdUnit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Ra;->a:Lcom/ironsource/Ja;

    .line 3
    iput-object p2, p0, Lcom/ironsource/Ra;->b:Lcom/ironsource/S2;

    .line 4
    iput-object p3, p0, Lcom/ironsource/Ra;->c:Lcom/ironsource/S2;

    .line 5
    iput-wide p4, p0, Lcom/ironsource/Ra;->d:J

    .line 6
    iput-boolean p6, p0, Lcom/ironsource/Ra;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/Ja;Lcom/ironsource/S2;Lcom/ironsource/S2;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_5

    const/4 p6, 0x1

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    .line 7
    invoke-direct/range {v0 .. v6}, Lcom/ironsource/Ra;-><init>(Lcom/ironsource/Ja;Lcom/ironsource/S2;Lcom/ironsource/S2;JZ)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/u0;)V
    .registers 11

    const-string v0, "adUnitCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ra;->a:Lcom/ironsource/Ja;

    invoke-virtual {v0}, Lcom/ironsource/Ja;->o()Lcom/ironsource/t4;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/t4;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/Ra;->d:J

    sub-long/2addr v0, v2

    .line 3
    new-instance v6, Lcom/ironsource/m3$c;

    .line 4
    sget-object v2, Lcom/ironsource/m3$d$d;->a:Lcom/ironsource/m3$d$d;

    .line 5
    invoke-direct {v6, v0, v1, v2}, Lcom/ironsource/m3$c;-><init>(JLcom/ironsource/m3$d;)V

    .line 8
    iget-object v2, p0, Lcom/ironsource/Ra;->a:Lcom/ironsource/Ja;

    .line 10
    iget-object v4, p0, Lcom/ironsource/Ra;->c:Lcom/ironsource/S2;

    .line 11
    iget-object v5, p0, Lcom/ironsource/Ra;->b:Lcom/ironsource/S2;

    .line 14
    iget-wide v0, p0, Lcom/ironsource/Ra;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v7, 0x0

    move-object v3, p1

    .line 15
    invoke-virtual/range {v2 .. v8}, Lcom/ironsource/Ja;->a(Lcom/ironsource/u0;Lcom/ironsource/S2;Lcom/ironsource/S2;Lcom/ironsource/m3;ZLjava/lang/Long;)V

    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ra;->a:Lcom/ironsource/Ja;

    const-string v1, "Loading an ad while reloading after timer finished"

    invoke-virtual {v0, v1}, Lcom/ironsource/Ja;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 11

    .line 2
    iget-object v0, p0, Lcom/ironsource/Ra;->a:Lcom/ironsource/Ja;

    invoke-virtual {v0}, Lcom/ironsource/Ja;->o()Lcom/ironsource/t4;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/t4;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/Ra;->d:J

    sub-long/2addr v0, v2

    .line 4
    new-instance v5, Lcom/ironsource/m3$c;

    .line 5
    sget-object v2, Lcom/ironsource/m3$d$c;->a:Lcom/ironsource/m3$d$c;

    .line 6
    invoke-direct {v5, v0, v1, v2}, Lcom/ironsource/m3$c;-><init>(JLcom/ironsource/m3$d;)V

    .line 9
    iget-object v2, p0, Lcom/ironsource/Ra;->a:Lcom/ironsource/Ja;

    .line 11
    iget-object v4, p0, Lcom/ironsource/Ra;->b:Lcom/ironsource/S2;

    .line 13
    iget-boolean v6, p0, Lcom/ironsource/Ra;->e:Z

    .line 15
    iget-wide v0, p0, Lcom/ironsource/Ra;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v7, 0x0

    move-object v3, p1

    .line 16
    invoke-virtual/range {v2 .. v8}, Lcom/ironsource/Ja;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/S2;Lcom/ironsource/m3;ZZLjava/lang/Long;)V

    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ra;->b:Lcom/ironsource/S2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/q0;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/Ra;->c:Lcom/ironsource/S2;

    invoke-virtual {v0, v1}, Lcom/ironsource/q0;->a(Z)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/Ra;->a:Lcom/ironsource/Ja;

    new-instance v1, Lcom/ironsource/La;

    invoke-direct {v1, v0}, Lcom/ironsource/La;-><init>(Lcom/ironsource/Ja;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/Ja;->a(Lcom/ironsource/Sa;)V

    return-void
.end method

.method public d()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ra;->a:Lcom/ironsource/Ja;

    .line 2
    new-instance v1, Lcom/ironsource/Oa;

    iget-object v2, p0, Lcom/ironsource/Ra;->b:Lcom/ironsource/S2;

    invoke-direct {v1, v0, v2}, Lcom/ironsource/Oa;-><init>(Lcom/ironsource/Ja;Lcom/ironsource/S2;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/ironsource/Ja;->a(Lcom/ironsource/Sa;)V

    return-void
.end method

.method public f()V
    .registers 1

    .line 0
    return-void
.end method
