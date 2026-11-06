###### Class info.flowersoft.theotown.resources.AdReward (info.flowersoft.theotown.resources.AdReward)
.class public Linfo/flowersoft/theotown/resources/AdReward;
.super Ljava/lang/Object;
.source "AdReward.java"


# instance fields
.field public final adRewardObj:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final handler:Linfo/flowersoft/theotown/mechanics/RewardManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "ad reward"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/AdReward;->adRewardObj:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 11
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getRewardManager()Linfo/flowersoft/theotown/mechanics/RewardManager;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/AdReward;->handler:Linfo/flowersoft/theotown/mechanics/RewardManager;

    return-void
.end method


# virtual methods
.method public getAvailableCount()I
    .registers 2

    .line 22
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/AdReward;->handler:Linfo/flowersoft/theotown/mechanics/RewardManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/RewardManager;->getAdRewardCount()I

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .registers 7

    .line 14
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/AdReward;->handler:Linfo/flowersoft/theotown/mechanics/RewardManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/RewardManager;->timeSinceLastAdReward()J

    move-result-wide v0

    iget-object v2, p0, Linfo/flowersoft/theotown/resources/AdReward;->adRewardObj:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "cooldown minutes"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_23

    .line 15
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/AdReward;->handler:Linfo/flowersoft/theotown/mechanics/RewardManager;

    iget-object v1, p0, Linfo/flowersoft/theotown/resources/AdReward;->adRewardObj:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "max at once"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/mechanics/RewardManager;->setAdRewardCount(I)V

    .line 18
    :cond_23
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/AdReward;->handler:Linfo/flowersoft/theotown/mechanics/RewardManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/RewardManager;->getAdRewardCount()I

    move-result v0

    if-lez v0, :cond_2d

    const/4 v0, 0x1

    return v0

    :cond_2d
    const/4 v0, 0x0

    return v0
.end method
