###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary (info.flowersoft.theotown.scripting.libraries.CityLibrary)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;
.super Linfo/flowersoft/theotown/scripting/ManagedLibrary;
.source "CityLibrary.java"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;


# instance fields
.field public final addedBuildingListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/ScriptMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field public final addedRoadListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/draft/RoadDraft;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/ScriptMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field public budget:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public final buildingListener:Linfo/flowersoft/theotown/city/BuildingList$Listener;

.field public catastrophe:Linfo/flowersoft/theotown/components/DefaultCatastrophe;

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final cityInfoVisitor:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public date:Linfo/flowersoft/theotown/components/DefaultDate;

.field public final finishedBuildingListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/ScriptMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field public idleGame:Linfo/flowersoft/theotown/components/DefaultIdleGame;

.field public final localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

.field public management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

.field public notificator:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

.field public final regionInformation:Linfo/flowersoft/theotown/cityfile/RegionInformation;

.field public final removedBuildingListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/ScriptMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field public final removedRoadListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/draft/RoadDraft;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/ScriptMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field public final roadListener:Linfo/flowersoft/theotown/city/RoadList$Listener;

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;

.field public traffic:Linfo/flowersoft/theotown/components/DefaultTraffic;

.field public final transitionRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

.field public final uiRebuilder:Ljava/lang/Runnable;

.field public final upgradedBuildingListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/ScriptMethod;",
            ">;>;"
        }
    .end annotation
.end field

.field public weather:Linfo/flowersoft/theotown/components/DefaultWeather;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;Ljava/lang/Runnable;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/cityfile/RegionInformation;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;",
            ">;",
            "Ljava/lang/Runnable;",
            "Linfo/flowersoft/theotown/cityloader/CityKeeper;",
            "Linfo/flowersoft/theotown/city/City;",
            "Linfo/flowersoft/theotown/cityfile/RegionInformation;",
            ")V"
        }
    .end annotation

    .line 180
    const-string v0, "libs/City.lua"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->addedBuildingListeners:Ljava/util/Map;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->finishedBuildingListeners:Ljava/util/Map;

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->removedBuildingListeners:Ljava/util/Map;

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->upgradedBuildingListeners:Ljava/util/Map;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->addedRoadListeners:Ljava/util/Map;

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->removedRoadListeners:Ljava/util/Map;

    .line 140
    new-instance v0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$1;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildingListener:Linfo/flowersoft/theotown/city/BuildingList$Listener;

    .line 162
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$2;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$2;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->roadListener:Linfo/flowersoft/theotown/city/RoadList$Listener;

    .line 181
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 182
    iput-object p5, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->city:Linfo/flowersoft/theotown/city/City;

    .line 183
    invoke-virtual {p5}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 184
    iput-object p4, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    if-eqz p4, :cond_95

    const/4 p1, 0x1

    .line 188
    invoke-virtual {p5, p1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    const/4 p1, 0x6

    .line 189
    invoke-virtual {p5, p1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->catastrophe:Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    const/4 p1, 0x7

    .line 190
    invoke-virtual {p5, p1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultTraffic;

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->traffic:Linfo/flowersoft/theotown/components/DefaultTraffic;

    const/4 p1, 0x0

    .line 191
    invoke-virtual {p5, p1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultBudget;

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    const/4 p1, 0x3

    .line 192
    invoke-virtual {p5, p1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    const/16 p1, 0x14

    .line 193
    invoke-virtual {p5, p1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultIdleGame;

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->idleGame:Linfo/flowersoft/theotown/components/DefaultIdleGame;

    const/4 p1, 0x4

    .line 194
    invoke-virtual {p5, p1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->notificator:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    const/16 p1, 0xc

    .line 195
    invoke-virtual {p5, p1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultWeather;

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    .line 198
    :cond_95
    new-instance p1, Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    invoke-direct {p1, p5}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->transitionRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    .line 199
    new-instance p1, Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-direct {p1, p5}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    .line 200
    iput-object p6, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->regionInformation:Linfo/flowersoft/theotown/cityfile/RegionInformation;

    .line 201
    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->cityInfoVisitor:Lio/blueflower/stapel2d/util/Setter;

    .line 202
    iput-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->uiRebuilder:Ljava/lang/Runnable;

    .line 204
    invoke-virtual {p5}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object p1

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/BuildingList;->addListener(Linfo/flowersoft/theotown/city/BuildingList$Listener;)V

    .line 205
    invoke-virtual {p5}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object p1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/RoadList;->addListener(Linfo/flowersoft/theotown/city/RoadList$Listener;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->onAddedBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->onFinishedBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V

    return-void
.end method

.method public static synthetic access$1000(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultIdleGame;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->idleGame:Linfo/flowersoft/theotown/components/DefaultIdleGame;

    return-object p0
.end method

.method public static synthetic access$1100(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultDate;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    return-object p0
.end method

.method public static synthetic access$1200(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/transition/TransitionRunner;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->transitionRunner:Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    return-object p0
.end method

.method public static synthetic access$1300(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->catastrophe:Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    return-object p0
.end method

.method public static synthetic access$1400(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultWeather;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->weather:Linfo/flowersoft/theotown/components/DefaultWeather;

    return-object p0
.end method

.method public static synthetic access$1500(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-object p0
.end method

.method public static synthetic access$1600(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/cityloader/CityKeeper;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    return-object p0
.end method

.method public static synthetic access$1700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultTraffic;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->traffic:Linfo/flowersoft/theotown/components/DefaultTraffic;

    return-object p0
.end method

.method public static synthetic access$1800(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/notification/DefaultNotificator;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->notificator:Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    return-object p0
.end method

.method public static synthetic access$1900(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/util/DraftLocalizer;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->onRemovedBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V

    return-void
.end method

.method public static synthetic access$2000(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/Tiles;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-object p0
.end method

.method public static synthetic access$2100(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Lio/blueflower/stapel2d/util/Setter;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->cityInfoVisitor:Lio/blueflower/stapel2d/util/Setter;

    return-object p0
.end method

.method public static synthetic access$2200(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Ljava/lang/Runnable;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->uiRebuilder:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$2300(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Ljava/lang/String;)V
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;->assertPrivileged(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2400(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Ljava/lang/String;)V
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;->assertPrivileged(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2500(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Ljava/util/Map;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->addedBuildingListeners:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$2600(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Ljava/util/Map;Ljava/lang/Object;Linfo/flowersoft/theotown/scripting/ScriptMethod;)V
    .registers 4

    .line 112
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->addListener(Ljava/util/Map;Ljava/lang/Object;Linfo/flowersoft/theotown/scripting/ScriptMethod;)V

    return-void
.end method

.method public static synthetic access$2700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Ljava/util/Map;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->finishedBuildingListeners:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$2800(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Ljava/util/Map;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->upgradedBuildingListeners:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$2900(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Ljava/util/Map;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->removedBuildingListeners:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/draft/UpgradeDraft;)V
    .registers 3

    .line 112
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->onUpgradedBuilding(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/draft/UpgradeDraft;)V

    return-void
.end method

.method public static synthetic access$3000(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Ljava/util/Map;Ljava/lang/Object;Linfo/flowersoft/theotown/scripting/ScriptMethod;)Z
    .registers 4

    .line 112
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->removeListener(Ljava/util/Map;Ljava/lang/Object;Linfo/flowersoft/theotown/scripting/ScriptMethod;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$3100(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Ljava/util/Map;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->addedRoadListeners:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$3200(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Ljava/util/Map;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->removedRoadListeners:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$3300(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;)Lvm2/LuaTable;
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildSoundTable(Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;)Lvm2/LuaTable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3400(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/Draft;)Lvm2/LuaTable;
    .registers 3

    .line 112
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildDraftDrawerTable(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/Draft;)Lvm2/LuaTable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$3500(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->addToHistory(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

    return-void
.end method

.method public static synthetic access$3600(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/Selectable;)Lvm2/LuaTable;
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->getHistory(Linfo/flowersoft/theotown/ui/Selectable;)Lvm2/LuaTable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/city/objects/Road;)V
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->onAddedRoad(Linfo/flowersoft/theotown/city/objects/Road;)V

    return-void
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/city/objects/Road;)V
    .registers 2

    .line 112
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->onRemovedRoad(Linfo/flowersoft/theotown/city/objects/Road;)V

    return-void
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/management/DefaultManagement;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    return-object p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/cityfile/RegionInformation;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->regionInformation:Linfo/flowersoft/theotown/cityfile/RegionInformation;

    return-object p0
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultBudget;
    .registers 1

    .line 112
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    return-object p0
.end method

.method public static findExternalCity(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 4

    .line 1648
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1649
    invoke-virtual {p1}, Linfo/flowersoft/theotown/scripting/Script;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->path:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    if-eqz v0, :cond_13

    .line 1650
    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_1e

    .line 1651
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_1e

    :cond_1d
    return-object v0

    .line 1652
    :cond_1e
    :goto_1e
    invoke-virtual {p1}, Linfo/flowersoft/theotown/scripting/Script;->getPath()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object p1

    invoke-virtual {p1, p0}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object p0

    return-object p0
.end method

.method public static findInternalCity(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Ljava/io/File;
    .registers 3

    .line 1658
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1659
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getDefault(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getDirectory()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1660
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_23

    new-instance p1, Ljava/io/File;

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getLocalMapSaveDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1

    :cond_23
    return-object v0
.end method


# virtual methods
.method public final addListener(Ljava/util/Map;Ljava/lang/Object;Linfo/flowersoft/theotown/scripting/ScriptMethod;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/ScriptMethod;",
            ">;>;TT;",
            "Linfo/flowersoft/theotown/scripting/ScriptMethod;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_3

    return-void

    .line 218
    :cond_3
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_13

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_13
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addToHistory(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V
    .registers 4

    .line 1622
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getMaster()Lio/blueflower/stapel2d/gui/Master;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1624
    const-string v1, "roottoolbar"

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->findChildWithId(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    .line 1625
    instance-of v1, v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    if-eqz v1, :cond_1b

    .line 1626
    check-cast v0, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->registerForUse(Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public final buildDraftDrawerTable(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/Draft;)Lvm2/LuaTable;
    .registers 6

    .line 1461
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    .line 1462
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$72;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$72;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

    const-string v2, "getWidth"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1468
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$73;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$73;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

    const-string v2, "getHeight"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1474
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$74;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$74;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

    const-string v2, "getTitle"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1480
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$75;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$75;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

    const-string v2, "getText"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1486
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$76;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$76;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

    const-string v2, "getPrice"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1492
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$77;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$77;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

    const-string v2, "getMonthlyPrice"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1498
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$78;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$78;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

    const-string v2, "getDiamondPrice"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1504
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$79;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$79;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

    const-string v2, "isActive"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1510
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$80;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$80;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

    const-string v2, "isSelectable"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1516
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$81;

    invoke-direct {v1, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$81;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/draft/Draft;)V

    const-string v2, "getRequirements"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1548
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$82;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$82;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

    const-string v2, "hasFrames"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1554
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$83;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$83;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

    const-string v2, "nextFrame"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1561
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$84;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$84;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

    const-string v2, "prevFrame"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1568
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$85;

    invoke-direct {v1, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$85;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/draft/Draft;)V

    const-string p2, "getDraft"

    invoke-virtual {v0, p2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1574
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$86;

    invoke-direct {p2, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$86;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

    const-string v1, "select"

    invoke-virtual {v0, v1, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1582
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$87;

    invoke-direct {p2, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$87;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

    const-string v1, "markAsUsed"

    invoke-virtual {v0, v1, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1589
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$88;

    invoke-direct {p2, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$88;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

    const-string v1, "draw"

    invoke-virtual {v0, v1, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1612
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$89;

    invoke-direct {p2, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$89;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

    const-string p1, "getHistory"

    invoke-virtual {v0, p1, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-object v0
.end method

.method public final buildSoundTable(Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;)Lvm2/LuaTable;
    .registers 5

    .line 1417
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    .line 1419
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$67;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$67;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;)V

    const-string v2, "stop"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1426
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$68;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$68;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;)V

    const-string v2, "setVolume"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1434
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$69;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$69;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v2, "setRate"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1441
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$70;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$70;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;)V

    const-string v2, "setPosition"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1449
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$71;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$71;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;)V

    const-string p1, "setSize"

    invoke-virtual {v0, p1, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-object v0
.end method

.method public final callBuildingListeners(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/ScriptMethod;",
            ">;",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_3c

    .line 233
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 234
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    .line 235
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    const-string v2, "x"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;I)V

    .line 236
    const-string v1, "y"

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;I)V

    .line 237
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p2

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    const-string v1, "draft"

    invoke-virtual {v0, v1, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    const/4 p2, 0x0

    .line 239
    :goto_2a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_3c

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/scripting/ScriptMethod;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    add-int/lit8 p2, p2, 0x1

    goto :goto_2a

    :cond_3c
    return-void
.end method

.method public final callBuildingUpgradeListeners(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/draft/UpgradeDraft;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/ScriptMethod;",
            ">;",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            "Linfo/flowersoft/theotown/draft/UpgradeDraft;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_43

    .line 244
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 245
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    .line 246
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    const-string v2, "x"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;I)V

    .line 247
    const-string v1, "y"

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;I)V

    .line 248
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p2

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    const-string v1, "draft"

    invoke-virtual {v0, v1, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 249
    const-string p2, "upgradeDraft"

    iget-object p3, p3, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    invoke-virtual {v0, p2, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    const/4 p2, 0x0

    .line 251
    :goto_31
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_43

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Linfo/flowersoft/theotown/scripting/ScriptMethod;

    invoke-virtual {p3, v0}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    add-int/lit8 p2, p2, 0x1

    goto :goto_31

    :cond_43
    return-void
.end method

.method public final callRoadListeners(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Road;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/ScriptMethod;",
            ">;",
            "Linfo/flowersoft/theotown/city/objects/Road;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_43

    .line 256
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    .line 257
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    .line 258
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v1

    const-string v2, "x"

    invoke-virtual {v0, v2, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;I)V

    .line 259
    const-string v1, "y"

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;I)V

    .line 260
    const-string v1, "level"

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->getLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;I)V

    .line 261
    iget-object p2, p2, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    const-string v1, "draft"

    invoke-virtual {v0, v1, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    const/4 p2, 0x0

    .line 263
    :goto_31
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_43

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/scripting/ScriptMethod;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    add-int/lit8 p2, p2, 0x1

    goto :goto_31

    :cond_43
    return-void
.end method

.method public final getHistory(Linfo/flowersoft/theotown/ui/Selectable;)Lvm2/LuaTable;
    .registers 5

    .line 1632
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    .line 1633
    invoke-interface {p1}, Linfo/flowersoft/theotown/ui/Selectable;->getMaster()Lio/blueflower/stapel2d/gui/Master;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 1635
    const-string v1, "roottoolbar"

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/gui/Gadget;->findChildWithId(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p1

    .line 1636
    instance-of v1, p1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    if-eqz v1, :cond_44

    .line 1637
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1638
    check-cast p1, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/toolbar/ToolBar;->getHistory()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1639
    invoke-static {v2}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    .line 1641
    :cond_3f
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createArray(Ljava/util/List;)Lvm2/LuaTable;

    move-result-object p1

    return-object p1

    .line 1644
    :cond_44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createArray(Ljava/util/List;)Lvm2/LuaTable;

    move-result-object p1

    return-object p1
.end method

.method public inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
    .registers 6

    .line 332
    iget-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->city:Linfo/flowersoft/theotown/city/City;

    .line 333
    invoke-static {p3}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object p3

    .line 334
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->cityKeeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    if-eqz v0, :cond_f

    invoke-static {v0}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object v0

    goto :goto_11

    :cond_f
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    .line 332
    :goto_11
    const-string v1, "_init"

    invoke-virtual {p1, v1, p3, v0}, Lvm2/LuaValue;->method(Ljava/lang/String;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 336
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$3;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$3;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "getHappiness"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 373
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$4;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$4;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "setHappinessModifier"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 394
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$5;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$5;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "getId"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 401
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$6;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$6;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "getRegionId"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 408
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$7;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$7;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "getRegionName"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 415
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$8;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$8;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "spendMoney"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 439
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$9;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$9;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "earnMoney"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 471
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$10;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$10;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "getCurrency"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 484
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$11;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$11;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "spendCurrency"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 497
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$12;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$12;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "earnCurrency"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 511
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$13;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$13;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "getFunVar"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 526
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$14;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$14;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "setFunVar"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 536
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$15;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$15;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "getDisaster"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 550
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$16;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$16;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "issueDisaster"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 580
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$17;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$17;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "spawnLightning"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 594
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$18;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$18;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "enableDisaster"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 607
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$19;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$19;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "getView"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 622
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$20;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$20;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "setView"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 638
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$21;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$21;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "getScale"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 644
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$22;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$22;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "setScale"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 660
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$23;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$23;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "move"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 670
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$24;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$24;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "save"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 681
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$25;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$25;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "load"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 712
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$26;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$26;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "exit"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 721
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$27;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$27;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "getCities"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 735
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$28;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$28;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "alert"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 751
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$29;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$29;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "hideNotification"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 758
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$30;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$30;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "clearNotifications"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 766
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "showNotification"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 903
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$32;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$32;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "setBackground"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 919
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$33;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$33;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "getBackground"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 926
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$34;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$34;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "noise"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 951
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$35;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$35;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "hash"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 967
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$36;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$36;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "getPlayTime"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 974
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$37;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$37;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "execute"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 987
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 988
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;-><init>()V

    const-string v1, "general"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;-><init>()V

    const-string v1, "statistics"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo;-><init>()V

    const-string v1, "rank"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;-><init>()V

    const-string v1, "rci"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo;-><init>()V

    const-string v1, "rating"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;-><init>()V

    const-string v1, "budget"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;-><init>()V

    const-string v1, "loan"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo;-><init>()V

    const-string v1, "energy"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/WaterCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/WaterCityInfo;-><init>()V

    const-string v1, "water"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo;-><init>()V

    const-string v1, "education"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo;-><init>()V

    const-string v1, "health"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;-><init>()V

    const-string v1, "neighbor"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;-><init>()V

    const-string v1, "airport"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/TSCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/TSCityInfo;-><init>()V

    const-string v1, "ts"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    new-instance v0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$38;

    invoke-direct {v0, p0, p3}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$38;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Ljava/util/Map;)V

    const-string p3, "openInfo"

    invoke-virtual {p1, p3, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1019
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$39;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$39;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "rebuildUI"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1029
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$40;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$40;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "countBuildings"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1040
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$41;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$41;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "getBuilding"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1058
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$42;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$42;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "forEachBuilding"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1081
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$43;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$43;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "countRoads"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1092
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$44;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$44;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "getRoad"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1115
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$45;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$45;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "forEachRoad"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1140
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$46;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$46;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "setTaxFactors"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1159
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$47;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$47;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "getTax"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1172
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$48;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$48;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string v0, "setTax"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1190
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$49;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$49;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string p3, "addBuildingListener"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1203
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$50;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$50;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string p3, "removeBuildingListener"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1216
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$51;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$51;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string p3, "addRoadListener"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1227
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$52;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$52;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string p3, "removeRoadListener"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1238
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$53;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$53;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string p3, "removeAllListeners"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1248
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$54;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$54;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string p3, "playSound"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1295
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$55;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$55;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string p3, "createDraftDrawer"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1321
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$56;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$56;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string p3, "getToolName"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1328
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$57;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$57;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string p3, "getToolId"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1335
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$58;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$58;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string p3, "getXp"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1341
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$59;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$59;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string p3, "setXp"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1350
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$60;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$60;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string p3, "getRank"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1358
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$61;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$61;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string p3, "isSandbox"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1364
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$62;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$62;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string p3, "isReadonly"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1370
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$63;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$63;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string p3, "isOnline"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1377
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$64;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$64;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string p3, "countZones"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1395
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$65;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$65;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string p3, "isLeftSideTraffic"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1402
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$66;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$66;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V

    const-string p3, "setLeftSideTraffic"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method

.method public final onAddedBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 4

    .line 268
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->addedBuildingListeners:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->callBuildingListeners(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Building;)V

    .line 269
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->addedBuildingListeners:Ljava/util/Map;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->callBuildingListeners(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Building;)V

    return-void
.end method

.method public final onAddedRoad(Linfo/flowersoft/theotown/city/objects/Road;)V
    .registers 4

    .line 288
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->addedRoadListeners:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->callRoadListeners(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Road;)V

    .line 289
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->addedRoadListeners:Ljava/util/Map;

    iget-object v1, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->callRoadListeners(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Road;)V

    return-void
.end method

.method public final onFinishedBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 4

    .line 273
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->finishedBuildingListeners:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->callBuildingListeners(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Building;)V

    .line 274
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->finishedBuildingListeners:Ljava/util/Map;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->callBuildingListeners(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Building;)V

    return-void
.end method

.method public final onRemovedBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 4

    .line 278
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->removedBuildingListeners:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->callBuildingListeners(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Building;)V

    .line 279
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->removedBuildingListeners:Ljava/util/Map;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->callBuildingListeners(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Building;)V

    return-void
.end method

.method public final onRemovedRoad(Linfo/flowersoft/theotown/city/objects/Road;)V
    .registers 4

    .line 293
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->removedRoadListeners:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->callRoadListeners(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Road;)V

    .line 294
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->removedRoadListeners:Ljava/util/Map;

    iget-object v1, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->callRoadListeners(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Road;)V

    return-void
.end method

.method public final onUpgradedBuilding(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/draft/UpgradeDraft;)V
    .registers 5

    .line 283
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->upgradedBuildingListeners:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->callBuildingUpgradeListeners(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/draft/UpgradeDraft;)V

    .line 284
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->upgradedBuildingListeners:Ljava/util/Map;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0, p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->callBuildingUpgradeListeners(Ljava/util/List;Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/draft/UpgradeDraft;)V

    return-void
.end method

.method public final removeListener(Ljava/util/Map;Ljava/lang/Object;Linfo/flowersoft/theotown/scripting/ScriptMethod;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/ScriptMethod;",
            ">;>;TT;",
            "Linfo/flowersoft/theotown/scripting/ScriptMethod;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    .line 228
    :cond_4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_14

    .line 229
    invoke-interface {p1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    return v0
.end method

.method public removeScriptListeners(Linfo/flowersoft/theotown/scripting/Script;)Z
    .registers 4

    .line 321
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->addedBuildingListeners:Ljava/util/Map;

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->removeScriptListeners(Ljava/util/Map;Linfo/flowersoft/theotown/scripting/Script;)Z

    move-result v0

    .line 322
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->removedBuildingListeners:Ljava/util/Map;

    invoke-virtual {p0, v1, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->removeScriptListeners(Ljava/util/Map;Linfo/flowersoft/theotown/scripting/Script;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 323
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->upgradedBuildingListeners:Ljava/util/Map;

    invoke-virtual {p0, v1, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->removeScriptListeners(Ljava/util/Map;Linfo/flowersoft/theotown/scripting/Script;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 324
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->addedRoadListeners:Ljava/util/Map;

    invoke-virtual {p0, v1, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->removeScriptListeners(Ljava/util/Map;Linfo/flowersoft/theotown/scripting/Script;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 325
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->removedRoadListeners:Ljava/util/Map;

    invoke-virtual {p0, v1, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->removeScriptListeners(Ljava/util/Map;Linfo/flowersoft/theotown/scripting/Script;)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method public final removeScriptListeners(Ljava/util/List;Linfo/flowersoft/theotown/scripting/Script;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/ScriptMethod;",
            ">;",
            "Linfo/flowersoft/theotown/scripting/Script;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    move v1, v0

    .line 300
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 301
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/scripting/ScriptMethod;

    .line 302
    invoke-virtual {v2}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->getScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v2

    const/4 v3, 0x1

    if-ne p2, v2, :cond_1d

    .line 303
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    move v1, v3

    :cond_1d
    add-int/2addr v0, v3

    goto :goto_4

    :cond_1f
    return v1

    :cond_20
    return v0
.end method

.method public final removeScriptListeners(Ljava/util/Map;Linfo/flowersoft/theotown/scripting/Script;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/ScriptMethod;",
            ">;>;",
            "Linfo/flowersoft/theotown/scripting/Script;",
            ")Z"
        }
    .end annotation

    .line 314
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 315
    invoke-virtual {p0, v1, p2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->removeScriptListeners(Ljava/util/List;Linfo/flowersoft/theotown/scripting/Script;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_9

    :cond_1b
    return v0
.end method

.method public unload(Lvm2/Globals;)V
    .registers 3

    .line 210
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->unload(Lvm2/Globals;)V

    .line 212
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildingListener:Linfo/flowersoft/theotown/city/BuildingList$Listener;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/BuildingList;->removeListener(Linfo/flowersoft/theotown/city/BuildingList$Listener;)V

    .line 213
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->roadListener:Linfo/flowersoft/theotown/city/RoadList$Listener;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/RoadList;->removeListener(Linfo/flowersoft/theotown/city/RoadList$Listener;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass1 (info.flowersoft.theotown.scripting.libraries.CityLibrary$1)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$1;
.super Ljava/lang/Object;
.source "CityLibrary.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/BuildingList$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 140
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 3

    .line 143
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/city/objects/Building;)V

    return-void
.end method

.method public finished(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 3

    .line 148
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/city/objects/Building;)V

    return-void
.end method

.method public remove(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 3

    .line 153
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/city/objects/Building;)V

    return-void
.end method

.method public upgraded(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/draft/UpgradeDraft;)V
    .registers 4

    .line 158
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0, p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/draft/UpgradeDraft;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass10 (info.flowersoft.theotown.scripting.libraries.CityLibrary$10)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$10;
.super Lvm2/lib/VarArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 471
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    .line 474
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 475
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1000(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultIdleGame;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->getCurrency(Ljava/lang/String;)Linfo/flowersoft/theotown/minigame/Currency;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 477
    invoke-interface {p1}, Linfo/flowersoft/theotown/minigame/Currency;->getEstate()D

    move-result-wide v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    invoke-interface {p1}, Linfo/flowersoft/theotown/minigame/Currency;->getEstate()D

    move-result-wide v2

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/Localizer;->localizeBigNumber(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Linfo/flowersoft/theotown/minigame/Currency;->getUnit()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    .line 477
    invoke-static {v0, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 480
    :cond_40
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass11 (info.flowersoft.theotown.scripting.libraries.CityLibrary$11)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$11;
.super Lvm2/lib/TwoArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 484
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$11;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 7

    .line 487
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 488
    invoke-virtual {p2}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v0

    .line 489
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$11;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1000(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultIdleGame;

    move-result-object p2

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->getCurrency(Ljava/lang/String;)Linfo/flowersoft/theotown/minigame/Currency;

    move-result-object p1

    if-eqz p1, :cond_2b

    const-wide/16 v2, 0x0

    cmpl-double p2, v0, v2

    if-lez p2, :cond_2b

    .line 491
    invoke-interface {p1}, Linfo/flowersoft/theotown/minigame/Currency;->getEstate()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Linfo/flowersoft/theotown/minigame/Currency;->spend(D)V

    const/4 p1, 0x1

    .line 492
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    :cond_2b
    const/4 p1, 0x0

    .line 494
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass12 (info.flowersoft.theotown.scripting.libraries.CityLibrary$12)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$12;
.super Lvm2/lib/TwoArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 497
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 7

    .line 500
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 501
    invoke-virtual {p2}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v0

    .line 502
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1000(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultIdleGame;

    move-result-object p2

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->getCurrency(Ljava/lang/String;)Linfo/flowersoft/theotown/minigame/Currency;

    move-result-object p1

    if-eqz p1, :cond_2e

    const-wide/16 v2, 0x0

    cmpl-double p2, v0, v2

    if-lez p2, :cond_2e

    .line 503
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->isPrivileged()Z

    move-result p2

    if-eqz p2, :cond_2e

    neg-double v0, v0

    .line 504
    invoke-interface {p1, v0, v1}, Linfo/flowersoft/theotown/minigame/Currency;->spend(D)V

    const/4 p1, 0x1

    .line 505
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    :cond_2e
    const/4 p1, 0x0

    .line 507
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass13 (info.flowersoft.theotown.scripting.libraries.CityLibrary$13)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$13;
.super Lvm2/lib/TwoArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 511
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 514
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 517
    const-string v0, "day"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 518
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1100(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide p1

    long-to-double p1, p1

    invoke-static {p1, p2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1

    :cond_1c
    const-wide/16 v0, 0x0

    .line 521
    invoke-virtual {p2, v0, v1}, Lvm2/LuaValue;->optlong(J)J

    move-result-wide v0

    .line 522
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1200(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->parseValue(Ljava/lang/String;J)J

    move-result-wide p1

    long-to-double p1, p1

    invoke-static {p1, p2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass14 (info.flowersoft.theotown.scripting.libraries.CityLibrary$14)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$14;
.super Lvm2/lib/TwoArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 526
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$14;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 529
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 530
    invoke-virtual {p2}, Lvm2/LuaValue;->checklong()J

    move-result-wide v0

    .line 531
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$14;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1200(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/transition/TransitionRunner;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v1}, Linfo/flowersoft/theotown/components/transition/TransitionRunner;->applyValue(Ljava/lang/String;J)V

    .line 532
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass15 (info.flowersoft.theotown.scripting.libraries.CityLibrary$15)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$15;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 536
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$15;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 539
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$15;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1300(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->isActive()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 540
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$15;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1300(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getActiveDisasters()Ljava/util/List;

    move-result-object v0

    .line 541
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    const/4 v1, 0x0

    .line 542
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Disaster;

    .line 543
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$15;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1300(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v1

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisasterTag(Linfo/flowersoft/theotown/city/components/Disaster;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0

    .line 546
    :cond_32
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass16 (info.flowersoft.theotown.scripting.libraries.CityLibrary$16)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$16;
.super Lvm2/lib/VarArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 550
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 8

    const/4 v0, 0x1

    .line 553
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 554
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->optint(I)I

    move-result v2

    const/4 v4, 0x3

    .line 555
    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4, v3}, Lvm2/LuaValue;->optint(I)I

    move-result v3

    .line 557
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1300(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v4

    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/String;)Linfo/flowersoft/theotown/city/components/Disaster;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 559
    instance-of v4, v1, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;

    if-eqz v4, :cond_6d

    const/4 v4, 0x4

    .line 560
    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Lvm2/LuaValue;->optint(I)I

    move-result v4

    const/4 v5, 0x5

    .line 561
    invoke-virtual {p1, v5}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p1

    .line 562
    check-cast v1, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;

    if-ltz v2, :cond_46

    if-gez v3, :cond_64

    .line 564
    :cond_46
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 565
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 567
    :cond_64
    invoke-virtual {v1, v2, v3, p1, v4}, Linfo/flowersoft/theotown/components/disaster/NukeDisaster;->issue(IIZI)Z

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    :cond_6d
    if-ltz v2, :cond_7a

    if-ltz v3, :cond_7a

    .line 570
    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/city/components/Disaster;->issue(II)Z

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 572
    :cond_7a
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/Disaster;->issue()Z

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 576
    :cond_83
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass17 (info.flowersoft.theotown.scripting.libraries.CityLibrary$17)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$17;
.super Lvm2/lib/TwoArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 580
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 583
    invoke-virtual {p1}, Lvm2/LuaValue;->isint()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p2}, Lvm2/LuaValue;->isint()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 584
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1400(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultWeather;

    move-result-object v0

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/components/DefaultWeather;->spawnLightning(II)V

    goto :goto_45

    .line 586
    :cond_1e
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1400(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultWeather;

    move-result-object p1

    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    .line 587
    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    .line 588
    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    .line 586
    invoke-virtual {p1, v0, p2}, Linfo/flowersoft/theotown/components/DefaultWeather;->spawnLightning(II)V

    .line 590
    :goto_45
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass18 (info.flowersoft.theotown.scripting.libraries.CityLibrary$18)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$18;
.super Lvm2/lib/TwoArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 594
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 597
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 598
    invoke-virtual {p2, v0}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p2

    .line 599
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1300(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/String;)Linfo/flowersoft/theotown/city/components/Disaster;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 601
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1300(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->setAutoActive(Linfo/flowersoft/theotown/city/components/Disaster;Z)V

    .line 603
    :cond_1e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass19 (info.flowersoft.theotown.scripting.libraries.CityLibrary$19)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$19;
.super Lvm2/lib/VarArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 607
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    .line 610
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getFocusX()F

    move-result p1

    .line 611
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getFocusY()F

    move-result v0

    .line 612
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(FF)F

    move-result v1

    .line 613
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(FF)F

    move-result p1

    .line 614
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v0

    float-to-double v1, v1

    .line 616
    invoke-static {v1, v2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v1

    float-to-double v2, p1

    .line 617
    invoke-static {v2, v3}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    float-to-double v2, v0

    .line 618
    invoke-static {v2, v3}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    .line 615
    invoke-static {v1, p1, v0}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass2 (info.flowersoft.theotown.scripting.libraries.CityLibrary$2)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$2;
.super Ljava/lang/Object;
.source "CityLibrary.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/RoadList$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 162
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Linfo/flowersoft/theotown/city/objects/Road;)V
    .registers 3

    .line 165
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$400(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/city/objects/Road;)V

    return-void
.end method

.method public remove(Linfo/flowersoft/theotown/city/objects/Road;)V
    .registers 3

    .line 170
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/city/objects/Road;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass20 (info.flowersoft.theotown.scripting.libraries.CityLibrary$20)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$20;
.super Lvm2/lib/VarArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 622
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 8

    const/4 v0, 0x1

    .line 625
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x2

    .line 626
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v2

    double-to-float v2, v2

    .line 627
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v3

    const/4 v4, 0x3

    .line 628
    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5}, Lvm2/LuaValue;->isnumber()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 629
    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v3

    double-to-float v3, v3

    :cond_32
    const/4 v4, 0x4

    .line 631
    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p1

    .line 633
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3, p1}, Linfo/flowersoft/theotown/city/City;->focus(FFFZ)V

    .line 634
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass21 (info.flowersoft.theotown.scripting.libraries.CityLibrary$21)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$21;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 638
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 641
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass22 (info.flowersoft.theotown.scripting.libraries.CityLibrary$22)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$22;
.super Lvm2/lib/OneArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 644
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 647
    invoke-virtual {p1}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v0

    double-to-float p1, v0

    invoke-static {}, Linfo/flowersoft/theotown/city/City;->getMinScale()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {}, Linfo/flowersoft/theotown/city/City;->getMaxScale()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 648
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v0

    div-float/2addr p1, v0

    .line 649
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ScreenRect;->getCenterX()F

    move-result v0

    float-to-int v0, v0

    .line 650
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ScreenRect;->getCenterY()F

    move-result v1

    float-to-int v1, v1

    const v2, 0x3f8020c5    # 1.001f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_4f

    .line 652
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Linfo/flowersoft/theotown/city/City;->zoomIn(FII)V

    goto :goto_62

    :cond_4f
    const v2, 0x3f7fbe77    # 0.999f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_62

    .line 654
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, p1

    invoke-virtual {v2, v3, v0, v1}, Linfo/flowersoft/theotown/city/City;->zoomOut(FII)V

    .line 656
    :cond_62
    :goto_62
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass23 (info.flowersoft.theotown.scripting.libraries.CityLibrary$23)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$23;
.super Lvm2/lib/TwoArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 660
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 663
    invoke-virtual {p1}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v0

    double-to-float p1, v0

    .line 664
    invoke-virtual {p2}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v0

    double-to-float p2, v0

    .line 665
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->move(FF)V

    .line 666
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass24 (info.flowersoft.theotown.scripting.libraries.CityLibrary$24)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$24;
.super Lvm2/lib/OneArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 670
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    const/4 v0, 0x0

    .line 673
    invoke-virtual {p1, v0}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p1

    .line 674
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getController()Linfo/flowersoft/theotown/city/CityController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Linfo/flowersoft/theotown/city/CityController;->save(ZLjava/lang/Runnable;)V

    .line 675
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass25 (info.flowersoft.theotown.scripting.libraries.CityLibrary$25)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$25;
.super Lvm2/lib/VarArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 681
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/LuaValue;
    .registers 7

    const/4 v0, 0x1

    .line 684
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 685
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v2

    const/4 v4, 0x3

    .line 686
    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4, v3}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v3

    const/4 v4, 0x4

    .line 687
    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, v1}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 689
    const-string v4, ".."

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 690
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 p1, 0x0

    .line 692
    :cond_34
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->findExternalCity(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 694
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 695
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getController()Linfo/flowersoft/theotown/city/CityController;

    move-result-object v0

    invoke-interface {v0, v1, v2, v3, p1}, Linfo/flowersoft/theotown/city/CityController;->loadFromExternal(Linfo/flowersoft/theotown/util/vfs/AbstractFile;ZZLjava/lang/String;)V

    goto :goto_8d

    .line 697
    :cond_56
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1500(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->findInternalCity(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Ljava/io/File;

    move-result-object p1

    .line 699
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_70

    .line 700
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1600(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object p1

    .line 703
    :cond_70
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-static {p1}, Linfo/flowersoft/theotown/resources/Resources;->isInTheoTownDir(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 704
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getController()Linfo/flowersoft/theotown/city/CityController;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/city/CityController;->load(Ljava/lang/String;)V

    .line 708
    :cond_8d
    :goto_8d
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

.method public bridge synthetic invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 681
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$25;->invoke(Lvm2/Varargs;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass26 (info.flowersoft.theotown.scripting.libraries.CityLibrary$26)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$26;
.super Lvm2/lib/OneArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 712
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$26;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    const/4 v0, 0x0

    .line 715
    invoke-virtual {p1, v0}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p1

    .line 716
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$26;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getController()Linfo/flowersoft/theotown/city/CityController;

    move-result-object v0

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/city/CityController;->exit(Z)V

    .line 717
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass27 (info.flowersoft.theotown.scripting.libraries.CityLibrary$27)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$27;
.super Lvm2/lib/OneArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 721
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 724
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    const-class v0, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    .line 725
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1500(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getDefault(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMaps()Ljava/util/List;

    move-result-object v0

    .line 726
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 727
    :goto_20
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3e

    .line 728
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 729
    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 731
    :cond_3e
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createArray(Ljava/util/List;)Lvm2/LuaTable;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass28 (info.flowersoft.theotown.scripting.libraries.CityLibrary$28)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$28;
.super Lvm2/lib/ThreeArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 735
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 738
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 739
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 740
    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p3

    .line 741
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_47

    if-ltz p1, :cond_47

    sget v0, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceType;->COUNT:I

    if-ge p1, v0, :cond_47

    .line 742
    new-instance v0, Linfo/flowersoft/theotown/city/MapArea;

    invoke-direct {v0}, Linfo/flowersoft/theotown/city/MapArea;-><init>()V

    .line 743
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v1

    invoke-virtual {v0, p2, p3, v1}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    .line 744
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultTraffic;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/DefaultTraffic;->getActionPlaceController()Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Linfo/flowersoft/theotown/components/actionplace/ActionPlaceController;->addOrRemoveActionPlace(Linfo/flowersoft/theotown/city/MapArea;I)V

    const/4 p1, 0x1

    .line 745
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    :cond_47
    const/4 p1, 0x0

    .line 747
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass29 (info.flowersoft.theotown.scripting.libraries.CityLibrary$29)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$29;
.super Lvm2/lib/OneArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 751
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 754
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1800(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    move-result-object v0

    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->hideNotification(Ljava/lang/String;)V

    .line 755
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass3 (info.flowersoft.theotown.scripting.libraries.CityLibrary$3)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$3;
.super Lvm2/lib/OneArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 336
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 10

    .line 339
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/management/DefaultManagement;

    move-result-object v0

    if-nez v0, :cond_b

    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 341
    :cond_b
    invoke-virtual {p1}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-nez v0, :cond_a1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hgen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto/16 :goto_a1

    .line 344
    :cond_21
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttribute(Ljava/lang/String;)Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object p1

    .line 345
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->getIndex()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    .line 348
    :goto_31
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/BuildingList;->size()I

    move-result v4

    if-ge v0, v4, :cond_8a

    .line 349
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v4

    invoke-virtual {v4, v0}, Linfo/flowersoft/theotown/city/BuildingList;->get(I)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v4

    .line 350
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getAttributeContainer()Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    .line 351
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v6

    invoke-virtual {v6}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v6

    if-eqz v6, :cond_87

    .line 352
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v6

    sget-object v7, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq v6, v7, :cond_87

    .line 353
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v6

    if-nez v6, :cond_87

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_87

    if-eqz v5, :cond_87

    .line 355
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getOverallHabitants()I

    move-result v4

    .line 356
    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object v5

    aget v5, v5, p1

    cmpl-float v6, v5, v1

    if-ltz v6, :cond_87

    int-to-float v6, v4

    mul-float/2addr v6, v5

    add-float/2addr v3, v6

    add-int/2addr v2, v4

    :cond_87
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_8a
    if-lez v2, :cond_99

    int-to-float p1, v2

    div-float/2addr v3, p1

    .line 364
    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_9b

    :cond_99
    const/high16 p1, 0x3f000000    # 0.5f

    :goto_9b
    float-to-double v0, p1

    .line 368
    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1

    .line 342
    :cond_a1
    :goto_a1
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/management/DefaultManagement;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getRatingValue()F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass30 (info.flowersoft.theotown.scripting.libraries.CityLibrary$30)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$30;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 758
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$30;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 761
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$30;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1800(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->clearNotifications()V

    .line 762
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass31 (info.flowersoft.theotown.scripting.libraries.CityLibrary$31)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;
.super Lvm2/lib/VarArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public static synthetic $r8$lambda$BRHKtsJ6TqCM70T7fTzMoR-BwGo(JJ)[F
    .registers 4

    long-to-float p0, p0

    long-to-float p1, p2

    const/4 p2, 0x2

    .line 889
    new-array p2, p2, [F

    const/4 p3, 0x0

    aput p0, p2, p3

    const/4 p0, 0x1

    aput p1, p2, p0

    return-object p2
.end method

.method public static synthetic $r8$lambda$hQj-RXLiVthh9y8eSB_GqQ6k19I(Lvm2/LuaFunction;)V
    .registers 1

    .line 865
    invoke-virtual {p0}, Lvm2/LuaValue;->call()Lvm2/LuaValue;

    return-void
.end method

.method public static synthetic $r8$lambda$uoIszXm-U5Af0VQCMD1Bl1aYPOw(Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V
    .registers 4

    .line 865
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda3;-><init>(Lvm2/LuaFunction;)V

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->postponeTask(Ljava/lang/Runnable;Linfo/flowersoft/theotown/scripting/Script;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yxsa3sDsNJi7DoHKHZz2OtbyFCU(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 1

    .line 0
    return-object p0
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 766
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 27

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v9, 0x1

    .line 771
    invoke-virtual {v0, v9}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const-class v3, Linfo/flowersoft/theotown/draft/NotificationDraft;

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/NotificationDraft;

    .line 772
    invoke-virtual {v0, v9}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    const-class v5, Linfo/flowersoft/theotown/draft/ViewportDraft;

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/ViewportDraft;

    const/4 v10, 0x4

    .line 773
    const-string v5, "locationY"

    const-string v6, "locationX"

    const-string v7, "text"

    const-string v8, "icon"

    const-string v11, "notification"

    const/4 v12, 0x0

    if-eqz v2, :cond_3e

    .line 774
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v0

    .line 775
    invoke-static {v11}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v4

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-static {v2}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    goto/16 :goto_af

    .line 776
    :cond_3e
    invoke-virtual {v0, v9}, Lvm2/Varargs;->isnumber(I)Z

    move-result v2

    if-nez v2, :cond_71

    if-eqz v4, :cond_47

    goto :goto_71

    .line 782
    :cond_47
    invoke-virtual {v0, v9}, Lvm2/Varargs;->istable(I)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 783
    invoke-virtual {v0, v9}, Lvm2/Varargs;->checktable(I)Lvm2/LuaTable;

    move-result-object v0

    goto :goto_af

    .line 785
    :cond_52
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "First argument is of unexpected type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 777
    :cond_71
    :goto_71
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v2

    .line 778
    invoke-static {v8}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v13

    if-eqz v4, :cond_80

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v4, v4, v12

    goto :goto_84

    :cond_80
    invoke-virtual {v0, v9}, Lvm2/Varargs;->checkint(I)I

    move-result v4

    :goto_84
    invoke-static {v4}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v4

    invoke-virtual {v2, v13, v4}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    .line 779
    invoke-static {v7}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v4

    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Lvm2/Varargs;->checkstring(I)Lvm2/LuaString;

    move-result-object v13

    invoke-virtual {v2, v4, v13}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    .line 780
    invoke-static {v6}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v4

    const/4 v13, 0x3

    invoke-virtual {v0, v13}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v13

    invoke-virtual {v2, v4, v13}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    .line 781
    invoke-static {v5}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v4

    invoke-virtual {v0, v10}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lvm2/LuaTable;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    move-object v0, v2

    .line 788
    :goto_af
    invoke-virtual {v0, v11}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/NotificationDraft;

    .line 789
    const-string v3, "id"

    invoke-virtual {v0, v3}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v3

    if-eqz v2, :cond_d5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "$notify_notificationdraft_"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_dd

    :cond_d5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_dd
    invoke-virtual {v3, v4}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 790
    invoke-virtual {v0, v8}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v3

    if-eqz v2, :cond_ec

    iget-object v4, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v4, v4, v12

    goto :goto_ed

    :cond_ec
    move v4, v12

    :goto_ed
    invoke-virtual {v3, v4}, Lvm2/LuaValue;->optint(I)I

    move-result v13

    .line 791
    const-string v3, "title"

    invoke-virtual {v0, v3}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v3

    if-eqz v2, :cond_104

    iget-object v4, v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1900(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/util/DraftLocalizer;

    move-result-object v4

    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v4

    goto :goto_106

    :cond_104
    const-string v4, "No title"

    :goto_106
    invoke-virtual {v3, v4}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 792
    invoke-virtual {v0, v7}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v3

    if-eqz v2, :cond_11b

    iget-object v4, v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1900(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/util/DraftLocalizer;

    move-result-object v4

    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getText(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v4

    goto :goto_11d

    :cond_11b
    const-string v4, "No text"

    :goto_11d
    invoke-virtual {v3, v4}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 793
    const-string v3, "important"

    invoke-virtual {v0, v3}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v3

    if-eqz v2, :cond_12f

    iget-boolean v4, v2, Linfo/flowersoft/theotown/draft/NotificationDraft;->important:Z

    if-eqz v4, :cond_12f

    move v4, v9

    goto :goto_130

    :cond_12f
    move v4, v12

    :goto_130
    invoke-virtual {v3, v4}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v3

    .line 794
    const-string v4, "question"

    invoke-virtual {v0, v4}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v4

    if-eqz v2, :cond_142

    iget-boolean v7, v2, Linfo/flowersoft/theotown/draft/NotificationDraft;->question:Z

    if-eqz v7, :cond_142

    move v7, v9

    goto :goto_143

    :cond_142
    move v7, v12

    :goto_143
    invoke-virtual {v4, v7}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v4

    .line 795
    const-string v7, "optionOk"

    invoke-virtual {v0, v7}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v7

    invoke-virtual {v7, v4}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v7

    .line 796
    const-string v8, "closeable"

    invoke-virtual {v0, v8}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v8

    if-eqz v2, :cond_160

    iget-boolean v12, v2, Linfo/flowersoft/theotown/draft/NotificationDraft;->closeable:Z

    if-eqz v12, :cond_15e

    goto :goto_160

    :cond_15e
    const/4 v12, 0x0

    goto :goto_161

    :cond_160
    :goto_160
    move v12, v9

    :goto_161
    invoke-virtual {v8, v12}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v12

    .line 797
    const-string v8, "onOk"

    invoke-virtual {v0, v8}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lvm2/LuaValue;->optfunction(Lvm2/LuaFunction;)Lvm2/LuaFunction;

    move-result-object v8

    .line 798
    const-string v9, "onCancel"

    invoke-virtual {v0, v9}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v9

    invoke-virtual {v9, v10}, Lvm2/LuaValue;->optfunction(Lvm2/LuaFunction;)Lvm2/LuaFunction;

    move-result-object v9

    move/from16 p1, v3

    .line 799
    const-string v3, "onClose"

    invoke-virtual {v0, v3}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v3

    invoke-virtual {v3, v10}, Lvm2/LuaValue;->optfunction(Lvm2/LuaFunction;)Lvm2/LuaFunction;

    move-result-object v3

    .line 800
    const-string v10, "immersive"

    invoke-virtual {v0, v10}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v10

    move-object/from16 v18, v3

    if-eqz v2, :cond_196

    iget-boolean v3, v2, Linfo/flowersoft/theotown/draft/NotificationDraft;->immersive:Z

    if-eqz v3, :cond_196

    const/4 v3, 0x1

    goto :goto_197

    :cond_196
    const/4 v3, 0x0

    :goto_197
    invoke-virtual {v10, v3}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v10

    .line 801
    const-string v3, "showOnce"

    invoke-virtual {v0, v3}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v3

    if-eqz v2, :cond_1aa

    iget-boolean v2, v2, Linfo/flowersoft/theotown/draft/NotificationDraft;->showOnce:Z

    if-eqz v2, :cond_1a8

    goto :goto_1aa

    :cond_1a8
    const/4 v2, 0x0

    goto :goto_1ab

    :cond_1aa
    :goto_1aa
    const/4 v2, 0x1

    :goto_1ab
    invoke-virtual {v3, v2}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v2

    .line 802
    invoke-virtual {v0, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v3

    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Lvm2/LuaValue;->optint(I)I

    move-result v3

    .line 803
    invoke-virtual {v0, v5}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5, v6}, Lvm2/LuaValue;->optint(I)I

    move-result v5

    if-ltz v3, :cond_1c7

    if-ltz v5, :cond_1c7

    const/16 v19, 0x1

    goto :goto_1c9

    :cond_1c7
    const/16 v19, 0x0

    .line 805
    :goto_1c9
    const-string v6, "show"

    invoke-virtual {v0, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    move-object/from16 v20, v9

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v16

    .line 806
    const-string v6, "condition"

    invoke-virtual {v0, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lvm2/LuaValue;->optfunction(Lvm2/LuaFunction;)Lvm2/LuaFunction;

    move-result-object v6

    move/from16 v17, v2

    .line 807
    const-string v2, "actions"

    invoke-virtual {v0, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, v9}, Lvm2/LuaValue;->opttable(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v0

    .line 809
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v2

    move v9, v3

    move-object v3, v0

    .line 812
    new-instance v0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;

    move-object/from16 v21, v0

    iget-object v0, v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    move/from16 v24, v5

    move/from16 v23, v9

    move/from16 v22, v17

    move/from16 v9, p1

    move v5, v4

    move/from16 v17, v10

    move/from16 p1, v12

    move-object/from16 v12, v18

    move-object v4, v2

    move-object v10, v6

    move-object/from16 v6, v20

    move-object v2, v0

    move-object/from16 v0, v21

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;Linfo/flowersoft/theotown/city/City;Lvm2/LuaTable;Linfo/flowersoft/theotown/scripting/Script;ZLvm2/LuaFunction;ZLvm2/LuaFunction;)V

    .line 858
    invoke-virtual {v0, v11}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setId(Ljava/lang/String;)V

    .line 859
    invoke-virtual {v0, v13}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setIcon(I)V

    .line 860
    invoke-virtual {v0, v15}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setText(Ljava/lang/String;)V

    .line 861
    invoke-virtual {v0, v14}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setTitle(Ljava/lang/String;)V

    .line 862
    invoke-virtual {v0, v9}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setImportant(Z)V

    if-eqz p1, :cond_22f

    if-nez v5, :cond_22f

    const/4 v9, 0x1

    goto :goto_230

    :cond_22f
    const/4 v9, 0x0

    .line 863
    :goto_230
    invoke-virtual {v0, v9}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCloseable(Z)V

    .line 864
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->isCloseable()Z

    move-result v2

    if-eqz v2, :cond_243

    if-eqz v12, :cond_243

    .line 865
    new-instance v2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda0;

    invoke-direct {v2, v12, v4}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda0;-><init>(Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setOnClose(Ljava/lang/Runnable;)V

    :cond_243
    if-nez v10, :cond_256

    .line 868
    new-instance v2, Linfo/flowersoft/theotown/components/notification/condition/TrueCondition;

    iget-object v3, v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v3

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/components/notification/condition/TrueCondition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    :goto_253
    move/from16 v2, v17

    goto :goto_265

    .line 870
    :cond_256
    new-instance v2, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$2;

    iget-object v3, v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v3

    invoke-direct {v2, v1, v3, v10}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$2;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;Linfo/flowersoft/theotown/city/City;Lvm2/LuaFunction;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setCondition(Linfo/flowersoft/theotown/city/components/AbstractCondition;)V

    goto :goto_253

    .line 877
    :goto_265
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setImmersive(Z)V

    move/from16 v2, v22

    .line 878
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setShowOnlyOnce(Z)V

    if-eqz v19, :cond_29e

    .line 881
    iget-object v2, v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    move/from16 v9, v23

    move/from16 v3, v24

    invoke-virtual {v2, v9, v3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_29e

    .line 882
    iget-object v2, v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$2000(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v2

    invoke-virtual {v2, v9, v3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v2

    if-eqz v2, :cond_294

    .line 885
    new-instance v3, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/city/objects/Building;)V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setLocationBuildingProvider(Lio/blueflower/stapel2d/util/Getter;)V

    goto :goto_29e

    :cond_294
    int-to-long v4, v9

    int-to-long v2, v3

    .line 889
    new-instance v6, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda2;

    invoke-direct {v6, v4, v5, v2, v3}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda2;-><init>(JJ)V

    invoke-virtual {v0, v6}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;->setLocationProvider(Lio/blueflower/stapel2d/util/Getter;)V

    .line 893
    :cond_29e
    :goto_29e
    iget-object v2, v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    if-eqz v16, :cond_2b1

    .line 895
    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->showNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    goto :goto_2b4

    .line 897
    :cond_2b1
    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;->addNotification(Linfo/flowersoft/theotown/city/components/Notification;)V

    .line 899
    :goto_2b4
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass31.AnonymousClass1 (info.flowersoft.theotown.scripting.libraries.CityLibrary$31$1)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;
.super Linfo/flowersoft/theotown/components/notification/SimpleNotification;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;->invoke(Lvm2/Varargs;)Lvm2/Varargs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;

.field public final synthetic val$luaActions:Lvm2/LuaTable;

.field public final synthetic val$onCancel:Lvm2/LuaFunction;

.field public final synthetic val$onOk:Lvm2/LuaFunction;

.field public final synthetic val$optionOk:Z

.field public final synthetic val$question:Z

.field public final synthetic val$script:Linfo/flowersoft/theotown/scripting/Script;


# direct methods
.method public static synthetic $r8$lambda$0jQZ22n-lGHNkpxWkj5vQPgnIe4(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V
    .registers 4

    .line 846
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/Notification;->close()V

    if-eqz p1, :cond_11

    .line 849
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p0

    new-instance v0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda3;-><init>(Lvm2/LuaFunction;)V

    invoke-virtual {p0, v0, p2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->postponeTask(Ljava/lang/Runnable;Linfo/flowersoft/theotown/scripting/Script;)V

    :cond_11
    return-void
.end method

.method public static synthetic $r8$lambda$6N51rcig4_A6a7xnKvEZFfe4RyE(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V
    .registers 4

    .line 826
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/Notification;->close()V

    if-eqz p1, :cond_11

    .line 829
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p0

    new-instance v0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda5;-><init>(Lvm2/LuaFunction;)V

    invoke-virtual {p0, v0, p2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->postponeTask(Ljava/lang/Runnable;Linfo/flowersoft/theotown/scripting/Script;)V

    :cond_11
    return-void
.end method

.method public static synthetic $r8$lambda$M063NGMspCgZN3dhKBt1xKC2-_o(Lvm2/LuaFunction;)V
    .registers 1

    .line 849
    invoke-virtual {p0}, Lvm2/LuaValue;->call()Lvm2/LuaValue;

    return-void
.end method

.method public static synthetic $r8$lambda$PABTNWawZXuUIHSRJBfk2H0IFh4(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V
    .registers 4

    .line 838
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/components/Notification;->close()V

    if-eqz p1, :cond_11

    .line 841
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p0

    new-instance v0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda4;-><init>(Lvm2/LuaFunction;)V

    invoke-virtual {p0, v0, p2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->postponeTask(Ljava/lang/Runnable;Linfo/flowersoft/theotown/scripting/Script;)V

    :cond_11
    return-void
.end method

.method public static synthetic $r8$lambda$dWFELmTOUxSb5MIKeRn-xAasTC8(Lvm2/LuaFunction;)V
    .registers 1

    .line 841
    invoke-virtual {p0}, Lvm2/LuaValue;->call()Lvm2/LuaValue;

    return-void
.end method

.method public static synthetic $r8$lambda$xVveXxRpXx3e6UajLkrAOnyKzGs(Lvm2/LuaFunction;)V
    .registers 1

    .line 829
    invoke-virtual {p0}, Lvm2/LuaValue;->invoke()Lvm2/Varargs;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;Linfo/flowersoft/theotown/city/City;Lvm2/LuaTable;Linfo/flowersoft/theotown/scripting/Script;ZLvm2/LuaFunction;ZLvm2/LuaFunction;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 812
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->this$1:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;

    iput-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->val$luaActions:Lvm2/LuaTable;

    iput-object p4, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->val$script:Linfo/flowersoft/theotown/scripting/Script;

    iput-boolean p5, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->val$question:Z

    iput-object p6, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->val$onCancel:Lvm2/LuaFunction;

    iput-boolean p7, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->val$optionOk:Z

    iput-object p8, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->val$onOk:Lvm2/LuaFunction;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/SimpleNotification;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/NotificationAction;",
            ">;"
        }
    .end annotation

    .line 815
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Notification;->getActions()Ljava/util/List;

    move-result-object v0

    .line 817
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->val$luaActions:Lvm2/LuaTable;

    const/4 v2, 0x0

    if-eqz v1, :cond_64

    invoke-virtual {v1}, Lvm2/LuaTable;->length()I

    move-result v1

    if-lez v1, :cond_64

    const/4 v1, 0x1

    .line 818
    :goto_10
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->val$luaActions:Lvm2/LuaTable;

    invoke-virtual {v3}, Lvm2/LuaTable;->length()I

    move-result v3

    if-gt v1, v3, :cond_64

    .line 819
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->val$luaActions:Lvm2/LuaTable;

    invoke-virtual {v3, v1}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lvm2/LuaValue;->opttable(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v3

    .line 820
    const-string v5, "icon"

    if-nez v3, :cond_35

    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->val$luaActions:Lvm2/LuaTable;

    invoke-virtual {v6, v5}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    invoke-virtual {v6}, Lvm2/LuaValue;->isnil()Z

    move-result v6

    if-nez v6, :cond_35

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->val$luaActions:Lvm2/LuaTable;

    :cond_35
    if-eqz v3, :cond_61

    .line 822
    invoke-virtual {v3, v5}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5, v2}, Lvm2/LuaValue;->optint(I)I

    move-result v5

    .line 823
    const-string v6, "text"

    invoke-virtual {v3, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    invoke-virtual {v6, v4}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    .line 824
    const-string v6, "onClick"

    invoke-virtual {v3, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v3

    invoke-virtual {v3, v4}, Lvm2/LuaValue;->optfunction(Lvm2/LuaFunction;)Lvm2/LuaFunction;

    move-result-object v3

    .line 825
    new-instance v4, Linfo/flowersoft/theotown/city/components/NotificationAction;

    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->val$script:Linfo/flowersoft/theotown/scripting/Script;

    new-instance v7, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v3, v6}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V

    invoke-direct {v4, v5, v7}, Linfo/flowersoft/theotown/city/components/NotificationAction;-><init>(ILjava/lang/Runnable;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 836
    :cond_64
    iget-boolean v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->val$question:Z

    if-eqz v1, :cond_92

    .line 837
    new-instance v1, Linfo/flowersoft/theotown/city/components/NotificationAction;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->val$onCancel:Lvm2/LuaFunction;

    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->val$script:Linfo/flowersoft/theotown/scripting/Script;

    new-instance v6, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v4, v5}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V

    invoke-direct {v1, v3, v6}, Linfo/flowersoft/theotown/city/components/NotificationAction;-><init>(ILjava/lang/Runnable;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 844
    iget-boolean v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->val$optionOk:Z

    if-eqz v1, :cond_92

    .line 845
    new-instance v1, Linfo/flowersoft/theotown/city/components/NotificationAction;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->val$onOk:Lvm2/LuaFunction;

    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->val$script:Linfo/flowersoft/theotown/scripting/Script;

    new-instance v6, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0, v4, v5}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V

    invoke-direct {v1, v3, v6}, Linfo/flowersoft/theotown/city/components/NotificationAction;-><init>(ILjava/lang/Runnable;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_92
    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary$31$1$$ExternalSyntheticLambda0 (info.flowersoft.theotown.scripting.libraries.CityLibrary$31$1$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;

.field public final synthetic f$1:Lvm2/LuaFunction;

.field public final synthetic f$2:Linfo/flowersoft/theotown/scripting/Script;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda0;->f$1:Lvm2/LuaFunction;

    iput-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/scripting/Script;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda0;->f$1:Lvm2/LuaFunction;

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/scripting/Script;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->$r8$lambda$6N51rcig4_A6a7xnKvEZFfe4RyE(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary$31$1$$ExternalSyntheticLambda1 (info.flowersoft.theotown.scripting.libraries.CityLibrary$31$1$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;

.field public final synthetic f$1:Lvm2/LuaFunction;

.field public final synthetic f$2:Linfo/flowersoft/theotown/scripting/Script;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda1;->f$1:Lvm2/LuaFunction;

    iput-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda1;->f$2:Linfo/flowersoft/theotown/scripting/Script;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda1;->f$1:Lvm2/LuaFunction;

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda1;->f$2:Linfo/flowersoft/theotown/scripting/Script;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->$r8$lambda$PABTNWawZXuUIHSRJBfk2H0IFh4(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary$31$1$$ExternalSyntheticLambda2 (info.flowersoft.theotown.scripting.libraries.CityLibrary$31$1$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;

.field public final synthetic f$1:Lvm2/LuaFunction;

.field public final synthetic f$2:Linfo/flowersoft/theotown/scripting/Script;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda2;->f$1:Lvm2/LuaFunction;

    iput-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda2;->f$2:Linfo/flowersoft/theotown/scripting/Script;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda2;->f$1:Lvm2/LuaFunction;

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda2;->f$2:Linfo/flowersoft/theotown/scripting/Script;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->$r8$lambda$0jQZ22n-lGHNkpxWkj5vQPgnIe4(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary$31$1$$ExternalSyntheticLambda3 (info.flowersoft.theotown.scripting.libraries.CityLibrary$31$1$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvm2/LuaFunction;


# direct methods
.method public synthetic constructor <init>(Lvm2/LuaFunction;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda3;->f$0:Lvm2/LuaFunction;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda3;->f$0:Lvm2/LuaFunction;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->$r8$lambda$M063NGMspCgZN3dhKBt1xKC2-_o(Lvm2/LuaFunction;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary$31$1$$ExternalSyntheticLambda4 (info.flowersoft.theotown.scripting.libraries.CityLibrary$31$1$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvm2/LuaFunction;


# direct methods
.method public synthetic constructor <init>(Lvm2/LuaFunction;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda4;->f$0:Lvm2/LuaFunction;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda4;->f$0:Lvm2/LuaFunction;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->$r8$lambda$dWFELmTOUxSb5MIKeRn-xAasTC8(Lvm2/LuaFunction;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary$31$1$$ExternalSyntheticLambda5 (info.flowersoft.theotown.scripting.libraries.CityLibrary$31$1$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvm2/LuaFunction;


# direct methods
.method public synthetic constructor <init>(Lvm2/LuaFunction;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda5;->f$0:Lvm2/LuaFunction;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1$$ExternalSyntheticLambda5;->f$0:Lvm2/LuaFunction;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$1;->$r8$lambda$xVveXxRpXx3e6UajLkrAOnyKzGs(Lvm2/LuaFunction;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass31.AnonymousClass2 (info.flowersoft.theotown.scripting.libraries.CityLibrary$31$2)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$2;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;->invoke(Lvm2/Varargs;)Lvm2/Varargs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;

.field public final synthetic val$condition:Lvm2/LuaFunction;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;Linfo/flowersoft/theotown/city/City;Lvm2/LuaFunction;)V
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

    .line 870
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$2;->this$1:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;

    iput-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$2;->val$condition:Lvm2/LuaFunction;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 3

    .line 873
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$2;->val$condition:Lvm2/LuaFunction;

    invoke-virtual {v0}, Lvm2/LuaValue;->call()Lvm2/LuaValue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary$31$$ExternalSyntheticLambda0 (info.flowersoft.theotown.scripting.libraries.CityLibrary$31$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvm2/LuaFunction;

.field public final synthetic f$1:Linfo/flowersoft/theotown/scripting/Script;


# direct methods
.method public synthetic constructor <init>(Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda0;->f$0:Lvm2/LuaFunction;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/scripting/Script;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda0;->f$0:Lvm2/LuaFunction;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/scripting/Script;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;->$r8$lambda$uoIszXm-U5Af0VQCMD1Bl1aYPOw(Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary$31$$ExternalSyntheticLambda3 (info.flowersoft.theotown.scripting.libraries.CityLibrary$31$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvm2/LuaFunction;


# direct methods
.method public synthetic constructor <init>(Lvm2/LuaFunction;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda3;->f$0:Lvm2/LuaFunction;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda3;->f$0:Lvm2/LuaFunction;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;->$r8$lambda$hQj-RXLiVthh9y8eSB_GqQ6k19I(Lvm2/LuaFunction;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary$31$$ExternalSyntheticLambda1 (info.flowersoft.theotown.scripting.libraries.CityLibrary$31$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/city/objects/Building;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/city/objects/Building;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;->$r8$lambda$yxsa3sDsNJi7DoHKHZz2OtbyFCU(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary$31$$ExternalSyntheticLambda2 (info.flowersoft.theotown.scripting.libraries.CityLibrary$31$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(JJ)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda2;->f$0:J

    iput-wide p3, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda2;->f$1:J

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 5

    .line 0
    iget-wide v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda2;->f$0:J

    iget-wide v2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31$$ExternalSyntheticLambda2;->f$1:J

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$31;->$r8$lambda$BRHKtsJ6TqCM70T7fTzMoR-BwGo(JJ)[F

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass32 (info.flowersoft.theotown.scripting.libraries.CityLibrary$32)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$32;
.super Lvm2/lib/OneArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 903
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$32;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 906
    invoke-virtual {p1}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 907
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$32;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->setBackground(Linfo/flowersoft/theotown/draft/AnimationDraft;)V

    .line 908
    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 910
    :cond_16
    const-class v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    if-eqz p1, :cond_2e

    .line 912
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$32;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/City;->setBackground(Linfo/flowersoft/theotown/draft/AnimationDraft;)V

    .line 913
    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    :cond_2e
    const/4 p1, 0x0

    .line 915
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass33 (info.flowersoft.theotown.scripting.libraries.CityLibrary$33)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$33;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 919
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$33;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 922
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$33;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBackground()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass34 (info.flowersoft.theotown.scripting.libraries.CityLibrary$34)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$34;
.super Lvm2/lib/VarArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 926
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$34;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 11

    .line 929
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$34;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getNoise()Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    move-result-object v0

    const/4 v1, 0x3

    .line 931
    invoke-virtual {p1, v1}, Lvm2/Varargs;->isnil(I)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_24

    .line 933
    invoke-virtual {p1, v4}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v1

    double-to-float v1, v1

    .line 934
    invoke-virtual {p1, v3, v5, v6}, Lvm2/Varargs;->optdouble(ID)D

    move-result-wide v2

    double-to-float p1, v2

    .line 932
    invoke-virtual {v0, v1, p1}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FF)F

    move-result p1

    goto :goto_57

    :cond_24
    const/4 v2, 0x4

    .line 935
    invoke-virtual {p1, v2}, Lvm2/Varargs;->isnil(I)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 937
    invoke-virtual {p1, v4}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v7

    double-to-float v2, v7

    .line 938
    invoke-virtual {p1, v3, v5, v6}, Lvm2/Varargs;->optdouble(ID)D

    move-result-wide v3

    double-to-float v3, v3

    .line 939
    invoke-virtual {p1, v1, v5, v6}, Lvm2/Varargs;->optdouble(ID)D

    move-result-wide v4

    double-to-float p1, v4

    .line 936
    invoke-virtual {v0, v2, v3, p1}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FFF)F

    move-result p1

    goto :goto_57

    .line 942
    :cond_3f
    invoke-virtual {p1, v4}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v7

    double-to-float v4, v7

    .line 943
    invoke-virtual {p1, v3, v5, v6}, Lvm2/Varargs;->optdouble(ID)D

    move-result-wide v7

    double-to-float v3, v7

    .line 944
    invoke-virtual {p1, v1, v5, v6}, Lvm2/Varargs;->optdouble(ID)D

    move-result-wide v7

    double-to-float v1, v7

    .line 945
    invoke-virtual {p1, v2, v5, v6}, Lvm2/Varargs;->optdouble(ID)D

    move-result-wide v5

    double-to-float p1, v5

    .line 941
    invoke-virtual {v0, v4, v3, v1, p1}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;->eval(FFFF)F

    move-result p1

    :goto_57
    float-to-double v0, p1

    .line 947
    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass35 (info.flowersoft.theotown.scripting.libraries.CityLibrary$35)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$35;
.super Lvm2/lib/VarArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 951
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$35;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    const/4 v0, -0x1

    .line 954
    invoke-virtual {p1, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    .line 955
    invoke-virtual {p2, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p2

    if-gez p1, :cond_19

    if-ltz p2, :cond_e

    goto :goto_19

    .line 960
    :cond_e
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$35;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->hashCode()I

    move-result p1

    goto :goto_23

    .line 958
    :cond_19
    :goto_19
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$35;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->hashCode(II)I

    move-result p1

    :goto_23
    const p2, 0x7fffffff

    and-int/2addr p1, p2

    .line 963
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass36 (info.flowersoft.theotown.scripting.libraries.CityLibrary$36)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$36;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 967
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$36;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 970
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$36;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v0

    iget-wide v0, v0, Linfo/flowersoft/theotown/city/CityInfo;->playtimeSeconds:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass37 (info.flowersoft.theotown.scripting.libraries.CityLibrary$37)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$37;
.super Lvm2/lib/TwoArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public static synthetic $r8$lambda$TFePH3SYHlezYvl276bZoELmvns(Lvm2/LuaFunction;Ljava/lang/String;)V
    .registers 2

    .line 981
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 974
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 8

    .line 977
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 978
    invoke-virtual {p2}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object p2

    .line 980
    new-instance v0, Linfo/flowersoft/theotown/stages/ConsoleStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1500(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/stages/ConsoleStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/region/Region;Z)V

    .line 981
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$37$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$37$$ExternalSyntheticLambda0;-><init>(Lvm2/LuaFunction;)V

    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/stages/ConsoleStage;->process(Ljava/lang/String;Lio/blueflower/stapel2d/util/Setter;)V

    .line 983
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary$37$$ExternalSyntheticLambda0 (info.flowersoft.theotown.scripting.libraries.CityLibrary$37$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$37$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Lvm2/LuaFunction;


# direct methods
.method public synthetic constructor <init>(Lvm2/LuaFunction;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$37$$ExternalSyntheticLambda0;->f$0:Lvm2/LuaFunction;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$37$$ExternalSyntheticLambda0;->f$0:Lvm2/LuaFunction;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$37;->$r8$lambda$TFePH3SYHlezYvl276bZoELmvns(Lvm2/LuaFunction;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass38 (info.flowersoft.theotown.scripting.libraries.CityLibrary$38)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$38;
.super Lvm2/lib/OneArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$cityInfoTypes:Ljava/util/Map;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Ljava/util/Map;)V
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

    .line 1003
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$38;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$38;->val$cityInfoTypes:Ljava/util/Map;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 1006
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$38;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$2100(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Lio/blueflower/stapel2d/util/Setter;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 1007
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 1008
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$38;->val$cityInfoTypes:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    if-eqz v0, :cond_26

    .line 1010
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$38;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$2100(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Lio/blueflower/stapel2d/util/Setter;

    move-result-object p1

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    goto :goto_3d

    .line 1012
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown city info type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1015
    :cond_3d
    :goto_3d
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass39 (info.flowersoft.theotown.scripting.libraries.CityLibrary$39)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$39;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1019
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$39;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 1022
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$39;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$2200(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1023
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$39;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$2200(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1025
    :cond_11
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass4 (info.flowersoft.theotown.scripting.libraries.CityLibrary$4)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$4;
.super Lvm2/lib/ThreeArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 373
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 376
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 377
    invoke-static {p1}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttribute(Ljava/lang/String;)Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 382
    invoke-virtual {p2}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide p1

    double-to-float p1, p1

    const/4 p2, 0x0

    .line 384
    invoke-virtual {p3, p2}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_20

    .line 386
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p2

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    .line 389
    :cond_20
    iget-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p3}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/management/DefaultManagement;

    move-result-object p3

    invoke-virtual {p3}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getHappinessModifier()Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;

    move-result-object p3

    invoke-virtual {p3, v0, p2, p1}, Linfo/flowersoft/theotown/components/management/AugmentedHappinessModifier;->set(Linfo/flowersoft/theotown/components/management/attribute/Attribute;Ljava/lang/String;F)F

    .line 390
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 379
    :cond_30
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown happiness attr "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass40 (info.flowersoft.theotown.scripting.libraries.CityLibrary$40)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$40;
.super Lvm2/lib/OneArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1029
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$40;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 1032
    const-class v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-nez p1, :cond_1d

    .line 1034
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$40;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/BuildingList;->size()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 1036
    :cond_1d
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$40;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass41 (info.flowersoft.theotown.scripting.libraries.CityLibrary$41)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$41;
.super Lvm2/lib/VarArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1040
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$41;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    const/4 v0, 0x1

    .line 1043
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    .line 1044
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const-class v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz p1, :cond_2e

    .line 1047
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$41;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object p1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Building;

    goto :goto_3c

    .line 1049
    :cond_2e
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$41;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object p1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/BuildingList;->get(I)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    :goto_3c
    if-eqz p1, :cond_53

    .line 1052
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-static {v0, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 1054
    :cond_53
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass42 (info.flowersoft.theotown.scripting.libraries.CityLibrary$42)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$42;
.super Lvm2/lib/TwoArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1058
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$42;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 7

    .line 1061
    invoke-virtual {p1}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object p1

    .line 1062
    const-class v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {p2, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz p2, :cond_1d

    .line 1065
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$42;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object p2

    goto :goto_27

    .line 1067
    :cond_1d
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$42;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object p2

    :goto_27
    const/4 v0, 0x0

    .line 1069
    :goto_28
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_53

    .line 1070
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/Building;

    if-nez v1, :cond_37

    goto :goto_53

    .line 1073
    :cond_37
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v2

    invoke-static {v2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v2

    .line 1074
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v3

    invoke-static {v3}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v3

    .line 1075
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    .line 1072
    invoke-virtual {p1, v2, v3, v1}, Lvm2/LuaValue;->call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 1077
    :cond_53
    :goto_53
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass43 (info.flowersoft.theotown.scripting.libraries.CityLibrary$43)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$43;
.super Lvm2/lib/OneArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1081
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$43;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 1084
    const-class v0, Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz p1, :cond_21

    .line 1086
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$43;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/RoadList;->getRoadsOfDraft(Linfo/flowersoft/theotown/draft/RoadDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 1088
    :cond_21
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$43;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/RoadList;->size()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass44 (info.flowersoft.theotown.scripting.libraries.CityLibrary$44)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$44;
.super Lvm2/lib/VarArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1092
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$44;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    const/4 v0, 0x1

    .line 1095
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x2

    .line 1096
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const-class v3, Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-static {p1, v3}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz p1, :cond_2e

    .line 1099
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$44;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v3

    invoke-virtual {v3, p1}, Linfo/flowersoft/theotown/city/RoadList;->getRoadsOfDraft(Linfo/flowersoft/theotown/draft/RoadDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object p1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Road;

    goto :goto_3c

    .line 1101
    :cond_2e
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$44;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object p1

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/RoadList;->get(I)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    :goto_3c
    if-eqz p1, :cond_6c

    .line 1105
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v1

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v1

    .line 1106
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v3

    invoke-static {v3}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v3

    .line 1107
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getLevel()I

    move-result v4

    invoke-static {v4}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v4

    iget-object p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    const/4 v5, 0x4

    new-array v5, v5, [Lvm2/LuaValue;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v3, v5, v0

    aput-object v4, v5, v2

    const/4 v0, 0x3

    aput-object p1, v5, v0

    .line 1104
    invoke-static {v5}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 1111
    :cond_6c
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass45 (info.flowersoft.theotown.scripting.libraries.CityLibrary$45)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$45;
.super Lvm2/lib/TwoArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1115
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$45;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1118
    invoke-virtual {p1}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object p1

    .line 1119
    const-class v2, Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-static {p2, v2}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz p2, :cond_1f

    .line 1122
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$45;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v2

    invoke-virtual {v2, p2}, Linfo/flowersoft/theotown/city/RoadList;->getRoadsOfDraft(Linfo/flowersoft/theotown/draft/RoadDraft;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object p2

    goto :goto_29

    .line 1124
    :cond_1f
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$45;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object p2

    :goto_29
    move v2, v1

    .line 1126
    :goto_2a
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_67

    .line 1127
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Road;

    if-nez v3, :cond_39

    goto :goto_67

    .line 1130
    :cond_39
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v4

    invoke-static {v4}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v4

    .line 1131
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v5

    invoke-static {v5}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v5

    .line 1132
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getLevel()I

    move-result v6

    invoke-static {v6}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v6

    iget-object v3, v3, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    const/4 v7, 0x4

    new-array v7, v7, [Lvm2/LuaValue;

    aput-object v4, v7, v1

    aput-object v5, v7, v0

    const/4 v4, 0x2

    aput-object v6, v7, v4

    const/4 v4, 0x3

    aput-object v3, v7, v4

    .line 1129
    invoke-virtual {p1, v7}, Lvm2/LuaValue;->invoke([Lvm2/LuaValue;)Lvm2/Varargs;

    add-int/2addr v2, v0

    goto :goto_2a

    .line 1136
    :cond_67
    :goto_67
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass46 (info.flowersoft.theotown.scripting.libraries.CityLibrary$46)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$46;
.super Lvm2/lib/TwoArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1140
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$46;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 8

    .line 1143
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$46;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    const-string v1, "taxes"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$2300(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Ljava/lang/String;)V

    .line 1144
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 1145
    invoke-virtual {p2, v0}, Lvm2/LuaValue;->opttable(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object p2

    if-eqz p2, :cond_35

    const/16 v0, 0x9

    .line 1147
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v0, :cond_2b

    add-int/lit8 v3, v2, 0x1

    .line 1149
    invoke-virtual {p2, v3}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lvm2/LuaValue;->checknumber()Lvm2/LuaNumber;

    move-result-object v4

    invoke-virtual {v4}, Lvm2/LuaValue;->tofloat()F

    move-result v4

    aput v4, v1, v2

    move v2, v3

    goto :goto_17

    .line 1151
    :cond_2b
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$46;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$900(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->addTaxFactor(Ljava/lang/String;[F)V

    goto :goto_3e

    .line 1153
    :cond_35
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$46;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$900(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p2

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/DefaultBudget;->removeTaxFactor(Ljava/lang/String;)V

    .line 1155
    :goto_3e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass47 (info.flowersoft.theotown.scripting.libraries.CityLibrary$47)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$47;
.super Lvm2/lib/TwoArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1159
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$47;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 1162
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1163
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    if-ltz p1, :cond_34

    const/4 v0, 0x2

    if-gt p1, v0, :cond_34

    const/4 v0, 0x1

    if-lt p2, v0, :cond_2c

    const/4 v1, 0x3

    if-gt p2, v1, :cond_2c

    .line 1167
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/city/Zones;->resolveRci(I)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object p1

    .line 1168
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$47;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$900(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v1

    sub-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getTaxes(Linfo/flowersoft/theotown/draft/ZoneDraft;I)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1

    .line 1165
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tax level must be in 1..3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1164
    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tax rci must be a valid TAX_ identifier"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass48 (info.flowersoft.theotown.scripting.libraries.CityLibrary$48)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$48;
.super Lvm2/lib/ThreeArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1172
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$48;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 1175
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$48;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    const-string v1, "taxes"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$2400(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1177
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 1178
    invoke-virtual {p3}, Lvm2/LuaValue;->checknumber()Lvm2/LuaNumber;

    move-result-object p3

    invoke-virtual {p3}, Lvm2/LuaValue;->tofloat()F

    move-result p3

    if-ltz p1, :cond_52

    const/4 v0, 0x2

    if-gt p1, v0, :cond_52

    const/4 v0, 0x1

    if-lt p2, v0, :cond_4a

    const/4 v1, 0x3

    if-gt p2, v1, :cond_4a

    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-ltz v1, :cond_42

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, p3, v1

    if-gtz v1, :cond_42

    .line 1183
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/city/Zones;->resolveRci(I)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object p1

    .line 1184
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$48;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$900(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v1

    sub-int/2addr p2, v0

    invoke-virtual {v1, p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultBudget;->setTaxes(Linfo/flowersoft/theotown/draft/ZoneDraft;IF)V

    .line 1186
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 1181
    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tax must be in 0..100"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1180
    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tax level must be in 1..3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1179
    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tax rci must be a valid TAX_ identifier"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass49 (info.flowersoft.theotown.scripting.libraries.CityLibrary$49)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$49;
.super Lvm2/lib/OneArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1190
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$49;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 1193
    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p1

    .line 1194
    const-string v0, "draft"

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 1195
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$49;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$2500(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "added"

    invoke-static {p1, v3}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$2600(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Ljava/util/Map;Ljava/lang/Object;Linfo/flowersoft/theotown/scripting/ScriptMethod;)V

    .line 1196
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$49;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$2700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "finished"

    invoke-static {p1, v3}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$2600(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Ljava/util/Map;Ljava/lang/Object;Linfo/flowersoft/theotown/scripting/ScriptMethod;)V

    .line 1197
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$49;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$2800(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "upgraded"

    invoke-static {p1, v3}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$2600(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Ljava/util/Map;Ljava/lang/Object;Linfo/flowersoft/theotown/scripting/ScriptMethod;)V

    .line 1198
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$49;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$2900(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "removed"

    invoke-static {p1, v3}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    invoke-static {v1, v2, v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$2600(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Ljava/util/Map;Ljava/lang/Object;Linfo/flowersoft/theotown/scripting/ScriptMethod;)V

    .line 1199
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass5 (info.flowersoft.theotown.scripting.libraries.CityLibrary$5)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$5;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 394
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 397
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass50 (info.flowersoft.theotown.scripting.libraries.CityLibrary$50)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$50;
.super Lvm2/lib/OneArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1203
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$50;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 7

    .line 1206
    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p1

    .line 1207
    const-string v0, "draft"

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 1208
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$50;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$2500(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "added"

    invoke-static {p1, v3}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$3000(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Ljava/util/Map;Ljava/lang/Object;Linfo/flowersoft/theotown/scripting/ScriptMethod;)Z

    move-result v1

    .line 1209
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$50;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$2700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "finished"

    invoke-static {p1, v4}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v4

    invoke-static {v2, v3, v0, v4}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$3000(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Ljava/util/Map;Ljava/lang/Object;Linfo/flowersoft/theotown/scripting/ScriptMethod;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1210
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$50;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$2800(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "upgraded"

    invoke-static {p1, v4}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v4

    invoke-static {v2, v3, v0, v4}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$3000(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Ljava/util/Map;Ljava/lang/Object;Linfo/flowersoft/theotown/scripting/ScriptMethod;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1211
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$50;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$2900(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "removed"

    invoke-static {p1, v4}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    invoke-static {v2, v3, v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$3000(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Ljava/util/Map;Ljava/lang/Object;Linfo/flowersoft/theotown/scripting/ScriptMethod;)Z

    move-result p1

    or-int/2addr p1, v1

    .line 1212
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass51 (info.flowersoft.theotown.scripting.libraries.CityLibrary$51)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$51;
.super Lvm2/lib/OneArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1216
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$51;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 1219
    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p1

    .line 1220
    const-string v0, "draft"

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 1221
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$51;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$3100(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "added"

    invoke-static {p1, v3}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$2600(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Ljava/util/Map;Ljava/lang/Object;Linfo/flowersoft/theotown/scripting/ScriptMethod;)V

    .line 1222
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$51;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$3200(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "removed"

    invoke-static {p1, v3}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    invoke-static {v1, v2, v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$2600(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Ljava/util/Map;Ljava/lang/Object;Linfo/flowersoft/theotown/scripting/ScriptMethod;)V

    .line 1223
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass52 (info.flowersoft.theotown.scripting.libraries.CityLibrary$52)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$52;
.super Lvm2/lib/OneArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1227
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$52;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 7

    .line 1230
    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p1

    .line 1231
    const-string v0, "draft"

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 1232
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$52;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$3100(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "added"

    invoke-static {p1, v3}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$3000(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Ljava/util/Map;Ljava/lang/Object;Linfo/flowersoft/theotown/scripting/ScriptMethod;)Z

    move-result v1

    .line 1233
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$52;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$3200(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "removed"

    invoke-static {p1, v4}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p1

    invoke-static {v2, v3, v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$3000(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Ljava/util/Map;Ljava/lang/Object;Linfo/flowersoft/theotown/scripting/ScriptMethod;)Z

    move-result p1

    or-int/2addr p1, v1

    .line 1234
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass53 (info.flowersoft.theotown.scripting.libraries.CityLibrary$53)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$53;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1238
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$53;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 1241
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    if-nez v0, :cond_d

    .line 1242
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0

    .line 1244
    :cond_d
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$53;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->removeScriptListeners(Linfo/flowersoft/theotown/scripting/Script;)Z

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass54 (info.flowersoft.theotown.scripting.libraries.CityLibrary$54)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$54;
.super Lvm2/lib/VarArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1248
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$54;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 14

    .line 1251
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$54;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    const/4 v1, 0x1

    .line 1253
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    const/4 v2, 0x2

    .line 1254
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const/4 v3, 0x3

    .line 1255
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    const/4 v4, 0x4

    .line 1256
    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    const/4 v5, 0x5

    .line 1257
    invoke-virtual {p1, v5}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 1260
    invoke-virtual {v4, v5, v6}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v5, 0x0

    .line 1261
    invoke-virtual {p1, v5}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p1

    .line 1264
    invoke-virtual {v1}, Lvm2/LuaValue;->isint()Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 1265
    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v5

    goto :goto_4d

    .line 1267
    :cond_3e
    const-class v6, Linfo/flowersoft/theotown/draft/SoundDraft;

    invoke-static {v1, v6}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/SoundDraft;

    if-eqz v1, :cond_4d

    .line 1269
    iget v5, v1, Linfo/flowersoft/theotown/draft/SoundDraft;->volume:F

    mul-float/2addr v4, v5

    .line 1270
    iget v5, v1, Linfo/flowersoft/theotown/draft/SoundDraft;->sound:I

    .line 1274
    :cond_4d
    :goto_4d
    invoke-virtual {v2}, Lvm2/LuaValue;->checkint()I

    move-result v8

    .line 1275
    invoke-virtual {v3}, Lvm2/LuaValue;->checkint()I

    move-result v9

    if-lez v5, :cond_7b

    .line 1280
    new-instance v6, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$54;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v7

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct/range {v6 .. v11}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;IIII)V

    .line 1281
    invoke-virtual {v6, v4}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->setVolume(F)V

    if-eqz p1, :cond_6f

    .line 1284
    sget-object p1, Linfo/flowersoft/theotown/resources/SoundType;->PLUGIN:Linfo/flowersoft/theotown/resources/SoundType;

    invoke-virtual {v0, v5, p1, v6}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playLoop(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    goto :goto_74

    .line 1286
    :cond_6f
    sget-object p1, Linfo/flowersoft/theotown/resources/SoundType;->PLUGIN:Linfo/flowersoft/theotown/resources/SoundType;

    invoke-virtual {v0, v5, p1, v6}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playOnce(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    .line 1288
    :goto_74
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$54;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p1, v6}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$3300(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;)Lvm2/LuaTable;

    move-result-object p1

    return-object p1

    .line 1290
    :cond_7b
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass55 (info.flowersoft.theotown.scripting.libraries.CityLibrary$55)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$55;
.super Lvm2/lib/ThreeArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1295
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$55;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 1299
    const-class v0, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    const/4 v0, 0x0

    .line 1300
    invoke-virtual {p2, v0}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p2

    const/4 v0, 0x0

    .line 1303
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1c

    .line 1305
    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0}, Lio/blueflower/stapel2d/drawing/Color;-><init>()V

    .line 1306
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {p3, v1, v0}, Lio/blueflower/stapel2d/drawing/Color;->fromHex(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    :cond_1c
    if-eqz p1, :cond_3e

    .line 1309
    iget-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$55;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p3}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object p3

    if-eqz p3, :cond_3e

    .line 1310
    new-instance p3, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$55;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-direct {p3, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 1311
    invoke-virtual {p3, p1, p2, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->resolve(Linfo/flowersoft/theotown/draft/Draft;ZLio/blueflower/stapel2d/drawing/Color;)Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object p2

    if-eqz p2, :cond_3e

    .line 1314
    iget-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$55;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p3, p2, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$3400(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/Draft;)Lvm2/LuaTable;

    move-result-object p1

    return-object p1

    .line 1317
    :cond_3e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass56 (info.flowersoft.theotown.scripting.libraries.CityLibrary$56)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$56;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1321
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$56;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 1324
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$56;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Tool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Tool;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass57 (info.flowersoft.theotown.scripting.libraries.CityLibrary$57)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$57;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1328
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$57;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 1331
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$57;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Tool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Tool;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass58 (info.flowersoft.theotown.scripting.libraries.CityLibrary$58)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$58;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1335
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$58;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 1338
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$58;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTargetXp()I

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass59 (info.flowersoft.theotown.scripting.libraries.CityLibrary$59)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$59;
.super Lvm2/lib/OneArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1341
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$59;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 1344
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "setXp"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->assertPrivileged(Ljava/lang/String;)V

    .line 1345
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$59;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/City;->setTargetXp(I)V

    .line 1346
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass6 (info.flowersoft.theotown.scripting.libraries.CityLibrary$6)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$6;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 401
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 404
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$800(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$800(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0

    :cond_17
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass60 (info.flowersoft.theotown.scripting.libraries.CityLibrary$60)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$60;
.super Lvm2/lib/VarArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1350
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$60;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 1353
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$60;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object p1

    if-nez p1, :cond_f

    .line 1354
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 1355
    :cond_f
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    iget p1, p1, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-static {v0, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass61 (info.flowersoft.theotown.scripting.libraries.CityLibrary$61)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$61;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1358
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$61;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 1361
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$61;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass62 (info.flowersoft.theotown.scripting.libraries.CityLibrary$62)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$62;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1364
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$62;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 1367
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$62;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass63 (info.flowersoft.theotown.scripting.libraries.CityLibrary$63)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$63;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1370
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$63;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 1373
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$63;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isOnline()Z

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass64 (info.flowersoft.theotown.scripting.libraries.CityLibrary$64)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$64;
.super Lvm2/lib/OneArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1377
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$64;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 1380
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$64;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getZoneCounter()[I

    move-result-object v0

    .line 1381
    invoke-virtual {p1}, Lvm2/LuaValue;->isnil()Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 p1, 0x0

    move v1, p1

    .line 1383
    :goto_12
    array-length v2, v0

    if-ge p1, v2, :cond_1b

    .line 1384
    aget v2, v0, p1

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    .line 1386
    :cond_1b
    invoke-static {v1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 1389
    :cond_20
    const-class v1, Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {p1, v1}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 1390
    iget p1, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->tempId:I

    aget p1, v0, p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass65 (info.flowersoft.theotown.scripting.libraries.CityLibrary$65)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$65;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1395
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$65;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 1398
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$65;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isLeftSideTraffic()Z

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass66 (info.flowersoft.theotown.scripting.libraries.CityLibrary$66)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$66;
.super Lvm2/lib/OneArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1402
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$66;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 1405
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$66;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isLeftSideTraffic()Z

    move-result v0

    .line 1406
    invoke-virtual {p1}, Lvm2/LuaValue;->checkboolean()Z

    move-result p1

    if-eq v0, p1, :cond_1c

    .line 1408
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$66;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/city/City;->setLeftSideTraffic(Z)V

    .line 1409
    invoke-static {p1}, Linfo/flowersoft/theotown/resources/Drafts;->setLeftSideTraffic(Z)V

    .line 1411
    :cond_1c
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass67 (info.flowersoft.theotown.scripting.libraries.CityLibrary$67)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$67;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildSoundTable(Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$source:Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;)V
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

    .line 1419
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$67;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$67;->val$source:Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 1422
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$67;->val$source:Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->setValid(Z)V

    .line 1423
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass68 (info.flowersoft.theotown.scripting.libraries.CityLibrary$68)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$68;
.super Lvm2/lib/TwoArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildSoundTable(Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$source:Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;)V
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

    .line 1426
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$68;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$68;->val$source:Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 1429
    invoke-virtual {p1}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide p1

    double-to-float p1, p1

    .line 1430
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$68;->val$source:Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->setVolume(F)V

    .line 1431
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass69 (info.flowersoft.theotown.scripting.libraries.CityLibrary$69)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$69;
.super Lvm2/lib/OneArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildSoundTable(Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1434
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$69;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 1438
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass7 (info.flowersoft.theotown.scripting.libraries.CityLibrary$7)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$7;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 408
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 411
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$800(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$800(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0

    :cond_17
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass70 (info.flowersoft.theotown.scripting.libraries.CityLibrary$70)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$70;
.super Lvm2/lib/TwoArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildSoundTable(Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$source:Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;)V
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

    .line 1441
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$70;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$70;->val$source:Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 1444
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$70;->val$source:Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->setX(I)V

    .line 1445
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$70;->val$source:Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->optint(I)I

    move-result p2

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->setY(I)V

    .line 1446
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass71 (info.flowersoft.theotown.scripting.libraries.CityLibrary$71)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$71;
.super Lvm2/lib/TwoArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildSoundTable(Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$source:Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;)V
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

    .line 1449
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$71;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$71;->val$source:Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 1452
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$71;->val$source:Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->setW(I)V

    .line 1453
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$71;->val$source:Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->optint(I)I

    move-result p2

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;->setH(I)V

    .line 1454
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass72 (info.flowersoft.theotown.scripting.libraries.CityLibrary$72)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$72;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildDraftDrawerTable(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/Draft;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V
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

    .line 1462
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$72;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$72;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 1465
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$72;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewWidth()I

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass73 (info.flowersoft.theotown.scripting.libraries.CityLibrary$73)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$73;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildDraftDrawerTable(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/Draft;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V
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

    .line 1468
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$73;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$73;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 1471
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$73;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewWidth()I

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass74 (info.flowersoft.theotown.scripting.libraries.CityLibrary$74)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$74;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildDraftDrawerTable(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/Draft;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V
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

    .line 1474
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$74;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$74;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 1477
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$74;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass75 (info.flowersoft.theotown.scripting.libraries.CityLibrary$75)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$75;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildDraftDrawerTable(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/Draft;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V
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

    .line 1480
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$75;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$75;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 1483
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$75;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass76 (info.flowersoft.theotown.scripting.libraries.CityLibrary$76)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$76;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildDraftDrawerTable(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/Draft;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V
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

    .line 1486
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$76;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$76;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 1489
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$76;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getPrice()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass77 (info.flowersoft.theotown.scripting.libraries.CityLibrary$77)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$77;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildDraftDrawerTable(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/Draft;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V
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

    .line 1492
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$77;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$77;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 1495
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$77;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getMonthlyPrice()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass78 (info.flowersoft.theotown.scripting.libraries.CityLibrary$78)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$78;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildDraftDrawerTable(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/Draft;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V
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

    .line 1498
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$78;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$78;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 1501
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$78;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->getDiamondPrice()I

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass79 (info.flowersoft.theotown.scripting.libraries.CityLibrary$79)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$79;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildDraftDrawerTable(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/Draft;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V
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

    .line 1504
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$79;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$79;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 1507
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$79;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->isActive()Z

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass8 (info.flowersoft.theotown.scripting.libraries.CityLibrary$8)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$8;
.super Lvm2/lib/VarArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 415
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 15

    const/4 v0, 0x1

    .line 418
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x2

    .line 419
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    invoke-virtual {v2, v3, v4}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v5

    double-to-float v10, v5

    const/4 v2, 0x3

    .line 420
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v2

    double-to-float v11, v2

    const/4 v2, 0x4

    .line 421
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const-class v2, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {p1, v2}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    if-lez v1, :cond_74

    .line 423
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v2

    if-nez v2, :cond_74

    .line 424
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentSource()Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    cmpl-float v3, v10, v2

    if-ltz v3, :cond_58

    cmpl-float v2, v11, v2

    if-ltz v2, :cond_58

    .line 426
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$900(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v7

    int-to-double v8, v1

    invoke-virtual/range {v7 .. v12}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    goto :goto_62

    .line 428
    :cond_58
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$900(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v2

    int-to-double v3, v1

    invoke-virtual {v2, v3, v4, v12}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DLjava/lang/String;)V

    :goto_62
    if-eqz p1, :cond_6f

    .line 431
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$900(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v2

    neg-int v1, v1

    int-to-long v3, v1

    invoke-virtual {v2, p1, v3, v4}, Linfo/flowersoft/theotown/components/DefaultBudget;->notifyAboutBudgetItemContribution(Linfo/flowersoft/theotown/draft/Draft;J)Z

    .line 433
    :cond_6f
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    :cond_74
    const/4 p1, 0x0

    .line 435
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass80 (info.flowersoft.theotown.scripting.libraries.CityLibrary$80)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$80;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildDraftDrawerTable(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/Draft;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V
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

    .line 1510
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$80;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$80;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 1513
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$80;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;->isSelectable()Z

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass81 (info.flowersoft.theotown.scripting.libraries.CityLibrary$81)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$81;
.super Lvm2/lib/OneArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildDraftDrawerTable(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/Draft;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$draft:Linfo/flowersoft/theotown/draft/Draft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/draft/Draft;)V
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

    .line 1516
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$81;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$81;->val$draft:Linfo/flowersoft/theotown/draft/Draft;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 9

    .line 1519
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$81;->val$draft:Linfo/flowersoft/theotown/draft/Draft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->getRequirement()Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;

    move-result-object v0

    .line 1520
    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/requirement/DraftRequirement;->getSingleRequirements()Ljava/util/List;

    move-result-object v0

    .line 1521
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1522
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$81;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/GameMode;->hasRequirements()Z

    move-result v2

    const/4 v3, 0x0

    .line 1524
    :goto_1e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6d

    .line 1525
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;

    const/4 v5, 0x0

    .line 1526
    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->setContext(Ljava/lang/Object;)V

    .line 1529
    invoke-virtual {v4}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->autoFulfilledInSandboxMode()Z

    move-result v5

    if-eqz v5, :cond_37

    if-nez v2, :cond_37

    goto :goto_6a

    .line 1534
    :cond_37
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$81;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v5

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->isFulfilled(Linfo/flowersoft/theotown/city/City;)Z

    move-result v5

    .line 1535
    invoke-virtual {p1, v5}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v6

    if-eq v5, v6, :cond_48

    goto :goto_6a

    .line 1538
    :cond_48
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$81;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    .line 1539
    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1500(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v5

    invoke-virtual {v5}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v5

    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$81;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v6}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v6

    .line 1538
    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->localize(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1542
    invoke-virtual {v4}, Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;->isImportant()Z

    move-result v4

    if-eqz v4, :cond_6a

    goto :goto_6d

    :cond_6a
    :goto_6a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 1545
    :cond_6d
    :goto_6d
    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createRawTable(Ljava/util/List;)Lvm2/LuaTable;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass82 (info.flowersoft.theotown.scripting.libraries.CityLibrary$82)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$82;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildDraftDrawerTable(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/Draft;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V
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

    .line 1548
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$82;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$82;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 1551
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$82;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->countFrames()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass83 (info.flowersoft.theotown.scripting.libraries.CityLibrary$83)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$83;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildDraftDrawerTable(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/Draft;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V
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

    .line 1554
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$83;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$83;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 1557
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$83;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-interface {v0}, Linfo/flowersoft/theotown/ui/Selectable;->nextFrame()V

    .line 1558
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass84 (info.flowersoft.theotown.scripting.libraries.CityLibrary$84)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$84;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildDraftDrawerTable(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/Draft;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V
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

    .line 1561
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$84;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$84;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 1564
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$84;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-interface {v0}, Linfo/flowersoft/theotown/ui/Selectable;->prevFrame()V

    .line 1565
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass85 (info.flowersoft.theotown.scripting.libraries.CityLibrary$85)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$85;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildDraftDrawerTable(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/Draft;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$draft:Linfo/flowersoft/theotown/draft/Draft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/draft/Draft;)V
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

    .line 1568
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$85;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$85;->val$draft:Linfo/flowersoft/theotown/draft/Draft;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 1571
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$85;->val$draft:Linfo/flowersoft/theotown/draft/Draft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass86 (info.flowersoft.theotown.scripting.libraries.CityLibrary$86)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$86;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildDraftDrawerTable(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/Draft;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V
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

    .line 1574
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$86;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$86;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 1577
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$86;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->select()V

    .line 1578
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$86;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$86;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$3500(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

    .line 1579
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass87 (info.flowersoft.theotown.scripting.libraries.CityLibrary$87)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$87;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildDraftDrawerTable(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/Draft;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V
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

    .line 1582
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$87;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$87;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 1585
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$87;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$87;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$3500(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V

    .line 1586
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass88 (info.flowersoft.theotown.scripting.libraries.CityLibrary$88)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$88;
.super Lvm2/lib/VarArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildDraftDrawerTable(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/Draft;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V
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

    .line 1589
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$88;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$88;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 12

    const/4 v0, 0x1

    .line 1592
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x2

    .line 1593
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x3

    .line 1594
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    invoke-virtual {v2, v3, v4}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v5

    double-to-float v2, v5

    const/4 v5, 0x4

    .line 1595
    invoke-virtual {p1, v5}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v3

    double-to-float p1, v3

    .line 1596
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$88;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$1500(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v3

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-ltz v5, :cond_79

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_79

    .line 1598
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$88;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewWidth()I

    move-result v4

    .line 1599
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$88;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->getPreviewHeight()I

    move-result v5

    .line 1600
    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v6

    .line 1601
    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v7

    int-to-float v4, v4

    div-float v8, v2, v4

    int-to-float v5, v5

    div-float v9, p1, v5

    .line 1602
    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1603
    invoke-virtual {v3, v8, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 1604
    iget-object v9, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$88;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    mul-float/2addr v4, v8

    sub-float/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    float-to-int v0, v0

    mul-float/2addr v5, v8

    sub-float/2addr p1, v5

    mul-float/2addr p1, v4

    add-float/2addr v1, p1

    float-to-int p1, v1

    invoke-virtual {v9, v3, v0, p1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V

    .line 1605
    invoke-virtual {v3, v6, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    goto :goto_80

    .line 1607
    :cond_79
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$88;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-virtual {p1, v3, v0, v1}, Linfo/flowersoft/theotown/ui/selectable/DefaultSelectable;->drawPreview(Lio/blueflower/stapel2d/drawing/Engine;II)V

    .line 1609
    :goto_80
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass89 (info.flowersoft.theotown.scripting.libraries.CityLibrary$89)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$89;
.super Lvm2/lib/ZeroArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->buildDraftDrawerTable(Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;Linfo/flowersoft/theotown/draft/Draft;)Lvm2/LuaTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

.field public final synthetic val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;)V
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

    .line 1612
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$89;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$89;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 1615
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$89;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$89;->val$selectable:Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$3600(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;Linfo/flowersoft/theotown/ui/Selectable;)Lvm2/LuaTable;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CityLibrary.AnonymousClass9 (info.flowersoft.theotown.scripting.libraries.CityLibrary$9)
.class public Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$9;
.super Lvm2/lib/VarArgFunction;
.source "CityLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 439
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 15

    const/4 v0, 0x1

    .line 442
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x2

    .line 443
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    invoke-virtual {v2, v3, v4}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v5

    double-to-float v10, v5

    const/4 v2, 0x3

    .line 444
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v2

    double-to-float v11, v2

    const/4 v2, 0x4

    .line 445
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v2

    const/4 v4, 0x5

    .line 446
    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const-class v4, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {p1, v4}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    if-lez v1, :cond_91

    .line 447
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->isPrivileged()Z

    move-result v4

    if-eqz v4, :cond_91

    .line 448
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v3

    if-nez v3, :cond_80

    .line 449
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentSource()Ljava/lang/String;

    move-result-object v12

    const/4 v3, 0x0

    cmpl-float v4, v10, v3

    if-ltz v4, :cond_6c

    cmpl-float v3, v11, v3

    if-ltz v3, :cond_6c

    .line 451
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$900(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v7

    int-to-double v8, v1

    invoke-virtual/range {v7 .. v12}, Linfo/flowersoft/theotown/components/DefaultBudget;->earn(DFFLjava/lang/String;)V

    goto :goto_76

    .line 453
    :cond_6c
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$900(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v3

    int-to-double v4, v1

    invoke-virtual {v3, v4, v5, v12}, Linfo/flowersoft/theotown/components/DefaultBudget;->earn(DLjava/lang/String;)V

    :goto_76
    if-eqz v2, :cond_80

    .line 456
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v2

    int-to-double v3, v1

    invoke-virtual {v2, v0, v3, v4}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->addEvent(ID)V

    :cond_80
    if-eqz p1, :cond_8c

    .line 462
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->access$900(Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;)Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v2

    int-to-long v3, v1

    invoke-virtual {v2, p1, v3, v4}, Linfo/flowersoft/theotown/components/DefaultBudget;->notifyAboutBudgetItemContribution(Linfo/flowersoft/theotown/draft/Draft;J)Z

    .line 465
    :cond_8c
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 467
    :cond_91
    invoke-static {v3}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method
