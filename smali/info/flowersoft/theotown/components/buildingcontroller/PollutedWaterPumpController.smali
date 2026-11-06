###### Class info.flowersoft.theotown.components.buildingcontroller.PollutedWaterPumpController (info.flowersoft.theotown.components.buildingcontroller.PollutedWaterPumpController)
.class public Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;
.super Ljava/lang/Object;
.source "PollutedWaterPumpController.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

.field public lastBuilding:Linfo/flowersoft/theotown/city/objects/Building;

.field public lastValue:F

.field public minimumSelector:Lio/blueflower/stapel2d/util/MinimumSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/MinimumSelector<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lio/blueflower/stapel2d/util/MinimumSelector;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/MinimumSelector;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;->minimumSelector:Lio/blueflower/stapel2d/util/MinimumSelector;

    .line 32
    iput-object p1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;->city:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public accept(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 5

    .line 76
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;->minimumSelector:Lio/blueflower/stapel2d/util/MinimumSelector;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    sget-object v2, Linfo/flowersoft/theotown/city/components/InfluenceType;->POLLUTION:Linfo/flowersoft/theotown/city/components/InfluenceType;

    .line 77
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 76
    invoke-virtual {v1, p1, v2}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluence(Linfo/flowersoft/theotown/city/objects/Building;I)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    invoke-virtual {v0, p1, v2}, Lio/blueflower/stapel2d/util/MinimumSelector;->assume(Ljava/lang/Object;F)Z

    return-void
.end method

.method public afterPass()V
    .registers 1

    .line 0
    return-void
.end method

.method public beforePass()V
    .registers 3

    .line 62
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultInfluence;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    .line 64
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;->minimumSelector:Lio/blueflower/stapel2d/util/MinimumSelector;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/MinimumSelector;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 65
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;->minimumSelector:Lio/blueflower/stapel2d/util/MinimumSelector;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/MinimumSelector;->getMinimum()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Building;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;->lastBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    .line 66
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;->minimumSelector:Lio/blueflower/stapel2d/util/MinimumSelector;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/MinimumSelector;->getMinimumValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;->lastValue:F

    goto :goto_2c

    :cond_29
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;->lastBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    .line 71
    :goto_2c
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;->minimumSelector:Lio/blueflower/stapel2d/util/MinimumSelector;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/MinimumSelector;->clear()V

    return-void
.end method

.method public canHandle(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z
    .registers 6

    .line 57
    iget-wide v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->water:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public getLastBuilding()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 2

    .line 81
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;->lastBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    return-object v0
.end method

.method public getLastValue()F
    .registers 2

    .line 85
    iget v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/PollutedWaterPumpController;->lastValue:F

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 90
    const-string v0, "polluted water"

    return-object v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    :cond_a
    return-void
.end method

.method public prepare()V
    .registers 1

    .line 0
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
