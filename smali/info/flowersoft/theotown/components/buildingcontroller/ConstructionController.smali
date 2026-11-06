###### Class info.flowersoft.theotown.components.buildingcontroller.ConstructionController (info.flowersoft.theotown.components.buildingcontroller.ConstructionController)
.class public Linfo/flowersoft/theotown/components/buildingcontroller/ConstructionController;
.super Ljava/lang/Object;
.source "ConstructionController.java"

# interfaces
.implements Linfo/flowersoft/theotown/components/buildingcontroller/BuildingController;


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public date:Linfo/flowersoft/theotown/components/DefaultDate;

.field public day:J

.field public modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

.field public shortBuildTimeFactor:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ConstructionController;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object v1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ConstructionController;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    .line 30
    new-instance v1, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-direct {v1, p1, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ConstructionController;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    return-void
.end method


# virtual methods
.method public accept(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 10

    .line 66
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_2e

    .line 67
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    .line 68
    iget-wide v4, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ConstructionController;->day:J

    long-to-double v4, v4

    invoke-virtual {p1, v4, v5}, Linfo/flowersoft/theotown/city/objects/Building;->getDaysBuilt(D)D

    move-result-wide v4

    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildTime:I

    int-to-double v6, v0

    add-double/2addr v4, v6

    iget v6, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ConstructionController;->shortBuildTimeFactor:I

    div-int/2addr v0, v6

    int-to-double v6, v0

    sub-double/2addr v4, v6

    cmpl-double v0, v4, v2

    if-ltz v0, :cond_77

    .line 69
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ConstructionController;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v0

    .line 70
    :try_start_24
    iget-object v2, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ConstructionController;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v2, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->finishBuilding(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    .line 71
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2b

    throw p1

    .line 73
    :cond_2e
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v0

    if-eqz v0, :cond_77

    iget-wide v4, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ConstructionController;->day:J

    long-to-double v4, v4

    invoke-virtual {p1, v4, v5}, Linfo/flowersoft/theotown/city/objects/Building;->getPendingUpgradeDaysLeft(D)D

    move-result-wide v4

    cmpg-double v0, v4, v2

    if-lez v0, :cond_4b

    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ConstructionController;->city:Linfo/flowersoft/theotown/city/City;

    .line 74
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->buildImmediately()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 75
    :cond_4b
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ConstructionController;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v0

    .line 76
    :try_start_4e
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v4

    if-eqz v4, :cond_73

    iget-wide v4, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ConstructionController;->day:J

    long-to-double v4, v4

    invoke-virtual {p1, v4, v5}, Linfo/flowersoft/theotown/city/objects/Building;->getPendingUpgradeDaysLeft(D)D

    move-result-wide v4

    cmpg-double v2, v4, v2

    if-lez v2, :cond_6e

    iget-object v2, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ConstructionController;->city:Linfo/flowersoft/theotown/city/City;

    .line 77
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/GameMode;->buildImmediately()Z

    move-result v2

    if-eqz v2, :cond_73

    goto :goto_6e

    :catchall_6c
    move-exception p1

    goto :goto_75

    .line 78
    :cond_6e
    :goto_6e
    iget-object v2, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ConstructionController;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v2, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->finishUpgrade(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    .line 80
    :cond_73
    monitor-exit v0

    return-void

    :goto_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_4e .. :try_end_76} :catchall_6c

    throw p1

    :cond_77
    return-void
.end method

.method public afterPass()V
    .registers 1

    .line 0
    return-void
.end method

.method public beforePass()V
    .registers 3

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ConstructionController;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ConstructionController;->day:J

    .line 61
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getTimedEffectManager()Linfo/flowersoft/theotown/mechanics/TimedEffectManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/TimedEffectManager;->getShortBuildTimeFactor()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/buildingcontroller/ConstructionController;->shortBuildTimeFactor:I

    return-void
.end method

.method public canHandle(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 86
    const-string v0, "construction"

    return-object v0
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
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
