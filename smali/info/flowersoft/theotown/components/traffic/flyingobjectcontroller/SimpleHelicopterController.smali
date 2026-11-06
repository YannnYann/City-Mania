###### Class info.flowersoft.theotown.components.traffic.flyingobjectcontroller.SimpleHelicopterController (info.flowersoft.theotown.components.traffic.flyingobjectcontroller.SimpleHelicopterController)
.class public abstract Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;
.super Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;
.source "SimpleHelicopterController.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;)V
    .registers 3

    .line 15
    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;)V

    return-void
.end method


# virtual methods
.method public final create(Linfo/flowersoft/theotown/draft/FlyingObjectDraft;II)Linfo/flowersoft/theotown/city/objects/FlyingObject;
    .registers 12

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/City;->getTileHeight(II)I

    move-result v5

    .line 103
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->spawner:Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;

    move v6, v5

    const/4 v5, 0x1

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v1 .. v6}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;->spawn(Linfo/flowersoft/theotown/draft/FlyingObjectDraft;IIII)Linfo/flowersoft/theotown/city/objects/FlyingObject;

    move-result-object v2

    const/4 p1, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move v5, v6

    move v6, p1

    .line 104
    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;->setState(Linfo/flowersoft/theotown/city/objects/FlyingObject;IIIZZ)V

    return-object v2
.end method

.method public abstract finishedFlightCommand(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
.end method

.method public final flyTo(Linfo/flowersoft/theotown/city/objects/FlyingObject;IIZ)V
    .registers 13

    .line 109
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/City;->getTileHeight(II)I

    move-result v5

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;->setState(Linfo/flowersoft/theotown/city/objects/FlyingObject;IIIZZ)V

    .line 110
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getSpeed()F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->setSpeed(F)V

    return-void
.end method

.method public final getStateFinished(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Z
    .registers 7

    .line 140
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v0

    const-wide/16 v3, 0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_f

    return p1

    :cond_f
    return v2
.end method

.method public final getStateTargetHeight(Linfo/flowersoft/theotown/city/objects/FlyingObject;)I
    .registers 5

    .line 132
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    const/16 p1, 0xa

    const/4 v2, 0x2

    invoke-static {v0, v1, p1, v2}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public final getStateTargetLand(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Z
    .registers 6

    .line 136
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    const/4 p1, 0x1

    invoke-static {v0, v1, p1, p1}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public final getStateTargetX(Linfo/flowersoft/theotown/city/objects/FlyingObject;)I
    .registers 5

    .line 124
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    const/16 p1, 0xa

    const/16 v2, 0x16

    invoke-static {v0, v1, p1, v2}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public final getStateTargetY(Linfo/flowersoft/theotown/city/objects/FlyingObject;)I
    .registers 5

    .line 128
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    const/16 p1, 0xa

    const/16 v2, 0xc

    invoke-static {v0, v1, p1, v2}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public onSpawned(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final onTarget(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 15

    .line 20
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getActualX()I

    move-result v2

    .line 21
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getActualY()I

    move-result v3

    .line 22
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getActualHeight()F

    move-result v0

    .line 23
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;->getStateTargetX(Linfo/flowersoft/theotown/city/objects/FlyingObject;)I

    move-result v1

    .line 24
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;->getStateTargetY(Linfo/flowersoft/theotown/city/objects/FlyingObject;)I

    move-result v4

    .line 25
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;->getStateTargetHeight(Linfo/flowersoft/theotown/city/objects/FlyingObject;)I

    move-result v5

    int-to-float v5, v5

    move v6, v5

    .line 26
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;->getStateTargetLand(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Z

    move-result v5

    .line 27
    iget-object v7, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7, v2, v3}, Linfo/flowersoft/theotown/city/City;->getTileHeight(II)I

    move-result v7

    int-to-float v8, v7

    .line 28
    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 29
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;->getStateFinished(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Z

    move-result v8

    .line 30
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getDir()I

    move-result v9

    const v10, 0x3dcccccd    # 0.1f

    const/16 v11, 0x20

    const/4 v12, 0x0

    if-nez v8, :cond_df

    if-ne v2, v1, :cond_41

    if-ne v3, v4, :cond_41

    if-nez v5, :cond_40

    goto :goto_41

    :cond_40
    move v11, v12

    :cond_41
    :goto_41
    add-int/2addr v7, v11

    int-to-float v7, v7

    .line 33
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    if-ne v2, v1, :cond_50

    if-ne v3, v4, :cond_50

    if-nez v5, :cond_4e

    goto :goto_50

    :cond_4e
    move v7, v12

    goto :goto_52

    :cond_50
    :goto_50
    const/16 v7, 0x30

    :goto_52
    int-to-float v7, v7

    .line 34
    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/high16 v7, 0x41800000    # 16.0f

    sub-float v8, v0, v7

    cmpg-float v11, v6, v8

    if-gez v11, :cond_60

    move v6, v8

    :cond_60
    add-float/2addr v7, v0

    cmpl-float v8, v6, v7

    if-lez v8, :cond_66

    move v6, v7

    :cond_66
    if-ne v2, v1, :cond_7a

    if-ne v3, v4, :cond_7a

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_6f

    goto :goto_7a

    :cond_6f
    float-to-int v4, v6

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 71
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;->setState(Linfo/flowersoft/theotown/city/objects/FlyingObject;IIIZZ)V

    .line 72
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/SimpleHelicopterController;->finishedFlightCommand(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    return-void

    :cond_7a
    :goto_7a
    sub-int/2addr v1, v2

    sub-int/2addr v4, v3

    .line 45
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v0, v2

    if-lez v0, :cond_cd

    if-eqz v1, :cond_8e

    .line 46
    invoke-static {v1, v12}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result v0

    goto :goto_8f

    :cond_8e
    move v0, v12

    :goto_8f
    if-eqz v4, :cond_95

    .line 47
    invoke-static {v12, v4}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result v12

    :cond_95
    const/4 v1, 0x1

    if-eqz v9, :cond_c8

    if-ne v0, v9, :cond_9b

    goto :goto_c9

    :cond_9b
    if-ne v12, v9, :cond_9f

    move v0, v12

    goto :goto_c9

    .line 55
    :cond_9f
    invoke-static {v9}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result v2

    if-eq v2, v0, :cond_c3

    invoke-static {v9}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result v2

    if-ne v2, v12, :cond_ac

    goto :goto_c3

    .line 57
    :cond_ac
    invoke-static {v9, v1}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v2

    if-eq v2, v0, :cond_be

    .line 58
    invoke-static {v9, v1}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v0

    if-ne v0, v12, :cond_b9

    goto :goto_be

    .line 61
    :cond_b9
    invoke-static {v9}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result v0

    goto :goto_c9

    .line 59
    :cond_be
    :goto_be
    invoke-static {v9, v1}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v0

    goto :goto_c9

    .line 56
    :cond_c3
    :goto_c3
    invoke-static {v9}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result v0

    goto :goto_c9

    :cond_c8
    move v0, v1

    .line 65
    :goto_c9
    invoke-virtual {p1, v0, v0, v6}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->flyTo(IIF)V

    goto :goto_d0

    .line 67
    :cond_cd
    invoke-virtual {p1, v12, v9, v6}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->flyTo(IIF)V

    .line 69
    :goto_d0
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getSpeed()F

    move-result v0

    add-float/2addr v0, v10

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->setSpeed(F)V

    return-void

    :cond_df
    if-eqz v5, :cond_f2

    .line 76
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getSpeed()F

    move-result v1

    sub-float/2addr v1, v10

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->setSpeed(F)V

    .line 77
    invoke-virtual {p1, v12, v9, v0}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->flyTo(IIF)V

    return-void

    :cond_f2
    add-int/2addr v7, v11

    int-to-float v1, v7

    .line 79
    invoke-static {v6, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x42400000    # 48.0f

    .line 80
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_105

    const/high16 v0, 0x40800000    # 4.0f

    add-float/2addr v1, v0

    .line 84
    :cond_105
    invoke-virtual {p1, v12, v9, v1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->flyTo(IIF)V

    return-void
.end method

.method public final setState(Linfo/flowersoft/theotown/city/objects/FlyingObject;IIIZZ)V
    .registers 26

    move-object/from16 v0, p1

    .line 114
    iget-wide v1, v0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    const/16 v4, 0x16

    move/from16 v3, p2

    int-to-long v5, v3

    const/16 v3, 0xa

    .line 115
    invoke-static/range {v1 .. v6}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v7

    const/16 v10, 0xc

    move/from16 v1, p3

    int-to-long v11, v1

    const/16 v9, 0xa

    .line 116
    invoke-static/range {v7 .. v12}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v1

    const/4 v4, 0x2

    move/from16 v3, p4

    int-to-long v5, v3

    const/16 v3, 0xa

    .line 117
    invoke-static/range {v1 .. v6}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v7

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x1

    if-eqz p5, :cond_2c

    move-wide v11, v3

    goto :goto_2d

    :cond_2c
    move-wide v11, v1

    :goto_2d
    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 118
    invoke-static/range {v7 .. v12}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v13

    if-eqz p6, :cond_38

    move-wide/from16 v17, v3

    goto :goto_3a

    :cond_38
    move-wide/from16 v17, v1

    :goto_3a
    const/4 v15, 0x1

    const/16 v16, 0x0

    .line 119
    invoke-static/range {v13 .. v18}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v1

    .line 120
    iput-wide v1, v0, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    return-void
.end method

.method public update()V
    .registers 1

    .line 0
    return-void
.end method
