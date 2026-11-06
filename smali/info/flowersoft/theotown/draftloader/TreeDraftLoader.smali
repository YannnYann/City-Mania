###### Class info.flowersoft.theotown.draftloader.TreeDraftLoader (info.flowersoft.theotown.draftloader.TreeDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/TreeDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "TreeDraftLoader.java"


# static fields
.field public static final DEFAULT_COLOR:Lio/blueflower/stapel2d/drawing/Color;

.field public static final DEFAULT_COLOR_WINTER:Lio/blueflower/stapel2d/drawing/Color;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 18
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v1, 0x32

    const/16 v2, 0x14

    const/16 v3, 0x21

    invoke-direct {v0, v3, v1, v2}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Linfo/flowersoft/theotown/draftloader/TreeDraftLoader;->DEFAULT_COLOR:Lio/blueflower/stapel2d/drawing/Color;

    .line 19
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    const/16 v1, 0xc8

    const/16 v2, 0xc3

    const/16 v3, 0xc1

    invoke-direct {v0, v3, v1, v2}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    sput-object v0, Linfo/flowersoft/theotown/draftloader/TreeDraftLoader;->DEFAULT_COLOR_WINTER:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 23
    const-string v0, "tree"

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

    .line 16
    invoke-virtual {p0}, Linfo/flowersoft/theotown/draftloader/TreeDraftLoader;->load()Linfo/flowersoft/theotown/draft/TreeDraft;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/TreeDraft;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;,
            Linfo/flowersoft/theotown/resources/MissingDraftException;
        }
    .end annotation

    .line 28
    new-instance v0, Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/TreeDraft;-><init>()V

    .line 30
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 31
    const-string v1, "frame"

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const-string v3, "frames"

    invoke-virtual {p0, v3, v1, v0, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadFrames(Ljava/lang/String;Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;[I)[I

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 33
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v2, "$inf.default"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/InfluenceDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/InfluenceDraft;->induceVector:[I

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->influenceInduceVector:[I

    .line 34
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadInfluences([I)[I

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->influenceInduceVector:[I

    .line 36
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "frames per tree"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->framesPerTree:I

    .line 37
    iget-object v1, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "auto build"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 39
    iget-object v2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "build height"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->buildHeight:I

    .line 40
    iget-object v2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "supports slope"

    iget-boolean v5, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->supportsSlope:Z

    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->supportsSlope:Z

    .line 42
    const-string v2, "map color"

    sget-object v4, Linfo/flowersoft/theotown/draftloader/TreeDraftLoader;->DEFAULT_COLOR:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v2, v4}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    iput-object v2, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->mapColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 43
    const-string v2, "map color winter"

    sget-object v4, Linfo/flowersoft/theotown/draftloader/TreeDraftLoader;->DEFAULT_COLOR_WINTER:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0, v2, v4}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->optColor(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    iput-object v2, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->mapColorWinter:Lio/blueflower/stapel2d/drawing/Color;

    .line 45
    iget-object v2, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "price"

    const/16 v5, 0x32

    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->price:I

    if-gez v2, :cond_7d

    .line 46
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->isPrivileged()Z

    move-result v2

    if-nez v2, :cond_7d

    iput v3, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->price:I

    .line 48
    :cond_7d
    iget-boolean v2, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->water:Z

    const-string v3, "$biome_mixed_forest00"

    const-string v4, "$biome_ocean00"

    if-eqz v2, :cond_87

    move-object v10, v4

    goto :goto_88

    :cond_87
    move-object v10, v3

    .line 49
    :goto_88
    const-string v2, "spawn"

    iget-object v5, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    invoke-virtual {p0, v2, v5, v10}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadLegacySpawn(Ljava/lang/String;[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;Ljava/lang/String;)[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    move-result-object v8

    iput-object v8, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    .line 50
    new-instance v9, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda3;

    invoke-direct {v9}, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda3;-><init>()V

    const-string v6, "biome"

    const-string v7, "biomes"

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadInBiomeSpawners(Ljava/lang/String;Ljava/lang/String;[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/String;)[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    move-result-object v2

    iput-object v2, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    if-nez v2, :cond_dc

    if-eqz v1, :cond_dc

    .line 55
    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->land:Z

    const-class v2, Linfo/flowersoft/theotown/draft/BiomeDraft;

    if-eqz v1, :cond_c2

    .line 56
    new-instance v1, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;-><init>()V

    .line 57
    invoke-static {}, Linfo/flowersoft/theotown/draft/TreeDraft;->getDefaultSpawnDefinition()Linfo/flowersoft/theotown/draft/SpawnDefinition;

    move-result-object v6

    iput-object v6, v1, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;->spawnDefinition:Linfo/flowersoft/theotown/draft/SpawnDefinition;

    .line 58
    invoke-static {v3, v2}, Linfo/flowersoft/theotown/resources/Drafts;->getOrThrow(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/BiomeDraft;

    iput-object v3, v1, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;->biome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    .line 59
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draft/TreeDraft;->addBiome(Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;)V

    .line 61
    :cond_c2
    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->water:Z

    if-eqz v1, :cond_dc

    .line 62
    new-instance v1, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;-><init>()V

    .line 63
    invoke-static {}, Linfo/flowersoft/theotown/draft/TreeDraft;->getDefaultSpawnDefinition()Linfo/flowersoft/theotown/draft/SpawnDefinition;

    move-result-object v3

    iput-object v3, v1, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;->spawnDefinition:Linfo/flowersoft/theotown/draft/SpawnDefinition;

    .line 64
    invoke-static {v4, v2}, Linfo/flowersoft/theotown/resources/Drafts;->getOrThrow(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BiomeDraft;

    iput-object v2, v1, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;->biome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    .line 65
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draft/TreeDraft;->addBiome(Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;)V

    .line 70
    :cond_dc
    iget-object v1, v5, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "burnable"

    iget-boolean v3, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->burnable:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->burnable:Z

    .line 71
    iget-object v1, v5, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "water"

    iget-boolean v3, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->water:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->water:Z

    .line 72
    iget-object v1, v5, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "land"

    iget-boolean v3, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->land:Z

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->land:Z

    .line 74
    iget-object v1, v5, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-object v2, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iget-object v3, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

    const-string v4, "add price"

    invoke-virtual {p0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDraftList(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Ljava/lang/String;[Linfo/flowersoft/theotown/draft/Draft;)[Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/TreeDraft;->addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

    .line 76
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    if-nez v1, :cond_11e

    .line 77
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v2, "$cat_tree00"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/CategoryDraft;

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/Draft;->category:Linfo/flowersoft/theotown/draft/CategoryDraft;

    .line 80
    :cond_11e
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->TREES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
