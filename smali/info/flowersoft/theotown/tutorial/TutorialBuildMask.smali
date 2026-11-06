###### Class info.flowersoft.theotown.tutorial.TutorialBuildMask (info.flowersoft.theotown.tutorial.TutorialBuildMask)
.class public Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;
.super Linfo/flowersoft/theotown/components/DefaultBuildMask;
.source "TutorialBuildMask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;
    }
.end annotation


# instance fields
.field public final clickablePlacesXY:Lcom/badlogic/gdx/utils/IntSet;

.field public condition:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;

.field public onConditionFulfilled:Ljava/lang/Runnable;

.field public final placesXY:Lcom/badlogic/gdx/utils/IntSet;

.field public final tileMarkMask:[I


# direct methods
.method public static synthetic $r8$lambda$_yqzL60P7KOncJGqG9lPV44nQ0E(Linfo/flowersoft/theotown/draft/ZoneDraft;Linfo/flowersoft/theotown/city/Tiles;II)Z
    .registers 5

    .line 198
    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v0

    if-eq v0, p0, :cond_f

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->hasRoad(II)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$xjL9YA1NtUI5o-kWQirAD4QVb04(Linfo/flowersoft/theotown/city/Tiles;II)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x2

    if-ge v1, v2, :cond_10

    .line 215
    invoke-virtual {p0, p1, p2, v1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    if-eqz v2, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return v0
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/DefaultBuildMask;-><init>()V

    .line 26
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->placesXY:Lcom/badlogic/gdx/utils/IntSet;

    .line 27
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->clickablePlacesXY:Lcom/badlogic/gdx/utils/IntSet;

    const/4 v0, 0x4

    .line 33
    new-array v0, v0, [I

    iput-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->tileMarkMask:[I

    return-void
.end method

.method public static getRoadCondition()Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;
    .registers 1

    .line 213
    new-instance v0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$$ExternalSyntheticLambda0;-><init>()V

    return-object v0
.end method

.method public static getZoneCondition(Linfo/flowersoft/theotown/draft/ZoneDraft;)Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;
    .registers 2

    .line 198
    new-instance v0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/draft/ZoneDraft;)V

    return-object v0
.end method


# virtual methods
.method public accessGranted(II)Z
    .registers 4

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->placesXY:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    .line 41
    :cond_a
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result p1

    .line 42
    iget-object p2, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->placesXY:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result p1

    return p1
.end method

.method public addTile(II)V
    .registers 4

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, p1, p2, v0}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->addTile(IIZ)V

    return-void
.end method

.method public addTile(IIZ)V
    .registers 4

    .line 88
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result p1

    .line 89
    iget-object p2, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->placesXY:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    if-eqz p3, :cond_10

    .line 92
    iget-object p2, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->clickablePlacesXY:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    :cond_10
    return-void
.end method

.method public addTiles(IIII)V
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 97
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->addTiles(IIIIZ)V

    return-void
.end method

.method public addTiles(IIIIZ)V
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p3, :cond_14

    move v2, v0

    :goto_5
    if-ge v2, p4, :cond_11

    add-int v3, p1, v1

    add-int v4, p2, v2

    .line 103
    invoke-virtual {p0, v3, v4, p5}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->addTile(IIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    return-void
.end method

.method public clear()V
    .registers 2

    .line 115
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->placesXY:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet;->clear()V

    .line 116
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->clickablePlacesXY:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet;->clear()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->condition:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;

    .line 118
    iput-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->onConditionFulfilled:Ljava/lang/Runnable;

    return-void
.end method

.method public correct(II)[I
    .registers 15

    .line 54
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->isClickable(II)Z

    move-result v0

    if-nez v0, :cond_35

    const v0, 0x7fffffff

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v5, v0

    move v3, v1

    move v4, v2

    :goto_e
    const/4 v6, 0x1

    if-gt v4, v6, :cond_2e

    move v7, v2

    :goto_12
    if-gt v7, v6, :cond_2b

    add-int v8, p1, v7

    add-int v9, p2, v4

    .line 61
    invoke-virtual {p0, v8, v9}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->isClickable(II)Z

    move-result v10

    if-eqz v10, :cond_28

    mul-int v10, v7, v7

    mul-int v11, v4, v4

    add-int/2addr v10, v11

    if-ge v10, v5, :cond_28

    move v1, v8

    move v3, v9

    move v5, v10

    :cond_28
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_2e
    if-ge v5, v0, :cond_35

    .line 72
    filled-new-array {v1, v3}, [I

    move-result-object p1

    return-object p1

    :cond_35
    const/4 p1, 0x0

    return-object p1
.end method

.method public drawAfter(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 21

    move-object/from16 v0, p0

    .line 148
    invoke-super/range {p0 .. p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->drawAfter(Linfo/flowersoft/theotown/city/Drawer;)V

    move-object/from16 v1, p1

    .line 149
    iget-object v1, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 151
    iget-object v2, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v3

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v2

    invoke-virtual {v1, v3, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 154
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    long-to-double v6, v2

    mul-double/2addr v6, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v4

    .line 156
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v5

    const v5, 0x3f4ccccd    # 0.8f

    add-float/2addr v4, v5

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    .line 155
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 157
    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 159
    iget-object v6, v0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->placesXY:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/IntSet;->iterator()Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    move-result-object v6

    .line 160
    :goto_4a
    iget-boolean v7, v6, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-eqz v7, :cond_152

    .line 161
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->next()I

    move-result v7

    .line 162
    invoke-static {v7}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v8

    .line 163
    invoke-static {v7}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v9

    .line 165
    iget-object v10, v0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->clickablePlacesXY:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v10, v7}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_14a

    .line 166
    iget-object v7, v0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->condition:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;

    if-eqz v7, :cond_73

    iget-object v10, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v10

    invoke-interface {v7, v10, v8, v9}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;->isFulfilled(Linfo/flowersoft/theotown/city/Tiles;II)Z

    move-result v7

    if-eqz v7, :cond_73

    goto :goto_4a

    :cond_73
    add-int/lit8 v7, v8, -0x1

    .line 169
    invoke-virtual {v0, v7, v9}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->accessGranted(II)Z

    move-result v7

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v7, :cond_83

    iget-object v7, v0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->tileMarkMask:[I

    aput v10, v7, v10

    move v7, v11

    goto :goto_84

    :cond_83
    move v7, v10

    :goto_84
    add-int/lit8 v12, v9, 0x1

    .line 170
    invoke-virtual {v0, v8, v12}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->accessGranted(II)Z

    move-result v12

    if-nez v12, :cond_93

    iget-object v12, v0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->tileMarkMask:[I

    add-int/lit8 v13, v7, 0x1

    aput v11, v12, v7

    move v7, v13

    :cond_93
    add-int/lit8 v11, v8, 0x1

    .line 171
    invoke-virtual {v0, v11, v9}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->accessGranted(II)Z

    move-result v11

    if-nez v11, :cond_a3

    iget-object v11, v0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->tileMarkMask:[I

    add-int/lit8 v12, v7, 0x1

    const/4 v13, 0x2

    aput v13, v11, v7

    move v7, v12

    :cond_a3
    add-int/lit8 v11, v9, -0x1

    .line 172
    invoke-virtual {v0, v8, v11}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->accessGranted(II)Z

    move-result v11

    if-nez v11, :cond_b3

    iget-object v11, v0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->tileMarkMask:[I

    add-int/lit8 v12, v7, 0x1

    const/4 v13, 0x3

    aput v13, v11, v7

    move v7, v12

    :cond_b3
    :goto_b3
    if-ge v10, v7, :cond_14a

    int-to-float v11, v8

    int-to-float v12, v9

    .line 177
    iget-object v13, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v13, v11, v12}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(FF)F

    move-result v13

    .line 178
    iget-object v14, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v14, v11, v12}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(FF)F

    move-result v11

    .line 179
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v12

    .line 181
    iget-object v14, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v14

    invoke-virtual {v14, v13, v11}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v14, v14

    .line 182
    iget-object v15, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v15

    invoke-virtual {v15, v13, v11}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v11

    move/from16 p1, v5

    move-object v13, v6

    float-to-double v5, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 184
    invoke-virtual {v1, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 185
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v11, v14

    int-to-float v5, v5

    sget v14, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TILEMARK:I

    iget-object v15, v0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->tileMarkMask:[I

    aget v15, v15, v10

    add-int/2addr v14, v15

    invoke-virtual {v1, v6, v11, v5, v14}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    const-wide/16 v14, 0x3e8

    .line 187
    rem-long v14, v2, v14

    long-to-float v6, v14

    const/high16 v14, 0x447a0000    # 1000.0f

    div-float/2addr v6, v14

    const/high16 v14, 0x40000000    # 2.0f

    mul-float/2addr v6, v14

    move/from16 v16, v14

    float-to-double v14, v6

    const-wide v17, 0x400921fb54442d18L    # Math.PI

    mul-double v14, v14, v17

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v6, v14

    add-float v6, v6, v16

    mul-float/2addr v6, v12

    .line 188
    invoke-virtual {v1, v6, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    div-float v14, v6, v12

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v14, v15

    const/high16 v15, 0x42c80000    # 100.0f

    mul-float/2addr v14, v15

    sub-float v14, p1, v14

    .line 189
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-virtual {v1, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 190
    sget-object v14, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/high16 v15, 0x41800000    # 16.0f

    mul-float v16, v12, v15

    add-float v11, v11, v16

    mul-float/2addr v6, v15

    sub-float/2addr v11, v6

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TILEMARK:I

    iget-object v15, v0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->tileMarkMask:[I

    aget v15, v15, v10

    add-int/2addr v6, v15

    invoke-virtual {v1, v14, v11, v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 191
    invoke-virtual {v1, v12, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    add-int/lit8 v10, v10, 0x1

    move/from16 v5, p1

    move-object v6, v13

    goto/16 :goto_b3

    :cond_14a
    move/from16 p1, v5

    move-object v13, v6

    move/from16 v5, p1

    move-object v6, v13

    goto/16 :goto_4a

    :cond_152
    return-void
.end method

.method public isClickable(II)Z
    .registers 4

    .line 47
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->placesXY:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x1

    return p1

    .line 48
    :cond_a
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result p1

    .line 49
    iget-object p2, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->clickablePlacesXY:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result p1

    return p1
.end method

.method public setCondition(Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;Ljava/lang/Runnable;)V
    .registers 3

    .line 79
    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->condition:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;

    .line 80
    iput-object p2, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->onConditionFulfilled:Ljava/lang/Runnable;

    return-void
.end method

.method public update()V
    .registers 6

    .line 123
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->condition:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;

    if-eqz v0, :cond_35

    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->onConditionFulfilled:Ljava/lang/Runnable;

    if-eqz v0, :cond_35

    .line 126
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->placesXY:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet;->iterator()Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    move-result-object v0

    .line 127
    :cond_e
    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-eqz v1, :cond_2d

    .line 128
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->next()I

    move-result v1

    .line 129
    invoke-static {v1}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackX(I)I

    move-result v2

    .line 130
    invoke-static {v1}, Linfo/flowersoft/theotown/util/PackedInt2;->unpackY(I)I

    move-result v1

    .line 132
    iget-object v3, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->condition:Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-interface {v3, v4, v2, v1}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;->isFulfilled(Linfo/flowersoft/theotown/city/Tiles;II)Z

    move-result v1

    if-nez v1, :cond_e

    return-void

    .line 139
    :cond_2d
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->onConditionFulfilled:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 140
    iput-object v1, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->onConditionFulfilled:Ljava/lang/Runnable;

    .line 141
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_35
    return-void
.end method

###### Class info.flowersoft.theotown.tutorial.TutorialBuildMask.TileCondition (info.flowersoft.theotown.tutorial.TutorialBuildMask$TileCondition)
.class public interface abstract Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;
.super Ljava/lang/Object;
.source "TutorialBuildMask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TileCondition"
.end annotation


# virtual methods
.method public abstract isFulfilled(Linfo/flowersoft/theotown/city/Tiles;II)Z
.end method

###### Class info.flowersoft.theotown.tutorial.TutorialBuildMask$$ExternalSyntheticLambda0 (info.flowersoft.theotown.tutorial.TutorialBuildMask$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isFulfilled(Linfo/flowersoft/theotown/city/Tiles;II)Z
    .registers 4

    .line 0
    invoke-static {p1, p2, p3}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->$r8$lambda$xjL9YA1NtUI5o-kWQirAD4QVb04(Linfo/flowersoft/theotown/city/Tiles;II)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.tutorial.TutorialBuildMask$$ExternalSyntheticLambda1 (info.flowersoft.theotown.tutorial.TutorialBuildMask$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$TileCondition;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/draft/ZoneDraft;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/draft/ZoneDraft;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-void
.end method


# virtual methods
.method public final isFulfilled(Linfo/flowersoft/theotown/city/Tiles;II)Z
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {v0, p1, p2, p3}, Linfo/flowersoft/theotown/tutorial/TutorialBuildMask;->$r8$lambda$_yqzL60P7KOncJGqG9lPV44nQ0E(Linfo/flowersoft/theotown/draft/ZoneDraft;Linfo/flowersoft/theotown/city/Tiles;II)Z

    move-result p1

    return p1
.end method
