###### Class info.flowersoft.theotown.components.coverage.CoverageCalculator (info.flowersoft.theotown.components.coverage.CoverageCalculator)
.class public Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;
.super Ljava/lang/Object;
.source "CoverageCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;,
        Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;
    }
.end annotation


# instance fields
.field public final aspects:[Linfo/flowersoft/theotown/components/coverage/Aspect;

.field public city:Linfo/flowersoft/theotown/city/City;

.field public final coverageResults:[Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;

.field public final pool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$u7epd4wTbC5TGmyTR-zXvPWJB_c(Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;ILjava/util/concurrent/CountDownLatch;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    :try_start_3
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->calculateAspect(I)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 77
    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_a
    move-exception p0

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 78
    throw p0
.end method

.method public constructor <init>()V
    .registers 8

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 31
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->pool:Ljava/util/concurrent/ExecutorService;

    .line 34
    sget-object v0, Linfo/flowersoft/theotown/components/coverage/CoverageAspect;->values:[I

    array-length v1, v0

    new-array v1, v1, [Linfo/flowersoft/theotown/components/coverage/Aspect;

    iput-object v1, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->aspects:[Linfo/flowersoft/theotown/components/coverage/Aspect;

    .line 35
    array-length v1, v0

    new-array v1, v1, [Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;

    iput-object v1, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->coverageResults:[Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;

    .line 37
    array-length v1, v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_29

    aget v3, v0, v2

    .line 38
    iget-object v4, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->coverageResults:[Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;

    new-instance v5, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;-><init>(Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$1;)V

    aput-object v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_29
    return-void
.end method


# virtual methods
.method public calculate()V
    .registers 5

    .line 67
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->aspects:[Linfo/flowersoft/theotown/components/coverage/Aspect;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v1, 0x0

    .line 71
    :goto_9
    iget-object v2, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->aspects:[Linfo/flowersoft/theotown/components/coverage/Aspect;

    array-length v2, v2

    if-ge v1, v2, :cond_1b

    .line 73
    iget-object v2, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;ILjava/util/concurrent/CountDownLatch;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 83
    :cond_1b
    :try_start_1b
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final calculateAspect(I)V
    .registers 23

    move-object/from16 v0, p0

    .line 96
    iget-object v1, v0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->aspects:[Linfo/flowersoft/theotown/components/coverage/Aspect;

    aget-object v1, v1, p1

    if-nez v1, :cond_9

    return-void

    .line 99
    :cond_9
    invoke-interface {v1}, Linfo/flowersoft/theotown/components/coverage/Aspect;->prepare()V

    .line 108
    new-instance v11, Linfo/flowersoft/theotown/util/SafeListAccessor;

    iget-object v2, v0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-interface {v1, v2}, Linfo/flowersoft/theotown/components/coverage/Aspect;->getNeeders(Linfo/flowersoft/theotown/city/City;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v11, v2}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    .line 109
    new-instance v4, Linfo/flowersoft/theotown/util/SafeListAccessor;

    iget-object v2, v0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-interface {v1, v2}, Linfo/flowersoft/theotown/components/coverage/Aspect;->getProviders(Linfo/flowersoft/theotown/city/City;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v4, v2}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    .line 110
    iget-object v2, v0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->countNeighbors()I

    move-result v12

    new-array v9, v12, [I

    .line 111
    new-instance v5, Ljava/util/PriorityQueue;

    invoke-direct {v5}, Ljava/util/PriorityQueue;-><init>()V

    .line 112
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    move v2, v13

    move v3, v2

    :goto_37
    if-ge v2, v12, :cond_51

    .line 115
    iget-object v6, v0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v2}, Linfo/flowersoft/theotown/city/City;->getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object v6

    if-eqz v6, :cond_4e

    .line 117
    invoke-interface {v1, v6}, Linfo/flowersoft/theotown/components/coverage/Aspect;->getNeighborTrading(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;)J

    move-result-wide v6

    long-to-int v6, v6

    aput v6, v9, v2

    neg-int v6, v6

    .line 118
    invoke-static {v6, v13}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v3, v6

    :cond_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 122
    :cond_51
    new-instance v6, Lcom/badlogic/gdx/utils/IntIntMap;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>()V

    .line 125
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v14, v3

    move v7, v13

    move v15, v7

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Building;

    .line 126
    invoke-interface {v1, v3}, Linfo/flowersoft/theotown/components/coverage/Aspect;->providedRadius(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 127
    invoke-interface {v1, v3}, Linfo/flowersoft/theotown/components/coverage/Aspect;->providedAmount(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v3

    add-int/2addr v14, v3

    add-int/2addr v15, v3

    goto :goto_5d

    .line 132
    :cond_78
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move v2, v13

    move v3, v2

    move/from16 v17, v3

    :goto_80
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_bb

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/city/objects/Building;

    .line 133
    invoke-interface {v1, v8}, Linfo/flowersoft/theotown/components/coverage/Aspect;->neededAmount(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v18

    add-int v19, v2, v18

    if-lez v18, :cond_b2

    move v2, v3

    move-object v3, v8

    const/4 v8, 0x0

    move v13, v2

    move/from16 v2, p1

    .line 137
    invoke-virtual/range {v0 .. v10}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->calculateReachedAmount(Linfo/flowersoft/theotown/components/coverage/Aspect;ILinfo/flowersoft/theotown/city/objects/Building;Ljava/lang/Iterable;Ljava/util/Queue;Lcom/badlogic/gdx/utils/IntIntMap;IZ[ILjava/util/List;)I

    move-result v8

    move v0, v2

    add-int v17, v17, v8

    add-int/lit8 v2, v13, 0x1

    .line 141
    invoke-interface {v1}, Linfo/flowersoft/theotown/components/coverage/Aspect;->hasInfiniteRadius()Z

    move-result v13

    if-eqz v13, :cond_ad

    .line 143
    invoke-virtual {v3, v0, v8}, Linfo/flowersoft/theotown/city/objects/Building;->setTempUsedAspectAmount(II)V

    goto :goto_b0

    .line 145
    :cond_ad
    invoke-virtual {v3, v0, v8}, Linfo/flowersoft/theotown/city/objects/Building;->setUsedAspectAmount(II)V

    :goto_b0
    move v3, v2

    goto :goto_b5

    :cond_b2
    move/from16 v0, p1

    move v13, v3

    :goto_b5
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v19

    goto :goto_80

    :cond_bb
    move/from16 v0, p1

    move v13, v3

    .line 151
    invoke-interface {v1}, Linfo/flowersoft/theotown/components/coverage/Aspect;->hasInfiniteRadius()Z

    move-result v3

    if-eqz v3, :cond_163

    .line 152
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_c8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_fc

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Building;

    .line 153
    invoke-interface {v1, v3}, Linfo/flowersoft/theotown/components/coverage/Aspect;->neededAmount(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v8

    if-lez v8, :cond_f1

    const/4 v8, 0x1

    move-object/from16 v19, v11

    move v11, v2

    move v2, v0

    move-object/from16 v0, p0

    .line 156
    invoke-virtual/range {v0 .. v10}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->calculateReachedAmount(Linfo/flowersoft/theotown/components/coverage/Aspect;ILinfo/flowersoft/theotown/city/objects/Building;Ljava/lang/Iterable;Ljava/util/Queue;Lcom/badlogic/gdx/utils/IntIntMap;IZ[ILjava/util/List;)I

    move-result v8

    add-int v17, v17, v8

    .line 161
    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/city/objects/Building;->getTempUsedAspectAmount(I)I

    move-result v20

    add-int v8, v8, v20

    .line 159
    invoke-virtual {v3, v2, v8}, Linfo/flowersoft/theotown/city/objects/Building;->setUsedAspectAmount(II)V

    goto :goto_f7

    :cond_f1
    move-object/from16 v19, v11

    move v11, v2

    move v2, v0

    move-object/from16 v0, p0

    :goto_f7
    move v0, v2

    move v2, v11

    move-object/from16 v11, v19

    goto :goto_c8

    :cond_fc
    move-object/from16 v19, v11

    move v11, v2

    move v2, v0

    move-object/from16 v0, p0

    const/4 v3, 0x0

    :goto_103
    if-ge v3, v12, :cond_15e

    .line 166
    aget v5, v9, v3

    if-lez v5, :cond_155

    sub-int v7, v14, v17

    .line 167
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 168
    aget v7, v9, v3

    sub-int/2addr v7, v5

    aput v7, v9, v3

    add-int v17, v17, v5

    if-lez v5, :cond_155

    .line 171
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_11c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_155

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/city/objects/Building;

    .line 172
    invoke-interface {v1, v8}, Linfo/flowersoft/theotown/components/coverage/Aspect;->providedAmount(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v10

    move/from16 v16, v3

    .line 173
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->hashCode()I

    move-result v3

    move-object/from16 v20, v4

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v3

    add-int v4, v3, v5

    .line 174
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 175
    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    sub-int/2addr v4, v10

    add-int/2addr v3, v4

    sub-int/2addr v5, v4

    .line 178
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->hashCode()I

    move-result v4

    invoke-virtual {v6, v4, v3}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    if-gtz v5, :cond_150

    goto :goto_159

    :cond_150
    move/from16 v3, v16

    move-object/from16 v4, v20

    goto :goto_11c

    :cond_155
    move/from16 v16, v3

    move-object/from16 v20, v4

    :goto_159
    add-int/lit8 v3, v16, 0x1

    move-object/from16 v4, v20

    goto :goto_103

    :cond_15e
    :goto_15e
    move-object/from16 v20, v4

    move/from16 v3, v17

    goto :goto_16a

    :cond_163
    move-object/from16 v19, v11

    move v11, v2

    move v2, v0

    move-object/from16 v0, p0

    goto :goto_15e

    .line 186
    :goto_16a
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_16f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/city/objects/Building;

    .line 187
    invoke-interface {v1, v7}, Linfo/flowersoft/theotown/components/coverage/Aspect;->providedAmount(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v8

    if-lez v8, :cond_19a

    add-int/lit8 v5, v5, 0x1

    .line 191
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Building;->hashCode()I

    move-result v10

    move-object/from16 v16, v4

    const/4 v4, 0x0

    invoke-virtual {v6, v10, v4}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v10

    .line 192
    invoke-virtual {v7, v2, v10}, Linfo/flowersoft/theotown/city/objects/Building;->setUsedAspectAmount(II)V

    if-le v10, v8, :cond_195

    const/4 v4, 0x1

    goto :goto_196

    :cond_195
    const/4 v4, 0x0

    .line 193
    :goto_196
    invoke-virtual {v7, v4}, Linfo/flowersoft/theotown/city/objects/Building;->setOverloaded(Z)V

    goto :goto_19c

    :cond_19a
    move-object/from16 v16, v4

    :goto_19c
    move-object/from16 v4, v16

    goto :goto_16f

    .line 197
    :cond_19f
    invoke-interface {v1}, Linfo/flowersoft/theotown/components/coverage/Aspect;->hasInfiniteRadius()Z

    move-result v4

    if-eqz v4, :cond_1c3

    const/4 v4, 0x0

    :goto_1a6
    if-ge v4, v12, :cond_1c3

    .line 199
    aget v6, v9, v4

    if-lez v6, :cond_1c0

    .line 200
    iget-object v6, v0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v4}, Linfo/flowersoft/theotown/city/City;->getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object v6

    .line 201
    invoke-interface {v1, v6}, Linfo/flowersoft/theotown/components/coverage/Aspect;->getNeighborTrading(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;)J

    move-result-wide v7

    aget v10, v9, v4

    move-wide/from16 v16, v7

    int-to-long v7, v10

    sub-long v7, v16, v7

    invoke-interface {v1, v6, v7, v8}, Linfo/flowersoft/theotown/components/coverage/Aspect;->setNeighborTrading(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;J)V

    :cond_1c0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a6

    .line 206
    :cond_1c3
    iget-object v4, v0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v4

    if-eqz v4, :cond_200

    .line 207
    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1cf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/city/objects/Building;

    .line 208
    invoke-interface {v1, v6}, Linfo/flowersoft/theotown/components/coverage/Aspect;->providedAmount(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v7

    if-lez v7, :cond_1e6

    const/4 v7, 0x0

    .line 210
    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/city/objects/Building;->setOverloaded(Z)V

    goto :goto_1cf

    :cond_1e6
    const/4 v7, 0x0

    goto :goto_1cf

    .line 213
    :cond_1e8
    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1ec
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_200

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/city/objects/Building;

    .line 214
    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/city/objects/Building;->getNeededAmount(I)I

    move-result v6

    invoke-virtual {v4, v2, v6}, Linfo/flowersoft/theotown/city/objects/Building;->setUsedAspectAmount(II)V

    goto :goto_1ec

    .line 218
    :cond_200
    iget-object v1, v0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->coverageResults:[Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;

    aget-object v1, v1, v2

    .line 219
    iput v15, v1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;->nativeProvidedAmount:I

    .line 220
    iput v11, v1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;->nativeNeededAmount:I

    .line 221
    iput v14, v1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;->providedAmount:I

    .line 222
    iput v11, v1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;->neededAmount:I

    .line 223
    iput v3, v1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;->reachedAmount:I

    .line 224
    iput v5, v1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;->providingBuildings:I

    .line 225
    iput v13, v1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;->needingBuildings:I

    return-void
.end method

.method public final calculateReachedAmount(Linfo/flowersoft/theotown/components/coverage/Aspect;ILinfo/flowersoft/theotown/city/objects/Building;Ljava/lang/Iterable;Ljava/util/Queue;Lcom/badlogic/gdx/utils/IntIntMap;IZ[ILjava/util/List;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/components/coverage/Aspect;",
            "I",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            "Ljava/lang/Iterable<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;",
            "Ljava/util/Queue<",
            "Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;",
            ">;",
            "Lcom/badlogic/gdx/utils/IntIntMap;",
            "IZ[I",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;",
            ">;)I"
        }
    .end annotation

    .line 232
    invoke-interface {p1, p3}, Linfo/flowersoft/theotown/components/coverage/Aspect;->neededAmount(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v0

    .line 233
    invoke-interface {p1, p3}, Linfo/flowersoft/theotown/components/coverage/Aspect;->reachedAmount(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v1

    if-eqz p8, :cond_10

    .line 238
    invoke-virtual {p3, p2}, Linfo/flowersoft/theotown/city/objects/Building;->getTempUsedAspectAmount(I)I

    move-result p2

    sub-int v1, v0, p2

    :cond_10
    const/4 p2, 0x0

    if-lez v1, :cond_fc

    if-eqz p8, :cond_3a

    .line 243
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_19
    :goto_19
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_76

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Linfo/flowersoft/theotown/city/objects/Building;

    if-eq p3, p7, :cond_19

    .line 245
    iget-object v0, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getDistance()Linfo/flowersoft/theotown/util/Distance;

    move-result-object v0

    invoke-virtual {v0, p3, p7}, Linfo/flowersoft/theotown/util/Distance;->get(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v0

    int-to-float v0, v0

    .line 246
    invoke-virtual {p0, v0, p7, p10}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->newProviderCandidate(FLinfo/flowersoft/theotown/city/objects/Building;Ljava/util/List;)Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;

    move-result-object p7

    invoke-interface {p5, p7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 250
    :cond_3a
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_3e
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Building;

    if-eq p3, v0, :cond_3e

    .line 252
    iget-object v2, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getDistance()Linfo/flowersoft/theotown/util/Distance;

    move-result-object v2

    invoke-virtual {v2, p3, v0}, Linfo/flowersoft/theotown/util/Distance;->get(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v2

    .line 253
    invoke-interface {p1, v0}, Linfo/flowersoft/theotown/components/coverage/Aspect;->providedRadius(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v3

    if-gt v2, v3, :cond_64

    int-to-float v2, v2

    .line 255
    invoke-virtual {p0, v2, v0, p10}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->newProviderCandidate(FLinfo/flowersoft/theotown/city/objects/Building;Ljava/util/List;)Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;

    move-result-object v2

    invoke-interface {p5, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_64
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    if-le v0, p7, :cond_3e

    .line 264
    :cond_76
    invoke-interface {p5}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_7e

    if-eqz p8, :cond_fc

    .line 265
    :cond_7e
    invoke-interface {p5}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8d

    invoke-interface {p5}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;

    iget-object p3, p3, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;->building:Linfo/flowersoft/theotown/city/objects/Building;

    goto :goto_8e

    :cond_8d
    const/4 p3, 0x0

    :goto_8e
    move p4, p2

    .line 267
    :goto_8f
    invoke-interface {p5}, Ljava/util/Collection;->isEmpty()Z

    move-result p7

    if-nez p7, :cond_c4

    if-lez v1, :cond_c4

    .line 268
    invoke-interface {p5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;

    .line 269
    invoke-interface {p10, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object p7, p7, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 271
    invoke-interface {p1, p7}, Linfo/flowersoft/theotown/components/coverage/Aspect;->providedAmount(Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v0

    .line 272
    invoke-virtual {p7}, Linfo/flowersoft/theotown/city/objects/Building;->hashCode()I

    move-result v2

    invoke-virtual {p6, v2, p2}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v2

    add-int v3, v2, v1

    .line 273
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 274
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    sub-int/2addr v1, v3

    .line 277
    invoke-virtual {p7}, Linfo/flowersoft/theotown/city/objects/Building;->hashCode()I

    move-result p7

    invoke-virtual {p6, p7, v2}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    add-int/2addr p4, v3

    goto :goto_8f

    .line 280
    :cond_c4
    invoke-interface {p10, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 281
    invoke-interface {p5}, Ljava/util/Collection;->clear()V

    if-eqz p8, :cond_e7

    if-lez v1, :cond_e7

    move p1, p2

    .line 284
    :goto_cf
    array-length p5, p9

    if-ge p1, p5, :cond_e7

    if-lez v1, :cond_e7

    .line 285
    aget p5, p9, p1

    if-gez p5, :cond_e4

    neg-int p5, p5

    .line 286
    invoke-static {v1, p5}, Ljava/lang/Math;->min(II)I

    move-result p5

    sub-int/2addr v1, p5

    .line 288
    aget p7, p9, p1

    add-int/2addr p7, p5

    aput p7, p9, p1

    add-int/2addr p4, p5

    :cond_e4
    add-int/lit8 p1, p1, 0x1

    goto :goto_cf

    :cond_e7
    if-lez v1, :cond_fb

    if-eqz p3, :cond_fb

    .line 295
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Building;->hashCode()I

    move-result p1

    invoke-virtual {p6, p1, p2}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result p1

    add-int/2addr p1, v1

    .line 297
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Building;->hashCode()I

    move-result p2

    invoke-virtual {p6, p2, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    :cond_fb
    return p4

    :cond_fc
    return p2
.end method

.method public countNeedingBuildings(I)I
    .registers 3

    .line 348
    iget-object v0, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->coverageResults:[Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;

    aget-object p1, v0, p1

    iget p1, p1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;->needingBuildings:I

    return p1
.end method

.method public countProvidingBuildings(I)I
    .registers 3

    .line 344
    iget-object v0, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->coverageResults:[Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;

    aget-object p1, v0, p1

    iget p1, p1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;->providingBuildings:I

    return p1
.end method

.method public final createAspects()V
    .registers 4

    .line 43
    iget-object v0, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->aspects:[Linfo/flowersoft/theotown/components/coverage/Aspect;

    new-instance v1, Linfo/flowersoft/theotown/components/coverage/LowEducationAspect;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/components/coverage/LowEducationAspect;-><init>(Linfo/flowersoft/theotown/city/City;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 44
    iget-object v0, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->aspects:[Linfo/flowersoft/theotown/components/coverage/Aspect;

    new-instance v1, Linfo/flowersoft/theotown/components/coverage/HighEducationAspect;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/components/coverage/HighEducationAspect;-><init>(Linfo/flowersoft/theotown/city/City;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 45
    iget-object v0, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->aspects:[Linfo/flowersoft/theotown/components/coverage/Aspect;

    new-instance v1, Linfo/flowersoft/theotown/components/coverage/HealthCareAspect;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/components/coverage/HealthCareAspect;-><init>(Linfo/flowersoft/theotown/city/City;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 46
    iget-object v0, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->aspects:[Linfo/flowersoft/theotown/components/coverage/Aspect;

    new-instance v1, Linfo/flowersoft/theotown/components/coverage/WasteDisposalAspect;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/components/coverage/WasteDisposalAspect;-><init>(Linfo/flowersoft/theotown/city/City;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 47
    iget-object v0, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->aspects:[Linfo/flowersoft/theotown/components/coverage/Aspect;

    new-instance v1, Linfo/flowersoft/theotown/components/coverage/BodyDisposalAspect;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/components/coverage/BodyDisposalAspect;-><init>(Linfo/flowersoft/theotown/city/City;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-void
.end method

.method public getAspectFor(I)Linfo/flowersoft/theotown/components/coverage/Aspect;
    .registers 3

    .line 352
    iget-object v0, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->aspects:[Linfo/flowersoft/theotown/components/coverage/Aspect;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getCoverage(I)F
    .registers 4

    .line 306
    iget-object v0, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->coverageResults:[Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;

    aget-object p1, v0, p1

    .line 307
    iget v0, p1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;->neededAmount:I

    if-lez v0, :cond_16

    .line 308
    iget v0, p1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;->providedAmount:I

    iget v1, p1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;->reachedAmount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget p1, p1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;->neededAmount:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method public getInRangeCoverage(I)F
    .registers 4

    .line 315
    iget-object v0, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->coverageResults:[Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;

    aget-object p1, v0, p1

    .line 316
    iget v0, p1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;->reachedAmount:I

    if-lez v0, :cond_14

    .line 317
    iget v1, p1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;->providedAmount:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget p1, p1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;->reachedAmount:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public getNativeNeededAmount(I)I
    .registers 3

    .line 328
    iget-object v0, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->coverageResults:[Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;

    aget-object p1, v0, p1

    iget p1, p1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;->nativeNeededAmount:I

    return p1
.end method

.method public getNativeProvidedAmount(I)I
    .registers 3

    .line 324
    iget-object v0, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->coverageResults:[Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;

    aget-object p1, v0, p1

    iget p1, p1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;->nativeProvidedAmount:I

    return p1
.end method

.method public getNeededAmount(I)I
    .registers 3

    .line 336
    iget-object v0, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->coverageResults:[Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;

    aget-object p1, v0, p1

    iget p1, p1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;->neededAmount:I

    return p1
.end method

.method public getProvidedAmount(I)I
    .registers 3

    .line 332
    iget-object v0, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->coverageResults:[Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;

    aget-object p1, v0, p1

    iget p1, p1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;->providedAmount:I

    return p1
.end method

.method public getReachedAmount(I)I
    .registers 3

    .line 340
    iget-object v0, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->coverageResults:[Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;

    aget-object p1, v0, p1

    iget p1, p1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;->reachedAmount:I

    return p1
.end method

.method public final newProviderCandidate(FLinfo/flowersoft/theotown/city/objects/Building;Ljava/util/List;)Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;",
            ">;)",
            "Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;"
        }
    .end annotation

    .line 57
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 58
    new-instance p3, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;-><init>(Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$1;)V

    goto :goto_19

    .line 60
    :cond_d
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;

    .line 62
    :goto_19
    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;->set(FLinfo/flowersoft/theotown/city/objects/Building;)V

    return-object p3
.end method

.method public setCity(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 51
    iput-object p1, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->city:Linfo/flowersoft/theotown/city/City;

    .line 52
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->createAspects()V

    return-void
.end method

###### Class info.flowersoft.theotown.components.coverage.CoverageCalculator.AnonymousClass1 (info.flowersoft.theotown.components.coverage.CoverageCalculator$1)
.class public synthetic Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$1;
.super Ljava/lang/Object;
.source "CoverageCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class info.flowersoft.theotown.components.coverage.CoverageCalculator.CoverageResult (info.flowersoft.theotown.components.coverage.CoverageCalculator$CoverageResult)
.class public final Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;
.super Ljava/lang/Object;
.source "CoverageCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CoverageResult"
.end annotation


# instance fields
.field public nativeNeededAmount:I

.field public nativeProvidedAmount:I

.field public neededAmount:I

.field public needingBuildings:I

.field public providedAmount:I

.field public providingBuildings:I

.field public reachedAmount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$1;)V
    .registers 2

    .line 355
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$CoverageResult;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.components.coverage.CoverageCalculator.ProviderCandidate (info.flowersoft.theotown.components.coverage.CoverageCalculator$ProviderCandidate)
.class final Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;
.super Ljava/lang/Object;
.source "CoverageCalculator.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProviderCandidate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;",
        ">;"
    }
.end annotation


# instance fields
.field public building:Linfo/flowersoft/theotown/city/objects/Building;

.field public distance:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$1;)V
    .registers 2

    .line 365
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;)I
    .registers 3

    .line 376
    iget v0, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;->distance:F

    iget p1, p1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;->distance:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 365
    check-cast p1, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;->compareTo(Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;)I

    move-result p1

    return p1
.end method

.method public set(FLinfo/flowersoft/theotown/city/objects/Building;)V
    .registers 3

    .line 370
    iput p1, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;->distance:F

    .line 371
    iput-object p2, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$ProviderCandidate;->building:Linfo/flowersoft/theotown/city/objects/Building;

    return-void
.end method

###### Class info.flowersoft.theotown.components.coverage.CoverageCalculator$$ExternalSyntheticLambda0 (info.flowersoft.theotown.components.coverage.CoverageCalculator$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;ILjava/util/concurrent/CountDownLatch;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    iput p2, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    iget v1, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->$r8$lambda$u7epd4wTbC5TGmyTR-zXvPWJB_c(Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;ILjava/util/concurrent/CountDownLatch;)V

    return-void
.end method
