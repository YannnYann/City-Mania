###### Class info.flowersoft.theotown.components.traffic.carcontroller.MetroController (info.flowersoft.theotown.components.traffic.carcontroller.MetroController)
.class public Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController;
.super Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;
.source "MetroController.java"


# instance fields
.field public final cars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/CarDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final drafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation
.end field

.field public stations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;)V
    .registers 7

    const/4 v0, -0x1

    .line 26
    invoke-direct {p0, p1, v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/CarSpawner;I)V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController;->drafts:Ljava/util/List;

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController;->cars:Ljava/util/List;

    .line 28
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->CARS:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    iput-boolean v2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->canSampleRoad:Z

    move p1, v2

    .line 32
    :goto_21
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->RAILWAY_STATION:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_4d

    .line 33
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->RAILWAY_STATION:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 34
    const-string v3, "railway"

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 35
    const-string v4, "levels"

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/JSONUtil;->optArray(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->optInt(I)I

    move-result v3

    if-ne v3, v0, :cond_4a

    .line 36
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController;->drafts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4a
    add-int/lit8 p1, p1, 0x1

    goto :goto_21

    :cond_4d
    return-void
.end method


# virtual methods
.method public configureSampler(Linfo/flowersoft/theotown/city/BuildingSampler;)V
    .registers 5

    .line 139
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/BuildingSampler;->clearBuildings()V

    const/4 v0, 0x0

    .line 140
    :goto_4
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController;->drafts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 141
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController;->drafts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/BuildingSampler;->addBuildings(Linfo/flowersoft/theotown/util/SortedList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_24
    return-void
.end method

.method public getCarDrafts(Linfo/flowersoft/theotown/draft/BuildingDraft;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ")",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/CarDraft;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController;->cars:Ljava/util/List;

    return-object p1
.end method

.method public getMaxCarCountOf(Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 3

    .line 134
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 147
    const-string v0, "MetroCarController"

    return-object v0
.end method

.method public getRoadLevel()I
    .registers 2

    .line 0
    const/4 v0, -0x2

    return v0
.end method

.method public getSoundID(Linfo/flowersoft/theotown/city/objects/Car;)I
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public getStationRadius(Linfo/flowersoft/theotown/city/objects/Building;)I
    .registers 2

    .line 0
    const/16 p1, 0x40

    return p1
.end method

.method public getStations()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController;->stations:Ljava/util/List;

    if-nez v0, :cond_31

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 83
    :goto_a
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController;->drafts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 84
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController;->drafts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 85
    iget-object v3, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v3

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v2

    .line 86
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 89
    :cond_2a
    new-instance v1, Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController$1;

    invoke-direct {v1, p0, v0}, Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController$1;-><init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController;Ljava/util/List;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController;->stations:Ljava/util/List;

    .line 114
    :cond_31
    iget-object v0, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController;->stations:Ljava/util/List;

    return-object v0
.end method

.method public onSpawn(Linfo/flowersoft/theotown/city/objects/Car;)Z
    .registers 4

    .line 71
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->getBuildingData(Linfo/flowersoft/theotown/city/objects/Car;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 72
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getWaiting()I

    move-result v1

    if-lez v1, :cond_11

    const/16 v1, 0x32

    .line 73
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/Building;->removeWaiters(I)V

    .line 76
    :cond_11
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->onSpawn(Linfo/flowersoft/theotown/city/objects/Car;)Z

    move-result p1

    return p1
.end method

.method public onTarget(Linfo/flowersoft/theotown/city/objects/Car;III)Z
    .registers 9

    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_44

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    const/4 v2, 0x0

    .line 54
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 55
    div-int/lit8 v2, p2, 0x2

    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 56
    div-int/lit8 v3, p3, 0x2

    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v1

    add-int/2addr v3, v1

    if-ltz v2, :cond_41

    if-ltz v3, :cond_41

    .line 57
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v1

    if-ge v2, v1, :cond_41

    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v1

    if-ge v3, v1, :cond_41

    .line 58
    iget-object v1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 59
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getWaiting()I

    move-result v2

    if-lez v2, :cond_41

    const/16 v0, 0x32

    .line 60
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->removeWaiters(I)V

    goto :goto_44

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :cond_44
    :goto_44
    invoke-super {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/traffic/carcontroller/OperationCarController;->onTarget(Linfo/flowersoft/theotown/city/objects/Car;III)Z

    move-result p1

    return p1
.end method

.method public onWorkDone(Linfo/flowersoft/theotown/city/objects/Car;III)Z
    .registers 5

    .line 0
    const/4 p1, 0x0

    return p1
.end method

###### Class info.flowersoft.theotown.components.traffic.carcontroller.MetroController.AnonymousClass1 (info.flowersoft.theotown.components.traffic.carcontroller.MetroController$1)
.class Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController$1;
.super Ljava/util/AbstractList;
.source "MetroController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController;->getStations()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Linfo/flowersoft/theotown/city/objects/Building;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController;

.field public final synthetic val$singleBuildingsList:Ljava/util/List;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 89
    iput-object p1, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController$1;->this$0:Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController$1;->val$singleBuildingsList:Ljava/util/List;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    .line 93
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController$1;->val$singleBuildingsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_29

    .line 94
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController$1;->val$singleBuildingsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/util/SortedList;

    sub-int v3, p1, v1

    .line 95
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_21

    .line 96
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Building;

    return-object p1

    .line 98
    :cond_21
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_29
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController$1;->get(I)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 106
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController$1;->val$singleBuildingsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 107
    iget-object v2, p0, Linfo/flowersoft/theotown/components/traffic/carcontroller/MetroController$1;->val$singleBuildingsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/util/SortedList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1a
    return v1
.end method
