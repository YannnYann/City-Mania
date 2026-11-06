###### Class info.flowersoft.theotown.mechanics.RewardManager (info.flowersoft.theotown.mechanics.RewardManager)
.class public Linfo/flowersoft/theotown/mechanics/RewardManager;
.super Ljava/lang/Object;
.source "RewardManager.java"


# instance fields
.field public adRewardCount:I

.field public lastAdReward:J

.field public lastReward:J

.field public lastRewardPlayTimeSeconds:J

.field public rewardCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdRewardCount()I
    .registers 2

    .line 76
    iget v0, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->adRewardCount:I

    return v0
.end method

.method public getRewardDay()I
    .registers 2

    .line 56
    iget v0, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->rewardCount:I

    return v0
.end method

.method public isTimeForReward()Z
    .registers 13

    .line 33
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->isConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 38
    :cond_c
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v2

    .line 39
    iget-wide v4, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->lastReward:J

    sub-long v4, v2, v4

    .line 40
    iget-wide v6, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->lastRewardPlayTimeSeconds:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_2e

    sget-wide v10, Linfo/flowersoft/theotown/resources/Settings;->playTimeSeconds:J

    sub-long/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v10, 0x1e

    cmp-long v0, v6, v10

    if-gez v0, :cond_2e

    return v1

    :cond_2e
    cmp-long v0, v4, v8

    if-gez v0, :cond_3b

    .line 44
    iput-wide v2, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->lastReward:J

    .line 45
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V

    .line 48
    :cond_3b
    iget-wide v2, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->lastReward:J

    cmp-long v0, v2, v8

    if-lez v0, :cond_4a

    const-wide/32 v2, 0xf731400

    cmp-long v0, v4, v2

    if-lez v0, :cond_4a

    .line 49
    iput v1, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->rewardCount:I

    :cond_4a
    const-wide/32 v2, 0x36ee800

    cmp-long v0, v4, v2

    if-ltz v0, :cond_53

    const/4 v0, 0x1

    return v0

    :cond_53
    return v1
.end method

.method public loadData(Linfo/flowersoft/theotown/util/SSP$Reader;)V
    .registers 8

    .line 17
    const-string v0, "last reward"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->lastReward:J

    .line 18
    const-string v0, "reward count"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3}, Linfo/flowersoft/theotown/util/SSP$Reader;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->rewardCount:I

    .line 19
    const-string v0, "last ad reward"

    invoke-interface {p1, v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->lastAdReward:J

    .line 20
    const-string v0, "ad reward count"

    invoke-interface {p1, v0, v3}, Linfo/flowersoft/theotown/util/SSP$Reader;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->adRewardCount:I

    .line 21
    const-string v0, "last reward play time seconds"

    invoke-interface {p1, v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Reader;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->lastRewardPlayTimeSeconds:J

    return-void
.end method

.method public rewardPlayer(ILjava/lang/String;)V
    .registers 5

    .line 60
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->lastReward:J

    .line 61
    sget-wide v0, Linfo/flowersoft/theotown/resources/Settings;->playTimeSeconds:J

    iput-wide v0, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->lastRewardPlayTimeSeconds:J

    .line 62
    iget v0, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->rewardCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->rewardCount:I

    .line 63
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0, p1, v1, p2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnDiamonds(IZLjava/lang/String;)V

    return-void
.end method

.method public rewardPlayerForAd(ILjava/lang/String;)V
    .registers 5

    .line 67
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnDiamonds(IZLjava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/RewardManager;->getAdRewardCount()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/mechanics/RewardManager;->setAdRewardCount(I)V

    return-void
.end method

.method public saveData(Linfo/flowersoft/theotown/util/SSP$Writer;)V
    .registers 5

    .line 25
    const-string v0, "last reward"

    iget-wide v1, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->lastReward:J

    invoke-interface {p1, v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putLong(Ljava/lang/String;J)V

    .line 26
    const-string v0, "reward count"

    iget v1, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->rewardCount:I

    invoke-interface {p1, v0, v1}, Linfo/flowersoft/theotown/util/SSP$Writer;->putInt(Ljava/lang/String;I)V

    .line 27
    const-string v0, "last ad reward"

    iget-wide v1, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->lastAdReward:J

    invoke-interface {p1, v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putLong(Ljava/lang/String;J)V

    .line 28
    const-string v0, "ad reward count"

    iget v1, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->adRewardCount:I

    invoke-interface {p1, v0, v1}, Linfo/flowersoft/theotown/util/SSP$Writer;->putInt(Ljava/lang/String;I)V

    .line 29
    const-string v0, "last reward play time seconds"

    iget-wide v1, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->lastRewardPlayTimeSeconds:J

    invoke-interface {p1, v0, v1, v2}, Linfo/flowersoft/theotown/util/SSP$Writer;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public setAdRewardCount(I)V
    .registers 4

    .line 80
    iput p1, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->adRewardCount:I

    .line 81
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->lastAdReward:J

    .line 82
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V

    return-void
.end method

.method public timeSinceLastAdReward()J
    .registers 5

    .line 72
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/mechanics/RewardManager;->lastAdReward:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
