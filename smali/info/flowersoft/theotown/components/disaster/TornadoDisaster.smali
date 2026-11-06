###### Class info.flowersoft.theotown.components.disaster.TornadoDisaster (info.flowersoft.theotown.components.disaster.TornadoDisaster)
.class public Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;
.super Linfo/flowersoft/theotown/city/components/Disaster;
.source "TornadoDisaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;
    }
.end annotation


# instance fields
.field public final landAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final tornadoAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final tornados:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;",
            ">;"
        }
    .end annotation
.end field

.field public final waterAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;


# direct methods
.method public static synthetic $r8$lambda$pX8R226V21h3vmqy-zWp-J2P1B4(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)I
    .registers 2

    .line 218
    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$200(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result p1

    invoke-static {p0}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$200(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result p0

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 42
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Disaster;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->tornados:Ljava/util/List;

    .line 43
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$animationtornado00"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->tornadoAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 44
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$animationtornadodirt00"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->landAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 45
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$animationtornadowater00"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->waterAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-void
.end method


# virtual methods
.method public declared-synchronized draw(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 9

    monitor-enter p0

    .line 218
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->tornados:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 220
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getDayPart()F

    move-result v1

    add-float/2addr v0, v1

    .line 222
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->tornados:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;

    .line 223
    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$500(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)J

    move-result-wide v3

    long-to-float v3, v3

    sub-float v3, v0, v3

    .line 224
    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$600(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)J

    move-result-wide v4

    long-to-float v4, v4

    sub-float/2addr v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    .line 225
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v6, 0x3e800000    # 0.25f

    mul-float/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 226
    invoke-static {v2, v4}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$1302(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    .line 227
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p1, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 229
    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$700(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v4

    invoke-static {v2, v4}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$102(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    .line 230
    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$900(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v4

    mul-float/2addr v4, v3

    invoke-static {v2, v4}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$116(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    mul-float v4, v3, v3

    .line 231
    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$300(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v5

    mul-float/2addr v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-static {v2, v5}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$116(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    .line 233
    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$800(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v5

    invoke-static {v2, v5}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$202(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    .line 234
    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$1000(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v5

    mul-float/2addr v3, v5

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$216(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    .line 235
    invoke-static {v2}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$400(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v3

    mul-float/2addr v4, v3

    div-float/2addr v4, v6

    invoke-static {v2, v4}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$216(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    .line 237
    invoke-virtual {p0, v2, p1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->drawTornado(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;Lio/blueflower/stapel2d/drawing/Engine;)V

    goto :goto_1f

    :catchall_94
    move-exception p1

    goto :goto_9d

    :cond_96
    const/16 v0, 0xff

    .line 240
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V
    :try_end_9b
    .catchall {:try_start_1 .. :try_end_9b} :catchall_94

    .line 241
    monitor-exit p0

    return-void

    :goto_9d
    :try_start_9d
    monitor-exit p0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_94

    throw p1
.end method

.method public final drawTornado(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v8, p2

    .line 244
    invoke-static/range {p1 .. p1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$100(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v9

    .line 245
    invoke-static/range {p1 .. p1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$200(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v10

    float-to-double v1, v9

    .line 246
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    float-to-double v2, v10

    .line 247
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v3, v1

    sub-float v3, v9, v3

    int-to-float v4, v2

    sub-float v4, v10, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v5, v3

    sub-float/2addr v5, v4

    mul-float v7, v6, v5

    .line 250
    iget-object v11, v0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v11

    invoke-virtual {v11, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainAvgHeight(II)F

    move-result v11

    mul-float/2addr v7, v11

    mul-float/2addr v5, v3

    iget-object v11, v0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    .line 251
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v11

    add-int/lit8 v12, v1, 0x1

    invoke-virtual {v11, v12, v2}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainAvgHeight(II)F

    move-result v11

    mul-float/2addr v5, v11

    add-float/2addr v7, v5

    mul-float/2addr v6, v4

    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    .line 252
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainAvgHeight(II)F

    move-result v1

    mul-float/2addr v6, v1

    add-float/2addr v7, v6

    mul-float/2addr v3, v4

    iget-object v1, v0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    .line 253
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {v1, v12, v2}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainAvgHeight(II)F

    move-result v1

    mul-float/2addr v3, v1

    add-float/2addr v7, v3

    .line 255
    iget-object v1, v0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v9, v10}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(FF)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    .line 256
    iget-object v3, v0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, v9, v10}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(FF)F

    move-result v3

    add-float/2addr v3, v2

    .line 257
    iget-object v2, v0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v2

    .line 258
    invoke-virtual {v2, v1, v3}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 259
    invoke-virtual {v2, v1, v3}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    neg-float v3, v7

    const/high16 v5, 0x41400000    # 12.0f

    mul-float/2addr v3, v5

    .line 260
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v2

    mul-float/2addr v3, v2

    .line 261
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 263
    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v11

    .line 264
    invoke-static/range {p1 .. p1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$1100(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)I

    move-result v5

    add-int/2addr v5, v11

    int-to-float v5, v5

    const/high16 v12, 0x43480000    # 200.0f

    div-float/2addr v5, v12

    .line 265
    iget-object v6, v0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->tornadoAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget v6, v6, Linfo/flowersoft/theotown/draft/AnimationDraft;->speed:F

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    .line 266
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 267
    iget-object v6, v0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->tornadoAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v7, v6

    float-to-double v13, v5

    move v15, v12

    move-wide/from16 v16, v13

    .line 268
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    rem-int/2addr v12, v7

    aget v6, v6, v12

    .line 269
    iget-object v12, v0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->tornadoAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v12, v12, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    rem-int/2addr v13, v7

    aget v7, v12, v13

    .line 270
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    int-to-float v12, v12

    sub-float/2addr v5, v12

    .line 272
    iget-object v12, v0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v13, v12

    .line 273
    invoke-virtual {v8, v13, v13}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 274
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v13

    int-to-float v4, v4

    int-to-float v1, v1

    add-float/2addr v1, v3

    move v3, v7

    move v7, v5

    move v5, v6

    move v6, v3

    move v3, v4

    move v4, v1

    move-object v1, v13

    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/drawing/Drawing;->draw(Lio/blueflower/stapel2d/drawing/Image;FFIIFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 275
    invoke-virtual {v8, v12, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 277
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 278
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 279
    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v1, v5}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v6

    if-eqz v6, :cond_125

    .line 281
    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Linfo/flowersoft/theotown/city/Tiles;->isGroundWater(II)Z

    move-result v1

    if-eqz v1, :cond_108

    .line 282
    iget-object v1, v0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->waterAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    goto :goto_10a

    .line 284
    :cond_108
    iget-object v1, v0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->landAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 286
    :goto_10a
    iget v5, v1, Linfo/flowersoft/theotown/draft/AnimationDraft;->speed:F

    invoke-static/range {p1 .. p1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$1100(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)I

    move-result v6

    add-int/2addr v11, v6

    int-to-float v6, v11

    mul-float/2addr v5, v6

    div-float/2addr v5, v15

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 287
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 288
    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v6, v1

    rem-int/2addr v5, v6

    aget v1, v1, v5

    .line 289
    invoke-virtual {v8, v2, v3, v4, v1}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_125
    return-void
.end method

.method public getAutoProbability()F
    .registers 2

    .line 0
    const v0, 0x3ba3d70a    # 0.005f

    return v0
.end method

.method public declared-synchronized getLocation()[I
    .registers 3

    monitor-enter p0

    .line 329
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->tornados:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 330
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->tornados:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;

    .line 331
    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$100(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$200(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v0

    float-to-int v0, v0

    filled-new-array {v1, v0}, [I

    move-result-object v0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v0

    :catchall_22
    move-exception v0

    goto :goto_27

    .line 333
    :cond_24
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_27
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_22

    throw v0
.end method

.method public declared-synchronized isActive()Z
    .registers 2

    monitor-enter p0

    .line 295
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->tornados:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public isAutoEnabled()Z
    .registers 2

    .line 338
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->disasterTornado:Z

    return v0
.end method

.method public declared-synchronized issue(II)Z
    .registers 11

    monitor-enter p0

    .line 300
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    .line 302
    new-instance v2, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;-><init>(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$1;)V

    .line 303
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-static {v2, v4}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$1102(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;I)I

    .line 304
    invoke-static {v2, v0, v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$502(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;J)J

    const/16 v4, 0x1e

    .line 305
    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    const-wide/16 v4, 0x1e

    add-long/2addr v0, v4

    invoke-static {v2, v0, v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$602(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;J)J

    int-to-float p1, p1

    .line 306
    invoke-static {v2, p1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$102(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    int-to-float p2, p2

    .line 307
    invoke-static {v2, p2}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$202(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    .line 308
    invoke-static {v2, p1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$702(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    .line 309
    invoke-static {v2, p2}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$802(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    .line 310
    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p1, p2

    const v0, 0x40490fd0

    mul-float/2addr p1, v0

    .line 311
    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-double v4, p1

    .line 312
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float p1, v6

    mul-float/2addr p1, v0

    invoke-static {v2, p1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$902(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    .line 313
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float p1, v6

    mul-float/2addr p1, v0

    invoke-static {v2, p1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$1002(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    const/high16 p1, 0x41200000    # 10.0f

    div-float/2addr v0, p1

    .line 315
    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result p1

    mul-float/2addr p1, p2

    sub-float/2addr p1, v1

    float-to-double p1, p1

    const-wide v6, 0x3ff921f9f01b866eL    # 1.570795

    mul-double/2addr p1, v6

    add-double/2addr v4, p1

    double-to-float p1, v4

    float-to-double p1, p1

    .line 316
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float/2addr v1, v0

    invoke-static {v2, v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$302(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    .line 317
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float/2addr v0, p1

    invoke-static {v2, v0}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$402(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    .line 319
    iget-object p1, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->tornados:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->startSound(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)V

    .line 322
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultWeather;

    const p2, 0x95959

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/components/DefaultWeather;->setTime(I)V
    :try_end_99
    .catchall {:try_start_1 .. :try_end_99} :catchall_9c

    .line 324
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_9c
    move-exception p1

    :try_start_9d
    monitor-exit p0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9c

    throw p1
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 60
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "tornados"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 111
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 62
    :cond_19
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 63
    :goto_1c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_138

    .line 64
    new-instance v0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;-><init>(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$1;)V

    .line 65
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 66
    :goto_2b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 67
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_13e

    goto/16 :goto_c3

    :sswitch_42
    const-string v3, "issue day"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    goto/16 :goto_c3

    :cond_4c
    const/16 v2, 0xa

    goto/16 :goto_c3

    :sswitch_50
    const-string v3, "acc y"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    goto/16 :goto_c3

    :cond_5a
    const/16 v2, 0x9

    goto/16 :goto_c3

    :sswitch_5e
    const-string v3, "acc x"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    goto/16 :goto_c3

    :cond_68
    const/16 v2, 0x8

    goto/16 :goto_c3

    :sswitch_6c
    const-string v3, "y"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    goto :goto_c3

    :cond_75
    const/4 v2, 0x7

    goto :goto_c3

    :sswitch_77
    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_80

    goto :goto_c3

    :cond_80
    const/4 v2, 0x6

    goto :goto_c3

    :sswitch_82
    const-string v3, "time shift"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8b

    goto :goto_c3

    :cond_8b
    const/4 v2, 0x5

    goto :goto_c3

    :sswitch_8d
    const-string v3, "end day"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_96

    goto :goto_c3

    :cond_96
    const/4 v2, 0x4

    goto :goto_c3

    :sswitch_98
    const-string v3, "start y"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a1

    goto :goto_c3

    :cond_a1
    const/4 v2, 0x3

    goto :goto_c3

    :sswitch_a3
    const-string v3, "start x"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    goto :goto_c3

    :cond_ac
    const/4 v2, 0x2

    goto :goto_c3

    :sswitch_ae
    const-string v3, "speed y"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b7

    goto :goto_c3

    :cond_b7
    const/4 v2, 0x1

    goto :goto_c3

    :sswitch_b9
    const-string v3, "speed x"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c2

    goto :goto_c3

    :cond_c2
    const/4 v2, 0x0

    :goto_c3
    packed-switch v2, :pswitch_data_16c

    .line 102
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_2b

    .line 81
    :pswitch_cb
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$502(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;J)J

    goto/16 :goto_2b

    .line 78
    :pswitch_d4
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$402(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    goto/16 :goto_2b

    .line 75
    :pswitch_dd
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$302(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    goto/16 :goto_2b

    .line 72
    :pswitch_e6
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$202(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    goto/16 :goto_2b

    .line 69
    :pswitch_ef
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$102(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    goto/16 :goto_2b

    .line 99
    :pswitch_f8
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$1102(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;I)I

    goto/16 :goto_2b

    .line 84
    :pswitch_101
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$602(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;J)J

    goto/16 :goto_2b

    .line 90
    :pswitch_10a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$802(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    goto/16 :goto_2b

    .line 87
    :pswitch_113
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$702(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    goto/16 :goto_2b

    .line 96
    :pswitch_11c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$1002(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    goto/16 :goto_2b

    .line 93
    :pswitch_125
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextFloat()F

    move-result v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$902(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F

    goto/16 :goto_2b

    .line 105
    :cond_12e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    .line 106
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->tornados:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1c

    .line 108
    :cond_138
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_0

    :cond_13d
    return-void

    :sswitch_data_13e
    .sparse-switch
        -0x77b5f121 -> :sswitch_b9
        -0x77b5f120 -> :sswitch_ae
        -0x7114c7c6 -> :sswitch_a3
        -0x7114c7c5 -> :sswitch_98
        -0x5fe44d29 -> :sswitch_8d
        -0x27d13a91 -> :sswitch_82
        0x78 -> :sswitch_77
        0x79 -> :sswitch_6c
        0x5856099 -> :sswitch_5e
        0x585609a -> :sswitch_50
        0xaeba3d5 -> :sswitch_42
    .end sparse-switch

    :pswitch_data_16c
    .packed-switch 0x0
        :pswitch_125
        :pswitch_11c
        :pswitch_113
        :pswitch_10a
        :pswitch_101
        :pswitch_f8
        :pswitch_ef
        :pswitch_e6
        :pswitch_dd
        :pswitch_d4
        :pswitch_cb
    .end packed-switch
.end method

.method public prepare()V
    .registers 3

    .line 50
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Disaster;->prepare()V

    .line 52
    new-instance v0, Linfo/flowersoft/theotown/util/SafeListAccessor;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->tornados:Ljava/util/List;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;

    .line 53
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->startSound(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)V

    goto :goto_e

    :cond_1e
    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    const-string v0, "tornados"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 119
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->tornados:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;

    .line 120
    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$1200(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 121
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 122
    const-string v2, "x"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$100(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 123
    const-string v2, "y"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$200(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 124
    const-string v2, "acc x"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$300(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 125
    const-string v2, "acc y"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$400(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 126
    const-string v2, "issue day"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$500(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 127
    const-string v2, "end day"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$600(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 128
    const-string v2, "start x"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$700(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 129
    const-string v2, "start y"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$800(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 130
    const-string v2, "speed x"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$900(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 131
    const-string v2, "speed y"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$1000(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(F)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 132
    const-string v2, "time shift"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    invoke-static {v1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$1100(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)I

    move-result v1

    invoke-interface {v2, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 133
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto/16 :goto_f

    .line 136
    :cond_b8
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public final startSound(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)V
    .registers 7

    .line 140
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0xf

    .line 141
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    .line 142
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_WIND:I

    sget-object v2, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v3, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$1;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, p0, v4, p1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$1;-><init>(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)V

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playLoop(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    return-void
.end method

.method public declared-synchronized update()V
    .registers 15

    monitor-enter p0

    .line 177
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->tornados:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c9

    if-eqz v0, :cond_b

    .line 178
    monitor-exit p0

    return-void

    .line 181
    :cond_b
    :try_start_b
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    .line 182
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v1

    long-to-float v1, v1

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/DefaultDate;->getDayPart()F

    move-result v2

    add-float/2addr v1, v2

    .line 184
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->tornados:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 185
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 186
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;

    .line 187
    invoke-static {v3}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$100(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 188
    invoke-static {v3}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$200(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 190
    invoke-static {v3}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$600(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)J

    move-result-wide v6

    long-to-float v6, v6

    cmpl-float v6, v1, v6

    if-gtz v6, :cond_cb

    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v4, v5}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v6

    if-nez v6, :cond_54

    goto/16 :goto_cb

    .line 194
    :cond_54
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v3
    :try_end_57
    .catchall {:try_start_b .. :try_end_57} :catchall_c9

    add-int/lit8 v6, v4, -0x4

    :goto_59
    add-int/lit8 v7, v4, 0x4

    if-gt v6, v7, :cond_c4

    add-int/lit8 v7, v5, -0x4

    :goto_5f
    add-int/lit8 v8, v5, 0x4

    if-gt v7, v8, :cond_c1

    sub-int v8, v6, v4

    mul-int/2addr v8, v8

    sub-int v9, v7, v5

    mul-int/2addr v9, v9

    add-int/2addr v8, v9

    int-to-double v8, v8

    .line 198
    :try_start_6b
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    sget-object v9, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v9, v10

    mul-float/2addr v8, v9

    const/4 v9, 0x4

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_be

    .line 199
    iget-object v8, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8, v6, v7}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v8

    if-eqz v8, :cond_be

    .line 200
    invoke-virtual {v0, v6, v7}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v8

    if-eqz v8, :cond_b7

    .line 201
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->isLocked()Z

    move-result v9

    if-nez v9, :cond_b7

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v9

    iget-boolean v9, v9, Linfo/flowersoft/theotown/draft/BuildingDraft;->destroyable:Z

    if-eqz v9, :cond_b7

    .line 202
    iget-object v9, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v10, 0xf

    .line 203
    invoke-virtual {v9, v10}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v9

    check-cast v9, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    .line 204
    sget v10, Linfo/flowersoft/theotown/resources/Resources;->SOUND_DESTROY:I

    sget-object v11, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v12, Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;

    iget-object v13, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v12, v13, v8}, Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/objects/Building;)V

    invoke-virtual {v9, v10, v11, v12}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playOnce(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    goto :goto_b7

    :catchall_b5
    move-exception v0

    goto :goto_c7

    .line 207
    :cond_b7
    :goto_b7
    iget-object v8, p0, Linfo/flowersoft/theotown/city/components/Disaster;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->destroy(IIZLvm2/LuaValue;)V

    :cond_be
    add-int/lit8 v7, v7, 0x1

    goto :goto_5f

    :cond_c1
    add-int/lit8 v6, v6, 0x1

    goto :goto_59

    .line 211
    :cond_c4
    monitor-exit v3

    goto/16 :goto_25

    :goto_c7
    monitor-exit v3
    :try_end_c8
    .catchall {:try_start_6b .. :try_end_c8} :catchall_b5

    :try_start_c8
    throw v0

    :catchall_c9
    move-exception v0

    goto :goto_d6

    :cond_cb
    :goto_cb
    const/4 v4, 0x1

    .line 191
    invoke-static {v3, v4}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$1202(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;Z)Z

    .line 192
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_d2
    .catchall {:try_start_c8 .. :try_end_d2} :catchall_c9

    goto/16 :goto_25

    .line 214
    :cond_d4
    monitor-exit p0

    return-void

    :goto_d6
    :try_start_d6
    monitor-exit p0
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_c9

    throw v0
.end method

###### Class info.flowersoft.theotown.components.disaster.TornadoDisaster.AnonymousClass1 (info.flowersoft.theotown.components.disaster.TornadoDisaster$1)
.class Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$1;
.super Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;
.source "TornadoDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->startSound(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;

.field public final synthetic val$tornado:Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 142
    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$1;->this$0:Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;

    iput-object p3, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$1;->val$tornado:Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public getTileHeight()I
    .registers 2

    .line 0
    const/4 v0, 0x5

    return v0
.end method

.method public getTileWidth()I
    .registers 2

    .line 0
    const/4 v0, 0x5

    return v0
.end method

.method public getTileX()F
    .registers 3

    .line 145
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$1;->val$tornado:Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$100(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public getTileY()F
    .registers 3

    .line 150
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$1;->val$tornado:Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$200(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public getVolume()F
    .registers 2

    .line 170
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$1;->val$tornado:Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$1300(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 165
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$1;->val$tornado:Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->access$1200(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

###### Class info.flowersoft.theotown.components.disaster.TornadoDisaster.Tornado (info.flowersoft.theotown.components.disaster.TornadoDisaster$Tornado)
.class public Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;
.super Ljava/lang/Object;
.source "TornadoDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Tornado"
.end annotation


# instance fields
.field public accX:F

.field public accY:F

.field public alpha:F

.field public endDay:J

.field public invalid:Z

.field public issueDay:J

.field public speedX:F

.field public speedY:F

.field public startX:F

.field public startY:F

.field public final synthetic this$0:Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;

.field public timeShift:I

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 346
    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->this$0:Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$1;)V
    .registers 3

    .line 346
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;-><init>(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;)V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F
    .registers 1

    .line 346
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->x:F

    return p0
.end method

.method public static synthetic access$1000(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F
    .registers 1

    .line 346
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->speedY:F

    return p0
.end method

.method public static synthetic access$1002(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F
    .registers 2

    .line 346
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->speedY:F

    return p1
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F
    .registers 2

    .line 346
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->x:F

    return p1
.end method

.method public static synthetic access$1100(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)I
    .registers 1

    .line 346
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->timeShift:I

    return p0
.end method

.method public static synthetic access$1102(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;I)I
    .registers 2

    .line 346
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->timeShift:I

    return p1
.end method

.method public static synthetic access$116(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F
    .registers 3

    .line 346
    iget v0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->x:F

    return v0
.end method

.method public static synthetic access$1200(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)Z
    .registers 1

    .line 346
    iget-boolean p0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->invalid:Z

    return p0
.end method

.method public static synthetic access$1202(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;Z)Z
    .registers 2

    .line 346
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->invalid:Z

    return p1
.end method

.method public static synthetic access$1300(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F
    .registers 1

    .line 346
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->alpha:F

    return p0
.end method

.method public static synthetic access$1302(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F
    .registers 2

    .line 346
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->alpha:F

    return p1
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F
    .registers 1

    .line 346
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->y:F

    return p0
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F
    .registers 2

    .line 346
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->y:F

    return p1
.end method

.method public static synthetic access$216(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F
    .registers 3

    .line 346
    iget v0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->y:F

    return v0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F
    .registers 1

    .line 346
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->accX:F

    return p0
.end method

.method public static synthetic access$302(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F
    .registers 2

    .line 346
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->accX:F

    return p1
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F
    .registers 1

    .line 346
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->accY:F

    return p0
.end method

.method public static synthetic access$402(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F
    .registers 2

    .line 346
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->accY:F

    return p1
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)J
    .registers 3

    .line 346
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->issueDay:J

    return-wide v0
.end method

.method public static synthetic access$502(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;J)J
    .registers 3

    .line 346
    iput-wide p1, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->issueDay:J

    return-wide p1
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)J
    .registers 3

    .line 346
    iget-wide v0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->endDay:J

    return-wide v0
.end method

.method public static synthetic access$602(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;J)J
    .registers 3

    .line 346
    iput-wide p1, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->endDay:J

    return-wide p1
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F
    .registers 1

    .line 346
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->startX:F

    return p0
.end method

.method public static synthetic access$702(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F
    .registers 2

    .line 346
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->startX:F

    return p1
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F
    .registers 1

    .line 346
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->startY:F

    return p0
.end method

.method public static synthetic access$802(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F
    .registers 2

    .line 346
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->startY:F

    return p1
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)F
    .registers 1

    .line 346
    iget p0, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->speedX:F

    return p0
.end method

.method public static synthetic access$902(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;F)F
    .registers 2

    .line 346
    iput p1, p0, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;->speedX:F

    return p1
.end method

###### Class info.flowersoft.theotown.components.disaster.TornadoDisaster$$ExternalSyntheticLambda0 (info.flowersoft.theotown.components.disaster.TornadoDisaster$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;

    check-cast p2, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/components/disaster/TornadoDisaster;->$r8$lambda$pX8R226V21h3vmqy-zWp-J2P1B4(Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;Linfo/flowersoft/theotown/components/disaster/TornadoDisaster$Tornado;)I

    move-result p1

    return p1
.end method
