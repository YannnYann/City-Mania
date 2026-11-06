###### Class info.flowersoft.theotown.components.DefaultRequirement (info.flowersoft.theotown.components.DefaultRequirement)
.class public final Linfo/flowersoft/theotown/components/DefaultRequirement;
.super Linfo/flowersoft/theotown/city/components/Requirement;
.source "DefaultRequirement.java"


# instance fields
.field public final MIN_RANK_DELAY_DAYS:I

.field public final lastUnlocked:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Linfo/flowersoft/theotown/draft/Draft;",
            ">;"
        }
    .end annotation
.end field

.field public final lockedDrafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Draft;",
            ">;"
        }
    .end annotation
.end field

.field public newRank:Linfo/flowersoft/theotown/draft/RankDraft;

.field public final rankConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final unlockedDrafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/Draft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 39
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Requirement;-><init>()V

    .line 28
    const-string v0, "rank"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->rankConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 29
    const-string v1, "min delay days"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->MIN_RANK_DELAY_DAYS:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->lockedDrafts:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->unlockedDrafts:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->lastUnlocked:Ljava/util/Queue;

    .line 44
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Draft;

    .line 45
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->hasRequirement()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 46
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->lockedDrafts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 47
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/draft/Draft;->setUnlocked(Z)V

    goto :goto_34

    :cond_50
    const/4 v2, 0x1

    .line 49
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/draft/Draft;->setUnlocked(Z)V

    goto :goto_34

    :cond_55
    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/DefaultRequirement;-><init>()V

    .line 57
    :goto_3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 58
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unlocked drafts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 59
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 60
    :cond_18
    :goto_18
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 61
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 62
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 63
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/Draft;

    .line 64
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->hasRequirement()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draft/Draft;->setUnlocked(Z)V

    .line 66
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->lockedDrafts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 67
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->unlockedDrafts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 71
    :cond_47
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_3

    .line 73
    :cond_4b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_3

    :cond_4f
    return-void
.end method


# virtual methods
.method public checkUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;Ljava/lang/Object;)Z
    .registers 4

    .line 95
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/Draft;->getRequirement()Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 96
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1, v0, p2}, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->isFulfilled(Linfo/flowersoft/theotown/city/City;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    return p1

    :cond_11
    :goto_11
    const/4 p1, 0x1

    return p1
.end method

.method public flushUnlocked()V
    .registers 2

    .line 146
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->lastUnlocked:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public getNewRank()Linfo/flowersoft/theotown/draft/RankDraft;
    .registers 10

    .line 156
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v0

    return-object v0

    .line 158
    :cond_13
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 159
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/RankDraft;->xp:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v2, 0x9

    .line 160
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultPeople;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/People;->getPeople()I

    move-result v1

    .line 158
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 161
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTargetXp()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/City;->setTargetXp(I)V

    .line 164
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v2

    .line 165
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v0

    .line 166
    sget-object v4, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_a2

    add-int/2addr v4, v1

    .line 167
    sget-object v5, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_a2

    .line 168
    sget-object v4, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/RankDraft;

    .line 169
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/RankDraft;->xp:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    .line 170
    iget-object v4, v4, Linfo/flowersoft/theotown/draft/RankDraft;->xp:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v4

    .line 171
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getRankUpgradeAbsDay()J

    move-result-wide v5

    .line 172
    iget v7, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->MIN_RANK_DELAY_DAYS:I

    int-to-long v7, v7

    add-long/2addr v7, v5

    sub-long/2addr v2, v5

    long-to-float v2, v2

    sub-long/2addr v7, v5

    long-to-float v3, v7

    div-float/2addr v2, v3

    sub-int/2addr v4, v0

    int-to-float v3, v4

    mul-float/2addr v2, v3

    float-to-double v2, v2

    .line 174
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/2addr v2, v0

    .line 175
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTargetXp()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->setCurrentXp(I)V

    goto :goto_ab

    .line 177
    :cond_a2
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTargetXp()I

    move-result v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->setCurrentXp(I)V

    .line 180
    :goto_ab
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getCurrentXp()I

    move-result v0

    .line 181
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->newRank:Linfo/flowersoft/theotown/draft/RankDraft;

    if-nez v2, :cond_bd

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->newRank:Linfo/flowersoft/theotown/draft/RankDraft;

    .line 183
    :cond_bd
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->newRank:Linfo/flowersoft/theotown/draft/RankDraft;

    iget v2, v2, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    add-int/2addr v2, v1

    :goto_c2
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_df

    .line 184
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/RankDraft;

    .line 185
    iget-object v3, v1, Linfo/flowersoft/theotown/draft/RankDraft;->xp:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v3

    if-lt v0, v3, :cond_df

    .line 186
    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->newRank:Linfo/flowersoft/theotown/draft/RankDraft;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c2

    .line 192
    :cond_df
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->newRank:Linfo/flowersoft/theotown/draft/RankDraft;

    return-object v0
.end method

.method public getNewUnlockedDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 3

    .line 138
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->lastUnlocked:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 141
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->lastUnlocked:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/Draft;

    return-object v0

    .line 139
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No new unlocked draft!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNewRank()Z
    .registers 3

    .line 151
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->newRank:Linfo/flowersoft/theotown/draft/RankDraft;

    if-eqz v0, :cond_14

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v0

    iget v0, v0, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->newRank:Linfo/flowersoft/theotown/draft/RankDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    if-ge v0, v1, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public hasNewUnlockedDraft()Z
    .registers 2

    .line 133
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->lastUnlocked:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public nextDay()V
    .registers 6

    .line 101
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->nextDay()V

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v0

    iget v0, v0, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    sget v1, Linfo/flowersoft/theotown/resources/Settings;->maxRank:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Linfo/flowersoft/theotown/resources/Settings;->maxRank:I

    .line 106
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->lockedDrafts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 107
    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4c

    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Draft;

    .line 109
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->getRequirement()Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    move-result-object v3

    .line 110
    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, v4, v2}, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->isFulfilled(Linfo/flowersoft/theotown/city/City;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 112
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->unlockedDrafts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 113
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/draft/Draft;->setUnlocked(Z)V

    .line 115
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->isFulfilledBecauseOfSandMode(Linfo/flowersoft/theotown/city/City;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 116
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->lastUnlocked:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 121
    :cond_4c
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->unlockedDrafts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 122
    :goto_52
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 123
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Draft;

    .line 124
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->getRequirement()Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    move-result-object v3

    .line 125
    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, v4, v2}, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->isFulfilled(Linfo/flowersoft/theotown/city/City;Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/draft/Draft;->setUnlocked(Z)V

    goto :goto_52

    .line 128
    :cond_6c
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultRequirement;->getNewRank()Linfo/flowersoft/theotown/draft/RankDraft;

    return-void
.end method

.method public prepare()V
    .registers 1

    .line 90
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->prepare()V

    .line 91
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultRequirement;->nextDay()V

    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    const-string v0, "unlocked drafts"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 80
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    .line 81
    :goto_9
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->unlockedDrafts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 82
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->unlockedDrafts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Draft;

    .line 83
    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 85
    :cond_21
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public setNewRank(Linfo/flowersoft/theotown/draft/RankDraft;)V
    .registers 2

    .line 196
    iput-object p1, p0, Linfo/flowersoft/theotown/components/DefaultRequirement;->newRank:Linfo/flowersoft/theotown/draft/RankDraft;

    return-void
.end method
