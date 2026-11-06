###### Class info.flowersoft.theotown.draftloader.RoadDecorationDraftLoader (info.flowersoft.theotown.draftloader.RoadDecorationDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/RoadDecorationDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "RoadDecorationDraftLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 15
    const-string v0, "road decoration"

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

    .line 20
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v1, Linfo/flowersoft/theotown/draftloader/RoadDecorationDraftLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/RoadDecorationDraftLoader$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    invoke-virtual {p0, v0, v2, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->getDraft(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/Class;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    .line 22
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 24
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "price"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->positivePrice(I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->price:I

    .line 26
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "animation"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 27
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->hashCode()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadAnimations(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationSpots:Ljava/util/List;

    .line 28
    iget-object v5, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v6, "frame animation indices"

    const/16 v7, 0x10

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrameAnimationIndices(Ljava/lang/String;Ljava/lang/String;IILinfo/flowersoft/theotown/util/json/JSONObject;)[[I

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationSpotIndices:[[I

    goto :goto_4a

    :cond_49
    move-object v4, p0

    .line 31
    :goto_4a
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "animation fg"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 32
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->hashCode()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadAnimations(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationFGSpots:Ljava/util/List;

    .line 33
    iget-object v5, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v6, "frame animation fg indices"

    const/16 v7, 0x10

    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrameAnimationIndices(Ljava/lang/String;Ljava/lang/String;IILinfo/flowersoft/theotown/util/json/JSONObject;)[[I

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationFGSpotIndices:[[I

    .line 36
    :cond_70
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-nez v1, :cond_80

    .line 37
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v2, "$cat_roaddeco00"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/CategoryDraft;

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    .line 40
    :cond_80
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/RoadDecorationDraftLoader;->loadFun(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;)V

    .line 42
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v2, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->speed:F

    float-to-double v5, v2

    const-string v2, "speed"

    invoke-virtual {v1, v2, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->speed:F

    .line 43
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v2, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->enterSpeed:F

    float-to-double v5, v2

    const-string v2, "enter speed"

    invoke-virtual {v1, v2, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->enterSpeed:F

    .line 44
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v2, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->exitSpeed:F

    float-to-double v5, v2

    const-string v2, "exit speed"

    invoke-virtual {v1, v2, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->exitSpeed:F

    .line 46
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "parcel speeds"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_e0

    .line 48
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [F

    iput-object v2, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->parcelSpeeds:[F

    move v2, v3

    .line 49
    :goto_c0
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_d2

    .line 50
    iget-object v5, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->parcelSpeeds:[F

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    double-to-float v6, v6

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c0

    .line 52
    :cond_d2
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->parcelSpeeds:[F

    array-length v1, v1

    if-eqz v1, :cond_d8

    goto :goto_e0

    :cond_d8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parcel speeds array may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_e0
    :goto_e0
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->roadFlags:Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;

    iget-object v2, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v5, "flag"

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v2, v5, v6, v7}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->load(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->flags:J

    .line 56
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "x flags"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_107

    .line 57
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    .line 58
    iget-object v2, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->roadFlags:Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;

    invoke-virtual {v2, v1, v5, v6, v7}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->load(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->xFlags:J

    goto :goto_10b

    .line 60
    :cond_107
    iget-wide v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->flags:J

    iput-wide v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->xFlags:J

    .line 63
    :goto_10b
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->roadFlags:Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;

    iget-object v2, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v8, "remove flag"

    invoke-virtual {v1, v2, v8, v6, v7}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->load(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->removeFlags:J

    .line 64
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "remove x flags"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_130

    .line 65
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    .line 66
    iget-object v2, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->roadFlags:Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;

    invoke-virtual {v2, v1, v5, v6, v7}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->load(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->removeXFlags:J

    goto :goto_134

    .line 68
    :cond_130
    iget-wide v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->removeFlags:J

    iput-wide v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->removeXFlags:J

    .line 79
    :goto_134
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->roadFlags:Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;

    iget-object v2, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v5, "required flag"

    const-wide/32 v6, 0x18000f6

    invoke-virtual {v1, v2, v5, v6, v7}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->load(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->requiredFlags:J

    .line 80
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "min dirs"

    iget v5, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->minDirs:I

    invoke-virtual {v1, v2, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->minDirs:I

    .line 81
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "max dirs"

    iget v5, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->maxDirs:I

    invoke-virtual {v1, v2, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->maxDirs:I

    .line 82
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "symmetric dirs"

    iget-boolean v5, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->symmetricDirs:Z

    invoke-virtual {v1, v2, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->symmetricDirs:Z

    .line 84
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "min level"

    iget v5, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->minLevel:I

    invoke-virtual {v1, v2, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->minLevel:I

    .line 85
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "max level"

    iget v5, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->maxLevel:I

    invoke-virtual {v1, v2, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->maxLevel:I

    .line 87
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "preview road"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_199

    .line 88
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/RoadDraft;

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->previewRoad:Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 90
    :cond_199
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "line tool"

    iget-boolean v5, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->lineTool:Z

    invoke-virtual {v1, v2, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->lineTool:Z

    .line 91
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "line stepping"

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->lineStepping:I

    .line 93
    iget v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->maxLevel:I

    iget v2, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->minLevel:I

    if-lt v1, v2, :cond_22f

    .line 95
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->occupationGroup:Ljava/lang/String;

    if-eqz v2, :cond_1c1

    goto :goto_1c3

    :cond_1c1
    iget-object v2, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    :goto_1c3
    const-string v6, "occupation group"

    invoke-virtual {v1, v6, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->occupationGroup:Ljava/lang/String;

    .line 96
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "exclusive"

    iget-boolean v6, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->exclusive:Z

    invoke-virtual {v1, v2, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->exclusive:Z

    .line 98
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "allow road crossing"

    iget-boolean v6, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->allowRoadCrossing:Z

    invoke-virtual {v1, v2, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->allowRoadCrossing:Z

    .line 99
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v2, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->sidewalkOffset:F

    float-to-double v6, v2

    const-string v2, "sidewalk offset"

    invoke-virtual {v1, v2, v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->sidewalkOffset:F

    .line 100
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v2, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->sidewalkSize:F

    float-to-double v6, v2

    const-string v2, "sidewalk size"

    invoke-virtual {v1, v2, v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->sidewalkSize:F

    .line 102
    iget-object v1, v4, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "dirs"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_218

    .line 104
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    const/16 v6, 0x40

    if-ne v2, v6, :cond_212

    move v3, v5

    :cond_212
    invoke-virtual {p0, v1, v3}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadRoadDirs(Linfo/flowersoft/theotown/util/json/JSONArray;Z)[I

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->dirs:[I

    .line 107
    :cond_218
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    if-eqz v1, :cond_229

    .line 109
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ROAD_DECORATIONS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    :cond_229
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ROAD_DECORATIONS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 93
    :cond_22f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max level may not be smaller than min level"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final loadFun(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-object v1, p1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->transitions:Ljava/util/List;

    const-string v2, "fun"

    invoke-virtual {p0, v0, v2, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadTransitions(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->transitions:Ljava/util/List;

    .line 120
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "on click fun"

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->onClickTransitions:Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadTransitions(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->onClickTransitions:Ljava/util/List;

    .line 121
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "random fun"

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->randomTransitions:Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadTransitions(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->randomTransitions:Ljava/util/List;

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "on event fun"

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->onEventTransitions:Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadTransitions(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->onEventTransitions:Ljava/util/List;

    .line 123
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "on built fun"

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->onBuiltTransitions:Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadTransitions(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->onBuiltTransitions:Ljava/util/List;

    return-void
.end method

###### Class info.flowersoft.theotown.draftloader.RoadDecorationDraftLoader$$ExternalSyntheticLambda0 (info.flowersoft.theotown.draftloader.RoadDecorationDraftLoader$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/RoadDecorationDraftLoader$$ExternalSyntheticLambda0;
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
    new-instance v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;-><init>()V

    return-object v0
.end method
