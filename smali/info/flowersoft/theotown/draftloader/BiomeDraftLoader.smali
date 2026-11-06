###### Class info.flowersoft.theotown.draftloader.BiomeDraftLoader (info.flowersoft.theotown.draftloader.BiomeDraftLoader)
.class public Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader;
.super Linfo/flowersoft/theotown/draftloader/DraftLoader;
.source "BiomeDraftLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$SpawnDefinitionApplier;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Linfo/flowersoft/theotown/draftloader/DraftLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadingTags()[Ljava/lang/String;
    .registers 2

    .line 21
    const-string v0, "biome"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public load()Linfo/flowersoft/theotown/draft/Draft;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;,
            Linfo/flowersoft/theotown/resources/MissingDraftException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v1, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-virtual {p0, v0, v2, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->getDraft(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/Class;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Linfo/flowersoft/theotown/draft/BiomeDraft;

    .line 28
    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadDefaults(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-boolean v1, v5, Linfo/flowersoft/theotown/draft/BiomeDraft;->isWater:Z

    const-string v3, "water"

    invoke-virtual {v0, v3, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v5, Linfo/flowersoft/theotown/draft/BiomeDraft;->isWater:Z

    .line 31
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "spawnable"

    iget-boolean v3, v5, Linfo/flowersoft/theotown/draft/BiomeDraft;->spawnable:Z

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v5, Linfo/flowersoft/theotown/draft/BiomeDraft;->spawnable:Z

    .line 33
    iget-object v0, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-object v1, v5, Linfo/flowersoft/theotown/draft/BiomeDraft;->spawnDefinition:Linfo/flowersoft/theotown/draft/SpawnDefinition;

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadSpawnDefinition(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/draft/SpawnDefinition;)V

    .line 35
    iget-object v4, p0, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v8, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda1;-><init>()V

    new-instance v11, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda2;

    invoke-direct {v11}, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda2;-><init>()V

    const-string v6, "ground"

    const-string v7, "grounds"

    const-string v9, "ground"

    const-class v10, Linfo/flowersoft/theotown/draft/GroundDraft;

    move-object v3, p0

    invoke-virtual/range {v3 .. v11}, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader;->loadForeignInBiomeSpawn(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/draft/BiomeDraft;Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/String;Ljava/lang/Class;Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$SpawnDefinitionApplier;)V

    .line 39
    iget-object v4, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v8, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda3;

    invoke-direct {v8}, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda3;-><init>()V

    new-instance v11, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda4;

    invoke-direct {v11}, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda4;-><init>()V

    const-string v6, "tree"

    const-string v7, "trees"

    const-string v9, "tree"

    const-class v10, Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-virtual/range {v3 .. v11}, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader;->loadForeignInBiomeSpawn(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/draft/BiomeDraft;Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/String;Ljava/lang/Class;Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$SpawnDefinitionApplier;)V

    .line 43
    iget-object v4, v3, Linfo/flowersoft/theotown/draftloader/DraftLoader;->src:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v8, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda1;-><init>()V

    new-instance v11, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda5;

    invoke-direct {v11}, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda5;-><init>()V

    const-string v6, "building"

    const-string v7, "buildings"

    const-string v9, "building"

    const-class v10, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual/range {v3 .. v11}, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader;->loadForeignInBiomeSpawn(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/draft/BiomeDraft;Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/String;Ljava/lang/Class;Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$SpawnDefinitionApplier;)V

    .line 47
    iget-object v0, v5, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BiomeDraft;

    if-eqz v0, :cond_87

    .line 49
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->BIOMES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 52
    :cond_87
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->BIOMES:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v5
.end method

.method public loadForeignInBiomeSpawn(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/draft/BiomeDraft;Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/String;Ljava/lang/Class;Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$SpawnDefinitionApplier;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linfo/flowersoft/theotown/draft/Draft;",
            ">(",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Linfo/flowersoft/theotown/draft/SpawnDefinition;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$SpawnDefinitionApplier<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;,
            Linfo/flowersoft/theotown/resources/MissingDraftException;
        }
    .end annotation

    .line 65
    invoke-static {p1, p3}, Linfo/flowersoft/theotown/util/JSONUtil;->optArrayOrSingle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p3

    if-nez p3, :cond_a

    .line 66
    invoke-static {p1, p4}, Linfo/flowersoft/theotown/util/JSONUtil;->optArrayOrSingle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p3

    :cond_a
    if-eqz p3, :cond_5b

    .line 67
    invoke-virtual {p3}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_13

    goto :goto_5b

    :cond_13
    const/4 p1, 0x0

    .line 69
    :goto_14
    invoke-virtual {p3}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result p4

    if-ge p1, p4, :cond_5b

    .line 70
    invoke-virtual {p3, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    .line 71
    new-instance v0, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;-><init>()V

    .line 72
    iput-object p2, v0, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;->biome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    .line 75
    instance-of v1, p4, Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 76
    check-cast p4, Ljava/lang/String;

    .line 77
    invoke-interface {p5}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/SpawnDefinition;

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;->spawnDefinition:Linfo/flowersoft/theotown/draft/SpawnDefinition;

    goto :goto_51

    .line 79
    :cond_34
    invoke-virtual {p3, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p4

    .line 80
    invoke-virtual {p4, p6}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    move-object v1, p6

    goto :goto_42

    :cond_40
    const-string v1, "id"

    :goto_42
    invoke-virtual {p4, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    new-instance v2, Linfo/flowersoft/theotown/draft/SpawnDefinition;

    invoke-direct {v2}, Linfo/flowersoft/theotown/draft/SpawnDefinition;-><init>()V

    iput-object v2, v0, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;->spawnDefinition:Linfo/flowersoft/theotown/draft/SpawnDefinition;

    .line 82
    invoke-virtual {p0, p4, v2}, Linfo/flowersoft/theotown/draftloader/DraftLoader;->loadSpawnDefinition(Linfo/flowersoft/theotown/util/json/JSONObject;Linfo/flowersoft/theotown/draft/SpawnDefinition;)V

    move-object p4, v1

    .line 85
    :goto_51
    invoke-static {p4, p7}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p4

    invoke-interface {p8, p4, v0}, Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$SpawnDefinitionApplier;->apply(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_14

    :cond_5b
    :goto_5b
    return-void
.end method

###### Class info.flowersoft.theotown.draftloader.BiomeDraftLoader.SpawnDefinitionApplier (info.flowersoft.theotown.draftloader.BiomeDraftLoader$SpawnDefinitionApplier)
.class public interface abstract Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$SpawnDefinitionApplier;
.super Ljava/lang/Object;
.source "BiomeDraftLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SpawnDefinitionApplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Linfo/flowersoft/theotown/draft/Draft;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract apply(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;",
            ")V"
        }
    .end annotation
.end method

###### Class info.flowersoft.theotown.draftloader.BiomeDraftLoader$$ExternalSyntheticLambda0 (info.flowersoft.theotown.draftloader.BiomeDraftLoader$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda0;
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
    new-instance v0, Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/BiomeDraft;-><init>()V

    return-object v0
.end method

###### Class info.flowersoft.theotown.draftloader.BiomeDraftLoader$$ExternalSyntheticLambda2 (info.flowersoft.theotown.draftloader.BiomeDraftLoader$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$SpawnDefinitionApplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;)V
    .registers 3

    .line 0
    check-cast p1, Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/draft/GroundDraft;->addBiome(Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;)V

    return-void
.end method

###### Class info.flowersoft.theotown.draftloader.BiomeDraftLoader$$ExternalSyntheticLambda4 (info.flowersoft.theotown.draftloader.BiomeDraftLoader$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$SpawnDefinitionApplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;)V
    .registers 3

    .line 0
    check-cast p1, Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/draft/TreeDraft;->addBiome(Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;)V

    return-void
.end method

###### Class info.flowersoft.theotown.draftloader.BiomeDraftLoader$$ExternalSyntheticLambda5 (info.flowersoft.theotown.draftloader.BiomeDraftLoader$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/draftloader/BiomeDraftLoader$SpawnDefinitionApplier;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;)V
    .registers 3

    .line 0
    check-cast p1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/draft/BuildingDraft;->addBiome(Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;)V

    return-void
.end method
