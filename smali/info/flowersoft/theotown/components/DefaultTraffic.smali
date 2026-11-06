###### Class info.flowersoft.theotown.components.DefaultTraffic (info.flowersoft.theotown.components.DefaultTraffic)
.class public final Linfo/flowersoft/theotown/components/DefaultTraffic;
.super Linfo/flowersoft/theotown/city/components/Traffic;
.source "DefaultTraffic.java"


# instance fields
.field public final actionPlaceController:Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

.field public carHandler:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

.field public flyingObjectHandler:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

.field public handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/traffic/TrafficHandler;",
            ">;"
        }
    .end annotation
.end field

.field public pedestrianHandler:Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;

.field public shipHandler:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

.field public trainHandler:Linfo/flowersoft/theotown/components/traffic/TrainTrafficHandler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Traffic;-><init>()V

    .line 47
    new-instance v0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->actionPlaceController:Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/DefaultTraffic;-><init>()V

    .line 52
    iput-object p2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 54
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultTraffic;->prepareHandler()V

    .line 56
    :goto_8
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b2

    .line 57
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_b4

    goto :goto_5f

    :sswitch_1e
    const-string v1, "pedestrian traffic handler"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_27

    goto :goto_5f

    :cond_27
    const/4 v0, 0x5

    goto :goto_5f

    :sswitch_29
    const-string v1, "car handler"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_32

    goto :goto_5f

    :cond_32
    const/4 v0, 0x4

    goto :goto_5f

    :sswitch_34
    const-string v1, "ship handler"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3d

    goto :goto_5f

    :cond_3d
    const/4 v0, 0x3

    goto :goto_5f

    :sswitch_3f
    const-string v1, "train handler"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_48

    goto :goto_5f

    :cond_48
    const/4 v0, 0x2

    goto :goto_5f

    :sswitch_4a
    const-string v1, "flyingObject handler"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_53

    goto :goto_5f

    :cond_53
    const/4 v0, 0x1

    goto :goto_5f

    :sswitch_55
    const-string v1, "action place controller"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v0, 0x0

    :goto_5f
    packed-switch v0, :pswitch_data_ce

    .line 89
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_8

    .line 84
    :pswitch_66
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 85
    iget-object p2, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->pedestrianHandler:Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 86
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_8

    .line 59
    :pswitch_72
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 60
    iget-object p2, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->carHandler:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 61
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_8

    .line 64
    :pswitch_7e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 65
    iget-object p2, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->shipHandler:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 66
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto/16 :goto_8

    .line 69
    :pswitch_8b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 70
    iget-object p2, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->trainHandler:Linfo/flowersoft/theotown/components/traffic/TrainTrafficHandler;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/traffic/TrainTrafficHandler;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 71
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto/16 :goto_8

    .line 74
    :pswitch_98
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 75
    iget-object p2, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->flyingObjectHandler:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 76
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto/16 :goto_8

    .line 79
    :pswitch_a5
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 80
    iget-object p2, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->actionPlaceController:Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 81
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto/16 :goto_8

    :cond_b2
    return-void

    nop

    :sswitch_data_b4
    .sparse-switch
        -0x38408301 -> :sswitch_55
        -0x22d1a028 -> :sswitch_4a
        -0x7e5a2ce -> :sswitch_3f
        0x2736d166 -> :sswitch_34
        0x502f5efe -> :sswitch_29
        0x64e93d42 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_a5
        :pswitch_98
        :pswitch_8b
        :pswitch_7e
        :pswitch_72
        :pswitch_66
    .end packed-switch
.end method


# virtual methods
.method public addOrRemovePlaceOfAction(ILinfo/flowersoft/theotown/city/MapArea;)V
    .registers 4

    .line 233
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->actionPlaceController:Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

    invoke-virtual {v0, p2, p1}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->addOrRemoveActionPlace(Linfo/flowersoft/theotown/city/MapArea;I)V

    return-void
.end method

.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 134
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 136
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultTraffic;->prepareHandler()V

    .line 138
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->bind(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

.method public countCars()I
    .registers 2

    .line 229
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->carHandler:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->countCars()I

    move-result v0

    return v0
.end method

.method public dispose()V
    .registers 3

    .line 246
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->dispose()V

    .line 248
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->handlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->dispose()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public drawAfter(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 12

    .line 152
    iget-object p1, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 153
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v0, 0xff

    .line 154
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 156
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->handlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;

    .line 157
    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->drawAfter(Lio/blueflower/stapel2d/drawing/Engine;)V

    goto :goto_12

    .line 160
    :cond_22
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 161
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 163
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    if-nez v0, :cond_a6

    const/4 v0, 0x0

    move v1, v0

    .line 164
    :goto_30
    sget v2, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->COUNT:I

    if-ge v1, v2, :cond_a6

    .line 165
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->actionPlaceController:Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->isActive(I)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 166
    iget-object v2, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->actionPlaceController:Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->getAreas(I)Ljava/util/List;

    move-result-object v2

    move v3, v0

    .line 167
    :goto_43
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a3

    .line 168
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/city/MapArea;

    .line 169
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/MapArea;->getCenterX()F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    .line 170
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/MapArea;->getCenterY()F

    move-result v7

    add-float/2addr v7, v6

    .line 171
    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v5, v7}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(FF)F

    move-result v6

    .line 172
    iget-object v8, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8, v5, v7}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(FF)F

    move-result v5

    .line 173
    iget-object v7, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v7

    .line 174
    invoke-virtual {v7, v6, v5}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v8, v8

    .line 175
    invoke-virtual {v7, v6, v5}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 178
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/MapArea;->countParcels()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Linfo/flowersoft/theotown/city/MapArea;->getParcelLevel(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0xc

    int-to-float v4, v4

    .line 179
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v6

    mul-float/2addr v4, v6

    float-to-int v4, v4

    sub-int/2addr v5, v4

    .line 181
    sget-object v4, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->frame:[I

    aget v4, v4, v1

    .line 183
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v7, v8

    int-to-float v5, v5

    invoke-virtual {p1, v6, v7, v5, v4}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_a3
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    :cond_a6
    return-void
.end method

.method public drawFlyingObject(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 5

    .line 206
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->flyingObjectHandler:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->draw(IILinfo/flowersoft/theotown/city/Drawer;)V

    return-void
.end method

.method public drawRoad(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 6

    .line 191
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->drawPedestrians:Z

    if-eqz v0, :cond_19

    .line 192
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->pedestrianHandler:Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->update(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 193
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->pedestrianHandler:Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->drawBackground(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 194
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->carHandler:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->draw(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 195
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->pedestrianHandler:Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->drawForeground(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/Drawer;)V

    return-void

    .line 197
    :cond_19
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->carHandler:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->draw(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/Drawer;)V

    return-void
.end method

.method public drawShip(IILinfo/flowersoft/theotown/city/objects/Ship;Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 6

    .line 202
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->shipHandler:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->draw(IILinfo/flowersoft/theotown/city/objects/Ship;Linfo/flowersoft/theotown/city/Drawer;)V

    return-void
.end method

.method public getActionPlaceController()Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;
    .registers 2

    .line 259
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->actionPlaceController:Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

    return-object v0
.end method

.method public getTrafficHandler(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/traffic/TrafficHandler;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linfo/flowersoft/theotown/components/traffic/TrafficHandler;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 237
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->handlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 238
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->handlers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;

    .line 239
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-object v1

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public nextDay()V
    .registers 3

    .line 211
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->nextDay()V

    .line 212
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->handlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;

    .line 213
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->nextDay()V

    goto :goto_9

    :cond_19
    return-void
.end method

.method public prepare()V
    .registers 3

    .line 143
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->handlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;

    .line 144
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->prepare()V

    goto :goto_6

    .line 147
    :cond_16
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->prepare()V

    return-void
.end method

.method public final prepareHandler()V
    .registers 4

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->handlers:Ljava/util/List;

    if-nez v0, :cond_4f

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->handlers:Ljava/util/List;

    .line 124
    new-instance v1, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->carHandler:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->handlers:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->shipHandler:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->handlers:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/components/traffic/TrainTrafficHandler;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/components/traffic/TrainTrafficHandler;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->trainHandler:Linfo/flowersoft/theotown/components/traffic/TrainTrafficHandler;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->handlers:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->flyingObjectHandler:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->handlers:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->pedestrianHandler:Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4f
    return-void
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x0

    .line 252
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->handlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 253
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->handlers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;

    .line 254
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    const-string v0, "car handler"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 97
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->carHandler:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 98
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 100
    const-string v0, "ship handler"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 101
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->shipHandler:Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/traffic/ShipTrafficHandler;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 102
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 104
    const-string v0, "train handler"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 105
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->trainHandler:Linfo/flowersoft/theotown/components/traffic/TrainTrafficHandler;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/traffic/TrainTrafficHandler;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 106
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 108
    const-string v0, "flyingObject handler"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 109
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->flyingObjectHandler:Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/traffic/FlyingTrafficHandler;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 110
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 112
    const-string v0, "action place controller"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 113
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->actionPlaceController:Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 114
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 116
    const-string v0, "pedestrian traffic handler"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 117
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->pedestrianHandler:Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/traffic/PedestrianTrafficHandler;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 118
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public update()V
    .registers 3

    .line 219
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->update()V

    .line 221
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->actionPlaceController:Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->update()V

    .line 223
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTraffic;->handlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;

    .line 224
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/traffic/TrafficHandler;->update()V

    goto :goto_e

    :cond_1e
    return-void
.end method
