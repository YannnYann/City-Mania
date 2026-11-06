###### Class info.flowersoft.theotown.city.Drawer (info.flowersoft.theotown.city.Drawer)
.class public final Linfo/flowersoft/theotown/city/Drawer;
.super Ljava/lang/Object;
.source "Drawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/city/Drawer$IconDrawer;
    }
.end annotation


# instance fields
.field public absoluteDay:J

.field public animationSpotFlags:I

.field public bTileX:I

.field public bTileY:I

.field public baseTerrainHeight:I

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public date:Linfo/flowersoft/theotown/components/DefaultDate;

.field public day:D

.field public daytime:F

.field public daytimeDay:D

.field public engine:Lio/blueflower/stapel2d/drawing/Engine;

.field public flat:Z

.field public ground:Linfo/flowersoft/theotown/city/objects/Ground;

.field public iconDrawer:Linfo/flowersoft/theotown/city/Drawer$IconDrawer;

.field public iso:Linfo/flowersoft/theotown/city/IsoConverter;

.field public lod:Linfo/flowersoft/theotown/city/components/LODController;

.field public rectX0:F

.field public rectX1:F

.field public rectY0:F

.field public rectY1:F

.field public rotation:I

.field public scaleX:F

.field public scaleY:F

.field public shadingBlue:I

.field public shadingGreen:I

.field public shadingRed:I

.field public shiftX:F

.field public shiftY:F

.field public shortBuildTimeFactor:I

.field public targetScale:F

.field public terrainHeight:F

.field public tileX:I

.field public tileY:I

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;

.field public time:I

.field public timeDelta:I

.field public upDirs:I

.field public useShading:Z

.field public winter:Z

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->shortBuildTimeFactor:I

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 76
    iput-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->city:Linfo/flowersoft/theotown/city/City;

    .line 77
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-void
.end method

.method public static interpolate(FFF)F
    .registers 4

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    mul-float/2addr p0, p2

    add-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public addShift(FF)V
    .registers 4

    .line 302
    iget v0, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftX:F

    add-float/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftX:F

    .line 303
    iget p1, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftY:F

    add-float/2addr p1, p2

    iput p1, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftY:F

    return-void
.end method

.method public addShiftToTile(FF)V
    .registers 5

    add-float v0, p1, p2

    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, p2

    const/high16 p2, 0x41800000    # 16.0f

    mul-float/2addr p1, p2

    div-float/2addr p1, v1

    .line 307
    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    return-void
.end method

.method public begin(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 7

    .line 123
    iput-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 124
    iget-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    .line 125
    iget-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    .line 126
    iget-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getX()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->rectX0:F

    .line 128
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->rectY0:F

    .line 129
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getX()F

    move-result v0

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->rectX1:F

    .line 130
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result v0

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->rectY1:F

    .line 131
    iget-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    .line 132
    iget-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getLod()Linfo/flowersoft/theotown/city/components/LODController;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->lod:Linfo/flowersoft/theotown/city/components/LODController;

    .line 133
    iget-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    .line 134
    iget-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    .line 135
    iget-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTargetScale()F

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/Drawer;->targetScale:F

    .line 136
    iget-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/Drawer;->time:I

    .line 137
    iget-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTimeDelta()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/Drawer;->timeDelta:I

    .line 138
    iget-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v1

    iput-wide v1, p0, Linfo/flowersoft/theotown/city/Drawer;->absoluteDay:J

    long-to-double v1, v1

    .line 139
    iget-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultDate;->getDayPart()F

    move-result p1

    float-to-double v3, p1

    add-double/2addr v1, v3

    iput-wide v1, p0, Linfo/flowersoft/theotown/city/Drawer;->day:D

    .line 140
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getTimedEffectManager()Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getShortBuildTimeFactor()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/Drawer;->shortBuildTimeFactor:I

    const/4 p1, 0x0

    .line 142
    iput p1, p0, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    .line 143
    iget-object v1, p0, Linfo/flowersoft/theotown/city/Drawer;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/components/Catastrophe;

    .line 144
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/Catastrophe;->getDisasters()Ljava/util/List;

    move-result-object v1

    .line 145
    :goto_a6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_ce

    .line 146
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/components/Disaster;

    .line 147
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/components/Disaster;->isActive()Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 148
    instance-of v3, v2, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    if-eqz v3, :cond_c1

    iget v3, p0, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    or-int/2addr v3, v0

    iput v3, p0, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    .line 149
    :cond_c1
    instance-of v2, v2, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;

    if-eqz v2, :cond_cb

    iget v2, p0, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    :cond_cb
    add-int/lit8 p1, p1, 0x1

    goto :goto_a6

    .line 153
    :cond_ce
    iget-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    .line 154
    instance-of v0, p1, Linfo/flowersoft/theotown/components/DefaultSigns;

    if-eqz v0, :cond_e3

    .line 155
    check-cast p1, Linfo/flowersoft/theotown/components/DefaultSigns;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultSigns;->getIconDrawer()Linfo/flowersoft/theotown/city/Drawer$IconDrawer;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->iconDrawer:Linfo/flowersoft/theotown/city/Drawer$IconDrawer;

    goto :goto_e6

    :cond_e3
    const/4 p1, 0x0

    .line 157
    iput-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->iconDrawer:Linfo/flowersoft/theotown/city/Drawer$IconDrawer;

    .line 160
    :goto_e6
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/WinterManager;->isWinter()Z

    move-result p1

    if-eqz p1, :cond_f7

    .line 161
    iget p1, p0, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    return-void

    .line 163
    :cond_f7
    iget p1, p0, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    return-void
.end method

.method public draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V
    .registers 12

    .line 233
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getRed()I

    move-result v0

    .line 234
    iget-object v1, p0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getGreen()I

    move-result v1

    .line 235
    iget-object v2, p0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getBlue()I

    move-result v2

    .line 236
    iget-boolean v3, p0, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    if-eqz v3, :cond_2a

    .line 237
    iget-object v3, p0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget v4, p0, Linfo/flowersoft/theotown/city/Drawer;->shadingRed:I

    mul-int/2addr v4, v0

    div-int/lit16 v4, v4, 0xff

    iget v5, p0, Linfo/flowersoft/theotown/city/Drawer;->shadingGreen:I

    mul-int/2addr v5, v1

    div-int/lit16 v5, v5, 0xff

    iget v6, p0, Linfo/flowersoft/theotown/city/Drawer;->shadingBlue:I

    mul-int/2addr v6, v2

    div-int/lit16 v6, v6, 0xff

    invoke-virtual {v3, v4, v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 240
    :cond_2a
    iget-object v3, p0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget v4, p0, Linfo/flowersoft/theotown/city/Drawer;->x:F

    iget v5, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftX:F

    add-float/2addr p2, v5

    iget v5, p0, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    mul-float/2addr p2, v5

    add-float/2addr v4, p2

    iget p2, p0, Linfo/flowersoft/theotown/city/Drawer;->y:F

    iget v5, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftY:F

    add-float/2addr p3, v5

    iget v5, p0, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    mul-float/2addr p3, v5

    add-float/2addr p2, p3

    invoke-virtual {v3, p1, v4, p2, p4}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 247
    iget-boolean p1, p0, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    if-eqz p1, :cond_4a

    .line 248
    iget-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p1, v0, v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    :cond_4a
    return-void
.end method

.method public drawSign(FFI)V
    .registers 8

    .line 360
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Drawer;->iconDrawer:Linfo/flowersoft/theotown/city/Drawer$IconDrawer;

    if-eqz v0, :cond_1b

    .line 361
    iget-object v1, p0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget v2, p0, Linfo/flowersoft/theotown/city/Drawer;->x:F

    iget v3, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftX:F

    add-float/2addr p1, v3

    iget v3, p0, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    mul-float/2addr p1, v3

    add-float/2addr v2, p1

    iget p1, p0, Linfo/flowersoft/theotown/city/Drawer;->y:F

    iget v3, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftY:F

    add-float/2addr p2, v3

    iget v3, p0, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    mul-float/2addr p2, v3

    add-float/2addr p1, p2

    invoke-interface {v0, v1, v2, p1, p3}, Linfo/flowersoft/theotown/city/Drawer$IconDrawer;->draw(Lio/blueflower/stapel2d/drawing/Engine;FFI)V

    :cond_1b
    return-void
.end method

.method public drawTriangle(Lio/blueflower/stapel2d/drawing/Image;IFFFFFFFFFFFF)V
    .registers 38

    move-object/from16 v0, p0

    .line 266
    iget-object v1, v0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getRed()I

    move-result v1

    .line 267
    iget-object v2, v0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getGreen()I

    move-result v2

    .line 268
    iget-object v3, v0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getBlue()I

    move-result v3

    .line 269
    iget-boolean v4, v0, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    if-eqz v4, :cond_2c

    iget-object v4, v0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget v5, v0, Linfo/flowersoft/theotown/city/Drawer;->shadingRed:I

    mul-int/2addr v5, v1

    div-int/lit16 v5, v5, 0xff

    iget v6, v0, Linfo/flowersoft/theotown/city/Drawer;->shadingGreen:I

    mul-int/2addr v6, v2

    div-int/lit16 v6, v6, 0xff

    iget v7, v0, Linfo/flowersoft/theotown/city/Drawer;->shadingBlue:I

    mul-int/2addr v7, v3

    div-int/lit16 v7, v7, 0xff

    invoke-virtual {v4, v5, v6, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 271
    :cond_2c
    invoke-virtual/range {p1 .. p2}, Lio/blueflower/stapel2d/drawing/Image;->getTexture(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v9

    .line 272
    invoke-virtual/range {p1 .. p1}, Lio/blueflower/stapel2d/drawing/Image;->getUVStream()[F

    move-result-object v4

    .line 273
    invoke-virtual/range {p1 .. p2}, Lio/blueflower/stapel2d/drawing/Image;->getUVStreamPos(I)I

    move-result v5

    .line 274
    aget v6, v4, v5

    add-int/lit8 v7, v5, 0x2

    aget v8, v4, v7

    move/from16 v10, p9

    invoke-static {v10, v6, v8}, Linfo/flowersoft/theotown/city/Drawer;->interpolate(FFF)F

    move-result v16

    add-int/lit8 v6, v5, 0x1

    .line 275
    aget v8, v4, v6

    add-int/lit8 v10, v5, 0x3

    aget v11, v4, v10

    move/from16 v12, p10

    invoke-static {v12, v8, v11}, Linfo/flowersoft/theotown/city/Drawer;->interpolate(FFF)F

    move-result v17

    .line 276
    aget v8, v4, v5

    aget v11, v4, v7

    move/from16 v12, p11

    invoke-static {v12, v8, v11}, Linfo/flowersoft/theotown/city/Drawer;->interpolate(FFF)F

    move-result v18

    .line 277
    aget v8, v4, v6

    aget v11, v4, v10

    move/from16 v12, p12

    invoke-static {v12, v8, v11}, Linfo/flowersoft/theotown/city/Drawer;->interpolate(FFF)F

    move-result v19

    .line 278
    aget v5, v4, v5

    aget v7, v4, v7

    move/from16 v8, p13

    invoke-static {v8, v5, v7}, Linfo/flowersoft/theotown/city/Drawer;->interpolate(FFF)F

    move-result v20

    .line 279
    aget v5, v4, v6

    aget v4, v4, v10

    move/from16 v6, p14

    invoke-static {v6, v5, v4}, Linfo/flowersoft/theotown/city/Drawer;->interpolate(FFF)F

    move-result v21

    .line 280
    iget-object v8, v0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget v4, v0, Linfo/flowersoft/theotown/city/Drawer;->x:F

    iget v5, v0, Linfo/flowersoft/theotown/city/Drawer;->shiftX:F

    add-float v6, p3, v5

    iget v7, v0, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    mul-float/2addr v6, v7

    add-float v10, v4, v6

    iget v6, v0, Linfo/flowersoft/theotown/city/Drawer;->y:F

    iget v11, v0, Linfo/flowersoft/theotown/city/Drawer;->shiftY:F

    add-float v12, p4, v11

    iget v13, v0, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    mul-float/2addr v12, v13

    add-float/2addr v12, v6

    add-float v14, p5, v5

    mul-float/2addr v14, v7

    add-float/2addr v14, v4

    add-float v15, p6, v11

    mul-float/2addr v15, v13

    add-float/2addr v15, v6

    add-float v5, p7, v5

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    add-float v5, p8, v11

    mul-float/2addr v5, v13

    add-float/2addr v6, v5

    const/16 v22, 0x0

    move v11, v12

    move v12, v14

    move v13, v15

    move v14, v4

    move v15, v6

    invoke-virtual/range {v8 .. v22}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureTriangle(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFFFFFI)V

    .line 290
    iget-object v4, v0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v4, v1, v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    return-void
.end method

.method public end()V
    .registers 1

    .line 0
    return-void
.end method

.method public getCity()Linfo/flowersoft/theotown/city/City;
    .registers 2

    .line 170
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Drawer;->city:Linfo/flowersoft/theotown/city/City;

    return-object v0
.end method

.method public getDrawingX()F
    .registers 4

    .line 294
    iget v0, p0, Linfo/flowersoft/theotown/city/Drawer;->x:F

    iget v1, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftX:F

    iget v2, p0, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getDrawingX(F)F
    .registers 4

    .line 253
    iget v0, p0, Linfo/flowersoft/theotown/city/Drawer;->x:F

    iget v1, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftX:F

    add-float/2addr p1, v1

    iget v1, p0, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public getDrawingY()F
    .registers 4

    .line 298
    iget v0, p0, Linfo/flowersoft/theotown/city/Drawer;->y:F

    iget v1, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftY:F

    iget v2, p0, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getDrawingY(F)F
    .registers 4

    .line 257
    iget v0, p0, Linfo/flowersoft/theotown/city/Drawer;->y:F

    iget v1, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftY:F

    add-float/2addr p1, v1

    iget v1, p0, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    return v0
.end method

.method public getShiftX()F
    .registers 2

    .line 174
    iget v0, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftX:F

    return v0
.end method

.method public getShiftY()F
    .registers 2

    .line 178
    iget v0, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftY:F

    return v0
.end method

.method public getYFactor(I)F
    .registers 4

    .line 356
    iget v0, p0, Linfo/flowersoft/theotown/city/Drawer;->y:F

    iget v1, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftY:F

    int-to-float p1, p1

    add-float/2addr v1, p1

    iget-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result p1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget-object p1, p0, Linfo/flowersoft/theotown/city/Drawer;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result p1

    div-float/2addr v0, p1

    return v0
.end method

.method public isBuildingVisible(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 10

    .line 344
    iget v0, p0, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualWidth(I)I

    move-result v0

    .line 345
    iget v1, p0, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualHeight(I)I

    move-result v1

    .line 346
    iget v2, p0, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    .line 347
    iget v3, p0, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    .line 348
    iget v4, p0, Linfo/flowersoft/theotown/city/Drawer;->x:F

    iget v5, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftX:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    .line 349
    iget v5, p0, Linfo/flowersoft/theotown/city/Drawer;->y:F

    iget v6, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftY:F

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    iget p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    add-int/2addr p1, v0

    add-int/2addr p1, v1

    mul-int/lit8 p1, p1, 0x10

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr v6, p1

    iget p1, p0, Linfo/flowersoft/theotown/city/Drawer;->terrainHeight:F

    const/high16 v7, 0x41400000    # 12.0f

    mul-float/2addr p1, v7

    sub-float/2addr v6, p1

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    .line 350
    iget p1, p0, Linfo/flowersoft/theotown/city/Drawer;->x:F

    iget v6, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftX:F

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x20

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v6, v1

    mul-float/2addr v6, v2

    add-float/2addr p1, v6

    .line 351
    iget v1, p0, Linfo/flowersoft/theotown/city/Drawer;->y:F

    iget v2, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftY:F

    mul-int/lit8 v0, v0, 0x10

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v2, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 352
    iget v0, p0, Linfo/flowersoft/theotown/city/Drawer;->rectX0:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_63

    iget p1, p0, Linfo/flowersoft/theotown/city/Drawer;->rectY0:F

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_63

    iget p1, p0, Linfo/flowersoft/theotown/city/Drawer;->rectX1:F

    cmpg-float p1, v4, p1

    if-gez p1, :cond_63

    iget p1, p0, Linfo/flowersoft/theotown/city/Drawer;->rectY1:F

    cmpg-float p1, v5, p1

    if-gez p1, :cond_63

    const/4 p1, 0x1

    return p1

    :cond_63
    const/4 p1, 0x0

    return p1
.end method

.method public isTileVisible()Z
    .registers 8

    .line 334
    iget v0, p0, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    .line 335
    iget v1, p0, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    .line 336
    iget v2, p0, Linfo/flowersoft/theotown/city/Drawer;->x:F

    iget v3, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftX:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    .line 337
    iget v3, p0, Linfo/flowersoft/theotown/city/Drawer;->y:F

    iget v4, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftY:F

    const/high16 v5, 0x41000000    # 8.0f

    sub-float/2addr v4, v5

    sub-float/2addr v4, v5

    iget v5, p0, Linfo/flowersoft/theotown/city/Drawer;->terrainHeight:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    const/high16 v6, 0x41400000    # 12.0f

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    .line 338
    iget v4, p0, Linfo/flowersoft/theotown/city/Drawer;->x:F

    iget v5, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftX:F

    const/high16 v6, 0x42000000    # 32.0f

    add-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    .line 339
    iget v0, p0, Linfo/flowersoft/theotown/city/Drawer;->y:F

    iget v5, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftY:F

    const/high16 v6, 0x41c00000    # 24.0f

    add-float/2addr v5, v6

    iget v6, p0, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    mul-int/lit8 v6, v6, 0xc

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v1

    add-float/2addr v0, v5

    .line 340
    iget v1, p0, Linfo/flowersoft/theotown/city/Drawer;->rectX0:F

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_52

    iget v1, p0, Linfo/flowersoft/theotown/city/Drawer;->rectY0:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_52

    iget v0, p0, Linfo/flowersoft/theotown/city/Drawer;->rectX1:F

    cmpg-float v0, v2, v0

    if-gez v0, :cond_52

    iget v0, p0, Linfo/flowersoft/theotown/city/Drawer;->rectY1:F

    cmpg-float v0, v3, v0

    if-gez v0, :cond_52

    const/4 v0, 0x1

    return v0

    :cond_52
    const/4 v0, 0x0

    return v0
.end method

.method public isUseShading()Z
    .registers 2

    .line 194
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    return v0
.end method

.method public resetClipping()V
    .registers 2

    .line 330
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->resetClipping()V

    return-void
.end method

.method public resetShift()V
    .registers 2

    const/4 v0, 0x0

    .line 311
    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftX:F

    .line 312
    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftY:F

    return-void
.end method

.method public setClipRect(IIII)V
    .registers 7

    .line 321
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    int-to-float p1, p1

    iget v1, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftX:F

    add-float/2addr p1, v1

    iget v1, p0, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    mul-float/2addr p1, v1

    iget v1, p0, Linfo/flowersoft/theotown/city/Drawer;->x:F

    add-float/2addr p1, v1

    int-to-float p2, p2

    iget v1, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftY:F

    add-float/2addr p2, v1

    iget v1, p0, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    mul-float/2addr p2, v1

    iget v1, p0, Linfo/flowersoft/theotown/city/Drawer;->y:F

    add-float/2addr p2, v1

    int-to-float p3, p3

    iget-object v1, p0, Linfo/flowersoft/theotown/city/Drawer;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    .line 324
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v1

    mul-float/2addr p3, v1

    int-to-float p4, p4

    iget-object v1, p0, Linfo/flowersoft/theotown/city/Drawer;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    .line 325
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v1

    mul-float/2addr p4, v1

    .line 321
    invoke-virtual {v0, p1, p2, p3, p4}, Lio/blueflower/stapel2d/drawing/Engine;->setClipRect(FFFF)V

    return-void
.end method

.method public setRealTile(II)V
    .registers 5

    .line 182
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Drawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v0

    .line 183
    iget-object v1, p0, Linfo/flowersoft/theotown/city/Drawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result v1

    .line 184
    invoke-virtual {p0, v0, v1, p1, p2}, Linfo/flowersoft/theotown/city/Drawer;->setTile(IIII)V

    return-void
.end method

.method public setShadingColor(III)V
    .registers 4

    .line 188
    iput p1, p0, Linfo/flowersoft/theotown/city/Drawer;->shadingRed:I

    .line 189
    iput p2, p0, Linfo/flowersoft/theotown/city/Drawer;->shadingGreen:I

    .line 190
    iput p3, p0, Linfo/flowersoft/theotown/city/Drawer;->shadingBlue:I

    return-void
.end method

.method public setShift(FF)V
    .registers 3

    .line 316
    iput p1, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftX:F

    .line 317
    iput p2, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftY:F

    return-void
.end method

.method public setTile(IIII)V
    .registers 6

    .line 202
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Drawer;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p3, p4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 203
    iput p3, p0, Linfo/flowersoft/theotown/city/Drawer;->tileX:I

    .line 204
    iput p4, p0, Linfo/flowersoft/theotown/city/Drawer;->tileY:I

    .line 205
    iput p3, p0, Linfo/flowersoft/theotown/city/Drawer;->bTileX:I

    .line 206
    iput p4, p0, Linfo/flowersoft/theotown/city/Drawer;->bTileY:I

    .line 207
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Drawer;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p3, p4}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/Drawer;->ground:Linfo/flowersoft/theotown/city/objects/Ground;

    .line 208
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainAverageHeight()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->terrainHeight:F

    .line 209
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Drawer;->ground:Linfo/flowersoft/theotown/city/objects/Ground;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    .line 210
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Drawer;->ground:Linfo/flowersoft/theotown/city/objects/Ground;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->getUpDirs()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->upDirs:I

    .line 211
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Drawer;->ground:Linfo/flowersoft/theotown/city/objects/Ground;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/Drawer;->flat:Z

    .line 212
    iget-object v0, p0, Linfo/flowersoft/theotown/city/Drawer;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p3, p4}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p3

    if-eqz p3, :cond_61

    .line 214
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result p4

    iput p4, p0, Linfo/flowersoft/theotown/city/Drawer;->bTileX:I

    .line 215
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result p3

    iput p3, p0, Linfo/flowersoft/theotown/city/Drawer;->bTileY:I

    goto :goto_61

    .line 218
    :cond_4b
    iput p3, p0, Linfo/flowersoft/theotown/city/Drawer;->tileX:I

    .line 219
    iput p4, p0, Linfo/flowersoft/theotown/city/Drawer;->tileY:I

    .line 220
    iput p3, p0, Linfo/flowersoft/theotown/city/Drawer;->bTileX:I

    .line 221
    iput p4, p0, Linfo/flowersoft/theotown/city/Drawer;->bTileY:I

    const/4 p3, 0x0

    .line 222
    iput-object p3, p0, Linfo/flowersoft/theotown/city/Drawer;->ground:Linfo/flowersoft/theotown/city/objects/Ground;

    const/4 p3, 0x0

    .line 223
    iput p3, p0, Linfo/flowersoft/theotown/city/Drawer;->terrainHeight:F

    const/4 p3, 0x0

    .line 224
    iput p3, p0, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    .line 225
    iput p3, p0, Linfo/flowersoft/theotown/city/Drawer;->upDirs:I

    const/4 p3, 0x1

    .line 226
    iput-boolean p3, p0, Linfo/flowersoft/theotown/city/Drawer;->flat:Z

    .line 228
    :cond_61
    :goto_61
    iget-object p3, p0, Linfo/flowersoft/theotown/city/Drawer;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result p3

    iput p3, p0, Linfo/flowersoft/theotown/city/Drawer;->x:F

    .line 229
    iget-object p3, p0, Linfo/flowersoft/theotown/city/Drawer;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/city/Drawer;->y:F

    return-void
.end method

.method public setTo(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 4

    .line 82
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->x:F

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->x:F

    .line 83
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->y:F

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->y:F

    .line 84
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->shiftX:F

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftX:F

    .line 85
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->shiftY:F

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->shiftY:F

    .line 86
    iget-object v0, p1, Linfo/flowersoft/theotown/city/Drawer;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/Drawer;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    .line 87
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->rectX0:F

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->rectX0:F

    .line 88
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->rectY0:F

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->rectY0:F

    .line 89
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->rectX1:F

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->rectX1:F

    .line 90
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->rectY1:F

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->rectY1:F

    .line 91
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    .line 92
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    .line 93
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->targetScale:F

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->targetScale:F

    .line 94
    iget-object v0, p1, Linfo/flowersoft/theotown/city/Drawer;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/Drawer;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    .line 95
    iget-object v0, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 96
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    .line 97
    iget-object v0, p1, Linfo/flowersoft/theotown/city/Drawer;->lod:Linfo/flowersoft/theotown/city/components/LODController;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/Drawer;->lod:Linfo/flowersoft/theotown/city/components/LODController;

    .line 98
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->time:I

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->time:I

    .line 99
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->timeDelta:I

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->timeDelta:I

    .line 100
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/Drawer;->day:D

    iput-wide v0, p0, Linfo/flowersoft/theotown/city/Drawer;->day:D

    .line 101
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->shortBuildTimeFactor:I

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->shortBuildTimeFactor:I

    .line 102
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->terrainHeight:F

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->terrainHeight:F

    .line 103
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    .line 104
    iget-boolean v0, p1, Linfo/flowersoft/theotown/city/Drawer;->flat:Z

    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/Drawer;->flat:Z

    .line 105
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->upDirs:I

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->upDirs:I

    .line 106
    iget-object v0, p1, Linfo/flowersoft/theotown/city/Drawer;->ground:Linfo/flowersoft/theotown/city/objects/Ground;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/Drawer;->ground:Linfo/flowersoft/theotown/city/objects/Ground;

    .line 107
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->tileX:I

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->tileX:I

    .line 108
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->tileY:I

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->tileY:I

    .line 109
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->bTileX:I

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->bTileX:I

    .line 110
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->bTileY:I

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->bTileY:I

    .line 111
    iget-boolean v0, p1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 112
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->shadingRed:I

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->shadingRed:I

    .line 113
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->shadingGreen:I

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->shadingGreen:I

    .line 114
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->shadingBlue:I

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->shadingBlue:I

    .line 115
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->daytime:F

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->daytime:F

    .line 116
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/Drawer;->daytimeDay:D

    iput-wide v0, p0, Linfo/flowersoft/theotown/city/Drawer;->daytimeDay:D

    .line 117
    iget-boolean v0, p1, Linfo/flowersoft/theotown/city/Drawer;->winter:Z

    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/Drawer;->winter:Z

    .line 118
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    iput v0, p0, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    .line 119
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/Drawer;->absoluteDay:J

    iput-wide v0, p0, Linfo/flowersoft/theotown/city/Drawer;->absoluteDay:J

    return-void
.end method

.method public setUseShading(Z)V
    .registers 2

    .line 198
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    return-void
.end method

###### Class info.flowersoft.theotown.city.Drawer.IconDrawer (info.flowersoft.theotown.city.Drawer$IconDrawer)
.class public interface abstract Linfo/flowersoft/theotown/city/Drawer$IconDrawer;
.super Ljava/lang/Object;
.source "Drawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/Drawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IconDrawer"
.end annotation


# virtual methods
.method public abstract draw(Lio/blueflower/stapel2d/drawing/Engine;FFI)V
.end method
