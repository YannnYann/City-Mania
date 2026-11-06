###### Class info.flowersoft.theotown.draft.TreeDraft (info.flowersoft.theotown.draft.TreeDraft)
.class public Linfo/flowersoft/theotown/draft/TreeDraft;
.super Linfo/flowersoft/theotown/draft/ViewportDraft;
.source "TreeDraft.java"


# instance fields
.field public addPriceDrafts:[Linfo/flowersoft/theotown/draft/Draft;

.field public biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

.field public buildHeight:I

.field public burnable:Z

.field public framesPerTree:I

.field public influenceInduceVector:[I

.field public land:Z

.field public mapColor:Lio/blueflower/stapel2d/drawing/Color;

.field public mapColorWinter:Lio/blueflower/stapel2d/drawing/Color;

.field public price:I

.field public supportsSlope:Z

.field public water:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 9
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/ViewportDraft;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/TreeDraft;->supportsSlope:Z

    .line 25
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/TreeDraft;->burnable:Z

    const/4 v1, 0x0

    .line 26
    iput-boolean v1, p0, Linfo/flowersoft/theotown/draft/TreeDraft;->water:Z

    .line 27
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/TreeDraft;->land:Z

    return-void
.end method

.method public static getDefaultSpawnDefinition()Linfo/flowersoft/theotown/draft/SpawnDefinition;
    .registers 2

    .line 56
    new-instance v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/SpawnDefinition;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 57
    iput v1, v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->noiseFactor:F

    return-object v0
.end method


# virtual methods
.method public addBiome(Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;)V
    .registers 3

    .line 42
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/TreeDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    if-nez v0, :cond_b

    .line 43
    filled-new-array {p1}, [Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/draft/TreeDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    return-void

    .line 47
    :cond_b
    invoke-static {v0, p1}, Linfo/flowersoft/theotown/util/ArrayUtil;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 49
    :cond_12
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/TreeDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/util/ArrayUtil;->add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    iput-object p1, p0, Linfo/flowersoft/theotown/draft/TreeDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    return-void
.end method
