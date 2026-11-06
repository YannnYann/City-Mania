###### Class com.ironsource.Y8 (com.ironsource.Y8)
.class public final Lcom/ironsource/Y8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/K7;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIlrSubscriptionService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IlrSubscriptionService.kt\ncom/ironsource/services/ilrsubscription/IlrSubscriptionService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,83:1\n1869#2,2:84\n*S KotlinDebug\n*F\n+ 1 IlrSubscriptionService.kt\ncom/ironsource/services/ilrsubscription/IlrSubscriptionService\n*L\n52#1:84,2\n*E\n"
.end annotation


# instance fields
.field private final a:Lcom/ironsource/D7;

.field private final b:Lcom/ironsource/yb;

.field private final c:Lcom/ironsource/X8;

.field private d:Z

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5HyqYRCUsaBKCGftHYYaV3zA3bQ(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;Lkotlin/Pair;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/Y8;->a(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;Lkotlin/Pair;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QfND9cSqvxCgnt1Ax8MQffUsfi0(Lcom/ironsource/Y8;Ljava/lang/String;Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/ironsource/Y8;->a(Lcom/ironsource/Y8;Ljava/lang/String;Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iGU5m18iZqXcbvC0pDkoVvc6W2I(Lcom/ironsource/Y8;Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/Y8;->a(Lcom/ironsource/Y8;Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r28w-RxoZqLHUww5yOV1cj_53SI(Lcom/ironsource/Y8;Ljava/util/Set;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/Y8;->a(Lcom/ironsource/Y8;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/ironsource/Y8;-><init>(Lcom/ironsource/D7;Lcom/ironsource/yb;Lcom/ironsource/X8;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/D7;Lcom/ironsource/yb;Lcom/ironsource/X8;)V
    .registers 5

    const-string v0, "epService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tools"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ironsource/Y8;->a:Lcom/ironsource/D7;

    .line 4
    iput-object p2, p0, Lcom/ironsource/Y8;->b:Lcom/ironsource/yb;

    .line 5
    iput-object p3, p0, Lcom/ironsource/Y8;->c:Lcom/ironsource/X8;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Y8;->e:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/ironsource/D7;Lcom/ironsource/yb;Lcom/ironsource/X8;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_e

    .line 10
    sget-object p1, Lcom/ironsource/Pb;->w:Lcom/ironsource/Pb$a;

    invoke-virtual {p1}, Lcom/ironsource/Pb$a;->d()Lcom/ironsource/M7;

    move-result-object p1

    invoke-interface {p1}, Lcom/ironsource/M7;->h()Lcom/ironsource/D7;

    move-result-object p1

    :cond_e
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_17

    .line 11
    new-instance p2, Lcom/ironsource/yb;

    invoke-direct {p2}, Lcom/ironsource/yb;-><init>()V

    :cond_17
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_22

    .line 12
    new-instance p3, Lcom/ironsource/X8;

    const/4 p4, 0x0

    const/4 p5, 0x1

    invoke-direct {p3, p4, p5, p4}, Lcom/ironsource/X8;-><init>(Lcom/ironsource/G1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    :cond_22
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/Y8;-><init>(Lcom/ironsource/D7;Lcom/ironsource/yb;Lcom/ironsource/X8;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/Y8;Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V
    .registers 6

    .line 10
    iget-object v0, p0, Lcom/ironsource/Y8;->c:Lcom/ironsource/X8;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/X8;->a(Ljava/lang/Class;)V

    .line 11
    iget-boolean v0, p0, Lcom/ironsource/Y8;->d:Z

    if-nez v0, :cond_36

    .line 12
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removing listener pre-init: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 13
    iget-object p0, p0, Lcom/ironsource/Y8;->e:Ljava/util/List;

    new-instance v0, Lcom/ironsource/Y8$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/ironsource/Y8$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    return-void

    .line 16
    :cond_36
    new-instance p0, Lcom/ironsource/eb;

    invoke-direct {p0, p1}, Lcom/ironsource/eb;-><init>(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V

    .line 17
    invoke-static {}, Lcom/ironsource/mediationsdk/p;->g()Lcom/ironsource/mediationsdk/p;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/p;->a(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/Y8;Ljava/lang/String;Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V
    .registers 7

    .line 2
    iget-object v0, p0, Lcom/ironsource/Y8;->c:Lcom/ironsource/X8;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/X8;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 3
    iget-boolean v0, p0, Lcom/ironsource/Y8;->d:Z

    if-nez v0, :cond_35

    .line 4
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queuing listener pre-init: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/ironsource/Y8;->e:Ljava/util/List;

    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 8
    :cond_35
    invoke-direct {p0, p1, p2}, Lcom/ironsource/Y8;->b(Ljava/lang/String;Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/Y8;Ljava/util/Set;)V
    .registers 4

    .line 20
    iput-object p1, p0, Lcom/ironsource/Y8;->f:Ljava/util/Set;

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/ironsource/Y8;->d:Z

    .line 22
    iget-object p1, p0, Lcom/ironsource/Y8;->e:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 23
    iget-object v0, p0, Lcom/ironsource/Y8;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 56
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;

    .line 57
    invoke-direct {p0, v1, v0}, Lcom/ironsource/Y8;->b(Ljava/lang/String;Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V

    goto :goto_14

    :cond_30
    return-void
.end method

.method private static final a(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;Lkotlin/Pair;)Z
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final a(Ljava/lang/String;)Z
    .registers 5

    .line 58
    iget-object v0, p0, Lcom/ironsource/Y8;->f:Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 59
    :cond_6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    return v1
.end method

.method private final b(Ljava/lang/String;Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V
    .registers 7

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/Y8;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 2
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscription denied for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/Y8;->c:Lcom/ironsource/X8;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/ironsource/Y8;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/ironsource/X8;->a(Ljava/lang/String;Ljava/lang/Class;Z)V

    return-void

    .line 6
    :cond_32
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subscription approved for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/ironsource/eb;

    invoke-direct {p1, p2}, Lcom/ironsource/eb;-><init>(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V

    .line 8
    invoke-static {}, Lcom/ironsource/mediationsdk/p;->g()Lcom/ironsource/mediationsdk/p;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/p;->b(Lcom/ironsource/mediationsdk/impressionData/ImpressionDataListener;)V

    return-void
.end method

.method private final b(Ljava/lang/String;)Z
    .registers 4

    .line 9
    iget-object v0, p0, Lcom/ironsource/Y8;->a:Lcom/ironsource/D7;

    invoke-interface {v0}, Lcom/ironsource/u5;->D()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 10
    :cond_a
    iget-object v0, p0, Lcom/ironsource/Y8;->f:Ljava/util/Set;

    if-nez v0, :cond_f

    return v1

    .line 11
    :cond_f
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V
    .registers 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/ironsource/Y8;->b:Lcom/ironsource/yb;

    new-instance v1, Lcom/ironsource/Y8$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/Y8$$ExternalSyntheticLambda3;-><init>(Lcom/ironsource/Y8;Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V
    .registers 5

    const-string v0, "subscriberId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/Y8;->b:Lcom/ironsource/yb;

    new-instance v1, Lcom/ironsource/Y8$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/Y8$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/Y8;Ljava/lang/String;Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/ironsource/Y8;->b:Lcom/ironsource/yb;

    new-instance v1, Lcom/ironsource/Y8$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/Y8$$ExternalSyntheticLambda2;-><init>(Lcom/ironsource/Y8;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.ironsource.Y8$$ExternalSyntheticLambda0 (com.ironsource.Y8$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/Y8$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Y8$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/Y8$$ExternalSyntheticLambda0;->f$0:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;

    check-cast p1, Lkotlin/Pair;

    invoke-static {v0, p1}, Lcom/ironsource/Y8;->$r8$lambda$5HyqYRCUsaBKCGftHYYaV3zA3bQ(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;Lkotlin/Pair;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

###### Class com.ironsource.Y8$$ExternalSyntheticLambda1 (com.ironsource.Y8$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/Y8$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/Y8;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/Y8;Ljava/lang/String;Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Y8$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/Y8;

    iput-object p2, p0, Lcom/ironsource/Y8$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/Y8$$ExternalSyntheticLambda1;->f$2:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/ironsource/Y8$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/Y8;

    iget-object v1, p0, Lcom/ironsource/Y8$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/Y8$$ExternalSyntheticLambda1;->f$2:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;

    invoke-static {v0, v1, v2}, Lcom/ironsource/Y8;->$r8$lambda$QfND9cSqvxCgnt1Ax8MQffUsfi0(Lcom/ironsource/Y8;Ljava/lang/String;Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V

    return-void
.end method

###### Class com.ironsource.Y8$$ExternalSyntheticLambda2 (com.ironsource.Y8$$ExternalSyntheticLambda2)
.class public final synthetic Lcom/ironsource/Y8$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/Y8;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/Y8;Ljava/util/Set;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Y8$$ExternalSyntheticLambda2;->f$0:Lcom/ironsource/Y8;

    iput-object p2, p0, Lcom/ironsource/Y8$$ExternalSyntheticLambda2;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/Y8$$ExternalSyntheticLambda2;->f$0:Lcom/ironsource/Y8;

    iget-object v1, p0, Lcom/ironsource/Y8$$ExternalSyntheticLambda2;->f$1:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/ironsource/Y8;->$r8$lambda$r28w-RxoZqLHUww5yOV1cj_53SI(Lcom/ironsource/Y8;Ljava/util/Set;)V

    return-void
.end method

###### Class com.ironsource.Y8$$ExternalSyntheticLambda3 (com.ironsource.Y8$$ExternalSyntheticLambda3)
.class public final synthetic Lcom/ironsource/Y8$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/Y8;

.field public final synthetic f$1:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/Y8;Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/Y8$$ExternalSyntheticLambda3;->f$0:Lcom/ironsource/Y8;

    iput-object p2, p0, Lcom/ironsource/Y8$$ExternalSyntheticLambda3;->f$1:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/Y8$$ExternalSyntheticLambda3;->f$0:Lcom/ironsource/Y8;

    iget-object v1, p0, Lcom/ironsource/Y8$$ExternalSyntheticLambda3;->f$1:Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;

    invoke-static {v0, v1}, Lcom/ironsource/Y8;->$r8$lambda$iGU5m18iZqXcbvC0pDkoVvc6W2I(Lcom/ironsource/Y8;Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V

    return-void
.end method
