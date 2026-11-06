###### Class info.flowersoft.theotown.drawing.Drawing (info.flowersoft.theotown.drawing.Drawing)
.class public final Linfo/flowersoft/theotown/drawing/Drawing;
.super Ljava/lang/Object;
.source "Drawing.java"


# static fields
.field public static instance:Linfo/flowersoft/theotown/drawing/Drawing;


# instance fields
.field public final CORNER_MID_COS:F

.field public final FIRE_DRAFT:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final IS_NEW_MARKER:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final animationSpot:Linfo/flowersoft/theotown/draft/AnimationSpot;

.field public rectCoords:[F

.field public final smoke:Linfo/flowersoft/theotown/draft/SmokeDraft;

.field public final smokeSpot:Linfo/flowersoft/theotown/draft/SmokeSpot;

.field public final tempCoords:[F


# direct methods
.method public constructor <init>()V
    .registers 11

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 29
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Linfo/flowersoft/theotown/drawing/Drawing;->CORNER_MID_COS:F

    .line 49
    const-string v0, "$animationfire04"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v3, p0, Linfo/flowersoft/theotown/drawing/Drawing;->FIRE_DRAFT:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 50
    const-string v0, "$qualm01"

    const-class v2, Linfo/flowersoft/theotown/draft/SmokeDraft;

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Linfo/flowersoft/theotown/draft/SmokeDraft;

    iput-object v5, p0, Linfo/flowersoft/theotown/drawing/Drawing;->smoke:Linfo/flowersoft/theotown/draft/SmokeDraft;

    .line 51
    new-instance v4, Linfo/flowersoft/theotown/draft/SmokeSpot;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Linfo/flowersoft/theotown/draft/SmokeSpot;-><init>(Linfo/flowersoft/theotown/draft/SmokeDraft;IILio/blueflower/stapel2d/drawing/Color;[I)V

    iput-object v4, p0, Linfo/flowersoft/theotown/drawing/Drawing;->smokeSpot:Linfo/flowersoft/theotown/draft/SmokeSpot;

    .line 52
    new-instance v2, Linfo/flowersoft/theotown/draft/AnimationSpot;

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v9}, Linfo/flowersoft/theotown/draft/AnimationSpot;-><init>(Linfo/flowersoft/theotown/draft/AnimationDraft;IIII[II)V

    iput-object v2, p0, Linfo/flowersoft/theotown/drawing/Drawing;->animationSpot:Linfo/flowersoft/theotown/draft/AnimationSpot;

    .line 53
    const-string v0, "$anim_ui_new00"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/drawing/Drawing;->IS_NEW_MARKER:Linfo/flowersoft/theotown/draft/AnimationDraft;

    const/4 v0, 0x4

    .line 56
    new-array v0, v0, [F

    iput-object v0, p0, Linfo/flowersoft/theotown/drawing/Drawing;->tempCoords:[F

    return-void
.end method

.method public static dispose()V
    .registers 1

    const/4 v0, 0x0

    .line 41
    sput-object v0, Linfo/flowersoft/theotown/drawing/Drawing;->instance:Linfo/flowersoft/theotown/drawing/Drawing;

    return-void
.end method

.method public static getInstance()Linfo/flowersoft/theotown/drawing/Drawing;
    .registers 1

    .line 34
    sget-object v0, Linfo/flowersoft/theotown/drawing/Drawing;->instance:Linfo/flowersoft/theotown/drawing/Drawing;

    if-nez v0, :cond_b

    .line 35
    new-instance v0, Linfo/flowersoft/theotown/drawing/Drawing;

    invoke-direct {v0}, Linfo/flowersoft/theotown/drawing/Drawing;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/drawing/Drawing;->instance:Linfo/flowersoft/theotown/drawing/Drawing;

    .line 37
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/drawing/Drawing;->instance:Linfo/flowersoft/theotown/drawing/Drawing;

    return-object v0
.end method


# virtual methods
.method public draw(Lio/blueflower/stapel2d/drawing/Image;FFIIFLio/blueflower/stapel2d/drawing/Engine;)V
    .registers 12

    .line 224
    invoke-virtual {p0, p6}, Linfo/flowersoft/theotown/drawing/Drawing;->smoothSingle(F)F

    move-result p6

    .line 225
    invoke-virtual {p7}, Lio/blueflower/stapel2d/drawing/Engine;->getTransparency()I

    move-result v0

    int-to-float v1, v0

    .line 226
    invoke-virtual {p0, p6}, Linfo/flowersoft/theotown/drawing/Drawing;->transModulator(F)F

    move-result v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p6

    .line 227
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/drawing/Drawing;->transModulator(F)F

    move-result p6

    mul-float/2addr v1, p6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p6

    .line 229
    invoke-virtual {p7, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 230
    invoke-virtual {p7, p1, p2, p3, p4}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 232
    invoke-virtual {p7, p6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 233
    invoke-virtual {p7, p1, p2, p3, p5}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 235
    invoke-virtual {p7, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method

.method public drawAnimatedGadgetCircle(Lio/blueflower/stapel2d/gui/Gadget;II)V
    .registers 11

    .line 407
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    int-to-double v0, v0

    .line 409
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    const/16 v4, 0x7d0

    int-to-long v5, v4

    rem-long/2addr v2, v5

    long-to-float v2, v2

    int-to-float v3, v4

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-float v0, v0

    .line 410
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-virtual {p0, p1, p2, p3, v1}, Linfo/flowersoft/theotown/drawing/Drawing;->drawGadgetCircle(Lio/blueflower/stapel2d/gui/Gadget;IIF)V

    return-void
.end method

.method public drawAnimation(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/AnimationSpot;IFIFILio/blueflower/stapel2d/drawing/Color;Z)V
    .registers 16

    .line 528
    iget p9, p2, Linfo/flowersoft/theotown/draft/AnimationSpot;->flags:I

    if-eqz p9, :cond_7

    and-int/2addr p5, p9

    if-eqz p5, :cond_106

    .line 529
    :cond_7
    iget p5, p2, Linfo/flowersoft/theotown/draft/AnimationSpot;->daysTotal:I

    if-lez p5, :cond_1c

    .line 531
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/Drawer;->absoluteDay:J

    int-to-long v2, p5

    rem-long/2addr v0, v2

    long-to-int p9, v0

    .line 532
    iget v0, p2, Linfo/flowersoft/theotown/draft/AnimationSpot;->startDay:I

    if-lt p9, v0, :cond_106

    iget v1, p2, Linfo/flowersoft/theotown/draft/AnimationSpot;->days:I

    add-int/2addr v0, v1

    rem-int/2addr v0, p5

    if-lt p9, v0, :cond_1c

    goto/16 :goto_106

    .line 535
    :cond_1c
    iget-object p5, p2, Linfo/flowersoft/theotown/draft/AnimationSpot;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 536
    iget-object p9, p5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    if-eqz p9, :cond_106

    array-length p9, p9

    if-nez p9, :cond_27

    goto/16 :goto_106

    .line 538
    :cond_27
    iget p9, p5, Linfo/flowersoft/theotown/draft/AnimationDraft;->speed:F

    mul-float/2addr p4, p9

    iget p9, p2, Linfo/flowersoft/theotown/draft/AnimationSpot;->shift:I

    int-to-float p9, p9

    add-float/2addr p4, p9

    mul-float/2addr p4, p6

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    add-int/2addr p4, p7

    .line 539
    iget-boolean p6, p5, Linfo/flowersoft/theotown/draft/AnimationDraft;->rotationAware:Z

    const/4 p7, 0x1

    if-eqz p6, :cond_56

    .line 540
    iget-object p6, p5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length p6, p6

    div-int/lit8 p6, p6, 0x4

    invoke-static {p6, p7}, Ljava/lang/Math;->max(II)I

    move-result p6

    .line 541
    rem-int/2addr p4, p6

    iget p9, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    rsub-int/lit8 p9, p9, 0x8

    iget v0, p2, Linfo/flowersoft/theotown/draft/AnimationSpot;->frameShift:I

    mul-int/2addr v0, p3

    rem-int/lit8 v0, v0, 0x4

    add-int/2addr p9, v0

    rem-int/lit8 p9, p9, 0x4

    mul-int/2addr p6, p9

    add-int/2addr p4, p6

    iget-object p3, p5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length p3, p3

    rem-int/2addr p4, p3

    goto :goto_5a

    .line 544
    :cond_56
    iget-object p3, p5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length p3, p3

    rem-int/2addr p4, p3

    .line 547
    :goto_5a
    iget-boolean p3, p5, Linfo/flowersoft/theotown/draft/AnimationDraft;->lightSwitching:Z

    if-eqz p3, :cond_9a

    iget p3, p5, Linfo/flowersoft/theotown/draft/AnimationDraft;->nightLightProbability:F

    iget p6, p2, Linfo/flowersoft/theotown/draft/AnimationSpot;->nightLightProbability:F

    mul-float/2addr p3, p6

    const/high16 p6, 0x3f800000    # 1.0f

    cmpg-float p3, p3, p6

    if-gez p3, :cond_9a

    .line 548
    iget p3, p1, Linfo/flowersoft/theotown/city/Drawer;->bTileX:I

    mul-int/lit16 p3, p3, 0xed

    iget p6, p1, Linfo/flowersoft/theotown/city/Drawer;->bTileY:I

    mul-int/lit16 p6, p6, 0xe07

    add-int/2addr p3, p6

    iget p6, p2, Linfo/flowersoft/theotown/draft/AnimationSpot;->seed:I

    add-int/2addr p3, p6

    int-to-long v0, p3

    iget-wide v2, p1, Linfo/flowersoft/theotown/city/Drawer;->daytimeDay:D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    const-wide/16 v4, 0xbab

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x64

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    long-to-float p3, v0

    const/high16 p6, 0x42c80000    # 100.0f

    div-float/2addr p3, p6

    .line 549
    iget p6, p5, Linfo/flowersoft/theotown/draft/AnimationDraft;->nightLightProbability:F

    iget p9, p2, Linfo/flowersoft/theotown/draft/AnimationSpot;->nightLightProbability:F

    mul-float/2addr p6, p9

    cmpl-float p3, p3, p6

    if-lez p3, :cond_9a

    goto/16 :goto_106

    .line 554
    :cond_9a
    iget-object p3, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 555
    iget-object p6, p5, Linfo/flowersoft/theotown/draft/AnimationDraft;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    const/4 p9, 0x0

    if-nez p6, :cond_ae

    iget-object p6, p2, Linfo/flowersoft/theotown/draft/AnimationSpot;->color:Lio/blueflower/stapel2d/drawing/Color;

    if-nez p6, :cond_ae

    if-eqz p8, :cond_a8

    goto :goto_ae

    :cond_a8
    move p6, p9

    move p7, p6

    move v0, p7

    move v1, v0

    move v2, v1

    goto :goto_e8

    .line 556
    :cond_ae
    :goto_ae
    invoke-virtual {p3}, Lio/blueflower/stapel2d/drawing/Engine;->getRed()I

    move-result p6

    .line 557
    invoke-virtual {p3}, Lio/blueflower/stapel2d/drawing/Engine;->getGreen()I

    move-result v0

    .line 558
    invoke-virtual {p3}, Lio/blueflower/stapel2d/drawing/Engine;->getBlue()I

    move-result v1

    .line 559
    invoke-virtual {p3}, Lio/blueflower/stapel2d/drawing/Engine;->getTransparency()I

    move-result v2

    .line 562
    iget-object v3, p5, Linfo/flowersoft/theotown/draft/AnimationDraft;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v3, :cond_dc

    .line 564
    array-length v4, v3

    if-le v4, p7, :cond_d6

    .line 565
    iget v4, p1, Linfo/flowersoft/theotown/city/Drawer;->bTileX:I

    mul-int/lit16 v4, v4, 0xed

    iget v5, p1, Linfo/flowersoft/theotown/city/Drawer;->bTileY:I

    mul-int/lit16 v5, v5, 0xe07

    add-int/2addr v4, v5

    iget v5, p2, Linfo/flowersoft/theotown/draft/AnimationSpot;->seed:I

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    .line 566
    array-length v5, v3

    rem-int/2addr v4, v5

    goto :goto_d7

    :cond_d6
    move v4, p9

    .line 568
    :goto_d7
    aget-object v3, v3, v4

    invoke-virtual {p0, p3, v3}, Linfo/flowersoft/theotown/drawing/Drawing;->tintEngineColor(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 571
    :cond_dc
    iget-object v3, p2, Linfo/flowersoft/theotown/draft/AnimationSpot;->color:Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v3, :cond_e3

    .line 572
    invoke-virtual {p0, p3, v3}, Linfo/flowersoft/theotown/drawing/Drawing;->tintEngineColor(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_e3
    if-eqz p8, :cond_e8

    .line 576
    invoke-virtual {p0, p3, p8}, Linfo/flowersoft/theotown/drawing/Drawing;->tintEngineColor(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 580
    :cond_e8
    :goto_e8
    iget-boolean p8, p1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 581
    iget-boolean v3, p5, Linfo/flowersoft/theotown/draft/AnimationDraft;->light:Z

    if-eqz v3, :cond_f0

    iput-boolean p9, p1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 583
    :cond_f0
    sget-object p9, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v3, p2, Linfo/flowersoft/theotown/draft/AnimationSpot;->x:I

    int-to-float v3, v3

    iget p2, p2, Linfo/flowersoft/theotown/draft/AnimationSpot;->y:I

    int-to-float p2, p2

    iget-object p5, p5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget p4, p5, p4

    invoke-virtual {p1, p9, v3, p2, p4}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 585
    iput-boolean p8, p1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    if-eqz p7, :cond_106

    .line 588
    invoke-virtual {p3, p6, v0, v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(IIII)V

    :cond_106
    :goto_106
    return-void
.end method

.method public drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFILinfo/flowersoft/theotown/city/objects/AnimationSpots;Z)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/Drawer;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/AnimationSpot;",
            ">;[[IIIFI",
            "Linfo/flowersoft/theotown/city/objects/AnimationSpots;",
            "Z)V"
        }
    .end annotation

    if-eqz p8, :cond_12

    .line 460
    invoke-virtual/range {p8 .. p8}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->getSpeeds()[F

    move-result-object v0

    .line 461
    invoke-virtual/range {p8 .. p8}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->getOffsets()[I

    move-result-object v1

    .line 462
    invoke-virtual/range {p8 .. p8}, Linfo/flowersoft/theotown/city/objects/AnimationSpots;->getColors()[Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    goto :goto_16

    :cond_12
    const/4 v0, 0x0

    move-object v9, v0

    move-object v10, v9

    move-object v11, v10

    .line 469
    :goto_16
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    const/4 v13, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v12, p9

    .line 465
    invoke-virtual/range {v1 .. v14}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFI[F[I[Lio/blueflower/stapel2d/drawing/Color;ZII)V

    return-void
.end method

.method public drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFIZ)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/Drawer;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/AnimationSpot;",
            ">;[[IIIFIZ)V"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v11, p8

    .line 447
    invoke-virtual/range {v0 .. v11}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFI[F[I[Lio/blueflower/stapel2d/drawing/Color;Z)V

    return-void
.end method

.method public drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFI[F[I[Lio/blueflower/stapel2d/drawing/Color;Z)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/Drawer;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/AnimationSpot;",
            ">;[[IIIFI[F[I[",
            "Lio/blueflower/stapel2d/drawing/Color;",
            "Z)V"
        }
    .end annotation

    .line 477
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v13}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFI[F[I[Lio/blueflower/stapel2d/drawing/Color;ZII)V

    return-void
.end method

.method public drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFI[F[I[Lio/blueflower/stapel2d/drawing/Color;ZII)V
    .registers 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/Drawer;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/AnimationSpot;",
            ">;[[IIIFI[F[I[",
            "Lio/blueflower/stapel2d/drawing/Color;",
            "ZII)V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-nez v1, :cond_7c

    move/from16 v1, p12

    move/from16 v5, p13

    :goto_e
    if-ge v1, v5, :cond_ef

    .line 484
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Linfo/flowersoft/theotown/draft/AnimationSpot;

    .line 485
    iget-object v6, v9, Linfo/flowersoft/theotown/draft/AnimationSpot;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 486
    iget-boolean v7, v9, Linfo/flowersoft/theotown/draft/AnimationSpot;->rotationAware:Z

    if-eqz v7, :cond_20

    move/from16 v7, p4

    goto :goto_22

    :cond_20
    move/from16 v7, p5

    .line 487
    :goto_22
    invoke-virtual {v9, v7}, Linfo/flowersoft/theotown/draft/AnimationSpot;->isTargeted(I)Z

    move-result v7

    if-eqz v7, :cond_79

    if-nez p11, :cond_2e

    iget-boolean v7, v6, Linfo/flowersoft/theotown/draft/AnimationDraft;->lightSwitching:Z

    if-nez v7, :cond_79

    :cond_2e
    if-eqz p8, :cond_34

    .line 488
    aget v7, p8, v1

    move v13, v7

    goto :goto_35

    :cond_34
    move v13, v3

    :goto_35
    if-eqz p9, :cond_3b

    .line 489
    aget v7, p9, v1

    move v14, v7

    goto :goto_3c

    :cond_3b
    move v14, v4

    :goto_3c
    if-eqz p10, :cond_4e

    .line 490
    aget-object v7, p10, v1

    move-object v15, v7

    move-object/from16 v8, p1

    move/from16 v10, p4

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v16, p11

    move-object/from16 v7, p0

    goto :goto_5b

    :cond_4e
    move-object v15, v2

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v10, p4

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v16, p11

    .line 491
    :goto_5b
    invoke-virtual/range {v7 .. v16}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimation(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/AnimationSpot;IFIFILio/blueflower/stapel2d/drawing/Color;Z)V

    .line 493
    iget-object v7, v6, Linfo/flowersoft/theotown/draft/AnimationDraft;->animationSpots:Ljava/util/List;

    if-eqz v7, :cond_79

    .line 494
    iget-object v6, v6, Linfo/flowersoft/theotown/draft/AnimationDraft;->animationSpotIndices:[[I

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v19, p4

    move/from16 v20, p5

    move/from16 v21, p6

    move/from16 v22, p7

    move/from16 v23, p11

    move-object/from16 v18, v6

    move-object/from16 v17, v7

    invoke-virtual/range {v15 .. v23}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFIZ)V

    :cond_79
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 499
    :cond_7c
    array-length v5, v1

    rem-int v5, p5, v5

    aget-object v1, v1, v5

    move v5, v4

    .line 500
    :goto_82
    array-length v6, v1

    if-ge v5, v6, :cond_ef

    .line 501
    aget v6, v1, v5

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/AnimationSpot;

    .line 502
    iget-object v7, v6, Linfo/flowersoft/theotown/draft/AnimationSpot;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 503
    iget-boolean v8, v6, Linfo/flowersoft/theotown/draft/AnimationSpot;->rotationAware:Z

    if-eqz v8, :cond_96

    move/from16 v8, p4

    goto :goto_98

    :cond_96
    move/from16 v8, p5

    .line 504
    :goto_98
    invoke-virtual {v6, v8}, Linfo/flowersoft/theotown/draft/AnimationSpot;->isTargeted(I)Z

    move-result v8

    if-eqz v8, :cond_ec

    if-nez p11, :cond_a4

    iget-boolean v8, v7, Linfo/flowersoft/theotown/draft/AnimationDraft;->lightSwitching:Z

    if-nez v8, :cond_ec

    :cond_a4
    if-eqz p8, :cond_ab

    .line 505
    aget v8, p8, v5

    move/from16 v21, v8

    goto :goto_ad

    :cond_ab
    move/from16 v21, v3

    :goto_ad
    if-eqz p9, :cond_b4

    .line 506
    aget v8, p9, v5

    move/from16 v22, v8

    goto :goto_b6

    :cond_b4
    move/from16 v22, v4

    :goto_b6
    if-eqz p10, :cond_cb

    .line 507
    aget-object v8, p10, v5

    move-object/from16 v23, v8

    :goto_bc
    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v18, p4

    move/from16 v19, p6

    move/from16 v20, p7

    move/from16 v24, p11

    move-object/from16 v17, v6

    goto :goto_ce

    :cond_cb
    move-object/from16 v23, v2

    goto :goto_bc

    .line 508
    :goto_ce
    invoke-virtual/range {v15 .. v24}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimation(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/AnimationSpot;IFIFILio/blueflower/stapel2d/drawing/Color;Z)V

    .line 510
    iget-object v6, v7, Linfo/flowersoft/theotown/draft/AnimationDraft;->animationSpots:Ljava/util/List;

    if-eqz v6, :cond_ec

    .line 511
    iget-object v7, v7, Linfo/flowersoft/theotown/draft/AnimationDraft;->animationSpotIndices:[[I

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v19, p4

    move/from16 v20, p5

    move/from16 v21, p6

    move/from16 v22, p7

    move/from16 v23, p11

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    invoke-virtual/range {v15 .. v23}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFIZ)V

    :cond_ec
    add-int/lit8 v5, v5, 0x1

    goto :goto_82

    :cond_ef
    return-void
.end method

.method public drawArrow(IIIIILio/blueflower/stapel2d/drawing/Engine;)V
    .registers 24

    move/from16 v0, p5

    move-object/from16 v7, p6

    .line 257
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    rem-long/2addr v1, v3

    long-to-double v1, v1

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v1, v3

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_39

    const/4 v5, -0x1

    if-eq v0, v3, :cond_36

    if-eq v0, v2, :cond_33

    const/4 v5, 0x3

    if-eq v0, v5, :cond_30

    move v8, v4

    move v9, v8

    goto :goto_3b

    :cond_30
    move v9, v3

    move v8, v4

    goto :goto_3b

    :cond_33
    move v9, v4

    move v8, v5

    goto :goto_3b

    :cond_36
    move v8, v4

    move v9, v5

    goto :goto_3b

    :cond_39
    move v8, v3

    move v9, v4

    :goto_3b
    neg-int v10, v9

    rsub-int/lit8 v0, v9, 0x1

    mul-int v0, v0, p3

    .line 273
    div-int/2addr v0, v2

    add-int v0, p1, v0

    int-to-float v0, v0

    int-to-float v5, v9

    mul-float/2addr v5, v1

    add-float v11, v0, v5

    rsub-int/lit8 v0, v8, 0x1

    mul-int v0, v0, p4

    .line 274
    div-int/2addr v0, v2

    add-int v0, p2, v0

    int-to-float v0, v0

    int-to-float v2, v8

    mul-float/2addr v1, v2

    add-float v12, v0, v1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 277
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 280
    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Engine;->getRed()I

    move-result v13

    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Engine;->getGreen()I

    move-result v14

    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Engine;->getBlue()I

    move-result v15

    .line 281
    invoke-virtual {v7, v4, v4, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    int-to-float v1, v9

    mul-float/2addr v1, v0

    add-float/2addr v1, v11

    int-to-float v4, v8

    mul-float/2addr v4, v0

    add-float/2addr v4, v12

    const/16 v5, 0xb

    mul-int v6, v5, v9

    int-to-float v6, v6

    sub-float v6, v11, v6

    move/from16 p1, v0

    int-to-float v0, v5

    int-to-float v3, v3

    mul-float v3, v3, p1

    add-float/2addr v0, v3

    mul-float/2addr v2, v0

    add-float v3, v6, v2

    mul-int/2addr v5, v8

    int-to-float v5, v5

    sub-float v5, v12, v5

    move/from16 p1, v0

    int-to-float v0, v10

    mul-float v0, v0, p1

    move/from16 v16, v2

    move v2, v4

    add-float v4, v5, v0

    sub-float v6, v6, v16

    sub-float/2addr v5, v0

    move v0, v6

    move v6, v5

    move v5, v0

    move-object/from16 v0, p0

    .line 282
    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTriangle(FFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 290
    invoke-virtual {v7, v13, v14, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    add-int v0, v9, v8

    mul-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    sub-float v3, v11, v0

    add-int v0, v8, v10

    mul-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    sub-float v4, v12, v0

    sub-int/2addr v9, v8

    mul-int/lit8 v9, v9, 0xa

    int-to-float v0, v9

    sub-float v5, v11, v0

    sub-int/2addr v8, v10

    mul-int/lit8 v8, v8, 0xa

    int-to-float v0, v8

    sub-float v6, v12, v0

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    .line 291
    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTriangle(FFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    return-void
.end method

.method public drawArrow(IILio/blueflower/stapel2d/gui/Gadget;I)V
    .registers 13

    .line 253
    invoke-virtual {p3}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v0

    add-int v2, p1, v0

    invoke-virtual {p3}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result p1

    add-int v3, p2, p1

    invoke-virtual {p3}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v5

    invoke-virtual {p3}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object p1

    iget-object v7, p1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    move-object v1, p0

    move v6, p4

    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/drawing/Drawing;->drawArrow(IIIIILio/blueflower/stapel2d/drawing/Engine;)V

    return-void
.end method

.method public drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V
    .registers 24

    sub-float v0, p6, p5

    const/16 v1, 0x20

    int-to-float v2, v1

    div-float/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move v6, v5

    move v11, v6

    move v12, v11

    :goto_c
    if-gt v3, v1, :cond_40

    int-to-float v2, v3

    mul-float/2addr v2, v0

    add-float v2, p5, v2

    float-to-double v7, v2

    .line 319
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    double-to-float v2, v9

    mul-float v2, v2, p7

    .line 320
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v4, v7

    mul-float v4, v4, p8

    mul-float v7, p4, v2

    add-float v9, p1, v7

    mul-float v7, p4, v4

    add-float v10, p2, v7

    mul-float v2, v2, p3

    add-float v7, p1, v2

    mul-float v4, v4, p3

    add-float v8, p2, v4

    if-lez v3, :cond_39

    move-object v4, p0

    move-object/from16 v13, p9

    .line 327
    invoke-virtual/range {v4 .. v13}, Linfo/flowersoft/theotown/drawing/Drawing;->drawQuad(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    :cond_39
    add-int/lit8 v3, v3, 0x1

    move v5, v7

    move v6, v8

    move v11, v9

    move v12, v10

    goto :goto_c

    :cond_40
    return-void
.end method

.method public drawCircle(FFFFLio/blueflower/stapel2d/drawing/Engine;)V
    .registers 16

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const v6, 0x40c90fdb

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v9, p5

    .line 301
    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    return-void
.end method

.method public drawFire(Linfo/flowersoft/theotown/city/Drawer;III)V
    .registers 17

    move/from16 v3, p4

    .line 62
    iget-object v10, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    mul-int/lit8 v4, p3, 0x25

    mul-int/lit16 v5, v3, 0x781

    add-int/2addr v4, v5

    .line 63
    rem-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v4, 0xc

    mul-int/lit16 v4, p3, 0x395

    mul-int/lit16 v5, v3, 0xd9

    add-int/2addr v4, v5

    .line 64
    rem-int/lit8 v7, v4, 0x4

    add-int/lit8 v8, v7, 0x2

    .line 65
    iget v4, p1, Linfo/flowersoft/theotown/city/Drawer;->time:I

    mul-int/lit16 v2, p3, 0x7b3

    mul-int/lit16 v3, v3, 0x7b5

    add-int/2addr v2, v3

    rem-int/lit16 v2, v2, 0x3e8

    add-int/2addr v4, v2

    .line 67
    iget-object v3, p0, Linfo/flowersoft/theotown/drawing/Drawing;->smokeSpot:Linfo/flowersoft/theotown/draft/SmokeSpot;

    iput v6, v3, Linfo/flowersoft/theotown/draft/SmokeSpot;->x:I

    add-int/lit8 v2, v7, -0x6

    .line 68
    div-int/lit8 v9, p2, 0x2

    sub-int/2addr v2, v9

    iput v2, v3, Linfo/flowersoft/theotown/draft/SmokeSpot;->y:I

    .line 69
    div-int/lit8 v2, p2, 0x8

    int-to-float v5, v2

    const/4 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/drawing/Drawing;->drawSmoke(Linfo/flowersoft/theotown/city/Drawer;ILinfo/flowersoft/theotown/draft/SmokeSpot;IF)V

    .line 71
    iget-object v2, p0, Linfo/flowersoft/theotown/drawing/Drawing;->animationSpot:Linfo/flowersoft/theotown/draft/AnimationSpot;

    iput v6, v2, Linfo/flowersoft/theotown/draft/AnimationSpot;->x:I

    sub-int/2addr v7, v9

    .line 72
    iput v7, v2, Linfo/flowersoft/theotown/draft/AnimationSpot;->y:I

    const/16 v2, 0xff

    .line 73
    invoke-virtual {v10, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    const/4 v11, 0x0

    .line 74
    invoke-virtual {p1, v11}, Linfo/flowersoft/theotown/city/Drawer;->setUseShading(Z)V

    .line 75
    iget-object v2, p0, Linfo/flowersoft/theotown/drawing/Drawing;->animationSpot:Linfo/flowersoft/theotown/draft/AnimationSpot;

    int-to-float v3, v4

    const/high16 v4, 0x43480000    # 200.0f

    div-float/2addr v3, v4

    mul-int/lit8 v6, v6, 0x5

    int-to-float v4, v6

    add-float/2addr v3, v4

    mul-int/lit8 v8, v8, 0x61

    int-to-float v4, v8

    add-float/2addr v4, v3

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimation(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/AnimationSpot;IFIFILio/blueflower/stapel2d/drawing/Color;Z)V

    const/4 v0, 0x1

    .line 76
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/Drawer;->setUseShading(Z)V

    .line 77
    invoke-virtual {v10, v11}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    return-void
.end method

.method public drawFires(Linfo/flowersoft/theotown/city/Drawer;IIIIF)V
    .registers 22

    move-object/from16 v1, p1

    move/from16 v10, p2

    .line 81
    iget-object v11, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v12, 0x0

    move v13, v12

    :goto_8
    add-int v0, v10, p3

    const/4 v14, 0x1

    sub-int/2addr v0, v14

    if-ge v13, v0, :cond_67

    if-ge v13, v10, :cond_13

    move v2, v12

    move v0, v13

    goto :goto_18

    :cond_13
    add-int/lit8 v0, v10, -0x1

    sub-int v2, v13, v10

    add-int/2addr v2, v14

    :goto_18
    add-int v3, v0, v2

    mul-int/lit8 v3, v3, 0x20

    .line 92
    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v6, v3, 0x10

    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x10

    .line 93
    div-int/lit8 v7, v0, 0x2

    add-int/lit8 v8, v7, 0x4

    .line 95
    iget-object v3, p0, Linfo/flowersoft/theotown/drawing/Drawing;->smokeSpot:Linfo/flowersoft/theotown/draft/SmokeSpot;

    iput v6, v3, Linfo/flowersoft/theotown/draft/SmokeSpot;->x:I

    add-int/lit8 v0, v7, -0xc

    .line 96
    iput v0, v3, Linfo/flowersoft/theotown/draft/SmokeSpot;->y:I

    .line 97
    div-int/lit8 v4, p4, 0x2

    const/high16 v5, 0x40800000    # 4.0f

    const/4 v2, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/drawing/Drawing;->drawSmoke(Linfo/flowersoft/theotown/city/Drawer;ILinfo/flowersoft/theotown/draft/SmokeSpot;IF)V

    .line 99
    iget-object v2, p0, Linfo/flowersoft/theotown/drawing/Drawing;->animationSpot:Linfo/flowersoft/theotown/draft/AnimationSpot;

    iput v6, v2, Linfo/flowersoft/theotown/draft/AnimationSpot;->x:I

    add-int/lit8 v7, v7, -0x6

    .line 100
    iput v7, v2, Linfo/flowersoft/theotown/draft/AnimationSpot;->y:I

    const/16 v2, 0xff

    .line 101
    invoke-virtual {v11, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 102
    invoke-virtual {v1, v12}, Linfo/flowersoft/theotown/city/Drawer;->setUseShading(Z)V

    .line 103
    iget-object v2, p0, Linfo/flowersoft/theotown/drawing/Drawing;->animationSpot:Linfo/flowersoft/theotown/draft/AnimationSpot;

    mul-int/lit8 v6, v6, 0x5

    int-to-float v3, v6

    add-float v3, p6, v3

    mul-int/lit8 v8, v8, 0x61

    int-to-float v4, v8

    add-float/2addr v4, v3

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move/from16 v3, p5

    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimation(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/AnimationSpot;IFIFILio/blueflower/stapel2d/drawing/Color;Z)V

    .line 104
    invoke-virtual {v1, v14}, Linfo/flowersoft/theotown/city/Drawer;->setUseShading(Z)V

    .line 105
    invoke-virtual {v11, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    :cond_67
    return-void
.end method

.method public drawGadgetCircle(Lio/blueflower/stapel2d/gui/Gadget;II)V
    .registers 5

    .line 403
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, p1, p2, p3, v0}, Linfo/flowersoft/theotown/drawing/Drawing;->drawGadgetCircle(Lio/blueflower/stapel2d/gui/Gadget;IIF)V

    return-void
.end method

.method public drawGadgetCircle(Lio/blueflower/stapel2d/gui/Gadget;IIF)V
    .registers 13

    .line 414
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v0

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0x1e

    .line 415
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 416
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    add-int/2addr v1, p2

    .line 417
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    int-to-float v3, v1

    int-to-float v4, p2

    .line 421
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object p2

    iget-object v7, p2, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v5, 0x0

    move-object v2, p0

    move v6, p4

    .line 418
    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFLio/blueflower/stapel2d/drawing/Engine;)V

    const/16 p2, 0x50

    .line 422
    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float v5, v6, p2

    .line 426
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object p1

    iget-object v7, p1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 423
    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFLio/blueflower/stapel2d/drawing/Engine;)V

    const/16 p1, 0xff

    .line 427
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method

.method public drawHalo(IILio/blueflower/stapel2d/drawing/Engine;)V
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 431
    invoke-virtual {p0, p1, p2, p3, v0}, Linfo/flowersoft/theotown/drawing/Drawing;->drawHalo(IILio/blueflower/stapel2d/drawing/Engine;F)V

    return-void
.end method

.method public drawHalo(IILio/blueflower/stapel2d/drawing/Engine;F)V
    .registers 12

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v6, p4, v1

    .line 436
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v1

    const-wide/16 v3, 0x1f40

    rem-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x45fa0000    # 8000.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    const v2, 0x40490fdb    # (float)Math.PI

    mul-float v5, v1, v2

    const/16 v1, 0xff

    .line 437
    invoke-virtual {p3, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 438
    invoke-virtual {p3, v6, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 439
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v2, p1

    int-to-float v3, p2

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->FRAME_HALO:I

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lio/blueflower/stapel2d/drawing/Engine;->drawImageRotated(Lio/blueflower/stapel2d/drawing/Image;FFIF)V

    neg-float v1, v6

    .line 440
    invoke-virtual {p3, v1, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 441
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->FRAME_HALO:I

    neg-float v5, v5

    invoke-virtual/range {v0 .. v5}, Lio/blueflower/stapel2d/drawing/Engine;->drawImageRotated(Lio/blueflower/stapel2d/drawing/Image;FFIF)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 442
    invoke-virtual {p3, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/4 v1, 0x0

    .line 443
    invoke-virtual {p3, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    return-void
.end method

.method public drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V
    .registers 29

    move-object/from16 v0, p0

    .line 382
    iget-object v1, v0, Linfo/flowersoft/theotown/drawing/Drawing;->rectCoords:[F

    if-nez v1, :cond_13

    .line 383
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/4 v3, 0x4

    new-array v3, v3, [F

    invoke-virtual {v1, v2, v3}, Lio/blueflower/stapel2d/drawing/Image;->getUVCoords(I[F)[F

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/drawing/Drawing;->rectCoords:[F

    :cond_13
    sub-float v1, p3, p1

    sub-float v2, p4, p2

    mul-float v3, v1, v1

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    .line 388
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    div-float/2addr v1, v3

    div-float/2addr v2, v3

    mul-float v2, v2, p5

    neg-float v1, v1

    mul-float v1, v1, p5

    .line 394
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->TEXTURE_WORLD:Lio/blueflower/stapel2d/drawing/Texture;

    add-float v5, p3, v2

    add-float v6, p4, v1

    sub-float v9, p3, v2

    sub-float v10, p4, v1

    add-float v13, p1, v2

    add-float v14, p2, v1

    iget-object v3, v0, Linfo/flowersoft/theotown/drawing/Drawing;->rectCoords:[F

    const/16 v18, 0x2

    aget v11, v3, v18

    const/16 v19, 0x1

    aget v12, v3, v19

    const/16 v20, 0x3

    move v8, v10

    move v10, v14

    aget v14, v3, v20

    const/16 v21, 0x0

    aget v15, v3, v21

    const/16 v17, 0x0

    move v7, v9

    move v9, v13

    move v13, v11

    move/from16 v16, v12

    move-object/from16 v3, p6

    invoke-virtual/range {v3 .. v17}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureTriangle(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFI)V

    .line 397
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->TEXTURE_WORLD:Lio/blueflower/stapel2d/drawing/Texture;

    sub-float v11, p1, v2

    sub-float v12, p2, v1

    iget-object v1, v0, Linfo/flowersoft/theotown/drawing/Drawing;->rectCoords:[F

    aget v15, v1, v18

    aget v16, v1, v20

    aget v17, v1, v21

    aget v20, v1, v19

    move/from16 v18, v16

    move/from16 v19, v17

    move v13, v9

    move v14, v10

    move v9, v7

    move v10, v8

    move-object/from16 v7, p6

    move-object v8, v3

    invoke-virtual/range {v7 .. v21}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureTriangle(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFI)V

    return-void
.end method

.method public drawNewMarker(Lio/blueflower/stapel2d/drawing/Engine;IIIIFF)V
    .registers 18

    .line 681
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    rem-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    neg-float v0, v0

    .line 682
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v3, p2

    int-to-float p2, p3

    add-float v4, p2, v0

    int-to-float v5, p4

    int-to-float v6, p5

    iget-object p2, p0, Linfo/flowersoft/theotown/drawing/Drawing;->IS_NEW_MARKER:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 p3, 0x0

    aget v9, p2, p3

    move-object v1, p1

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    return-void
.end method

.method public drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 14

    .line 194
    invoke-virtual {p6}, Lio/blueflower/stapel2d/drawing/Engine;->getRed()I

    move-result v0

    .line 195
    invoke-virtual {p6}, Lio/blueflower/stapel2d/drawing/Engine;->getGreen()I

    move-result v1

    .line 196
    invoke-virtual {p6}, Lio/blueflower/stapel2d/drawing/Engine;->getBlue()I

    move-result v2

    .line 198
    invoke-virtual {p6, p5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 p5, 0x64

    .line 200
    invoke-virtual {p6, p5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/high16 p5, 0x3f000000    # 0.5f

    add-float v3, p2, p5

    add-float v4, p3, p5

    .line 201
    invoke-virtual {p6, p4, p1, v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    sub-float v5, p2, p5

    .line 202
    invoke-virtual {p6, p4, p1, v5, v4}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    sub-float p5, p3, p5

    .line 203
    invoke-virtual {p6, p4, p1, v5, p5}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 204
    invoke-virtual {p6, p4, p1, v3, p5}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    const/16 p5, 0x3c

    .line 206
    invoke-virtual {p6, p5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/high16 p5, 0x3f800000    # 1.0f

    add-float v3, p2, p5

    .line 207
    invoke-virtual {p6, p4, p1, v3, p3}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    sub-float v4, p2, p5

    .line 208
    invoke-virtual {p6, p4, p1, v4, p3}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    add-float v5, p3, p5

    .line 209
    invoke-virtual {p6, p4, p1, p2, v5}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    sub-float p5, p3, p5

    .line 210
    invoke-virtual {p6, p4, p1, p2, p5}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    const/16 v6, 0x32

    .line 212
    invoke-virtual {p6, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 213
    invoke-virtual {p6, p4, p1, v3, p5}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 214
    invoke-virtual {p6, p4, p1, v4, p5}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 215
    invoke-virtual {p6, p4, p1, v3, v5}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 216
    invoke-virtual {p6, p4, p1, v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    const/16 p5, 0xff

    .line 218
    invoke-virtual {p6, p5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 219
    invoke-virtual {p6, v0, v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 220
    invoke-virtual {p6, p4, p1, p2, p3}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    return-void
.end method

.method public drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V
    .registers 16

    .line 187
    invoke-virtual {p4, p1}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p6}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v2

    mul-float/2addr v0, v2

    .line 188
    invoke-virtual {p4, p1}, Lio/blueflower/stapel2d/drawing/Font;->getHeight(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p6}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v0, p7

    sub-float v0, p2, v0

    mul-float/2addr v2, p8

    sub-float v3, p3, v2

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v2, v0

    move-object v0, p0

    .line 189
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/drawing/Drawing;->drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;)V

    return-void
.end method

.method public drawQuad(FFFFFFFFILio/blueflower/stapel2d/drawing/Engine;)V
    .registers 28

    move/from16 v0, p9

    .line 371
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Image;->getTexture(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v3

    .line 372
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    move-object/from16 v2, p0

    iget-object v4, v2, Linfo/flowersoft/theotown/drawing/Drawing;->tempCoords:[F

    invoke-virtual {v1, v0, v4}, Lio/blueflower/stapel2d/drawing/Image;->getUVCoords(I[F)[F

    move-result-object v0

    const/4 v1, 0x0

    .line 374
    aget v12, v0, v1

    const/4 v1, 0x1

    aget v13, v0, v1

    const/4 v1, 0x2

    aget v14, v0, v1

    const/4 v1, 0x3

    aget v15, v0, v1

    const/16 v16, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v2, p10

    invoke-virtual/range {v2 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFI)V

    return-void
.end method

.method public drawQuad(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V
    .registers 27

    move-object/from16 v0, p0

    .line 360
    iget-object v1, v0, Linfo/flowersoft/theotown/drawing/Drawing;->rectCoords:[F

    if-nez v1, :cond_13

    .line 361
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/4 v3, 0x4

    new-array v3, v3, [F

    invoke-virtual {v1, v2, v3}, Lio/blueflower/stapel2d/drawing/Image;->getUVCoords(I[F)[F

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/drawing/Drawing;->rectCoords:[F

    .line 364
    :cond_13
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->TEXTURE_WORLD:Lio/blueflower/stapel2d/drawing/Texture;

    iget-object v1, v0, Linfo/flowersoft/theotown/drawing/Drawing;->rectCoords:[F

    const/4 v2, 0x0

    aget v12, v1, v2

    const/4 v2, 0x1

    aget v13, v1, v2

    const/4 v2, 0x2

    aget v14, v1, v2

    const/4 v2, 0x3

    aget v15, v1, v2

    const/16 v16, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v2, p9

    invoke-virtual/range {v2 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFI)V

    return-void
.end method

.method public drawRounded(Lio/blueflower/stapel2d/drawing/Engine;FFFFFFFFLio/blueflower/stapel2d/drawing/Texture;IF)V
    .registers 49

    move/from16 v11, p7

    move/from16 v15, p9

    add-float v7, p3, p12

    add-float v4, p2, p4

    add-float v12, p3, p5

    sub-float v3, v12, p12

    div-float v13, p12, p5

    move v5, v7

    .line 752
    invoke-static {v11, v15, v13}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v7

    sub-float v0, p5, p12

    div-float v14, v0, p5

    .line 754
    invoke-static {v11, v15, v14}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v9

    move v0, v5

    move v5, v3

    move v3, v0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v1, p10

    move/from16 v10, p11

    .line 748
    invoke-virtual/range {v0 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFI)V

    move/from16 v19, v4

    move/from16 v16, v5

    move v0, v6

    move v1, v8

    move v5, v3

    const/4 v2, 0x0

    cmpg-float v2, p12, v2

    if-gtz v2, :cond_3a

    return-void

    :cond_3a
    add-float v4, p2, p12

    sub-float v2, v19, p12

    div-float v3, p12, p4

    .line 764
    invoke-static {v0, v1, v3}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v6

    sub-float v7, p4, p12

    div-float v7, v7, p4

    .line 766
    invoke-static {v0, v1, v7}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v8

    .line 767
    invoke-static {v11, v15, v13}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v9

    move v10, v4

    move v4, v2

    move v2, v10

    move/from16 v10, p11

    move/from16 v20, v7

    move v7, v11

    move/from16 v17, v12

    move/from16 v18, v13

    move v11, v0

    move v12, v1

    move v13, v3

    move-object/from16 v0, p1

    move/from16 v3, p3

    move-object/from16 v1, p10

    .line 761
    invoke-virtual/range {v0 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFI)V

    move v0, v4

    move v4, v2

    move v2, v0

    move/from16 v21, v5

    move v0, v7

    .line 774
    invoke-static {v11, v12, v13}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v6

    .line 775
    invoke-static {v0, v15, v14}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v7

    move/from16 v1, v20

    .line 776
    invoke-static {v11, v12, v1}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v8

    move v3, v4

    move v4, v2

    move v2, v3

    move/from16 v22, v1

    move v9, v15

    move/from16 v3, v16

    move/from16 v5, v17

    move-object/from16 v1, p10

    move v15, v0

    move-object/from16 v0, p1

    .line 771
    invoke-virtual/range {v0 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFI)V

    move-object/from16 v0, p0

    move/from16 v23, v3

    move/from16 v24, v4

    move/from16 v20, v5

    move v1, v9

    move v4, v2

    .line 781
    iget v2, v0, Linfo/flowersoft/theotown/drawing/Drawing;->CORNER_MID_COS:F

    mul-float v2, v2, p12

    sub-float v25, p12, v2

    add-float v8, p2, v25

    add-float v3, p3, v25

    div-float v2, v25, p4

    .line 788
    invoke-static {v11, v12, v2}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v10

    div-float v5, v25, p5

    .line 789
    invoke-static {v15, v1, v5}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v6

    .line 790
    invoke-static {v11, v12, v13}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v7

    move v9, v14

    .line 792
    invoke-static {v11, v12, v13}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v14

    move/from16 v0, v18

    .line 793
    invoke-static {v15, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v16

    .line 795
    invoke-static {v15, v1, v0}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v17

    move v11, v6

    move v6, v4

    move/from16 v18, v9

    move/from16 v9, v21

    move-object/from16 v1, p10

    move/from16 v26, v0

    move/from16 v29, v2

    move/from16 v30, v5

    move v12, v7

    move v2, v8

    move/from16 v28, v13

    move v13, v15

    move/from16 v15, v16

    move/from16 v27, v18

    move/from16 v7, v21

    move-object/from16 v0, p1

    move/from16 v8, p2

    move/from16 v5, p3

    move/from16 v16, p6

    move/from16 v18, p11

    .line 783
    invoke-virtual/range {v0 .. v18}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFFFFFI)V

    move/from16 v31, v2

    move/from16 v21, v4

    move v5, v7

    move v11, v13

    move/from16 v0, v16

    sub-float v4, v19, v25

    move/from16 v12, p8

    move/from16 v1, v22

    .line 804
    invoke-static {v0, v12, v1}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v10

    sub-float v2, p4, v25

    div-float v2, v2, p4

    .line 806
    invoke-static {v0, v12, v2}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v6

    move/from16 v7, p9

    move/from16 v8, v30

    .line 807
    invoke-static {v11, v7, v8}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v13

    move/from16 v8, v26

    .line 809
    invoke-static {v11, v7, v8}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v15

    .line 810
    invoke-static {v0, v12, v1}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v16

    .line 811
    invoke-static {v11, v7, v8}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v17

    move/from16 v8, v24

    move v9, v5

    move-object/from16 v0, p1

    move/from16 v32, v1

    move/from16 v33, v2

    move v7, v5

    move v14, v12

    move/from16 v2, v24

    move-object/from16 v1, p10

    move v5, v3

    move v12, v6

    move/from16 v6, v19

    move/from16 v3, p3

    .line 799
    invoke-virtual/range {v0 .. v18}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFFFFFI)V

    move v0, v6

    move v6, v4

    move v4, v0

    move v0, v11

    move v12, v14

    sub-float v7, v20, v25

    move/from16 v1, p6

    move/from16 v3, v32

    .line 820
    invoke-static {v1, v12, v3}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v10

    move/from16 v15, p9

    move/from16 v5, v27

    .line 821
    invoke-static {v0, v15, v5}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v11

    .line 823
    invoke-static {v0, v15, v5}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v13

    move/from16 v8, v33

    .line 824
    invoke-static {v1, v12, v8}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v14

    sub-float v8, p5, v25

    div-float v8, v8, p5

    move v9, v15

    .line 825
    invoke-static {v0, v9, v8}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v15

    .line 826
    invoke-static {v1, v12, v3}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v16

    move/from16 v5, v23

    move v3, v8

    move v8, v2

    move-object/from16 v0, p1

    move-object/from16 v1, p10

    move/from16 v35, v3

    move/from16 v17, v9

    move/from16 v9, v20

    move/from16 v3, v23

    move/from16 v34, v27

    .line 815
    invoke-virtual/range {v0 .. v18}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFFFFFI)V

    move/from16 v11, p7

    move/from16 v15, v17

    move/from16 v5, v34

    .line 837
    invoke-static {v11, v15, v5}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v0

    move/from16 v6, p6

    move/from16 v13, v28

    .line 838
    invoke-static {v6, v12, v13}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v1

    .line 839
    invoke-static {v11, v15, v5}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v2

    .line 840
    invoke-static {v6, v12, v13}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v14

    move/from16 v4, v29

    .line 842
    invoke-static {v6, v12, v4}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v16

    move/from16 v8, v35

    .line 843
    invoke-static {v11, v15, v8}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v17

    move v5, v3

    move/from16 v6, v21

    move/from16 v10, p6

    move v11, v0

    move v12, v1

    move v13, v2

    move v9, v7

    move/from16 v7, v20

    move/from16 v4, v21

    move/from16 v8, v31

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v1, p10

    .line 831
    invoke-virtual/range {v0 .. v18}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFFFFFI)V

    return-void
.end method

.method public drawRounded(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFFFIF)V
    .registers 26

    move-object/from16 v0, p2

    move/from16 v1, p7

    .line 729
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Image;->getUVStream()[F

    move-result-object v2

    mul-int/lit8 v3, v1, 0x8

    .line 731
    aget v10, v2, v3

    add-int/lit8 v4, v3, 0x1

    .line 732
    aget v11, v2, v4

    add-int/lit8 v4, v3, 0x2

    .line 733
    aget v12, v2, v4

    add-int/lit8 v3, v3, 0x3

    .line 734
    aget v13, v2, v3

    .line 735
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getTexture(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v14

    .line 736
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getTypeMask(I)I

    move-result v15

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v16, p8

    .line 738
    invoke-virtual/range {v4 .. v16}, Linfo/flowersoft/theotown/drawing/Drawing;->drawRounded(Lio/blueflower/stapel2d/drawing/Engine;FFFFFFFFLio/blueflower/stapel2d/drawing/Texture;IF)V

    return-void
.end method

.method public drawRoundedFit(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFFFIF)V
    .registers 31

    move-object/from16 v0, p2

    move/from16 v1, p7

    .line 701
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Image;->getUVStream()[F

    move-result-object v2

    mul-int/lit8 v3, v1, 0x8

    .line 703
    aget v4, v2, v3

    add-int/lit8 v5, v3, 0x1

    .line 704
    aget v5, v2, v5

    add-int/lit8 v6, v3, 0x2

    .line 705
    aget v6, v2, v6

    add-int/lit8 v7, v3, 0x3

    .line 706
    aget v7, v2, v7

    add-int/lit8 v8, v3, 0x4

    .line 707
    aget v8, v2, v8

    add-int/lit8 v3, v3, 0x5

    .line 708
    aget v2, v2, v3

    .line 709
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getTexture(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v19

    .line 710
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getTypeMask(I)I

    move-result v20

    div-float v0, p5, p6

    div-float/2addr v8, v2

    cmpl-float v1, v8, v0

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    if-lez v1, :cond_56

    div-float/2addr v0, v8

    sub-float v0, v3, v0

    mul-float/2addr v0, v2

    .line 715
    invoke-static {v4, v6, v0}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v1

    sub-float/2addr v3, v0

    .line 716
    invoke-static {v4, v6, v3}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v6

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v21, p8

    move v15, v1

    :goto_4f
    move/from16 v16, v5

    :goto_51
    move/from16 v17, v6

    move/from16 v18, v7

    goto :goto_89

    :cond_56
    cmpg-float v1, v8, v0

    if-gez v1, :cond_79

    div-float/2addr v8, v0

    sub-float v0, v3, v8

    mul-float/2addr v0, v2

    .line 719
    invoke-static {v5, v7, v0}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v1

    sub-float/2addr v3, v0

    .line 720
    invoke-static {v5, v7, v3}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v7

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v21, p8

    move/from16 v16, v1

    move v15, v4

    goto :goto_51

    :cond_79
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v21, p8

    move v15, v4

    goto :goto_4f

    .line 724
    :goto_89
    invoke-virtual/range {v9 .. v21}, Linfo/flowersoft/theotown/drawing/Drawing;->drawRounded(Lio/blueflower/stapel2d/drawing/Engine;FFFFFFFFLio/blueflower/stapel2d/drawing/Texture;IF)V

    return-void
.end method

.method public drawShadowedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 11

    .line 173
    invoke-virtual {p6}, Lio/blueflower/stapel2d/drawing/Engine;->getRed()I

    move-result v0

    .line 174
    invoke-virtual {p6}, Lio/blueflower/stapel2d/drawing/Engine;->getGreen()I

    move-result v1

    .line 175
    invoke-virtual {p6}, Lio/blueflower/stapel2d/drawing/Engine;->getBlue()I

    move-result v2

    const/16 v3, 0x64

    .line 177
    invoke-virtual {p6, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 178
    invoke-virtual {p6, p5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/high16 p5, 0x3f800000    # 1.0f

    add-float v3, p2, p5

    add-float/2addr p5, p3

    .line 179
    invoke-virtual {p6, p4, p1, v3, p5}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    const/16 p5, 0xff

    .line 181
    invoke-virtual {p6, p5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 182
    invoke-virtual {p6, v0, v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 183
    invoke-virtual {p6, p4, p1, p2, p3}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    return-void
.end method

.method public drawShadowedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V
    .registers 16

    .line 166
    invoke-virtual {p4, p1}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p6}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v2

    mul-float/2addr v0, v2

    .line 167
    invoke-virtual {p4, p1}, Lio/blueflower/stapel2d/drawing/Font;->getHeight(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p6}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v0, p7

    sub-float v0, p2, v0

    mul-float/2addr v2, p8

    sub-float v3, p3, v2

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v2, v0

    move-object v0, p0

    .line 168
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/drawing/Drawing;->drawShadowedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;)V

    return-void
.end method

.method public drawSmoke(Linfo/flowersoft/theotown/city/Drawer;ILinfo/flowersoft/theotown/draft/SmokeSpot;I)V
    .registers 12

    .line 110
    iget-object v0, p3, Linfo/flowersoft/theotown/draft/SmokeSpot;->draft:Linfo/flowersoft/theotown/draft/SmokeDraft;

    iget v6, v0, Linfo/flowersoft/theotown/draft/SmokeDraft;->scale:F

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/drawing/Drawing;->drawSmoke(Linfo/flowersoft/theotown/city/Drawer;ILinfo/flowersoft/theotown/draft/SmokeSpot;IF)V

    return-void
.end method

.method public drawSmoke(Linfo/flowersoft/theotown/city/Drawer;ILinfo/flowersoft/theotown/draft/SmokeSpot;IF)V
    .registers 22

    move-object/from16 v2, p3

    move/from16 v0, p2

    .line 114
    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/draft/SmokeSpot;->isTargeted(I)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_68

    .line 115
    :cond_c
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    add-int/lit8 v6, v0, 0x1

    .line 116
    iget-object v0, v2, Linfo/flowersoft/theotown/draft/SmokeSpot;->draft:Linfo/flowersoft/theotown/draft/SmokeDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v7, v0

    move-object/from16 v0, p1

    .line 120
    iget-object v8, v0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 121
    iget-object v3, v2, Linfo/flowersoft/theotown/draft/SmokeSpot;->color:Lio/blueflower/stapel2d/drawing/Color;

    const/4 v4, 0x0

    if-eqz v3, :cond_3e

    .line 122
    invoke-virtual {v8}, Lio/blueflower/stapel2d/drawing/Engine;->getRed()I

    move-result v3

    .line 123
    invoke-virtual {v8}, Lio/blueflower/stapel2d/drawing/Engine;->getGreen()I

    move-result v5

    .line 124
    invoke-virtual {v8}, Lio/blueflower/stapel2d/drawing/Engine;->getBlue()I

    move-result v9

    .line 125
    invoke-virtual {v8}, Lio/blueflower/stapel2d/drawing/Engine;->getTransparency()I

    move-result v10

    .line 127
    iget-object v11, v2, Linfo/flowersoft/theotown/draft/SmokeSpot;->color:Lio/blueflower/stapel2d/drawing/Color;

    move-object/from16 v12, p0

    invoke-virtual {v12, v8, v11}, Linfo/flowersoft/theotown/drawing/Drawing;->tintEngineColor(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Color;)V

    move v11, v5

    move v13, v9

    move v14, v10

    move v9, v1

    move v10, v3

    goto :goto_45

    :cond_3e
    move-object/from16 v12, p0

    move v9, v4

    move v10, v9

    move v11, v10

    move v13, v11

    move v14, v13

    :goto_45
    move v15, v4

    :goto_46
    if-ge v15, v6, :cond_63

    int-to-float v1, v15

    int-to-float v3, v7

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    int-to-float v3, v6

    div-float v4, v1, v3

    move/from16 v3, p4

    move/from16 v5, p5

    move-object v1, v0

    move-object v0, v12

    .line 131
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/drawing/Drawing;->drawSmoke(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/SmokeSpot;IFF)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v12, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    goto :goto_46

    :cond_63
    if-eqz v9, :cond_68

    .line 135
    invoke-virtual {v8, v10, v11, v13, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(IIII)V

    :cond_68
    :goto_68
    return-void
.end method

.method public final drawSmoke(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/SmokeSpot;IFF)V
    .registers 15

    .line 140
    iget v0, p2, Linfo/flowersoft/theotown/draft/SmokeSpot;->x:I

    .line 141
    iget v1, p2, Linfo/flowersoft/theotown/draft/SmokeSpot;->y:I

    .line 142
    iget-object v2, p2, Linfo/flowersoft/theotown/draft/SmokeSpot;->draft:Linfo/flowersoft/theotown/draft/SmokeDraft;

    .line 143
    iget-object v3, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v3, v3

    .line 144
    iget-object v4, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Engine;->getTransparency()I

    move-result v4

    .line 146
    iget v5, v2, Linfo/flowersoft/theotown/draft/SmokeDraft;->speed:F

    int-to-float p3, p3

    mul-float/2addr v5, p3

    mul-int/lit16 p3, v3, 0x12c

    int-to-float v6, p3

    rem-float/2addr v5, v6

    iget v6, p2, Linfo/flowersoft/theotown/draft/SmokeSpot;->x:I

    iget p2, p2, Linfo/flowersoft/theotown/draft/SmokeSpot;->y:I

    mul-int/lit16 p2, p2, 0x1605

    add-int/2addr v6, p2

    .line 147
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p2

    rem-int/2addr p2, p3

    int-to-float p2, p2

    add-float/2addr v5, p2

    const/high16 p2, 0x43960000    # 300.0f

    div-float/2addr v5, p2

    add-float/2addr v5, p4

    add-int/lit8 p2, v3, -0x1

    int-to-float p2, p2

    rem-float/2addr v5, p2

    int-to-float p3, v3

    const p4, 0x3f8020c5    # 1.001f

    sub-float/2addr p3, p4

    .line 148
    invoke-static {v5, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    .line 150
    iget-object p4, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    float-to-double v5, p3

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v3, v7

    aget p4, p4, v3

    .line 151
    iget-object v2, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v3, v7

    aget v2, v2, v3

    .line 152
    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v3, v5

    sub-float v3, p3, v3

    div-float v5, p3, p2

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    const/high16 v7, 0x40c00000    # 6.0f

    mul-float/2addr v7, p5

    mul-float/2addr v7, p3

    mul-float/2addr v7, p3

    div-float/2addr v7, p2

    div-float/2addr v7, p2

    .line 155
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v0, v7

    const/high16 v7, 0x41100000    # 9.0f

    mul-float/2addr p5, v7

    mul-float/2addr p5, p3

    div-float/2addr p5, p2

    .line 156
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p2

    sub-int/2addr v1, p2

    .line 157
    iget-object p2, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    int-to-float p3, v4

    sub-float/2addr v6, v3

    mul-float/2addr v6, v5

    invoke-virtual {p0, v6}, Linfo/flowersoft/theotown/drawing/Drawing;->trans(F)F

    move-result p5

    mul-float/2addr p5, p3

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    invoke-virtual {p2, p5}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 158
    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float p5, v0

    int-to-float v0, v1

    invoke-virtual {p1, p2, p5, v0, p4}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 159
    iget-object p2, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    mul-float/2addr v5, v3

    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/drawing/Drawing;->trans(F)F

    move-result p4

    mul-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-virtual {p2, p3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 160
    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p1, p2, p5, v0, v2}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 162
    iget-object p1, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p1, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method

.method public drawTiled(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFI)V
    .registers 17

    .line 608
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v0

    int-to-float v9, v0

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v0

    int-to-float v10, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    .line 603
    invoke-virtual/range {v1 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawTiled(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFIFFFF)V

    return-void
.end method

.method public drawTiled(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFIFFFF)V
    .registers 15

    .line 613
    invoke-virtual {p2, p5}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result v0

    .line 614
    invoke-virtual {p2, p5}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result v1

    .line 615
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 616
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v0, v2

    mul-float/2addr v1, v3

    rem-float/2addr p3, v0

    add-float/2addr p3, v0

    rem-float/2addr p3, v0

    rem-float/2addr p4, v1

    add-float/2addr p4, v1

    rem-float/2addr p4, v1

    sub-float v4, p6, v0

    add-float/2addr p3, v4

    sub-float v4, p7, v1

    add-float/2addr p4, v4

    add-float/2addr p6, p8

    add-float/2addr p7, p9

    const/4 p8, 0x0

    cmpg-float p9, v2, p8

    if-gez p9, :cond_2f

    sub-float/2addr p3, v0

    add-float/2addr p6, v0

    :cond_2f
    cmpg-float p8, v3, p8

    if-gez p8, :cond_35

    sub-float/2addr p4, v1

    add-float/2addr p7, v1

    :cond_35
    :goto_35
    cmpg-float p8, p3, p6

    if-gez p8, :cond_45

    move p8, p4

    :goto_3a
    cmpg-float p9, p8, p7

    if-gez p9, :cond_43

    .line 638
    invoke-virtual {p1, p2, p3, p8, p5}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    add-float/2addr p8, v1

    goto :goto_3a

    :cond_43
    add-float/2addr p3, v0

    goto :goto_35

    :cond_45
    return-void
.end method

.method public drawTriangle(FFFFFFLio/blueflower/stapel2d/drawing/Engine;)V
    .registers 25

    move-object/from16 v0, p0

    .line 345
    iget-object v1, v0, Linfo/flowersoft/theotown/drawing/Drawing;->rectCoords:[F

    if-nez v1, :cond_13

    .line 346
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/4 v3, 0x4

    new-array v3, v3, [F

    invoke-virtual {v1, v2, v3}, Lio/blueflower/stapel2d/drawing/Image;->getUVCoords(I[F)[F

    move-result-object v1

    iput-object v1, v0, Linfo/flowersoft/theotown/drawing/Drawing;->rectCoords:[F

    .line 349
    :cond_13
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->TEXTURE_WORLD:Lio/blueflower/stapel2d/drawing/Texture;

    iget-object v1, v0, Linfo/flowersoft/theotown/drawing/Drawing;->rectCoords:[F

    const/4 v2, 0x0

    aget v10, v1, v2

    const/4 v2, 0x1

    aget v11, v1, v2

    const/4 v2, 0x2

    aget v12, v1, v2

    const/4 v2, 0x3

    aget v13, v1, v2

    const/16 v16, 0x0

    move v14, v12

    move v15, v11

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v2, p7

    invoke-virtual/range {v2 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureTriangle(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFI)V

    return-void
.end method

.method public final smoothSingle(F)F
    .registers 4

    .line 0
    const/high16 v0, -0x40000000    # -2.0f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, p1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public tintEngineColor(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    .line 596
    :cond_3
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getRed()I

    move-result v0

    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    .line 597
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getGreen()I

    move-result v1

    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0xff

    .line 598
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getBlue()I

    move-result v2

    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v3

    mul-int/2addr v2, v3

    div-int/lit16 v2, v2, 0xff

    .line 599
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getTransparency()I

    move-result v3

    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->getAlpha()I

    move-result p2

    mul-int/2addr v3, p2

    div-int/lit16 v3, v3, 0xff

    .line 596
    invoke-virtual {p1, v0, v1, v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColorAndTransparency(IIII)V

    return-void
.end method

.method public final trans(F)F
    .registers 5

    .line 0
    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v1, :cond_11

    sub-float/2addr p1, v0

    const v0, 0x3e4ccccd    # 0.2f

    div-float/2addr p1, v0

    sub-float/2addr v2, p1

    mul-float/2addr v2, v2

    return v2

    :cond_11
    div-float/2addr p1, v0

    sub-float p1, v2, p1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    sub-float/2addr v2, v0

    return v2
.end method

.method public final transModulator(F)F
    .registers 4

    .line 0
    neg-float v0, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method
