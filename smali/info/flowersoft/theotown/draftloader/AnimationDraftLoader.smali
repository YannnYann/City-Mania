###### Class info.flowersoft.theotown.draftloader.AnimationDraftLoader (info.flowersoft.theotown.draftloader.AnimationDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/AnimationDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "AnimationDraftLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 19
    const-string v0, "animation"

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

    .line 24
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v1, Linfo/flowersoft/theotown/draftloader/AnimationDraftLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/AnimationDraftLoader$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-virtual {p0, v0, v2, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->getDraft(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/Class;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 26
    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 28
    sget-object v4, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;->TOP_LEFT:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;

    iget-object v6, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const-string v2, "frames"

    const-string v3, "frame"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v0

    iput-object v0, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v2, 0x0

    if-nez v0, :cond_29

    .line 30
    new-array v0, v2, [I

    iput-object v0, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 33
    :cond_29
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "additive"

    invoke-virtual {v0, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v5, Linfo/flowersoft/theotown/draft/AnimationDraft;->additive:Z

    .line 34
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "light"

    iget-boolean v4, v5, Linfo/flowersoft/theotown/draft/AnimationDraft;->light:Z

    invoke-virtual {v0, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v5, Linfo/flowersoft/theotown/draft/AnimationDraft;->light:Z

    .line 35
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "light switching"

    iget-boolean v4, v5, Linfo/flowersoft/theotown/draft/AnimationDraft;->lightSwitching:Z

    invoke-virtual {v0, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v5, Linfo/flowersoft/theotown/draft/AnimationDraft;->lightSwitching:Z

    .line 36
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget v3, v5, Linfo/flowersoft/theotown/draft/AnimationDraft;->nightLightProbability:F

    float-to-double v3, v3

    const-string v6, "night light probability"

    invoke-virtual {v0, v6, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v0, v3

    iput v0, v5, Linfo/flowersoft/theotown/draft/AnimationDraft;->nightLightProbability:F

    .line 38
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "speed"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v3, v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v0, v3

    iput v0, v5, Linfo/flowersoft/theotown/draft/AnimationDraft;->speed:F

    .line 40
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "rotation aware"

    invoke-virtual {v0, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v5, Linfo/flowersoft/theotown/draft/AnimationDraft;->rotationAware:Z

    .line 42
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "colors"

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    goto :goto_7d

    :cond_7b
    const-string v3, "color"

    :goto_7d
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, v3, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadColors(Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONObject;)[Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    iput-object v0, v5, Linfo/flowersoft/theotown/draft/AnimationDraft;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    .line 44
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "loop"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 46
    iget-object v3, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v6, "handle interpolation"

    invoke-virtual {v3, v6, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-le v3, v4, :cond_110

    .line 48
    iget-object v6, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v6, v6

    mul-int/2addr v6, v3

    if-nez v0, :cond_a1

    add-int/lit8 v0, v3, -0x1

    sub-int/2addr v6, v0

    .line 50
    :cond_a1
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0, v6}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    .line 51
    sget-object v7, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    move v8, v2

    :goto_a9
    if-ge v8, v6, :cond_107

    .line 54
    rem-int v9, v8, v3

    if-nez v9, :cond_c4

    .line 55
    iget-object v9, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    div-int v10, v8, v3

    aget v9, v9, v10

    invoke-virtual {v7, v9}, Lio/blueflower/stapel2d/drawing/Image;->getTextureId(I)I

    move-result v9

    invoke-virtual {v7, v9}, Lio/blueflower/stapel2d/drawing/Image;->selectTexture(I)V

    .line 56
    iget-object v9, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v9, v9, v10

    invoke-virtual {v0, v9}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_104

    :cond_c4
    int-to-float v9, v9

    int-to-float v10, v3

    div-float/2addr v9, v10

    .line 59
    iget-object v10, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    div-int v11, v8, v3

    aget v12, v10, v11

    add-int/2addr v11, v4

    .line 60
    array-length v13, v10

    rem-int/2addr v11, v13

    aget v10, v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v9

    .line 61
    invoke-virtual {v7, v12}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v13

    mul-float/2addr v13, v11

    .line 62
    invoke-virtual {v7, v10}, Lio/blueflower/stapel2d/drawing/Image;->getHandleX(I)F

    move-result v14

    mul-float/2addr v14, v9

    add-float/2addr v13, v14

    .line 63
    invoke-virtual {v7, v12}, Lio/blueflower/stapel2d/drawing/Image;->getHandleY(I)F

    move-result v14

    mul-float/2addr v11, v14

    .line 64
    invoke-virtual {v7, v10}, Lio/blueflower/stapel2d/drawing/Image;->getHandleY(I)F

    move-result v14

    mul-float/2addr v14, v9

    add-float/2addr v11, v14

    const/high16 v14, 0x3f000000    # 0.5f

    cmpg-float v9, v9, v14

    if-gez v9, :cond_f2

    goto :goto_f3

    :cond_f2
    move v12, v10

    .line 66
    :goto_f3
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    .line 65
    invoke-virtual {v7, v12, v9, v10}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(IFF)I

    move-result v9

    invoke-virtual {v0, v9}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :goto_104
    add-int/lit8 v8, v8, 0x1

    goto :goto_a9

    .line 69
    :cond_107
    invoke-virtual {v7, v2}, Lio/blueflower/stapel2d/drawing/Image;->selectTexture(I)V

    .line 71
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->reduce()[I

    move-result-object v0

    iput-object v0, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 74
    :cond_110
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "ping pong"

    invoke-virtual {v0, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_144

    .line 75
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    iget-object v3, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x2

    invoke-direct {v0, v3}, Lio/blueflower/stapel2d/util/IntList;-><init>(I)V

    .line 76
    :goto_126
    iget-object v3, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v4, v3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x2

    if-ge v2, v4, :cond_13e

    .line 77
    array-length v4, v3

    if-ge v2, v4, :cond_134

    move v4, v2

    goto :goto_136

    :cond_134
    array-length v4, v3

    sub-int/2addr v4, v2

    :goto_136
    aget v3, v3, v4

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_126

    .line 79
    :cond_13e
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->reduce()[I

    move-result-object v0

    iput-object v0, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 82
    :cond_144
    iget-object v0, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "animation"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16c

    .line 83
    invoke-virtual {v5}, Linfo/flowersoft/theotown/draft/Draft;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadAnimations(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v5, Linfo/flowersoft/theotown/draft/AnimationDraft;->animationSpots:Ljava/util/List;

    .line 84
    iget-object v7, v5, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iget-object v2, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v9, v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    iget-object v11, v1, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v8, "frame animation indices"

    move-object v6, v1

    invoke-virtual/range {v6 .. v11}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrameAnimationIndices(Ljava/lang/String;Ljava/lang/String;IILinfo/flowersoft/theotown/util/json/JSONObject;)[[I

    move-result-object v0

    iput-object v0, v5, Linfo/flowersoft/theotown/draft/AnimationDraft;->animationSpotIndices:[[I

    :cond_16c
    return-object v5
.end method

###### Class info.flowersoft.theotown.draftloader.AnimationDraftLoader$$ExternalSyntheticLambda0 (info.flowersoft.theotown.draftloader.AnimationDraftLoader$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/AnimationDraftLoader$$ExternalSyntheticLambda0;
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
    new-instance v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/AnimationDraft;-><init>()V

    return-object v0
.end method
