###### Class info.flowersoft.theotown.creation.modifier.BiomeTerrainModifier (info.flowersoft.theotown.creation.modifier.BiomeTerrainModifier)
.class public abstract Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;
.super Ljava/lang/Object;
.source "BiomeTerrainModifier.kt"


# instance fields
.field public biomes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            ">;"
        }
    .end annotation
.end field

.field public height:I

.field public mapBiomes:[Linfo/flowersoft/theotown/draft/BiomeDraft;

.field public noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

.field public numWorkers:I

.field public templateGround:Linfo/flowersoft/theotown/draft/GroundDraft;

.field public tiles:Linfo/flowersoft/theotown/city/Tiles;

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract apply()V
.end method

.method public final bind(Linfo/flowersoft/theotown/city/Tiles;ILio/blueflower/stapel2d/util/OpenSimplexNoise;[Linfo/flowersoft/theotown/draft/BiomeDraft;Ljava/util/List;Linfo/flowersoft/theotown/draft/GroundDraft;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/Tiles;",
            "I",
            "Lio/blueflower/stapel2d/util/OpenSimplexNoise;",
            "[",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            "Ljava/util/List<",
            "+",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            ">;",
            "Linfo/flowersoft/theotown/draft/GroundDraft;",
            ")V"
        }
    .end annotation

    const-string v0, "tiles"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noise"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapBiomes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "biomes"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "templateGround"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->setTiles(Linfo/flowersoft/theotown/city/Tiles;)V

    .line 28
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/Tiles;->getWidth()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->width:I

    .line 29
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/Tiles;->getHeight()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->height:I

    .line 30
    iput p2, p0, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->numWorkers:I

    .line 31
    invoke-virtual {p0, p3}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->setNoise(Lio/blueflower/stapel2d/util/OpenSimplexNoise;)V

    .line 32
    invoke-virtual {p0, p4}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->setMapBiomes([Linfo/flowersoft/theotown/draft/BiomeDraft;)V

    .line 33
    invoke-virtual {p0, p5}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->setBiomes(Ljava/util/List;)V

    .line 34
    invoke-virtual {p0, p6}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->setTemplateGround(Linfo/flowersoft/theotown/draft/GroundDraft;)V

    return-void
.end method

.method public final getBiome(II)Linfo/flowersoft/theotown/draft/BiomeDraft;
    .registers 5

    .line 42
    invoke-virtual {p0}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getMapBiomes()[Linfo/flowersoft/theotown/draft/BiomeDraft;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->width:I

    mul-int/2addr p2, v1

    add-int/2addr p1, p2

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getBiomes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->biomes:Ljava/util/List;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "biomes"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;
    .registers 4

    .line 41
    invoke-virtual {p0}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    return-object p1
.end method

.method public final getHeight()I
    .registers 2

    .line 12
    iget v0, p0, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->height:I

    return v0
.end method

.method public final getMapBiomes()[Linfo/flowersoft/theotown/draft/BiomeDraft;
    .registers 2

    .line 15
    iget-object v0, p0, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->mapBiomes:[Linfo/flowersoft/theotown/draft/BiomeDraft;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "mapBiomes"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNoise()Lio/blueflower/stapel2d/util/OpenSimplexNoise;
    .registers 2

    .line 14
    iget-object v0, p0, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "noise"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTiles()Linfo/flowersoft/theotown/city/Tiles;
    .registers 2

    .line 10
    iget-object v0, p0, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "tiles"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getWidth()I
    .registers 2

    .line 11
    iget v0, p0, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->width:I

    return v0
.end method

.method public abstract isAvailable()Z
.end method

.method public final setBiome(IILinfo/flowersoft/theotown/draft/BiomeDraft;)V
    .registers 6

    const-string v0, "biome"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getMapBiomes()[Linfo/flowersoft/theotown/draft/BiomeDraft;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->width:I

    mul-int/2addr p2, v1

    add-int/2addr p1, p2

    aput-object p3, v0, p1

    return-void
.end method

.method public final setBiomes(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->biomes:Ljava/util/List;

    return-void
.end method

.method public final setMapBiomes([Linfo/flowersoft/theotown/draft/BiomeDraft;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->mapBiomes:[Linfo/flowersoft/theotown/draft/BiomeDraft;

    return-void
.end method

.method public final setNoise(Lio/blueflower/stapel2d/util/OpenSimplexNoise;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    return-void
.end method

.method public final setTemplateGround(Linfo/flowersoft/theotown/draft/GroundDraft;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->templateGround:Linfo/flowersoft/theotown/draft/GroundDraft;

    return-void
.end method

.method public final setTiles(Linfo/flowersoft/theotown/city/Tiles;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-void
.end method
