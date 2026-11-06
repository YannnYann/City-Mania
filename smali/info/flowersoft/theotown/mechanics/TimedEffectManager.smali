###### Class info.flowersoft.theotown.mechanics.TimedEffectManager (info.flowersoft.theotown.mechanics.TimedEffectManager)
.class public Linfo/flowersoft/theotown/mechanics/TimedEffectManager;
.super Ljava/lang/Object;
.source "TimedEffectManager.java"


# instance fields
.field public doubleIncomeDays:I

.field public doubledIncomeMS:J

.field public fastForwardDays:I

.field public freeTunnels:I

.field public halfTunnelPriceMS:J

.field public lastCityUpdateMS:J

.field public lastFastForwardSet:J

.field public lastSaveTimeMS:J

.field public shortBuildTimeMS:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized addDoubledIncomeMS(J)V
    .registers 7

    monitor-enter p0

    .line 133
    :try_start_1
    iget-wide v0, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->doubledIncomeMS:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->doubledIncomeMS:J

    .line 134
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 135
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public declared-synchronized addFreeTunnels(I)V
    .registers 3

    monitor-enter p0

    .line 159
    :try_start_1
    iget v0, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->freeTunnels:I

    add-int/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->freeTunnels:I

    .line 160
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 161
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public declared-synchronized addShortBuildTime(J)V
    .registers 7

    monitor-enter p0

    .line 150
    :try_start_1
    iget-wide v0, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->shortBuildTimeMS:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->shortBuildTimeMS:J

    .line 151
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 152
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public consumeDoubleIncomeDays()Z
    .registers 3

    .line 101
    iget v0, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->doubleIncomeDays:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->doubleIncomeDays:I

    if-ltz v0, :cond_10

    .line 103
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V

    return v1

    :cond_10
    const/4 v0, 0x0

    .line 106
    iput v0, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->doubleIncomeDays:I

    return v0
.end method

.method public declared-synchronized consumeFreeTunnels(I)I
    .registers 3

    monitor-enter p0

    .line 164
    :try_start_1
    iget v0, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->freeTunnels:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 165
    iget v0, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->freeTunnels:I

    sub-int/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->freeTunnels:I

    .line 166
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 167
    monitor-exit p0

    return p1

    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public getDoubleIncomeDays()I
    .registers 2

    .line 112
    iget v0, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->doubleIncomeDays:I

    return v0
.end method

.method public getFastForwardDays()I
    .registers 2

    .line 86
    iget v0, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->fastForwardDays:I

    return v0
.end method

.method public declared-synchronized getFreeTunnels()I
    .registers 2

    monitor-enter p0

    .line 155
    :try_start_1
    iget v0, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->freeTunnels:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getRemainingDoubledIncomeMS()J
    .registers 3

    .line 129
    iget-wide v0, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->doubledIncomeMS:J

    return-wide v0
.end method

.method public getRemainingHalfTunnelPriceMS()J
    .registers 3

    .line 120
    iget-wide v0, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->halfTunnelPriceMS:J

    return-wide v0
.end method

.method public getRemainingShortBuildTimeMS()J
    .registers 3

    .line 146
    iget-wide v0, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->shortBuildTimeMS:J

    return-wide v0
.end method

.method public getShortBuildTimeFactor()I
    .registers 5

    .line 142
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getRemainingShortBuildTimeMS()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    const/16 v0, 0x8

    return v0

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public getTunnelPriceFactor(I)I
    .registers 6

    .line 116
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getRemainingHalfTunnelPriceMS()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_11

    const/16 v0, 0x40

    if-lt p1, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x1

    return p1

    :cond_11
    :goto_11
    const/4 p1, 0x2

    return p1
.end method

.method public loadData(Linfo/flowersoft/theotown/util/SSP$Reader;)V
    .registers 14

    .line 24
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v0

    .line 26
    const-string v2, "fast forward days"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Linfo/flowersoft/theotown/util/SSP$Reader;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->fastForwardDays:I

    .line 27
    const-string v2, "double income days"

    invoke-interface {p1, v2, v3}, Linfo/flowersoft/theotown/util/SSP$Reader;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->doubleIncomeDays:I

    .line 29
    const-string v2, "short build time start time"

    const-wide/16 v4, 0x0

    invoke-interface {p1, v2, v4, v5}, Linfo/flowersoft/theotown/util/SSP$Reader;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 30
    const-string v2, "short build time duration"

    invoke-interface {p1, v2, v4, v5}, Linfo/flowersoft/theotown/util/SSP$Reader;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 31
    const-string v2, "short build time remaining"

    invoke-interface {p1, v2, v4, v5}, Linfo/flowersoft/theotown/util/SSP$Reader;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v2, v10, v4

    if-eqz v2, :cond_34

    .line 33
    iput-wide v10, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->shortBuildTimeMS:J

    goto :goto_38

    :cond_34
    add-long/2addr v6, v8

    sub-long/2addr v6, v0

    .line 35
    iput-wide v6, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->shortBuildTimeMS:J

    .line 38
    :goto_38
    const-string v2, "half tunnel price start time"

    invoke-interface {p1, v2, v4, v5}, Linfo/flowersoft/theotown/util/SSP$Reader;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 39
    const-string v2, "half tunnel price duration"

    invoke-interface {p1, v2, v4, v5}, Linfo/flowersoft/theotown/util/SSP$Reader;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 40
    const-string v2, "half tunnel price remaining"

    invoke-interface {p1, v2, v4, v5}, Linfo/flowersoft/theotown/util/SSP$Reader;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v2, v10, v4

    if-eqz v2, :cond_51

    .line 42
    iput-wide v10, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->halfTunnelPriceMS:J

    goto :goto_55

    :cond_51
    add-long/2addr v6, v8

    sub-long/2addr v6, v0

    .line 44
    iput-wide v6, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->halfTunnelPriceMS:J

    .line 47
    :goto_55
    const-string v2, "doubled income start time"

    invoke-interface {p1, v2, v4, v5}, Linfo/flowersoft/theotown/util/SSP$Reader;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 48
    const-string v2, "doubled income duration"

    invoke-interface {p1, v2, v4, v5}, Linfo/flowersoft/theotown/util/SSP$Reader;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 49
    const-string v2, "doubled income remaining"

    invoke-interface {p1, v2, v4, v5}, Linfo/flowersoft/theotown/util/SSP$Reader;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v2, v10, v4

    if-eqz v2, :cond_6e

    .line 51
    iput-wide v10, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->doubledIncomeMS:J

    goto :goto_72

    :cond_6e
    add-long/2addr v6, v8

    sub-long/2addr v6, v0

    .line 53
    iput-wide v6, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->doubledIncomeMS:J

    .line 56
    :goto_72
    const-string v0, "free tunnels"

    invoke-interface {p1, v0, v3}, Linfo/flowersoft/theotown/util/SSP$Reader;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->freeTunnels:I

    return-void
.end method

.method public saveData(Linfo/flowersoft/theotown/util/SSP$Writer;)V
    .registers 5

    .line 76
    const-string v0, "fast forward days"

    iget v1, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->fastForwardDays:I

    invoke-interface {p1, v0, v1}, Linfo/flowersoft/theotown/util/SSP$Writer;->putInt(Ljava/lang/String;I)V

    .line 77
    const-string v0, "double income days"

    iget v1, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->doubleIncomeDays:I

    invoke-interface {p1, v0, v1}, Linfo/flowersoft/theotown/util/SSP$Writer;->putInt(Ljava/lang/String;I)V

    .line 78
    const-string v0, "short build time remaining"

    iget-wide v1, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->shortBuildTimeMS:J

    invoke-interface {p1, v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putLong(Ljava/lang/String;J)V

    .line 79
    const-string v0, "half tunnel price remaining"

    iget-wide v1, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->halfTunnelPriceMS:J

    invoke-interface {p1, v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putLong(Ljava/lang/String;J)V

    .line 80
    const-string v0, "doubled income remaining"

    iget-wide v1, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->doubledIncomeMS:J

    invoke-interface {p1, v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putLong(Ljava/lang/String;J)V

    .line 81
    const-string v0, "free tunnels"

    iget v1, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->freeTunnels:I

    invoke-interface {p1, v0, v1}, Linfo/flowersoft/theotown/util/SSP$Writer;->putInt(Ljava/lang/String;I)V

    .line 82
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->lastSaveTimeMS:J

    return-void
.end method

.method public setFastForwardDays(I)V
    .registers 4

    const/4 v0, 0x0

    .line 90
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->fastForwardDays:I

    .line 91
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V

    .line 92
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->lastFastForwardSet:J

    return-void
.end method

.method public tunnelsAreFree()Z
    .registers 2

    .line 138
    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->getInstance()Linfo/flowersoft/theotown/resources/Features;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_FREETUNNELS00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/LazyGetter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result v0

    return v0
.end method

.method public updateInCity()V
    .registers 9

    .line 63
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v0

    .line 64
    iget-wide v2, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->lastCityUpdateMS:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 65
    iput-wide v0, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->lastCityUpdateMS:J

    .line 68
    iget-wide v4, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->shortBuildTimeMS:J

    sub-long/2addr v4, v2

    const-wide/32 v6, -0x186a0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->shortBuildTimeMS:J

    .line 69
    iget-wide v4, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->halfTunnelPriceMS:J

    sub-long/2addr v4, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->halfTunnelPriceMS:J

    .line 70
    iget-wide v4, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->doubledIncomeMS:J

    sub-long/2addr v4, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->doubledIncomeMS:J

    .line 72
    iget-wide v2, p0, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->lastSaveTimeMS:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_48

    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V

    :cond_48
    return-void
.end method
