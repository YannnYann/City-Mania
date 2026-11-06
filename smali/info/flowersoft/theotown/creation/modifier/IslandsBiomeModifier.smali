###### Class info.flowersoft.theotown.creation.modifier.IslandsBiomeModifier (info.flowersoft.theotown.creation.modifier.IslandsBiomeModifier)
.class public final Linfo/flowersoft/theotown/creation/modifier/IslandsBiomeModifier;
.super Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;
.source "IslandsBiomeModifier.kt"


# instance fields
.field public final islandsBiome:Linfo/flowersoft/theotown/draft/BiomeDraft;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 8
    invoke-direct {p0}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;-><init>()V

    .line 10
    const-string v0, "$biome_islands00"

    const-class v1, Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BiomeDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/creation/modifier/IslandsBiomeModifier;->islandsBiome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    return-void
.end method


# virtual methods
.method public apply()V
    .registers 19

    move-object/from16 v0, p0

    .line 16
    iget-object v1, v0, Linfo/flowersoft/theotown/creation/modifier/IslandsBiomeModifier;->islandsBiome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    .line 18
    invoke-virtual {v0}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_62

    .line 19
    invoke-virtual {v0}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getWidth()I

    move-result v5

    move v6, v3

    :goto_11
    if-ge v6, v5, :cond_5f

    .line 20
    invoke-virtual {v0, v6, v4}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getBiome(II)Linfo/flowersoft/theotown/draft/BiomeDraft;

    move-result-object v7

    .line 21
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 23
    invoke-virtual {v0, v6, v4}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v7

    .line 24
    iget-short v8, v7, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    int-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v9

    .line 25
    invoke-virtual {v0}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getNoise()Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    move-result-object v10

    int-to-float v11, v6

    const v12, 0x3dcccccd    # 0.1f

    mul-float/2addr v11, v12

    int-to-float v13, v4

    mul-float/2addr v13, v12

    const/high16 v12, 0x40e00000    # 7.0f

    invoke-virtual {v10, v11, v13, v12}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FFF)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    add-float/2addr v10, v11

    cmpg-float v11, v10, v11

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v13, 0x0

    if-gez v11, :cond_49

    mul-float/2addr v10, v12

    .line 27
    invoke-static {v8, v13, v10}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v8

    goto :goto_54

    :cond_49
    mul-float/2addr v10, v12

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v10, v8

    const v8, 0x48f42400    # 500000.0f

    .line 29
    invoke-static {v13, v8, v10}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v8

    :goto_54
    div-float/2addr v8, v9

    .line 31
    invoke-static {v8}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v8

    int-to-short v8, v8

    iput-short v8, v7, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    :cond_5c
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_62
    :goto_62
    const/4 v2, 0x2

    if-ge v3, v2, :cond_ee

    .line 37
    invoke-virtual {v0}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move v6, v5

    :goto_6c
    if-ge v6, v4, :cond_e8

    .line 38
    invoke-virtual {v0}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getWidth()I

    move-result v7

    sub-int/2addr v7, v5

    move v8, v5

    :goto_74
    if-ge v8, v7, :cond_e0

    .line 39
    invoke-virtual {v0, v8, v6}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getBiome(II)Linfo/flowersoft/theotown/draft/BiomeDraft;

    move-result-object v9

    .line 40
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d4

    .line 42
    invoke-virtual {v0, v8, v6}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v9

    add-int/lit8 v10, v8, -0x1

    .line 43
    invoke-virtual {v0, v10, v6}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v11

    add-int/lit8 v12, v8, 0x1

    .line 44
    invoke-virtual {v0, v12, v6}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v13

    add-int/lit8 v14, v6, -0x1

    .line 45
    invoke-virtual {v0, v8, v14}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v15

    move/from16 v16, v2

    add-int/lit8 v2, v6, 0x1

    .line 46
    invoke-virtual {v0, v8, v2}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    move-object/from16 v17, v1

    .line 47
    invoke-virtual {v0, v10, v14}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v12, v14}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v14

    .line 49
    invoke-virtual {v0, v10, v2}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v10

    .line 50
    invoke-virtual {v0, v12, v2}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v2

    .line 53
    iget-short v12, v9, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    mul-int/lit8 v12, v12, 0x4

    .line 54
    iget-short v11, v11, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    iget-short v13, v13, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    add-int/2addr v11, v13

    iget-short v13, v15, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    add-int/2addr v11, v13

    iget-short v5, v5, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    add-int/2addr v11, v5

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v12, v11

    .line 55
    iget-short v1, v1, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    iget-short v5, v14, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    add-int/2addr v1, v5

    iget-short v5, v10, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    add-int/2addr v1, v5

    iget-short v2, v2, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    .line 52
    div-int/lit8 v12, v12, 0x10

    int-to-short v1, v12

    iput-short v1, v9, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    goto :goto_d8

    :cond_d4
    move-object/from16 v17, v1

    move/from16 v16, v2

    :goto_d8
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v16

    move-object/from16 v1, v17

    const/4 v5, 0x1

    goto :goto_74

    :cond_e0
    move-object/from16 v17, v1

    move/from16 v16, v2

    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x1

    goto :goto_6c

    :cond_e8
    move-object/from16 v17, v1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_62

    :cond_ee
    return-void
.end method

.method public isAvailable()Z
    .registers 3

    .line 13
    iget-object v0, p0, Linfo/flowersoft/theotown/creation/modifier/IslandsBiomeModifier;->islandsBiome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getBiomes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/creation/modifier/IslandsBiomeModifier;->islandsBiome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method
