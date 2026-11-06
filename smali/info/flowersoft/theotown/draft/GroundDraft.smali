###### Class info.flowersoft.theotown.draft.GroundDraft (info.flowersoft.theotown.draft.GroundDraft)
.class public Linfo/flowersoft/theotown/draft/GroundDraft;
.super Linfo/flowersoft/theotown/draft/ViewportDraft;
.source "GroundDraft.java"


# instance fields
.field public biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

.field public blending:Z

.field public borderFrames:[I

.field public darkWaterColor:Lio/blueflower/stapel2d/drawing/Color;

.field public dry:Z

.field public edgeBorderFrames:[I

.field public edgeFrames:[I

.field public index:I

.field public isWater:Z

.field public level:I

.field public light:Z

.field public lightWaterColor:Lio/blueflower/stapel2d/drawing/Color;

.field public mapColor:Lio/blueflower/stapel2d/drawing/Color;

.field public mapColorWinter:Lio/blueflower/stapel2d/drawing/Color;

.field public plantable:Z

.field public pollution:Z

.field public shading:Z

.field public shadingFactor:I

.field public shadingOffset:I

.field public slopeShadingFactor:I

.field public slopeShadingOffset:I

.field public snowOverlay:Z

.field public sparkleFrames:[I

.field public texture:[I

.field public waterAnimMS:I

.field public waterSparkleAnimMS:I

.field public winter:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 9
    invoke-direct {p0}, Linfo/flowersoft/theotown/draft/ViewportDraft;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Linfo/flowersoft/theotown/draft/GroundDraft;->level:I

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/GroundDraft;->shading:Z

    const/4 v1, 0x4

    .line 30
    iput v1, p0, Linfo/flowersoft/theotown/draft/GroundDraft;->shadingFactor:I

    const/16 v1, 0x8

    .line 31
    iput v1, p0, Linfo/flowersoft/theotown/draft/GroundDraft;->slopeShadingFactor:I

    const/16 v1, -0x28

    .line 32
    iput v1, p0, Linfo/flowersoft/theotown/draft/GroundDraft;->shadingOffset:I

    const/16 v1, -0x14

    .line 33
    iput v1, p0, Linfo/flowersoft/theotown/draft/GroundDraft;->slopeShadingOffset:I

    .line 72
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/GroundDraft;->pollution:Z

    .line 73
    iput-boolean v0, p0, Linfo/flowersoft/theotown/draft/GroundDraft;->plantable:Z

    return-void
.end method

.method public static getDefaultSpawnDefinition()Linfo/flowersoft/theotown/draft/SpawnDefinition;
    .registers 2

    .line 85
    new-instance v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/SpawnDefinition;-><init>()V

    const v1, 0x3dcccccd    # 0.1f

    .line 86
    iput v1, v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->offset:F

    return-object v0
.end method


# virtual methods
.method public addBiome(Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;)V
    .registers 3

    .line 61
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/GroundDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    if-nez v0, :cond_b

    .line 62
    filled-new-array {p1}, [Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/draft/GroundDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    return-void

    .line 66
    :cond_b
    invoke-static {v0, p1}, Linfo/flowersoft/theotown/util/ArrayUtil;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    return-void

    .line 68
    :cond_12
    iget-object v0, p0, Linfo/flowersoft/theotown/draft/GroundDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/util/ArrayUtil;->add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    iput-object p1, p0, Linfo/flowersoft/theotown/draft/GroundDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    return-void
.end method
