###### Class info.flowersoft.theotown.draftloader.TrainDraftLoader (info.flowersoft.theotown.draftloader.TrainDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/TrainDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "TrainDraftLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 21
    const-string v0, "train"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 26
    new-instance v0, Linfo/flowersoft/theotown/draft/TrainDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/TrainDraft;-><init>()V

    .line 28
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 30
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const-string v2, "frames"

    const-string v3, "frame"

    invoke-virtual {p0, v2, v3, v0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    if-eqz v1, :cond_e2

    .line 32
    array-length v1, v1

    const/16 v4, 0x8

    if-lt v1, v4, :cond_e2

    .line 36
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "capacity"

    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/TrainDraft;->capacity:I

    .line 38
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "animation"

    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/TrainDraft;->animationSpots:Ljava/util/List;

    .line 40
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    const/4 v4, 0x0

    move v5, v4

    .line 41
    :goto_3e
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_dc

    .line 42
    invoke-virtual {v1, v5}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v6

    .line 43
    const-string v7, "id"

    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 45
    sget-object v8, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Linfo/flowersoft/theotown/draft/AnimationDraft;

    if-eqz v10, :cond_b6

    .line 47
    const-string v7, "important"

    invoke-virtual {v6, v7, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 49
    invoke-virtual {v6, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v7

    if-nez v7, :cond_8b

    .line 50
    invoke-virtual {v6, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_71

    invoke-virtual {v6, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8b

    .line 51
    :cond_71
    new-instance v7, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v7}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 52
    invoke-virtual {v6, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_84

    .line 53
    invoke-virtual {v6, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    goto :goto_8b

    .line 55
    :cond_84
    invoke-virtual {v6, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    :cond_8b
    :goto_8b
    if-eqz v7, :cond_a5

    .line 61
    invoke-virtual {v7}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [I

    move v8, v4

    .line 62
    :goto_94
    invoke-virtual {v7}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_a3

    .line 63
    invoke-virtual {v7, v8}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v9

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_94

    :cond_a3
    :goto_a3
    move-object v13, v6

    goto :goto_a7

    :cond_a5
    const/4 v6, 0x0

    goto :goto_a3

    .line 67
    :goto_a7
    iget-object v6, v0, Linfo/flowersoft/theotown/draft/TrainDraft;->animationSpots:Ljava/util/List;

    new-instance v9, Linfo/flowersoft/theotown/draft/CarAnimationSpot;

    const/4 v11, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Linfo/flowersoft/theotown/draft/CarAnimationSpot;-><init>(Linfo/flowersoft/theotown/draft/AnimationDraft;Lio/blueflower/stapel2d/util/IntList;Z[ILio/blueflower/stapel2d/drawing/Color;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 46
    :cond_b6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No animation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has been found (for use in car "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_dc
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->TRAINS:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 33
    :cond_e2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Train may not have no or less than 8 frames"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
