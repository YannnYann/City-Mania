###### Class info.flowersoft.theotown.draftloader.RoadDraftLoader (info.flowersoft.theotown.draftloader.RoadDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "RoadDraftLoader.java"


# static fields
.field public static DEFAULT_DIRS_RIGHT_LEFT:[[I

.field public static DEFAULT_DIRS_RIGHT_LEFT_DIAGONAL:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const/4 v0, 0x2

    .line 30
    new-array v1, v0, [[I

    sput-object v1, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;->DEFAULT_DIRS_RIGHT_LEFT:[[I

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    const/16 v3, 0x8

    const/16 v4, 0x10

    const/16 v5, 0x40

    const/4 v6, 0x1

    if-ge v2, v0, :cond_6f

    .line 33
    new-instance v7, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v7, v5}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    move v5, v1

    :goto_16
    if-ge v5, v4, :cond_64

    move v8, v1

    :goto_19
    if-ge v8, v0, :cond_61

    move v9, v1

    :goto_1c
    if-ge v9, v0, :cond_5e

    move v11, v1

    move v10, v6

    :goto_20
    if-gt v10, v3, :cond_58

    if-nez v2, :cond_29

    .line 39
    invoke-static {v10}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result v12

    goto :goto_2d

    :cond_29
    invoke-static {v10}, Linfo/flowersoft/theotown/city/Direction;->turnCW(I)I

    move-result v12

    .line 40
    :goto_2d
    invoke-static {v9, v8, v12}, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;->stillWithinRoad(III)Z

    move-result v13

    if-eqz v13, :cond_55

    .line 41
    invoke-static {v10, v5}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v13

    if-eqz v13, :cond_3b

    :goto_39
    or-int/2addr v11, v10

    goto :goto_55

    .line 43
    :cond_3b
    invoke-static {v10}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v13

    invoke-static {v13, v5}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v13

    if-eqz v13, :cond_4c

    invoke-static {v9, v8, v10}, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;->stillWithinRoad(III)Z

    move-result v13

    if-eqz v13, :cond_4c

    goto :goto_39

    :cond_4c
    if-ne v12, v5, :cond_55

    .line 45
    invoke-static {v9, v8, v10}, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;->stillWithinRoad(III)Z

    move-result v12

    if-eqz v12, :cond_55

    goto :goto_39

    :cond_55
    :goto_55
    mul-int/lit8 v10, v10, 0x2

    goto :goto_20

    .line 50
    :cond_58
    invoke-virtual {v7, v11}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    :cond_5e
    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    :cond_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 54
    :cond_64
    sget-object v3, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;->DEFAULT_DIRS_RIGHT_LEFT:[[I

    invoke-virtual {v7}, Lio/blueflower/stapel2d/util/IntList;->toArray()[I

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 58
    :cond_6f
    new-array v2, v0, [[I

    sput-object v2, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;->DEFAULT_DIRS_RIGHT_LEFT_DIAGONAL:[[I

    move v2, v1

    :goto_74
    if-ge v2, v0, :cond_126

    .line 61
    new-instance v7, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v7, v5}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    move v8, v1

    :goto_7c
    if-ge v8, v4, :cond_11a

    move v9, v1

    :goto_7f
    if-ge v9, v0, :cond_116

    move v10, v1

    :goto_82
    if-ge v10, v0, :cond_112

    move v12, v1

    move v11, v6

    :goto_86
    if-gt v11, v3, :cond_10b

    if-nez v2, :cond_8f

    .line 67
    invoke-static {v11}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result v13

    goto :goto_93

    :cond_8f
    invoke-static {v11}, Linfo/flowersoft/theotown/city/Direction;->turnCW(I)I

    move-result v13

    .line 69
    :goto_93
    invoke-static {v8}, Linfo/flowersoft/theotown/city/Direction;->countDirections(I)I

    move-result v14

    if-ne v14, v0, :cond_e0

    invoke-static {v8}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v14

    if-ne v14, v8, :cond_a0

    goto :goto_e0

    .line 86
    :cond_a0
    invoke-static {v10, v9, v13}, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;->stillWithinRoad(III)Z

    move-result v14

    if-eqz v14, :cond_b8

    invoke-static {v11}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v14

    invoke-static {v10, v9, v14}, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;->stillWithinRoad(III)Z

    move-result v14

    if-eqz v14, :cond_b8

    .line 87
    invoke-static {v11, v8}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v13

    if-eqz v13, :cond_107

    :goto_b6
    or-int/2addr v12, v11

    goto :goto_107

    .line 91
    :cond_b8
    invoke-static {v13}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v14

    invoke-static {v10, v9, v14}, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;->stillWithinRoad(III)Z

    move-result v14

    if-eqz v14, :cond_107

    .line 92
    invoke-static {v13, v8}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v13

    if-eqz v13, :cond_cf

    invoke-static {v10, v9, v11}, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;->stillWithinRoad(III)Z

    move-result v13

    if-eqz v13, :cond_cf

    goto :goto_b6

    .line 95
    :cond_cf
    invoke-static {v11, v8}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v13

    if-eqz v13, :cond_107

    invoke-static {v11}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v13

    invoke-static {v10, v9, v13}, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;->stillWithinRoad(III)Z

    move-result v13

    if-eqz v13, :cond_107

    goto :goto_b6

    .line 71
    :cond_e0
    :goto_e0
    invoke-static {v10, v9, v13}, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;->stillWithinRoad(III)Z

    move-result v14

    if-eqz v14, :cond_107

    .line 72
    invoke-static {v11, v8}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v14

    if-eqz v14, :cond_ed

    goto :goto_b6

    .line 75
    :cond_ed
    invoke-static {v11}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v14

    invoke-static {v14, v8}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v14

    if-eqz v14, :cond_fe

    invoke-static {v10, v9, v11}, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;->stillWithinRoad(III)Z

    move-result v14

    if-eqz v14, :cond_fe

    goto :goto_b6

    :cond_fe
    if-ne v13, v8, :cond_107

    .line 78
    invoke-static {v10, v9, v11}, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;->stillWithinRoad(III)Z

    move-result v13

    if-eqz v13, :cond_107

    goto :goto_b6

    :cond_107
    :goto_107
    mul-int/lit8 v11, v11, 0x2

    goto/16 :goto_86

    .line 102
    :cond_10b
    invoke-virtual {v7, v12}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_82

    :cond_112
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7f

    :cond_116
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_7c

    .line 106
    :cond_11a
    sget-object v8, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;->DEFAULT_DIRS_RIGHT_LEFT_DIAGONAL:[[I

    invoke-virtual {v7}, Lio/blueflower/stapel2d/util/IntList;->toArray()[I

    move-result-object v7

    aput-object v7, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_74

    :cond_126
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method

.method public static loadAutoDecoration(Linfo/flowersoft/theotown/util/json/JSONObject;)Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 501
    new-instance v0, Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;-><init>()V

    .line 502
    const-string v1, "draft"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    .line 503
    const-string v1, "id"

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 505
    :cond_14
    const-class v2, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    if-eqz v2, :cond_66

    .line 508
    iput-object v2, v0, Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    .line 509
    const-string v1, "step"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "step x"

    invoke-virtual {p0, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;->stepX:I

    .line 510
    const-string v1, "step y"

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;->stepY:I

    .line 511
    const-string v1, "offset x"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;->offsetX:I

    .line 512
    const-string v1, "offset y"

    invoke-virtual {p0, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;->offsetY:I

    .line 513
    const-string v1, "stride"

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;->stride:I

    .line 514
    const-string v1, "dirs"

    invoke-virtual {p0, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;->dirsOnly:I

    return-object v0

    .line 506
    :cond_66
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find road deco draft "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static stillWithinRoad(III)Z
    .registers 4

    .line 485
    invoke-static {p2}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v0

    add-int/2addr p0, v0

    .line 486
    invoke-static {p2}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result p2

    add-int/2addr p1, p2

    if-ltz p0, :cond_14

    if-ltz p1, :cond_14

    const/4 p2, 0x1

    if-gt p0, p2, :cond_14

    if-gt p1, p2, :cond_14

    return p2

    :cond_14
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 112
    const-string v0, "road"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;,
            Linfo/flowersoft/theotown/resources/MissingDraftException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;->load()Linfo/flowersoft/theotown/draft/RoadDraft;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/RoadDraft;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 117
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v2, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader$$ExternalSyntheticLambda0;-><init>()V

    const-class v6, Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {v0, v1, v6, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->getDraft(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/Class;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 119
    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 120
    iget-object v1, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const-string v2, "frames"

    const-string v3, "frame"

    invoke-virtual {v0, v2, v3, v7, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    if-eqz v1, :cond_81f

    .line 123
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "frames per bridge"

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->framesPerBridge:I

    if-lt v1, v3, :cond_806

    .line 127
    const-string v1, "bridge frame"

    iget-object v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgeFrames:[I

    const-string v4, "bridge frames"

    invoke-virtual {v0, v4, v1, v7, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgeFrames:[I

    .line 128
    const-string v1, "one way frame"

    iget-object v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->oneWayFrames:[I

    const-string v4, "one way frames"

    invoke-virtual {v0, v4, v1, v7, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->oneWayFrames:[I

    .line 129
    const-string v1, "tunnel frame"

    iget-object v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelFrames:[I

    const-string v4, "tunnel frames"

    invoke-virtual {v0, v4, v1, v7, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelFrames:[I

    .line 130
    const-string v1, "slope frame"

    iget-object v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->slopeFrames:[I

    const-string v4, "slope frames"

    invoke-virtual {v0, v4, v1, v7, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->slopeFrames:[I

    .line 131
    const-string v1, "water border frame"

    iget-object v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->waterBorderFrames:[I

    const-string v4, "water border frames"

    invoke-virtual {v0, v4, v1, v7, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->waterBorderFrames:[I

    .line 132
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "supports slope"

    iget-boolean v4, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->supportsSlope:Z

    invoke-virtual {v1, v2, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->supportsSlope:Z

    .line 134
    iget-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgeFrames:[I

    if-eqz v1, :cond_ac

    iget v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->framesPerBridge:I

    array-length v1, v1

    if-gt v2, v1, :cond_83

    goto :goto_ac

    .line 135
    :cond_83
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frames per bridge is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->framesPerBridge:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but the road has only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgeFrames:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bridge frames"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_ac
    :goto_ac
    iget-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelFrames:[I

    const/4 v8, 0x4

    if-eqz v1, :cond_d0

    array-length v2, v1

    if-ge v2, v3, :cond_d0

    .line 140
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelFrames:[I

    .line 141
    const-string v1, "$road01"

    invoke-static {v1, v6}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/RoadDraft;

    move v2, v8

    :goto_c3
    if-ge v2, v3, :cond_d0

    .line 143
    iget-object v4, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelFrames:[I

    iget-object v5, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelFrames:[I

    aget v5, v5, v2

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c3

    .line 147
    :cond_d0
    iget-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgeFrames:[I

    if-eqz v1, :cond_103

    array-length v1, v1

    iget v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->framesPerBridge:I

    if-lt v1, v2, :cond_da

    goto :goto_103

    .line 148
    :cond_da
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frames per bridge has been set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->framesPerBridge:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", but only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgeFrames:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bridge frames were provided"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    :cond_103
    :goto_103
    iget-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelFrames:[I

    const/4 v9, 0x0

    if-eqz v1, :cond_10d

    array-length v1, v1

    if-ge v1, v8, :cond_10d

    .line 153
    iput-object v9, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelFrames:[I

    .line 156
    :cond_10d
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "level"

    iget v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->level:I

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->level:I

    .line 157
    const-string v1, "traffic light"

    iget-object v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->trafficLights:[I

    const-string v3, "traffic lights"

    invoke-virtual {v0, v3, v1, v7, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->trafficLights:[I

    .line 158
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "green phase"

    iget v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->greenPhase:I

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->greenPhase:I

    .line 159
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "yellow phase"

    iget v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->yellowPhase:I

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->yellowPhase:I

    .line 160
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->speed:F

    float-to-double v2, v2

    const-string v4, "speed"

    invoke-virtual {v1, v4, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3a83126f    # 0.001f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->speed:F

    .line 161
    iget-object v3, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "speed winter"

    float-to-double v10, v1

    invoke-virtual {v3, v4, v10, v11}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->speedWinter:F

    .line 162
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->enterSpeed:F

    float-to-double v2, v2

    const-string v4, "enter speed"

    invoke-virtual {v1, v4, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->enterSpeed:F

    .line 163
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->exitSpeed:F

    float-to-double v2, v2

    const-string v4, "exit speed"

    invoke-virtual {v1, v4, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->exitSpeed:F

    .line 164
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "pile distant"

    iget v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->pileDistant:I

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->pileDistant:I

    .line 166
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "parcel speeds"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    const/4 v10, 0x0

    if-eqz v1, :cond_1be

    .line 168
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [F

    iput-object v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->parcelSpeeds:[F

    move v2, v10

    .line 169
    :goto_19e
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1b0

    .line 170
    iget-object v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->parcelSpeeds:[F

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_19e

    .line 172
    :cond_1b0
    iget-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->parcelSpeeds:[F

    array-length v1, v1

    if-eqz v1, :cond_1b6

    goto :goto_1be

    :cond_1b6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "parcel speeds array may not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_1be
    :goto_1be
    iget-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelFrames:[I

    if-eqz v1, :cond_1c4

    const/4 v2, -0x2

    goto :goto_1c5

    :cond_1c4
    move v2, v10

    :goto_1c5
    iput v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->minSupportedLevel:I

    .line 176
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v1, :cond_1cd

    const/4 v1, -0x1

    goto :goto_1ce

    :cond_1cd
    move v1, v10

    :goto_1ce
    const-string v3, "min level"

    invoke-virtual {v2, v3, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->minLevel:I

    .line 177
    iget v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->minSupportedLevel:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->minSupportedLevel:I

    .line 178
    iget v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->minLevel:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->minLevel:I

    .line 180
    iget-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgeFrames:[I

    const/16 v11, 0x10

    const/4 v12, 0x1

    if-eqz v1, :cond_1f5

    iget v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->framesPerBridge:I

    if-lt v2, v11, :cond_1f3

    move v2, v11

    goto :goto_1f6

    :cond_1f3
    move v2, v12

    goto :goto_1f6

    :cond_1f5
    move v2, v10

    :goto_1f6
    iput v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->maxSupportedLevel:I

    .line 181
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v1, :cond_204

    iget v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->framesPerBridge:I

    if-lt v1, v11, :cond_202

    move v1, v8

    goto :goto_205

    :cond_202
    move v1, v12

    goto :goto_205

    :cond_204
    move v1, v10

    :goto_205
    const-string v3, "max level"

    invoke-virtual {v2, v3, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->maxLevel:I

    .line 182
    iget v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->maxSupportedLevel:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->maxSupportedLevel:I

    .line 183
    iget v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->maxLevel:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->maxLevel:I

    .line 185
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v2, "$inf.default"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/InfluenceDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/InfluenceDraft;->induceVector:[I

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->influenceInduceVector:[I

    .line 186
    invoke-virtual {v7}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v1

    if-eqz v1, :cond_23a

    .line 188
    iget-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->influenceInduceVector:[I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadInfluences([I)[I

    move-result-object v1

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->influenceInduceVector:[I

    goto :goto_243

    .line 190
    :cond_23a
    iget-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->influenceInduceVector:[I

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->influenceInduceVector:[I

    .line 193
    :goto_243
    iget v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->speed:F

    mul-float/2addr v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 194
    iget v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->speed:F

    mul-float/2addr v3, v3

    add-float/2addr v3, v2

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 195
    iget-object v3, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "price"

    iget v5, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->price:I

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->positivePrice(I)I

    move-result v3

    iput v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->price:I

    .line 196
    iget-object v3, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "monthly price"

    iget v5, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->monthlyPrice:I

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->positivePrice(I)I

    move-result v3

    iput v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->monthlyPrice:I

    .line 198
    invoke-virtual {v7}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v3

    if-nez v3, :cond_293

    .line 200
    iget v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->price:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->price:I

    .line 201
    iget v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->monthlyPrice:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->monthlyPrice:I

    .line 204
    :cond_293
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "bridge price"

    iget v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgePrice:I

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->positivePrice(I)I

    move-result v1

    iget v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->price:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgePrice:I

    .line 205
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "tunnel diamond price"

    iget v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelDiamondPrice:I

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->positivePrice(I)I

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelDiamondPrice:I

    .line 206
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "tunnel price"

    iget v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelPrice:I

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->positivePrice(I)I

    move-result v1

    iget v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->price:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelPrice:I

    .line 208
    invoke-virtual {v7}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v1

    const/4 v13, 0x2

    if-nez v1, :cond_2e3

    .line 209
    iget v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgePrice:I

    iget v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->price:I

    mul-int/2addr v2, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgePrice:I

    .line 210
    iput v13, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelDiamondPrice:I

    .line 212
    :cond_2e3
    sget-boolean v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v1, :cond_2ee

    .line 213
    iput v10, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelDiamondPrice:I

    .line 214
    iget v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->price:I

    mul-int/2addr v1, v13

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->tunnelPrice:I

    .line 217
    :cond_2ee
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "budget item"

    invoke-virtual {v1, v2, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35e

    .line 219
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const-string v4, " referenced to in building "

    if-eqz v3, :cond_303

    .line 220
    iput-object v7, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->budgetItem:Linfo/flowersoft/theotown/draft/Draft;

    goto :goto_30d

    .line 222
    :cond_303
    const-class v3, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {v1, v3}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v3

    iput-object v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->budgetItem:Linfo/flowersoft/theotown/draft/Draft;

    if-eqz v3, :cond_33a

    .line 225
    :goto_30d
    iget-object v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->budgetItem:Linfo/flowersoft/theotown/draft/Draft;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_316

    goto :goto_35e

    .line 226
    :cond_316
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "budget item "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has no meta tag \"budget item\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 223
    :cond_33a
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "budget item of id "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " could not be found"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    :cond_35e
    :goto_35e
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "auto join"

    iget-boolean v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->autoJoin:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->autoJoin:Z

    .line 231
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "allow transfer"

    iget-boolean v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->allowTransfer:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->allowTransfer:Z

    .line 232
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "allow crossing"

    iget-boolean v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->allowCrossing:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->allowCrossing:Z

    .line 233
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "one way"

    iget-boolean v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->oneWay:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->oneWay:Z

    .line 234
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "overrunnable"

    invoke-virtual {v2, v3, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->overrunnable:Z

    .line 238
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "width"

    iget v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->width:I

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->width:I

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->decorationBuildingIds:Ljava/util/List;

    .line 240
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "decoration buildings"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3ce

    .line 241
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    move v2, v10

    .line 242
    :goto_3bc
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3ce

    .line 243
    iget-object v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->decorationBuildingIds:Ljava/util/List;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3bc

    .line 247
    :cond_3ce
    iget-object v1, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v2, v1

    if-lt v2, v11, :cond_7fe

    .line 249
    array-length v1, v1

    const/16 v2, 0x40

    if-ge v1, v2, :cond_3e5

    iget-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->oneWay:Z

    if-nez v1, :cond_3dd

    goto :goto_3e5

    .line 250
    :cond_3dd
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Got less than 64 frames for one-way road"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :cond_3e5
    :goto_3e5
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->roadFlags:Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;

    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "flag"

    const-wide/32 v4, 0x18000e0

    invoke-virtual {v1, v2, v3, v4, v5}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->load(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->flags:J

    .line 260
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "x flags"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40d

    .line 261
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    .line 262
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->roadFlags:Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;

    invoke-virtual {v2, v1, v3, v4, v5}, Linfo/flowersoft/theotown/draftloader/RoadFlagsLoader;->load(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->xFlags:J

    goto :goto_411

    .line 264
    :cond_40d
    iget-wide v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->flags:J

    iput-wide v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->xFlags:J

    .line 267
    :goto_411
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-boolean v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->allowBusStop:Z

    const-wide/16 v14, 0x0

    if-eqz v2, :cond_424

    iget-wide v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->flags:J

    const-wide/16 v4, 0x80

    and-long/2addr v2, v4

    cmp-long v2, v2, v14

    if-eqz v2, :cond_424

    move v2, v12

    goto :goto_425

    :cond_424
    move v2, v10

    :goto_425
    const-string v3, "allow bus stop"

    invoke-virtual {v1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->allowBusStop:Z

    .line 269
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "connectable"

    iget-boolean v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->connectable:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->connectable:Z

    .line 271
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "join group"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_462

    .line 272
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_45a

    .line 274
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->joinGroup:I

    goto :goto_462

    .line 276
    :cond_45a
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->joinGroup:I

    .line 280
    :cond_462
    :goto_462
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "devoted"

    iget-boolean v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->devoted:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->devoted:Z

    .line 282
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "zone"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_494

    .line 283
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    iget-object v3, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/ZoneDraft;

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 284
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "build zone"

    iget-boolean v1, v1, Linfo/flowersoft/theotown/draft/ZoneDraft;->placeable:Z

    invoke-virtual {v2, v3, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->buildZone:Z

    .line 287
    :cond_494
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->priceFactor:F

    float-to-double v2, v2

    const-string v4, "price factor"

    invoke-virtual {v1, v4, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->priceFactor:F

    .line 289
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "animation"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4ca

    .line 290
    invoke-virtual {v7}, Linfo/flowersoft/theotown/draft/Draft;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadAnimations(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->animationSpots:Ljava/util/List;

    move-object v2, v1

    .line 291
    iget-object v1, v7, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iget-object v3, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v3, v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "frame animation indices"

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrameAnimationIndices(Ljava/lang/String;Ljava/lang/String;IILinfo/flowersoft/theotown/util/json/JSONObject;)[[I

    move-result-object v1

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->animationSpotIndices:[[I

    .line 294
    :cond_4ca
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "animation fg"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f2

    .line 295
    invoke-virtual {v7}, Linfo/flowersoft/theotown/draft/Draft;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadAnimations(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->animationFGSpots:Ljava/util/List;

    move-object v2, v1

    .line 296
    iget-object v1, v7, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iget-object v3, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v3, v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "frame animation fg indices"

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrameAnimationIndices(Ljava/lang/String;Ljava/lang/String;IILinfo/flowersoft/theotown/util/json/JSONObject;)[[I

    move-result-object v1

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->animationFGSpotIndices:[[I

    .line 299
    :cond_4f2
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "draw ground"

    iget-boolean v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->drawGround:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->drawGround:Z

    .line 300
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "allow diagonal"

    iget-boolean v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->allowDiagonal:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->allowDiagonal:Z

    .line 301
    iget-object v2, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-boolean v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->drawWaterBorders:Z

    if-eqz v3, :cond_514

    if-nez v1, :cond_514

    move v1, v12

    goto :goto_515

    :cond_514
    move v1, v10

    :goto_515
    const-string v3, "draw water borders"

    invoke-virtual {v2, v3, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->drawWaterBorders:Z

    .line 302
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-boolean v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->diagonalCars:Z

    if-nez v2, :cond_52a

    iget-boolean v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->allowDiagonal:Z

    if-eqz v2, :cond_528

    goto :goto_52a

    :cond_528
    move v2, v10

    goto :goto_52b

    :cond_52a
    :goto_52a
    move v2, v12

    :goto_52b
    const-string v3, "diagonal cars"

    invoke-virtual {v1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->diagonalCars:Z

    .line 305
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-boolean v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->drawWaterGround:Z

    if-eqz v2, :cond_53f

    iget-boolean v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->drawGround:Z

    if-nez v2, :cond_53f

    move v2, v12

    goto :goto_540

    :cond_53f
    move v2, v10

    :goto_540
    const-string v3, "draw water ground"

    invoke-virtual {v1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->drawWaterGround:Z

    .line 306
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, ""

    invoke-virtual {v1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_579

    .line 307
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_579

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_579

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_579

    .line 308
    const-class v2, Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/GroundDraft;

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->drawWaterGroundDraft:Linfo/flowersoft/theotown/draft/GroundDraft;

    if-eqz v1, :cond_576

    move v1, v12

    goto :goto_577

    :cond_576
    move v1, v10

    .line 309
    :goto_577
    iput-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->drawWaterGround:Z

    .line 312
    :cond_579
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-object v2, v7, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iget-object v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

    const-string v4, "add price"

    invoke-virtual {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDraftList(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/lang/String;[Linfo/flowersoft/theotown/draft/Draft;)[Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

    .line 314
    new-array v1, v13, [[I

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->dirsRightLeftSide:[[I

    .line 316
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "dirs"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_5a7

    .line 336
    iget-boolean v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->oneWay:Z

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadRoadDirs(Linfo/flowersoft/theotown/util/json/JSONArray;Z)[I

    move-result-object v1

    .line 338
    iget-object v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->dirsRightLeftSide:[[I

    aput-object v1, v2, v12

    aput-object v1, v2, v10

    :goto_5a1
    move/from16 v16, v12

    move-wide/from16 v17, v14

    goto/16 :goto_65e

    .line 340
    :cond_5a7
    iget-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->oneWay:Z

    if-nez v1, :cond_5b9

    .line 341
    iget-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->allowDiagonal:Z

    if-eqz v1, :cond_5b4

    .line 342
    sget-object v1, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;->DEFAULT_DIRS_RIGHT_LEFT_DIAGONAL:[[I

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->dirsRightLeftSide:[[I

    goto :goto_5a1

    .line 344
    :cond_5b4
    sget-object v1, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;->DEFAULT_DIRS_RIGHT_LEFT:[[I

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->dirsRightLeftSide:[[I

    goto :goto_5a1

    .line 347
    :cond_5b9
    new-instance v1, Lio/blueflower/stapel2d/util/IntList;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    move v2, v10

    :goto_5c1
    if-ge v2, v8, :cond_650

    .line 349
    invoke-static {v2}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result v3

    move v4, v10

    :goto_5c8
    if-ge v4, v11, :cond_644

    move v5, v10

    :goto_5cb
    if-ge v5, v13, :cond_639

    move v8, v10

    :goto_5ce
    if-ge v8, v13, :cond_62e

    move v11, v12

    move/from16 v16, v11

    move v12, v10

    :goto_5d4
    const/16 v13, 0x8

    if-gt v11, v13, :cond_621

    .line 355
    invoke-static {v3, v4}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v13

    move-wide/from16 v17, v14

    .line 356
    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v14

    invoke-static {v14, v4}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v14

    if-ne v11, v3, :cond_5f2

    .line 358
    invoke-static {v8, v5, v11}, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;->stillWithinRoad(III)Z

    move-result v14

    if-nez v14, :cond_5f0

    if-eqz v13, :cond_61c

    :cond_5f0
    :goto_5f0
    or-int/2addr v12, v11

    goto :goto_61c

    .line 361
    :cond_5f2
    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v15

    if-eq v11, v15, :cond_61c

    .line 362
    invoke-static {v11, v4}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v15

    if-eqz v15, :cond_603

    if-nez v14, :cond_5f0

    if-nez v13, :cond_603

    goto :goto_5f0

    .line 364
    :cond_603
    invoke-static {v11}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v14

    invoke-static {v14, v4}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v14

    if-eqz v14, :cond_61c

    if-eqz v13, :cond_61c

    .line 365
    invoke-static {v8, v5, v11}, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;->stillWithinRoad(III)Z

    move-result v13

    if-nez v13, :cond_5f0

    invoke-static {v11, v4}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v13

    if-eqz v13, :cond_61c

    goto :goto_5f0

    :cond_61c
    :goto_61c
    mul-int/lit8 v11, v11, 0x2

    move-wide/from16 v14, v17

    goto :goto_5d4

    :cond_621
    move-wide/from16 v17, v14

    .line 370
    invoke-virtual {v1, v12}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v8, v8, 0x1

    move/from16 v12, v16

    const/16 v11, 0x10

    const/4 v13, 0x2

    goto :goto_5ce

    :cond_62e
    move/from16 v16, v12

    move-wide/from16 v17, v14

    add-int/lit8 v5, v5, 0x1

    const/4 v8, 0x4

    const/16 v11, 0x10

    const/4 v13, 0x2

    goto :goto_5cb

    :cond_639
    move/from16 v16, v12

    move-wide/from16 v17, v14

    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x4

    const/16 v11, 0x10

    const/4 v13, 0x2

    goto :goto_5c8

    :cond_644
    move/from16 v16, v12

    move-wide/from16 v17, v14

    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x4

    const/16 v11, 0x10

    const/4 v13, 0x2

    goto/16 :goto_5c1

    :cond_650
    move/from16 v16, v12

    move-wide/from16 v17, v14

    .line 392
    iget-object v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->dirsRightLeftSide:[[I

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->toArray()[I

    move-result-object v1

    aput-object v1, v2, v16

    aput-object v1, v2, v10

    .line 397
    :goto_65e
    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->leftSideTrafficOriginal:Z

    invoke-virtual {v7, v1}, Linfo/flowersoft/theotown/draft/RoadDraft;->setLeftSideTraffic(Z)V

    .line 399
    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;->loadFun(Linfo/flowersoft/theotown/draft/RoadDraft;)V

    .line 401
    const-string v1, "map color"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadColor(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->mapColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 403
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "pickable"

    iget-boolean v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->pickable:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->pickable:Z

    .line 404
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "draw in front"

    iget-boolean v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->drawInFront:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->drawInFront:Z

    .line 406
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "diagonal road"

    invoke-virtual {v1, v2, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6d7

    .line 407
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6d7

    .line 408
    invoke-static {v1, v6}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/RoadDraft;

    iput-object v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->diagonalRoad:Linfo/flowersoft/theotown/draft/RoadDraft;

    if-nez v2, :cond_6aa

    .line 409
    iget-object v2, v7, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6aa

    .line 410
    iput-object v7, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->diagonalRoad:Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 412
    :cond_6aa
    iget-object v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->diagonalRoad:Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz v2, :cond_6b1

    .line 415
    iput-object v7, v2, Linfo/flowersoft/theotown/draft/RoadDraft;->diagonalRoadOf:Linfo/flowersoft/theotown/draft/RoadDraft;

    goto :goto_6d7

    .line 413
    :cond_6b1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Did not find diagonal road "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (it has to be defined before "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 419
    :cond_6d7
    :goto_6d7
    iget-wide v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->flags:J

    const-wide/32 v3, 0x8000e4

    and-long/2addr v3, v1

    cmp-long v3, v3, v17

    if-eqz v3, :cond_6ee

    iget v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->speed:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x400c000000000000L    # 3.5

    cmpl-double v3, v3, v5

    if-gtz v3, :cond_6ee

    iget-boolean v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->allowTransfer:Z

    if-nez v3, :cond_6f7

    :cond_6ee
    const-wide/16 v3, 0x4

    and-long/2addr v1, v3

    cmp-long v1, v1, v17

    if-nez v1, :cond_6f7

    .line 423
    iput-boolean v10, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->pedestrians:Z

    .line 426
    :cond_6f7
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "pedestrians"

    iget-boolean v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->pedestrians:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->pedestrians:Z

    if-eqz v1, :cond_70d

    .line 427
    iget-wide v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->flags:J

    const-wide/32 v3, 0x400000

    or-long/2addr v1, v3

    iput-wide v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->flags:J

    .line 428
    :cond_70d
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->sidewalkOffset:F

    float-to-double v2, v2

    const-string v4, "sidewalk offset"

    invoke-virtual {v1, v4, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->sidewalkOffset:F

    const v2, 0x3d4ccccd    # 0.05f

    .line 429
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->sidewalkOffset:F

    .line 430
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->sidewalkSize:F

    float-to-double v2, v2

    const-string v4, "sidewalk size"

    invoke-virtual {v1, v4, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->sidewalkSize:F

    .line 431
    iget v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->sidewalkOffset:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    sub-float v1, v2, v1

    const v3, 0x3ccccccd    # 0.025f

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v2, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    iput v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->sidewalkSize:F

    .line 433
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->sidewalkOffset:F

    const/high16 v3, 0x3e800000    # 0.25f

    cmpl-float v2, v2, v3

    if-gez v2, :cond_757

    iget-boolean v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->allowRoadCrossing:Z

    if-eqz v2, :cond_755

    goto :goto_757

    :cond_755
    move v12, v10

    goto :goto_759

    :cond_757
    :goto_757
    move/from16 v12, v16

    :goto_759
    const-string v2, "allow road crossing"

    invoke-virtual {v1, v2, v12}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->allowRoadCrossing:Z

    .line 435
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "single placement"

    iget-boolean v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->singlePlacement:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->singlePlacement:Z

    .line 438
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "deco"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_77f

    .line 439
    iget-object v1, v0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "decos"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 440
    :cond_77f
    instance-of v2, v1, Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v2, :cond_78c

    .line 441
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 442
    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    goto :goto_795

    .line 443
    :cond_78c
    instance-of v2, v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-eqz v2, :cond_794

    .line 444
    move-object v2, v1

    check-cast v2, Linfo/flowersoft/theotown/util/json/JSONArray;

    goto :goto_795

    :cond_794
    move-object v2, v9

    :goto_795
    if-eqz v2, :cond_7ad

    .line 447
    :goto_797
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v1

    if-ge v10, v1, :cond_7ad

    .line 448
    invoke-virtual {v2, v10}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    .line 449
    iget-object v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->decorations:Ljava/util/List;

    invoke-static {v1}, Linfo/flowersoft/theotown/draftloader/RoadDraftLoader;->loadAutoDecoration(Linfo/flowersoft/theotown/util/json/JSONObject;)Linfo/flowersoft/theotown/draft/RoadDraft$AutoDecoration;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_797

    .line 452
    :cond_7ad
    iget-object v1, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->decorations:Ljava/util/List;

    if-eqz v1, :cond_7b9

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7b9

    iput-object v9, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->decorations:Ljava/util/List;

    .line 454
    :cond_7b9
    iget-object v1, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    if-eqz v1, :cond_7e0

    .line 458
    iget-object v1, v7, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-nez v1, :cond_7cd

    .line 459
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v2, "$cat_road00"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/CategoryDraft;

    iput-object v1, v7, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    .line 462
    :cond_7cd
    invoke-static {v7}, Linfo/flowersoft/theotown/resources/Drafts;->getOld(Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz v1, :cond_7da

    .line 464
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ROADS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 467
    :cond_7da
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ROADS:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v7

    .line 455
    :cond_7e0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Road "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must have frames"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_7fe
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Got less then 16 frames"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_806
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frames per bridge must be >= 12 but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->framesPerBridge:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_81f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Got no frames"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final loadFun(Linfo/flowersoft/theotown/draft/RoadDraft;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 491
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-object v1, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->transitions:Ljava/util/List;

    const-string v2, "fun"

    invoke-virtual {p0, v0, v2, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadTransitions(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->transitions:Ljava/util/List;

    .line 492
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "on click fun"

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->onClickTransitions:Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadTransitions(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->onClickTransitions:Ljava/util/List;

    .line 493
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "random fun"

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->randomTransitions:Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadTransitions(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->randomTransitions:Ljava/util/List;

    .line 494
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "on event fun"

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->onEventTransitions:Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadTransitions(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->onEventTransitions:Ljava/util/List;

    .line 495
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "on built fun"

    invoke-virtual {p0, v1, v2, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadTransitions(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->onBuiltTransitions:Ljava/util/List;

    .line 497
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "hidden on click"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Linfo/flowersoft/theotown/draft/RoadDraft;->hiddenOnClick:Z

    return-void
.end method

###### Class info.flowersoft.theotown.draftloader.RoadDraftLoader$$ExternalSyntheticLambda0 (info.flowersoft.theotown.draftloader.RoadDraftLoader$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/RoadDraftLoader$$ExternalSyntheticLambda0;
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
    new-instance v0, Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/RoadDraft;-><init>()V

    return-object v0
.end method
