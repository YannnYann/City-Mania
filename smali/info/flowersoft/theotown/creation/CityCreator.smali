###### Class info.flowersoft.theotown.creation.CityCreator (info.flowersoft.theotown.creation.CityCreator)
.class public final Linfo/flowersoft/theotown/creation/CityCreator;
.super Ljava/lang/Object;
.source "CityCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/creation/CityCreator$CityData;
    }
.end annotation


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final defaultBiome:Linfo/flowersoft/theotown/draft/BiomeDraft;

.field public final defaultWater:Linfo/flowersoft/theotown/draft/BiomeDraft;

.field public final desertBiome:Linfo/flowersoft/theotown/draft/BiomeDraft;

.field public final luaLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/LuaLibrary;",
            ">;"
        }
    .end annotation
.end field

.field public final snowBiome:Linfo/flowersoft/theotown/draft/BiomeDraft;

.field public final templateGround:Linfo/flowersoft/theotown/draft/GroundDraft;

.field public tiles:Linfo/flowersoft/theotown/city/Tiles;


# direct methods
.method public static synthetic $r8$lambda$NnqDklRZg7v6JB5SnlSLJ72E3SM(Linfo/flowersoft/theotown/creation/CityCreator;IIIILjava/util/concurrent/CyclicBarrier;)V
    .registers 16

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-int/2addr p1, p2

    move v0, p1

    :goto_5
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, p3, :cond_cd

    add-int v3, p1, p2

    if-ge v0, v3, :cond_cd

    move v3, v1

    :goto_e
    add-int/lit8 v4, p4, -0x1

    const/16 v5, 0x32

    const/16 v6, -0x32

    if-ge v3, v4, :cond_40

    .line 798
    iget-object v4, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v4, v7, v0}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v4

    iget-short v4, v4, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    iget-object v8, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v8, v9, v0}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v8

    iget-short v8, v8, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    sub-int/2addr v4, v8

    .line 799
    iget-object v8, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v8, v3, v0}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v3

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-byte v4, v4

    iput-byte v4, v3, Linfo/flowersoft/theotown/city/objects/Ground;->heightDX:B

    move v3, v7

    goto :goto_e

    :cond_40
    if-lez v0, :cond_74

    add-int/lit8 v3, p3, -0x1

    if-ge v0, v3, :cond_74

    move v3, v2

    :goto_47
    if-ge v3, p4, :cond_74

    .line 805
    iget-object v7, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v7, v3, v8}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v7

    iget-short v7, v7, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    iget-object v8, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v8, v3, v9}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v8

    iget-short v8, v8, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    sub-int/2addr v7, v8

    .line 806
    iget-object v8, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v8, v3, v0}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v8

    div-int/lit8 v7, v7, 0x2

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-byte v7, v7

    iput-byte v7, v8, Linfo/flowersoft/theotown/city/objects/Ground;->heightDY:B

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    .line 811
    :cond_74
    iget-object v3, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v2, v0}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v1, v0}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v3

    iget-byte v3, v3, Linfo/flowersoft/theotown/city/objects/Ground;->heightDX:B

    iput-byte v3, v2, Linfo/flowersoft/theotown/city/objects/Ground;->heightDX:B

    .line 812
    iget-object v2, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, v4, v0}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 v5, p4, -0x2

    invoke-virtual {v3, v5, v0}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v3

    iget-byte v3, v3, Linfo/flowersoft/theotown/city/objects/Ground;->heightDX:B

    iput-byte v3, v2, Linfo/flowersoft/theotown/city/objects/Ground;->heightDX:B

    if-nez v0, :cond_ae

    move v2, v1

    :goto_99
    if-ge v2, v4, :cond_c9

    .line 815
    iget-object v3, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v2, v0}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v3

    iget-object v5, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v2, v1}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    iget-byte v5, v5, Linfo/flowersoft/theotown/city/objects/Ground;->heightDY:B

    iput-byte v5, v3, Linfo/flowersoft/theotown/city/objects/Ground;->heightDY:B

    add-int/lit8 v2, v2, 0x1

    goto :goto_99

    :cond_ae
    add-int/lit8 v2, p3, -0x1

    if-ne v0, v2, :cond_c9

    :goto_b2
    if-ge v1, v4, :cond_c9

    .line 819
    iget-object v2, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, v1, v0}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 v5, p3, -0x2

    invoke-virtual {v3, v1, v5}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v3

    iget-byte v3, v3, Linfo/flowersoft/theotown/city/objects/Ground;->heightDY:B

    iput-byte v3, v2, Linfo/flowersoft/theotown/city/objects/Ground;->heightDY:B

    add-int/lit8 v1, v1, 0x1

    goto :goto_b2

    :cond_c9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    .line 826
    :cond_cd
    :try_start_cd
    invoke-virtual {p5}, Ljava/util/concurrent/CyclicBarrier;->await()I
    :try_end_d0
    .catch Ljava/lang/InterruptedException; {:try_start_cd .. :try_end_d0} :catch_14c
    .catch Ljava/util/concurrent/BrokenBarrierException; {:try_start_cd .. :try_end_d0} :catch_14c

    move p5, p1

    :goto_d1
    if-ge p5, p3, :cond_10b

    add-int v0, p1, p2

    if-ge p5, v0, :cond_10b

    move v0, v1

    :goto_d8
    add-int/lit8 v3, p4, -0x1

    if-ge v0, v3, :cond_108

    .line 834
    iget-object v3, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v0, p5}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 v5, v0, -0x1

    .line 835
    invoke-virtual {v4, v5, p5}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v4

    iget-byte v4, v4, Linfo/flowersoft/theotown/city/objects/Ground;->heightDX:B

    iget-object v5, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 836
    invoke-virtual {v5, v0, p5}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    iget-byte v5, v5, Linfo/flowersoft/theotown/city/objects/Ground;->heightDX:B

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 v0, v0, 0x1

    .line 837
    invoke-virtual {v5, v0, p5}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    iget-byte v5, v5, Linfo/flowersoft/theotown/city/objects/Ground;->heightDX:B

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    iput-byte v4, v3, Linfo/flowersoft/theotown/city/objects/Ground;->heightDX:B

    goto :goto_d8

    :cond_108
    add-int/lit8 p5, p5, 0x1

    goto :goto_d1

    .line 843
    :cond_10b
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p5

    :goto_10f
    add-int/lit8 v0, p3, -0x1

    if-ge p5, v0, :cond_14b

    add-int v0, p1, p2

    if-ge p5, v0, :cond_14b

    move v0, v2

    :goto_118
    if-ge v0, p4, :cond_148

    .line 845
    iget-object v3, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v0, p5}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 v5, p5, -0x1

    .line 846
    invoke-virtual {v4, v0, v5}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v4

    iget-byte v4, v4, Linfo/flowersoft/theotown/city/objects/Ground;->heightDY:B

    iget-object v5, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 847
    invoke-virtual {v5, v0, p5}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    iget-byte v5, v5, Linfo/flowersoft/theotown/city/objects/Ground;->heightDY:B

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 v6, p5, 0x1

    .line 848
    invoke-virtual {v5, v0, v6}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    iget-byte v5, v5, Linfo/flowersoft/theotown/city/objects/Ground;->heightDY:B

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    iput-byte v4, v3, Linfo/flowersoft/theotown/city/objects/Ground;->heightDY:B

    add-int/lit8 v0, v0, 0x1

    goto :goto_118

    :cond_148
    add-int/lit8 p5, p5, 0x1

    goto :goto_10f

    :cond_14b
    return-void

    :catch_14c
    move-exception p0

    .line 828
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic $r8$lambda$ZOHyoTnLScZPy7snrTLSQI99Yy0(Linfo/flowersoft/theotown/creation/CityCreator;I[FIIFJIIIIZLio/blueflower/stapel2d/util/IntValueProperty;)V
    .registers 14

    .line 660
    invoke-virtual/range {p0 .. p13}, Linfo/flowersoft/theotown/creation/CityCreator;->addRiver(I[FIIFJIIIIZLio/blueflower/stapel2d/util/IntValueProperty;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uqSaymbBB8HWYghiUMRBc53gUN8(Ljava/lang/Float;)V
    .registers 1

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$wFfnp8tqG0lI8Kbwd5yYBNRzU28(Linfo/flowersoft/theotown/creation/CityCreator;IIILinfo/flowersoft/theotown/util/ProgressVariable;Ljava/util/concurrent/CyclicBarrier;I)V
    .registers 14

    .line 494
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    .line 494
    iget-object v1, p0, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x0

    .line 494
    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    .line 495
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getTerrainBuilder()Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

    move-result-object v0

    mul-int/2addr p1, p2

    .line 497
    div-int/lit8 v1, p2, 0x2

    add-int/2addr v1, p1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr p2, p1

    .line 498
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    move v3, p1

    :goto_1a
    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3f4ccccd    # 0.8f

    if-ge v3, v1, :cond_5e

    .line 500
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_5e

    if-nez p1, :cond_36

    int-to-float v6, v3

    mul-float/2addr v6, v4

    int-to-float v4, p2

    div-float/2addr v6, v4

    add-float/2addr v6, v5

    .line 501
    invoke-virtual {p4, v6}, Linfo/flowersoft/theotown/util/ProgressVariable;->setProgress(F)V

    :cond_36
    move v4, v2

    :goto_37
    if-ge v4, p3, :cond_5b

    .line 503
    iget-object v5, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v4, v3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    iget-short v5, v5, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    div-int/lit16 v5, v5, 0xc8

    if-lez v5, :cond_58

    .line 506
    invoke-virtual {v0, v4, v3, v5}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->addTarget(III)V

    .line 507
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->calculate()V

    .line 508
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->isBuildable()Z

    move-result v5

    if-eqz v5, :cond_55

    .line 509
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->apply()V

    goto :goto_58

    .line 511
    :cond_55
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->clear()V

    :cond_58
    :goto_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 517
    :cond_5e
    :try_start_5e
    invoke-virtual {p5}, Ljava/util/concurrent/CyclicBarrier;->await()I

    :goto_61
    if-ge v1, p2, :cond_a8

    .line 519
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p3

    if-nez p3, :cond_a8

    if-nez p1, :cond_77

    int-to-float p3, v1

    mul-float/2addr p3, v4

    int-to-float p5, p2

    div-float/2addr p3, p5

    add-float/2addr p3, v5

    .line 520
    invoke-virtual {p4, p3}, Linfo/flowersoft/theotown/util/ProgressVariable;->setProgress(F)V

    :cond_77
    move p3, v2

    :goto_78
    if-ge p3, p6, :cond_9c

    .line 522
    iget-object p5, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p5, p3, v1}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p5

    iget-short p5, p5, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    div-int/lit16 p5, p5, 0xc8

    if-lez p5, :cond_99

    .line 525
    invoke-virtual {v0, p3, v1, p5}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->addTarget(III)V

    .line 526
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->calculate()V

    .line 527
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->isBuildable()Z

    move-result p5

    if-eqz p5, :cond_96

    .line 528
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->apply()V

    goto :goto_99

    .line 530
    :cond_96
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->clear()V
    :try_end_99
    .catch Ljava/lang/InterruptedException; {:try_start_5e .. :try_end_99} :catch_a4
    .catch Ljava/util/concurrent/BrokenBarrierException; {:try_start_5e .. :try_end_99} :catch_9f

    :cond_99
    :goto_99
    add-int/lit8 p3, p3, 0x1

    goto :goto_78

    :cond_9c
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    :catch_9f
    move-exception p0

    .line 540
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a8

    :catch_a4
    move-exception p0

    .line 537
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a8
    :goto_a8
    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 4

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-string v0, "$biome_ocean00"

    const-class v1, Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BiomeDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/creation/CityCreator;->defaultWater:Linfo/flowersoft/theotown/draft/BiomeDraft;

    .line 104
    const-string v0, "$biome_mixed_forest00"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BiomeDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/creation/CityCreator;->defaultBiome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    .line 105
    const-string v0, "$biome_snow00"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BiomeDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/creation/CityCreator;->snowBiome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    .line 106
    const-string v0, "$biome_desert00"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BiomeDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/creation/CityCreator;->desertBiome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    .line 111
    new-instance v0, Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-direct {v0}, Linfo/flowersoft/theotown/draft/GroundDraft;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/creation/CityCreator;->templateGround:Linfo/flowersoft/theotown/draft/GroundDraft;

    const/4 v1, 0x0

    .line 113
    new-array v1, v1, [I

    iput-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/creation/CityCreator;->luaLibraries:Ljava/util/List;

    .line 124
    iput-object p1, p0, Linfo/flowersoft/theotown/creation/CityCreator;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/creation/CityCreator;)Linfo/flowersoft/theotown/city/Tiles;
    .registers 1

    .line 87
    iget-object p0, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/creation/CityCreator;Ljava/util/List;Lio/blueflower/stapel2d/util/OpenSimplexNoise;Linfo/flowersoft/theotown/draft/BiomeDraft;Linfo/flowersoft/theotown/draft/GroundDraft;IIFFLio/blueflower/stapel2d/util/ProbabilitySelector;)Linfo/flowersoft/theotown/draft/TreeDraft;
    .registers 10

    .line 87
    invoke-virtual/range {p0 .. p9}, Linfo/flowersoft/theotown/creation/CityCreator;->pickTree(Ljava/util/List;Lio/blueflower/stapel2d/util/OpenSimplexNoise;Linfo/flowersoft/theotown/draft/BiomeDraft;Linfo/flowersoft/theotown/draft/GroundDraft;IIFFLio/blueflower/stapel2d/util/ProbabilitySelector;)Linfo/flowersoft/theotown/draft/TreeDraft;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/creation/CityCreator;Lio/blueflower/stapel2d/util/OpenSimplexNoise;Ljava/util/List;IIFF)Linfo/flowersoft/theotown/draft/BiomeDraft;
    .registers 7

    .line 87
    invoke-virtual/range {p0 .. p6}, Linfo/flowersoft/theotown/creation/CityCreator;->pickBiome(Lio/blueflower/stapel2d/util/OpenSimplexNoise;Ljava/util/List;IIFF)Linfo/flowersoft/theotown/draft/BiomeDraft;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/creation/CityCreator;)Linfo/flowersoft/theotown/draft/GroundDraft;
    .registers 1

    .line 87
    iget-object p0, p0, Linfo/flowersoft/theotown/creation/CityCreator;->templateGround:Linfo/flowersoft/theotown/draft/GroundDraft;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/creation/CityCreator;Ljava/util/List;Lio/blueflower/stapel2d/util/OpenSimplexNoise;Linfo/flowersoft/theotown/draft/BiomeDraft;IIFFLio/blueflower/stapel2d/util/ProbabilitySelector;)Linfo/flowersoft/theotown/draft/GroundDraft;
    .registers 9

    .line 87
    invoke-virtual/range {p0 .. p8}, Linfo/flowersoft/theotown/creation/CityCreator;->pickGround(Ljava/util/List;Lio/blueflower/stapel2d/util/OpenSimplexNoise;Linfo/flowersoft/theotown/draft/BiomeDraft;IIFFLio/blueflower/stapel2d/util/ProbabilitySelector;)Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object p0

    return-object p0
.end method

.method public static collectAvailableBiomes(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            ">;"
        }
    .end annotation

    .line 1377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1378
    :goto_6
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->BIOMES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 1379
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->BIOMES:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BiomeDraft;

    .line 1380
    iget-boolean v3, v2, Linfo/flowersoft/theotown/draft/BiomeDraft;->spawnable:Z

    if-eqz v3, :cond_27

    if-eqz p0, :cond_24

    iget-object v3, v2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    :cond_24
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2a
    return-object v0
.end method

.method public static smoothRivers([FII)V
    .registers 17

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_58

    const/4 v1, 0x1

    move v2, v1

    :goto_6
    add-int/lit8 v3, p2, -0x1

    if-ge v2, v3, :cond_55

    move v3, v1

    :goto_b
    add-int/lit8 v4, p1, -0x1

    if-ge v3, v4, :cond_52

    add-int/lit8 v4, v3, -0x1

    add-int/lit8 v5, v2, -0x1

    mul-int/2addr v5, p1

    add-int v6, v4, v5

    .line 1361
    aget v6, p0, v6

    add-int v7, v3, v5

    .line 1362
    aget v7, p0, v7

    add-int/lit8 v8, v3, 0x1

    add-int/2addr v5, v8

    .line 1363
    aget v5, p0, v5

    mul-int v9, v2, p1

    add-int v10, v4, v9

    .line 1364
    aget v10, p0, v10

    add-int v11, v3, v9

    .line 1365
    aget v12, p0, v11

    add-int/2addr v9, v8

    .line 1366
    aget v9, p0, v9

    add-int/lit8 v13, v2, 0x1

    mul-int/2addr v13, p1

    add-int/2addr v4, v13

    .line 1367
    aget v4, p0, v4

    add-int/2addr v3, v13

    .line 1368
    aget v3, p0, v3

    add-int/2addr v13, v8

    .line 1369
    aget v13, p0, v13

    add-float/2addr v6, v5

    add-float/2addr v6, v4

    add-float/2addr v6, v13

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v6, v4

    add-float/2addr v7, v10

    add-float/2addr v7, v9

    add-float/2addr v7, v3

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v12, v3

    add-float/2addr v6, v12

    .line 1370
    aput v6, p0, v11

    move v3, v8

    goto :goto_b

    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_58
    return-void
.end method


# virtual methods
.method public final addRiver(I[FIIFJIIIIZLio/blueflower/stapel2d/util/IntValueProperty;)V
    .registers 41

    move/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p13

    .line 1245
    new-instance v4, Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    move-wide/from16 v5, p6

    invoke-direct {v4, v5, v6}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;-><init>(J)V

    mul-int/lit8 v5, v1, 0xa

    if-eqz p12, :cond_3a

    move/from16 v6, p9

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    int-to-float v8, v1

    mul-float/2addr v6, v8

    .line 1250
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    move/from16 v9, p8

    int-to-float v9, v9

    div-float/2addr v9, v8

    mul-float/2addr v9, v7

    .line 1251
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    move/from16 v10, p11

    int-to-float v10, v10

    div-float/2addr v10, v7

    mul-float/2addr v10, v8

    .line 1253
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    move/from16 v11, p10

    int-to-float v11, v11

    div-float/2addr v11, v7

    mul-float/2addr v11, v8

    .line 1254
    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v7

    goto :goto_47

    :cond_3a
    move/from16 v9, p8

    move/from16 v6, p9

    move/from16 v11, p10

    move/from16 v10, p11

    move v7, v9

    move v9, v6

    move v6, v7

    move v7, v10

    move v10, v11

    .line 1257
    :goto_47
    monitor-enter p13

    .line 1258
    :goto_48
    :try_start_48
    iget v8, v3, Lio/blueflower/stapel2d/util/IntValueProperty;->value:I
    :try_end_4a
    .catchall {:try_start_48 .. :try_end_4a} :catchall_50

    if-eq v8, v0, :cond_60

    .line 1260
    :try_start_4c
    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_4f
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_4f} :catch_53
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_48

    :catchall_50
    move-exception v0

    goto/16 :goto_243

    .line 1262
    :catch_53
    :try_start_53
    iget v1, v3, Lio/blueflower/stapel2d/util/IntValueProperty;->value:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v3, Lio/blueflower/stapel2d/util/IntValueProperty;->value:I

    .line 1263
    monitor-exit p13

    goto/16 :goto_23f

    .line 1266
    :cond_60
    monitor-exit p13
    :try_end_61
    .catchall {:try_start_53 .. :try_end_61} :catchall_50

    .line 1272
    new-array v8, v5, [F

    .line 1273
    new-array v11, v5, [F

    const v12, 0x3ddb22d1    # 0.107f

    sub-float v12, p5, v12

    const v13, 0x3c23d70a    # 0.01f

    int-to-float v14, v0

    mul-float/2addr v14, v13

    sub-float/2addr v12, v14

    const/4 v13, -0x1

    const v15, 0x3a83126f    # 0.001f

    move/from16 p7, v7

    move-object/from16 p8, v8

    move/from16 p9, v10

    move-object/from16 p10, v11

    move/from16 p11, v15

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, v1

    move v8, v2

    move v15, v13

    :goto_84
    const/high16 v16, 0x3f800000    # 1.0f

    if-ge v0, v5, :cond_184

    int-to-float v14, v0

    move/from16 v17, v0

    add-int/lit8 v0, v5, -0x1

    int-to-float v0, v0

    div-float/2addr v14, v0

    int-to-float v0, v6

    move/from16 v18, v0

    sub-int v0, p9, v6

    int-to-float v0, v0

    mul-float/2addr v0, v14

    add-float v0, v18, v0

    move/from16 v18, v0

    int-to-float v0, v9

    move/from16 v19, v0

    sub-int v0, p7, v9

    int-to-float v0, v0

    mul-float/2addr v0, v14

    add-float v0, v19, v0

    const/high16 v19, 0x3f000000    # 0.5f

    sub-float v20, v14, v19

    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v22, v0

    mul-float v0, v20, v21

    move/from16 v20, v5

    move/from16 v23, v6

    float-to-double v5, v0

    move/from16 v24, v11

    move v0, v12

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 1282
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    sub-float v5, v16, v5

    int-to-float v6, v1

    mul-float v11, v5, v6

    mul-float v12, v14, v19

    move/from16 v25, v0

    const/4 v0, 0x0

    .line 1283
    invoke-virtual {v4, v12, v0}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FF)F

    move-result v26

    mul-float v11, v11, v26

    add-float v11, v18, v11

    int-to-float v0, v2

    mul-float/2addr v5, v0

    move/from16 v18, v0

    const/high16 v0, 0x42140000    # 37.0f

    .line 1284
    invoke-virtual {v4, v12, v0}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FF)F

    move-result v0

    mul-float/2addr v5, v0

    add-float v0, v22, v5

    const v5, 0x3d4ccccd    # 0.05f

    mul-float v12, v6, v5

    mul-float/2addr v12, v14

    move/from16 v22, v5

    const/high16 v5, 0x43bf0000    # 382.0f

    .line 1285
    invoke-virtual {v4, v12, v5}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FF)F

    move-result v12

    const/high16 v26, 0x41a00000    # 20.0f

    mul-float v12, v12, v26

    add-float/2addr v11, v12

    mul-float v12, v18, v22

    mul-float/2addr v12, v14

    const/high16 v5, 0x41400000    # 12.0f

    .line 1286
    invoke-virtual {v4, v12, v5}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FF)F

    move-result v12

    mul-float v12, v12, v26

    add-float/2addr v0, v12

    mul-float v6, v6, v19

    mul-float/2addr v6, v14

    const/high16 v12, 0x43bf0000    # 382.0f

    .line 1287
    invoke-virtual {v4, v6, v12}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FF)F

    move-result v6

    mul-float v6, v6, v21

    add-float/2addr v11, v6

    mul-float v6, v18, v19

    mul-float/2addr v6, v14

    .line 1288
    invoke-virtual {v4, v6, v5}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FF)F

    move-result v5

    mul-float v5, v5, v21

    add-float/2addr v0, v5

    .line 1289
    aput v11, p8, v17

    .line 1290
    aput v0, p10, v17

    float-to-int v5, v11

    float-to-int v6, v0

    if-ltz v5, :cond_123

    if-ltz v6, :cond_123

    if-ge v5, v1, :cond_123

    if-ge v6, v2, :cond_123

    if-ne v5, v13, :cond_126

    if-eq v6, v15, :cond_123

    goto :goto_126

    :cond_123
    move/from16 v14, v24

    goto :goto_159

    .line 1295
    :cond_126
    :goto_126
    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1296
    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1297
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    move/from16 v14, v24

    .line 1298
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    mul-int v13, v6, v1

    add-int/2addr v13, v5

    .line 1300
    aget v14, p2, v13

    cmpg-float v15, v14, p5

    if-gtz v15, :cond_14c

    cmpl-float v15, v14, v25

    if-eqz v15, :cond_14c

    add-int/lit8 v5, v17, 0x1

    move v0, v5

    move v11, v12

    :goto_149
    move/from16 v5, p11

    goto :goto_18a

    :cond_14c
    move/from16 v15, v25

    .line 1305
    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    aput v14, p2, v13

    move v13, v5

    move/from16 v25, v15

    move v15, v6

    goto :goto_15a

    :goto_159
    move v12, v14

    :goto_15a
    if-lez v17, :cond_175

    add-int/lit8 v5, v17, -0x1

    .line 1311
    aget v6, p8, v5

    sub-float/2addr v11, v6

    .line 1312
    aget v5, p10, v5

    sub-float/2addr v0, v5

    mul-float/2addr v11, v11

    mul-float/2addr v0, v0

    add-float/2addr v11, v0

    float-to-double v5, v11

    .line 1315
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v0, v5

    move/from16 v5, p11

    .line 1313
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v5, v0

    goto :goto_177

    :cond_175
    move/from16 v5, p11

    :goto_177
    add-int/lit8 v0, v17, 0x1

    move/from16 p11, v5

    move v11, v12

    move/from16 v5, v20

    move/from16 v6, v23

    move/from16 v12, v25

    goto/16 :goto_84

    :cond_184
    move/from16 v20, v5

    move v14, v11

    move/from16 v0, v20

    goto :goto_149

    .line 1319
    :goto_18a
    monitor-enter p13

    add-int/lit8 v6, p1, 0x1

    .line 1320
    :try_start_18d
    iput v6, v3, Lio/blueflower/stapel2d/util/IntValueProperty;->value:I

    .line 1321
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1322
    monitor-exit p13
    :try_end_193
    .catchall {:try_start_18d .. :try_end_193} :catchall_240

    add-int/lit8 v7, v7, -0x1

    const/high16 v3, 0x41800000    # 16.0f

    float-to-int v6, v3

    sub-int/2addr v7, v6

    const/4 v9, 0x0

    .line 1325
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v6

    .line 1326
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v10, v6

    add-int/lit8 v12, v1, -0x1

    .line 1327
    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int/lit8 v11, v11, 0x1

    add-int/2addr v11, v6

    add-int/lit8 v2, v2, -0x1

    .line 1328
    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_1b7
    if-gt v8, v2, :cond_23f

    move v6, v7

    :goto_1ba
    if-gt v6, v10, :cond_239

    const/high16 v11, 0x7f800000    # Float.POSITIVE_INFINITY

    move v12, v9

    const/4 v13, 0x0

    :goto_1c0
    if-ge v12, v0, :cond_1f5

    .line 1336
    aget v14, p8, v12

    int-to-float v15, v6

    sub-float/2addr v14, v15

    .line 1337
    aget v15, p10, v12

    move/from16 p1, v3

    int-to-float v3, v8

    sub-float/2addr v15, v3

    mul-float/2addr v14, v14

    mul-float/2addr v15, v15

    add-float/2addr v14, v15

    cmpg-float v3, v14, v11

    if-gez v3, :cond_1da

    int-to-float v3, v12

    add-int/lit8 v11, v0, -0x1

    int-to-float v11, v11

    div-float v13, v3, v11

    move v11, v14

    :cond_1da
    const/high16 v3, 0x43800000    # 256.0f

    cmpl-float v3, v14, v3

    if-lez v3, :cond_1f0

    float-to-double v14, v14

    .line 1344
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v3, v14

    sub-float v3, v3, p1

    div-float/2addr v3, v5

    float-to-double v14, v3

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v3, v14

    add-int/2addr v12, v3

    :cond_1f0
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, p1

    goto :goto_1c0

    :cond_1f5
    move/from16 p1, v3

    const v3, 0x3ccccccd    # 0.025f

    int-to-float v12, v1

    mul-float/2addr v12, v3

    mul-float/2addr v12, v13

    const/high16 v3, -0x3f200000    # -7.0f

    .line 1347
    invoke-virtual {v4, v12, v3}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FF)F

    move-result v13

    const/high16 v14, 0x40a00000    # 5.0f

    mul-float/2addr v13, v14

    const/high16 v14, 0x41200000    # 10.0f

    add-float/2addr v13, v14

    const v14, 0x3e4ccccd    # 0.2f

    sub-float v14, p5, v14

    const v15, 0x3dcccccd    # 0.1f

    .line 1348
    invoke-virtual {v4, v12, v3}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FF)F

    move-result v3

    mul-float/2addr v3, v15

    sub-float/2addr v14, v3

    float-to-double v11, v11

    .line 1349
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v3, v11

    div-float v11, v3, v13

    cmpg-float v3, v3, v13

    if-gez v3, :cond_234

    mul-int v3, v8, v1

    add-int/2addr v3, v6

    sub-float v12, v16, v11

    mul-float/2addr v14, v12

    mul-float v11, v11, p5

    add-float/2addr v14, v11

    .line 1351
    aget v11, p2, v3

    invoke-static {v14, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    aput v11, p2, v3

    :cond_234
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, p1

    goto :goto_1ba

    :cond_239
    move/from16 p1, v3

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1b7

    :cond_23f
    :goto_23f
    return-void

    :catchall_240
    move-exception v0

    .line 1322
    :try_start_241
    monitor-exit p13
    :try_end_242
    .catchall {:try_start_241 .. :try_end_242} :catchall_240

    throw v0

    .line 1266
    :goto_243
    :try_start_243
    monitor-exit p13
    :try_end_244
    .catchall {:try_start_243 .. :try_end_244} :catchall_50

    throw v0
.end method

.method public final applyBiomes(Linfo/flowersoft/theotown/util/ProgressVariable;ILio/blueflower/stapel2d/util/OpenSimplexNoise;[Linfo/flowersoft/theotown/draft/BiomeDraft;Ljava/util/List;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/ProgressVariable;",
            "I",
            "Lio/blueflower/stapel2d/util/OpenSimplexNoise;",
            "[",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            ">;)V"
        }
    .end annotation

    .line 681
    new-instance p1, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier;

    invoke-direct {p1}, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier;-><init>()V

    new-instance v0, Linfo/flowersoft/theotown/creation/modifier/IslandsBiomeModifier;

    invoke-direct {v0}, Linfo/flowersoft/theotown/creation/modifier/IslandsBiomeModifier;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    :goto_13
    if-ge v3, v1, :cond_2e

    aget-object v4, v2, v3

    .line 685
    iget-object v5, p0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    iget-object v10, p0, Linfo/flowersoft/theotown/creation/CityCreator;->templateGround:Linfo/flowersoft/theotown/draft/GroundDraft;

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v10}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->bind(Linfo/flowersoft/theotown/city/Tiles;ILio/blueflower/stapel2d/util/OpenSimplexNoise;[Linfo/flowersoft/theotown/draft/BiomeDraft;Ljava/util/List;Linfo/flowersoft/theotown/draft/GroundDraft;)V

    .line 687
    invoke-virtual {v4}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 688
    invoke-virtual {v4}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->apply()V

    :cond_2c
    add-int/2addr v3, p1

    goto :goto_13

    :cond_2e
    return-void
.end method

.method public final calculateNearWater()V
    .registers 6

    .line 1233
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    move v1, v2

    .line 1235
    :goto_9
    iget-object v3, p0, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v3

    if-ge v1, v3, :cond_23

    move v3, v2

    .line 1236
    :goto_12
    iget-object v4, p0, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_20

    .line 1237
    invoke-virtual {v0, v3, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->adjustGroundWaterBorder(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_23
    return-void
.end method

.method public final calculateNormals(III)V
    .registers 13

    .line 785
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 786
    new-instance v7, Ljava/util/concurrent/CyclicBarrier;

    invoke-direct {v7, p3}, Ljava/util/concurrent/CyclicBarrier;-><init>(I)V

    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    .line 787
    div-int v4, v1, p3

    const/4 v1, 0x0

    move v3, v1

    :goto_12
    if-ge v3, p3, :cond_40

    .line 792
    new-instance v8, Ljava/lang/Thread;

    new-instance v1, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda2;

    move-object v2, p0

    move v6, p1

    move v5, p2

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/creation/CityCreator;IIIILjava/util/concurrent/CyclicBarrier;)V

    invoke-direct {v8, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 853
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 854
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Normals worker "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 855
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move p2, v5

    move p1, v6

    goto :goto_12

    .line 858
    :cond_40
    invoke-static {v0}, Linfo/flowersoft/theotown/util/Parallel;->join(Ljava/util/List;)Z

    return-void
.end method

.method public final collectBiomes(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    .line 1388
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 1389
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/BiomeDraft;

    .line 1390
    iget-boolean v4, v3, Linfo/flowersoft/theotown/draft/BiomeDraft;->spawnable:Z

    if-nez v4, :cond_14

    goto :goto_1f

    .line 1391
    :cond_14
    iget-boolean v4, v3, Linfo/flowersoft/theotown/draft/BiomeDraft;->isWater:Z

    if-eqz v4, :cond_1c

    .line 1392
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 1394
    :cond_1c
    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1f
    add-int/2addr v2, v0

    goto :goto_3

    .line 1398
    :cond_21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_b2

    :goto_2c
    move v0, p2

    goto :goto_78

    :sswitch_2e
    const-string v0, "sandonly"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto :goto_2c

    :cond_37
    const/4 v0, 0x6

    goto :goto_78

    :sswitch_39
    const-string v0, "snowonly"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_2c

    :cond_42
    const/4 v0, 0x5

    goto :goto_78

    :sswitch_44
    const-string v0, "grass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_2c

    :cond_4d
    const/4 v0, 0x4

    goto :goto_78

    :sswitch_4f
    const-string v0, "snow"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto :goto_2c

    :cond_58
    const/4 v0, 0x3

    goto :goto_78

    :sswitch_5a
    const-string v0, "sand"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_63

    goto :goto_2c

    :cond_63
    const/4 v0, 0x2

    goto :goto_78

    :sswitch_65
    const-string v1, "wateronly"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    goto :goto_2c

    :sswitch_6e
    const-string v0, "grassonly"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto :goto_2c

    :cond_77
    move v0, v1

    :cond_78
    :goto_78
    packed-switch v0, :pswitch_data_d0

    .line 1423
    const-class p2, Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/BiomeDraft;

    if-eqz p1, :cond_8f

    .line 1424
    iget-boolean p2, p1, Linfo/flowersoft/theotown/draft/BiomeDraft;->isWater:Z

    if-nez p2, :cond_8f

    .line 1425
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 1426
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8f
    return-void

    .line 1418
    :pswitch_90
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 1419
    iget-object p1, p0, Linfo/flowersoft/theotown/creation/CityCreator;->snowBiome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 1401
    :pswitch_99
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 1402
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 1406
    :pswitch_9f
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 1407
    iget-object p1, p0, Linfo/flowersoft/theotown/creation/CityCreator;->desertBiome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 1412
    :pswitch_a8
    invoke-interface {p4}, Ljava/util/List;->clear()V

    .line 1413
    iget-object p1, p0, Linfo/flowersoft/theotown/creation/CityCreator;->defaultBiome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :sswitch_data_b2
    .sparse-switch
        -0x402ee99e -> :sswitch_6e
        -0xcb77ebd -> :sswitch_65
        0x35c084 -> :sswitch_5a
        0x35f183 -> :sswitch_4f
        0x5e0c1b6 -> :sswitch_44
        0x293f97af -> :sswitch_39
        0x76cdfe30 -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_a8
        :pswitch_99
        :pswitch_9f
        :pswitch_90
        :pswitch_a8
        :pswitch_90
        :pswitch_9f
    .end packed-switch
.end method

.method public final collectSpawnableTrees(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/TreeDraft;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1457
    :goto_1
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->TREES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 1458
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->TREES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/TreeDraft;

    .line 1459
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/TreeDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    if-eqz v2, :cond_1b

    array-length v2, v2

    if-lez v2, :cond_1b

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1e
    return-void
.end method

.method public final collectTiles(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/GroundDraft;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/GroundDraft;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/GroundDraft;",
            ">;)V"
        }
    .end annotation

    const/4 p1, 0x0

    move v0, p1

    .line 1439
    :goto_2
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->WATER_TILES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 1440
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->WATER_TILES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 1441
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/GroundDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    if-eqz v2, :cond_1f

    array-length v2, v2

    if-lez v2, :cond_1f

    .line 1442
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1443
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1447
    :cond_22
    :goto_22
    sget-object p2, Linfo/flowersoft/theotown/resources/Drafts;->LAND_TILES:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_42

    .line 1448
    sget-object p2, Linfo/flowersoft/theotown/resources/Drafts;->LAND_TILES:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 1449
    iget-object v0, p2, Linfo/flowersoft/theotown/draft/GroundDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    if-eqz v0, :cond_3f

    array-length v0, v0

    if-lez v0, :cond_3f

    .line 1450
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1451
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3f
    add-int/lit8 p1, p1, 0x1

    goto :goto_22

    :cond_42
    return-void
.end method

.method public createSubCity(Ljava/lang/String;Linfo/flowersoft/theotown/creation/CityCreator$CityData;IIIILinfo/flowersoft/theotown/city/GameMode;)Linfo/flowersoft/theotown/creation/CityCreator$CityData;
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p6

    .line 152
    iget-object v4, v1, Linfo/flowersoft/theotown/creation/CityCreator$CityData;->city:Linfo/flowersoft/theotown/city/City;

    .line 153
    new-instance v5, Linfo/flowersoft/theotown/city/City;

    iget-object v6, v0, Linfo/flowersoft/theotown/creation/CityCreator;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v6

    move-object/from16 v7, p7

    invoke-direct {v5, v2, v3, v7, v6}, Linfo/flowersoft/theotown/city/City;-><init>(IILinfo/flowersoft/theotown/city/GameMode;Lio/blueflower/stapel2d/gamestack/Translator;)V

    iput-object v5, v0, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    .line 154
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v5

    iput-object v5, v0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    mul-int v5, v2, v3

    .line 156
    new-array v5, v5, [Linfo/flowersoft/theotown/draft/BiomeDraft;

    .line 158
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_29
    if-ge v8, v3, :cond_8e

    move v9, v7

    :goto_2c
    if-ge v9, v2, :cond_8b

    add-int v10, p3, v9

    add-int v11, p4, v8

    .line 165
    invoke-virtual {v6, v10, v11}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v12

    .line 166
    new-instance v13, Linfo/flowersoft/theotown/city/objects/Ground;

    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v14

    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Ground;->getFrame()I

    move-result v15

    invoke-direct {v13, v14, v15}, Linfo/flowersoft/theotown/city/objects/Ground;-><init>(Linfo/flowersoft/theotown/draft/GroundDraft;I)V

    .line 167
    invoke-virtual {v13, v12}, Linfo/flowersoft/theotown/city/objects/Ground;->copyFrom(Linfo/flowersoft/theotown/city/objects/Ground;)V

    .line 168
    iget-object v12, v0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v12, v9, v8, v13}, Linfo/flowersoft/theotown/city/Tiles;->setGround(IILinfo/flowersoft/theotown/city/objects/Ground;)V

    .line 171
    invoke-virtual {v6, v10, v11}, Linfo/flowersoft/theotown/city/Tiles;->getGroundDraft2(II)Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v12

    if-eqz v12, :cond_5f

    .line 173
    iget-object v13, v0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v13, v9, v8, v12}, Linfo/flowersoft/theotown/city/Tiles;->setGroundDraft2(IILinfo/flowersoft/theotown/draft/GroundDraft;)V

    .line 174
    iget-object v12, v0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, v10, v11}, Linfo/flowersoft/theotown/city/Tiles;->getGroundFrame2(II)I

    move-result v13

    invoke-virtual {v12, v9, v8, v13}, Linfo/flowersoft/theotown/city/Tiles;->setGroundFrame2(III)V

    .line 178
    :cond_5f
    invoke-virtual {v6, v10, v11}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v12

    if-eqz v12, :cond_77

    .line 180
    iget-object v13, v0, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    new-instance v14, Linfo/flowersoft/theotown/city/objects/Tree;

    .line 181
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Tree;->getDraft()Linfo/flowersoft/theotown/draft/TreeDraft;

    move-result-object v15

    .line 182
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Tree;->getFrame()I

    move-result v12

    invoke-direct {v14, v15, v12, v9, v8}, Linfo/flowersoft/theotown/city/objects/Tree;-><init>(Linfo/flowersoft/theotown/draft/TreeDraft;III)V

    .line 180
    invoke-virtual {v13, v9, v8, v14}, Linfo/flowersoft/theotown/city/Tiles;->setTree(IILinfo/flowersoft/theotown/city/objects/Tree;)V

    .line 186
    :cond_77
    iget-object v12, v0, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v12

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    mul-int v11, v8, v2

    add-int/2addr v11, v9

    .line 188
    iget-object v12, v1, Linfo/flowersoft/theotown/creation/CityCreator$CityData;->biomeMap:[Linfo/flowersoft/theotown/draft/BiomeDraft;

    aget-object v10, v12, v10

    aput-object v10, v5, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_2c

    :cond_8b
    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    .line 192
    :cond_8e
    invoke-virtual {v0}, Linfo/flowersoft/theotown/creation/CityCreator;->calculateNearWater()V

    .line 193
    iget-object v2, v0, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/City;->setName(Ljava/lang/String;)V

    .line 194
    iget-object v2, v0, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v3, 0x10

    invoke-static {v3}, Linfo/flowersoft/theotown/util/IdGenerator;->generateId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/City;->setId(Ljava/lang/String;)V

    .line 195
    iget-object v2, v0, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    const-string v3, ""

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/City;->setAuthor(Ljava/lang/String;)V

    .line 196
    iget-object v2, v0, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getSeed()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/City;->setSeed(Ljava/lang/String;)V

    .line 197
    iget-object v2, v0, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v2

    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v3

    iput-wide v3, v2, Linfo/flowersoft/theotown/city/CityInfo;->creationTime:J

    .line 199
    new-instance v2, Linfo/flowersoft/theotown/creation/CityCreator$CityData;

    iget-object v3, v0, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v1, v1, Linfo/flowersoft/theotown/creation/CityCreator$CityData;->allBiomes:Ljava/util/List;

    invoke-direct {v2, v3, v5, v1}, Linfo/flowersoft/theotown/creation/CityCreator$CityData;-><init>(Linfo/flowersoft/theotown/city/City;[Linfo/flowersoft/theotown/draft/BiomeDraft;Ljava/util/List;)V

    return-object v2
.end method

.method public final evalNoise(Lio/blueflower/stapel2d/util/OpenSimplexNoise;FFFF)F
    .registers 9

    mul-float v0, p4, p2

    mul-float v1, p4, p3

    const/high16 v2, 0x42140000    # 37.0f

    mul-float/2addr p5, v2

    add-float/2addr v1, p5

    .line 962
    invoke-virtual {p1, v0, v1}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FF)F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p4

    mul-float v2, v1, p2

    mul-float/2addr v1, p3

    add-float/2addr v1, p5

    .line 963
    invoke-virtual {p1, v2, v1}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FF)F

    move-result v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr p4, v1

    mul-float/2addr p2, p4

    mul-float/2addr p4, p3

    add-float/2addr p4, p5

    .line 964
    invoke-virtual {p1, p2, p4}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FF)F

    move-result p1

    const p2, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    return v0
.end method

.method public final evaluateSpawnDefinition(Lio/blueflower/stapel2d/util/OpenSimplexNoise;Linfo/flowersoft/theotown/draft/GroundDraft;IIFFFFILinfo/flowersoft/theotown/draft/SpawnDefinition;)F
    .registers 23

    move-object/from16 v0, p10

    .line 996
    iget-object v1, v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->allowedGroundSet:Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    if-eqz p2, :cond_10

    .line 998
    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    return v2

    :cond_10
    int-to-float p2, p3

    .line 1002
    iget v1, v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->noiseVariance:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v1, v3

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v6, p7, v5

    mul-float/2addr v4, v6

    add-float v8, p2, v4

    move/from16 p2, p4

    int-to-float p2, p2

    mul-float/2addr v1, v3

    sub-float v3, p8, v5

    mul-float/2addr v1, v3

    add-float v9, p2, v1

    const p2, 0x3ca3d70a    # 0.02f

    .line 1004
    iget v1, v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->noiseScale:F

    div-float v10, p2, v1

    .line 1005
    iget p2, v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->noiseSeed:I

    if-ltz p2, :cond_33

    goto :goto_35

    :cond_33
    add-int/lit8 p2, p9, 0x7

    .line 1007
    :goto_35
    iget v1, v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->noiseFactor:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_46

    int-to-float v11, p2

    move-object v6, p0

    move-object v7, p1

    .line 1008
    invoke-virtual/range {v6 .. v11}, Linfo/flowersoft/theotown/creation/CityCreator;->evalNoise(Lio/blueflower/stapel2d/util/OpenSimplexNoise;FFFF)F

    move-result p1

    iget p2, v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->noiseOffset:F

    add-float/2addr p1, p2

    goto :goto_47

    :cond_46
    move p1, v2

    .line 1011
    :goto_47
    iget p2, v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->heightCenter:F

    sub-float p2, p5, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v1, v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->heightRadius:F

    div-float/2addr p2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p2, v1, p2

    iget v3, v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->heightOffset:F

    add-float/2addr p2, v3

    .line 1013
    iget v3, v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->derivFactor:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_6f

    .line 1014
    iget v2, v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->derivCenter:F

    sub-float v2, p6, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->derivRadius:F

    div-float/2addr v2, v3

    sub-float v2, v1, v2

    iget v3, v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->derivOffset:F

    add-float/2addr v2, v3

    .line 1017
    :cond_6f
    iget v3, v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->noiseFactor:F

    mul-float/2addr v3, p1

    iget p1, v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->heightFactor:F

    mul-float/2addr p1, p2

    add-float/2addr v3, p1

    iget p1, v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->derivFactor:F

    mul-float/2addr p1, v2

    add-float/2addr v3, p1

    iget p1, v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->offset:F

    add-float/2addr v3, p1

    sub-float/2addr v3, v1

    .line 1022
    iget p1, v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->coverage:F

    const p2, 0x3c23d70a    # 0.01f

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr v3, p1

    add-float/2addr v3, v1

    .line 1023
    iget p1, v0, Linfo/flowersoft/theotown/draft/SpawnDefinition;->precedence:F

    mul-float/2addr v3, p1

    return v3
.end method

.method public final evaluateSpawnInBiomeArray([Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;Lio/blueflower/stapel2d/util/OpenSimplexNoise;Linfo/flowersoft/theotown/draft/BiomeDraft;Linfo/flowersoft/theotown/draft/GroundDraft;IIFFFFI)F
    .registers 30

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    .line 950
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_36

    .line 951
    aget-object v4, v0, v2

    .line 952
    iget-object v5, v4, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;->biome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    move-object/from16 v6, p3

    if-eq v5, v6, :cond_12

    if-nez v5, :cond_33

    .line 953
    :cond_12
    iget-object v4, v4, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;->spawnDefinition:Linfo/flowersoft/theotown/draft/SpawnDefinition;

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v17, v4

    invoke-virtual/range {v7 .. v17}, Linfo/flowersoft/theotown/creation/CityCreator;->evaluateSpawnDefinition(Lio/blueflower/stapel2d/util/OpenSimplexNoise;Linfo/flowersoft/theotown/draft/GroundDraft;IIFFFFILinfo/flowersoft/theotown/draft/SpawnDefinition;)F

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v3, v4

    :cond_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_36
    return v3
.end method

.method public declared-synchronized generate(Ljava/lang/String;IILinfo/flowersoft/theotown/city/GameMode;Ljava/lang/String;Ljava/lang/String;ZZZILinfo/flowersoft/theotown/util/ProgressVariable;Lio/blueflower/stapel2d/util/Setter;Ljava/util/List;Linfo/flowersoft/theotown/creation/HeightMap;)Linfo/flowersoft/theotown/creation/CityCreator$CityData;
    .registers 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Linfo/flowersoft/theotown/city/GameMode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZI",
            "Linfo/flowersoft/theotown/util/ProgressVariable;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            ">;",
            "Linfo/flowersoft/theotown/creation/HeightMap;",
            ")",
            "Linfo/flowersoft/theotown/creation/CityCreator$CityData;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v0, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p11

    move-object/from16 v12, p12

    move-object/from16 v4, p14

    monitor-enter p0

    .line 221
    :try_start_11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    .line 223
    const-class v14, Linfo/flowersoft/theotown/creation/CityCreator;

    monitor-enter v14
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_5ee

    .line 224
    :try_start_18
    invoke-virtual {v13}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    const/4 v15, 0x0

    if-eqz v5, :cond_27

    monitor-exit v14
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v15

    :catchall_22
    move-exception v0

    move-object/from16 v19, v14

    goto/16 :goto_5ec

    .line 225
    :cond_27
    :try_start_27
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v8

    .line 226
    sget-object v5, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v6, "CityCreator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Use "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " workers"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v6, v10}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v6, Ljava/util/Random;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/creation/CityCreator;->getNumericalSeed(Ljava/lang/String;)I

    move-result v5

    int-to-long v10, v5

    invoke-direct {v6, v10, v11}, Ljava/util/Random;-><init>(J)V

    const/4 v5, 0x0

    .line 230
    invoke-virtual {v9, v5}, Linfo/flowersoft/theotown/util/ProgressVariable;->setProgress(F)V

    .line 231
    const-string v10, "Prepare"

    invoke-interface {v12, v10}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 233
    invoke-virtual {v13}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v10

    if-eqz v10, :cond_68

    .line 234
    monitor-exit v14
    :try_end_66
    .catchall {:try_start_27 .. :try_end_66} :catchall_22

    monitor-exit p0

    return-object v15

    .line 239
    :cond_68
    :try_start_68
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 240
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v15

    move-object/from16 v15, p13

    .line 241
    invoke-virtual {v1, v7, v15, v10, v11}, Linfo/flowersoft/theotown/creation/CityCreator;->collectBiomes(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 243
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 244
    invoke-interface {v15, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 245
    invoke-interface {v15, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_84
    .catchall {:try_start_68 .. :try_end_84} :catchall_22

    move/from16 v17, v5

    move/from16 v18, v8

    move/from16 v5, p10

    int-to-double v8, v5

    move-object/from16 v20, v13

    move-object/from16 v19, v14

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    .line 251
    :try_start_91
    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v5, v8

    if-eqz v4, :cond_f1

    mul-int v14, v2, v3

    .line 256
    new-array v14, v14, [F

    const/high16 p10, 0x447a0000    # 1000.0f

    const/4 v8, 0x0

    :goto_9f
    if-ge v8, v3, :cond_e9

    const/16 p13, 0x1

    const/4 v9, 0x0

    :goto_a4
    if-ge v9, v2, :cond_e2

    .line 260
    invoke-virtual {v4}, Linfo/flowersoft/theotown/creation/HeightMap;->getWidth()I

    move-result v21

    add-int/lit8 v13, v21, -0x1

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual {v4}, Linfo/flowersoft/theotown/creation/HeightMap;->getHeight()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v23, v5

    sub-int v5, v21, v8

    move/from16 v21, v8

    const/4 v8, 0x0

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v13, v5}, Linfo/flowersoft/theotown/creation/HeightMap;->getValue(II)F

    move-result v5

    const v8, 0x3d23d70a    # 0.04f

    sub-float/2addr v5, v8

    cmpl-float v8, v5, v17

    const/high16 v13, 0x40400000    # 3.0f

    if-lez v8, :cond_d0

    mul-float/2addr v5, v13

    :cond_d0
    mul-float/2addr v5, v13

    mul-float v5, v5, v23

    mul-int v8, v21, v2

    add-int/2addr v8, v9

    .line 264
    aput v5, v14, v8

    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v21

    move/from16 v5, v23

    goto :goto_a4

    :catchall_df
    move-exception v0

    goto/16 :goto_5ec

    :cond_e2
    move/from16 v23, v5

    move/from16 v21, v8

    add-int/lit8 v8, v21, 0x1

    goto :goto_9f

    :cond_e9
    const/16 p13, 0x1

    move-object/from16 v26, v6

    move/from16 v5, v17

    goto/16 :goto_1e1

    :cond_f1
    move/from16 v23, v5

    const/high16 p10, 0x447a0000    # 1000.0f

    const/16 p13, 0x1

    .line 270
    new-instance v4, Linfo/flowersoft/theotown/terrain/FancyTerrainGenerator;

    invoke-direct {v4, v2, v3}, Linfo/flowersoft/theotown/terrain/FancyTerrainGenerator;-><init>(II)V

    .line 271
    invoke-virtual {v4, v6}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->generate(Ljava/util/Random;)V

    .line 272
    invoke-virtual {v4}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getMinValue()F

    move-result v5

    neg-float v5, v5

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->add(F)V

    .line 273
    invoke-virtual {v4}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->normalize()V

    .line 274
    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v5

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v5, v8

    const/high16 v8, 0x41800000    # 16.0f

    div-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v5, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v5, v8

    add-float/2addr v5, v8

    .line 275
    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->multiply(F)V

    .line 277
    invoke-virtual {v4}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getValues()[F

    move-result-object v5

    const v8, 0x7f7fffff    # Float.MAX_VALUE

    const v9, -0x800001

    const/4 v13, 0x0

    :goto_12f
    if-ge v13, v3, :cond_16f

    const/4 v14, 0x0

    :goto_132
    if-ge v14, v2, :cond_164

    mul-int v24, v13, v2

    add-int v24, v14, v24

    .line 284
    aget v25, v5, v24

    sub-float v2, v25, p10

    float-to-double v2, v2

    move-object/from16 p14, v5

    move-object/from16 v26, v6

    const-wide v5, 0x3ff199999999999aL    # 1.1

    .line 285
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    add-float v25, v25, v2

    mul-float v2, v25, v23

    .line 287
    aput v2, p14, v24

    .line 288
    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 289
    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v9

    add-int/lit8 v14, v14, 0x1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p14

    move-object/from16 v6, v26

    goto :goto_132

    :cond_164
    move-object/from16 p14, v5

    move-object/from16 v26, v6

    add-int/lit8 v13, v13, 0x1

    move/from16 v2, p2

    move/from16 v3, p3

    goto :goto_12f

    :cond_16f
    move-object/from16 p14, v5

    move-object/from16 v26, v6

    .line 293
    const-string v2, "wateronly"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_180

    add-float/2addr v9, v3

    :goto_17e
    move v5, v9

    goto :goto_1c6

    .line 296
    :cond_180
    const-string v2, "sandonly"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c3

    const-string v2, "grassonly"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c3

    const-string v2, "snowonly"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_199

    goto :goto_1c3

    .line 301
    :cond_199
    invoke-virtual/range {v26 .. v26}, Ljava/util/Random;->nextFloat()F

    move-result v2

    float-to-double v5, v2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v2, v5

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v2, v5

    const v5, 0x3d4ccccd    # 0.05f

    sub-float/2addr v2, v5

    move/from16 v5, v17

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 302
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1ba

    goto :goto_1bb

    :cond_1ba
    move v3, v2

    :goto_1bb
    const v2, 0x3ca3d70a    # 0.02f

    .line 305
    invoke-virtual {v4, v3, v2}, Linfo/flowersoft/theotown/terrain/TerrainGenerator;->getNiveau(FF)F

    move-result v9

    goto :goto_17e

    :cond_1c3
    :goto_1c3
    sub-float v9, v8, v3

    goto :goto_17e

    :goto_1c6
    if-eqz p9, :cond_1da

    .line 309
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1da

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p14

    move-object/from16 v6, v26

    .line 310
    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/creation/CityCreator;->generateRivers(II[FFLjava/util/Random;)V

    goto :goto_1e0

    :cond_1da
    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p14

    :goto_1e0
    move-object v14, v4

    .line 315
    :goto_1e1
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1ec

    iget-object v4, v1, Linfo/flowersoft/theotown/creation/CityCreator;->defaultWater:Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_1ec
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f7

    iget-object v4, v1, Linfo/flowersoft/theotown/creation/CityCreator;->defaultBiome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_1f7
    iget-object v4, v1, Linfo/flowersoft/theotown/creation/CityCreator;->defaultWater:Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-interface {v15, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_204

    iget-object v4, v1, Linfo/flowersoft/theotown/creation/CityCreator;->defaultWater:Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_204
    iget-object v4, v1, Linfo/flowersoft/theotown/creation/CityCreator;->defaultBiome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-interface {v15, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_211

    iget-object v4, v1, Linfo/flowersoft/theotown/creation/CityCreator;->defaultBiome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_211
    const/4 v4, 0x0

    .line 320
    :goto_212
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_223

    .line 321
    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/BiomeDraft;

    iput v4, v6, Linfo/flowersoft/theotown/draft/BiomeDraft;->tempIndex:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_212

    .line 324
    :cond_223
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 325
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 326
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 327
    invoke-virtual {v1, v7, v9, v13, v4}, Linfo/flowersoft/theotown/creation/CityCreator;->collectTiles(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 329
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 330
    invoke-virtual {v1, v6}, Linfo/flowersoft/theotown/creation/CityCreator;->collectSpawnableTrees(Ljava/util/List;)V

    .line 331
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v7

    new-array v8, v7, [Ljava/util/List;

    move/from16 p9, v5

    const/4 v5, 0x0

    :goto_246
    if-ge v5, v7, :cond_28e

    move/from16 p6, v7

    .line 333
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 334
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v21, v5

    move-object/from16 v5, v17

    check-cast v5, Linfo/flowersoft/theotown/draft/BiomeDraft;

    move-object/from16 v17, v8

    move-object/from16 v22, v10

    const/4 v8, 0x0

    .line 336
    :goto_25e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_27f

    .line 337
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Linfo/flowersoft/theotown/draft/TreeDraft;

    move-object/from16 p14, v6

    .line 338
    iget-object v6, v10, Linfo/flowersoft/theotown/draft/TreeDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    move/from16 v23, v8

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v5, v8}, Linfo/flowersoft/theotown/creation/CityCreator;->spawnInBiomeArrayIndexOf([Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;Linfo/flowersoft/theotown/draft/BiomeDraft;I)I

    move-result v6

    if-ltz v6, :cond_27a

    .line 339
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_27a
    add-int/lit8 v8, v23, 0x1

    move-object/from16 v6, p14

    goto :goto_25e

    :cond_27f
    move-object/from16 p14, v6

    .line 343
    aput-object v7, v17, v21

    add-int/lit8 v5, v21, 0x1

    move/from16 v7, p6

    move-object/from16 v6, p14

    move-object/from16 v8, v17

    move-object/from16 v10, v22

    goto :goto_246

    :cond_28e
    move-object/from16 p14, v6

    move-object/from16 v17, v8

    move-object/from16 v22, v10

    .line 346
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    new-array v10, v5, [Ljava/util/List;

    const/4 v6, 0x0

    :goto_29b
    if-ge v6, v5, :cond_2d9

    .line 348
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 349
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/draft/BiomeDraft;

    move/from16 p6, v5

    move/from16 v21, v6

    const/4 v5, 0x0

    .line 351
    :goto_2ad
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2ce

    .line 352
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/GroundDraft;

    move-object/from16 v23, v4

    .line 353
    iget-object v4, v6, Linfo/flowersoft/theotown/draft/GroundDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    move/from16 v24, v5

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v8, v5}, Linfo/flowersoft/theotown/creation/CityCreator;->spawnInBiomeArrayIndexOf([Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;Linfo/flowersoft/theotown/draft/BiomeDraft;I)I

    move-result v4

    if-ltz v4, :cond_2c9

    .line 354
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c9
    add-int/lit8 v5, v24, 0x1

    move-object/from16 v4, v23

    goto :goto_2ad

    :cond_2ce
    move-object/from16 v23, v4

    .line 358
    aput-object v7, v10, v21

    add-int/lit8 v6, v21, 0x1

    move/from16 v5, p6

    move-object/from16 v4, v23

    goto :goto_29b

    :cond_2d9
    mul-int v4, v2, v3

    .line 361
    new-array v4, v4, [Linfo/flowersoft/theotown/draft/BiomeDraft;

    .line 364
    new-instance v5, Linfo/flowersoft/theotown/city/City;

    iget-object v6, v1, Linfo/flowersoft/theotown/creation/CityCreator;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v6

    move-object/from16 v7, p4

    invoke-direct {v5, v2, v3, v7, v6}, Linfo/flowersoft/theotown/city/City;-><init>(IILinfo/flowersoft/theotown/city/GameMode;Lio/blueflower/stapel2d/gamestack/Translator;)V

    iput-object v5, v1, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    move-object/from16 v6, p1

    .line 365
    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/city/City;->setName(Ljava/lang/String;)V

    .line 366
    iget-object v5, v1, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v6, 0x10

    invoke-static {v6}, Linfo/flowersoft/theotown/util/IdGenerator;->generateId(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/city/City;->setId(Ljava/lang/String;)V

    .line 367
    iget-object v5, v1, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    const-string v6, ""

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/city/City;->setAuthor(Ljava/lang/String;)V

    .line 368
    iget-object v5, v1, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v0}, Linfo/flowersoft/theotown/city/City;->setSeed(Ljava/lang/String;)V

    .line 369
    iget-object v0, v1, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v0

    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v5

    invoke-virtual {v5}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v5

    iput-wide v5, v0, Linfo/flowersoft/theotown/city/CityInfo;->creationTime:J

    .line 370
    iget-object v0, v1, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iput-object v0, v1, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 371
    iget-object v0, v1, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getNoise()Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    move-result-object v6

    .line 373
    iget-object v0, v1, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v8, 0x0

    invoke-virtual {v1, v0, v8}, Linfo/flowersoft/theotown/creation/CityCreator;->loadScripts(Linfo/flowersoft/theotown/city/City;I)V

    move v0, v8

    :goto_32d
    if-ge v0, v3, :cond_35a

    move v5, v8

    :goto_330
    if-ge v5, v2, :cond_354

    .line 377
    new-instance v7, Linfo/flowersoft/theotown/city/objects/Ground;

    iget-object v2, v1, Linfo/flowersoft/theotown/creation/CityCreator;->templateGround:Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-direct {v7, v2, v8}, Linfo/flowersoft/theotown/city/objects/Ground;-><init>(Linfo/flowersoft/theotown/draft/GroundDraft;I)V

    .line 378
    iget-object v2, v1, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v2, v5, v0, v7}, Linfo/flowersoft/theotown/city/Tiles;->setGround(IILinfo/flowersoft/theotown/city/objects/Ground;)V

    mul-int v2, v0, p2

    add-int/2addr v2, v5

    .line 379
    aget v2, v14, v2

    sub-float v2, v2, p9

    mul-float v2, v2, p10

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-short v2, v2

    iput-short v2, v7, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    add-int/lit8 v5, v5, 0x1

    move/from16 v2, p2

    const/4 v8, 0x0

    goto :goto_330

    :cond_354
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, p2

    const/4 v8, 0x0

    goto :goto_32d

    .line 384
    :cond_35a
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_367

    const/4 v8, 0x0

    .line 385
    invoke-virtual {v1, v8}, Linfo/flowersoft/theotown/creation/CityCreator;->unloadScripts(I)V

    .line 386
    monitor-exit v19
    :try_end_365
    .catchall {:try_start_91 .. :try_end_365} :catchall_df

    monitor-exit p0

    return-object v16

    :cond_367
    move/from16 v2, p2

    move-object/from16 v0, p14

    move-object v8, v4

    move-object v5, v6

    move-object v6, v11

    move/from16 v4, v18

    move-object/from16 v7, v22

    .line 390
    :try_start_372
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/creation/CityCreator;->setBiomes(IIILio/blueflower/stapel2d/util/OpenSimplexNoise;Ljava/util/List;Ljava/util/List;[Linfo/flowersoft/theotown/draft/BiomeDraft;)Z

    move-result v6

    move v7, v2

    move-object v4, v8

    move v8, v3

    if-nez v6, :cond_382

    const/4 v2, 0x0

    .line 391
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/creation/CityCreator;->unloadScripts(I)V

    .line 392
    monitor-exit v19
    :try_end_380
    .catchall {:try_start_372 .. :try_end_380} :catchall_df

    monitor-exit p0

    return-object v16

    .line 396
    :cond_382
    :try_start_382
    const-string v2, "Apply biomes"

    invoke-interface {v12, v2}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    move-object v2, v5

    move-object v5, v4

    move-object v4, v2

    move-object/from16 v2, p11

    move-object v6, v15

    move/from16 v3, v18

    .line 397
    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/creation/CityCreator;->applyBiomes(Linfo/flowersoft/theotown/util/ProgressVariable;ILio/blueflower/stapel2d/util/OpenSimplexNoise;[Linfo/flowersoft/theotown/draft/BiomeDraft;Ljava/util/List;)V

    move-object v14, v5

    move-object v5, v4

    move-object v4, v14

    move-object v14, v6

    .line 398
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_3a3

    const/4 v2, 0x0

    .line 399
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/creation/CityCreator;->unloadScripts(I)V

    .line 400
    monitor-exit v19
    :try_end_3a1
    .catchall {:try_start_382 .. :try_end_3a1} :catchall_df

    monitor-exit p0

    return-object v16

    .line 404
    :cond_3a3
    :try_start_3a3
    const-string v2, "Apply normals"

    invoke-interface {v12, v2}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 405
    invoke-virtual {v1, v7, v8, v3}, Linfo/flowersoft/theotown/creation/CityCreator;->calculateNormals(III)V

    .line 406
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_3b8

    const/4 v2, 0x0

    .line 407
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/creation/CityCreator;->unloadScripts(I)V

    .line 408
    monitor-exit v19
    :try_end_3b6
    .catchall {:try_start_3a3 .. :try_end_3b6} :catchall_df

    monitor-exit p0

    return-object v16

    .line 412
    :cond_3b8
    :try_start_3b8
    const-string v2, "Spawn ground"

    invoke-interface {v12, v2}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    const/4 v15, 0x0

    .line 415
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/GroundDraft;

    move-object v9, v5

    move v5, v3

    move v3, v8

    move-object v8, v10

    move-object v10, v6

    move-object v6, v9

    move/from16 v13, p13

    move-object v9, v2

    move v2, v7

    move-object/from16 v11, v26

    move-object v7, v4

    move-object/from16 v4, p11

    .line 413
    invoke-virtual/range {v1 .. v11}, Linfo/flowersoft/theotown/creation/CityCreator;->setFancyGround(IILinfo/flowersoft/theotown/util/ProgressVariable;ILio/blueflower/stapel2d/util/OpenSimplexNoise;[Linfo/flowersoft/theotown/draft/BiomeDraft;[Ljava/util/List;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Ljava/util/Random;)Z

    move-result v8

    move v9, v3

    move-object v2, v4

    move v10, v5

    move-object v5, v6

    move-object v4, v7

    move-object/from16 v26, v11

    if-nez v8, :cond_3ec

    .line 417
    invoke-virtual {v1, v15}, Linfo/flowersoft/theotown/creation/CityCreator;->unloadScripts(I)V

    .line 418
    monitor-exit v19
    :try_end_3ea
    .catchall {:try_start_3b8 .. :try_end_3ea} :catchall_df

    monitor-exit p0

    return-object v16

    .line 420
    :cond_3ec
    :try_start_3ec
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_3f9

    const/4 v8, 0x0

    .line 421
    invoke-virtual {v1, v8}, Linfo/flowersoft/theotown/creation/CityCreator;->unloadScripts(I)V

    .line 422
    monitor-exit v19
    :try_end_3f7
    .catchall {:try_start_3ec .. :try_end_3f7} :catchall_df

    monitor-exit p0

    return-object v16

    .line 426
    :cond_3f9
    :try_start_3f9
    const-string v3, "Near water"

    invoke-interface {v12, v3}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 427
    invoke-virtual {v1}, Linfo/flowersoft/theotown/creation/CityCreator;->calculateNearWater()V

    .line 428
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_40e

    const/4 v8, 0x0

    .line 429
    invoke-virtual {v1, v8}, Linfo/flowersoft/theotown/creation/CityCreator;->unloadScripts(I)V

    .line 430
    monitor-exit v19
    :try_end_40c
    .catchall {:try_start_3f9 .. :try_end_40c} :catchall_df

    monitor-exit p0

    return-object v16

    :cond_40e
    const v3, 0x3ecccccd    # 0.4f

    .line 434
    :try_start_411
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/ProgressVariable;->setProgress(F)V

    .line 435
    const-string v3, "Plant trees"

    invoke-interface {v12, v3}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    if-eqz p7, :cond_432

    .line 436
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_432

    .line 437
    new-instance v0, Linfo/flowersoft/theotown/creation/CityCreator$1;

    move/from16 v3, p2

    move-object v6, v5

    move-object/from16 v5, v17

    move-object/from16 v7, v26

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/creation/CityCreator$1;-><init>(Linfo/flowersoft/theotown/creation/CityCreator;Linfo/flowersoft/theotown/util/ProgressVariable;I[Linfo/flowersoft/theotown/draft/BiomeDraft;[Ljava/util/List;Lio/blueflower/stapel2d/util/OpenSimplexNoise;Ljava/util/Random;)V

    move-object v8, v4

    invoke-static {v10, v9, v0}, Linfo/flowersoft/theotown/util/Parallel;->computeParallel(IILinfo/flowersoft/theotown/util/Parallel$Worker;)Z

    goto :goto_433

    :cond_432
    move-object v8, v4

    .line 464
    :goto_433
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_440

    const/4 v5, 0x0

    .line 465
    invoke-virtual {v1, v5}, Linfo/flowersoft/theotown/creation/CityCreator;->unloadScripts(I)V

    .line 466
    monitor-exit v19
    :try_end_43e
    .catchall {:try_start_411 .. :try_end_43e} :catchall_df

    monitor-exit p0

    return-object v16

    :cond_440
    const v0, 0x3f4ccccd    # 0.8f

    .line 469
    :try_start_443
    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/util/ProgressVariable;->setProgress(F)V

    .line 470
    const-string v0, "Grow hills"

    invoke-interface {v12, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    if-eqz p8, :cond_5d9

    .line 473
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v0, v9, 0x3

    const/4 v11, 0x4

    .line 476
    div-int/2addr v0, v11

    const/16 v3, 0x40

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v0, v9, v3

    sub-int/2addr v0, v13

    .line 477
    div-int v15, v0, v3

    .line 478
    new-instance v6, Ljava/util/concurrent/CyclicBarrier;

    invoke-direct {v6, v15}, Ljava/util/concurrent/CyclicBarrier;-><init>(I)V

    const/4 v2, 0x0

    :goto_467
    if-ge v2, v15, :cond_4a0

    .line 493
    new-instance v0, Ljava/lang/Thread;

    move-object v4, v0

    new-instance v0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda0;

    move v5, v9

    move-object v9, v4

    move v4, v5

    move/from16 v7, p2

    move-object/from16 v5, p11

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/creation/CityCreator;IIILinfo/flowersoft/theotown/util/ProgressVariable;Ljava/util/concurrent/CyclicBarrier;I)V

    move-object v5, v0

    move v0, v3

    move v3, v4

    move v4, v2

    move v2, v7

    invoke-direct {v9, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 543
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 544
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CityCreator"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 545
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move v9, v3

    move v2, v4

    move v3, v0

    goto :goto_467

    :cond_4a0
    move/from16 v2, p2

    move v3, v9

    .line 547
    invoke-static {v10}, Linfo/flowersoft/theotown/util/Parallel;->join(Ljava/util/List;)Z

    .line 549
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_4b3

    const/4 v5, 0x0

    .line 550
    invoke-virtual {v1, v5}, Linfo/flowersoft/theotown/creation/CityCreator;->unloadScripts(I)V

    .line 551
    monitor-exit v19
    :try_end_4b1
    .catchall {:try_start_443 .. :try_end_4b1} :catchall_df

    monitor-exit p0

    return-object v16

    .line 555
    :cond_4b3
    :try_start_4b3
    const-string v0, "Smooth"

    invoke-interface {v12, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 556
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v4, v1, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    .line 557
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getTerrainBuilder()Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

    move-result-object v0

    const/4 v4, 0x0

    :goto_4c5
    if-ge v4, v3, :cond_5d9

    const/4 v5, 0x0

    :goto_4c8
    if-ge v5, v2, :cond_5d5

    .line 560
    iget-object v6, v1, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, v5, v4}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v6

    .line 561
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Ground;->getUpDirs()I

    move-result v7

    .line 562
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->countDirections(I)I

    move-result v9

    .line 563
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainHeights()B

    move-result v10

    if-ne v9, v13, :cond_54f

    .line 568
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v9

    add-int/2addr v9, v5

    .line 569
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v10

    add-int/2addr v10, v4

    .line 570
    iget-object v15, v1, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v15, v9, v10}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v15

    if-eqz v15, :cond_513

    iget-object v15, v1, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v15, v9, v10}, Linfo/flowersoft/theotown/city/Tiles;->getUpDirs(II)I

    move-result v9

    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v10

    if-ne v9, v10, :cond_513

    .line 572
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v6

    invoke-virtual {v0, v5, v4, v6}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->addTarget(III)V

    .line 573
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->calculate()V

    .line 574
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->isBuildable()Z

    move-result v6

    if-eqz v6, :cond_510

    .line 575
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->apply()V

    goto :goto_513

    .line 577
    :cond_510
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->clear()V

    .line 580
    :cond_513
    :goto_513
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v6

    sub-int v6, v5, v6

    .line 581
    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v9

    sub-int v9, v4, v9

    .line 582
    iget-object v10, v1, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v10, v6, v9}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v10

    if-eqz v10, :cond_5d1

    iget-object v10, v1, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v10, v6, v9}, Linfo/flowersoft/theotown/city/Tiles;->getUpDirs(II)I

    move-result v6

    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v7

    if-ne v6, v7, :cond_5d1

    .line 584
    iget-object v6, v1, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, v5, v4}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v6

    invoke-virtual {v0, v5, v4, v6}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->addTarget(III)V

    .line 585
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->calculate()V

    .line 586
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->isBuildable()Z

    move-result v6

    if-eqz v6, :cond_54a

    .line 587
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->apply()V

    goto/16 :goto_5d1

    .line 589
    :cond_54a
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->clear()V

    goto/16 :goto_5d1

    :cond_54f
    if-ne v10, v11, :cond_58e

    add-int/lit8 v6, v5, 0x1

    if-ge v6, v2, :cond_58e

    add-int/lit8 v7, v4, 0x1

    if-ge v7, v3, :cond_58e

    .line 600
    iget-object v9, v1, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v9, v6, v4}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainHeights(II)B

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_5d1

    iget-object v9, v1, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 601
    invoke-virtual {v9, v6, v7}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainHeights(II)B

    move-result v6

    if-ne v6, v13, :cond_5d1

    iget-object v6, v1, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 602
    invoke-virtual {v6, v5, v7}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainHeights(II)B

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5d1

    .line 603
    iget-object v6, v1, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, v5, v4}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v6

    invoke-virtual {v0, v5, v4, v6}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->addTarget(III)V

    .line 604
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->calculate()V

    .line 605
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->isBuildable()Z

    move-result v6

    if-eqz v6, :cond_58a

    .line 606
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->apply()V

    goto :goto_5d1

    .line 608
    :cond_58a
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->clear()V

    goto :goto_5d1

    :cond_58e
    const/16 v6, 0xb

    if-ne v10, v6, :cond_5d1

    add-int/lit8 v6, v5, 0x1

    if-ge v6, v2, :cond_5d1

    add-int/lit8 v7, v4, 0x1

    if-ge v7, v3, :cond_5d1

    .line 619
    iget-object v9, v1, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v9, v6, v4}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainHeights(II)B

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_5d1

    iget-object v9, v1, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 620
    invoke-virtual {v9, v6, v7}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainHeights(II)B

    move-result v6

    const/16 v9, 0xe

    if-ne v6, v9, :cond_5d1

    iget-object v6, v1, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 621
    invoke-virtual {v6, v5, v7}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainHeights(II)B

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_5d1

    .line 622
    iget-object v6, v1, Linfo/flowersoft/theotown/creation/CityCreator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, v5, v4}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v6

    add-int/2addr v6, v13

    invoke-virtual {v0, v5, v4, v6}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->addTarget(III)V

    .line 623
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->calculate()V

    .line 624
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->isBuildable()Z

    move-result v6

    if-eqz v6, :cond_5ce

    .line 625
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->apply()V

    goto :goto_5d1

    .line 627
    :cond_5ce
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->clear()V

    :cond_5d1
    :goto_5d1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4c8

    :cond_5d5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4c5

    :cond_5d9
    const/4 v5, 0x0

    .line 635
    invoke-virtual {v1, v5}, Linfo/flowersoft/theotown/creation/CityCreator;->unloadScripts(I)V

    .line 637
    const-string v0, "Done"

    invoke-interface {v12, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 638
    new-instance v0, Linfo/flowersoft/theotown/creation/CityCreator$CityData;

    iget-object v2, v1, Linfo/flowersoft/theotown/creation/CityCreator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v2, v8, v14}, Linfo/flowersoft/theotown/creation/CityCreator$CityData;-><init>(Linfo/flowersoft/theotown/city/City;[Linfo/flowersoft/theotown/draft/BiomeDraft;Ljava/util/List;)V

    monitor-exit v19
    :try_end_5ea
    .catchall {:try_start_4b3 .. :try_end_5ea} :catchall_df

    monitor-exit p0

    return-object v0

    .line 639
    :goto_5ec
    :try_start_5ec
    monitor-exit v19
    :try_end_5ed
    .catchall {:try_start_5ec .. :try_end_5ed} :catchall_df

    :try_start_5ed
    throw v0

    :catchall_5ee
    move-exception v0

    monitor-exit p0
    :try_end_5f0
    .catchall {:try_start_5ed .. :try_end_5f0} :catchall_5ee

    throw v0
.end method

.method public final generateRivers(II[FFLjava/util/Random;)V
    .registers 23

    move/from16 v5, p2

    move-object/from16 v15, p5

    .line 644
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 645
    new-instance v14, Lio/blueflower/stapel2d/util/IntValueProperty;

    invoke-direct {v14}, Lio/blueflower/stapel2d/util/IntValueProperty;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    add-int v1, p1, v5

    .line 647
    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x40

    if-ge v2, v1, :cond_72

    .line 649
    invoke-virtual {v15}, Ljava/util/Random;->nextLong()J

    move-result-wide v7

    .line 651
    invoke-virtual {v15}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    const/16 v3, -0x20

    if-eqz v1, :cond_26

    move v9, v3

    goto :goto_29

    :cond_26
    add-int/lit8 v4, p1, 0x1f

    move v9, v4

    :goto_29
    if-eqz v1, :cond_2d

    add-int/lit8 v3, p1, 0x1f

    :cond_2d
    move v11, v3

    .line 654
    invoke-virtual {v15, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    .line 655
    invoke-virtual {v15, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v12

    .line 656
    invoke-virtual {v15}, Ljava/util/Random;->nextBoolean()Z

    move-result v13

    .line 659
    new-instance v1, Ljava/lang/Thread;

    move-object v3, v0

    new-instance v0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;

    move/from16 v4, p1

    move/from16 v6, p4

    move-object v15, v1

    move-object/from16 v16, v3

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    invoke-direct/range {v0 .. v14}, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/creation/CityCreator;I[FIIFJIIIIZLio/blueflower/stapel2d/util/IntValueProperty;)V

    invoke-direct {v15, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 664
    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "River"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    move-object/from16 v3, v16

    .line 666
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v15, p5

    move-object v0, v3

    goto :goto_10

    :cond_72
    move/from16 v4, p1

    move-object v3, v0

    .line 668
    invoke-static {v3}, Linfo/flowersoft/theotown/util/Parallel;->join(Ljava/util/List;)Z

    move-object/from16 v3, p3

    .line 669
    invoke-static {v3, v4, v5}, Linfo/flowersoft/theotown/creation/CityCreator;->smoothRivers([FII)V

    return-void
.end method

.method public final getDummy(I)Linfo/flowersoft/theotown/city/components/CityComponent;
    .registers 3

    .line 1192
    new-instance v0, Linfo/flowersoft/theotown/creation/CityCreator$4;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/creation/CityCreator$4;-><init>(Linfo/flowersoft/theotown/creation/CityCreator;I)V

    return-object v0
.end method

.method public final getNumericalSeed(Ljava/lang/String;)I
    .registers 2

    .line 131
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    .line 133
    :catch_5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    return p1
.end method

.method public final loadScripts(Linfo/flowersoft/theotown/city/City;I)V
    .registers 12

    .line 1094
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 1095
    iget-object v1, p0, Linfo/flowersoft/theotown/creation/CityCreator;->luaLibraries:Ljava/util/List;

    new-instance v2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iget-object v3, p0, Linfo/flowersoft/theotown/creation/CityCreator;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;Ljava/lang/Runnable;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/cityfile/RegionInformation;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    iget-object p1, p0, Linfo/flowersoft/theotown/creation/CityCreator;->luaLibraries:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {v1, v7}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    iget-object p1, p0, Linfo/flowersoft/theotown/creation/CityCreator;->luaLibraries:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {v1, v7}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 1098
    :goto_2a
    iget-object v1, p0, Linfo/flowersoft/theotown/creation/CityCreator;->luaLibraries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_40

    iget-object v1, p0, Linfo/flowersoft/theotown/creation/CityCreator;->luaLibraries:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/scripting/LuaLibrary;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->loadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2a

    .line 1099
    :cond_40
    const-class p1, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->setCityName(Ljava/lang/String;)V

    .line 1100
    const-string p1, "enterCityGeneration"

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->callMethodOnce(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method

.method public final pickBiome(Lio/blueflower/stapel2d/util/OpenSimplexNoise;Ljava/util/List;IIFF)Linfo/flowersoft/theotown/draft/BiomeDraft;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/OpenSimplexNoise;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            ">;IIFF)",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 969
    invoke-static/range {p3 .. p4}, Linfo/flowersoft/theotown/util/Hashing;->hash(II)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v2, v1

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float v11, v1, v3

    shr-int/lit8 v1, v2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    div-float v12, v1, v3

    const/4 v1, 0x0

    .line 973
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BiomeDraft;

    const/4 v3, 0x0

    .line 975
    :goto_20
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4b

    .line 976
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Linfo/flowersoft/theotown/draft/BiomeDraft;

    .line 977
    iget-object v14, v15, Linfo/flowersoft/theotown/draft/BiomeDraft;->spawnDefinition:Linfo/flowersoft/theotown/draft/SpawnDefinition;

    const/4 v6, 0x0

    .line 978
    iget v13, v15, Linfo/flowersoft/theotown/draft/BiomeDraft;->tempIndex:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v14}, Linfo/flowersoft/theotown/creation/CityCreator;->evaluateSpawnDefinition(Lio/blueflower/stapel2d/util/OpenSimplexNoise;Linfo/flowersoft/theotown/draft/GroundDraft;IIFFFFILinfo/flowersoft/theotown/draft/SpawnDefinition;)F

    move-result v6

    cmpl-float v4, v6, v3

    if-lez v4, :cond_48

    move v3, v6

    move-object v2, v15

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_4b
    return-object v2
.end method

.method public final pickBuilding(Ljava/util/List;Lio/blueflower/stapel2d/util/OpenSimplexNoise;Linfo/flowersoft/theotown/draft/BiomeDraft;Linfo/flowersoft/theotown/draft/GroundDraft;IIFFLio/blueflower/stapel2d/util/ProbabilitySelector;)Linfo/flowersoft/theotown/draft/BuildingDraft;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;",
            "Lio/blueflower/stapel2d/util/OpenSimplexNoise;",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            "Linfo/flowersoft/theotown/draft/GroundDraft;",
            "IIFF",
            "Lio/blueflower/stapel2d/util/ProbabilitySelector<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;)",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_76

    .line 865
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_76

    .line 866
    :cond_c
    invoke-virtual/range {p9 .. p9}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->clear()Ljava/lang/Object;

    .line 867
    invoke-static/range {p5 .. p6}, Linfo/flowersoft/theotown/util/Hashing;->hash(II)I

    move-result v2

    const v3, -0x49adbc71

    xor-int/2addr v2, v3

    const v3, 0x7fffffff

    and-int/2addr v3, v2

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float v14, v2, v4

    shr-int/lit8 v2, v3, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float v15, v2, v4

    int-to-float v2, v3

    const/high16 v3, 0x4f000000

    div-float/2addr v2, v3

    const/4 v3, 0x0

    .line 872
    :goto_2e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5a

    .line 873
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 874
    iget-object v6, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    move-object/from16 v5, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v16, v3

    invoke-virtual/range {v5 .. v16}, Linfo/flowersoft/theotown/creation/CityCreator;->evaluateSpawnInBiomeArray([Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;Lio/blueflower/stapel2d/util/OpenSimplexNoise;Linfo/flowersoft/theotown/draft/BiomeDraft;Linfo/flowersoft/theotown/draft/GroundDraft;IIFFFFI)F

    move-result v3

    move-object/from16 v5, p9

    .line 876
    invoke-virtual {v5, v4, v3}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    add-int/lit8 v3, v16, 0x1

    goto :goto_2e

    :cond_5a
    move-object/from16 v5, p9

    .line 879
    invoke-virtual {v5}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getProbabilitySum()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_6f

    invoke-virtual {v5}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getProbabilitySum()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6f

    return-object v1

    .line 883
    :cond_6f
    invoke-virtual {v5}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    return-object v0

    :cond_76
    :goto_76
    return-object v1
.end method

.method public final pickGround(Ljava/util/List;Lio/blueflower/stapel2d/util/OpenSimplexNoise;Linfo/flowersoft/theotown/draft/BiomeDraft;IIFFLio/blueflower/stapel2d/util/ProbabilitySelector;)Linfo/flowersoft/theotown/draft/GroundDraft;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/GroundDraft;",
            ">;",
            "Lio/blueflower/stapel2d/util/OpenSimplexNoise;",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            "IIFF",
            "Lio/blueflower/stapel2d/util/ProbabilitySelector<",
            "Linfo/flowersoft/theotown/draft/GroundDraft;",
            ">;)",
            "Linfo/flowersoft/theotown/draft/GroundDraft;"
        }
    .end annotation

    .line 920
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 921
    :cond_8
    invoke-virtual/range {p8 .. p8}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->clear()Ljava/lang/Object;

    .line 923
    invoke-static/range {p4 .. p5}, Linfo/flowersoft/theotown/util/Hashing;->hash(II)I

    move-result v0

    const v1, 0x3ab39f67

    xor-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float v12, v0, v2

    shr-int/lit8 v0, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float v13, v0, v2

    const/4 v0, 0x0

    move v14, v0

    .line 927
    :goto_27
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v14, v1, :cond_60

    move-object/from16 v1, p1

    .line 928
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/GroundDraft;

    const/4 v3, 0x0

    cmpg-float v3, p6, v3

    if-gez v3, :cond_3c

    const/4 v3, 0x1

    goto :goto_3d

    :cond_3c
    move v3, v0

    .line 931
    :goto_3d
    iget-boolean v4, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    if-eq v3, v4, :cond_44

    move-object/from16 v3, p8

    goto :goto_5d

    .line 933
    :cond_44
    iget-object v4, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    const/4 v7, 0x0

    move-object v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v3 .. v14}, Linfo/flowersoft/theotown/creation/CityCreator;->evaluateSpawnInBiomeArray([Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;Lio/blueflower/stapel2d/util/OpenSimplexNoise;Linfo/flowersoft/theotown/draft/BiomeDraft;Linfo/flowersoft/theotown/draft/GroundDraft;IIFFFFI)F

    move-result v4

    move-object/from16 v3, p8

    .line 935
    invoke-virtual {v3, v2, v4}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :goto_5d
    add-int/lit8 v14, v14, 0x1

    goto :goto_27

    :cond_60
    move-object/from16 v3, p8

    .line 938
    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/GroundDraft;

    return-object v0
.end method

.method public final pickTree(Ljava/util/List;Lio/blueflower/stapel2d/util/OpenSimplexNoise;Linfo/flowersoft/theotown/draft/BiomeDraft;Linfo/flowersoft/theotown/draft/GroundDraft;IIFFLio/blueflower/stapel2d/util/ProbabilitySelector;)Linfo/flowersoft/theotown/draft/TreeDraft;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/TreeDraft;",
            ">;",
            "Lio/blueflower/stapel2d/util/OpenSimplexNoise;",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            "Linfo/flowersoft/theotown/draft/GroundDraft;",
            "IIFF",
            "Lio/blueflower/stapel2d/util/ProbabilitySelector<",
            "Linfo/flowersoft/theotown/draft/TreeDraft;",
            ">;)",
            "Linfo/flowersoft/theotown/draft/TreeDraft;"
        }
    .end annotation

    .line 891
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 892
    :cond_8
    invoke-virtual/range {p9 .. p9}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->clear()Ljava/lang/Object;

    .line 893
    invoke-static/range {p5 .. p6}, Linfo/flowersoft/theotown/util/Hashing;->hash(II)I

    move-result v0

    const v2, -0x7bd0d385

    xor-int/2addr v0, v2

    const v2, 0x7fffffff

    and-int/2addr v2, v0

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v3, 0x437f0000    # 255.0f

    div-float v13, v0, v3

    shr-int/lit8 v0, v2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float v14, v0, v3

    int-to-float v0, v2

    const/high16 v2, 0x4f000000

    div-float/2addr v0, v2

    const/4 v2, 0x0

    move v15, v2

    .line 898
    :goto_2b
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_6c

    move-object/from16 v2, p1

    .line 899
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/TreeDraft;

    const/4 v4, 0x0

    cmpg-float v5, p7, v4

    if-gez v5, :cond_45

    .line 902
    iget-boolean v5, v3, Linfo/flowersoft/theotown/draft/TreeDraft;->water:Z

    if-nez v5, :cond_45

    :goto_42
    move-object/from16 v4, p9

    goto :goto_69

    :cond_45
    cmpl-float v4, p7, v4

    if-lez v4, :cond_4e

    .line 903
    iget-boolean v4, v3, Linfo/flowersoft/theotown/draft/TreeDraft;->land:Z

    if-nez v4, :cond_4e

    goto :goto_42

    .line 905
    :cond_4e
    iget-object v5, v3, Linfo/flowersoft/theotown/draft/TreeDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    move-object/from16 v4, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-virtual/range {v4 .. v15}, Linfo/flowersoft/theotown/creation/CityCreator;->evaluateSpawnInBiomeArray([Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;Lio/blueflower/stapel2d/util/OpenSimplexNoise;Linfo/flowersoft/theotown/draft/BiomeDraft;Linfo/flowersoft/theotown/draft/GroundDraft;IIFFFFI)F

    move-result v5

    move-object/from16 v4, p9

    .line 907
    invoke-virtual {v4, v3, v5}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :goto_69
    add-int/lit8 v15, v15, 0x1

    goto :goto_2b

    :cond_6c
    move-object/from16 v4, p9

    .line 910
    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getProbabilitySum()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_81

    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getProbabilitySum()F

    move-result v2

    cmpg-float v0, v2, v0

    if-gez v0, :cond_81

    return-object v1

    .line 914
    :cond_81
    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/TreeDraft;

    return-object v0
.end method

.method public final declared-synchronized placeDecorations(Linfo/flowersoft/theotown/creation/CityCreator$CityData;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 1028
    :try_start_5
    const-class v11, Linfo/flowersoft/theotown/creation/CityCreator;

    monitor-enter v11
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_f7

    .line 1029
    :try_start_8
    iget-object v12, v0, Linfo/flowersoft/theotown/creation/CityCreator$CityData;->city:Linfo/flowersoft/theotown/city/City;

    .line 1030
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v13

    .line 1032
    iget-object v2, v0, Linfo/flowersoft/theotown/creation/CityCreator$CityData;->allBiomes:Ljava/util/List;

    .line 1033
    iget-object v0, v0, Linfo/flowersoft/theotown/creation/CityCreator$CityData;->biomeMap:[Linfo/flowersoft/theotown/draft/BiomeDraft;

    const/4 v14, 0x1

    .line 1034
    invoke-virtual {v1, v12, v14}, Linfo/flowersoft/theotown/creation/CityCreator;->loadScripts(Linfo/flowersoft/theotown/city/City;I)V

    .line 1036
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v15, v3, [Ljava/util/List;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 1039
    :goto_1f
    sget-object v6, Linfo/flowersoft/theotown/resources/Drafts;->BUILDINGS:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_7c

    .line 1040
    sget-object v6, Linfo/flowersoft/theotown/resources/Drafts;->BUILDINGS:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 1041
    iget-object v7, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    if-eqz v7, :cond_79

    array-length v7, v7

    if-nez v7, :cond_37

    goto :goto_79

    .line 1042
    :cond_37
    invoke-virtual {v6}, Linfo/flowersoft/theotown/draft/Draft;->hasRequirement()Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-virtual {v6}, Linfo/flowersoft/theotown/draft/Draft;->getRequirement()Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    move-result-object v7

    iget-object v8, v1, Linfo/flowersoft/theotown/creation/CityCreator;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v7, v12, v8}, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->isFulfilled(Linfo/flowersoft/theotown/city/City;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4d

    goto :goto_79

    :catchall_4a
    move-exception v0

    goto/16 :goto_f9

    :cond_4d
    move v7, v3

    .line 1044
    :goto_4e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_79

    .line 1045
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/draft/BiomeDraft;

    .line 1046
    iget-object v9, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->biomes:[Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;

    invoke-virtual {v1, v9, v8, v3}, Linfo/flowersoft/theotown/creation/CityCreator;->spawnInBiomeArrayIndexOf([Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;Linfo/flowersoft/theotown/draft/BiomeDraft;I)I

    move-result v9

    if-ltz v9, :cond_76

    .line 1047
    iget v9, v8, Linfo/flowersoft/theotown/draft/BiomeDraft;->tempIndex:I

    aget-object v9, v15, v9

    if-nez v9, :cond_71

    .line 1049
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1050
    iget v8, v8, Linfo/flowersoft/theotown/draft/BiomeDraft;->tempIndex:I

    aput-object v9, v15, v8

    .line 1052
    :cond_71
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    :cond_76
    add-int/lit8 v7, v7, 0x1

    goto :goto_4e

    :cond_79
    :goto_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    :cond_7c
    if-nez v5, :cond_81

    .line 1059
    monitor-exit v11
    :try_end_7f
    .catchall {:try_start_8 .. :try_end_7f} :catchall_4a

    monitor-exit p0

    return-void

    .line 1062
    :cond_81
    :try_start_81
    new-instance v10, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {v10, v2}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    .line 1063
    new-instance v2, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-direct {v2, v12, v14}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    move v4, v3

    .line 1064
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/City;->getNoise()Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    move-result-object v3

    move v7, v4

    .line 1066
    :goto_93
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v5

    if-ge v7, v5, :cond_f0

    move v6, v4

    .line 1067
    :goto_9a
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v5

    if-ge v6, v5, :cond_ea

    .line 1068
    invoke-virtual {v13, v6, v7}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v5

    if-eqz v5, :cond_a8

    move-object v14, v2

    goto :goto_e4

    .line 1073
    :cond_a8
    invoke-virtual {v13, v6, v7}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 1074
    iget-short v8, v5, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    int-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v8, v9

    .line 1075
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Ground;->getDerivativeSq()F

    move-result v9

    .line 1076
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v16

    mul-int v16, v16, v7

    add-int v16, v6, v16

    aget-object v4, v0, v16

    .line 1078
    iget v14, v4, Linfo/flowersoft/theotown/draft/BiomeDraft;->tempIndex:I

    aget-object v14, v15, v14

    .line 1080
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v5

    move-object/from16 v17, v14

    move-object v14, v2

    move-object/from16 v2, v17

    .line 1078
    invoke-virtual/range {v1 .. v10}, Linfo/flowersoft/theotown/creation/CityCreator;->pickBuilding(Ljava/util/List;Lio/blueflower/stapel2d/util/OpenSimplexNoise;Linfo/flowersoft/theotown/draft/BiomeDraft;Linfo/flowersoft/theotown/draft/GroundDraft;IIFFLio/blueflower/stapel2d/util/ProbabilitySelector;)Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v5

    if-eqz v5, :cond_e4

    .line 1082
    invoke-virtual {v14, v5, v6, v7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;II)Z

    move-result v2

    if-eqz v2, :cond_e4

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v4, v14

    .line 1083
    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/BuildingDraft;IIILvm2/LuaValue;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    .line 1084
    invoke-virtual {v14, v2, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->finishBuildings(Ljava/util/List;Lvm2/LuaValue;)V

    :cond_e4
    :goto_e4
    add-int/lit8 v6, v6, 0x1

    move-object v2, v14

    const/4 v4, 0x0

    const/4 v14, 0x1

    goto :goto_9a

    :cond_ea
    move-object v14, v2

    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    const/4 v14, 0x1

    goto :goto_93

    .line 1088
    :cond_f0
    monitor-exit v11
    :try_end_f1
    .catchall {:try_start_81 .. :try_end_f1} :catchall_4a

    const/4 v0, 0x1

    .line 1090
    :try_start_f2
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/creation/CityCreator;->unloadScripts(I)V
    :try_end_f5
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_f7

    .line 1091
    monitor-exit p0

    return-void

    :catchall_f7
    move-exception v0

    goto :goto_fb

    .line 1088
    :goto_f9
    :try_start_f9
    monitor-exit v11
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_4a

    :try_start_fa
    throw v0

    :goto_fb
    monitor-exit p0
    :try_end_fc
    .catchall {:try_start_fa .. :try_end_fc} :catchall_f7

    throw v0
.end method

.method public declared-synchronized prepareCity(Linfo/flowersoft/theotown/creation/CityCreator$CityData;Lio/blueflower/stapel2d/util/Setter;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/creation/CityCreator$CityData;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 1155
    :try_start_1
    iget-object v0, p1, Linfo/flowersoft/theotown/creation/CityCreator$CityData;->city:Linfo/flowersoft/theotown/city/City;

    .line 1156
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/DefaultDate;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1157
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultInfluence;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/components/DefaultInfluence;-><init>(II)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1158
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultPeople;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/DefaultPeople;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1159
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultDemand;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/DefaultDemand;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1160
    new-instance v1, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1161
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultTraffic;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/DefaultTraffic;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1162
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/GameMode;->getMoneyAtStart()I

    move-result v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;-><init>(I)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1163
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultPower;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/DefaultPower;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1164
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultWater;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/DefaultWater;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1165
    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1166
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultRequirement;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/DefaultRequirement;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1167
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1168
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/DefaultWeather;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1169
    new-instance v1, Linfo/flowersoft/theotown/tools/DefaultTool;

    invoke-direct {v1}, Linfo/flowersoft/theotown/tools/DefaultTool;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->setDefaultTool(Linfo/flowersoft/theotown/city/components/Tool;)V

    .line 1170
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1171
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultBuildMask;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/DefaultBuildMask;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1172
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/DefaultSoundManager;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1173
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultTransportation;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/DefaultTransportation;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1174
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/components/DefaultTSComponent;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1175
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultStatistics;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/DefaultStatistics;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1176
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultSigns;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/DefaultSigns;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1177
    new-instance v1, Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1178
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultIdleGame;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/components/DefaultIdleGame;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1179
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultNeighborhood;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/components/DefaultNeighborhood;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1180
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultScenario;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/DefaultScenario;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1181
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->setViewToCenter()V

    if-eqz p3, :cond_f5

    .line 1184
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/creation/CityCreator;->placeDecorations(Linfo/flowersoft/theotown/creation/CityCreator$CityData;)V

    .line 1185
    new-instance p1, Linfo/flowersoft/theotown/components/DefaultInfluence;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result p3

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v1

    invoke-direct {p1, p3, v1}, Linfo/flowersoft/theotown/components/DefaultInfluence;-><init>(II)V

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    goto :goto_f5

    :catchall_f3
    move-exception p1

    goto :goto_fb

    :cond_f5
    :goto_f5
    const/4 p1, 0x1

    .line 1188
    invoke-virtual {v0, p2, p1}, Linfo/flowersoft/theotown/city/City;->prepare(Lio/blueflower/stapel2d/util/Setter;Z)V
    :try_end_f9
    .catchall {:try_start_1 .. :try_end_f9} :catchall_f3

    .line 1189
    monitor-exit p0

    return-void

    :goto_fb
    :try_start_fb
    monitor-exit p0
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_f3

    throw p1
.end method

.method public prepareDummyCity(Linfo/flowersoft/theotown/city/City;)V
    .registers 5

    .line 1201
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/DefaultDate;-><init>()V

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    const/4 v0, 0x2

    .line 1202
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/creation/CityCreator;->getDummy(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    const/4 v0, 0x3

    .line 1203
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/creation/CityCreator;->getDummy(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    const/4 v0, 0x7

    .line 1204
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/creation/CityCreator;->getDummy(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    const/4 v0, 0x0

    .line 1205
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/creation/CityCreator;->getDummy(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    const/4 v1, 0x5

    .line 1206
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/creation/CityCreator;->getDummy(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    const/16 v1, 0x8

    .line 1207
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/creation/CityCreator;->getDummy(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1208
    new-instance v1, Linfo/flowersoft/theotown/creation/DummyNotificator;

    invoke-direct {v1}, Linfo/flowersoft/theotown/creation/DummyNotificator;-><init>()V

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1209
    new-instance v1, Linfo/flowersoft/theotown/creation/DummyPeople;

    invoke-direct {v1}, Linfo/flowersoft/theotown/creation/DummyPeople;-><init>()V

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1210
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultDemand;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/DefaultDemand;-><init>()V

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1211
    new-instance v1, Linfo/flowersoft/theotown/creation/DummyRequirement;

    invoke-direct {v1}, Linfo/flowersoft/theotown/creation/DummyRequirement;-><init>()V

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1212
    new-instance v1, Linfo/flowersoft/theotown/creation/DummyCatastrophe;

    invoke-direct {v1}, Linfo/flowersoft/theotown/creation/DummyCatastrophe;-><init>()V

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    const/16 v1, 0xc

    .line 1213
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/creation/CityCreator;->getDummy(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1214
    new-instance v1, Linfo/flowersoft/theotown/creation/DummyTool;

    invoke-direct {v1}, Linfo/flowersoft/theotown/creation/DummyTool;-><init>()V

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1215
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultBuildMask;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/DefaultBuildMask;-><init>()V

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1216
    new-instance v1, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/DefaultSoundManager;-><init>()V

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    const/16 v1, 0x10

    .line 1217
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/creation/CityCreator;->getDummy(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    const/16 v1, 0x16

    .line 1218
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/creation/CityCreator;->getDummy(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    const/16 v1, 0x11

    .line 1219
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/creation/CityCreator;->getDummy(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    const/16 v1, 0x12

    .line 1220
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/creation/CityCreator;->getDummy(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    const/16 v1, 0x13

    .line 1221
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/creation/CityCreator;->getDummy(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    const/16 v1, 0x14

    .line 1222
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/creation/CityCreator;->getDummy(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    const/16 v1, 0x15

    .line 1223
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/creation/CityCreator;->getDummy(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    const/16 v1, 0x17

    .line 1224
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/creation/CityCreator;->getDummy(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1225
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->setViewToCenter()V

    .line 1229
    new-instance v1, Lio/blueflower/stapel2d/util/ValueProperty;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/blueflower/stapel2d/util/ValueProperty;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v0}, Linfo/flowersoft/theotown/city/City;->prepare(Lio/blueflower/stapel2d/util/Setter;Z)V

    return-void
.end method

.method public resetCity(Linfo/flowersoft/theotown/city/City;)V
    .registers 10

    const/4 v0, 0x1

    .line 1111
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    .line 1113
    new-instance v2, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-direct {v2}, Linfo/flowersoft/theotown/components/DefaultDate;-><init>()V

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1114
    new-instance v2, Linfo/flowersoft/theotown/components/DefaultDemand;

    invoke-direct {v2}, Linfo/flowersoft/theotown/components/DefaultDemand;-><init>()V

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1115
    new-instance v2, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    invoke-direct {v2, p1}, Linfo/flowersoft/theotown/components/management/DefaultManagement;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1116
    new-instance v2, Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/GameMode;->getMoneyAtStart()I

    move-result v3

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget;-><init>(I)V

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1117
    new-instance v2, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    invoke-direct {v2, p1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1118
    new-instance v2, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    invoke-direct {v2, p1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1119
    new-instance v2, Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-direct {v2}, Linfo/flowersoft/theotown/components/DefaultWeather;-><init>()V

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1120
    new-instance v2, Linfo/flowersoft/theotown/tools/DefaultTool;

    invoke-direct {v2}, Linfo/flowersoft/theotown/tools/DefaultTool;-><init>()V

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->setDefaultTool(Linfo/flowersoft/theotown/city/components/Tool;)V

    .line 1121
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v2

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1122
    new-instance v2, Linfo/flowersoft/theotown/components/DefaultBuildMask;

    invoke-direct {v2}, Linfo/flowersoft/theotown/components/DefaultBuildMask;-><init>()V

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1123
    new-instance v2, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    invoke-direct {v2}, Linfo/flowersoft/theotown/components/DefaultSoundManager;-><init>()V

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1124
    new-instance v2, Linfo/flowersoft/theotown/components/DefaultTransportation;

    invoke-direct {v2}, Linfo/flowersoft/theotown/components/DefaultTransportation;-><init>()V

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1125
    new-instance v2, Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-direct {v2, p1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1126
    new-instance v2, Linfo/flowersoft/theotown/components/DefaultStatistics;

    invoke-direct {v2}, Linfo/flowersoft/theotown/components/DefaultStatistics;-><init>()V

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1127
    new-instance v2, Linfo/flowersoft/theotown/components/DefaultSigns;

    invoke-direct {v2}, Linfo/flowersoft/theotown/components/DefaultSigns;-><init>()V

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1128
    new-instance v2, Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-direct {v2, p1}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1129
    new-instance v2, Linfo/flowersoft/theotown/components/DefaultScenario;

    invoke-direct {v2}, Linfo/flowersoft/theotown/components/DefaultScenario;-><init>()V

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    const-wide/16 v2, 0x0

    .line 1130
    invoke-virtual {p1, v2, v3}, Linfo/flowersoft/theotown/city/City;->setLastSimulationTimestamp(J)V

    .line 1131
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->setViewToCenter()V

    const/high16 v4, 0x3f000000    # 0.5f

    .line 1132
    invoke-virtual {p1, v4}, Linfo/flowersoft/theotown/city/City;->setScale(F)V

    const/4 v4, 0x0

    .line 1133
    invoke-virtual {p1, v4}, Linfo/flowersoft/theotown/city/City;->setTargetXp(I)V

    .line 1134
    invoke-virtual {p1, v4}, Linfo/flowersoft/theotown/city/City;->setCurrentXp(I)V

    .line 1135
    invoke-virtual {p1, v4}, Linfo/flowersoft/theotown/city/City;->setRotation(I)V

    .line 1136
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v5

    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v6

    invoke-virtual {v6}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v6

    iput-wide v6, v5, Linfo/flowersoft/theotown/city/CityInfo;->creationTime:J

    .line 1137
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v5

    iput-wide v2, v5, Linfo/flowersoft/theotown/city/CityInfo;->playtimeSeconds:J

    .line 1141
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v5

    invoke-virtual {p1, v5, v2, v3}, Linfo/flowersoft/theotown/city/City;->setRank(Linfo/flowersoft/theotown/draft/RankDraft;J)V

    const/16 v2, 0x9

    .line 1143
    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultPeople;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/DefaultPeople;->reset()V

    const/4 v2, 0x7

    .line 1144
    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultTraffic;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/DefaultTraffic;->reset()V

    .line 1145
    new-instance v2, Linfo/flowersoft/theotown/components/DefaultTraffic;

    invoke-direct {v2}, Linfo/flowersoft/theotown/components/DefaultTraffic;-><init>()V

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 1147
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_102

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Building;

    neg-long v5, v0

    .line 1148
    invoke-virtual {v3, v5, v6}, Linfo/flowersoft/theotown/city/objects/Building;->applyDayTimeShift(J)V

    goto :goto_f1

    .line 1151
    :cond_102
    new-instance v0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p1, v0, v4}, Linfo/flowersoft/theotown/city/City;->prepare(Lio/blueflower/stapel2d/util/Setter;Z)V

    return-void
.end method

.method public final setBiomes(IIILio/blueflower/stapel2d/util/OpenSimplexNoise;Ljava/util/List;Ljava/util/List;[Linfo/flowersoft/theotown/draft/BiomeDraft;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lio/blueflower/stapel2d/util/OpenSimplexNoise;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            ">;[",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            ")Z"
        }
    .end annotation

    .line 702
    new-instance v0, Linfo/flowersoft/theotown/creation/CityCreator$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p4

    move-object v5, p5

    move-object v4, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/creation/CityCreator$2;-><init>(Linfo/flowersoft/theotown/creation/CityCreator;ILio/blueflower/stapel2d/util/OpenSimplexNoise;Ljava/util/List;Ljava/util/List;[Linfo/flowersoft/theotown/draft/BiomeDraft;)V

    invoke-static {p3, p2, v0}, Linfo/flowersoft/theotown/util/Parallel;->computeParallel(IILinfo/flowersoft/theotown/util/Parallel$Worker;)Z

    move-result p1

    return p1
.end method

.method public final setFancyGround(IILinfo/flowersoft/theotown/util/ProgressVariable;ILio/blueflower/stapel2d/util/OpenSimplexNoise;[Linfo/flowersoft/theotown/draft/BiomeDraft;[Ljava/util/List;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Ljava/util/Random;)Z
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Linfo/flowersoft/theotown/util/ProgressVariable;",
            "I",
            "Lio/blueflower/stapel2d/util/OpenSimplexNoise;",
            "[",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            "[",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/GroundDraft;",
            ">;",
            "Linfo/flowersoft/theotown/draft/GroundDraft;",
            "Linfo/flowersoft/theotown/draft/GroundDraft;",
            "Ljava/util/Random;",
            ")Z"
        }
    .end annotation

    .line 734
    new-instance v0, Linfo/flowersoft/theotown/creation/CityCreator$3;

    move-object v1, p0

    move v3, p1

    move-object v2, p3

    move-object v6, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v8, p8

    move-object/from16 v7, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/creation/CityCreator$3;-><init>(Linfo/flowersoft/theotown/creation/CityCreator;Linfo/flowersoft/theotown/util/ProgressVariable;I[Linfo/flowersoft/theotown/draft/BiomeDraft;[Ljava/util/List;Lio/blueflower/stapel2d/util/OpenSimplexNoise;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Ljava/util/Random;)V

    invoke-static {p4, p2, v0}, Linfo/flowersoft/theotown/util/Parallel;->computeParallel(IILinfo/flowersoft/theotown/util/Parallel$Worker;)Z

    move-result p1

    return p1
.end method

.method public final spawnInBiomeArrayIndexOf([Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;Linfo/flowersoft/theotown/draft/BiomeDraft;I)I
    .registers 6

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 776
    :cond_4
    :goto_4
    array-length v1, p1

    if-ge p3, v1, :cond_14

    .line 777
    aget-object v1, p1, p3

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/SpawnInBiomeDefinition;->biome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    if-eq v1, p2, :cond_13

    if-nez v1, :cond_10

    goto :goto_13

    :cond_10
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_13
    :goto_13
    return p3

    :cond_14
    return v0
.end method

.method public final unloadScripts(I)V
    .registers 4

    .line 1104
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 1105
    const-string v1, "leaveCityGeneration"

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->callMethodOnce(Ljava/lang/String;Lvm2/LuaValue;)V

    const/4 p1, 0x0

    .line 1106
    :goto_e
    iget-object v1, p0, Linfo/flowersoft/theotown/creation/CityCreator;->luaLibraries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_24

    iget-object v1, p0, Linfo/flowersoft/theotown/creation/CityCreator;->luaLibraries:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/scripting/LuaLibrary;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->unloadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    .line 1107
    :cond_24
    iget-object p1, p0, Linfo/flowersoft/theotown/creation/CityCreator;->luaLibraries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

###### Class info.flowersoft.theotown.creation.CityCreator.AnonymousClass1 (info.flowersoft.theotown.creation.CityCreator$1)
.class public Linfo/flowersoft/theotown/creation/CityCreator$1;
.super Ljava/lang/Object;
.source "CityCreator.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Parallel$Worker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/creation/CityCreator;->generate(Ljava/lang/String;IILinfo/flowersoft/theotown/city/GameMode;Ljava/lang/String;Ljava/lang/String;ZZZILinfo/flowersoft/theotown/util/ProgressVariable;Lio/blueflower/stapel2d/util/Setter;Ljava/util/List;Linfo/flowersoft/theotown/creation/HeightMap;)Linfo/flowersoft/theotown/creation/CityCreator$CityData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/creation/CityCreator;

.field public final synthetic val$mapBiomes:[Linfo/flowersoft/theotown/draft/BiomeDraft;

.field public final synthetic val$noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

.field public final synthetic val$progress:Linfo/flowersoft/theotown/util/ProgressVariable;

.field public final synthetic val$rnd:Ljava/util/Random;

.field public final synthetic val$treesPerBiome:[Ljava/util/List;

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/creation/CityCreator;Linfo/flowersoft/theotown/util/ProgressVariable;I[Linfo/flowersoft/theotown/draft/BiomeDraft;[Ljava/util/List;Lio/blueflower/stapel2d/util/OpenSimplexNoise;Ljava/util/Random;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 437
    iput-object p1, p0, Linfo/flowersoft/theotown/creation/CityCreator$1;->this$0:Linfo/flowersoft/theotown/creation/CityCreator;

    iput-object p2, p0, Linfo/flowersoft/theotown/creation/CityCreator$1;->val$progress:Linfo/flowersoft/theotown/util/ProgressVariable;

    iput p3, p0, Linfo/flowersoft/theotown/creation/CityCreator$1;->val$width:I

    iput-object p4, p0, Linfo/flowersoft/theotown/creation/CityCreator$1;->val$mapBiomes:[Linfo/flowersoft/theotown/draft/BiomeDraft;

    iput-object p5, p0, Linfo/flowersoft/theotown/creation/CityCreator$1;->val$treesPerBiome:[Ljava/util/List;

    iput-object p6, p0, Linfo/flowersoft/theotown/creation/CityCreator$1;->val$noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    iput-object p7, p0, Linfo/flowersoft/theotown/creation/CityCreator$1;->val$rnd:Ljava/util/Random;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public work(III)V
    .registers 14

    .line 440
    new-instance v9, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-direct {v9}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>()V

    move v6, p2

    :goto_6
    if-ge v6, p3, :cond_79

    .line 442
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    if-nez p1, :cond_79

    if-nez p2, :cond_24

    .line 443
    iget-object p1, p0, Linfo/flowersoft/theotown/creation/CityCreator$1;->val$progress:Linfo/flowersoft/theotown/util/ProgressVariable;

    const v0, 0x3e4ccccd    # 0.2f

    int-to-float v1, v6

    mul-float/2addr v1, v0

    int-to-float v0, p3

    div-float/2addr v1, v0

    const v0, 0x3ecccccd    # 0.4f

    add-float/2addr v1, v0

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/ProgressVariable;->setProgress(F)V

    :cond_24
    const/4 p1, 0x0

    move v5, p1

    .line 444
    :goto_26
    iget p1, p0, Linfo/flowersoft/theotown/creation/CityCreator$1;->val$width:I

    if-ge v5, p1, :cond_76

    .line 445
    iget-object v0, p0, Linfo/flowersoft/theotown/creation/CityCreator$1;->val$mapBiomes:[Linfo/flowersoft/theotown/draft/BiomeDraft;

    mul-int/2addr p1, v6

    add-int/2addr p1, v5

    aget-object v3, v0, p1

    .line 446
    iget-object p1, p0, Linfo/flowersoft/theotown/creation/CityCreator$1;->this$0:Linfo/flowersoft/theotown/creation/CityCreator;

    invoke-static {p1}, Linfo/flowersoft/theotown/creation/CityCreator;->access$000(Linfo/flowersoft/theotown/creation/CityCreator;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    .line 447
    iget-short v0, p1, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v7, v0, v1

    .line 448
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->getDerivativeSq()F

    move-result v8

    .line 450
    iget-object v0, p0, Linfo/flowersoft/theotown/creation/CityCreator$1;->val$treesPerBiome:[Ljava/util/List;

    iget v1, v3, Linfo/flowersoft/theotown/draft/BiomeDraft;->tempIndex:I

    aget-object v1, v0, v1

    .line 451
    iget-object v0, p0, Linfo/flowersoft/theotown/creation/CityCreator$1;->this$0:Linfo/flowersoft/theotown/creation/CityCreator;

    iget-object v2, p0, Linfo/flowersoft/theotown/creation/CityCreator$1;->val$noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    .line 453
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v4

    .line 451
    invoke-static/range {v0 .. v9}, Linfo/flowersoft/theotown/creation/CityCreator;->access$100(Linfo/flowersoft/theotown/creation/CityCreator;Ljava/util/List;Lio/blueflower/stapel2d/util/OpenSimplexNoise;Linfo/flowersoft/theotown/draft/BiomeDraft;Linfo/flowersoft/theotown/draft/GroundDraft;IIFFLio/blueflower/stapel2d/util/ProbabilitySelector;)Linfo/flowersoft/theotown/draft/TreeDraft;

    move-result-object p1

    if-eqz p1, :cond_73

    .line 456
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v0, v0

    iget v1, p1, Linfo/flowersoft/theotown/draft/TreeDraft;->framesPerTree:I

    div-int/2addr v0, v1

    .line 457
    iget-object v1, p0, Linfo/flowersoft/theotown/creation/CityCreator$1;->this$0:Linfo/flowersoft/theotown/creation/CityCreator;

    invoke-static {v1}, Linfo/flowersoft/theotown/creation/CityCreator;->access$000(Linfo/flowersoft/theotown/creation/CityCreator;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/city/objects/Tree;

    iget-object v3, p0, Linfo/flowersoft/theotown/creation/CityCreator$1;->val$rnd:Ljava/util/Random;

    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-direct {v2, p1, v0, v5, v6}, Linfo/flowersoft/theotown/city/objects/Tree;-><init>(Linfo/flowersoft/theotown/draft/TreeDraft;III)V

    invoke-virtual {v1, v5, v6, v2}, Linfo/flowersoft/theotown/city/Tiles;->setTree(IILinfo/flowersoft/theotown/city/objects/Tree;)V

    :cond_73
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_76
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_79
    return-void
.end method

###### Class info.flowersoft.theotown.creation.CityCreator.AnonymousClass2 (info.flowersoft.theotown.creation.CityCreator$2)
.class public Linfo/flowersoft/theotown/creation/CityCreator$2;
.super Ljava/lang/Object;
.source "CityCreator.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Parallel$Worker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/creation/CityCreator;->setBiomes(IIILio/blueflower/stapel2d/util/OpenSimplexNoise;Ljava/util/List;Ljava/util/List;[Linfo/flowersoft/theotown/draft/BiomeDraft;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/creation/CityCreator;

.field public final synthetic val$landBiomes:Ljava/util/List;

.field public final synthetic val$mapBiomes:[Linfo/flowersoft/theotown/draft/BiomeDraft;

.field public final synthetic val$noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

.field public final synthetic val$waterBiomes:Ljava/util/List;

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/creation/CityCreator;ILio/blueflower/stapel2d/util/OpenSimplexNoise;Ljava/util/List;Ljava/util/List;[Linfo/flowersoft/theotown/draft/BiomeDraft;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 702
    iput-object p1, p0, Linfo/flowersoft/theotown/creation/CityCreator$2;->this$0:Linfo/flowersoft/theotown/creation/CityCreator;

    iput p2, p0, Linfo/flowersoft/theotown/creation/CityCreator$2;->val$width:I

    iput-object p3, p0, Linfo/flowersoft/theotown/creation/CityCreator$2;->val$noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    iput-object p4, p0, Linfo/flowersoft/theotown/creation/CityCreator$2;->val$waterBiomes:Ljava/util/List;

    iput-object p5, p0, Linfo/flowersoft/theotown/creation/CityCreator$2;->val$landBiomes:Ljava/util/List;

    iput-object p6, p0, Linfo/flowersoft/theotown/creation/CityCreator$2;->val$mapBiomes:[Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public work(III)V
    .registers 11

    move v4, p2

    :goto_1
    if-ge v4, p3, :cond_4a

    .line 705
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    if-nez p1, :cond_4a

    const/4 p1, 0x0

    move v3, p1

    .line 706
    :goto_f
    iget p1, p0, Linfo/flowersoft/theotown/creation/CityCreator$2;->val$width:I

    if-ge v3, p1, :cond_47

    .line 707
    iget-object p1, p0, Linfo/flowersoft/theotown/creation/CityCreator$2;->this$0:Linfo/flowersoft/theotown/creation/CityCreator;

    invoke-static {p1}, Linfo/flowersoft/theotown/creation/CityCreator;->access$000(Linfo/flowersoft/theotown/creation/CityCreator;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    .line 708
    iget-short p2, p1, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    int-to-float p2, p2

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float v5, p2, v0

    .line 709
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->getDerivativeSq()F

    move-result v6

    .line 711
    iget-object v0, p0, Linfo/flowersoft/theotown/creation/CityCreator$2;->this$0:Linfo/flowersoft/theotown/creation/CityCreator;

    iget-object v1, p0, Linfo/flowersoft/theotown/creation/CityCreator$2;->val$noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    const/4 p1, 0x0

    cmpg-float p1, v5, p1

    if-gez p1, :cond_35

    .line 713
    iget-object p1, p0, Linfo/flowersoft/theotown/creation/CityCreator$2;->val$waterBiomes:Ljava/util/List;

    :goto_33
    move-object v2, p1

    goto :goto_38

    :cond_35
    iget-object p1, p0, Linfo/flowersoft/theotown/creation/CityCreator$2;->val$landBiomes:Ljava/util/List;

    goto :goto_33

    .line 711
    :goto_38
    invoke-static/range {v0 .. v6}, Linfo/flowersoft/theotown/creation/CityCreator;->access$200(Linfo/flowersoft/theotown/creation/CityCreator;Lio/blueflower/stapel2d/util/OpenSimplexNoise;Ljava/util/List;IIFF)Linfo/flowersoft/theotown/draft/BiomeDraft;

    move-result-object p1

    .line 715
    iget-object p2, p0, Linfo/flowersoft/theotown/creation/CityCreator$2;->val$mapBiomes:[Linfo/flowersoft/theotown/draft/BiomeDraft;

    iget v0, p0, Linfo/flowersoft/theotown/creation/CityCreator$2;->val$width:I

    mul-int/2addr v0, v4

    add-int/2addr v0, v3

    aput-object p1, p2, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4a
    return-void
.end method

###### Class info.flowersoft.theotown.creation.CityCreator.AnonymousClass3 (info.flowersoft.theotown.creation.CityCreator$3)
.class public Linfo/flowersoft/theotown/creation/CityCreator$3;
.super Ljava/lang/Object;
.source "CityCreator.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Parallel$Worker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/creation/CityCreator;->setFancyGround(IILinfo/flowersoft/theotown/util/ProgressVariable;ILio/blueflower/stapel2d/util/OpenSimplexNoise;[Linfo/flowersoft/theotown/draft/BiomeDraft;[Ljava/util/List;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Ljava/util/Random;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/creation/CityCreator;

.field public final synthetic val$defaultLand:Linfo/flowersoft/theotown/draft/GroundDraft;

.field public final synthetic val$defaultWater:Linfo/flowersoft/theotown/draft/GroundDraft;

.field public final synthetic val$mapBiomes:[Linfo/flowersoft/theotown/draft/BiomeDraft;

.field public final synthetic val$noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

.field public final synthetic val$progress:Linfo/flowersoft/theotown/util/ProgressVariable;

.field public final synthetic val$rnd:Ljava/util/Random;

.field public final synthetic val$tilesPerBiome:[Ljava/util/List;

.field public final synthetic val$width:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/creation/CityCreator;Linfo/flowersoft/theotown/util/ProgressVariable;I[Linfo/flowersoft/theotown/draft/BiomeDraft;[Ljava/util/List;Lio/blueflower/stapel2d/util/OpenSimplexNoise;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Ljava/util/Random;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 734
    iput-object p1, p0, Linfo/flowersoft/theotown/creation/CityCreator$3;->this$0:Linfo/flowersoft/theotown/creation/CityCreator;

    iput-object p2, p0, Linfo/flowersoft/theotown/creation/CityCreator$3;->val$progress:Linfo/flowersoft/theotown/util/ProgressVariable;

    iput p3, p0, Linfo/flowersoft/theotown/creation/CityCreator$3;->val$width:I

    iput-object p4, p0, Linfo/flowersoft/theotown/creation/CityCreator$3;->val$mapBiomes:[Linfo/flowersoft/theotown/draft/BiomeDraft;

    iput-object p5, p0, Linfo/flowersoft/theotown/creation/CityCreator$3;->val$tilesPerBiome:[Ljava/util/List;

    iput-object p6, p0, Linfo/flowersoft/theotown/creation/CityCreator$3;->val$noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    iput-object p7, p0, Linfo/flowersoft/theotown/creation/CityCreator$3;->val$defaultWater:Linfo/flowersoft/theotown/draft/GroundDraft;

    iput-object p8, p0, Linfo/flowersoft/theotown/creation/CityCreator$3;->val$defaultLand:Linfo/flowersoft/theotown/draft/GroundDraft;

    iput-object p9, p0, Linfo/flowersoft/theotown/creation/CityCreator$3;->val$rnd:Ljava/util/Random;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public work(III)V
    .registers 13

    .line 737
    new-instance v8, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-direct {v8}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>()V

    move v5, p2

    :goto_6
    if-ge v5, p3, :cond_7f

    .line 739
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    if-nez p1, :cond_7f

    if-nez p2, :cond_21

    .line 740
    iget-object p1, p0, Linfo/flowersoft/theotown/creation/CityCreator$3;->val$progress:Linfo/flowersoft/theotown/util/ProgressVariable;

    int-to-float v0, v5

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    int-to-float v2, p3

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/ProgressVariable;->setProgress(F)V

    :cond_21
    const/4 p1, 0x0

    move v4, p1

    .line 741
    :goto_23
    iget p1, p0, Linfo/flowersoft/theotown/creation/CityCreator$3;->val$width:I

    if-ge v4, p1, :cond_7c

    .line 742
    iget-object p1, p0, Linfo/flowersoft/theotown/creation/CityCreator$3;->this$0:Linfo/flowersoft/theotown/creation/CityCreator;

    invoke-static {p1}, Linfo/flowersoft/theotown/creation/CityCreator;->access$000(Linfo/flowersoft/theotown/creation/CityCreator;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    .line 744
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/creation/CityCreator$3;->this$0:Linfo/flowersoft/theotown/creation/CityCreator;

    invoke-static {v1}, Linfo/flowersoft/theotown/creation/CityCreator;->access$300(Linfo/flowersoft/theotown/creation/CityCreator;)Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v1

    if-eq v0, v1, :cond_3e

    goto :goto_79

    .line 749
    :cond_3e
    iget-short v0, p1, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v6, v0, v1

    .line 750
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->getDerivativeSq()F

    move-result v7

    .line 752
    iget-object v0, p0, Linfo/flowersoft/theotown/creation/CityCreator$3;->val$mapBiomes:[Linfo/flowersoft/theotown/draft/BiomeDraft;

    iget v1, p0, Linfo/flowersoft/theotown/creation/CityCreator$3;->val$width:I

    mul-int/2addr v1, v5

    add-int/2addr v1, v4

    aget-object v3, v0, v1

    .line 754
    iget-object v0, p0, Linfo/flowersoft/theotown/creation/CityCreator$3;->this$0:Linfo/flowersoft/theotown/creation/CityCreator;

    iget-object v1, p0, Linfo/flowersoft/theotown/creation/CityCreator$3;->val$tilesPerBiome:[Ljava/util/List;

    iget v2, v3, Linfo/flowersoft/theotown/draft/BiomeDraft;->tempIndex:I

    aget-object v1, v1, v2

    iget-object v2, p0, Linfo/flowersoft/theotown/creation/CityCreator$3;->val$noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    invoke-static/range {v0 .. v8}, Linfo/flowersoft/theotown/creation/CityCreator;->access$400(Linfo/flowersoft/theotown/creation/CityCreator;Ljava/util/List;Lio/blueflower/stapel2d/util/OpenSimplexNoise;Linfo/flowersoft/theotown/draft/BiomeDraft;IIFFLio/blueflower/stapel2d/util/ProbabilitySelector;)Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v0

    if-nez v0, :cond_6a

    .line 758
    iget-short v0, p1, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    if-gez v0, :cond_68

    .line 759
    iget-object v0, p0, Linfo/flowersoft/theotown/creation/CityCreator$3;->val$defaultWater:Linfo/flowersoft/theotown/draft/GroundDraft;

    goto :goto_6a

    .line 761
    :cond_68
    iget-object v0, p0, Linfo/flowersoft/theotown/creation/CityCreator$3;->val$defaultLand:Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 765
    :cond_6a
    :goto_6a
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Ground;->setDraft(Linfo/flowersoft/theotown/draft/GroundDraft;)V

    .line 766
    iget-object v1, p0, Linfo/flowersoft/theotown/creation/CityCreator$3;->val$rnd:Ljava/util/Random;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Ground;->setFrame(I)V

    :goto_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_7c
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_7f
    return-void
.end method

###### Class info.flowersoft.theotown.creation.CityCreator.AnonymousClass4 (info.flowersoft.theotown.creation.CityCreator$4)
.class public Linfo/flowersoft/theotown/creation/CityCreator$4;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "CityCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/creation/CityCreator;->getDummy(I)Linfo/flowersoft/theotown/city/components/CityComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/creation/CityCreator;

.field public final synthetic val$type:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/creation/CityCreator;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1192
    iput-object p1, p0, Linfo/flowersoft/theotown/creation/CityCreator$4;->this$0:Linfo/flowersoft/theotown/creation/CityCreator;

    iput p2, p0, Linfo/flowersoft/theotown/creation/CityCreator$4;->val$type:I

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .line 1195
    iget v0, p0, Linfo/flowersoft/theotown/creation/CityCreator$4;->val$type:I

    return v0
.end method

###### Class info.flowersoft.theotown.creation.CityCreator.CityData (info.flowersoft.theotown.creation.CityCreator$CityData)
.class public Linfo/flowersoft/theotown/creation/CityCreator$CityData;
.super Ljava/lang/Object;
.source "CityCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/creation/CityCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CityData"
.end annotation


# instance fields
.field public allBiomes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            ">;"
        }
    .end annotation
.end field

.field public biomeMap:[Linfo/flowersoft/theotown/draft/BiomeDraft;

.field public city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;[Linfo/flowersoft/theotown/draft/BiomeDraft;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/City;",
            "[",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BiomeDraft;",
            ">;)V"
        }
    .end annotation

    .line 1472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1473
    iput-object p1, p0, Linfo/flowersoft/theotown/creation/CityCreator$CityData;->city:Linfo/flowersoft/theotown/city/City;

    .line 1474
    iput-object p2, p0, Linfo/flowersoft/theotown/creation/CityCreator$CityData;->biomeMap:[Linfo/flowersoft/theotown/draft/BiomeDraft;

    .line 1475
    iput-object p3, p0, Linfo/flowersoft/theotown/creation/CityCreator$CityData;->allBiomes:Ljava/util/List;

    return-void
.end method

###### Class info.flowersoft.theotown.creation.CityCreator$$ExternalSyntheticLambda0 (info.flowersoft.theotown.creation.CityCreator$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/creation/CityCreator;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Linfo/flowersoft/theotown/util/ProgressVariable;

.field public final synthetic f$5:Ljava/util/concurrent/CyclicBarrier;

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/creation/CityCreator;IIILinfo/flowersoft/theotown/util/ProgressVariable;Ljava/util/concurrent/CyclicBarrier;I)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/creation/CityCreator;

    iput p2, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda0;->f$4:Linfo/flowersoft/theotown/util/ProgressVariable;

    iput-object p6, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda0;->f$5:Ljava/util/concurrent/CyclicBarrier;

    iput p7, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda0;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/creation/CityCreator;

    iget v1, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda0;->f$3:I

    iget-object v4, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda0;->f$4:Linfo/flowersoft/theotown/util/ProgressVariable;

    iget-object v5, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda0;->f$5:Ljava/util/concurrent/CyclicBarrier;

    iget v6, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda0;->f$6:I

    invoke-static/range {v0 .. v6}, Linfo/flowersoft/theotown/creation/CityCreator;->$r8$lambda$wFfnp8tqG0lI8Kbwd5yYBNRzU28(Linfo/flowersoft/theotown/creation/CityCreator;IIILinfo/flowersoft/theotown/util/ProgressVariable;Ljava/util/concurrent/CyclicBarrier;I)V

    return-void
.end method

###### Class info.flowersoft.theotown.creation.CityCreator$$ExternalSyntheticLambda1 (info.flowersoft.theotown.creation.CityCreator$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/creation/CityCreator;

.field public final synthetic f$1:I

.field public final synthetic f$10:I

.field public final synthetic f$11:Z

.field public final synthetic f$12:Lio/blueflower/stapel2d/util/IntValueProperty;

.field public final synthetic f$2:[F

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:F

.field public final synthetic f$6:J

.field public final synthetic f$7:I

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/creation/CityCreator;I[FIIFJIIIIZLio/blueflower/stapel2d/util/IntValueProperty;)V
    .registers 15

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/creation/CityCreator;

    iput p2, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$2:[F

    iput p4, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$3:I

    iput p5, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$4:I

    iput p6, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$5:F

    iput-wide p7, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$6:J

    iput p9, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$7:I

    iput p10, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$8:I

    iput p11, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$9:I

    iput p12, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$10:I

    iput-boolean p13, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$11:Z

    iput-object p14, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$12:Lio/blueflower/stapel2d/util/IntValueProperty;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 15

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/creation/CityCreator;

    iget v1, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$1:I

    iget-object v2, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$2:[F

    iget v3, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$3:I

    iget v4, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$4:I

    iget v5, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$5:F

    iget-wide v6, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$6:J

    iget v8, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$7:I

    iget v9, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$8:I

    iget v10, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$9:I

    iget v11, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$10:I

    iget-boolean v12, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$11:Z

    iget-object v13, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda1;->f$12:Lio/blueflower/stapel2d/util/IntValueProperty;

    invoke-static/range {v0 .. v13}, Linfo/flowersoft/theotown/creation/CityCreator;->$r8$lambda$ZOHyoTnLScZPy7snrTLSQI99Yy0(Linfo/flowersoft/theotown/creation/CityCreator;I[FIIFJIIIIZLio/blueflower/stapel2d/util/IntValueProperty;)V

    return-void
.end method

###### Class info.flowersoft.theotown.creation.CityCreator$$ExternalSyntheticLambda2 (info.flowersoft.theotown.creation.CityCreator$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/creation/CityCreator;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/util/concurrent/CyclicBarrier;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/creation/CityCreator;IIIILjava/util/concurrent/CyclicBarrier;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/creation/CityCreator;

    iput p2, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda2;->f$2:I

    iput p4, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda2;->f$3:I

    iput p5, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda2;->f$4:I

    iput-object p6, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda2;->f$5:Ljava/util/concurrent/CyclicBarrier;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/creation/CityCreator;

    iget v1, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda2;->f$1:I

    iget v2, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda2;->f$2:I

    iget v3, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda2;->f$3:I

    iget v4, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda2;->f$4:I

    iget-object v5, p0, Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda2;->f$5:Ljava/util/concurrent/CyclicBarrier;

    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/creation/CityCreator;->$r8$lambda$NnqDklRZg7v6JB5SnlSLJ72E3SM(Linfo/flowersoft/theotown/creation/CityCreator;IIIILjava/util/concurrent/CyclicBarrier;)V

    return-void
.end method

###### Class info.flowersoft.theotown.creation.CityCreator$$ExternalSyntheticLambda3 (info.flowersoft.theotown.creation.CityCreator$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/creation/CityCreator$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/Float;

    invoke-static {p1}, Linfo/flowersoft/theotown/creation/CityCreator;->$r8$lambda$uqSaymbBB8HWYghiUMRBc53gUN8(Ljava/lang/Float;)V

    return-void
.end method
