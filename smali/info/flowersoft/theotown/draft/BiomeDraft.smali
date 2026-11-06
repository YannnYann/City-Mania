###### Class info.flowersoft.theotown.draft.BiomeDraft (info.flowersoft.theotown.draft.BiomeDraft)
.class public Linfo/flowersoft/theotown/draft/BiomeDraft;
.super Linfo/flowersoft/theotown/draft/Draft;
.source "BiomeDraft.java"


# instance fields
.field public isWater:Z

.field public spawnDefinition:Linfo/flowersoft/theotown/draft/SpawnDefinition;

.field public spawnable:Z

.field public tempIndex:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 7
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/Draft;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/BiomeDraft;->spawnable:Z

    .line 31
    invoke-static {}, Linfo/flowersoft/theotown/draft/BiomeDraft;->getDefaultSpawnDefinition()Linfo/flowersoft/theotown/draft/SpawnDefinition;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/draft/BiomeDraft;->spawnDefinition:Linfo/flowersoft/theotown/draft/SpawnDefinition;

    return-void
.end method

.method public static getDefaultSpawnDefinition()Linfo/flowersoft/theotown/draft/SpawnDefinition;
    .registers 1

    .line 42
    new-instance v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/SpawnDefinition;-><init>()V

    return-object v0
.end method
