###### Class info.flowersoft.theotown.components.disaster.NukeDisaster (info.flowersoft.theotown.components.disaster.NukeDisaster)
.class public Linfo/flowersoft/theotown/components/disaster/NukeDisaster;
.super Linfo/flowersoft/theotown/city/components/Disaster;
.source "NukeDisaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;
    }
.end annotation


# instance fields
.field public final animationDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final nukes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Disaster;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->nukes:Ljava/util/List;

    .line 39
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$mushroomcloud00"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->animationDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-void
.end method


# virtual methods
.method public declared-synchronized draw(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 14

    monitor-enter p0

    .line 73
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->nukes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ee

    const/4 v0, 0x0

    move v1, v0

    .line 74
    :goto_b
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->nukes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_ee

    .line 75
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->nukes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;

    .line 76
    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;->access$100(Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;)I

    move-result v3

    .line 77
    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;->access$200(Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;)I

    move-result v4

    .line 78
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v3, v4}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    .line 79
    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v3, v4}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    .line 81
    iget-object v7, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v7

    .line 82
    iget-object v8, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8, v3, v4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 83
    iget-object v8, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainAvgHeight(II)F

    move-result v3

    const/high16 v4, 0x41800000    # 16.0f

    mul-float/2addr v3, v4

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    goto :goto_5e

    :catchall_5a
    move-exception p1

    goto/16 :goto_f0

    :cond_5d
    move v3, v0

    .line 85
    :goto_5e
    invoke-virtual {v7, v5, v6}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(II)I

    move-result v4

    int-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v4, v8

    .line 86
    invoke-virtual {v7, v5, v6}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(II)I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    sub-int/2addr v5, v3

    .line 87
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 88
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->getProgess(Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;)F

    move-result v2

    const/4 v6, 0x0

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 89
    iget-object v7, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->animationDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    int-to-float v8, v8

    mul-float/2addr v2, v8

    array-length v7, v7

    int-to-float v7, v7

    const v8, 0x3f666666    # 0.9f

    sub-float/2addr v7, v8

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v7, 0x3f000000    # 0.5f

    sub-float/2addr v2, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-double v6, v2

    .line 92
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 93
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-float v7, v8

    sub-float/2addr v2, v7

    .line 96
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v7

    .line 97
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v9

    const/high16 v10, 0x41100000    # 9.0f

    mul-float v11, v7, v10

    mul-float/2addr v10, v9

    .line 98
    invoke-virtual {p1, v11, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 99
    invoke-static {v2}, Linfo/flowersoft/theotown/util/Functions;->interpolate(F)F

    move-result v10

    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v10, v11

    sub-float v10, v11, v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {p1, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    int-to-float v4, v4

    int-to-float v5, v5

    .line 100
    iget-object v10, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->animationDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v10, v10, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v10, v10, v8

    invoke-virtual {p1, v3, v4, v5, v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    if-eq v8, v6, :cond_e7

    .line 102
    invoke-static {v2}, Linfo/flowersoft/theotown/util/Functions;->interpolate(F)F

    move-result v2

    mul-float/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 103
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->animationDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v2, v2, v6

    invoke-virtual {p1, v3, v4, v5, v2}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 105
    :cond_e7
    invoke-virtual {p1, v7, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V
    :try_end_ea
    .catchall {:try_start_1 .. :try_end_ea} :catchall_5a

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    .line 108
    :cond_ee
    monitor-exit p0

    return-void

    :goto_f0
    :try_start_f0
    monitor-exit p0
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_5a

    throw p1
.end method

.method public getAutoProbability()F
    .registers 2

    .line 0
    const v0, 0x3a83126f    # 0.001f

    return v0
.end method

.method public declared-synchronized getLocation()[I
    .registers 3

    monitor-enter p0

    .line 234
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->nukes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 235
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->nukes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;

    .line 236
    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;->access$100(Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;)I

    move-result v1

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;->access$200(Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;)I

    move-result v0

    filled-new-array {v1, v0}, [I

    move-result-object v0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    :catchall_20
    move-exception v0

    goto :goto_25

    .line 238
    :cond_22
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_20

    throw v0
.end method

.method public final getProgess(Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;)F
    .registers 4

    .line 56
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v0

    .line 57
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;->access$000(Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;)I

    move-result v1

    if-ge v0, v1, :cond_f

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    .line 58
    :cond_f
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;->access$000(Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;)I

    move-result p1

    sub-int/2addr v0, p1

    int-to-float p1, v0

    const/high16 v0, 0x43480000    # 200.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->animationDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x40800000    # 4.0f

    div-float/2addr p1, v0

    return p1
.end method

.method public isActive()Z
    .registers 2

    .line 112
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->nukes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isAutoEnabled()Z
    .registers 2

    .line 243
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->disasterNuke:Z

    return v0
.end method

.method public issue(II)Z
    .registers 5

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 123
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 125
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->issue(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result p1

    return p1

    :cond_19
    const/4 v0, 0x1

    const/16 v1, 0x14

    .line 128
    invoke-virtual {p0, p1, p2, v0, v1}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->issue(IIZI)Z

    move-result p1

    return p1
.end method

.method public issue(IIZI)Z
    .registers 29

    move-object/from16 v1, p0

    .line 132
    iget-object v0, v1, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Catastrophe;

    .line 133
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Catastrophe;->issueFlash()V

    .line 135
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 136
    new-instance v2, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v2}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 137
    new-instance v3, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v3}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 139
    invoke-static/range {p1 .. p2}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v4

    invoke-virtual {v0, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    move/from16 v4, p3

    .line 140
    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    move/from16 v4, p4

    .line 141
    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 143
    iget-object v4, v1, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    .line 150
    iget-object v5, v1, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v5

    const/4 v6, 0x0

    move/from16 v7, p1

    move v8, v7

    move/from16 v9, p2

    move v10, v9

    move v11, v6

    .line 151
    :goto_3f
    :try_start_3f
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_158

    .line 152
    invoke-virtual {v0, v6}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    move-result v12

    .line 153
    invoke-static {v12}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v14

    .line 154
    invoke-static {v12}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v12

    .line 155
    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 156
    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 157
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 158
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 159
    invoke-virtual {v2, v6}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    move-result v15

    .line 160
    invoke-virtual {v3, v6}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    move-result v16

    .line 161
    div-int/lit8 v17, v16, 0x4

    if-lez v17, :cond_77

    .line 162
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    div-int/lit8 v13, v16, 0x4

    invoke-virtual {v6, v13}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    add-int v16, v16, v6

    :cond_77
    move/from16 v6, v16

    const/4 v13, 0x1

    goto :goto_7e

    :catchall_7b
    move-exception v0

    goto/16 :goto_181

    :goto_7e
    if-ne v15, v13, :cond_82

    const/4 v13, 0x1

    goto :goto_83

    :cond_82
    const/4 v13, 0x0

    :goto_83
    sub-int v15, v12, v6

    move/from16 p2, v7

    :goto_87
    add-int v7, v12, v6

    move/from16 p4, v8

    if-gt v15, v7, :cond_128

    sub-int v7, v15, v12

    mul-int v16, v6, v6

    mul-int/2addr v7, v7

    sub-int v8, v16, v7

    move/from16 v16, v7

    int-to-double v7, v8

    .line 168
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    sub-int v8, v14, v7

    move/from16 v18, v7

    :goto_a4
    add-int v7, v14, v18

    if-gt v8, v7, :cond_11c

    sub-int v7, v8, v14

    mul-int/2addr v7, v7

    add-int v7, v7, v16

    move/from16 v19, v9

    move/from16 v20, v10

    int-to-double v9, v7

    .line 171
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v7, v9

    .line 172
    sget-object v9, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v10

    const/high16 v21, 0x3f800000    # 1.0f

    add-float v10, v10, v21

    mul-float/2addr v7, v10

    int-to-float v10, v6

    cmpg-float v22, v7, v10

    if-gez v22, :cond_111

    move/from16 v22, v6

    .line 173
    iget-object v6, v1, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v8, v15}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v6

    if-eqz v6, :cond_113

    .line 174
    invoke-virtual {v4, v8, v15}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v6

    move/from16 v23, v7

    .line 175
    iget-object v7, v1, Linfo/flowersoft/theotown/city/components/Disaster;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    if-eqz v13, :cond_ea

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    div-float v10, v23, v10

    sub-float v21, v21, v10

    cmpg-float v9, v9, v21

    if-gez v9, :cond_ea

    const/4 v9, 0x1

    :goto_e8
    const/4 v10, 0x0

    goto :goto_ec

    :cond_ea
    const/4 v9, 0x0

    goto :goto_e8

    :goto_ec
    invoke-virtual {v7, v8, v15, v9, v10}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->destroy(IIZLvm2/LuaValue;)V

    if-eqz v6, :cond_113

    .line 176
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v7

    iget-boolean v7, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->explodes:Z

    if-eqz v7, :cond_113

    invoke-virtual {v4, v8, v15}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v7

    if-eq v7, v6, :cond_113

    .line 177
    invoke-static {v8, v15}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 178
    invoke-virtual {v2, v13}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v11, v11, 0x1

    add-int v6, v22, v11

    .line 179
    invoke-virtual {v3, v6}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_113

    :cond_111
    move/from16 v22, v6

    :cond_113
    :goto_113
    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v19

    move/from16 v10, v20

    move/from16 v6, v22

    goto :goto_a4

    :cond_11c
    move/from16 v22, v6

    move/from16 v19, v9

    move/from16 v20, v10

    add-int/lit8 v15, v15, 0x1

    move/from16 v8, p4

    goto/16 :goto_87

    :cond_128
    move/from16 v19, v9

    move/from16 v20, v10

    .line 185
    new-instance v6, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;

    const/4 v10, 0x0

    invoke-direct {v6, v10}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;-><init>(Linfo/flowersoft/theotown/components/disaster/NukeDisaster$1;)V

    .line 186
    iget-object v7, v1, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v7

    invoke-static {v6, v7}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;->access$002(Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;I)I

    .line 187
    invoke-static {v6, v14}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;->access$102(Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;I)I

    .line 188
    invoke-static {v6, v12}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;->access$202(Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;I)I

    .line 189
    iget-object v7, v1, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->nukes:Ljava/util/List;

    monitor-enter v7
    :try_end_144
    .catchall {:try_start_3f .. :try_end_144} :catchall_7b

    .line 190
    :try_start_144
    iget-object v8, v1, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->nukes:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    monitor-exit v7

    move/from16 v7, p2

    move/from16 v8, p4

    move/from16 v9, v19

    move/from16 v10, v20

    const/4 v6, 0x0

    goto/16 :goto_3f

    :catchall_155
    move-exception v0

    monitor-exit v7
    :try_end_157
    .catchall {:try_start_144 .. :try_end_157} :catchall_155

    :try_start_157
    throw v0

    .line 193
    :cond_158
    monitor-exit v5
    :try_end_159
    .catchall {:try_start_157 .. :try_end_159} :catchall_7b

    add-int/lit8 v7, v7, -0x5

    add-int/lit8 v9, v9, -0x5

    add-int/lit8 v8, v8, 0x5

    add-int/lit8 v10, v10, 0x5

    sub-int/2addr v8, v7

    const/4 v13, 0x1

    add-int/2addr v8, v13

    sub-int/2addr v10, v9

    add-int/2addr v10, v13

    .line 200
    filled-new-array {v7, v9, v8, v10}, [I

    move-result-object v0

    .line 201
    iget-object v2, v1, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->SOUND_METEORITE_IMPACT:I

    sget-object v4, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v5, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$1;

    invoke-direct {v5, v1, v0}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$1;-><init>(Linfo/flowersoft/theotown/components/disaster/NukeDisaster;[I)V

    invoke-virtual {v2, v3, v4, v5}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playOnce(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    return v13

    .line 193
    :goto_181
    :try_start_181
    monitor-exit v5
    :try_end_182
    .catchall {:try_start_181 .. :try_end_182} :catchall_7b

    throw v0
.end method

.method public issue(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 5

    .line 116
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 117
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v2

    iget-boolean v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->nuclear:Z

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    iget p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->explosionRadius:I

    .line 116
    invoke-virtual {p0, v0, v1, v2, p1}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->issue(IIZI)Z

    move-result p1

    return p1
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 45
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    .line 46
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    :cond_d
    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public declared-synchronized update()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 63
    :goto_2
    :try_start_2
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->nukes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 64
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->nukes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->getProgess(Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_26

    .line 65
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->nukes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_24

    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    :catchall_24
    move-exception v0

    goto :goto_2b

    :cond_26
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 69
    :cond_29
    monitor-exit p0

    return-void

    :goto_2b
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_24

    throw v0
.end method

###### Class info.flowersoft.theotown.components.disaster.NukeDisaster.AnonymousClass1 (info.flowersoft.theotown.components.disaster.NukeDisaster$1)
.class Linfo/flowersoft/theotown/components/disaster/NukeDisaster$1;
.super Linfo/flowersoft/theotown/components/soundsource/AreaSoundSource;
.source "NukeDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->issue(IIZI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/disaster/NukeDisaster;

.field public final synthetic val$area:[I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/disaster/NukeDisaster;[I)V
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

    .line 202
    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$1;->this$0:Linfo/flowersoft/theotown/components/disaster/NukeDisaster;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$1;->val$area:[I

    invoke-direct {p0}, Linfo/flowersoft/theotown/components/soundsource/AreaSoundSource;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 3

    .line 220
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$1;->val$area:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getWidth()I
    .registers 3

    .line 215
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$1;->val$area:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getX()I
    .registers 3

    .line 205
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$1;->val$area:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getY()I
    .registers 3

    .line 210
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$1;->val$area:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

###### Class info.flowersoft.theotown.components.disaster.NukeDisaster.Nuke (info.flowersoft.theotown.components.disaster.NukeDisaster$Nuke)
.class public Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;
.super Ljava/lang/Object;
.source "NukeDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/disaster/NukeDisaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Nuke"
.end annotation


# instance fields
.field public startAnimTime:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/disaster/NukeDisaster$1;)V
    .registers 2

    .line 251
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;)I
    .registers 1

    .line 251
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;->startAnimTime:I

    return p0
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;I)I
    .registers 2

    .line 251
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;->startAnimTime:I

    return p1
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;)I
    .registers 1

    .line 251
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;->x:I

    return p0
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;I)I
    .registers 2

    .line 251
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;->x:I

    return p1
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;)I
    .registers 1

    .line 251
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;->y:I

    return p0
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;I)I
    .registers 2

    .line 251
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/NukeDisaster$Nuke;->y:I

    return p1
.end method
