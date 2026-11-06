###### Class com.ironsource.Cd (com.ironsource.Cd)
.class public final Lcom/ironsource/Cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Dd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Cd$a;,
        Lcom/ironsource/Cd$b;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreloadService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreloadService.kt\ncom/ironsource/services/preload/PreloadService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,133:1\n295#2,2:134\n1788#2,4:136\n1#3:140\n*S KotlinDebug\n*F\n+ 1 PreloadService.kt\ncom/ironsource/services/preload/PreloadService\n*L\n67#1:134,2\n91#1:136,4\n*E\n"
.end annotation


# instance fields
.field private final a:Lcom/unity3d/mediation/LevelPlay$AdFormat;

.field private final b:Lcom/ironsource/Bd;

.field private final c:Lcom/ironsource/D7;

.field private d:Lcom/ironsource/Cd$a;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/zd;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I


# direct methods
.method public static synthetic $r8$lambda$ETOTZiVKvZUi0ovpWlZP_zgYcQY(Lcom/ironsource/zd;Lcom/ironsource/Cd;Z)Lkotlin/Unit;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/ironsource/Cd;->a(Lcom/ironsource/zd;Lcom/ironsource/Cd;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/Bd;Lcom/ironsource/D7;)V
    .registers 5

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitsFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "epService"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/Cd;->a:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    .line 3
    iput-object p2, p0, Lcom/ironsource/Cd;->b:Lcom/ironsource/Bd;

    .line 4
    iput-object p3, p0, Lcom/ironsource/Cd;->c:Lcom/ironsource/D7;

    .line 7
    sget-object p1, Lcom/ironsource/Cd$a;->a:Lcom/ironsource/Cd$a;

    iput-object p1, p0, Lcom/ironsource/Cd;->d:Lcom/ironsource/Cd$a;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Cd;->e:Ljava/util/List;

    .line 9
    invoke-direct {p0}, Lcom/ironsource/Cd;->b()I

    move-result p1

    iput p1, p0, Lcom/ironsource/Cd;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/Bd;Lcom/ironsource/D7;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_9

    .line 10
    new-instance p2, Lcom/ironsource/Ad;

    invoke-direct {p2, p1}, Lcom/ironsource/Ad;-><init>(Lcom/unity3d/mediation/LevelPlay$AdFormat;)V

    :cond_9
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_17

    .line 11
    sget-object p3, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {p3}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object p3

    invoke-interface {p3}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object p3

    .line 12
    :cond_17
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/Cd;-><init>(Lcom/unity3d/mediation/LevelPlay$AdFormat;Lcom/ironsource/Bd;Lcom/ironsource/D7;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/zd;Lcom/ironsource/Cd;Z)Lkotlin/Unit;
    .registers 6

    if-nez p2, :cond_26

    .line 20
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-interface {p0}, Lcom/ironsource/zd;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adunit \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" failed to load, removing"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 21
    iget-object p2, p1, Lcom/ironsource/Cd;->e:Ljava/util/List;

    invoke-interface {p2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 23
    :cond_26
    invoke-direct {p1}, Lcom/ironsource/Cd;->d()V

    .line 24
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final a()Z
    .registers 5

    .line 25
    iget-object v0, p0, Lcom/ironsource/Cd;->e:Ljava/util/List;

    .line 70
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v2

    goto :goto_2e

    .line 72
    :cond_f
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/zd;

    .line 73
    invoke-interface {v3}, Lcom/ironsource/zd;->a()Z

    move-result v3

    if-nez v3, :cond_14

    add-int/lit8 v1, v1, 0x1

    if-gez v1, :cond_14

    .line 120
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwCountOverflow()V

    goto :goto_14

    .line 121
    :cond_2e
    :goto_2e
    iget v0, p0, Lcom/ironsource/Cd;->f:I

    if-ge v1, v0, :cond_34

    const/4 v0, 0x1

    return v0

    :cond_34
    return v2
.end method

.method private final b()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Cd;->a:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    sget-object v1, Lcom/ironsource/Cd$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_12
    iget-object v0, p0, Lcom/ironsource/Cd;->c:Lcom/ironsource/D7;

    invoke-interface {v0}, Lcom/ironsource/u5;->A()I

    move-result v0

    return v0

    .line 4
    :cond_19
    iget-object v0, p0, Lcom/ironsource/Cd;->c:Lcom/ironsource/D7;

    invoke-interface {v0}, Lcom/ironsource/u5;->j()I

    move-result v0

    return v0
.end method

.method private final b(Ljava/lang/String;)Lcom/ironsource/zd;
    .registers 5

    .line 5
    iget-object v0, p0, Lcom/ironsource/Cd;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/ironsource/zd;

    invoke-interface {v2}, Lcom/ironsource/zd;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    check-cast v1, Lcom/ironsource/zd;

    return-object v1
.end method

.method private final c()I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/Cd;->a:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    sget-object v1, Lcom/ironsource/Cd$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_12

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_12
    iget-object v0, p0, Lcom/ironsource/Cd;->c:Lcom/ironsource/D7;

    invoke-interface {v0}, Lcom/ironsource/u5;->C()I

    move-result v0

    return v0

    .line 4
    :cond_19
    iget-object v0, p0, Lcom/ironsource/Cd;->c:Lcom/ironsource/D7;

    invoke-interface {v0}, Lcom/ironsource/u5;->M()I

    move-result v0

    return v0
.end method

.method private final d()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/ironsource/Cd;->e()Lcom/ironsource/zd;

    move-result-object v0

    if-nez v0, :cond_b

    .line 3
    sget-object v0, Lcom/ironsource/Cd$a;->b:Lcom/ironsource/Cd$a;

    iput-object v0, p0, Lcom/ironsource/Cd;->d:Lcom/ironsource/Cd$a;

    return-void

    .line 7
    :cond_b
    sget-object v1, Lcom/ironsource/Cd$a;->c:Lcom/ironsource/Cd$a;

    iput-object v1, p0, Lcom/ironsource/Cd;->d:Lcom/ironsource/Cd$a;

    .line 8
    new-instance v1, Lcom/ironsource/Cd$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lcom/ironsource/Cd$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/zd;Lcom/ironsource/Cd;)V

    invoke-interface {v0, v1}, Lcom/ironsource/zd;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final e()Lcom/ironsource/zd;
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/ironsource/Cd;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    .line 2
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v2, p0, Lcom/ironsource/Cd;->a:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - reached capacity"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-object v1

    .line 6
    :cond_20
    iget-object v0, p0, Lcom/ironsource/Cd;->e:Ljava/util/List;

    .line 73
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/ironsource/zd;

    .line 74
    invoke-interface {v3}, Lcom/ironsource/zd;->a()Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_3b

    :cond_3a
    move-object v2, v1

    :goto_3b
    check-cast v2, Lcom/ironsource/zd;

    if-nez v2, :cond_58

    .line 76
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v2, p0, Lcom/ironsource/Cd;->a:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " - preload done"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-object v1

    :cond_58
    return-object v2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/ironsource/m6;
    .registers 5

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/Cd;->a:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - adunit: \""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, p1}, Lcom/ironsource/Cd;->b(Ljava/lang/String;)Lcom/ironsource/zd;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 124
    invoke-interface {p1}, Lcom/ironsource/zd;->c()Lcom/ironsource/m6;

    move-result-object p1

    return-object p1

    :cond_30
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/ironsource/ab;)V
    .registers 5

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/Cd;->c:Lcom/ironsource/D7;

    invoke-interface {v0}, Lcom/ironsource/u5;->z()Z

    move-result v0

    if-nez v0, :cond_26

    .line 2
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v0, p0, Lcom/ironsource/Cd;->a:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " - preload is disabled"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_26
    iget-object v0, p0, Lcom/ironsource/Cd;->d:Lcom/ironsource/Cd$a;

    sget-object v1, Lcom/ironsource/Cd$a;->a:Lcom/ironsource/Cd$a;

    if-eq v0, v1, :cond_45

    .line 6
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v0, p0, Lcom/ironsource/Cd;->a:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " - initializing service again"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_45
    invoke-direct {p0}, Lcom/ironsource/Cd;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_68

    .line 11
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/Cd;->a:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - invalid maxParallelLoad: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_68
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v2, p0, Lcom/ironsource/Cd;->a:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 15
    sget-object v1, Lcom/ironsource/Cd$a;->b:Lcom/ironsource/Cd$a;

    iput-object v1, p0, Lcom/ironsource/Cd;->d:Lcom/ironsource/Cd$a;

    .line 17
    iget-object v1, p0, Lcom/ironsource/Cd;->a:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-virtual {p1, v1}, Lcom/ironsource/ab;->c(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Ljava/util/List;

    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/ironsource/Cd;->b:Lcom/ironsource/Bd;

    invoke-interface {v2, v1, v0, p1}, Lcom/ironsource/Bd;->a(Ljava/util/List;ILcom/ironsource/ab;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/Cd;->e:Ljava/util/List;

    .line 19
    invoke-direct {p0}, Lcom/ironsource/Cd;->d()V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .registers 6

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    iget-object v1, p0, Lcom/ironsource/Cd;->a:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - adunit: \""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", didUseInstance: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/ironsource/Cd;->b(Ljava/lang/String;)Lcom/ironsource/zd;

    move-result-object v1

    if-nez v1, :cond_48

    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adunit is null at \""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->warning(Ljava/lang/String;)V

    return-void

    .line 132
    :cond_48
    invoke-interface {v1, p2}, Lcom/ironsource/zd;->a(Z)V

    if-eqz p2, :cond_56

    .line 133
    iget-object p1, p0, Lcom/ironsource/Cd;->d:Lcom/ironsource/Cd$a;

    sget-object p2, Lcom/ironsource/Cd$a;->b:Lcom/ironsource/Cd$a;

    if-ne p1, p2, :cond_56

    .line 134
    invoke-direct {p0}, Lcom/ironsource/Cd;->d()V

    :cond_56
    return-void
.end method

###### Class com.ironsource.Cd.a (com.ironsource.Cd$a)
.class final enum Lcom/ironsource/Cd$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/Cd$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ironsource/Cd$a;

.field public static final enum b:Lcom/ironsource/Cd$a;

.field public static final enum c:Lcom/ironsource/Cd$a;

.field private static final synthetic d:[Lcom/ironsource/Cd$a;

.field private static final synthetic e:Lkotlin/enums/EnumEntries;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/ironsource/Cd$a;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ironsource/Cd$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/Cd$a;->a:Lcom/ironsource/Cd$a;

    .line 2
    new-instance v0, Lcom/ironsource/Cd$a;

    const-string v1, "Idle"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/ironsource/Cd$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/Cd$a;->b:Lcom/ironsource/Cd$a;

    .line 3
    new-instance v0, Lcom/ironsource/Cd$a;

    const-string v1, "Loading"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/Cd$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/Cd$a;->c:Lcom/ironsource/Cd$a;

    invoke-static {}, Lcom/ironsource/Cd$a;->a()[Lcom/ironsource/Cd$a;

    move-result-object v0

    sput-object v0, Lcom/ironsource/Cd$a;->d:[Lcom/ironsource/Cd$a;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/ironsource/Cd$a;->e:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic a()[Lcom/ironsource/Cd$a;
    .registers 3

    .line 1
    sget-object v0, Lcom/ironsource/Cd$a;->a:Lcom/ironsource/Cd$a;

    sget-object v1, Lcom/ironsource/Cd$a;->b:Lcom/ironsource/Cd$a;

    sget-object v2, Lcom/ironsource/Cd$a;->c:Lcom/ironsource/Cd$a;

    filled-new-array {v0, v1, v2}, [Lcom/ironsource/Cd$a;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/ironsource/Cd$a;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/ironsource/Cd$a;->e:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/Cd$a;
    .registers 2

    const-class v0, Lcom/ironsource/Cd$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/ironsource/Cd$a;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/Cd$a;
    .registers 1

    sget-object v0, Lcom/ironsource/Cd$a;->d:[Lcom/ironsource/Cd$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/ironsource/Cd$a;

    return-object v0
.end method

###### Class com.ironsource.Cd.b (com.ironsource.Cd$b)
.class public final synthetic Lcom/ironsource/Cd$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Cd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "b"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/unity3d/mediation/LevelPlay$AdFormat;->values()[Lcom/unity3d/mediation/LevelPlay$AdFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->INTERSTITIAL:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/unity3d/mediation/LevelPlay$AdFormat;->REWARDED:Lcom/unity3d/mediation/LevelPlay$AdFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    sput-object v0, Lcom/ironsource/Cd$b;->a:[I

    return-void
.end method

###### Class com.ironsource.Cd$$ExternalSyntheticLambda0 (com.ironsource.Cd$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/Cd$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/zd;

.field public final synthetic f$1:Lcom/ironsource/Cd;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/zd;Lcom/ironsource/Cd;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Cd$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/zd;

    iput-object p2, p0, Lcom/ironsource/Cd$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/Cd;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/ironsource/Cd$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/zd;

    iget-object v1, p0, Lcom/ironsource/Cd$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/Cd;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/ironsource/Cd;->$r8$lambda$ETOTZiVKvZUi0ovpWlZP_zgYcQY(Lcom/ironsource/zd;Lcom/ironsource/Cd;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
