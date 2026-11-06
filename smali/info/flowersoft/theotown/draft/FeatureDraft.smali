###### Class info.flowersoft.theotown.draft.FeatureDraft (info.flowersoft.theotown.draft.FeatureDraft)
.class public Linfo/flowersoft/theotown/draft/FeatureDraft;
.super Linfo/flowersoft/theotown/draft/ViewportDraft;
.source "FeatureDraft.java"


# instance fields
.field public buyable:Z

.field public cityBound:Z

.field public consumable:Z

.field public consumeCtr:I

.field public currencyCode:Ljava/lang/String;

.field public final diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

.field public final diamonds:Linfo/flowersoft/theotown/util/SpecialInt;

.field public doubledIncomeTimeMin:I

.field public event:Ljava/lang/String;

.field public formattedPrice:Ljava/lang/String;

.field public freeTunnels:I

.field public ingameMoney:I

.field public lastConsumed:J

.field public lockDelayMinutes:J

.field public maxUnixTime:J

.field public microPrice:I

.field public minUnixTime:J

.field public shortBuildTimeMin:I

.field public sku:Ljava/lang/String;

.field public time:I

.field public token:Ljava/lang/String;

.field public unlockedBy:[Linfo/flowersoft/theotown/draft/FeatureDraft;

.field public unlocks:[Linfo/flowersoft/theotown/draft/FeatureDraft;

.field public unlocksIds:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/ViewportDraft;-><init>()V

    .line 17
    const-string v0, "?"

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/FeatureDraft;->formattedPrice:Ljava/lang/String;

    .line 43
    new-instance v0, Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/SpecialInt;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    .line 44
    new-instance v0, Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/SpecialInt;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    return-void
.end method


# virtual methods
.method public availableForPurchase()Z
    .registers 7

    .line 57
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/FeatureDraft;->buyable:Z

    if-eqz v0, :cond_30

    .line 58
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isTimeConstraint()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Linfo/flowersoft/theotown/draft/FeatureDraft;->getRemainingUnlockedSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    iget-wide v4, p0, Linfo/flowersoft/theotown/draft/FeatureDraft;->lockDelayMinutes:J

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_30

    :cond_1a
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/FeatureDraft;->formattedPrice:Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Linfo/flowersoft/theotown/draft/FeatureDraft;->formattedPrice:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x1

    return v0

    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method public getRemainingUnlockedSeconds()J
    .registers 7

    .line 67
    iget-wide v0, p0, Linfo/flowersoft/theotown/draft/FeatureDraft;->maxUnixTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_15

    .line 68
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0

    :cond_15
    return-wide v2
.end method

.method public getUnlockedReason()Linfo/flowersoft/theotown/draft/FeatureDraft;
    .registers 8

    .line 83
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/FeatureDraft;->consumable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    .line 85
    :cond_6
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    const-string v2, "special offer"

    const/4 v3, 0x0

    if-eqz v0, :cond_30

    .line 86
    invoke-static {v2}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 87
    const-string v4, "test locked drafts"

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_30

    move v4, v3

    .line 89
    :goto_1a
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_30

    .line 90
    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 91
    iget-object v6, p0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    return-object v1

    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 97
    :cond_30
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isPurchased()Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_73

    .line 99
    :cond_37
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/FeatureDraft;->unlockedBy:[Linfo/flowersoft/theotown/draft/FeatureDraft;

    if-eqz v0, :cond_51

    move v0, v3

    .line 100
    :goto_3c
    iget-object v4, p0, Linfo/flowersoft/theotown/draft/FeatureDraft;->unlockedBy:[Linfo/flowersoft/theotown/draft/FeatureDraft;

    array-length v5, v4

    if-ge v0, v5, :cond_51

    .line 101
    aget-object v4, v4, v0

    invoke-virtual {v4}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 102
    iget-object v1, p0, Linfo/flowersoft/theotown/draft/FeatureDraft;->unlockedBy:[Linfo/flowersoft/theotown/draft/FeatureDraft;

    aget-object v0, v1, v0

    return-object v0

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 107
    :cond_51
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-eqz v0, :cond_77

    .line 108
    invoke-static {v2}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 109
    const-string v2, "test unlocked drafts"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 111
    :goto_61
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_77

    .line 112
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    iget-object v4, p0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    :goto_73
    return-object p0

    :cond_74
    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    :cond_77
    return-object v1
.end method

.method public isPurchased()Z
    .registers 2

    .line 75
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/FeatureDraft;->token:Ljava/lang/String;

    if-nez v0, :cond_15

    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->isFeatureBought(Linfo/flowersoft/theotown/draft/FeatureDraft;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    return v0

    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public isTimeConstraint()Z
    .registers 5

    .line 63
    iget-wide v0, p0, Linfo/flowersoft/theotown/draft/FeatureDraft;->maxUnixTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public isUnlocked()Z
    .registers 2

    .line 79
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draft/FeatureDraft;->getUnlockedReason()Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method
