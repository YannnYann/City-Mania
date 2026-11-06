###### Class info.flowersoft.theotown.draftloader.FeatureDraftLoader (info.flowersoft.theotown.draftloader.FeatureDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/FeatureDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "FeatureDraftLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public afterLoading()V
    .registers 10

    .line 82
    invoke-super {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->afterLoading()V

    .line 84
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->FEATURES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 85
    iget-object v3, v1, Linfo/flowersoft/theotown/draft/FeatureDraft;->unlocksIds:[Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 86
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, Linfo/flowersoft/theotown/draft/FeatureDraft;->unlocksIds:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    iget-object v4, v1, Linfo/flowersoft/theotown/draft/FeatureDraft;->unlocksIds:[Ljava/lang/String;

    array-length v5, v4

    move v6, v2

    :goto_26
    if-ge v6, v5, :cond_3a

    aget-object v7, v4, v6

    .line 88
    sget-object v8, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/draft/FeatureDraft;

    if-eqz v7, :cond_37

    .line 90
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_26

    .line 93
    :cond_3a
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 94
    new-array v2, v2, [Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Linfo/flowersoft/theotown/draft/FeatureDraft;

    iput-object v2, v1, Linfo/flowersoft/theotown/draft/FeatureDraft;->unlocks:[Linfo/flowersoft/theotown/draft/FeatureDraft;

    goto :goto_9

    .line 99
    :cond_4b
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->FEATURES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_51
    :goto_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 101
    sget-object v4, Linfo/flowersoft/theotown/resources/Drafts;->FEATURES:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_68
    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_93

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 102
    invoke-virtual {v1, v5}, Linfo/flowersoft/theotown/draft/Draft;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_68

    iget-object v6, v5, Linfo/flowersoft/theotown/draft/FeatureDraft;->unlocks:[Linfo/flowersoft/theotown/draft/FeatureDraft;

    if-eqz v6, :cond_68

    move v6, v2

    .line 103
    :goto_7f
    iget-object v7, v5, Linfo/flowersoft/theotown/draft/FeatureDraft;->unlocks:[Linfo/flowersoft/theotown/draft/FeatureDraft;

    array-length v8, v7

    if-ge v6, v8, :cond_68

    .line 104
    aget-object v7, v7, v6

    invoke-virtual {v7, v1}, Linfo/flowersoft/theotown/draft/Draft;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_90

    .line 105
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_68

    :cond_90
    add-int/lit8 v6, v6, 0x1

    goto :goto_7f

    .line 111
    :cond_93
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_51

    .line 112
    new-array v4, v2, [Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Linfo/flowersoft/theotown/draft/FeatureDraft;

    iput-object v3, v1, Linfo/flowersoft/theotown/draft/FeatureDraft;->unlockedBy:[Linfo/flowersoft/theotown/draft/FeatureDraft;

    goto :goto_51

    :cond_a4
    return-void
.end method

.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 21
    const-string v0, "feature"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v1, Linfo/flowersoft/theotown/draftloader/FeatureDraftLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/FeatureDraftLoader$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {p0, v0, v2, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->getDraft(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/Class;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 27
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->setFinal()V

    .line 29
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 30
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "sku"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->sku:Ljava/lang/String;

    if-eqz v1, :cond_68

    .line 31
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_68

    const-string v1, "playstore"

    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->STORE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 32
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sku "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Linfo/flowersoft/theotown/crossplatform/TheoTown;->STORE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 33
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->STORE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->sku:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->sku:Ljava/lang/String;

    .line 36
    :cond_68
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "event"

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->event:Ljava/lang/String;

    .line 37
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "buyable"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->buyable:Z

    .line 39
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "city bound"

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->cityBound:Z

    .line 40
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "consumable"

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->consumable:Z

    .line 42
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "unlocks"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 43
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->unlocksIds:[Ljava/lang/String;

    move v2, v3

    .line 45
    :goto_aa
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_bb

    .line 46
    iget-object v4, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->unlocksIds:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_aa

    .line 50
    :cond_bb
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "money"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->ingameMoney:I

    .line 52
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    iget-object v2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "diamonds"

    invoke-virtual {v2, v4, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    .line 53
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v1

    if-ltz v1, :cond_15c

    .line 57
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    iget-object v2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "price diamonds"

    invoke-virtual {v2, v4, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    .line 58
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v1

    if-ltz v1, :cond_156

    .line 62
    const-string v1, "frame"

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const-string v4, "frames"

    invoke-virtual {p0, v4, v1, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 64
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "time"

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->time:I

    .line 65
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "short build time"

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->shortBuildTimeMin:I

    .line 66
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "doubled income time"

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->doubledIncomeTimeMin:I

    .line 68
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "min unix time"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->minUnixTime:J

    .line 69
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "max unix time"

    invoke-virtual {v1, v2, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->maxUnixTime:J

    .line 70
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "lock delay minutes"

    invoke-virtual {v1, v2, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->lockDelayMinutes:J

    .line 72
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "free tunnels"

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->freeTunnels:I

    .line 73
    iput-boolean v3, v0, Linfo/flowersoft/theotown/draft/Draft;->index:Z

    .line 75
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->FEATURES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    if-nez v1, :cond_155

    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->SKU_TO_FEATURE:Ljava/util/Map;

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->sku:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_155
    return-object v0

    .line 59
    :cond_156
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 54
    :cond_15c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

###### Class info.flowersoft.theotown.draftloader.FeatureDraftLoader$$ExternalSyntheticLambda0 (info.flowersoft.theotown.draftloader.FeatureDraftLoader$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/FeatureDraftLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/FeatureDraft;-><init>()V

    return-object v0
.end method
