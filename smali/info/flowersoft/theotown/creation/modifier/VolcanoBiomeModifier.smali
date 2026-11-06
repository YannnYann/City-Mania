###### Class info.flowersoft.theotown.creation.modifier.VolcanoBiomeModifier (info.flowersoft.theotown.creation.modifier.VolcanoBiomeModifier)
.class public final Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier;
.super Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;
.source "VolcanoBiomeModifier.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier$Volcano;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVolcanoBiomeModifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VolcanoBiomeModifier.kt\ninfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,91:1\n2199#2,2:92\n*S KotlinDebug\n*F\n+ 1 VolcanoBiomeModifier.kt\ninfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier\n*L\n59#1:92,2\n*E\n"
.end annotation


# instance fields
.field public final lavaGround:Linfo/flowersoft/theotown/draft/GroundDraft;

.field public final volcanoBiome:Linfo/flowersoft/theotown/draft/BiomeDraft;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 8
    invoke-direct {p0}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;-><init>()V

    .line 21
    const-string v0, "$biome_volcano00"

    const-class v1, Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BiomeDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier;->volcanoBiome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    .line 23
    const-string v0, "$ground_volcano00_active00"

    const-class v1, Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/GroundDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier;->lavaGround:Linfo/flowersoft/theotown/draft/GroundDraft;

    return-void
.end method


# virtual methods
.method public apply()V
    .registers 19

    move-object/from16 v0, p0

    .line 29
    iget-object v1, v0, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier;->volcanoBiome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    iget-object v2, v0, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier;->lavaGround:Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual {v0}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    :goto_16
    const v7, 0x3e99999a    # 0.3f

    const/high16 v8, 0x3f800000    # 1.0f

    if-ge v6, v4, :cond_9e

    .line 34
    invoke-virtual {v0}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getWidth()I

    move-result v9

    const/4 v10, 0x0

    :goto_22
    if-ge v10, v9, :cond_9a

    .line 35
    invoke-virtual {v0, v10, v6}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v11

    .line 36
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v11

    if-nez v11, :cond_97

    .line 37
    invoke-virtual {v0, v10, v6}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getBiome(II)Linfo/flowersoft/theotown/draft/BiomeDraft;

    move-result-object v11

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_97

    .line 40
    invoke-virtual {v0}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getNoise()Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    move-result-object v11

    int-to-float v12, v10

    const v13, 0x3dcccccd    # 0.1f

    mul-float v14, v12, v13

    int-to-float v15, v6

    mul-float/2addr v13, v15

    invoke-virtual {v11, v14, v13}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FF)F

    move-result v11

    cmpl-float v11, v11, v7

    if-lez v11, :cond_97

    .line 41
    invoke-virtual {v0}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getNoise()Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    move-result-object v11

    mul-float v13, v12, v8

    mul-float v14, v15, v8

    invoke-virtual {v11, v13, v14}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FF)F

    move-result v11

    const/high16 v13, 0x3f000000    # 0.5f

    cmpl-float v11, v11, v13

    if-lez v11, :cond_97

    invoke-virtual {v0}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getNoise()Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    move-result-object v11

    const/high16 v14, 0x42000000    # 32.0f

    add-float/2addr v14, v12

    const/high16 v16, 0x42920000    # 73.0f

    add-float v5, v15, v16

    invoke-virtual {v11, v14, v5}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FF)F

    move-result v5

    cmpl-float v5, v5, v13

    if-lez v5, :cond_97

    .line 43
    invoke-virtual {v0}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getNoise()Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    move-result-object v5

    mul-float/2addr v12, v7

    mul-float/2addr v15, v7

    invoke-virtual {v5, v12, v15}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FF)F

    move-result v5

    mul-float/2addr v5, v13

    add-float/2addr v5, v13

    const v11, 0x3f333333    # 0.7f

    cmpl-float v11, v5, v11

    if-lez v11, :cond_86

    const/4 v11, 0x1

    goto :goto_87

    :cond_86
    const/4 v11, 0x0

    :goto_87
    mul-float/2addr v5, v5

    .line 46
    new-instance v12, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier$Volcano;

    const/16 v13, 0x1e

    int-to-float v13, v13

    mul-float/2addr v13, v5

    float-to-int v5, v13

    add-int/lit8 v5, v5, 0x8

    invoke-direct {v12, v10, v6, v5, v11}, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier$Volcano;-><init>(IIIZ)V

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_97
    add-int/lit8 v10, v10, 0x1

    goto :goto_22

    :cond_9a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_16

    .line 55
    :cond_9e
    invoke-virtual {v0}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    :goto_a3
    if-ge v5, v4, :cond_149

    .line 56
    invoke-virtual {v0}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getWidth()I

    move-result v6

    const/4 v9, 0x0

    :goto_aa
    if-ge v9, v6, :cond_141

    .line 57
    invoke-virtual {v0, v9, v5}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v10

    .line 2199
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_b4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_139

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier$Volcano;

    .line 60
    invoke-virtual {v12}, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier$Volcano;->getX()I

    move-result v13

    .line 61
    invoke-virtual {v12}, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier$Volcano;->getY()I

    move-result v14

    .line 62
    invoke-virtual {v12}, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier$Volcano;->getRadius()I

    move-result v15

    .line 63
    invoke-virtual {v12}, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier$Volcano;->getActive()Z

    move-result v12

    sub-int/2addr v13, v9

    mul-int/2addr v13, v13

    sub-int/2addr v14, v5

    mul-int/2addr v14, v14

    add-int/2addr v13, v14

    mul-int v14, v15, v15

    if-ge v13, v14, :cond_12f

    int-to-float v13, v13

    float-to-double v13, v13

    .line 68
    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v13, v13

    .line 69
    invoke-virtual {v0}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getNoise()Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    move-result-object v14

    move/from16 v16, v7

    int-to-float v7, v9

    mul-float v7, v7, v16

    move/from16 v17, v8

    int-to-float v8, v5

    mul-float v8, v8, v16

    invoke-virtual {v14, v7, v8}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FF)F

    move-result v7

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v7, v8

    add-float v7, v7, v17

    mul-float/2addr v13, v7

    int-to-float v7, v15

    cmpl-float v8, v13, v7

    if-gtz v8, :cond_133

    sub-float v8, v7, v13

    div-float/2addr v8, v7

    const v14, 0x3f99999a    # 1.2f

    mul-float/2addr v8, v14

    sub-float v8, v17, v8

    .line 73
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    sub-float v8, v17, v8

    mul-float/2addr v8, v8

    .line 76
    invoke-virtual {v0, v9, v5, v1}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->setBiome(IILinfo/flowersoft/theotown/draft/BiomeDraft;)V

    if-eqz v12, :cond_11a

    cmpg-float v12, v13, v17

    if-gtz v12, :cond_11a

    .line 80
    invoke-virtual {v10, v2}, Linfo/flowersoft/theotown/city/objects/Ground;->setDraft(Linfo/flowersoft/theotown/draft/GroundDraft;)V

    :cond_11a
    const/high16 v12, 0x42a00000    # 80.0f

    mul-float/2addr v12, v7

    mul-float/2addr v12, v8

    float-to-int v12, v12

    .line 85
    iget-short v13, v10, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    const/high16 v14, 0x42200000    # 40.0f

    mul-float/2addr v7, v14

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/2addr v13, v7

    .line 83
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-short v7, v7

    iput-short v7, v10, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    goto :goto_133

    :cond_12f
    move/from16 v16, v7

    move/from16 v17, v8

    :cond_133
    :goto_133
    move/from16 v7, v16

    move/from16 v8, v17

    goto/16 :goto_b4

    :cond_139
    move/from16 v16, v7

    move/from16 v17, v8

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_aa

    :cond_141
    move/from16 v16, v7

    move/from16 v17, v8

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_a3

    :cond_149
    return-void
.end method

.method public isAvailable()Z
    .registers 3

    .line 26
    iget-object v0, p0, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier;->volcanoBiome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    if-eqz v0, :cond_16

    iget-object v0, p0, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier;->lavaGround:Linfo/flowersoft/theotown/draft/GroundDraft;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Linfo/flowersoft/theotown/creation/modifier/BiomeTerrainModifier;->getBiomes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier;->volcanoBiome:Linfo/flowersoft/theotown/draft/BiomeDraft;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.creation.modifier.VolcanoBiomeModifier.Volcano (info.flowersoft.theotown.creation.modifier.VolcanoBiomeModifier$Volcano)
.class public final Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier$Volcano;
.super Ljava/lang/Object;
.source "VolcanoBiomeModifier.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Volcano"
.end annotation


# instance fields
.field public final active:Z

.field public final radius:I

.field public final x:I

.field public final y:I


# direct methods
.method public constructor <init>(IIIZ)V
    .registers 5

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier$Volcano;->x:I

    .line 12
    iput p2, p0, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier$Volcano;->y:I

    .line 13
    iput p3, p0, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier$Volcano;->radius:I

    .line 14
    iput-boolean p4, p0, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier$Volcano;->active:Z

    return-void
.end method


# virtual methods
.method public final getActive()Z
    .registers 2

    .line 14
    iget-boolean v0, p0, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier$Volcano;->active:Z

    return v0
.end method

.method public final getRadius()I
    .registers 2

    .line 13
    iget v0, p0, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier$Volcano;->radius:I

    return v0
.end method

.method public final getX()I
    .registers 2

    .line 11
    iget v0, p0, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier$Volcano;->x:I

    return v0
.end method

.method public final getY()I
    .registers 2

    .line 12
    iget v0, p0, Linfo/flowersoft/theotown/creation/modifier/VolcanoBiomeModifier$Volcano;->y:I

    return v0
.end method
