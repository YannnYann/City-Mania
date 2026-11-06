###### Class info.flowersoft.theotown.draftloader.BusStopDraftLoader (info.flowersoft.theotown.draftloader.BusStopDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/BusStopDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "BusStopDraftLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 19
    const-string v0, "bus stop"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 24
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v1, Linfo/flowersoft/theotown/draftloader/BusStopDraftLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/BusStopDraftLoader$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Linfo/flowersoft/theotown/draft/BusStopDraft;

    invoke-virtual {p0, v0, v2, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->getDraft(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/Class;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BusStopDraft;

    .line 26
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 27
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const-string v3, "frames"

    const-string v4, "frame"

    invoke-virtual {p0, v3, v4, v0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    if-eqz v1, :cond_1f7

    .line 33
    array-length v3, v1

    if-eqz v3, :cond_1da

    array-length v1, v1

    rem-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1da

    .line 37
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "animation"

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 38
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->hashCode()I

    move-result v1

    invoke-virtual {p0, v1, v3}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadAnimations(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->animationSpots:Ljava/util/List;

    .line 39
    iget-object v4, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v5, "frame animation indices"

    const/16 v6, 0x10

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrameAnimationIndices(Ljava/lang/String;Ljava/lang/String;IILinfo/flowersoft/theotown/util/json/JSONObject;)[[I

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->animationSpotIndices:[[I

    goto :goto_51

    :cond_50
    move-object v3, p0

    .line 42
    :goto_51
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "animation fg"

    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 43
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->hashCode()I

    move-result v1

    invoke-virtual {p0, v1, v4}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadAnimations(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->animationFGSpots:Ljava/util/List;

    .line 44
    iget-object v4, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v5, "frame animation fg indices"

    const/16 v6, 0x10

    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrameAnimationIndices(Ljava/lang/String;Ljava/lang/String;IILinfo/flowersoft/theotown/util/json/JSONObject;)[[I

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->animationFGSpotIndices:[[I

    .line 47
    :cond_77
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "width"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->width:I

    .line 48
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "height"

    invoke-virtual {v1, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->height:I

    .line 50
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "price"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->positivePrice(I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->price:I

    .line 51
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "monthly price"

    invoke-virtual {v1, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->positivePrice(I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->monthlyPrice:I

    .line 53
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "capacity"

    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->capacity:I

    .line 55
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadInfluences()[I

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->influenceInduceVector:[I

    .line 57
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-object v4, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iget-object v6, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

    const-string v7, "add price"

    invoke-virtual {p0, v1, v7, v4, v6}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDraftList(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/lang/String;[Linfo/flowersoft/theotown/draft/Draft;)[Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

    .line 61
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v4, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->speed:F

    float-to-double v6, v4

    const-string v4, "speed"

    invoke-virtual {v1, v4, v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v1, v6

    iput v1, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->speed:F

    .line 62
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v4, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->enterSpeed:F

    float-to-double v6, v4

    const-string v4, "enter speed"

    invoke-virtual {v1, v4, v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v1, v6

    iput v1, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->enterSpeed:F

    .line 63
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v4, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->exitSpeed:F

    float-to-double v6, v4

    const-string v4, "exit speed"

    invoke-virtual {v1, v4, v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v1, v6

    iput v1, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->exitSpeed:F

    .line 65
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "parcel speeds"

    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_123

    .line 67
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [F

    iput-object v4, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->parcelSpeeds:[F

    .line 68
    :goto_103
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v5, v4, :cond_115

    .line 69
    iget-object v4, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->parcelSpeeds:[F

    invoke-virtual {v1, v5}, Linfo/flowersoft/theotown/util/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_103

    .line 71
    :cond_115
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->parcelSpeeds:[F

    array-length v1, v1

    if-eqz v1, :cond_11b

    goto :goto_123

    :cond_11b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parcel speeds array may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_123
    :goto_123
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->meta:Linfo/flowersoft/theotown/util/json/JSONObject;

    if-nez v1, :cond_13f

    .line 77
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 78
    const-string v4, "default_busstop"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 79
    new-instance v4, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v4}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    iput-object v4, v0, Linfo/flowersoft/theotown/draft/Draft;->meta:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 80
    const-string v5, "tags"

    invoke-virtual {v4, v5, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 84
    :cond_13f
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->roadFlags:Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;

    iget-object v4, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v5, "flag"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->load(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->flags:J

    .line 85
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "x flags"

    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_166

    .line 86
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    .line 87
    iget-object v4, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->roadFlags:Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;

    invoke-virtual {v4, v1, v5, v6, v7}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->load(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->xFlags:J

    goto :goto_16a

    .line 89
    :cond_166
    iget-wide v4, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->flags:J

    iput-wide v4, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->xFlags:J

    .line 99
    :goto_16a
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->roadFlags:Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;

    iget-object v4, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v5, "required flag"

    const-wide/32 v6, 0x18000f6

    invoke-virtual {v1, v4, v5, v6, v7}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->load(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->requiredFlags:J

    .line 100
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "min dirs"

    iget v5, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->minDirs:I

    invoke-virtual {v1, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->minDirs:I

    .line 101
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "max dirs"

    iget v5, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->maxDirs:I

    invoke-virtual {v1, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->maxDirs:I

    .line 102
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "symmetric dirs"

    iget-boolean v5, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->symmetricDirs:Z

    invoke-virtual {v1, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->symmetricDirs:Z

    .line 104
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "min level"

    iget v5, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->minLevel:I

    invoke-virtual {v1, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->minLevel:I

    .line 105
    iget-object v1, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "max level"

    iget v5, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->maxLevel:I

    invoke-virtual {v1, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/BusStopDraft;->maxLevel:I

    .line 109
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-nez v1, :cond_1c5

    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v4, "$cat_bus00"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/CategoryDraft;

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    .line 111
    :cond_1c5
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/BusStopDraft;

    if-eqz v1, :cond_1d4

    .line 113
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->BUSSTOPS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 115
    :cond_1d4
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->BUSSTOPS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1da
    move-object v3, p0

    .line 34
    new-instance v1, Linfo/flowersoft/theotown/draftloader/PluginLoadingException;

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BusStop needs multiple of 4 frames and at least 4 but got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Linfo/flowersoft/theotown/draftloader/PluginLoadingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_1f7
    move-object v3, p0

    .line 31
    new-instance v1, Linfo/flowersoft/theotown/draftloader/PluginLoadingException;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v2, "BusStop has no frames provided"

    invoke-direct {v1, v0, v2}, Linfo/flowersoft/theotown/draftloader/PluginLoadingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

###### Class info.flowersoft.theotown.draftloader.BusStopDraftLoader$$ExternalSyntheticLambda0 (info.flowersoft.theotown.draftloader.BusStopDraftLoader$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/BusStopDraftLoader$$ExternalSyntheticLambda0;
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
    new-instance v0, Linfo/flowersoft/theotown/draft/BusStopDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/BusStopDraft;-><init>()V

    return-object v0
.end method
