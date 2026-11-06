###### Class info.flowersoft.theotown.components.traffic.flyingobjectcontroller.AirplaneController (info.flowersoft.theotown.components.traffic.flyingobjectcontroller.AirplaneController)
.class public Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;
.super Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;
.source "AirplaneController.java"


# instance fields
.field public airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

.field public date:Linfo/flowersoft/theotown/components/DefaultDate;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;)V

    return-void
.end method


# virtual methods
.method public final collideWithEdgeX(III)I
    .registers 4

    const/4 p2, 0x1

    if-eq p3, p2, :cond_c

    const/4 p2, 0x2

    if-eq p3, p2, :cond_b

    const/16 p2, 0x8

    if-eq p3, p2, :cond_b

    const/4 p1, 0x0

    :cond_b
    return p1

    .line 283
    :cond_c
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result p1

    sub-int/2addr p1, p2

    return p1
.end method

.method public final collideWithEdgeY(III)I
    .registers 5

    const/4 p1, 0x1

    if-eq p3, p1, :cond_12

    const/4 v0, 0x2

    if-eq p3, v0, :cond_b

    const/4 p1, 0x4

    if-eq p3, p1, :cond_12

    const/4 p1, 0x0

    return p1

    .line 299
    :cond_b
    iget-object p2, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result p2

    sub-int/2addr p2, p1

    :cond_12
    return p2
.end method

.method public final getAirplaneAirplane(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Linfo/flowersoft/theotown/components/airport/Airplane;
    .registers 5

    .line 319
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    iget-wide v1, p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    const/16 p1, 0xa

    invoke-static {v1, v2, p1, p1}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v1

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getAirplaneOfId(I)Linfo/flowersoft/theotown/components/airport/Airplane;

    move-result-object p1

    return-object p1
.end method

.method public final getAirplaneLane(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Linfo/flowersoft/theotown/components/airport/Lane;
    .registers 6

    .line 311
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    iget-wide v1, p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    const/16 p1, 0xa

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v1

    long-to-int p1, v1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getLaneOfId(I)Linfo/flowersoft/theotown/components/airport/Lane;

    move-result-object p1

    return-object p1
.end method

.method public final getAirplaneState(Linfo/flowersoft/theotown/city/objects/FlyingObject;)I
    .registers 5

    .line 327
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    const/4 p1, 0x4

    const/16 v2, 0x14

    invoke-static {v0, v1, p1, v2}, Linfo/flowersoft/theotown/util/DataAccessor;->read(JII)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public final getFutureTileHeight(III)F
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0xa

    if-ge v1, v2, :cond_31

    .line 183
    invoke-static {p3}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v2, p1

    .line 184
    invoke-static {p3}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v3, p2

    .line 185
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v2, v3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 186
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v2, v3}, Linfo/flowersoft/theotown/city/City;->getTileHeight(II)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3d4ccccd    # 0.05f

    int-to-float v4, v1

    mul-float/2addr v4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_31
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 332
    const-string v0, "airport"

    return-object v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    :cond_a
    return-void
.end method

.method public onSpawned(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onTarget(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 78
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getDraft()Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    move-result-object v2

    .line 79
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getDir()I

    move-result v3

    .line 80
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getVisibleDir()I

    move-result v4

    .line 81
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getX()I

    move-result v5

    .line 82
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getY()I

    move-result v6

    .line 83
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getSpeed()F

    move-result v7

    .line 84
    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->getAirplaneState(Linfo/flowersoft/theotown/city/objects/FlyingObject;)I

    move-result v8

    .line 85
    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->getAirplaneLane(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Linfo/flowersoft/theotown/components/airport/Lane;

    move-result-object v9

    .line 86
    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->getAirplaneAirplane(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Linfo/flowersoft/theotown/components/airport/Airplane;

    move-result-object v10

    .line 88
    iget-object v11, v0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v11, v5, v6}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v11

    if-eqz v11, :cond_18a

    if-eqz v8, :cond_18a

    if-eqz v9, :cond_18a

    if-nez v10, :cond_38

    goto/16 :goto_18a

    .line 93
    :cond_38
    iget-object v11, v0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v11, v5, v6}, Linfo/flowersoft/theotown/city/City;->getTileHeight(II)I

    .line 94
    iget-object v11, v0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v11

    mul-int/lit8 v11, v11, 0xc

    .line 95
    invoke-virtual {v9, v5, v6}, Linfo/flowersoft/theotown/components/airport/Lane;->getDistance(II)I

    move-result v12

    .line 96
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getActualHeight()F

    move-result v13

    .line 97
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getHeight()F

    move-result v14

    sub-float v14, v13, v14

    .line 98
    iget v15, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->flyHeight:I

    move/from16 v16, v8

    const/16 v8, 0x1e

    const/16 v17, 0x5

    packed-switch v16, :pswitch_data_190

    goto :goto_ae

    :pswitch_63
    if-le v12, v8, :cond_ae

    const/4 v8, 0x7

    goto :goto_b0

    .line 126
    :pswitch_67
    iget-object v8, v0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getLaunchedAirplanes()I

    move-result v16

    move-object/from16 v18, v10

    add-int/lit8 v10, v16, 0x1

    invoke-virtual {v8, v10}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->setLaunchedAirplanes(I)V

    .line 127
    iget-object v8, v0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getTransferredPassengers()I

    move-result v10

    move/from16 v16, v10

    invoke-virtual/range {v18 .. v18}, Linfo/flowersoft/theotown/components/airport/Airplane;->getDraft()Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    move-result-object v10

    iget v10, v10, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->capacity:I

    add-int v10, v16, v10

    invoke-virtual {v8, v10}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->setTransferredPassengers(I)V

    const/4 v8, 0x6

    goto :goto_b0

    .line 119
    :pswitch_89
    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->triggerTaxi(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    move/from16 v8, v17

    goto :goto_b0

    .line 114
    :pswitch_8f
    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v8

    const/4 v10, 0x4

    mul-int/2addr v8, v10

    add-int/2addr v8, v5

    invoke-static {v3}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v18

    mul-int/lit8 v18, v18, 0x4

    add-int v10, v6, v18

    invoke-virtual {v9, v8, v10}, Linfo/flowersoft/theotown/components/airport/Lane;->getDistance(II)I

    move-result v8

    if-lez v8, :cond_ae

    const/4 v8, 0x4

    goto :goto_b0

    :pswitch_a6
    if-gtz v12, :cond_ae

    const/4 v8, 0x3

    goto :goto_b0

    :pswitch_aa
    if-ge v12, v8, :cond_ae

    const/4 v8, 0x2

    goto :goto_b0

    :cond_ae
    :goto_ae
    move/from16 v8, v16

    .line 138
    :goto_b0
    invoke-virtual {v0, v1, v8}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->setAirplaneState(Linfo/flowersoft/theotown/city/objects/FlyingObject;I)V

    const/high16 v16, 0x40000000    # 2.0f

    const v18, 0x3f666666    # 0.9f

    const v10, 0x3dcccccd    # 0.1f

    packed-switch v8, :pswitch_data_1a0

    return-void

    .line 172
    :pswitch_bf
    invoke-virtual {v0, v5, v6, v4}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->getFutureTileHeight(III)F

    move-result v4

    int-to-float v5, v15

    mul-float/2addr v5, v10

    add-float/2addr v13, v14

    mul-float v13, v13, v18

    add-float/2addr v5, v13

    .line 173
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v1, v3, v3, v4}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->flyTo(IIF)V

    .line 174
    iget v2, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->speed:F

    mul-float v2, v2, v16

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->setSpeed(F)V

    return-void

    .line 164
    :pswitch_d8
    invoke-virtual {v0, v5, v6, v4}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->getFutureTileHeight(III)F

    move-result v3

    .line 165
    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x8

    add-int/2addr v5, v8

    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x8

    add-int/2addr v6, v8

    invoke-virtual {v9, v5, v6}, Linfo/flowersoft/theotown/components/airport/Lane;->getDistance(II)I

    move-result v5

    mul-int/lit8 v6, v5, 0x5

    .line 166
    invoke-static {v6, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    if-gtz v5, :cond_fc

    int-to-float v3, v11

    :cond_fc
    mul-float/2addr v3, v10

    add-float/2addr v13, v14

    mul-float v13, v13, v18

    add-float/2addr v3, v13

    .line 168
    invoke-virtual {v1, v4, v4, v3}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->flyTo(IIF)V

    .line 169
    iget v2, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->speed:F

    mul-float v2, v2, v16

    const v3, 0x3fb33333    # 1.4f

    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->setSpeed(F)V

    return-void

    .line 160
    :pswitch_118
    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result v2

    int-to-float v3, v11

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2, v3}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->flyTo(IIF)V

    const v2, 0x3ba3d70a    # 0.005f

    .line 161
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->setSpeed(F)V

    return-void

    :pswitch_128
    const/4 v5, 0x0

    .line 156
    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result v2

    int-to-float v3, v11

    invoke-virtual {v1, v5, v2, v3}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->flyTo(IIF)V

    const v2, 0x3e99999a    # 0.3f

    .line 157
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->setSpeed(F)V

    return-void

    :pswitch_138
    int-to-float v2, v11

    .line 152
    invoke-virtual {v1, v3, v3, v2}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->flyTo(IIF)V

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr v7, v2

    const/high16 v2, 0x3e800000    # 0.25f

    .line 153
    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->setSpeed(F)V

    return-void

    .line 147
    :pswitch_14a
    invoke-virtual {v0, v5, v6, v4}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->getFutureTileHeight(III)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    mul-int/lit8 v12, v12, 0x5

    .line 148
    invoke-static {v12, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v10

    add-float/2addr v13, v14

    mul-float v13, v13, v18

    add-float/2addr v5, v13

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v1, v3, v3, v4}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->flyTo(IIF)V

    const v3, 0x3fe66666    # 1.8f

    .line 149
    iget v2, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->speed:F

    mul-float/2addr v2, v3

    const v3, 0x3f733333    # 0.95f

    mul-float/2addr v7, v3

    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->setSpeed(F)V

    return-void

    .line 142
    :pswitch_176
    invoke-virtual {v0, v5, v6, v4}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->getFutureTileHeight(III)F

    move-result v4

    int-to-float v5, v15

    .line 143
    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v1, v3, v3, v4}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->flyTo(IIF)V

    .line 144
    iget v2, v2, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->speed:F

    mul-float v2, v2, v16

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->setSpeed(F)V

    return-void

    .line 89
    :cond_18a
    :goto_18a
    iget-object v2, v0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->spawner:Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;

    invoke-interface {v2, v1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;->remove(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    return-void

    :pswitch_data_190
    .packed-switch 0x1
        :pswitch_aa
        :pswitch_a6
        :pswitch_8f
        :pswitch_89
        :pswitch_67
        :pswitch_63
    .end packed-switch

    :pswitch_data_1a0
    .packed-switch 0x1
        :pswitch_176
        :pswitch_14a
        :pswitch_138
        :pswitch_128
        :pswitch_118
        :pswitch_d8
        :pswitch_bf
    .end packed-switch
.end method

.method public prepare()V
    .registers 3

    .line 62
    invoke-super {p0}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->prepare()V

    .line 64
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    .line 65
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->date:Linfo/flowersoft/theotown/components/DefaultDate;

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

.method public final setAirplaneAirplane(Linfo/flowersoft/theotown/city/objects/FlyingObject;Linfo/flowersoft/theotown/components/airport/Airplane;)V
    .registers 9

    .line 315
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/airport/Airplane;->getId()I

    move-result p2

    int-to-long v4, p2

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v0

    iput-wide v0, p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    return-void
.end method

.method public final setAirplaneLane(Linfo/flowersoft/theotown/city/objects/FlyingObject;Linfo/flowersoft/theotown/components/airport/Lane;)V
    .registers 9

    .line 307
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/airport/Lane;->getId()I

    move-result p2

    int-to-long v4, p2

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v0

    iput-wide v0, p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    return-void
.end method

.method public final setAirplaneState(Linfo/flowersoft/theotown/city/objects/FlyingObject;I)V
    .registers 9

    .line 323
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    const/16 v3, 0x14

    int-to-long v4, p2

    const/4 v2, 0x4

    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/util/DataAccessor;->write(JIIJ)J

    move-result-wide v0

    iput-wide v0, p1, Linfo/flowersoft/theotown/city/objects/FlyingObject;->data:J

    return-void
.end method

.method public final spawnAirplane(Linfo/flowersoft/theotown/components/airport/Airplane;Linfo/flowersoft/theotown/components/airport/Lane;)Linfo/flowersoft/theotown/city/objects/FlyingObject;
    .registers 14

    .line 252
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/airport/Lane;->getSx()I

    move-result v0

    .line 253
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/airport/Lane;->getSy()I

    move-result v1

    .line 254
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/airport/Lane;->getTx()I

    move-result v2

    .line 255
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/airport/Lane;->getTy()I

    move-result v3

    .line 257
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextBoolean()Z

    move-result v4

    if-eqz v4, :cond_19

    goto :goto_1f

    :cond_19
    move v10, v2

    move v2, v0

    move v0, v10

    move v10, v3

    move v3, v1

    move v1, v10

    :goto_1f
    sub-int/2addr v0, v2

    sub-int/2addr v1, v3

    .line 266
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/city/Direction;->fromDifferential(II)I

    move-result v8

    .line 267
    invoke-static {v8}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v0

    invoke-virtual {p0, v2, v3, v0}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->collideWithEdgeX(III)I

    move-result v6

    .line 268
    invoke-static {v8}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v0

    invoke-virtual {p0, v2, v3, v0}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->collideWithEdgeY(III)I

    move-result v7

    .line 270
    iget-object v4, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->spawner:Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/airport/Airplane;->getDraft()Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    move-result-object v5

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/airport/Airplane;->getDraft()Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    move-result-object v0

    iget v9, v0, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->flyHeight:I

    invoke-interface/range {v4 .. v9}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;->spawn(Linfo/flowersoft/theotown/draft/FlyingObjectDraft;IIII)Linfo/flowersoft/theotown/city/objects/FlyingObject;

    move-result-object v0

    .line 271
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/airport/Airplane;->getFrame()I

    move-result v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->setFrame(I)V

    .line 272
    invoke-virtual {p0, v0, p2}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->setAirplaneLane(Linfo/flowersoft/theotown/city/objects/FlyingObject;Linfo/flowersoft/theotown/components/airport/Lane;)V

    .line 273
    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->setAirplaneAirplane(Linfo/flowersoft/theotown/city/objects/FlyingObject;Linfo/flowersoft/theotown/components/airport/Airplane;)V

    const/4 p1, 0x1

    .line 274
    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->setAirplaneState(Linfo/flowersoft/theotown/city/objects/FlyingObject;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 275
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->setSpeed(F)V

    return-object v0
.end method

.method public final triggerTaxi(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 7

    .line 195
    new-instance v0, Linfo/flowersoft/theotown/city/BuildingSampler;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getX()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/FlyingObject;->getY()I

    move-result v3

    const/16 v4, 0x20

    invoke-direct {v0, v1, v4, v2, v3}, Linfo/flowersoft/theotown/city/BuildingSampler;-><init>(Linfo/flowersoft/theotown/city/City;III)V

    .line 196
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/BuildingSampler;->clearBuildings()V

    .line 197
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v1

    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v3, "$ap_gate00"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingSampler;->addBuildings(Linfo/flowersoft/theotown/util/SortedList;)V

    .line 198
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v1

    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v3, "$ap_gate01"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingSampler;->addBuildings(Linfo/flowersoft/theotown/util/SortedList;)V

    .line 199
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v1

    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v3, "$ap_gate02"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingSampler;->addBuildings(Linfo/flowersoft/theotown/util/SortedList;)V

    const/4 v1, 0x1

    .line 200
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/BuildingSampler;->setFavorNear(Z)V

    .line 201
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/BuildingSampler;->sample()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 204
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultTraffic;

    const-class v2, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    .line 205
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/DefaultTraffic;->getTrafficHandler(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/traffic/TrafficHandler;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    const-class v2, Linfo/flowersoft/theotown/components/traffic/carcontroller/AirportTaxiCarController;

    .line 206
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->getCarController(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/traffic/carcontroller/AirportTaxiCarController;

    invoke-virtual {v1, p1, v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/AirportTaxiCarController;->spawn(Linfo/flowersoft/theotown/city/objects/FlyingObject;Linfo/flowersoft/theotown/city/objects/Building;)V

    :cond_7f
    return-void
.end method

.method public unregister(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V
    .registers 5

    .line 70
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->getAirplaneAirplane(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Linfo/flowersoft/theotown/components/airport/Airplane;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 71
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/components/airport/Airplane;->setLastDayInCity(J)V

    .line 73
    :cond_f
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->unregister(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    return-void
.end method

.method public update()V
    .registers 12

    .line 218
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getLanes()Ljava/util/List;

    move-result-object v0

    .line 219
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v1

    const/4 v3, 0x0

    move v4, v3

    .line 221
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_62

    .line 222
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/components/airport/Lane;

    .line 224
    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/airport/Lane;->isActive()Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 225
    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/airport/Lane;->getAirplane()Linfo/flowersoft/theotown/components/airport/Airplane;

    move-result-object v6

    .line 227
    invoke-virtual {v6}, Linfo/flowersoft/theotown/components/airport/Airplane;->getLastDayInCity()J

    move-result-wide v7

    sub-long v7, v1, v7

    sget-object v9, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const/16 v10, 0x5a

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    int-to-long v9, v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x1e

    cmp-long v7, v7, v9

    if-lez v7, :cond_5f

    move v7, v3

    move v8, v7

    .line 230
    :goto_3c
    iget-object v9, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_5a

    if-nez v8, :cond_5a

    .line 231
    iget-object v8, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/city/objects/FlyingObject;

    invoke-virtual {p0, v8}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->getAirplaneLane(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Linfo/flowersoft/theotown/components/airport/Lane;

    move-result-object v8

    if-ne v8, v5, :cond_56

    const/4 v8, 0x1

    goto :goto_57

    :cond_56
    move v8, v3

    :goto_57
    add-int/lit8 v7, v7, 0x1

    goto :goto_3c

    :cond_5a
    if-nez v8, :cond_5f

    .line 235
    invoke-virtual {p0, v6, v5}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->spawnAirplane(Linfo/flowersoft/theotown/components/airport/Airplane;Linfo/flowersoft/theotown/components/airport/Lane;)Linfo/flowersoft/theotown/city/objects/FlyingObject;

    :cond_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 241
    :cond_62
    :goto_62
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_87

    .line 242
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->flyingObjects:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/FlyingObject;

    .line 243
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/AirplaneController;->getAirplaneLane(Linfo/flowersoft/theotown/city/objects/FlyingObject;)Linfo/flowersoft/theotown/components/airport/Lane;

    move-result-object v1

    if-eqz v1, :cond_82

    .line 244
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/airport/Lane;->isActive()Z

    move-result v1

    if-nez v1, :cond_7f

    goto :goto_82

    :cond_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    .line 245
    :cond_82
    :goto_82
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectController;->spawner:Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;

    invoke-interface {v1, v0}, Linfo/flowersoft/theotown/components/traffic/flyingobjectcontroller/FlyingObjectSpawner;->remove(Linfo/flowersoft/theotown/city/objects/FlyingObject;)V

    :cond_87
    return-void
.end method
