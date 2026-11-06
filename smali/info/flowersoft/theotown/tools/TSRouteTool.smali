###### Class info.flowersoft.theotown.tools.TSRouteTool (info.flowersoft.theotown.tools.TSRouteTool)
.class public Linfo/flowersoft/theotown/tools/TSRouteTool;
.super Linfo/flowersoft/theotown/tools/BuildTool;
.source "TSRouteTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/tools/TSRouteTool$Route;
    }
.end annotation


# instance fields
.field public final ALLOW_STATION_DUPLICATES:Z

.field public final ROUTE_FRAMES:[I

.field public final allRoadRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/ManagedRoadRoute;",
            ">;"
        }
    .end annotation
.end field

.field public final allRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/tools/TSRouteTool$Route;",
            ">;"
        }
    .end annotation
.end field

.field public final clickCallback:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public editingRoadRoute:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

.field public final editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

.field public icon:I

.field public name:Ljava/lang/String;

.field public readonly:Z

.field public routesByStationId:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap<",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/tools/TSRouteTool$Route;",
            ">;>;"
        }
    .end annotation
.end field

.field public final system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

.field public final tempList:Lio/blueflower/stapel2d/util/IntList;

.field public final tmpBuilder:Ljava/lang/StringBuilder;

.field public final tmpList:Lio/blueflower/stapel2d/util/IntList;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;ILinfo/flowersoft/theotown/components/transportationsystem/TSSystem;Linfo/flowersoft/theotown/tools/TSRouteTool$Route;Ljava/util/List;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/City;",
            "I",
            "Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;",
            "Linfo/flowersoft/theotown/tools/TSRouteTool$Route;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/tools/TSRouteTool$Route;",
            ">;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/util/IntList;",
            ">;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/BuildTool;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->ALLOW_STATION_DUPLICATES:Z

    .line 79
    const-string v1, "$anim_busroutetool_routealignment00"

    const-class v2, Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 80
    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 79
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    iput-object v1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->ROUTE_FRAMES:[I

    .line 96
    iput v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->icon:I

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->allRoadRoutes:Ljava/util/List;

    .line 125
    new-instance v1, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v1}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->tmpList:Lio/blueflower/stapel2d/util/IntList;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->tmpBuilder:Ljava/lang/StringBuilder;

    .line 136
    new-instance v1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->routesByStationId:Lcom/badlogic/gdx/utils/IntMap;

    .line 141
    new-instance v1, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v1}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->tempList:Lio/blueflower/stapel2d/util/IntList;

    .line 151
    iput-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 152
    iput p2, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->icon:I

    .line 153
    iput-object p3, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    .line 154
    iput-object p7, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->clickCallback:Lio/blueflower/stapel2d/util/Setter;

    .line 155
    iput-object p4, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    .line 156
    iput-object p5, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->allRoutes:Ljava/util/List;

    const/4 p2, 0x1

    .line 157
    iput-boolean p2, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawUnderground:Z

    .line 158
    iput-boolean p2, p0, Linfo/flowersoft/theotown/tools/BuildTool;->drawUndergroundRoad:Z

    move p2, v0

    .line 160
    :goto_4e
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    if-ge p2, p4, :cond_87

    .line 161
    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    move p7, v0

    .line 162
    :goto_5b
    iget-object v1, p4, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    if-ge p7, v1, :cond_84

    .line 163
    iget-object v1, p4, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, p7}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    .line 164
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->routesByStationId:Lcom/badlogic/gdx/utils/IntMap;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/utils/IntMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_7e

    .line 166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-object v3, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->routesByStationId:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v3, v1, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_7e
    invoke-interface {v2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p7, p7, 0x1

    goto :goto_5b

    :cond_84
    add-int/lit8 p2, p2, 0x1

    goto :goto_4e

    .line 173
    :cond_87
    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance p4, Linfo/flowersoft/theotown/tools/TSRouteTool$1;

    invoke-direct {p4, p0, p3, p1}, Linfo/flowersoft/theotown/tools/TSRouteTool$1;-><init>(Linfo/flowersoft/theotown/tools/TSRouteTool;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p2, p4}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    .line 204
    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance p4, Linfo/flowersoft/theotown/tools/TSRouteTool$2;

    invoke-direct {p4, p0, p3, p1}, Linfo/flowersoft/theotown/tools/TSRouteTool$2;-><init>(Linfo/flowersoft/theotown/tools/TSRouteTool;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p2, p4}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    .line 234
    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance p4, Linfo/flowersoft/theotown/tools/TSRouteTool$3;

    invoke-direct {p4, p0, p1, p6}, Linfo/flowersoft/theotown/tools/TSRouteTool$3;-><init>(Linfo/flowersoft/theotown/tools/TSRouteTool;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {p2, p4}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    .line 262
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 263
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    if-eqz p2, :cond_d0

    .line 264
    new-instance p2, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    .line 266
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p4

    const/16 p6, 0xa1f

    invoke-interface {p4, p6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p4

    iget-object p6, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    iget-object p6, p6, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->name:Ljava/lang/String;

    filled-new-array {p6}, [Ljava/lang/Object;

    move-result-object p6

    .line 265
    invoke-static {p4, p6}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    iget-object p6, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    iget-object p6, p6, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {p2, p4, p6}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 264
    invoke-interface {v6, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_d0
    :goto_d0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_eb

    .line 271
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    .line 272
    new-instance p4, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    iget-object p6, p2, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->name:Ljava/lang/String;

    iget-object p2, p2, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {p4, p6, p2}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    invoke-interface {v6, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d0

    .line 275
    :cond_eb
    new-instance v1, Linfo/flowersoft/theotown/tools/TSRouteTool$4;

    iget-object v3, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/TSRouteTool$4;-><init>(Linfo/flowersoft/theotown/tools/TSRouteTool;Linfo/flowersoft/theotown/tools/TSRouteTool$Route;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/tools/TSRouteTool;)Linfo/flowersoft/theotown/util/ManagedRoadRoute;
    .registers 1

    .line 58
    iget-object p0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoadRoute:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/tools/TSRouteTool;)V
    .registers 1

    .line 58
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TSRouteTool;->removeLastStation()V

    return-void
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/tools/TSRouteTool;)Linfo/flowersoft/theotown/tools/TSRouteTool$Route;
    .registers 1

    .line 58
    iget-object p0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/tools/TSRouteTool;Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)V
    .registers 2

    .line 58
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/TSRouteTool;->focusStation(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)V

    return-void
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/tools/TSRouteTool;)Z
    .registers 1

    .line 58
    iget-boolean p0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->readonly:Z

    return p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/tools/TSRouteTool;)V
    .registers 1

    .line 58
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TSRouteTool;->addRandomStation()V

    return-void
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/tools/TSRouteTool;Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)Z
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/tools/TSRouteTool;->isStationConnected(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)Z

    move-result p0

    return p0
.end method

.method private isStationConnected(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)Z
    .registers 3

    .line 369
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->routesByStationId:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final addOrRemoveStation(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)V
    .registers 4

    .line 796
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    iget-object v0, v0, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->last(I)I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getId()I

    move-result v1

    if-ne v0, v1, :cond_13

    .line 798
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TSRouteTool;->removeLastStation()V

    return-void

    .line 799
    :cond_13
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    iget-object v0, v0, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 804
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    const-string v0, "This station is already part of the route"

    invoke-interface {p1, v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void

    .line 808
    :cond_29
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/TSRouteTool;->tryAddStation(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)V

    return-void
.end method

.method public final addRandomStation()V
    .registers 11

    .line 289
    new-instance v0, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>()V

    .line 290
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    iget-object v1, v1, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    .line 291
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_1c

    .line 292
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v1, v4}, Lio/blueflower/stapel2d/util/IntList;->last(I)I

    move-result v5

    invoke-virtual {v2, v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationById(I)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object v2

    goto :goto_1d

    :cond_1c
    move-object v2, v3

    .line 293
    :goto_1d
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_33

    .line 294
    iget-object v3, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v1, v5}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationById(I)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object v3

    :cond_33
    if-eqz v2, :cond_75

    if-eqz v3, :cond_75

    .line 302
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/TileSet;->getMeanX()I

    move-result v1

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object v5

    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/TileSet;->getMeanX()I

    move-result v5

    sub-int/2addr v1, v5

    .line 303
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object v5

    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/TileSet;->getMeanY()I

    move-result v5

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/TileSet;->getMeanY()I

    move-result v3

    sub-int/2addr v5, v3

    .line 304
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/TileSet;->getMeanX()I

    move-result v3

    int-to-float v1, v1

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v6

    float-to-int v1, v1

    add-int/2addr v3, v1

    .line 305
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/TileSet;->getMeanY()I

    move-result v1

    int-to-float v5, v5

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v1, v5

    goto :goto_8a

    :cond_75
    if-eqz v2, :cond_88

    .line 308
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/TileSet;->getMeanX()I

    move-result v3

    .line 309
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/TileSet;->getMeanY()I

    move-result v1

    goto :goto_8a

    :cond_88
    move v1, v4

    move v3, v1

    .line 312
    :goto_8a
    iget-object v5, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_da

    .line 313
    iget-object v5, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    .line 314
    iget-object v6, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    iget-object v6, v6, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Lio/blueflower/stapel2d/util/IntList;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_b1

    goto :goto_d7

    :cond_b1
    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v2, :cond_d4

    .line 317
    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v3, v8}, Linfo/flowersoft/theotown/util/TileSet;->distanceX(II)I

    move-result v7

    int-to-float v7, v7

    .line 318
    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object v9

    invoke-virtual {v9, v1, v8}, Linfo/flowersoft/theotown/util/TileSet;->distanceY(II)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v7

    mul-float/2addr v8, v8

    add-float/2addr v7, v8

    mul-float/2addr v7, v7

    add-float/2addr v7, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    .line 320
    invoke-virtual {v0, v5, v6}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    goto :goto_d7

    .line 322
    :cond_d4
    invoke-virtual {v0, v5, v6}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :goto_d7
    add-int/lit8 v4, v4, 0x1

    goto :goto_8a

    .line 326
    :cond_da
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_ec

    .line 327
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    .line 328
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/TSRouteTool;->tryAddStation(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)V

    .line 329
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/TSRouteTool;->focusStation(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)V

    :cond_ec
    return-void
.end method

.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 340
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 341
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->readonly:Z

    .line 343
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    if-eqz v0, :cond_1c

    .line 345
    iget-object p1, v0, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/TSRouteTool;->buildRoadRoute(Lio/blueflower/stapel2d/util/IntList;)Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoadRoute:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    .line 347
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    iget-object p1, p1, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->name:Ljava/lang/String;

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->name:Ljava/lang/String;

    goto :goto_2d

    .line 350
    :cond_1c
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object p1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->name:Ljava/lang/String;

    .line 353
    :goto_2d
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->allRoadRoutes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 354
    :goto_33
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->allRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_51

    .line 355
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->allRoadRoutes:Ljava/util/List;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->allRoutes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    iget-object v1, v1, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/tools/TSRouteTool;->buildRoadRoute(Lio/blueflower/stapel2d/util/IntList;)Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_33

    :cond_51
    return-void
.end method

.method public final buildRoadRoute(Lio/blueflower/stapel2d/util/IntList;)Linfo/flowersoft/theotown/util/ManagedRoadRoute;
    .registers 6

    .line 360
    new-instance v0, Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getDraft()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getRoadFlags()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;-><init>(Linfo/flowersoft/theotown/city/City;J)V

    const/4 v1, 0x0

    .line 361
    :goto_12
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 362
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    .line 363
    iget-object v3, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationById(I)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object v2

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/tools/TSRouteTool;->getStationArea(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)Linfo/flowersoft/theotown/city/MapArea;

    move-result-object v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->addStation(Linfo/flowersoft/theotown/city/MapArea;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2c
    return-object v0
.end method

.method public drawAfter(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 419
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/TSRouteTool;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getDraft()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getConfig()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;

    move-result-object v2

    iget-boolean v2, v2, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->supportNeighborConnections:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_ae

    .line 420
    iget-object v2, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v2

    .line 421
    iget-object v4, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v4

    .line 422
    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v5

    .line 423
    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->countNeighbors()I

    move-result v6

    move v7, v3

    :goto_2c
    if-ge v7, v6, :cond_a9

    .line 426
    iget-object v8, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8, v7}, Linfo/flowersoft/theotown/city/City;->getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object v8

    if-eqz v8, :cond_a6

    .line 428
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->isDirect()Z

    move-result v9

    if-eqz v9, :cond_a6

    instance-of v9, v8, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;

    if-nez v9, :cond_41

    goto :goto_a6

    .line 433
    :cond_41
    check-cast v8, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;

    .line 435
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getX()I

    move-result v9

    add-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    .line 436
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getY()I

    move-result v10

    add-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    .line 437
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getWidth()I

    move-result v11

    add-int/lit8 v11, v11, -0x4

    int-to-float v11, v11

    .line 438
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getHeight()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    int-to-float v12, v12

    .line 439
    iget-object v13, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v13}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 440
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->isCreated()Z

    move-result v8

    if-eqz v8, :cond_72

    .line 441
    iget-object v8, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v13, 0x50

    invoke-virtual {v8, v13}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    goto :goto_79

    .line 443
    :cond_72
    iget-object v8, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v13, 0x14

    invoke-virtual {v8, v13}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 445
    :goto_79
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v14

    .line 446
    invoke-virtual {v5, v9, v10}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v15

    .line 447
    invoke-virtual {v5, v9, v10}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v16

    add-float/2addr v11, v9

    .line 448
    invoke-virtual {v5, v11, v10}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v17

    .line 449
    invoke-virtual {v5, v11, v10}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v18

    add-float/2addr v10, v12

    .line 450
    invoke-virtual {v5, v11, v10}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v19

    .line 451
    invoke-virtual {v5, v11, v10}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v20

    .line 452
    invoke-virtual {v5, v9, v10}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v21

    .line 453
    invoke-virtual {v5, v9, v10}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v22

    iget-object v8, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    move-object/from16 v23, v8

    .line 445
    invoke-virtual/range {v14 .. v23}, Linfo/flowersoft/theotown/drawing/Drawing;->drawQuad(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    :cond_a6
    :goto_a6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    .line 471
    :cond_a9
    iget-object v5, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v5, v2, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 474
    :cond_ae
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/TSRouteTool;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    iget-object v4, v0, Linfo/flowersoft/theotown/tools/TSRouteTool;->tmpList:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationIds(Lio/blueflower/stapel2d/util/IntList;)Lio/blueflower/stapel2d/util/IntList;

    .line 475
    iget-object v2, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v4, 0xff

    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move v2, v3

    .line 477
    :goto_bd
    iget-object v5, v0, Linfo/flowersoft/theotown/tools/TSRouteTool;->tmpList:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v5

    if-ge v2, v5, :cond_383

    .line 478
    iget-object v5, v0, Linfo/flowersoft/theotown/tools/TSRouteTool;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    iget-object v6, v0, Linfo/flowersoft/theotown/tools/TSRouteTool;->tmpList:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v6, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationById(I)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object v5

    .line 480
    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object v6

    invoke-virtual {v6}, Linfo/flowersoft/theotown/util/TileSet;->getMeanX()I

    move-result v6

    .line 481
    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object v7

    invoke-virtual {v7}, Linfo/flowersoft/theotown/util/TileSet;->getMeanY()I

    move-result v7

    .line 482
    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->isCity()Z

    move-result v8

    if-eqz v8, :cond_108

    .line 483
    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getCityX()I

    move-result v6

    iget-object v7, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v7

    add-int/lit8 v7, v7, 0x3

    const/4 v8, -0x4

    invoke-static {v6, v8, v7}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v6

    .line 484
    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getCityY()I

    move-result v7

    iget-object v9, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, 0x3

    invoke-static {v7, v8, v9}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v7

    .line 487
    :cond_108
    invoke-virtual {v1, v6, v7}, Linfo/flowersoft/theotown/city/Drawer;->setRealTile(II)V

    .line 488
    iget v6, v1, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    neg-int v6, v6

    mul-int/lit8 v6, v6, 0xc

    int-to-float v6, v6

    .line 492
    iget-object v7, v0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    const/high16 v9, -0x41000000    # -0.5f

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v11, 0x41800000    # 16.0f

    const/4 v12, 0x1

    if-eqz v7, :cond_203

    .line 493
    iget-object v7, v0, Linfo/flowersoft/theotown/tools/TSRouteTool;->tmpBuilder:Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move v13, v3

    .line 496
    :goto_122
    iget-object v14, v0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    iget-object v14, v14, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v14}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v14

    if-ge v13, v14, :cond_14f

    .line 497
    iget-object v14, v0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    iget-object v14, v14, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v14, v13}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v14

    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getId()I

    move-result v15

    if-ne v14, v15, :cond_14c

    .line 499
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_145

    .line 500
    const-string v14, ", "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_145
    add-int/lit8 v13, v13, 0x1

    .line 502
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v13, v12

    goto :goto_150

    :cond_14c
    add-int/lit8 v13, v13, 0x1

    goto :goto_122

    :cond_14f
    move v13, v3

    .line 507
    :goto_150
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-lez v14, :cond_1fe

    .line 508
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 509
    iget v14, v1, Linfo/flowersoft/theotown/city/Drawer;->x:F

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/Drawer;->getShiftX()F

    move-result v15

    add-float/2addr v15, v11

    iget v3, v1, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    mul-float/2addr v15, v3

    add-float v17, v14, v15

    .line 510
    iget v3, v1, Linfo/flowersoft/theotown/city/Drawer;->y:F

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/Drawer;->getShiftY()F

    move-result v14

    const/high16 v15, 0x41b00000    # 22.0f

    sub-float/2addr v14, v15

    iget v15, v1, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    mul-float/2addr v14, v15

    add-float/2addr v3, v14

    mul-float/2addr v15, v6

    add-float v18, v3, v15

    .line 511
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v3

    .line 512
    sget-object v14, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v14, v14, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v14, v7}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v14

    const/high16 v15, 0x41700000    # 15.0f

    add-float/2addr v14, v15

    invoke-static {v14, v3}, Ljava/lang/Math;->max(FF)F

    move-result v28

    .line 514
    iget-object v14, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v15, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v14, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 515
    iget-object v14, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v30, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    mul-float v16, v28, v9

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v16, v16, v19

    const/high16 v36, 0x3f000000    # 0.5f

    iget v8, v1, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    mul-float v16, v16, v8

    add-float v31, v17, v16

    neg-float v8, v3

    sub-float v8, v8, v19

    move/from16 v37, v9

    iget v9, v1, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    mul-float/2addr v8, v9

    add-float v32, v18, v8

    add-float v33, v28, v10

    add-float v34, v3, v10

    sget v35, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    move-object/from16 v29, v14

    invoke-virtual/range {v29 .. v35}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 521
    iget-object v8, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v9, v0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    iget-object v9, v9, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 522
    iget-object v8, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v25, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    mul-float v9, v28, v36

    iget v14, v1, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    mul-float/2addr v9, v14

    sub-float v26, v17, v9

    iget v9, v1, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    mul-float/2addr v9, v3

    sub-float v27, v18, v9

    sget v30, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    move/from16 v29, v3

    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v30}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 529
    iget-object v3, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v8, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    move-object/from16 v20, v15

    .line 530
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v15

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v8, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v22, 0x3f000000    # 0.5f

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v19, v3

    move-object/from16 v16, v7

    move-object/from16 v21, v8

    invoke-virtual/range {v15 .. v23}, Linfo/flowersoft/theotown/drawing/Drawing;->drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V

    goto :goto_208

    :cond_1fe
    move/from16 v37, v9

    const/high16 v36, 0x3f000000    # 0.5f

    goto :goto_208

    :cond_203
    move/from16 v37, v9

    const/high16 v36, 0x3f000000    # 0.5f

    const/4 v13, 0x0

    .line 541
    :goto_208
    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getNameOrUnnamed()Ljava/lang/String;

    move-result-object v15

    .line 543
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v14

    iget v3, v1, Linfo/flowersoft/theotown/city/Drawer;->x:F

    .line 545
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/Drawer;->getShiftX()F

    move-result v7

    add-float/2addr v7, v11

    iget v8, v1, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    mul-float/2addr v7, v8

    add-float v16, v3, v7

    iget v3, v1, Linfo/flowersoft/theotown/city/Drawer;->y:F

    .line 546
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/Drawer;->getShiftY()F

    move-result v7

    const/high16 v8, 0x41200000    # 10.0f

    sub-float/2addr v7, v8

    iget v8, v1, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    mul-float/2addr v7, v8

    add-float/2addr v3, v7

    mul-float/2addr v8, v6

    add-float v17, v3, v8

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    sget-object v19, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v7, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v21, 0x3f000000    # 0.5f

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v18, v3

    move-object/from16 v20, v7

    .line 543
    invoke-virtual/range {v14 .. v22}, Linfo/flowersoft/theotown/drawing/Drawing;->drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V

    .line 554
    iget-object v3, v0, Linfo/flowersoft/theotown/tools/TSRouteTool;->routesByStationId:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getId()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/badlogic/gdx/utils/IntMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2f7

    if-eqz v13, :cond_255

    .line 559
    iget-object v8, v0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_255
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 562
    :goto_257
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v9, v14, :cond_272

    .line 563
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    .line 564
    sget-object v15, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v15, v15, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v14, v14, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->name:Ljava/lang/String;

    invoke-virtual {v15, v14}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v14

    add-float/2addr v14, v10

    add-float/2addr v8, v14

    add-int/lit8 v9, v9, 0x1

    goto :goto_257

    :cond_272
    mul-float v8, v8, v37

    const/4 v9, 0x0

    .line 569
    :goto_275
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v9, v14, :cond_2dc

    .line 570
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    .line 571
    iget-object v15, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v16, -0x3ee00000    # -10.0f

    iget-object v7, v14, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v15, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 572
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v24

    iget-object v7, v14, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->name:Ljava/lang/String;

    iget v15, v1, Linfo/flowersoft/theotown/city/Drawer;->x:F

    .line 574
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/Drawer;->getShiftX()F

    move-result v17

    add-float v17, v17, v11

    add-float v17, v17, v8

    move/from16 v18, v10

    iget v10, v1, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    mul-float v17, v17, v10

    add-float v26, v15, v17

    iget v10, v1, Linfo/flowersoft/theotown/city/Drawer;->y:F

    .line 575
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/Drawer;->getShiftY()F

    move-result v15

    add-float v15, v15, v16

    move/from16 v17, v11

    iget v11, v1, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    mul-float/2addr v15, v11

    add-float/2addr v10, v15

    mul-float/2addr v11, v6

    add-float v27, v10, v11

    sget-object v10, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v10, v10, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    sget-object v29, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v11, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v25, v7

    move-object/from16 v28, v10

    move-object/from16 v30, v11

    .line 572
    invoke-virtual/range {v24 .. v32}, Linfo/flowersoft/theotown/drawing/Drawing;->drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V

    .line 580
    sget-object v7, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v7, v7, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v10, v14, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v7

    add-float v7, v7, v18

    add-float/2addr v8, v7

    add-int/lit8 v9, v9, 0x1

    move/from16 v11, v17

    move/from16 v10, v18

    goto :goto_275

    :cond_2dc
    move/from16 v17, v11

    const/high16 v16, -0x3ee00000    # -10.0f

    .line 582
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v6, v6, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lio/blueflower/stapel2d/drawing/Font;->getHeight(Ljava/lang/String;)F

    move-result v6

    add-float v7, v16, v6

    if-eqz v13, :cond_2fd

    .line 586
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v12

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2fd

    :cond_2f7
    move/from16 v17, v11

    const/high16 v16, -0x3ee00000    # -10.0f

    move/from16 v7, v16

    .line 591
    :cond_2fd
    :goto_2fd
    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getWarningMessage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_377

    .line 593
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v3, v9}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v3

    .line 594
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, v5, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v5, v9}, Lio/blueflower/stapel2d/drawing/Font;->getHeight(Ljava/lang/String;)F

    move-result v14

    .line 595
    iget-object v5, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 596
    iget-object v10, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v11, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v5, v1, Linfo/flowersoft/theotown/city/Drawer;->x:F

    .line 598
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/Drawer;->getShiftX()F

    move-result v6

    add-float v6, v6, v17

    add-float/2addr v3, v14

    mul-float v3, v3, v36

    sub-float/2addr v6, v3

    iget v8, v1, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    mul-float/2addr v6, v8

    add-float v12, v5, v6

    iget v5, v1, Linfo/flowersoft/theotown/city/Drawer;->y:F

    .line 599
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/Drawer;->getShiftY()F

    move-result v6

    add-float/2addr v6, v7

    iget v8, v1, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    mul-float/2addr v6, v8

    add-float v13, v5, v6

    sget v16, Linfo/flowersoft/theotown/resources/Resources;->ICON_ALERT:I

    move v15, v14

    .line 596
    invoke-virtual/range {v10 .. v16}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 603
    iget-object v5, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v6, 0xb4

    const/16 v8, 0xa0

    invoke-virtual {v5, v4, v6, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 604
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v8

    iget v5, v1, Linfo/flowersoft/theotown/city/Drawer;->x:F

    .line 606
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/Drawer;->getShiftX()F

    move-result v6

    add-float v6, v6, v17

    sub-float/2addr v6, v3

    add-float/2addr v6, v14

    iget v3, v1, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    mul-float/2addr v6, v3

    add-float v10, v5, v6

    iget v3, v1, Linfo/flowersoft/theotown/city/Drawer;->y:F

    .line 607
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/Drawer;->getShiftY()F

    move-result v5

    add-float/2addr v5, v7

    iget v6, v1, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    mul-float/2addr v5, v6

    add-float v11, v3, v5

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v12, v3, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    sget-object v13, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    iget-object v14, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 604
    invoke-virtual/range {v8 .. v16}, Linfo/flowersoft/theotown/drawing/Drawing;->drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V

    .line 624
    :cond_377
    iget-object v3, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    goto/16 :goto_bd

    :cond_383
    return-void
.end method

.method public drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z
    .registers 21

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p3

    move/from16 v1, p4

    .line 630
    iget-object v4, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, v2, v3, v1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v4, -0x1

    if-lt v1, v4, :cond_1a

    if-ne v1, v4, :cond_27

    .line 631
    iget v4, v5, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v4, :cond_27

    :cond_1a
    iget-object v4, v0, Linfo/flowersoft/theotown/tools/TSRouteTool;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    .line 632
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getDraft()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-result-object v4

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->isSupportedRoad(Linfo/flowersoft/theotown/city/objects/Road;)Z

    move-result v4

    if-nez v4, :cond_27

    return v7

    .line 636
    :cond_27
    invoke-super/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/BuildTool;->drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z

    .line 637
    iget-object v8, v6, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0xff

    .line 638
    invoke-virtual {v8, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    if-nez v5, :cond_34

    return v7

    .line 642
    :cond_34
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v4

    if-eqz v4, :cond_4b

    .line 643
    iget-object v9, v0, Linfo/flowersoft/theotown/tools/TSRouteTool;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getDraft()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-result-object v9

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/BusStop;->getDraft()Linfo/flowersoft/theotown/draft/BusStopDraft;

    move-result-object v10

    invoke-virtual {v9, v10}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->isBusStop(Linfo/flowersoft/theotown/draft/BusStopDraft;)Z

    move-result v9

    if-nez v9, :cond_4b

    const/4 v4, 0x0

    :cond_4b
    move-object v9, v4

    .line 647
    iget-object v4, v0, Linfo/flowersoft/theotown/tools/TSRouteTool;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getDraft()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-result-object v4

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->isSupportedRoad(Linfo/flowersoft/theotown/city/objects/Road;)Z

    move-result v4

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x0

    if-eqz v4, :cond_dd

    .line 648
    iget-object v4, v5, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 649
    iget-boolean v4, v4, Linfo/flowersoft/theotown/draft/RoadDraft;->oneWay:Z

    if-eqz v4, :cond_8c

    iget v4, v5, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v4, :cond_8c

    .line 650
    iget-object v4, v6, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v12, 0x64

    invoke-virtual {v4, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 651
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v12, v5, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    neg-int v12, v12

    mul-int/lit8 v12, v12, 0xc

    int-to-float v12, v12

    sget v13, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_ARROWS:I

    .line 652
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Road;->getFrame()I

    move-result v14

    div-int/lit8 v14, v14, 0x10

    add-int/lit8 v14, v14, 0x4

    iget v15, v6, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    sub-int/2addr v14, v15

    rem-int/lit8 v14, v14, 0x4

    add-int/2addr v13, v14

    .line 651
    invoke-virtual {v6, v4, v11, v12, v13}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 653
    iget-object v4, v6, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v4, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    :cond_8c
    move v12, v7

    move v4, v11

    .line 657
    :goto_8e
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/TSRouteTool;->allRoadRoutes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_bb

    .line 658
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/TSRouteTool;->allRoutes:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    iget-object v1, v1, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 659
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/TSRouteTool;->allRoadRoutes:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tools/TSRouteTool;->drawRouteOnRoadTile(Linfo/flowersoft/theotown/util/ManagedRoadRoute;IIFLinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/Drawer;)Z

    move-result v1

    if-eqz v1, :cond_b2

    sub-float/2addr v4, v10

    :cond_b2
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p3

    goto :goto_8e

    .line 664
    :cond_bb
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoadRoute:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    if-eqz v1, :cond_d2

    .line 665
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    iget-object v1, v1, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 666
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoadRoute:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tools/TSRouteTool;->drawRouteOnRoadTile(Linfo/flowersoft/theotown/util/ManagedRoadRoute;IIFLinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/Drawer;)Z

    goto :goto_d8

    :cond_d2
    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v6, p3

    .line 669
    :goto_d8
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_dd
    if-eqz v9, :cond_139

    .line 673
    iget v1, v5, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0xc

    .line 675
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v4

    const v9, 0x9269

    mul-int/2addr v9, v2

    int-to-long v12, v9

    add-long/2addr v4, v12

    const v9, 0x54d05

    mul-int/2addr v9, v3

    int-to-long v12, v9

    add-long/2addr v4, v12

    const-wide/16 v12, 0xfa0

    rem-long/2addr v4, v12

    long-to-float v4, v4

    const/high16 v5, 0x457a0000    # 4000.0f

    div-float/2addr v4, v5

    mul-float/2addr v4, v10

    float-to-double v4, v4

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide v9, 0x3fc99999a0000000L    # 0.20000000298023224

    mul-double/2addr v4, v9

    const-wide v9, 0x3fe99999a0000000L    # 0.800000011920929

    add-double/2addr v4, v9

    const-wide v9, 0x406fe00000000000L    # 255.0

    mul-double/2addr v4, v9

    double-to-int v4, v4

    .line 674
    invoke-virtual {v8, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 676
    iget-object v4, v0, Linfo/flowersoft/theotown/tools/BuildTool;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    iget-object v5, v0, Linfo/flowersoft/theotown/tools/BuildTool;->tempColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-interface {v4, v2, v3, v5}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->getColor(IILio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    invoke-virtual {v8, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 677
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v1, v1

    iget-object v3, v0, Linfo/flowersoft/theotown/tools/BuildTool;->TILE_HIGHLIGHT:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v3, v3, v7

    invoke-virtual {v6, v2, v11, v1, v3}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 678
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_139
    const/4 v1, 0x1

    return v1
.end method

.method public final drawRouteOnRoadTile(Linfo/flowersoft/theotown/util/ManagedRoadRoute;IIFLinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/Drawer;)Z
    .registers 9

    .line 685
    iget v0, p5, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    const/4 v1, -0x1

    invoke-virtual {p1, p2, p3, v0, v1}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->getAlignmentOrDefault(IIII)I

    move-result p1

    if-ne p1, v1, :cond_b

    const/4 p1, 0x0

    return p1

    .line 690
    :cond_b
    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result p2

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result p1

    .line 692
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->ROUTE_FRAMES:[I

    array-length p3, p2

    rem-int/2addr p1, p3

    aget p1, p2, p1

    .line 693
    iget p2, p5, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    iget p3, p5, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    sub-int p3, p2, p3

    .line 694
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 p3, 0x0

    .line 695
    invoke-virtual {p6, p3, p4}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 697
    iget v0, p5, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz v0, :cond_4b

    iget v1, p5, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-gez v1, :cond_3a

    iget v1, p6, Linfo/flowersoft/theotown/city/Drawer;->upDirs:I

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_4b

    .line 704
    :cond_3a
    iget p5, p5, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    invoke-static {p5}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result v0

    or-int/2addr p5, v0

    invoke-static {p5}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result p5

    .line 705
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-static {p6, v0, p2, p5, p1}, Linfo/flowersoft/theotown/city/objects/Ground;->drawFrameOnCustomSlope(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;III)V

    goto :goto_54

    .line 698
    :cond_4b
    :goto_4b
    sget-object p5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    mul-int/lit8 p2, p2, 0xc

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p6, p5, p3, p2, p1}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :goto_54
    neg-float p1, p4

    .line 707
    invoke-virtual {p6, p3, p1}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    const/4 p1, 0x1

    return p1
.end method

.method public ensureValidPosition()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final focusStation(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 285
    :cond_3
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/TileSet;->getMeanX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/TileSet;->getMeanY()I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Linfo/flowersoft/theotown/city/City;->focus(FFF)V

    return-void
.end method

.method public getIcon()I
    .registers 2

    .line 863
    iget v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->icon:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 335
    const-string v0, "TSRoute"

    return-object v0
.end method

.method public getMiniatureColor(Lio/blueflower/stapel2d/drawing/Color;Linfo/flowersoft/theotown/city/Tiles;IIIZ)V
    .registers 14

    .line 374
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v0, p3, p4}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationByXY(II)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object v0

    if-eqz v0, :cond_e

    const/16 p2, 0xff

    .line 376
    invoke-virtual {p1, p2, p2, p2}, Lio/blueflower/stapel2d/drawing/Color;->setTo(III)Lio/blueflower/stapel2d/drawing/Color;

    return-void

    .line 380
    :cond_e
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    if-eqz v0, :cond_22

    .line 381
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoadRoute:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    invoke-virtual {v0, p3, p4}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 382
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    iget-object p2, p2, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Color;->setTo(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    return-void

    .line 387
    :cond_22
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    if-nez v0, :cond_80

    .line 389
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->tempList:Lio/blueflower/stapel2d/util/IntList;

    .line 390
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    const/4 v1, 0x0

    move v2, v1

    .line 391
    :goto_2d
    iget-object v3, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->allRoutes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_49

    .line 392
    iget-object v3, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->allRoadRoutes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    invoke-virtual {v3, p3, p4}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 393
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 397
    :cond_49
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_80

    .line 398
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p2

    const/4 p5, 0x1

    if-ne p2, p5, :cond_68

    .line 399
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->allRoutes:Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    iget-object p2, p2, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Color;->setTo(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    return-void

    :cond_68
    add-int/2addr p3, p4

    .line 403
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p2

    rem-int/2addr p3, p2

    .line 404
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->allRoutes:Ljava/util/List;

    invoke-virtual {v0, p3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    iget-object p2, p2, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Color;->setTo(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    return-void

    :cond_80
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 410
    invoke-super/range {v0 .. v6}, Linfo/flowersoft/theotown/tools/BuildTool;->getMiniatureColor(Lio/blueflower/stapel2d/drawing/Color;Linfo/flowersoft/theotown/city/Tiles;IIIZ)V

    .line 411
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x14

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Color;->setRed(I)V

    .line 412
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x14

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Color;->setGreen(I)V

    .line 413
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x14

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Color;->setBlue(I)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .line 846
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    if-eqz v0, :cond_27

    .line 848
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 849
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x50d

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->name:Ljava/lang/String;

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    iget-object v2, v2, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    .line 851
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 848
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 854
    :cond_27
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 855
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xa8e

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->name:Ljava/lang/String;

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->allRoutes:Ljava/util/List;

    .line 857
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 854
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStationArea(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)Linfo/flowersoft/theotown/city/MapArea;
    .registers 10

    .line 712
    new-instance v0, Linfo/flowersoft/theotown/city/MapArea;

    invoke-direct {v0}, Linfo/flowersoft/theotown/city/MapArea;-><init>()V

    if-eqz p1, :cond_70

    .line 715
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getSpawnBuildings()Ljava/util/List;

    move-result-object v1

    .line 716
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getBusStops()Ljava/util/List;

    move-result-object v2

    .line 717
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getRoads()Ljava/util/List;

    move-result-object p1

    const/4 v3, 0x0

    move v4, v3

    .line 719
    :goto_15
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_28

    .line 720
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/city/objects/Building;

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Linfo/flowersoft/theotown/city/MapArea;->add(Linfo/flowersoft/theotown/city/objects/Building;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_28
    move v1, v3

    .line 723
    :goto_29
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_58

    .line 724
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/city/objects/BusStop;

    .line 725
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v5

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result v6

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/BusStop;->getY()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v5

    iget v6, v4, Linfo/flowersoft/theotown/city/objects/BusStop;->level:I

    add-int/2addr v5, v6

    .line 726
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result v6

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/BusStop;->getY()I

    move-result v4

    invoke-virtual {v0, v6, v4, v5}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 729
    :cond_58
    :goto_58
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_70

    .line 730
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/Road;

    .line 731
    iget v2, v1, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    iget v4, v1, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    iget v1, v1, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    invoke-virtual {v0, v2, v4, v1}, Linfo/flowersoft/theotown/city/MapArea;->add(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    :cond_70
    return-object v0
.end method

.method public onClick(IIFFII)V
    .registers 7

    .line 745
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    if-nez p3, :cond_1e

    .line 746
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->clickCallback:Lio/blueflower/stapel2d/util/Setter;

    if-eqz p3, :cond_a9

    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p3

    if-eqz p3, :cond_a9

    .line 747
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->clickCallback:Lio/blueflower/stapel2d/util/Setter;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/PackedInt2;->pack(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 752
    :cond_1e
    iget-boolean p3, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->readonly:Z

    if-eqz p3, :cond_24

    goto/16 :goto_a9

    .line 753
    :cond_24
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoadRoute:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->isBusy()Z

    move-result p3

    if-eqz p3, :cond_2e

    goto/16 :goto_a9

    .line 756
    :cond_2e
    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p3

    if-nez p3, :cond_82

    .line 757
    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/City;->getNeighborIndex(II)I

    move-result p1

    if-gez p1, :cond_3f

    goto :goto_a9

    .line 762
    :cond_3f
    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/city/City;->getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object p1

    if-eqz p1, :cond_a9

    .line 763
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->isCreated()Z

    move-result p2

    if-eqz p2, :cond_a9

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->isDirect()Z

    move-result p2

    if-nez p2, :cond_54

    goto :goto_a9

    .line 767
    :cond_54
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStations()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    .line 768
    :goto_5b
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_a9

    .line 769
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    .line 770
    invoke-virtual {p4}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->isCity()Z

    move-result p5

    if-eqz p5, :cond_7f

    invoke-virtual {p4}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getCityX()I

    move-result p5

    invoke-virtual {p4}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getCityY()I

    move-result p6

    invoke-virtual {p1, p5, p6}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->contains(II)Z

    move-result p5

    if-eqz p5, :cond_7f

    .line 771
    invoke-virtual {p0, p4}, Linfo/flowersoft/theotown/tools/TSRouteTool;->addOrRemoveStation(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)V

    return-void

    :cond_7f
    add-int/lit8 p3, p3, 0x1

    goto :goto_5b

    .line 779
    :cond_82
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationByXY(II)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object p3

    if-nez p3, :cond_a4

    const/4 p4, 0x1

    :goto_8b
    const/16 p5, 0x8

    if-gt p4, p5, :cond_a4

    if-nez p3, :cond_a4

    .line 784
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    .line 785
    invoke-static {p4}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result p5

    add-int/2addr p5, p1

    .line 786
    invoke-static {p4}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result p6

    add-int/2addr p6, p2

    .line 784
    invoke-virtual {p3, p5, p6}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationByXY(II)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object p3

    mul-int/lit8 p4, p4, 0x2

    goto :goto_8b

    :cond_a4
    if-eqz p3, :cond_a9

    .line 791
    invoke-virtual {p0, p3}, Linfo/flowersoft/theotown/tools/TSRouteTool;->addOrRemoveStation(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)V

    :cond_a9
    :goto_a9
    return-void
.end method

.method public final removeLastStation()V
    .registers 3

    .line 828
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    iget-object v0, v0, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->removeLast(I)I

    .line 829
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoadRoute:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->removeLastStation()V

    return-void
.end method

.method public final tryAddStation(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)V
    .registers 5

    .line 813
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoadRoute:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/TSRouteTool;->getStationArea(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)Linfo/flowersoft/theotown/city/MapArea;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/tools/TSRouteTool$5;

    invoke-direct {v2, p0, p1}, Linfo/flowersoft/theotown/tools/TSRouteTool$5;-><init>(Linfo/flowersoft/theotown/tools/TSRouteTool;Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)V

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->tryAddStation(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/util/ManagedRoadRoute$IRouteCallback;)V

    return-void
.end method

.method public update()V
    .registers 3

    .line 834
    invoke-super {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->update()V

    .line 836
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->editingRoadRoute:Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    if-eqz v0, :cond_a

    .line 837
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->update()V

    :cond_a
    const/4 v0, 0x0

    .line 839
    :goto_b
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->allRoadRoutes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 840
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool;->allRoadRoutes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->update()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_21
    return-void
.end method

###### Class info.flowersoft.theotown.tools.TSRouteTool.AnonymousClass1 (info.flowersoft.theotown.tools.TSRouteTool$1)
.class public Linfo/flowersoft/theotown/tools/TSRouteTool$1;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "TSRouteTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/TSRouteTool;-><init>(Linfo/flowersoft/theotown/city/City;ILinfo/flowersoft/theotown/components/transportationsystem/TSSystem;Linfo/flowersoft/theotown/tools/TSRouteTool$Route;Ljava/util/List;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;

.field public final synthetic val$system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/TSRouteTool;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Linfo/flowersoft/theotown/city/City;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 173
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$1;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    iput-object p2, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$1;->val$system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    iput-object p3, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$1;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 176
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_BACKWARD:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 181
    const-string v0, "cmdRouteRemoveLast"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 200
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$1;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xcfd

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .registers 2

    .line 195
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$1;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/TSRouteTool;->access$400(Linfo/flowersoft/theotown/tools/TSRouteTool;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$1;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/TSRouteTool;->access$200(Linfo/flowersoft/theotown/tools/TSRouteTool;)Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$1;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/TSRouteTool;->access$200(Linfo/flowersoft/theotown/tools/TSRouteTool;)Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    return v0

    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 5

    .line 186
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$1;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/TSRouteTool;->access$000(Linfo/flowersoft/theotown/tools/TSRouteTool;)Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->isBusy()Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$1;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/TSRouteTool;->access$000(Linfo/flowersoft/theotown/tools/TSRouteTool;)Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->stationCount()I

    move-result v0

    if-nez v0, :cond_19

    goto :goto_42

    .line 187
    :cond_19
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$1;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/TSRouteTool;->access$100(Linfo/flowersoft/theotown/tools/TSRouteTool;)V

    .line 188
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$1;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/TSRouteTool;->access$200(Linfo/flowersoft/theotown/tools/TSRouteTool;)Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    .line 189
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$1;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$1;->val$system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/TSRouteTool;->access$200(Linfo/flowersoft/theotown/tools/TSRouteTool;)Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    move-result-object v2

    iget-object v2, v2, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/IntList;->last(I)I

    move-result v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationById(I)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/tools/TSRouteTool;->access$300(Linfo/flowersoft/theotown/tools/TSRouteTool;Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)V

    :cond_42
    :goto_42
    return-void
.end method

###### Class info.flowersoft.theotown.tools.TSRouteTool.AnonymousClass2 (info.flowersoft.theotown.tools.TSRouteTool$2)
.class public Linfo/flowersoft/theotown/tools/TSRouteTool$2;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "TSRouteTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/TSRouteTool;-><init>(Linfo/flowersoft/theotown/city/City;ILinfo/flowersoft/theotown/components/transportationsystem/TSSystem;Linfo/flowersoft/theotown/tools/TSRouteTool$Route;Ljava/util/List;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;

.field public final synthetic val$system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/TSRouteTool;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Linfo/flowersoft/theotown/city/City;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 204
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$2;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    iput-object p2, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$2;->val$system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    iput-object p3, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$2;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 207
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_RANDOM:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 212
    const-string v0, "cmdRandomStation"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 230
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$2;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x823

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .registers 3

    .line 223
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$2;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/TSRouteTool;->access$400(Linfo/flowersoft/theotown/tools/TSRouteTool;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$2;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/TSRouteTool;->access$200(Linfo/flowersoft/theotown/tools/TSRouteTool;)Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$2;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    .line 224
    invoke-static {v0}, Linfo/flowersoft/theotown/tools/TSRouteTool;->access$200(Linfo/flowersoft/theotown/tools/TSRouteTool;)Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$2;->val$system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$2;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    .line 225
    invoke-static {v0}, Linfo/flowersoft/theotown/tools/TSRouteTool;->access$000(Linfo/flowersoft/theotown/tools/TSRouteTool;)Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->isBusy()Z

    move-result v0

    if-nez v0, :cond_36

    const/4 v0, 0x1

    return v0

    :cond_36
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 217
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$2;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/TSRouteTool;->access$500(Linfo/flowersoft/theotown/tools/TSRouteTool;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.TSRouteTool.AnonymousClass3 (info.flowersoft.theotown.tools.TSRouteTool$3)
.class public Linfo/flowersoft/theotown/tools/TSRouteTool$3;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "TSRouteTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/TSRouteTool;-><init>(Linfo/flowersoft/theotown/city/City;ILinfo/flowersoft/theotown/components/transportationsystem/TSSystem;Linfo/flowersoft/theotown/tools/TSRouteTool$Route;Ljava/util/List;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;

.field public final synthetic val$stationCallback:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/TSRouteTool;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 234
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$3;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    iput-object p2, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$3;->val$city:Linfo/flowersoft/theotown/city/City;

    iput-object p3, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$3;->val$stationCallback:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 237
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 242
    const-string v0, "cmdRouteOk"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 258
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$3;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x17b

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .registers 3

    .line 253
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$3;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/TSRouteTool;->access$400(Linfo/flowersoft/theotown/tools/TSRouteTool;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$3;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/TSRouteTool;->access$200(Linfo/flowersoft/theotown/tools/TSRouteTool;)Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$3;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/TSRouteTool;->access$200(Linfo/flowersoft/theotown/tools/TSRouteTool;)Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_21

    const/4 v0, 0x1

    return v0

    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 247
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$3;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 248
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$3;->val$stationCallback:Lio/blueflower/stapel2d/util/Setter;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$3;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    invoke-static {v1}, Linfo/flowersoft/theotown/tools/TSRouteTool;->access$200(Linfo/flowersoft/theotown/tools/TSRouteTool;)Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.TSRouteTool.AnonymousClass4 (info.flowersoft.theotown.tools.TSRouteTool$4)
.class public Linfo/flowersoft/theotown/tools/TSRouteTool$4;
.super Linfo/flowersoft/theotown/tools/marker/TSRouteMarker;
.source "TSRouteTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/TSRouteTool;-><init>(Linfo/flowersoft/theotown/city/City;ILinfo/flowersoft/theotown/components/transportationsystem/TSSystem;Linfo/flowersoft/theotown/tools/TSRouteTool$Route;Ljava/util/List;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/TSRouteTool;Linfo/flowersoft/theotown/tools/TSRouteTool$Route;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 275
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$4;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    invoke-direct {p0, p2, p3, p4, p5}, Linfo/flowersoft/theotown/tools/marker/TSRouteMarker;-><init>(Linfo/flowersoft/theotown/tools/TSRouteTool$Route;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public isStationConnected(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)Z
    .registers 3

    .line 278
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$4;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/tools/TSRouteTool;->access$600(Linfo/flowersoft/theotown/tools/TSRouteTool;Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.tools.TSRouteTool.AnonymousClass5 (info.flowersoft.theotown.tools.TSRouteTool$5)
.class public Linfo/flowersoft/theotown/tools/TSRouteTool$5;
.super Ljava/lang/Object;
.source "TSRouteTool.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/ManagedRoadRoute$IRouteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/TSRouteTool;->tryAddStation(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

.field public final synthetic val$station:Linfo/flowersoft/theotown/components/transportationsystem/TSStation;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/TSRouteTool;Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 813
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$5;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    iput-object p2, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$5;->val$station:Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Linfo/flowersoft/theotown/city/MapArea;)V
    .registers 3

    .line 822
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    const-string v0, "Could not find a suitable connection"

    invoke-interface {p1, v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/objects/Way;Lcom/badlogic/gdx/utils/IntIntMap;)V
    .registers 5

    .line 816
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$5;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/TSRouteTool;->access$000(Linfo/flowersoft/theotown/tools/TSRouteTool;)Linfo/flowersoft/theotown/util/ManagedRoadRoute;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/util/ManagedRoadRoute;->addCalculatedStation(Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/objects/Way;Lcom/badlogic/gdx/utils/IntIntMap;)V

    .line 817
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$5;->this$0:Linfo/flowersoft/theotown/tools/TSRouteTool;

    invoke-static {p1}, Linfo/flowersoft/theotown/tools/TSRouteTool;->access$200(Linfo/flowersoft/theotown/tools/TSRouteTool;)Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    move-result-object p1

    iget-object p1, p1, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    iget-object p2, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$5;->val$station:Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.TSRouteTool.Route (info.flowersoft.theotown.tools.TSRouteTool$Route)
.class public Linfo/flowersoft/theotown/tools/TSRouteTool$Route;
.super Ljava/lang/Object;
.source "TSRouteTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/tools/TSRouteTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Route"
.end annotation


# instance fields
.field public color:Lio/blueflower/stapel2d/drawing/Color;

.field public name:Ljava/lang/String;

.field public stationIds:Lio/blueflower/stapel2d/util/IntList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/util/IntList;)V
    .registers 4

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->name:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 75
    iput-object p3, p0, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    return-void
.end method
