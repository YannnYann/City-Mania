###### Class com.ironsource.Pa (com.ironsource.Pa)
.class public final Lcom/ironsource/Pa;
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

.field private f:Lcom/ironsource/qb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ironsource/qb<",
            "Lcom/unity3d/mediation/LevelPlayAdInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/ironsource/Ff$a;


# direct methods
.method public static synthetic $r8$lambda$6ss2b-UZGTHi1lgrkk8CosXs4sg(Lcom/ironsource/Pa;)Lkotlin/Unit;
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/Pa;->a(Lcom/ironsource/Pa;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

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
    iput-object p1, p0, Lcom/ironsource/Pa;->a:Lcom/ironsource/Ja;

    .line 3
    iput-object p2, p0, Lcom/ironsource/Pa;->b:Lcom/ironsource/S2;

    .line 4
    iput-object p3, p0, Lcom/ironsource/Pa;->c:Lcom/ironsource/S2;

    .line 5
    iput-wide p4, p0, Lcom/ironsource/Pa;->d:J

    .line 6
    iput-boolean p6, p0, Lcom/ironsource/Pa;->e:Z

    .line 12
    invoke-direct {p0}, Lcom/ironsource/Pa;->g()V

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

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/ironsource/Pa;-><init>(Lcom/ironsource/Ja;Lcom/ironsource/S2;Lcom/ironsource/S2;JZ)V

    return-void
.end method

.method private static final a(Lcom/ironsource/Pa;)Lkotlin/Unit;
    .registers 2

    const-string v0, "$this$weakScheduleOnLevelPlay"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/ironsource/Pa;->e()V

    .line 39
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 11

    .line 20
    iget-object v0, p0, Lcom/ironsource/Pa;->a:Lcom/ironsource/Ja;

    invoke-virtual {v0}, Lcom/ironsource/Ja;->o()Lcom/ironsource/t4;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/t4;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/Pa;->d:J

    sub-long/2addr v0, v2

    .line 21
    iget-object v2, p0, Lcom/ironsource/Pa;->a:Lcom/ironsource/Ja;

    .line 23
    iget-object v4, p0, Lcom/ironsource/Pa;->b:Lcom/ironsource/S2;

    .line 25
    new-instance v5, Lcom/ironsource/m3$c;

    .line 26
    sget-object v3, Lcom/ironsource/m3$d$g;->a:Lcom/ironsource/m3$d$g;

    .line 27
    invoke-direct {v5, v0, v1, v3}, Lcom/ironsource/m3$c;-><init>(JLcom/ironsource/m3$d;)V

    .line 29
    iget-boolean v6, p0, Lcom/ironsource/Pa;->e:Z

    .line 31
    iget-wide v0, p0, Lcom/ironsource/Pa;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v7, 0x0

    move-object v3, p1

    .line 32
    invoke-virtual/range {v2 .. v8}, Lcom/ironsource/Ja;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/S2;Lcom/ironsource/m3;ZZLjava/lang/Long;)V

    return-void
.end method

.method private final a(Lcom/ironsource/qb;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/qb<",
            "Lcom/unity3d/mediation/LevelPlayAdInfo;",
            ">;)V"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/ironsource/Pa;->f:Lcom/ironsource/qb;

    if-eqz v0, :cond_24

    .line 34
    iget-object v0, p0, Lcom/ironsource/Pa;->a:Lcom/ironsource/Ja;

    invoke-static {p1}, Lcom/ironsource/Qa;->a(Lcom/ironsource/qb;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received excessive load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " while reloading"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/Ja;->a(Ljava/lang/String;)V

    return-void

    .line 37
    :cond_24
    iput-object p1, p0, Lcom/ironsource/Pa;->f:Lcom/ironsource/qb;

    return-void
.end method

.method private final a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .registers 11

    .line 6
    iget-object v0, p0, Lcom/ironsource/Pa;->a:Lcom/ironsource/Ja;

    invoke-virtual {v0}, Lcom/ironsource/Ja;->o()Lcom/ironsource/t4;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/t4;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/Pa;->d:J

    sub-long/2addr v0, v2

    .line 7
    new-instance v3, Lcom/ironsource/u0;

    iget-object v2, p0, Lcom/ironsource/Pa;->c:Lcom/ironsource/S2;

    invoke-direct {v3, v2, p1}, Lcom/ironsource/u0;-><init>(Lcom/ironsource/q0;Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    .line 8
    iget-object v2, p0, Lcom/ironsource/Pa;->a:Lcom/ironsource/Ja;

    .line 10
    iget-object v4, p0, Lcom/ironsource/Pa;->c:Lcom/ironsource/S2;

    .line 11
    iget-object v5, p0, Lcom/ironsource/Pa;->b:Lcom/ironsource/S2;

    .line 13
    new-instance v6, Lcom/ironsource/m3$c;

    .line 14
    sget-object p1, Lcom/ironsource/m3$d$h;->a:Lcom/ironsource/m3$d$h;

    .line 15
    invoke-direct {v6, v0, v1, p1}, Lcom/ironsource/m3$c;-><init>(JLcom/ironsource/m3$d;)V

    .line 18
    iget-wide v0, p0, Lcom/ironsource/Pa;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v7, 0x0

    .line 19
    invoke-virtual/range {v2 .. v8}, Lcom/ironsource/Ja;->a(Lcom/ironsource/u0;Lcom/ironsource/S2;Lcom/ironsource/S2;Lcom/ironsource/m3;ZLjava/lang/Long;)V

    return-void
.end method

.method private final e()V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/ironsource/Pa;->f:Lcom/ironsource/qb;

    if-nez v0, :cond_17

    .line 4
    iget-object v2, p0, Lcom/ironsource/Pa;->a:Lcom/ironsource/Ja;

    .line 5
    new-instance v1, Lcom/ironsource/Ra;

    .line 7
    iget-object v3, p0, Lcom/ironsource/Pa;->b:Lcom/ironsource/S2;

    .line 8
    iget-object v4, p0, Lcom/ironsource/Pa;->c:Lcom/ironsource/S2;

    .line 9
    iget-wide v5, p0, Lcom/ironsource/Pa;->d:J

    .line 10
    iget-boolean v7, p0, Lcom/ironsource/Pa;->e:Z

    .line 11
    invoke-direct/range {v1 .. v7}, Lcom/ironsource/Ra;-><init>(Lcom/ironsource/Ja;Lcom/ironsource/S2;Lcom/ironsource/S2;JZ)V

    .line 12
    invoke-virtual {v2, v1}, Lcom/ironsource/Ja;->a(Lcom/ironsource/Sa;)V

    return-void

    .line 20
    :cond_17
    instance-of v1, v0, Lcom/ironsource/qb$b;

    if-eqz v1, :cond_27

    check-cast v0, Lcom/ironsource/qb$b;

    invoke-virtual {v0}, Lcom/ironsource/qb$b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/mediation/LevelPlayAdInfo;

    invoke-direct {p0, v0}, Lcom/ironsource/Pa;->a(Lcom/unity3d/mediation/LevelPlayAdInfo;)V

    return-void

    .line 21
    :cond_27
    instance-of v1, v0, Lcom/ironsource/qb$a;

    if-eqz v1, :cond_35

    check-cast v0, Lcom/ironsource/qb$a;

    invoke-virtual {v0}, Lcom/ironsource/qb$a;->b()Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/Pa;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void

    .line 22
    :cond_35
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final g()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/Pa;->a:Lcom/ironsource/Ja;

    invoke-virtual {v0}, Lcom/ironsource/Ja;->n()Lcom/ironsource/Ff;

    move-result-object v0

    .line 3
    sget-object v1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v1, p0, Lcom/ironsource/Pa;->a:Lcom/ironsource/Ja;

    invoke-virtual {v1}, Lcom/ironsource/Ja;->k()J

    move-result-wide v1

    sget-object v3, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v1, v2, v3}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v1

    new-instance v3, Lcom/ironsource/Pa$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/ironsource/Pa$$ExternalSyntheticLambda0;-><init>()V

    .line 4
    invoke-interface {v0, p0, v1, v2, v3}, Lcom/ironsource/Ff;->a(Ljava/lang/Object;JLkotlin/jvm/functions/Function1;)Lcom/ironsource/Ff$a;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/ironsource/Pa;->g:Lcom/ironsource/Ff$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/u0;)V
    .registers 5

    const-string v0, "adUnitCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/ironsource/u0;->c()Lcom/unity3d/mediation/LevelPlayAdInfo;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 3
    new-instance v0, Lcom/ironsource/qb$b;

    invoke-direct {v0, p1}, Lcom/ironsource/qb$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/ironsource/Pa;->a(Lcom/ironsource/qb;)V

    return-void

    .line 5
    :cond_14
    new-instance p1, Lcom/ironsource/qb$a;

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/4 v1, 0x0

    const-string v2, "Missing ad info"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/ironsource/qb$a;-><init>(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-direct {p0, p1}, Lcom/ironsource/Pa;->a(Lcom/ironsource/qb;)V

    return-void
.end method

.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Pa;->a:Lcom/ironsource/Ja;

    const-string v1, "Loading an ad while reloading"

    invoke-virtual {v0, v1}, Lcom/ironsource/Ja;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 4

    if-nez p1, :cond_a

    .line 2
    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/4 v0, 0x0

    const-string v1, "Unknown error"

    invoke-direct {p1, v0, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    .line 3
    :cond_a
    new-instance v0, Lcom/ironsource/qb$a;

    invoke-direct {v0, p1}, Lcom/ironsource/qb$a;-><init>(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    invoke-direct {p0, v0}, Lcom/ironsource/Pa;->a(Lcom/ironsource/qb;)V

    return-void
.end method

.method public c()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Pa;->g:Lcom/ironsource/Ff$a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/ironsource/Ff$a;->a()V

    .line 2
    :cond_7
    iget-object v0, p0, Lcom/ironsource/Pa;->b:Lcom/ironsource/S2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/q0;->a(Z)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/Pa;->c:Lcom/ironsource/S2;

    invoke-virtual {v0, v1}, Lcom/ironsource/q0;->a(Z)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/Pa;->a:Lcom/ironsource/Ja;

    new-instance v1, Lcom/ironsource/La;

    invoke-direct {v1, v0}, Lcom/ironsource/La;-><init>(Lcom/ironsource/Ja;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/Ja;->a(Lcom/ironsource/Sa;)V

    return-void
.end method

.method public d()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/Pa;->g:Lcom/ironsource/Ff$a;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/ironsource/Ff$a;->a()V

    .line 2
    :cond_7
    iget-object v0, p0, Lcom/ironsource/Pa;->a:Lcom/ironsource/Ja;

    .line 3
    new-instance v1, Lcom/ironsource/Oa;

    iget-object v2, p0, Lcom/ironsource/Pa;->b:Lcom/ironsource/S2;

    invoke-direct {v1, v0, v2}, Lcom/ironsource/Oa;-><init>(Lcom/ironsource/Ja;Lcom/ironsource/S2;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/ironsource/Ja;->a(Lcom/ironsource/Sa;)V

    return-void
.end method

.method public f()V
    .registers 10

    .line 1
    iget-object v1, p0, Lcom/ironsource/Pa;->a:Lcom/ironsource/Ja;

    .line 2
    new-instance v0, Lcom/ironsource/Pa;

    .line 4
    iget-object v2, p0, Lcom/ironsource/Pa;->b:Lcom/ironsource/S2;

    .line 5
    iget-object v3, p0, Lcom/ironsource/Pa;->c:Lcom/ironsource/S2;

    .line 6
    invoke-virtual {v1}, Lcom/ironsource/Ja;->o()Lcom/ironsource/t4;

    move-result-object v4

    invoke-interface {v4}, Lcom/ironsource/t4;->a()J

    move-result-wide v4

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 7
    invoke-direct/range {v0 .. v8}, Lcom/ironsource/Pa;-><init>(Lcom/ironsource/Ja;Lcom/ironsource/S2;Lcom/ironsource/S2;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    invoke-virtual {v1, v0}, Lcom/ironsource/Ja;->a(Lcom/ironsource/Sa;)V

    return-void
.end method

###### Class com.ironsource.Pa$$ExternalSyntheticLambda0 (com.ironsource.Pa$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/Pa$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Lcom/ironsource/Pa;

    invoke-static {p1}, Lcom/ironsource/Pa;->$r8$lambda$6ss2b-UZGTHi1lgrkk8CosXs4sg(Lcom/ironsource/Pa;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
