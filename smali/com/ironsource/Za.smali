###### Class com.ironsource.Za (com.ironsource.Za)
.class public final Lcom/ironsource/Za;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Za$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLevelPlayBannerStrategyFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LevelPlayBannerStrategyFactory.kt\ncom/unity3d/mediation/internal/ads/banner/strategy/LevelPlayBannerStrategyFactory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,54:1\n1#2:55\n*E\n"
.end annotation


# static fields
.field public static final a:Lcom/ironsource/Za;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/ironsource/Za;

    invoke-direct {v0}, Lcom/ironsource/Za;-><init>()V

    sput-object v0, Lcom/ironsource/Za;->a:Lcom/ironsource/Za;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/Za;Lcom/ironsource/p0;Lcom/ironsource/d3;Lcom/ironsource/Za$a;Lcom/ironsource/Ga;Lcom/ironsource/U2;Lcom/ironsource/t4;ILjava/lang/Object;)Lcom/ironsource/Fa;
    .registers 16

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_9

    .line 1
    new-instance p6, Lcom/ironsource/t4$a;

    invoke-direct {p6}, Lcom/ironsource/t4$a;-><init>()V

    :cond_9
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 2
    invoke-virtual/range {v0 .. v6}, Lcom/ironsource/Za;->a(Lcom/ironsource/p0;Lcom/ironsource/d3;Lcom/ironsource/Za$a;Lcom/ironsource/Ga;Lcom/ironsource/U2;Lcom/ironsource/t4;)Lcom/ironsource/Fa;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/ironsource/p0;Lcom/ironsource/d3;Lcom/ironsource/Za$a;Lcom/ironsource/Ga;Lcom/ironsource/U2;Lcom/ironsource/t4;)Lcom/ironsource/Fa;
    .registers 21
    .annotation build Lcom/ironsource/xb;
    .end annotation

    move-object/from16 v2, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerContainer"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strategyListener"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerAdUnitFactory"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeProvider"

    move-object/from16 v10, p6

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 4
    invoke-virtual {v1}, Lcom/ironsource/Za$a;->f()Z

    move-result v3

    invoke-virtual {v1}, Lcom/ironsource/Za$a;->d()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Creating banner strategy, isAutoRefreshEnabled: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", refreshInterval: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v0, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Lcom/ironsource/Za$a;->f()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 10
    new-instance v0, Lcom/ironsource/Ja;

    .line 13
    invoke-virtual {v1}, Lcom/ironsource/Za$a;->d()J

    move-result-wide v3

    .line 14
    invoke-virtual {v1}, Lcom/ironsource/Za$a;->e()J

    move-result-wide v5

    .line 19
    sget-object v1, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {v1}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/u5;->B()Z

    move-result v11

    const/16 v12, 0x40

    const/4 v13, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    .line 20
    invoke-direct/range {v0 .. v13}, Lcom/ironsource/Ja;-><init>(Lcom/ironsource/p0;Lcom/ironsource/d3;JJLcom/ironsource/Ga;Lcom/ironsource/U2;Lcom/ironsource/Ff;Lcom/ironsource/t4;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 31
    :cond_75
    new-instance v0, Lcom/ironsource/Ta;

    invoke-direct {v0, p1, v2, v8}, Lcom/ironsource/Ta;-><init>(Lcom/ironsource/p0;Lcom/ironsource/d3;Lcom/ironsource/U2;)V

    .line 35
    invoke-virtual {v0, v7}, Lcom/ironsource/Ta;->a(Lcom/ironsource/Ga;)V

    return-object v0
.end method

###### Class com.ironsource.Za.a (com.ironsource.Za$a)
.class public final Lcom/ironsource/Za$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Za;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Z

.field private final b:J

.field private final c:J


# direct methods
.method public constructor <init>(ZJJ)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/ironsource/Za$a;->a:Z

    .line 3
    iput-wide p2, p0, Lcom/ironsource/Za$a;->b:J

    .line 4
    iput-wide p4, p0, Lcom/ironsource/Za$a;->c:J

    return-void
.end method

.method public static synthetic a(Lcom/ironsource/Za$a;ZJJILjava/lang/Object;)Lcom/ironsource/Za$a;
    .registers 8

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    .line 3
    iget-boolean p1, p0, Lcom/ironsource/Za$a;->a:Z

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-wide p2, p0, Lcom/ironsource/Za$a;->b:J

    :cond_c
    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_12

    iget-wide p4, p0, Lcom/ironsource/Za$a;->c:J

    :cond_12
    move-wide p6, p4

    move-wide p4, p2

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/ironsource/Za$a;->a(ZJJ)Lcom/ironsource/Za$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ZJJ)Lcom/ironsource/Za$a;
    .registers 12

    .line 2
    new-instance v0, Lcom/ironsource/Za$a;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/Za$a;-><init>(ZJJ)V

    return-object v0
.end method

.method public final a()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/Za$a;->a:Z

    return v0
.end method

.method public final b()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Za$a;->b:J

    return-wide v0
.end method

.method public final c()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Za$a;->c:J

    return-wide v0
.end method

.method public final d()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Za$a;->b:J

    return-wide v0
.end method

.method public final e()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/ironsource/Za$a;->c:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/ironsource/Za$a;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/ironsource/Za$a;

    iget-boolean v1, p0, Lcom/ironsource/Za$a;->a:Z

    iget-boolean v3, p1, Lcom/ironsource/Za$a;->a:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Lcom/ironsource/Za$a;->b:J

    iget-wide v5, p1, Lcom/ironsource/Za$a;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1c

    return v2

    :cond_1c
    iget-wide v3, p0, Lcom/ironsource/Za$a;->c:J

    iget-wide v5, p1, Lcom/ironsource/Za$a;->c:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public final f()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/Za$a;->a:Z

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/Za$a;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/ironsource/Za$a;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/ironsource/Za$a;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/Za$a;->a:Z

    iget-wide v1, p0, Lcom/ironsource/Za$a;->b:J

    iget-wide v3, p0, Lcom/ironsource/Za$a;->c:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BannerStrategyConfig(isAutoRefreshEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", refreshInterval="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", visibilityCheckerInterval="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
