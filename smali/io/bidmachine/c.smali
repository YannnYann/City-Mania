###### Class io.bidmachine.c (io.bidmachine.c)
.class public Lio/bidmachine/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/internal/a;


# static fields
.field public static volatile c:Lio/bidmachine/c;

.field public static final d:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$ETocDhB-58-lvlNddL2_UYm4F6E(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/c;->b(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_nx-bck2o4icVDQdQZv9jvh6JKE(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/c;->c(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aTl6F4ajMkIFYB_3isiA5y30CbY(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-static {p0}, Lio/bidmachine/c;->d(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/bidmachine/c;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/bidmachine/c;->a:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/bidmachine/c;->b:Ljava/util/List;

    return-void
.end method

.method public static a()Lio/bidmachine/c;
    .registers 2

    .line 1
    sget-object v0, Lio/bidmachine/c;->c:Lio/bidmachine/c;

    if-nez v0, :cond_19

    .line 3
    const-class v1, Lio/bidmachine/c;

    monitor-enter v1

    .line 4
    :try_start_7
    sget-object v0, Lio/bidmachine/c;->c:Lio/bidmachine/c;

    if-nez v0, :cond_15

    .line 6
    new-instance v0, Lio/bidmachine/c;

    invoke-direct {v0}, Lio/bidmachine/c;-><init>()V

    .line 7
    sput-object v0, Lio/bidmachine/c;->c:Lio/bidmachine/c;

    goto :goto_15

    :catchall_13
    move-exception v0

    goto :goto_17

    .line 9
    :cond_15
    :goto_15
    monitor-exit v1

    return-object v0

    :goto_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_13

    throw v0

    :cond_19
    return-object v0
.end method

.method public static a(Ljava/util/Map;)V
    .registers 2

    .line 23
    sget-object v0, Lio/bidmachine/c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p0, :cond_a

    .line 25
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_a
    return-void
.end method

.method public static synthetic b(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 2

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "receive - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 2

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "remove - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lio/bidmachine/AdResponse;)Ljava/lang/String;
    .registers 2

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "store - %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lio/bidmachine/AdRequestParameters;)Ljava/util/List;
    .registers 9

    .line 13
    iget-object v0, p0, Lio/bidmachine/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 14
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iget-object v2, p0, Lio/bidmachine/c;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/AdResponse;

    .line 16
    invoke-virtual {v3}, Lio/bidmachine/AdResponse;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/bidmachine/AdRequestParameters;->isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z

    move-result v4

    if-nez v4, :cond_25

    goto :goto_e

    .line 19
    :cond_25
    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v3}, Lio/bidmachine/AdResponse;->getPrice()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    iget-object v3, v3, Lio/bidmachine/AdResponse;->responseId:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :catchall_38
    move-exception p1

    goto :goto_3c

    .line 21
    :cond_3a
    monitor-exit v0

    return-object v1

    .line 22
    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_38

    throw p1
.end method

.method public a(Lio/bidmachine/AdResponse;)Z
    .registers 4

    .line 10
    iget-object v0, p0, Lio/bidmachine/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_3
    iget-object v1, p0, Lio/bidmachine/c;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_b
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public final b(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/protobuf/AdCachePlacementControl;
    .registers 3

    .line 2
    invoke-virtual {p1}, Lio/bidmachine/AdRequestParameters;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object p1

    invoke-virtual {p1}, Lio/bidmachine/AdsType;->getName()Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object v0, Lio/bidmachine/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    return-object p1
.end method

.method public c(Lio/bidmachine/AdRequestParameters;)I
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/c;->b(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxRetainCount()I

    move-result p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    if-lez p1, :cond_f

    return p1

    :cond_f
    const/4 p1, 0x2

    return p1
.end method

.method public d(Lio/bidmachine/AdRequestParameters;)I
    .registers 2

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/c;->b(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/protobuf/AdCachePlacementControl;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxCacheSize()I

    move-result p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    if-lez p1, :cond_f

    return p1

    :cond_f
    const/16 p1, 0x8

    return p1
.end method

.method public e(Lio/bidmachine/AdRequestParameters;)Ljava/util/List;
    .registers 8

    .line 1
    iget-object v0, p0, Lio/bidmachine/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lio/bidmachine/c;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/bidmachine/AdResponse;

    .line 5
    invoke-virtual {v3}, Lio/bidmachine/AdResponse;->getStatus()Lio/bidmachine/d;

    move-result-object v4

    sget-object v5, Lio/bidmachine/d;->a:Lio/bidmachine/d;

    if-ne v4, v5, :cond_e

    .line 6
    invoke-virtual {v3}, Lio/bidmachine/AdResponse;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v4

    invoke-virtual {p1, v4}, Lio/bidmachine/AdRequestParameters;->isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z

    move-result v4

    if-nez v4, :cond_2d

    goto :goto_e

    .line 9
    :cond_2d
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :catchall_31
    move-exception p1

    goto :goto_56

    .line 11
    :cond_33
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 12
    monitor-exit v0

    return-object v1

    .line 14
    :cond_3b
    new-instance v2, Lio/bidmachine/c$a;

    invoke-direct {v2, p0}, Lio/bidmachine/c$a;-><init>(Lio/bidmachine/c;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 20
    invoke-virtual {p0, p1}, Lio/bidmachine/c;->c(Lio/bidmachine/AdRequestParameters;)I

    move-result p1

    .line 21
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    .line 22
    invoke-interface {v1, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 23
    :goto_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_31

    throw p1
.end method

.method public e(Lio/bidmachine/AdResponse;)V
    .registers 4

    .line 24
    new-instance v0, Lio/bidmachine/c$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lio/bidmachine/c$$ExternalSyntheticLambda0;-><init>(Lio/bidmachine/AdResponse;)V

    const-string v1, "AdResponseManager"

    invoke-static {v1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Lio/bidmachine/AdResponse;->setCached(Z)V

    .line 28
    iget-object v0, p0, Lio/bidmachine/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 29
    :try_start_11
    iget-object v1, p0, Lio/bidmachine/c;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 30
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p1

    .line 31
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public f(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/AdResponse;
    .registers 14

    .line 64
    iget-object v0, p0, Lio/bidmachine/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_3
    invoke-virtual {p0, p1}, Lio/bidmachine/c;->c(Lio/bidmachine/AdRequestParameters;)I

    move-result v1

    .line 69
    iget-object v2, p0, Lio/bidmachine/c;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move-object v6, v5

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/AdResponse;

    .line 70
    invoke-virtual {v7}, Lio/bidmachine/AdResponse;->wasShown()Z

    move-result v8

    if-nez v8, :cond_11

    .line 71
    invoke-virtual {v7}, Lio/bidmachine/AdResponse;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v8

    invoke-virtual {p1, v8}, Lio/bidmachine/AdRequestParameters;->isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z

    move-result v8

    if-nez v8, :cond_2e

    goto :goto_11

    .line 75
    :cond_2e
    invoke-virtual {v7}, Lio/bidmachine/AdResponse;->getStatus()Lio/bidmachine/d;

    move-result-object v8

    sget-object v9, Lio/bidmachine/d;->a:Lio/bidmachine/d;

    if-ne v8, v9, :cond_49

    if-eqz v5, :cond_47

    .line 76
    invoke-virtual {v7}, Lio/bidmachine/AdResponse;->getPrice()D

    move-result-wide v8

    invoke-virtual {v5}, Lio/bidmachine/AdResponse;->getPrice()D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-lez v8, :cond_11

    goto :goto_47

    :catchall_45
    move-exception p1

    goto :goto_9e

    :cond_47
    :goto_47
    move-object v5, v7

    goto :goto_11

    .line 79
    :cond_49
    invoke-virtual {v7}, Lio/bidmachine/AdResponse;->getStatus()Lio/bidmachine/d;

    move-result-object v8

    sget-object v10, Lio/bidmachine/d;->b:Lio/bidmachine/d;

    if-ne v8, v10, :cond_11

    add-int/lit8 v4, v4, 0x1

    if-nez v6, :cond_56

    move-object v6, v7

    :cond_56
    if-lt v4, v1, :cond_11

    .line 89
    invoke-virtual {v6, v3}, Lio/bidmachine/AdResponse;->expireAdRequests(Lio/bidmachine/AdRequest;)V

    .line 90
    invoke-virtual {v6}, Lio/bidmachine/AdResponse;->clearAdRequestList()V

    .line 91
    invoke-virtual {v6, v9}, Lio/bidmachine/AdResponse;->setStatus(Lio/bidmachine/d;)V

    if-eqz v5, :cond_6f

    .line 93
    invoke-virtual {v6}, Lio/bidmachine/AdResponse;->getPrice()D

    move-result-wide v7

    invoke-virtual {v5}, Lio/bidmachine/AdResponse;->getPrice()D

    move-result-wide v9

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_11

    :cond_6f
    move-object v5, v6

    goto :goto_11

    :cond_71
    if-eqz v5, :cond_9c

    .line 100
    invoke-virtual {v5}, Lio/bidmachine/AdResponse;->getPrice()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lio/bidmachine/AdRequestParameters;->isPricePassedByPriceFloor(D)Z

    move-result p1

    if-eqz p1, :cond_9c

    const/4 p1, 0x1

    .line 101
    invoke-virtual {v5, p1}, Lio/bidmachine/AdResponse;->setCached(Z)V

    .line 102
    sget-object p1, Lio/bidmachine/d;->b:Lio/bidmachine/d;

    invoke-virtual {v5, p1}, Lio/bidmachine/AdResponse;->setStatus(Lio/bidmachine/d;)V

    .line 105
    const-string p1, "AdResponseManager"

    new-instance v1, Lio/bidmachine/c$$ExternalSyntheticLambda2;

    invoke-direct {v1, v5}, Lio/bidmachine/c$$ExternalSyntheticLambda2;-><init>(Lio/bidmachine/AdResponse;)V

    invoke-static {p1, v1}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 108
    iget-object p1, p0, Lio/bidmachine/c;->b:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 109
    iget-object p1, p0, Lio/bidmachine/c;->b:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    monitor-exit v0

    return-object v5

    .line 112
    :cond_9c
    monitor-exit v0

    return-object v3

    .line 114
    :goto_9e
    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_3 .. :try_end_9f} :catchall_45

    throw p1
.end method

.method public f(Lio/bidmachine/AdResponse;)V
    .registers 14

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/AdResponse;->canCache()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4
    :cond_7
    new-instance v0, Lio/bidmachine/c$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lio/bidmachine/c$$ExternalSyntheticLambda1;-><init>(Lio/bidmachine/AdResponse;)V

    const-string v1, "AdResponseManager"

    invoke-static {v1, v0}, Lio/bidmachine/core/Logger;->d(Ljava/lang/Object;Lio/bidmachine/utils/lazy/LazyValue;)V

    .line 6
    iget-object v0, p0, Lio/bidmachine/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_14
    invoke-virtual {p1}, Lio/bidmachine/AdResponse;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v1

    .line 12
    iget-object v2, p0, Lio/bidmachine/c;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move-object v4, v3

    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/bidmachine/AdResponse;

    .line 13
    invoke-virtual {v7}, Lio/bidmachine/AdResponse;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    move-result-object v8

    invoke-virtual {v1, v8}, Lio/bidmachine/AdRequestParameters;->isParametersMatched(Lio/bidmachine/AdRequestParameters;)Z

    move-result v8

    if-nez v8, :cond_3a

    goto :goto_23

    :cond_3a
    add-int/lit8 v6, v6, 0x1

    .line 19
    invoke-virtual {v7}, Lio/bidmachine/AdResponse;->getStatus()Lio/bidmachine/d;

    move-result-object v8

    sget-object v9, Lio/bidmachine/d;->a:Lio/bidmachine/d;

    if-ne v8, v9, :cond_57

    if-eqz v4, :cond_55

    .line 22
    invoke-virtual {v4}, Lio/bidmachine/AdResponse;->getPrice()D

    move-result-wide v8

    invoke-virtual {v7}, Lio/bidmachine/AdResponse;->getPrice()D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-lez v8, :cond_23

    goto :goto_55

    :catchall_53
    move-exception p1

    goto :goto_b1

    :cond_55
    :goto_55
    move-object v4, v7

    goto :goto_23

    .line 25
    :cond_57
    invoke-virtual {v7}, Lio/bidmachine/AdResponse;->getStatus()Lio/bidmachine/d;

    move-result-object v8

    sget-object v9, Lio/bidmachine/d;->b:Lio/bidmachine/d;

    if-ne v8, v9, :cond_23

    add-int/lit8 v5, v5, 0x1

    if-nez v3, :cond_23

    move-object v3, v7

    goto :goto_23

    .line 36
    :cond_65
    invoke-virtual {p1}, Lio/bidmachine/AdResponse;->getStatus()Lio/bidmachine/d;

    move-result-object v2

    sget-object v7, Lio/bidmachine/d;->b:Lio/bidmachine/d;

    if-ne v2, v7, :cond_89

    if-eqz v3, :cond_89

    .line 38
    invoke-virtual {p0, v1}, Lio/bidmachine/c;->c(Lio/bidmachine/AdRequestParameters;)I

    move-result v2

    if-lt v5, v2, :cond_89

    .line 39
    sget-object v2, Lio/bidmachine/d;->a:Lio/bidmachine/d;

    invoke-virtual {v3, v2}, Lio/bidmachine/AdResponse;->setStatus(Lio/bidmachine/d;)V

    if-eqz v4, :cond_8a

    .line 43
    invoke-virtual {v4}, Lio/bidmachine/AdResponse;->getPrice()D

    move-result-wide v7

    invoke-virtual {v3}, Lio/bidmachine/AdResponse;->getPrice()D

    move-result-wide v9

    cmpl-double v2, v7, v9

    if-lez v2, :cond_89

    goto :goto_8a

    :cond_89
    move-object v3, v4

    .line 49
    :cond_8a
    :goto_8a
    invoke-virtual {p0, v1}, Lio/bidmachine/c;->d(Lio/bidmachine/AdRequestParameters;)I

    move-result v1

    if-lt v6, v1, :cond_aa

    if-eqz v3, :cond_aa

    .line 53
    invoke-virtual {p1}, Lio/bidmachine/AdResponse;->getPrice()D

    move-result-wide v1

    invoke-virtual {v3}, Lio/bidmachine/AdResponse;->getPrice()D

    move-result-wide v4

    cmpl-double v1, v1, v4

    if-ltz v1, :cond_a8

    const/4 v1, 0x1

    .line 54
    invoke-virtual {v3, v1}, Lio/bidmachine/AdResponse;->notifyExpired(Z)V

    .line 55
    iget-object v1, p0, Lio/bidmachine/c;->b:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_aa

    .line 57
    :cond_a8
    monitor-exit v0

    return-void

    .line 61
    :cond_aa
    :goto_aa
    iget-object v1, p0, Lio/bidmachine/c;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    monitor-exit v0

    return-void

    .line 63
    :goto_b1
    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_14 .. :try_end_b2} :catchall_53

    throw p1
.end method

###### Class io.bidmachine.c.a (io.bidmachine.c$a)
.class public Lio/bidmachine/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/c;->e(Lio/bidmachine/AdRequestParameters;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/bidmachine/c;


# direct methods
.method public constructor <init>(Lio/bidmachine/c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lio/bidmachine/c$a;->a:Lio/bidmachine/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/bidmachine/AdResponse;Lio/bidmachine/AdResponse;)I
    .registers 5

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/AdResponse;->getPrice()D

    move-result-wide v0

    invoke-virtual {p2}, Lio/bidmachine/AdResponse;->getPrice()D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Lio/bidmachine/AdResponse;

    check-cast p2, Lio/bidmachine/AdResponse;

    invoke-virtual {p0, p1, p2}, Lio/bidmachine/c$a;->a(Lio/bidmachine/AdResponse;Lio/bidmachine/AdResponse;)I

    move-result p1

    return p1
.end method

###### Class io.bidmachine.c$$ExternalSyntheticLambda0 (io.bidmachine.c$$ExternalSyntheticLambda0)
.class public final synthetic Lio/bidmachine/c$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/AdResponse;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdResponse;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/c$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/c$$ExternalSyntheticLambda0;->f$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/c;->$r8$lambda$_nx-bck2o4icVDQdQZv9jvh6JKE(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.c$$ExternalSyntheticLambda1 (io.bidmachine.c$$ExternalSyntheticLambda1)
.class public final synthetic Lio/bidmachine/c$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/AdResponse;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdResponse;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/c$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/c$$ExternalSyntheticLambda1;->f$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/c;->$r8$lambda$aTl6F4ajMkIFYB_3isiA5y30CbY(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class io.bidmachine.c$$ExternalSyntheticLambda2 (io.bidmachine.c$$ExternalSyntheticLambda2)
.class public final synthetic Lio/bidmachine/c$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/utils/lazy/LazyValue;


# instance fields
.field public final synthetic f$0:Lio/bidmachine/AdResponse;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/AdResponse;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/c$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/AdResponse;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lio/bidmachine/c$$ExternalSyntheticLambda2;->f$0:Lio/bidmachine/AdResponse;

    invoke-static {v0}, Lio/bidmachine/c;->$r8$lambda$ETocDhB-58-lvlNddL2_UYm4F6E(Lio/bidmachine/AdResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
