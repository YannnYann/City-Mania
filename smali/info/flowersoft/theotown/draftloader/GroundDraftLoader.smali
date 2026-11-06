###### Class info.flowersoft.theotown.draftloader.GroundDraftLoader (info.flowersoft.theotown.draftloader.GroundDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/GroundDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "GroundDraftLoader.java"


# static fields
.field public static final EDGE_HANDLE:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Linfo/flowersoft/theotown/draftloader/GroundDraftLoader$1;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draftloader/GroundDraftLoader$1;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/draftloader/GroundDraftLoader;->EDGE_HANDLE:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 35
    const-string v0, "ground"

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

    .line 18
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draftloader/GroundDraftLoader;->load()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/GroundDraft;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;,
            Linfo/flowersoft/theotown/resources/MissingDraftException;
        }
    .end annotation

    .line 40
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v2, Linfo/flowersoft/theotown/draftloader/GroundDraftLoader$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Linfo/flowersoft/theotown/draftloader/GroundDraftLoader$$ExternalSyntheticLambda0;-><init>()V

    const-class v3, Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-virtual {p0, v1, v3, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->getDraft(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/Class;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 42
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 43
    iget-object v1, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const-string v2, "frames"

    const-string v3, "frame"

    invoke-virtual {p0, v2, v3, v4, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 44
    const-string v6, "Ground "

    if-eqz v1, :cond_32c

    array-length v1, v1

    if-eqz v1, :cond_32c

    .line 48
    const-string v1, "sparkle frame"

    iget-object v2, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->sparkleFrames:[I

    const-string v3, "sparkle frames"

    invoke-virtual {p0, v3, v1, v4, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->sparkleFrames:[I

    const/4 v7, 0x0

    if-eqz v1, :cond_3a

    .line 49
    array-length v1, v1

    if-nez v1, :cond_3a

    iput-object v7, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->sparkleFrames:[I

    .line 51
    :cond_3a
    sget-object v3, Linfo/flowersoft/theotown/draftloader/GroundDraftLoader;->EDGE_HANDLE:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;

    iget-object v5, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->edgeFrames:[I

    const-string v1, "edge frames"

    const-string v2, "edge frame"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->edgeFrames:[I

    .line 53
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "water"

    iget-boolean v5, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    invoke-virtual {v1, v2, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    .line 54
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "light"

    iget-boolean v5, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->light:Z

    invoke-virtual {v1, v2, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->light:Z

    .line 55
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "level"

    iget v5, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->level:I

    invoke-virtual {v1, v2, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->level:I

    if-ltz v1, :cond_309

    const/4 v8, 0x1

    if-gt v1, v8, :cond_309

    if-lez v1, :cond_9c

    .line 57
    iget-boolean v2, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    if-nez v2, :cond_79

    goto :goto_9c

    :cond_79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ground level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " cannot be water as defined in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9c
    :goto_9c
    const/4 v9, 0x0

    if-nez v1, :cond_ce

    .line 60
    iget-object v2, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->edgeFrames:[I

    if-eqz v2, :cond_b2

    array-length v5, v2

    if-eqz v5, :cond_b2

    .line 63
    array-length v5, v2

    if-ne v5, v8, :cond_ce

    .line 64
    aget v2, v2, v9

    filled-new-array {v2, v2}, [I

    move-result-object v2

    iput-object v2, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->edgeFrames:[I

    goto :goto_ce

    .line 61
    :cond_b2
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has to provide edge frames"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_ce
    :goto_ce
    iget-boolean v2, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    if-nez v2, :cond_145

    if-nez v1, :cond_145

    .line 69
    const-string v1, "border frame"

    iget-object v2, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->borderFrames:[I

    const-string v5, "border frames"

    invoke-virtual {p0, v5, v1, v4, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->borderFrames:[I

    .line 70
    const-string v2, "edge border frame"

    iget-object v5, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->edgeBorderFrames:[I

    const-string v1, "edge border frames"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    move-object v10, v4

    iput-object v1, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->edgeBorderFrames:[I

    .line 71
    iget-object v2, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->borderFrames:[I

    if-eqz v2, :cond_129

    array-length v3, v2

    if-eqz v3, :cond_129

    if-eqz v1, :cond_10d

    .line 74
    array-length v1, v1

    if-eqz v1, :cond_10d

    const/16 v1, 0x10

    .line 77
    invoke-virtual {p0, v2, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->extendArray([II)[I

    move-result-object v1

    iput-object v1, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->borderFrames:[I

    .line 78
    iget-object v1, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->edgeBorderFrames:[I

    const/16 v2, 0x20

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->extendArray([II)[I

    move-result-object v1

    iput-object v1, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->edgeBorderFrames:[I

    goto :goto_146

    .line 75
    :cond_10d
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has to provide 32 edge border frames"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_129
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has to provide 16 border frames"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_145
    move-object v10, v4

    .line 81
    :goto_146
    invoke-static {v10}, Linfo/flowersoft/theotown/resources/Drafts;->getOld(Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/GroundDraft;

    if-eqz v1, :cond_162

    .line 83
    iget-boolean v2, v1, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    if-eqz v2, :cond_158

    .line 84
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->WATER_TILES:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_15d

    .line 86
    :cond_158
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->LAND_TILES:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 88
    :goto_15d
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->GROUNDS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 91
    :cond_162
    iget-boolean v1, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    if-eqz v1, :cond_16c

    .line 92
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->WATER_TILES:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_171

    .line 94
    :cond_16c
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->LAND_TILES:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :goto_171
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->GROUNDS:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-boolean v1, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    if-eqz v1, :cond_17e

    const-string v1, "$biome_ocean00"

    :goto_17c
    move-object v5, v1

    goto :goto_181

    :cond_17e
    const-string v1, "$biome_mixed_forest00"

    goto :goto_17c

    .line 99
    :goto_181
    const-string v1, "spawn"

    iget-object v2, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    invoke-virtual {p0, v1, v2, v5}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadLegacySpawn(Ljava/lang/String;[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;Ljava/lang/String;)[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    move-result-object v3

    iput-object v3, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    .line 100
    new-instance v4, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "biome"

    const-string v2, "biomes"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadInBiomeSpawners(Ljava/lang/String;Ljava/lang/String;[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/String;)[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    move-result-object v1

    iput-object v1, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    .line 104
    const-string v2, "auto build"

    if-nez v1, :cond_1c1

    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1, v2, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1c1

    .line 105
    new-instance v1, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;-><init>()V

    .line 106
    new-instance v2, Linfo/flowersoft/theotown/draft/SpawnDefinition;

    invoke-direct {v2}, Linfo/flowersoft/theotown/draft/SpawnDefinition;-><init>()V

    iput-object v2, v1, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;->spawnDefinition:Linfo/flowersoft/theotown/draft/SpawnDefinition;

    .line 107
    const-class v2, Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-static {v5, v2}, Linfo/flowersoft/theotown/resources/Drafts;->getOrThrow(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BiomeDraft;

    iput-object v2, v1, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;->biome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    .line 108
    invoke-virtual {v10, v1}, Linfo/flowersoft/theotown/draft/GroundDraft;->addBiome(Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;)V

    goto :goto_1cb

    .line 109
    :cond_1c1
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1, v2, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1cb

    .line 110
    iput-object v7, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    .line 113
    :cond_1cb
    :goto_1cb
    iget-boolean v1, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    const/16 v2, 0x5d

    const/16 v3, 0x27

    const/16 v4, 0x44

    if-eqz v1, :cond_1db

    new-instance v1, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, v3, v4, v2}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    goto :goto_1e4

    :cond_1db
    new-instance v1, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v5, 0x60

    const/16 v6, 0x30

    invoke-direct {v1, v4, v5, v6}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    :goto_1e4
    iput-object v1, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->mapColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 114
    iget-boolean v1, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    if-eqz v1, :cond_1f0

    new-instance v1, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, v3, v4, v2}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    goto :goto_1f7

    :cond_1f0
    new-instance v1, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v2, 0xef

    invoke-direct {v1, v2, v2, v2}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    :goto_1f7
    iput-object v1, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->mapColorWinter:Lio/blueflower/stapel2d/drawing/Color;

    .line 116
    const-string v1, "map color"

    iget-object v2, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->mapColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    iput-object v1, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->mapColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 117
    const-string v1, "map color winter"

    iget-object v2, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->mapColorWinter:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    iput-object v1, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->mapColorWinter:Lio/blueflower/stapel2d/drawing/Color;

    .line 119
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "dry"

    iget-boolean v3, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->dry:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->dry:Z

    .line 120
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "shading"

    iget-boolean v3, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->shading:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->shading:Z

    .line 121
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "shading factor"

    iget v3, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->shadingFactor:I

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->shadingFactor:I

    .line 122
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "slope shading factor"

    iget v3, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->slopeShadingFactor:I

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->slopeShadingFactor:I

    .line 123
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "shading offset"

    iget v3, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->shadingOffset:I

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->shadingOffset:I

    .line 124
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "slope shading offset"

    iget v3, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->slopeShadingOffset:I

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->slopeShadingOffset:I

    .line 126
    sget-object v3, Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;->TOP_LEFT:Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;

    iget-object v5, v10, Linfo/flowersoft/theotown/draft/GroundDraft;->texture:[I

    const-string v1, "texture"

    const-string v2, "textures"

    move-object v0, p0

    move-object v4, v10

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->texture:[I

    .line 127
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "winter"

    iget-boolean v3, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->winter:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->winter:Z

    .line 128
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "pollution"

    iget-boolean v3, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->pollution:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->pollution:Z

    .line 129
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "plantable"

    iget-boolean v3, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->plantable:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->plantable:Z

    .line 131
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "blending"

    iget-boolean v3, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->blending:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->blending:Z

    .line 132
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "snow overlay"

    iget-boolean v3, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->snowOverlay:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->snowOverlay:Z

    .line 134
    iget-boolean v1, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    if-eqz v1, :cond_2f8

    .line 135
    const-string v1, "light water color"

    iget-object v2, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->lightWaterColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    iput-object v1, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->lightWaterColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 136
    const-string v1, "dark water color"

    iget-object v2, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->darkWaterColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    iput-object v1, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->darkWaterColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 137
    iget-object v1, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->lightWaterColor:Lio/blueflower/stapel2d/drawing/Color;

    if-nez v1, :cond_2ca

    .line 138
    new-instance v1, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v2, 0xf0

    const/16 v3, 0xff

    const/16 v5, 0xc8

    invoke-direct {v1, v5, v2, v3}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    iput-object v1, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->lightWaterColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 140
    :cond_2ca
    iget-object v1, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->darkWaterColor:Lio/blueflower/stapel2d/drawing/Color;

    if-nez v1, :cond_2d7

    .line 141
    new-instance v1, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v2, 0x1e

    invoke-direct {v1, v9, v9, v2}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    iput-object v1, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->darkWaterColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 143
    :cond_2d7
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "water speed"

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    const-wide/high16 v7, 0x4069000000000000L    # 200.0

    div-double/2addr v7, v1

    double-to-int v1, v7

    iput v1, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->waterAnimMS:I

    .line 144
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "water sparkle speed"

    invoke-virtual {v1, v2, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    const-wide v5, 0x407f400000000000L    # 500.0

    div-double/2addr v5, v1

    double-to-int v1, v5

    iput v1, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->waterSparkleAnimMS:I

    .line 147
    :cond_2f8
    iget-object v1, v4, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-nez v1, :cond_308

    .line 148
    const-string v1, "$cat_terrain00"

    const-class v2, Linfo/flowersoft/theotown/draft/CategoryDraft;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/CategoryDraft;

    iput-object v1, v4, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    :cond_308
    return-object v4

    .line 56
    :cond_309
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ground level has to be in {0, 1} but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Linfo/flowersoft/theotown/draft/GroundDraft;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_32c
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has to provide frames"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

###### Class info.flowersoft.theotown.draftloader.GroundDraftLoader.AnonymousClass1 (info.flowersoft.theotown.draftloader.GroundDraftLoader$1)
.class public Linfo/flowersoft/theotown/draftloader/GroundDraftLoader$1;
.super Ljava/lang/Object;
.source "GroundDraftLoader.java"

# interfaces
.implements Linfo/flowersoft/theotown/draftloader/ImageHandleResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draftloader/GroundDraftLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHandleX(III)I
    .registers 4

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public getHandleY(III)I
    .registers 4

    .line 0
    const/16 p1, 0x9

    return p1
.end method

###### Class info.flowersoft.theotown.draftloader.GroundDraftLoader$$ExternalSyntheticLambda0 (info.flowersoft.theotown.draftloader.GroundDraftLoader$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/GroundDraftLoader$$ExternalSyntheticLambda0;
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
    new-instance v0, Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/GroundDraft;-><init>()V

    return-object v0
.end method
