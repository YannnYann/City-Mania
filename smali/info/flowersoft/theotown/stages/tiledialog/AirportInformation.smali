###### Class info.flowersoft.theotown.stages.tiledialog.AirportInformation (info.flowersoft.theotown.stages.tiledialog.AirportInformation)
.class public Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation;
.super Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;
.source "AirportInformation.java"


# instance fields
.field public building:Linfo/flowersoft/theotown/city/objects/Building;

.field public road:Linfo/flowersoft/theotown/city/objects/Road;

.field public zone:Linfo/flowersoft/theotown/draft/ZoneDraft;


# direct methods
.method public static synthetic $r8$lambda$_0lDxQqjyxesSUM2vny1C1u9eLA(Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 5

    .line 57
    new-instance v0, Linfo/flowersoft/theotown/stages/CityInfoStage;

    .line 57
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    .line 57
    invoke-direct {v0, v1, p1}, Linfo/flowersoft/theotown/stages/CityInfoStage;-><init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 58
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/stages/BaseStage;->setOwnBackgroundCity(Linfo/flowersoft/theotown/city/City;)V

    .line 59
    new-instance p0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;-><init>()V

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/stages/CityInfoStage;->selectCityInfo(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    .line 60
    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public canHandle()Z
    .registers 3

    .line 44
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->AIRPORT:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq v0, v1, :cond_20

    :cond_e
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 45
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/city/Zones;->AIRPORT:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-nez v0, :cond_20

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation;->road:Linfo/flowersoft/theotown/city/objects/Road;

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public finishImmediately(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)Ljava/lang/Runnable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraftId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$ap_tower00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 56
    new-instance v0, Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V

    return-object v0

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCityInfos()[Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;
    .registers 4

    .line 50
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public isMutualExclusive()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public setContext(Linfo/flowersoft/theotown/city/City;II)V
    .registers 6

    .line 31
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/stages/tiledialog/TileInformationProvider;->setContext(Linfo/flowersoft/theotown/city/City;II)V

    .line 32
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 33
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation;->road:Linfo/flowersoft/theotown/city/objects/Road;

    .line 34
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.tiledialog.AirportInformation$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.tiledialog.AirportInformation$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic f$2:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation$$ExternalSyntheticLambda0;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation$$ExternalSyntheticLambda0;->f$2:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation$$ExternalSyntheticLambda0;->f$1:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation$$ExternalSyntheticLambda0;->f$2:Lio/blueflower/stapel2d/util/Setter;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation;->$r8$lambda$_0lDxQqjyxesSUM2vny1C1u9eLA(Linfo/flowersoft/theotown/stages/tiledialog/AirportInformation;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method
