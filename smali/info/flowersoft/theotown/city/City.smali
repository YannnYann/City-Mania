###### Class info.flowersoft.theotown.city.City (info.flowersoft.theotown.city.City)
.class public final Linfo/flowersoft/theotown/city/City;
.super Ljava/lang/Object;
.source "City.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/city/City$ScreenToTileData;
    }
.end annotation


# static fields
.field public static DRAWSPACE_BOTTOM:I = -0x400

.field public static final xyOffsets:[I


# instance fields
.field public CLICK_EARLY_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

.field public CLICK_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

.field public DRAW_CITY_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

.field public NEXT_DAY_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

.field public NEXT_MONTH_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

.field public NEXT_YEAR_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

.field public final TRANSPARENCY_NEIGHBOR:I

.field public final TRANSPARENCY_NEIGHBOR_ROTATED:I

.field public allowPlugins:Z

.field public author:Ljava/lang/String;

.field public authorId:J

.field public authorName:Ljava/lang/String;

.field public backgroundDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final buildings:Linfo/flowersoft/theotown/city/BuildingList;

.field public final busStops:Linfo/flowersoft/theotown/city/BusStopList;

.field public cityInfo:Linfo/flowersoft/theotown/city/CityInfo;

.field public final components:[Linfo/flowersoft/theotown/city/components/CityComponent;

.field public controller:Linfo/flowersoft/theotown/city/CityController;

.field public final currentXp:Linfo/flowersoft/theotown/util/SpecialInt;

.field public final dateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/components/DateListener;",
            ">;"
        }
    .end annotation
.end field

.field public defaultTool:Linfo/flowersoft/theotown/city/components/Tool;

.field public dirtyUI:Z

.field public disposed:Z

.field public final distance:Linfo/flowersoft/theotown/util/Distance;

.field public drawArrayCounter:I

.field public drawArrayEnd:I

.field public drawArrayFrame:I

.field public drawArrayOffsetX:F

.field public drawArrayOffsetY:F

.field public drawArrayStart:I

.field public drawCounter:I

.field public final drawer:Linfo/flowersoft/theotown/city/Drawer;

.field public final height:I

.field public id:Ljava/lang/String;

.field public final iso:Linfo/flowersoft/theotown/city/IsoConverter;

.field public lastRealDaytimeResult:F

.field public lastRealDaytimeTime:J

.field public lastSimulationTimestamp:J

.field public leftSideTraffic:Z

.field public final lod:Linfo/flowersoft/theotown/city/components/LODController;

.field public luaStorage:Lvm2/LuaTable;

.field public luaStorageProxy:Lvm2/LuaTable;

.field public final luaStrConstantDaytime:Lvm2/LuaValue;

.field public final luaStrDayLength:Lvm2/LuaValue;

.field public final luaStrDaytime:Lvm2/LuaValue;

.field public final luaStrDaytimeDay:Lvm2/LuaValue;

.field public final luaStrDaytimeEnabled:Lvm2/LuaValue;

.field public final luaStrDaytimeShadingColor:Lvm2/LuaValue;

.field public final luaStrOriginalDayLength:Lvm2/LuaValue;

.field public final luaStrTheoTown:Lvm2/LuaValue;

.field public mode:Linfo/flowersoft/theotown/city/GameMode;

.field public name:Ljava/lang/String;

.field public final neighbors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/neighbors/NeighborCity;",
            ">;"
        }
    .end annotation
.end field

.field public noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

.field public final oceanAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final oceanSparkleAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public online:Z

.field public originalDaytime:F

.field public final pipes:Linfo/flowersoft/theotown/city/PipeList;

.field public final rails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Rail;",
            ">;"
        }
    .end annotation
.end field

.field public rank:Linfo/flowersoft/theotown/draft/RankDraft;

.field public rankUpgradeAbsDay:J

.field public readonly:Z

.field public final roads:Linfo/flowersoft/theotown/city/RoadList;

.field public rotation:I

.field public scenarioDraft:Linfo/flowersoft/theotown/draft/ScenarioDraft;

.field public scenarioInfo:Linfo/flowersoft/theotown/city/ScenarioInfo;

.field public seed:Ljava/lang/String;

.field public final shadingColor:Lio/blueflower/stapel2d/drawing/Color;

.field public targetScale:F

.field public final targetXp:Linfo/flowersoft/theotown/util/SpecialInt;

.field public final tempInts:Lio/blueflower/stapel2d/util/IntList;

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;

.field public final transitionVars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final translator:Lio/blueflower/stapel2d/gamestack/Translator;

.field public uber:Z

.field public view:Lio/blueflower/stapel2d/util/ScreenRect;

.field public waterTiles:I

.field public final width:I

.field public final wires:Linfo/flowersoft/theotown/city/WireList;

.field public final zoneCounter:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    .line 1375
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Linfo/flowersoft/theotown/city/City;->xyOffsets:[I

    return-void

    :array_a
    .array-data 4
        0x0
        0x0
        0x1
        0x0
        0x1
        0x1
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(IILinfo/flowersoft/theotown/city/GameMode;Lio/blueflower/stapel2d/gamestack/Translator;)V
    .registers 11

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    .line 75
    iput v0, p0, Linfo/flowersoft/theotown/city/City;->TRANSPARENCY_NEIGHBOR:I

    const/16 v0, 0x1e

    .line 76
    iput v0, p0, Linfo/flowersoft/theotown/city/City;->TRANSPARENCY_NEIGHBOR_ROTATED:I

    .line 85
    const-string v0, "TheoTown"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->luaStrTheoTown:Lvm2/LuaValue;

    .line 86
    const-string v0, "getDayLength"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->luaStrDayLength:Lvm2/LuaValue;

    .line 87
    const-string v0, "getOriginalDayLength"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->luaStrOriginalDayLength:Lvm2/LuaValue;

    .line 88
    const-string v0, "getDaytimeShadingColor"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->luaStrDaytimeShadingColor:Lvm2/LuaValue;

    .line 89
    const-string v0, "isDynamicDaytimeEnabled"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->luaStrDaytimeEnabled:Lvm2/LuaValue;

    .line 90
    const-string v0, "getConstantDaytime"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->luaStrConstantDaytime:Lvm2/LuaValue;

    .line 91
    const-string v0, "daytime"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->luaStrDaytime:Lvm2/LuaValue;

    .line 92
    const-string v0, "daytimeDay"

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->luaStrDaytimeDay:Lvm2/LuaValue;

    .line 101
    const-string v0, "$anim_ocean00"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->oceanAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 102
    const-string v0, "$anim_ocean01"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->oceanSparkleAnimation:Linfo/flowersoft/theotown/draft/AnimationDraft;

    const/4 v0, 0x1

    .line 124
    iput v0, p0, Linfo/flowersoft/theotown/city/City;->drawCounter:I

    .line 125
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_77

    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/RankDraft;

    goto :goto_78

    :cond_77
    move-object v1, v2

    :goto_78
    iput-object v1, p0, Linfo/flowersoft/theotown/city/City;->rank:Linfo/flowersoft/theotown/draft/RankDraft;

    const-wide/16 v4, 0x0

    .line 126
    iput-wide v4, p0, Linfo/flowersoft/theotown/city/City;->rankUpgradeAbsDay:J

    .line 130
    new-instance v1, Linfo/flowersoft/theotown/city/CityInfo;

    invoke-direct {v1}, Linfo/flowersoft/theotown/city/CityInfo;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/city/City;->cityInfo:Linfo/flowersoft/theotown/city/CityInfo;

    .line 140
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/city/City;->transitionVars:Ljava/util/Map;

    .line 145
    new-instance v1, Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/SpecialInt;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/city/City;->targetXp:Linfo/flowersoft/theotown/util/SpecialInt;

    .line 146
    new-instance v1, Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/SpecialInt;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/city/City;->currentXp:Linfo/flowersoft/theotown/util/SpecialInt;

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/city/City;->dateListeners:Ljava/util/List;

    .line 153
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->ZONES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Linfo/flowersoft/theotown/city/City;->zoneCounter:[I

    .line 155
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/city/City;->luaStorage:Lvm2/LuaTable;

    .line 156
    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/LuaUtil;->getProxy(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/city/City;->luaStorageProxy:Lvm2/LuaTable;

    .line 158
    iput-boolean v3, p0, Linfo/flowersoft/theotown/city/City;->disposed:Z

    .line 161
    new-instance v1, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, v3, v3, v3}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    iput-object v1, p0, Linfo/flowersoft/theotown/city/City;->shadingColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 170
    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/City;->allowPlugins:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 172
    iput v0, p0, Linfo/flowersoft/theotown/city/City;->targetScale:F

    .line 177
    iput-boolean v3, p0, Linfo/flowersoft/theotown/city/City;->dirtyUI:Z

    .line 192
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->tempInts:Lio/blueflower/stapel2d/util/IntList;

    const/4 v0, 0x0

    .line 723
    iput v0, p0, Linfo/flowersoft/theotown/city/City;->lastRealDaytimeResult:F

    .line 724
    iput-wide v4, p0, Linfo/flowersoft/theotown/city/City;->lastRealDaytimeTime:J

    .line 195
    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->TEST:Linfo/flowersoft/theotown/city/GameMode;

    if-eq p3, v1, :cond_db

    .line 196
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/city/City;->setBackground(Linfo/flowersoft/theotown/draft/AnimationDraft;)V

    .line 199
    :cond_db
    iput-object p3, p0, Linfo/flowersoft/theotown/city/City;->mode:Linfo/flowersoft/theotown/city/GameMode;

    .line 200
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->assignHandlers()V

    .line 202
    iput p1, p0, Linfo/flowersoft/theotown/city/City;->width:I

    .line 203
    iput p2, p0, Linfo/flowersoft/theotown/city/City;->height:I

    .line 204
    new-instance p3, Linfo/flowersoft/theotown/city/Tiles;

    invoke-direct {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;-><init>(II)V

    iput-object p3, p0, Linfo/flowersoft/theotown/city/City;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 205
    iput-object p4, p0, Linfo/flowersoft/theotown/city/City;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 206
    iput v3, p0, Linfo/flowersoft/theotown/city/City;->rotation:I

    .line 208
    new-instance p1, Linfo/flowersoft/theotown/city/Drawer;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/city/Drawer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    .line 209
    new-instance p1, Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-direct {p1}, Linfo/flowersoft/theotown/city/IsoConverter;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    .line 210
    new-instance p1, Linfo/flowersoft/theotown/util/ManhattenDistance;

    invoke-direct {p1}, Linfo/flowersoft/theotown/util/ManhattenDistance;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->distance:Linfo/flowersoft/theotown/util/Distance;

    .line 211
    new-instance p1, Linfo/flowersoft/theotown/city/components/LODController;

    invoke-direct {p1}, Linfo/flowersoft/theotown/city/components/LODController;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->lod:Linfo/flowersoft/theotown/city/components/LODController;

    .line 213
    new-instance p1, Linfo/flowersoft/theotown/city/BuildingList;

    invoke-direct {p1}, Linfo/flowersoft/theotown/city/BuildingList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->buildings:Linfo/flowersoft/theotown/city/BuildingList;

    .line 214
    new-instance p1, Linfo/flowersoft/theotown/city/RoadList;

    invoke-direct {p1}, Linfo/flowersoft/theotown/city/RoadList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->roads:Linfo/flowersoft/theotown/city/RoadList;

    .line 215
    new-instance p1, Linfo/flowersoft/theotown/city/BusStopList;

    invoke-direct {p1}, Linfo/flowersoft/theotown/city/BusStopList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->busStops:Linfo/flowersoft/theotown/city/BusStopList;

    .line 216
    new-instance p1, Linfo/flowersoft/theotown/city/WireList;

    invoke-direct {p1}, Linfo/flowersoft/theotown/city/WireList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->wires:Linfo/flowersoft/theotown/city/WireList;

    .line 217
    new-instance p1, Linfo/flowersoft/theotown/city/PipeList;

    invoke-direct {p1}, Linfo/flowersoft/theotown/city/PipeList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->pipes:Linfo/flowersoft/theotown/city/PipeList;

    .line 218
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->rails:Ljava/util/List;

    .line 219
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->neighbors:Ljava/util/List;

    .line 221
    sget-object p1, Linfo/flowersoft/theotown/city/components/ComponentType;->values:[I

    array-length p1, p1

    new-array p1, p1, [Linfo/flowersoft/theotown/city/components/CityComponent;

    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->components:[Linfo/flowersoft/theotown/city/components/CityComponent;

    .line 223
    new-instance p1, Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-direct {p1, v0, v0, v0, v0}, Lio/blueflower/stapel2d/util/ScreenRect;-><init>(FFFF)V

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/City;->setView(Lio/blueflower/stapel2d/util/ScreenRect;)V

    return-void
.end method

.method public static getMaxScale()F
    .registers 1

    .line 0
    const/high16 v0, 0x41000000    # 8.0f

    return v0
.end method

.method public static getMinScale()F
    .registers 1

    .line 281
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->maxZoomOut:Z

    if-eqz v0, :cond_7

    const/high16 v0, 0x3e000000    # 0.125f

    return v0

    :cond_7
    const/high16 v0, 0x3e800000    # 0.25f

    return v0
.end method


# virtual methods
.method public addDateListener(Linfo/flowersoft/theotown/city/components/DateListener;)V
    .registers 3

    .line 485
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->dateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNeighbor(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;)V
    .registers 3

    .line 442
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->neighbors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V
    .registers 4

    .line 526
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->components:[Linfo/flowersoft/theotown/city/components/CityComponent;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->getType()I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_d

    .line 529
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/CityComponent;->unbind()V

    .line 532
    :cond_d
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->components:[Linfo/flowersoft/theotown/city/components/CityComponent;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->getType()I

    move-result v1

    aput-object p1, v0, v1

    .line 533
    invoke-virtual {p1, p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->bind(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

.method public assignHandlers()V
    .registers 4

    .line 227
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->mode:Linfo/flowersoft/theotown/city/GameMode;

    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->TEST:Linfo/flowersoft/theotown/city/GameMode;

    if-eq v0, v1, :cond_51

    .line 228
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "earlyTap"

    const-class v2, Linfo/flowersoft/theotown/draft/Draft;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->CLICK_EARLY_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

    .line 229
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "tap"

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->CLICK_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

    .line 230
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "nextDay"

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->NEXT_DAY_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

    .line 231
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "nextMonth"

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->NEXT_MONTH_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

    .line 232
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "nextYear"

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->NEXT_YEAR_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

    .line 233
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "drawCity"

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->DRAW_CITY_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

    return-void

    :cond_51
    const/4 v0, 0x0

    .line 235
    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->CLICK_EARLY_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

    .line 236
    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->CLICK_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

    .line 237
    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->NEXT_DAY_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

    .line 238
    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->NEXT_MONTH_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

    .line 239
    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->NEXT_YEAR_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

    .line 240
    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->DRAW_CITY_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

    return-void
.end method

.method public canAchieve()Z
    .registers 5

    .line 328
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    if-nez v0, :cond_22

    .line 329
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getInstance()Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    move-result-object v0

    const-string v1, "!_dsalocaloppluginsdetected"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->get(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    const/4 v0, 0x1

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public canZoomIn()Z
    .registers 4

    .line 1663
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v0

    invoke-static {}, Linfo/flowersoft/theotown/city/City;->getMaxScale()F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public canZoomOut()Z
    .registers 4

    .line 1667
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v0

    invoke-static {}, Linfo/flowersoft/theotown/city/City;->getMinScale()F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public clearDateListeners()V
    .registers 2

    .line 481
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->dateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearNeighbors()V
    .registers 2

    .line 438
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->neighbors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public closeOrCancelTool()V
    .registers 2

    const/16 v0, 0xd

    .line 1532
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Tool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Tool;->close()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1533
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    :cond_15
    return-void
.end method

.method public countNeighbors()I
    .registers 2

    .line 450
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->neighbors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public dispose()V
    .registers 5

    const/4 v0, 0x1

    .line 1561
    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/City;->disposed:Z

    .line 1562
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->components:[Linfo/flowersoft/theotown/city/components/CityComponent;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    .line 1563
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/CityComponent;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1565
    :cond_11
    invoke-static {}, Lio/blueflower/stapel2d/util/CyclicWorker;->dispose()V

    return-void
.end method

.method public declared-synchronized draw(Lio/blueflower/stapel2d/drawing/Engine;Z)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 732
    :try_start_5
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 733
    const-class v3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->setCity(Linfo/flowersoft/theotown/city/City;)V

    const/4 v13, 0x1

    .line 736
    invoke-virtual {v1, v13}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/DefaultDate;

    .line 737
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getGlobals()Lvm2/Globals;

    move-result-object v4

    iget-object v5, v1, Linfo/flowersoft/theotown/city/City;->luaStrTheoTown:Lvm2/LuaValue;

    invoke-virtual {v4, v5}, Lvm2/LuaTable;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v4

    .line 738
    iget-object v5, v1, Linfo/flowersoft/theotown/city/City;->luaStrDayLength:Lvm2/LuaValue;

    invoke-virtual {v4, v5}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object v5

    .line 739
    iget-object v6, v1, Linfo/flowersoft/theotown/city/City;->luaStrOriginalDayLength:Lvm2/LuaValue;

    invoke-virtual {v4, v6}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v6

    invoke-virtual {v6}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object v6

    .line 740
    iget-object v7, v1, Linfo/flowersoft/theotown/city/City;->luaStrDaytimeShadingColor:Lvm2/LuaValue;

    invoke-virtual {v4, v7}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v7

    invoke-virtual {v7}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object v7

    .line 741
    iget-object v8, v1, Linfo/flowersoft/theotown/city/City;->luaStrDaytimeEnabled:Lvm2/LuaValue;

    invoke-virtual {v4, v8}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v8

    invoke-virtual {v8}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object v8

    .line 742
    iget-object v9, v1, Linfo/flowersoft/theotown/city/City;->luaStrConstantDaytime:Lvm2/LuaValue;

    invoke-virtual {v4, v9}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v9

    invoke-virtual {v9}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object v9

    .line 744
    invoke-virtual {v8}, Lvm2/LuaValue;->call()Lvm2/LuaValue;

    move-result-object v8

    const/4 v14, 0x0

    invoke-virtual {v8, v14}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v8

    .line 745
    invoke-virtual {v5}, Lvm2/LuaValue;->call()Lvm2/LuaValue;

    move-result-object v5

    const/16 v10, 0x3c

    invoke-virtual {v5, v10}, Lvm2/LuaValue;->optint(I)I

    move-result v5

    .line 746
    invoke-virtual {v6}, Lvm2/LuaValue;->call()Lvm2/LuaValue;

    move-result-object v6

    invoke-virtual {v6, v10}, Lvm2/LuaValue;->optint(I)I

    move-result v6

    .line 747
    invoke-virtual {v9}, Lvm2/LuaValue;->call()Lvm2/LuaValue;

    move-result-object v9

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v9, v10, v11}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 748
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v10

    int-to-long v14, v5

    rem-long/2addr v10, v14

    long-to-float v10, v10

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/DefaultDate;->getDayPart()F

    move-result v11

    add-float/2addr v10, v11

    int-to-float v11, v5

    mul-float v12, v9, v11

    add-float/2addr v10, v12

    rem-float/2addr v10, v11

    div-float/2addr v10, v11

    .line 749
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v14

    move-wide/from16 v17, v14

    int-to-long v13, v6

    rem-long v14, v17, v13

    long-to-float v11, v14

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/DefaultDate;->getDayPart()F

    move-result v13

    add-float/2addr v11, v13

    int-to-float v6, v6

    mul-float v13, v9, v6

    add-float/2addr v11, v13

    rem-float/2addr v11, v6

    div-float/2addr v11, v6

    iput v11, v1, Linfo/flowersoft/theotown/city/City;->originalDaytime:F

    if-nez v8, :cond_a9

    goto :goto_aa

    :cond_a9
    move v9, v10

    :goto_aa
    if-gez v5, :cond_e9

    .line 752
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v8, v1, Linfo/flowersoft/theotown/city/City;->lastRealDaytimeTime:J

    sub-long/2addr v5, v8

    const-wide/16 v8, 0xfa0

    cmp-long v3, v5, v8

    if-lez v3, :cond_e0

    .line 753
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v5, 0xb

    .line 754
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x41c00000    # 24.0f

    div-float/2addr v5, v6

    const/16 v8, 0xc

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v8, 0x42700000    # 60.0f

    div-float/2addr v3, v8

    div-float/2addr v3, v6

    add-float/2addr v5, v3

    .line 755
    iput v5, v1, Linfo/flowersoft/theotown/city/City;->lastRealDaytimeResult:F

    .line 756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v1, Linfo/flowersoft/theotown/city/City;->lastRealDaytimeTime:J

    move v9, v5

    goto :goto_e3

    :catchall_dd
    move-exception v0

    goto/16 :goto_394

    .line 758
    :cond_e0
    iget v3, v1, Linfo/flowersoft/theotown/city/City;->lastRealDaytimeResult:F

    move v9, v3

    .line 760
    :goto_e3
    iget-object v3, v1, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    float-to-double v5, v9

    iput-wide v5, v3, Linfo/flowersoft/theotown/city/Drawer;->daytimeDay:D

    goto :goto_fc

    .line 762
    :cond_e9
    iget-object v6, v1, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v10

    long-to-double v10, v10

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/DefaultDate;->getDayPart()F

    move-result v3

    float-to-double v13, v3

    add-double/2addr v10, v13

    float-to-double v12, v12

    add-double/2addr v10, v12

    int-to-double v12, v5

    div-double/2addr v10, v12

    iput-wide v10, v6, Linfo/flowersoft/theotown/city/Drawer;->daytimeDay:D

    :goto_fc
    float-to-double v5, v9

    .line 765
    invoke-static {v5, v6}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v3

    invoke-virtual {v7, v3}, Lvm2/LuaValue;->invoke(Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object v3

    .line 766
    iget-object v5, v1, Linfo/flowersoft/theotown/city/City;->shadingColor:Lio/blueflower/stapel2d/drawing/Color;

    const/4 v6, 0x1

    .line 767
    invoke-virtual {v3, v6}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v7

    double-to-int v6, v7

    const/4 v7, 0x2

    .line 768
    invoke-virtual {v3, v7}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v7

    double-to-int v7, v7

    const/4 v8, 0x3

    .line 769
    invoke-virtual {v3, v8}, Lvm2/Varargs;->checkdouble(I)D

    move-result-wide v10

    double-to-int v3, v10

    const/16 v8, 0xff

    .line 766
    invoke-virtual {v5, v6, v7, v3, v8}, Lio/blueflower/stapel2d/drawing/Color;->setTo(IIII)Lio/blueflower/stapel2d/drawing/Color;

    .line 771
    iget-object v3, v1, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/city/Drawer;->begin(Lio/blueflower/stapel2d/drawing/Engine;)V

    .line 772
    iget-object v3, v1, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    iget-object v5, v1, Linfo/flowersoft/theotown/city/City;->shadingColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v5

    iget-object v6, v1, Linfo/flowersoft/theotown/city/City;->shadingColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v6

    iget-object v7, v1, Linfo/flowersoft/theotown/city/City;->shadingColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Linfo/flowersoft/theotown/city/Drawer;->setShadingColor(III)V

    .line 773
    iget-object v3, v1, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    move/from16 v5, p2

    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/city/Drawer;->setUseShading(Z)V

    .line 774
    iget-object v3, v1, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    iput v9, v3, Linfo/flowersoft/theotown/city/Drawer;->daytime:F

    .line 775
    iget-object v3, v1, Linfo/flowersoft/theotown/city/City;->lod:Linfo/flowersoft/theotown/city/components/LODController;

    iget-object v5, v1, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    div-double/2addr v5, v7

    double-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/city/components/LODController;->setCityScale(I)V

    .line 777
    iget-object v3, v1, Linfo/flowersoft/theotown/city/City;->luaStrDaytime:Lvm2/LuaValue;

    iget-object v5, v1, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    iget v5, v5, Linfo/flowersoft/theotown/city/Drawer;->daytime:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lvm2/LuaValue;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    .line 778
    iget-object v3, v1, Linfo/flowersoft/theotown/city/City;->luaStrDaytimeDay:Lvm2/LuaValue;

    iget-object v5, v1, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    iget-wide v5, v5, Linfo/flowersoft/theotown/city/Drawer;->daytimeDay:D

    invoke-static {v5, v6}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lvm2/LuaValue;->set(Lvm2/LuaValue;Lvm2/LuaValue;)V

    .line 780
    iget-object v3, v1, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v3

    iget-object v4, v1, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/4 v3, 0x0

    .line 782
    :goto_18c
    iget-object v4, v1, Linfo/flowersoft/theotown/city/City;->components:[Linfo/flowersoft/theotown/city/components/CityComponent;

    array-length v5, v4

    if-ge v3, v5, :cond_199

    .line 783
    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/city/components/CityComponent;->drawBefore(Lio/blueflower/stapel2d/drawing/Engine;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_18c

    .line 786
    :cond_199
    iget-object v3, v1, Linfo/flowersoft/theotown/city/City;->lod:Linfo/flowersoft/theotown/city/components/LODController;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/LODController;->isNoBackground()Z

    move-result v3

    const/high16 v13, 0x3f800000    # 1.0f

    if-nez v3, :cond_222

    .line 787
    sget-object v3, Linfo/flowersoft/theotown/city/CityBackgroundTexture;->INSTANCE:Linfo/flowersoft/theotown/city/CityBackgroundTexture;

    iget-object v4, v1, Linfo/flowersoft/theotown/city/City;->backgroundDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-virtual {v3, v2, v4}, Linfo/flowersoft/theotown/city/CityBackgroundTexture;->getTexture(Lio/blueflower/stapel2d/drawing/Engine;Linfo/flowersoft/theotown/draft/AnimationDraft;)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v3

    if-eqz v3, :cond_222

    .line 790
    iget-object v4, v1, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v4

    .line 791
    iget-object v5, v1, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v5

    .line 792
    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Texture;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v13, v6

    div-float/2addr v6, v4

    .line 793
    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Texture;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v13, v7

    div-float/2addr v7, v5

    neg-float v8, v6

    .line 794
    iget-object v9, v1, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftX()F

    move-result v9

    mul-float/2addr v9, v4

    iget-object v4, v1, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/ScreenRect;->getCenterX()F

    move-result v4

    add-float/2addr v9, v4

    mul-float/2addr v8, v9

    neg-float v4, v7

    .line 795
    iget-object v9, v1, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftY()F

    move-result v9

    mul-float/2addr v9, v5

    iget-object v10, v1, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v10}, Lio/blueflower/stapel2d/util/ScreenRect;->getCenterY()F

    move-result v10

    add-float/2addr v9, v10

    sub-float/2addr v9, v5

    mul-float/2addr v9, v4

    .line 796
    iget-object v4, v1, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    .line 798
    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/ScreenRect;->getX()F

    move-result v4

    iget-object v5, v1, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result v5

    iget-object v10, v1, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v10}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v10

    add-float/2addr v10, v13

    iget-object v11, v1, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v11}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v11

    add-float/2addr v11, v13

    iget-object v12, v1, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    .line 800
    invoke-virtual {v12}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v12

    mul-float/2addr v6, v12

    add-float/2addr v6, v8

    iget-object v12, v1, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v12}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v12

    mul-float/2addr v7, v12

    add-float/2addr v7, v9

    const/4 v12, 0x5

    move/from16 v19, v10

    move v10, v6

    move/from16 v6, v19

    move/from16 v19, v11

    move v11, v7

    move/from16 v7, v19

    .line 796
    invoke-virtual/range {v2 .. v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawTextureRect(Lio/blueflower/stapel2d/drawing/Texture;FFFFFFFFI)V

    .line 805
    :cond_222
    iget-object v3, v1, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v3

    const/high16 v4, 0x3e800000    # 0.25f

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_24e

    iget-object v3, v1, Linfo/flowersoft/theotown/city/City;->lod:Linfo/flowersoft/theotown/city/components/LODController;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/LODController;->isNoBuffering()Z

    move-result v3

    if-nez v3, :cond_24e

    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->countTextureAreas()I

    move-result v3

    const/16 v16, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getTextureId(I)I

    move-result v3

    if-nez v3, :cond_24e

    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 806
    invoke-interface {v3}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v3, v4, :cond_251

    :cond_24e
    const/4 v4, 0x0

    goto/16 :goto_337

    .line 816
    :cond_251
    iget-object v3, v1, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(II)I

    move-result v3

    int-to-float v3, v3

    iget v5, v1, Linfo/flowersoft/theotown/city/City;->drawArrayOffsetX:F

    sub-float v7, v3, v5

    .line 817
    iget-object v3, v1, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v3, v4, v4}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(II)I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Linfo/flowersoft/theotown/city/City;->drawArrayOffsetY:F

    sub-float v8, v3, v4

    .line 819
    iget v3, v1, Linfo/flowersoft/theotown/city/City;->drawArrayFrame:I

    if-eqz v3, :cond_2bc

    iget v4, v1, Linfo/flowersoft/theotown/city/City;->drawArrayStart:I

    iget v5, v1, Linfo/flowersoft/theotown/city/City;->drawArrayEnd:I

    .line 820
    invoke-virtual {v2, v3, v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->isDrawArrayValid(III)Z

    move-result v3

    if-eqz v3, :cond_2bc

    iget v3, v1, Linfo/flowersoft/theotown/city/City;->drawArrayCounter:I

    if-lez v3, :cond_2bc

    .line 822
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    cmpl-float v3, v3, v13

    if-ltz v3, :cond_28b

    goto :goto_2bc

    .line 848
    :cond_28b
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getDrawIndex()I

    move-result v9

    .line 849
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getFrame()I

    move-result v10

    .line 850
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->TEXTURE_WORLD:Lio/blueflower/stapel2d/drawing/Texture;

    iget v4, v1, Linfo/flowersoft/theotown/city/City;->drawArrayFrame:I

    iget v5, v1, Linfo/flowersoft/theotown/city/City;->drawArrayStart:I

    iget v6, v1, Linfo/flowersoft/theotown/city/City;->drawArrayEnd:I

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawDrawArray(Lio/blueflower/stapel2d/drawing/Texture;IIIFF)V

    .line 852
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getDrawIndex()I

    move-result v3

    iput v3, v1, Linfo/flowersoft/theotown/city/City;->drawArrayEnd:I

    .line 853
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getFrame()I

    move-result v3

    iput v3, v1, Linfo/flowersoft/theotown/city/City;->drawArrayFrame:I

    .line 855
    iput v9, v1, Linfo/flowersoft/theotown/city/City;->drawArrayStart:I

    .line 856
    iget v4, v1, Linfo/flowersoft/theotown/city/City;->drawArrayCounter:I

    const/16 v16, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v1, Linfo/flowersoft/theotown/city/City;->drawArrayCounter:I

    if-eq v10, v3, :cond_2b9

    const/4 v4, 0x0

    .line 859
    iput v4, v1, Linfo/flowersoft/theotown/city/City;->drawArrayCounter:I

    :cond_2b9
    const/4 v4, 0x0

    goto/16 :goto_34a

    .line 823
    :cond_2bc
    :goto_2bc
    iget-object v3, v1, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, Linfo/flowersoft/theotown/city/City;->drawArrayOffsetX:F

    .line 824
    iget-object v3, v1, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v3, v4, v4}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, Linfo/flowersoft/theotown/city/City;->drawArrayOffsetY:F

    .line 826
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getDrawIndex()I

    move-result v3

    iput v3, v1, Linfo/flowersoft/theotown/city/City;->drawArrayStart:I

    .line 827
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getFrame()I

    move-result v3

    .line 829
    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/city/City;->drawWholeCity(Lio/blueflower/stapel2d/drawing/Engine;)V

    const/4 v4, 0x0

    .line 830
    :goto_2dd
    iget-object v5, v1, Linfo/flowersoft/theotown/city/City;->components:[Linfo/flowersoft/theotown/city/components/CityComponent;

    array-length v6, v5

    if-ge v4, v6, :cond_2ec

    .line 831
    aget-object v5, v5, v4

    iget-object v6, v1, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/city/components/CityComponent;->drawAfterCached(Linfo/flowersoft/theotown/city/Drawer;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2dd

    .line 834
    :cond_2ec
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getDrawIndex()I

    move-result v4

    iput v4, v1, Linfo/flowersoft/theotown/city/City;->drawArrayEnd:I

    .line 835
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getFrame()I

    move-result v4

    iput v4, v1, Linfo/flowersoft/theotown/city/City;->drawArrayFrame:I

    const/4 v5, 0x5

    .line 837
    iput v5, v1, Linfo/flowersoft/theotown/city/City;->drawArrayCounter:I

    if-eq v3, v4, :cond_2b9

    const/4 v4, 0x0

    .line 840
    iput v4, v1, Linfo/flowersoft/theotown/city/City;->drawArrayCounter:I

    .line 841
    sget-object v5, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v6, "City"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fast draw call failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Linfo/flowersoft/theotown/city/City;->drawArrayStart:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Linfo/flowersoft/theotown/city/City;->drawArrayEnd:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "; frames "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " != "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Linfo/flowersoft/theotown/city/City;->drawArrayFrame:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v6, v3}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34a

    .line 808
    :goto_337
    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/city/City;->drawWholeCity(Lio/blueflower/stapel2d/drawing/Engine;)V

    move v3, v4

    .line 810
    :goto_33b
    iget-object v5, v1, Linfo/flowersoft/theotown/city/City;->components:[Linfo/flowersoft/theotown/city/components/CityComponent;

    array-length v6, v5

    if-ge v3, v6, :cond_34a

    .line 811
    aget-object v5, v5, v3

    iget-object v6, v1, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/city/components/CityComponent;->drawAfterCached(Linfo/flowersoft/theotown/city/Drawer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_33b

    .line 864
    :cond_34a
    :goto_34a
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 865
    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/city/City;->drawNeighboringCities(Lio/blueflower/stapel2d/drawing/Engine;)V

    .line 867
    iget-object v3, v1, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v3

    iget-object v5, v1, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v5

    invoke-virtual {v2, v3, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    move v14, v4

    .line 868
    :goto_360
    iget-object v3, v1, Linfo/flowersoft/theotown/city/City;->components:[Linfo/flowersoft/theotown/city/components/CityComponent;

    array-length v4, v3

    if-ge v14, v4, :cond_36f

    .line 869
    aget-object v3, v3, v14

    iget-object v4, v1, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/city/components/CityComponent;->drawAfter(Linfo/flowersoft/theotown/city/Drawer;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_360

    .line 872
    :cond_36f
    iget-object v3, v1, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/Drawer;->end()V

    .line 874
    invoke-virtual {v2, v13, v13}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 875
    iget-object v2, v1, Linfo/flowersoft/theotown/city/City;->DRAW_CITY_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

    if-eqz v2, :cond_37e

    .line 876
    invoke-virtual {v2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke()V

    .line 879
    :cond_37e
    iget v2, v1, Linfo/flowersoft/theotown/city/City;->drawCounter:I

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Linfo/flowersoft/theotown/city/City;->drawCounter:I

    .line 880
    const-class v2, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/scripting/libraries/DrawingLibrary;->setCity(Linfo/flowersoft/theotown/city/City;)V
    :try_end_392
    .catchall {:try_start_5 .. :try_end_392} :catchall_dd

    .line 881
    monitor-exit p0

    return-void

    :goto_394
    :try_start_394
    monitor-exit p0
    :try_end_395
    .catchall {:try_start_394 .. :try_end_395} :catchall_dd

    throw v0
.end method

.method public final drawCity(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 981
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    const/16 v2, 0xd

    .line 982
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/components/Tool;

    const/16 v3, 0xf

    .line 984
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v4

    instance-of v4, v4, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    if-eqz v4, :cond_27

    .line 985
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    :goto_25
    move-object v4, v3

    goto :goto_29

    :cond_27
    const/4 v3, 0x0

    goto :goto_25

    .line 988
    :goto_29
    iget-object v3, v0, Linfo/flowersoft/theotown/city/City;->buildings:Linfo/flowersoft/theotown/city/BuildingList;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/BuildingList;->getMaxBuildHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    const/16 v5, 0x600

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    neg-int v3, v3

    sput v3, Linfo/flowersoft/theotown/city/City;->DRAWSPACE_BOTTOM:I

    .line 991
    iget-object v3, v0, Linfo/flowersoft/theotown/city/City;->lod:Linfo/flowersoft/theotown/city/components/LODController;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/LODController;->isNoBackground()Z

    .line 993
    iget-object v3, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v3

    .line 994
    iget-object v5, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v5

    .line 996
    iget-object v6, v0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/util/ScreenRect;->getX()F

    move-result v6

    .line 997
    iget-object v7, v0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result v7

    .line 998
    iget-object v8, v0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v8}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v8

    add-float/2addr v6, v8

    .line 999
    iget-object v8, v0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v8}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v8

    add-float/2addr v7, v8

    const/4 v8, 0x0

    mul-float/2addr v8, v5

    sub-float/2addr v6, v8

    .line 1000
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 1001
    sget v6, Linfo/flowersoft/theotown/city/City;->DRAWSPACE_BOTTOM:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    sub-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 1002
    iget-object v6, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    iget-object v7, v0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/util/ScreenRect;->getX()F

    move-result v7

    iget-object v8, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v8

    const/high16 v9, -0x3e000000    # -32.0f

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget-object v8, v0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v8}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result v8

    iget-object v10, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v10

    const/high16 v13, -0x3df00000    # -36.0f

    mul-float/2addr v10, v13

    add-float/2addr v8, v10

    invoke-virtual {v6, v7, v8}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoX(FF)F

    move-result v6

    float-to-int v6, v6

    .line 1003
    iget-object v7, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    iget-object v8, v0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v8}, Lio/blueflower/stapel2d/util/ScreenRect;->getX()F

    move-result v8

    iget-object v10, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v10

    mul-float/2addr v10, v9

    add-float/2addr v8, v10

    iget-object v9, v0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v9}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result v9

    iget-object v10, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v10

    mul-float/2addr v10, v13

    add-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoY(FF)F

    move-result v7

    float-to-int v7, v7

    .line 1007
    instance-of v13, v2, Linfo/flowersoft/theotown/tools/BuildTool;

    .line 1008
    iget-object v8, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v8, v6, v7}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(II)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42000000    # 32.0f

    mul-float v14, v3, v9

    const/high16 v9, 0x41800000    # 16.0f

    mul-float/2addr v5, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float v15, v5, v9

    .line 1011
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v5

    invoke-virtual {v5}, Linfo/flowersoft/theotown/resources/WinterManager;->isWinter()Z

    move-result v5

    .line 1013
    iget-object v9, v0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    iput-boolean v5, v9, Linfo/flowersoft/theotown/city/Drawer;->winter:Z

    .line 1014
    const-string v9, "cityScale"

    invoke-virtual {v1, v9, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setUniform(Ljava/lang/String;F)V

    .line 1015
    iget-object v3, v0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    iget v3, v3, Linfo/flowersoft/theotown/city/Drawer;->time:I

    int-to-float v3, v3

    const/high16 v9, 0x447a0000    # 1000.0f

    div-float/2addr v3, v9

    const-string v9, "cityTime"

    invoke-virtual {v1, v9, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setUniform(Ljava/lang/String;F)V

    .line 1017
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRotatedWidth()I

    move-result v1

    .line 1018
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRotatedHeight()I

    move-result v3

    if-eqz v4, :cond_106

    .line 1021
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->beforeCollection()V

    :cond_106
    const/16 v16, 0x1

    move/from16 v17, v6

    move/from16 v18, v7

    move v6, v8

    move/from16 v19, v16

    move v7, v5

    :goto_110
    int-to-float v8, v12

    cmpg-float v8, v6, v8

    if-gez v8, :cond_3bd

    if-gez v17, :cond_11b

    sub-int v9, v18, v17

    const/4 v10, 0x0

    goto :goto_11f

    :cond_11b
    move/from16 v10, v17

    move/from16 v9, v18

    :goto_11f
    if-gez v9, :cond_123

    sub-int/2addr v10, v9

    const/4 v9, 0x0

    :cond_123
    if-le v10, v9, :cond_134

    if-ge v10, v1, :cond_142

    sub-int v20, v1, v10

    add-int v20, v9, v20

    move/from16 v8, v20

    move-object/from16 v20, v4

    move v4, v8

    move v8, v1

    move/from16 v21, v5

    goto :goto_148

    :cond_134
    if-ge v9, v3, :cond_142

    sub-int v20, v3, v9

    add-int v20, v10, v20

    move/from16 v21, v5

    move/from16 v8, v20

    move-object/from16 v20, v4

    move v4, v3

    goto :goto_148

    :cond_142
    move-object/from16 v20, v4

    move/from16 v21, v5

    move v4, v9

    move v8, v10

    .line 1046
    :goto_148
    iget-object v5, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v5, v8, v4}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(II)I

    move-result v4

    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1048
    iget-object v5, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v5, v10, v9}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(II)I

    move-result v5

    int-to-float v5, v5

    move v8, v9

    move v9, v10

    :goto_15b
    int-to-float v10, v4

    cmpg-float v10, v5, v10

    if-gez v10, :cond_168

    if-ltz v9, :cond_168

    if-ltz v8, :cond_168

    if-ge v9, v1, :cond_168

    if-lt v8, v3, :cond_17e

    :cond_168
    move/from16 v22, v1

    move/from16 v23, v3

    move/from16 v29, v12

    move/from16 v31, v13

    move/from16 v33, v14

    move/from16 v36, v15

    move-object/from16 v26, v20

    move/from16 v34, v21

    move/from16 v21, v6

    move/from16 v20, v11

    goto/16 :goto_3a1

    .line 1055
    :cond_17e
    invoke-virtual {v0, v9, v8}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v10

    move/from16 v22, v1

    .line 1056
    invoke-virtual {v0, v9, v8}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v1

    move/from16 v23, v3

    if-nez v21, :cond_19d

    .line 1058
    iget-object v3, v0, Linfo/flowersoft/theotown/city/City;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v10, v1}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v3

    iget-boolean v3, v3, Linfo/flowersoft/theotown/draft/GroundDraft;->winter:Z

    if-eqz v3, :cond_19b

    goto :goto_19d

    :cond_19b
    const/4 v3, 0x0

    goto :goto_19f

    :cond_19d
    :goto_19d
    move/from16 v3, v16

    :goto_19f
    if-eq v3, v7, :cond_1ae

    xor-int/lit8 v7, v7, 0x1

    .line 1060
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Linfo/flowersoft/theotown/resources/WinterManager;->setWinter(Z)V

    .line 1061
    iget-object v3, v0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    iput-boolean v7, v3, Linfo/flowersoft/theotown/city/Drawer;->winter:Z

    .line 1064
    :cond_1ae
    iget-object v3, v0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v3, v9, v8, v10, v1}, Linfo/flowersoft/theotown/city/Drawer;->setTile(IIII)V

    .line 1065
    iget-object v3, v0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/Drawer;->isTileVisible()Z

    move-result v3

    if-eqz v3, :cond_1e0

    if-eqz v20, :cond_1e0

    .line 1066
    iget-object v3, v0, Linfo/flowersoft/theotown/city/City;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    move/from16 v24, v8

    float-to-int v8, v5

    move/from16 v25, v9

    float-to-int v9, v6

    move/from16 v39, v7

    move v7, v1

    move/from16 v1, v25

    move/from16 v25, v5

    move-object v5, v3

    move/from16 v3, v24

    move/from16 v24, v4

    move-object/from16 v4, v20

    move/from16 v20, v11

    move/from16 v11, v21

    move/from16 v21, v6

    move v6, v10

    move/from16 v10, v39

    invoke-virtual/range {v4 .. v10}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->collect(Linfo/flowersoft/theotown/city/Tiles;IIIIZ)V

    goto :goto_1f1

    :cond_1e0
    move/from16 v24, v4

    move/from16 v25, v5

    move v3, v8

    move-object/from16 v4, v20

    move/from16 v20, v11

    move/from16 v11, v21

    move/from16 v21, v6

    move v6, v10

    move v10, v7

    move v7, v1

    move v1, v9

    .line 1069
    :goto_1f1
    iget-object v5, v0, Linfo/flowersoft/theotown/city/City;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v6, v7}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v5

    if-eqz v5, :cond_369

    .line 1073
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v8

    .line 1074
    iget v9, v0, Linfo/flowersoft/theotown/city/City;->rotation:I

    invoke-virtual {v5, v9}, Linfo/flowersoft/theotown/city/objects/Building;->getPivotX(I)I

    move-result v9

    move-object/from16 v26, v4

    .line 1075
    iget v4, v0, Linfo/flowersoft/theotown/city/City;->rotation:I

    invoke-virtual {v5, v4}, Linfo/flowersoft/theotown/city/objects/Building;->getPivotY(I)I

    move-result v4

    .line 1076
    invoke-virtual {v8}, Linfo/flowersoft/theotown/draft/BuildingDraft;->isSquare()Z

    move-result v27

    move/from16 v28, v10

    if-nez v27, :cond_2e5

    .line 1080
    iget v10, v8, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    move/from16 v29, v12

    iget v12, v8, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1081
    iget v12, v8, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    move/from16 v30, v10

    iget v10, v8, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    invoke-static {v12, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int v10, v10, v30

    add-int/lit8 v10, v10, -0x1

    .line 1082
    div-int v10, v10, v30

    add-int/lit8 v12, v10, -0x1

    move/from16 v31, v13

    .line 1084
    iget-object v13, v5, Linfo/flowersoft/theotown/city/objects/Building;->lastDrawnN:[I

    if-nez v13, :cond_239

    .line 1086
    new-array v10, v10, [I

    iput-object v10, v5, Linfo/flowersoft/theotown/city/objects/Building;->lastDrawnN:[I

    :cond_239
    move/from16 v13, v16

    const/4 v10, 0x0

    :goto_23c
    if-gt v13, v12, :cond_2d8

    move/from16 v32, v10

    .line 1090
    iget-object v10, v5, Linfo/flowersoft/theotown/city/objects/Building;->lastDrawnN:[I

    aget v10, v10, v13

    move/from16 v33, v14

    iget v14, v0, Linfo/flowersoft/theotown/city/City;->drawCounter:I

    if-ne v10, v14, :cond_256

    move/from16 v34, v11

    move/from16 v36, v15

    :cond_24e
    move-object/from16 v35, v8

    move/from16 v37, v12

    move/from16 v38, v13

    goto/16 :goto_2c8

    .line 1092
    :cond_256
    iget v10, v0, Linfo/flowersoft/theotown/city/City;->rotation:I

    invoke-virtual {v5, v10, v13}, Linfo/flowersoft/theotown/city/objects/Building;->getPivotXN(II)I

    move-result v10

    .line 1093
    iget v14, v0, Linfo/flowersoft/theotown/city/City;->rotation:I

    invoke-virtual {v5, v14, v13}, Linfo/flowersoft/theotown/city/objects/Building;->getPivotYN(II)I

    move-result v14

    .line 1094
    invoke-virtual {v0, v10, v14}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v34

    .line 1095
    invoke-virtual {v0, v10, v14}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result v35

    if-ne v6, v10, :cond_26e

    if-eq v7, v14, :cond_271

    :cond_26e
    move/from16 v36, v15

    goto :goto_276

    :cond_271
    move/from16 v34, v11

    move/from16 v36, v15

    goto :goto_27e

    :goto_276
    sub-int v15, v34, v35

    move/from16 v34, v11

    sub-int v11, v1, v3

    if-gt v15, v11, :cond_24e

    .line 1098
    :goto_27e
    invoke-virtual {v0, v9, v4}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v11

    .line 1099
    invoke-virtual {v0, v9, v4}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result v15

    move-object/from16 v35, v8

    .line 1100
    iget-object v8, v0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v8, v11, v15, v9, v4}, Linfo/flowersoft/theotown/city/Drawer;->setTile(IIII)V

    if-ne v13, v12, :cond_292

    const/16 v8, 0x4e20

    goto :goto_294

    :cond_292
    move/from16 v8, v30

    .line 1103
    :goto_294
    iget-object v11, v0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    mul-int v15, v13, v30

    mul-int/lit8 v15, v15, 0x20

    div-int/lit8 v15, v15, 0x2

    mul-int/lit8 v8, v8, 0x20

    move/from16 v37, v12

    move/from16 v38, v13

    const/16 v12, -0x2710

    const/16 v13, 0x4e20

    invoke-virtual {v11, v15, v12, v8, v13}, Linfo/flowersoft/theotown/city/Drawer;->setClipRect(IIII)V

    .line 1107
    iget-object v8, v0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v2, v9, v4, v8}, Linfo/flowersoft/theotown/city/components/Tool;->draw(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 1108
    iget-object v8, v0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/Drawer;->resetClipping()V

    .line 1110
    iget-object v8, v5, Linfo/flowersoft/theotown/city/objects/Building;->lastDrawnN:[I

    iget v11, v0, Linfo/flowersoft/theotown/city/City;->drawCounter:I

    aput v11, v8, v38

    if-ne v6, v10, :cond_2c0

    if-ne v7, v14, :cond_2c0

    move/from16 v8, v16

    goto :goto_2c1

    :cond_2c0
    const/4 v8, 0x0

    .line 1112
    :goto_2c1
    iget-object v10, v0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v10, v1, v3, v6, v7}, Linfo/flowersoft/theotown/city/Drawer;->setTile(IIII)V

    move v10, v8

    goto :goto_2ca

    :goto_2c8
    move/from16 v10, v32

    :goto_2ca
    add-int/lit8 v13, v38, 0x1

    move/from16 v14, v33

    move/from16 v11, v34

    move-object/from16 v8, v35

    move/from16 v15, v36

    move/from16 v12, v37

    goto/16 :goto_23c

    :cond_2d8
    move-object/from16 v35, v8

    move/from16 v32, v10

    move/from16 v8, v32

    :goto_2de
    move/from16 v34, v11

    move/from16 v33, v14

    move/from16 v36, v15

    goto :goto_2ed

    :cond_2e5
    move-object/from16 v35, v8

    move/from16 v29, v12

    move/from16 v31, v13

    const/4 v8, 0x0

    goto :goto_2de

    :goto_2ed
    if-eqz v8, :cond_2f2

    :cond_2ef
    const/4 v12, 0x0

    goto/16 :goto_367

    :cond_2f2
    if-nez v31, :cond_300

    .line 1120
    iget v10, v5, Linfo/flowersoft/theotown/city/objects/Building;->lastDrawn:I

    iget v11, v0, Linfo/flowersoft/theotown/city/City;->drawCounter:I

    if-ne v10, v11, :cond_300

    move v9, v1

    move/from16 v8, v16

    const/4 v12, 0x0

    goto/16 :goto_37a

    .line 1124
    :cond_300
    iget v10, v5, Linfo/flowersoft/theotown/city/objects/Building;->lastDrawn:I

    iget v11, v0, Linfo/flowersoft/theotown/city/City;->drawCounter:I

    if-eq v10, v11, :cond_2ef

    .line 1125
    invoke-virtual {v0, v9, v4}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v10

    .line 1126
    invoke-virtual {v0, v9, v4}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result v11

    sub-int v12, v10, v11

    sub-int v13, v1, v3

    if-gt v12, v13, :cond_2ef

    .line 1129
    iget-object v8, v0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v8, v10, v11, v9, v4}, Linfo/flowersoft/theotown/city/Drawer;->setTile(IIII)V

    move-object/from16 v8, v35

    .line 1130
    iget v10, v8, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    iget v8, v8, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-eqz v27, :cond_32c

    .line 1134
    iget-object v10, v0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v2, v9, v4, v10}, Linfo/flowersoft/theotown/city/components/Tool;->draw(IILinfo/flowersoft/theotown/city/Drawer;)V

    const/4 v12, 0x0

    goto :goto_346

    .line 1138
    :cond_32c
    iget-object v10, v0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    mul-int/lit8 v11, v8, 0x20

    div-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x0

    const/16 v13, -0x2710

    const/16 v14, 0x4e20

    invoke-virtual {v10, v12, v13, v11, v14}, Linfo/flowersoft/theotown/city/Drawer;->setClipRect(IIII)V

    .line 1143
    iget-object v10, v0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v2, v9, v4, v10}, Linfo/flowersoft/theotown/city/components/Tool;->draw(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 1144
    iget-object v10, v0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/Drawer;->resetClipping()V

    .line 1146
    :goto_346
    iget v10, v0, Linfo/flowersoft/theotown/city/City;->drawCounter:I

    iput v10, v5, Linfo/flowersoft/theotown/city/objects/Building;->lastDrawn:I

    if-ne v6, v9, :cond_351

    if-ne v7, v4, :cond_351

    move/from16 v5, v16

    goto :goto_352

    :cond_351
    move v5, v12

    .line 1149
    :goto_352
    iget-object v10, v0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v10, v1, v3, v6, v7}, Linfo/flowersoft/theotown/city/Drawer;->setTile(IIII)V

    if-nez v31, :cond_365

    if-ne v6, v9, :cond_365

    if-ne v7, v4, :cond_365

    add-int/lit8 v8, v8, -0x1

    add-int v9, v1, v8

    add-int/2addr v8, v3

    move v3, v8

    :goto_363
    move v8, v5

    goto :goto_37a

    :cond_365
    move v9, v1

    goto :goto_363

    :goto_367
    move v9, v1

    goto :goto_37a

    :cond_369
    move-object/from16 v26, v4

    move/from16 v28, v10

    move/from16 v34, v11

    move/from16 v29, v12

    move/from16 v31, v13

    move/from16 v33, v14

    move/from16 v36, v15

    const/4 v12, 0x0

    move v9, v1

    move v8, v12

    :goto_37a
    if-nez v8, :cond_381

    .line 1161
    iget-object v1, v0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v2, v6, v7, v1}, Linfo/flowersoft/theotown/city/components/Tool;->draw(IILinfo/flowersoft/theotown/city/Drawer;)V

    :cond_381
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v3, 0x1

    add-float v5, v25, v33

    move/from16 v11, v20

    move/from16 v6, v21

    move/from16 v1, v22

    move/from16 v3, v23

    move/from16 v4, v24

    move-object/from16 v20, v26

    move/from16 v7, v28

    move/from16 v12, v29

    move/from16 v13, v31

    move/from16 v14, v33

    move/from16 v21, v34

    move/from16 v15, v36

    goto/16 :goto_15b

    :goto_3a1
    sub-int v18, v18, v19

    rsub-int/lit8 v19, v19, 0x1

    add-int v17, v17, v19

    add-float v6, v21, v36

    move/from16 v11, v20

    move/from16 v1, v22

    move/from16 v3, v23

    move-object/from16 v4, v26

    move/from16 v12, v29

    move/from16 v13, v31

    move/from16 v14, v33

    move/from16 v5, v34

    move/from16 v15, v36

    goto/16 :goto_110

    :cond_3bd
    move-object/from16 v26, v4

    move/from16 v34, v5

    .line 1176
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v1

    move/from16 v11, v34

    invoke-virtual {v1, v11}, Linfo/flowersoft/theotown/resources/WinterManager;->setWinter(Z)V

    .line 1177
    iget-object v1, v0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    iput-boolean v11, v1, Linfo/flowersoft/theotown/city/Drawer;->winter:Z

    if-eqz v26, :cond_3d3

    .line 1178
    invoke-virtual/range {v26 .. v26}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->afterCollection()V

    .line 1179
    :cond_3d3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    return-void
.end method

.method public final drawEdges()V
    .registers 15

    .line 1183
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->lod:Linfo/flowersoft/theotown/city/components/LODController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/LODController;->drawEdges()Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_133

    .line 1185
    :cond_a
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    rsub-int/lit8 v0, v0, -0x8

    sput v0, Linfo/flowersoft/theotown/city/City;->DRAWSPACE_BOTTOM:I

    const/16 v0, 0xd

    .line 1186
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Tool;

    .line 1190
    iget-object v1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v2

    const/high16 v3, -0x3e800000    # -16.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v4, p0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result v4

    iget-object v5, p0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v2, v4}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoX(II)I

    move-result v1

    .line 1191
    iget-object v2, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    iget-object v4, p0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result v4

    iget-object v5, p0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoY(II)I

    move-result v2

    .line 1192
    iget-object v3, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/ScreenRect;->getX()F

    move-result v4

    iget-object v5, p0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v5

    const/high16 v6, 0x41800000    # 16.0f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result v5

    iget-object v7, p0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v7

    add-float/2addr v5, v7

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoX(II)I

    move-result v3

    .line 1193
    iget-object v4, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    iget-object v5, p0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/util/ScreenRect;->getX()F

    move-result v5

    iget-object v7, p0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v7

    add-float/2addr v5, v7

    iget-object v7, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v7

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    iget-object v6, p0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result v6

    iget-object v7, p0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoY(II)I

    move-result v4

    .line 1194
    iget-object v5, p0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result v5

    iget-object v6, p0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 1196
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getRotatedWidth()I

    move-result v6

    .line 1197
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getRotatedHeight()I

    move-result v7

    add-int/2addr v1, v2

    add-int/2addr v3, v4

    const/4 v2, 0x0

    .line 1207
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_c9
    add-int/lit8 v8, v6, -0x1

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-gt v4, v9, :cond_fb

    .line 1208
    invoke-virtual {p0, v4, v2}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v8

    .line 1209
    invoke-virtual {p0, v4, v2}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v9

    .line 1210
    iget-object v10, p0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v10, v4, v2, v8, v9}, Linfo/flowersoft/theotown/city/Drawer;->setTile(IIII)V

    .line 1211
    iget-object v10, p0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    iget v11, v10, Linfo/flowersoft/theotown/city/Drawer;->y:F

    iget v12, v10, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    add-int/lit8 v12, v12, 0x3

    mul-int/lit8 v12, v12, 0xc

    int-to-float v12, v12

    iget v13, v10, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    int-to-float v12, v5

    cmpl-float v11, v11, v12

    if-lez v11, :cond_f3

    goto :goto_f8

    :cond_f3
    const/16 v11, 0x8

    .line 1212
    invoke-virtual {v0, v8, v9, v10, v11}, Linfo/flowersoft/theotown/city/components/Tool;->drawEdge(IILinfo/flowersoft/theotown/city/Drawer;I)V

    :goto_f8
    add-int/lit8 v4, v4, 0x1

    goto :goto_c9

    :cond_fb
    sub-int/2addr v1, v6

    const/4 v4, 0x1

    add-int/2addr v1, v4

    sub-int/2addr v3, v6

    add-int/2addr v3, v4

    sub-int/2addr v7, v4

    .line 1219
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_105
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-lt v3, v6, :cond_133

    .line 1220
    invoke-virtual {p0, v8, v3}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v6

    .line 1221
    invoke-virtual {p0, v8, v3}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v7

    .line 1222
    iget-object v9, p0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v9, v8, v3, v6, v7}, Linfo/flowersoft/theotown/city/Drawer;->setTile(IIII)V

    .line 1223
    iget-object v9, p0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    iget v10, v9, Linfo/flowersoft/theotown/city/Drawer;->y:F

    iget v11, v9, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    add-int/lit8 v11, v11, 0x3

    mul-int/lit8 v11, v11, 0xc

    int-to-float v11, v11

    iget v12, v9, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    int-to-float v11, v5

    cmpl-float v10, v10, v11

    if-lez v10, :cond_12d

    goto :goto_130

    .line 1224
    :cond_12d
    invoke-virtual {v0, v6, v7, v9, v4}, Linfo/flowersoft/theotown/city/components/Tool;->drawEdge(IILinfo/flowersoft/theotown/city/Drawer;I)V

    :goto_130
    add-int/lit8 v3, v3, -0x1

    goto :goto_105

    :cond_133
    :goto_133
    return-void
.end method

.method public final drawNeighboringCities(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 13

    .line 893
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->lod:Linfo/flowersoft/theotown/city/components/LODController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/LODController;->drawNeighboringCities()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 896
    :cond_9
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    iget v1, v0, Linfo/flowersoft/theotown/city/Drawer;->shadingRed:I

    add-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Linfo/flowersoft/theotown/city/Drawer;->shadingGreen:I

    add-int/lit16 v2, v2, 0xff

    div-int/lit8 v2, v2, 0x2

    iget v0, v0, Linfo/flowersoft/theotown/city/Drawer;->shadingBlue:I

    add-int/lit16 v0, v0, 0xff

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v1, v2, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    const/4 v0, 0x3

    .line 902
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 904
    iget-object v1, p0, Linfo/flowersoft/theotown/city/City;->tempInts:Lio/blueflower/stapel2d/util/IntList;

    .line 905
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    const/4 v2, 0x0

    move v3, v2

    .line 908
    :goto_2b
    iget-object v4, p0, Linfo/flowersoft/theotown/city/City;->neighbors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_85

    .line 909
    iget-object v4, p0, Linfo/flowersoft/theotown/city/City;->neighbors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    .line 910
    instance-of v5, v4, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;

    if-nez v5, :cond_40

    goto :goto_82

    .line 911
    :cond_40
    move-object v5, v4

    check-cast v5, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;

    .line 914
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->isDirect()Z

    move-result v6

    if-nez v6, :cond_4a

    goto :goto_82

    .line 917
    :cond_4a
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getX()I

    move-result v6

    if-nez v6, :cond_57

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getY()I

    move-result v6

    if-nez v6, :cond_57

    goto :goto_82

    .line 919
    :cond_57
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getPreviewImage()Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v4

    if-nez v4, :cond_5e

    goto :goto_82

    .line 922
    :cond_5e
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getX()I

    move-result v4

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getY()I

    move-result v6

    invoke-virtual {p0, v4, v6}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    .line 923
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getX()I

    move-result v6

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getY()I

    move-result v5

    invoke-virtual {p0, v6, v5}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    neg-int v4, v4

    add-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v4, v3

    .line 926
    invoke-virtual {v1, v4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    :goto_82
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 930
    :cond_85
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->sort()V

    .line 933
    :goto_88
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v3

    if-ge v2, v3, :cond_13c

    .line 934
    iget-object v3, p0, Linfo/flowersoft/theotown/city/City;->neighbors:Ljava/util/List;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    .line 935
    move-object v4, v3

    check-cast v4, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;

    .line 937
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getPreviewImage()Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v6

    if-nez v6, :cond_aa

    move-object v5, p1

    goto/16 :goto_137

    .line 940
    :cond_aa
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getX()I

    move-result v3

    .line 941
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getY()I

    move-result v5

    .line 942
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getWidth()I

    move-result v7

    .line 943
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/neighbors/RealNeighborCity;->getHeight()I

    move-result v4

    add-int v8, v3, v7

    if-gtz v8, :cond_c0

    add-int/lit8 v3, v3, -0x10

    :cond_c0
    add-int v8, v5, v4

    if-gtz v8, :cond_c6

    add-int/lit8 v5, v5, -0x10

    .line 949
    :cond_c6
    iget v8, p0, Linfo/flowersoft/theotown/city/City;->width:I

    if-lt v3, v8, :cond_cc

    add-int/lit8 v3, v3, 0x10

    .line 950
    :cond_cc
    iget v8, p0, Linfo/flowersoft/theotown/city/City;->height:I

    if-lt v5, v8, :cond_d2

    add-int/lit8 v5, v5, 0x10

    .line 952
    :cond_d2
    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Image;->getWidth()F

    move-result v8

    .line 954
    iget-object v9, p0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v9, v3, v5}, Linfo/flowersoft/theotown/city/Drawer;->setRealTile(II)V

    add-int/2addr v7, v4

    int-to-float v3, v7

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    const/high16 v5, 0x42000000    # 32.0f

    mul-float/2addr v3, v5

    div-float/2addr v3, v8

    .line 955
    iget-object v5, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v5

    mul-float/2addr v3, v5

    .line 956
    invoke-virtual {p1, v3, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 957
    iget v5, p0, Linfo/flowersoft/theotown/city/City;->rotation:I

    const/4 v7, 0x1

    if-eq v5, v7, :cond_f5

    if-ne v5, v0, :cond_fc

    :cond_f5
    mul-float/2addr v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v3, v5

    .line 959
    invoke-virtual {p1, v4, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 963
    :cond_fc
    iget v3, p0, Linfo/flowersoft/theotown/city/City;->rotation:I

    if-nez v3, :cond_106

    const/16 v3, 0x3c

    .line 964
    invoke-virtual {p1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    goto :goto_10b

    :cond_106
    const/16 v3, 0x1e

    .line 966
    invoke-virtual {p1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 969
    :goto_10b
    iget v3, p0, Linfo/flowersoft/theotown/city/City;->rotation:I

    int-to-float v3, v3

    const v4, 0x3fc90fdb

    mul-float v10, v3, v4

    const/high16 v3, -0x3de00000    # -40.0f

    .line 971
    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v4

    mul-float/2addr v4, v3

    iget-object v3, p0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    iget v3, v3, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    mul-float/2addr v4, v3

    const/high16 v3, 0x42200000    # 40.0f

    .line 972
    invoke-static {v10}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v5

    mul-float/2addr v5, v3

    iget-object v3, p0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    iget v7, v3, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    mul-float/2addr v5, v7

    .line 973
    iget v7, v3, Linfo/flowersoft/theotown/city/Drawer;->x:F

    add-float/2addr v7, v4

    iget v3, v3, Linfo/flowersoft/theotown/city/Drawer;->y:F

    add-float v8, v3, v5

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImageRotated(Lio/blueflower/stapel2d/drawing/Image;FFIF)V

    :goto_137
    add-int/lit8 v2, v2, 0x1

    move-object p1, v5

    goto/16 :goto_88

    :cond_13c
    move-object v5, p1

    .line 976
    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    .line 977
    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    return-void
.end method

.method public final drawWholeCity(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 2

    .line 888
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/City;->drawCity(Lio/blueflower/stapel2d/drawing/Engine;)V

    .line 889
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->drawEdges()V

    return-void
.end method

.method public focus(FF)V
    .registers 4

    const/high16 v0, 0x40000000    # 2.0f

    .line 1599
    invoke-virtual {p0, p1, p2, v0}, Linfo/flowersoft/theotown/city/City;->focus(FFF)V

    return-void
.end method

.method public focus(FFF)V
    .registers 5

    const/4 v0, 0x1

    .line 1603
    invoke-virtual {p0, p1, p2, p3, v0}, Linfo/flowersoft/theotown/city/City;->focus(FFFZ)V

    return-void
.end method

.method public focus(FFFZ)V
    .registers 7

    .line 1607
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(FF)F

    move-result v0

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(FF)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/city/City;->setViewTo(FF)V

    if-eqz p4, :cond_45

    .line 1609
    iget-object p4, p0, Linfo/flowersoft/theotown/city/City;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    float-to-int p1, p1

    iget v0, p0, Linfo/flowersoft/theotown/city/City;->width:I

    add-int/lit8 v0, v0, -0x1

    .line 1610
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    float-to-int p2, p2

    iget v1, p0, Linfo/flowersoft/theotown/city/City;->height:I

    add-int/lit8 v1, v1, -0x1

    .line 1611
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1609
    invoke-virtual {p4, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    .line 1612
    iget-object p2, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftX()F

    move-result p4

    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftY()F

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainAverageHeight()F

    move-result p1

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    invoke-virtual {p2, p4, v0}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V

    .line 1614
    :cond_45
    iget-object p1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {p1, p3, p3}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsScale(FF)V

    return-void
.end method

.method public focus(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 5

    if-eqz p1, :cond_23

    .line 1619
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 1620
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    .line 1619
    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/city/City;->focus(FF)V

    :cond_23
    return-void
.end method

.method public getAuthor()Ljava/lang/String;
    .registers 2

    .line 607
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorId()J
    .registers 3

    .line 312
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/City;->authorId:J

    return-wide v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .registers 2

    .line 316
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public getBackground()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 2

    .line 277
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->backgroundDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-object v0
.end method

.method public getBuildings()Linfo/flowersoft/theotown/city/BuildingList;
    .registers 2

    .line 575
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->buildings:Linfo/flowersoft/theotown/city/BuildingList;

    return-object v0
.end method

.method public getBusStops()Linfo/flowersoft/theotown/city/BusStopList;
    .registers 2

    .line 583
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->busStops:Linfo/flowersoft/theotown/city/BusStopList;

    return-object v0
.end method

.method public getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;
    .registers 2

    .line 366
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->cityInfo:Linfo/flowersoft/theotown/city/CityInfo;

    return-object v0
.end method

.method public getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;
    .registers 3

    .line 537
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->components:[Linfo/flowersoft/theotown/city/components/CityComponent;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getController()Linfo/flowersoft/theotown/city/CityController;
    .registers 2

    .line 345
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->controller:Linfo/flowersoft/theotown/city/CityController;

    return-object v0
.end method

.method public getCurrentXp()I
    .registers 2

    .line 418
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->currentXp:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    return v0
.end method

.method public getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;
    .registers 2

    .line 510
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->defaultTool:Linfo/flowersoft/theotown/city/components/Tool;

    return-object v0
.end method

.method public getDistance()Linfo/flowersoft/theotown/util/Distance;
    .registers 2

    .line 556
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->distance:Linfo/flowersoft/theotown/util/Distance;

    return-object v0
.end method

.method public getDrawer()Linfo/flowersoft/theotown/city/Drawer;
    .registers 2

    .line 884
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->drawer:Linfo/flowersoft/theotown/city/Drawer;

    return-object v0
.end method

.method public getFocusX()F
    .registers 5

    .line 1625
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ScreenRect;->getX()F

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->halfWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    .line 1626
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/IsoConverter;->halfHeight()F

    move-result v3

    add-float/2addr v2, v3

    .line 1625
    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoX(FF)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    return v0
.end method

.method public getFocusY()F
    .registers 5

    .line 1630
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ScreenRect;->getX()F

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->halfWidth()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    .line 1631
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/IsoConverter;->halfHeight()F

    move-result v3

    add-float/2addr v2, v3

    .line 1630
    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoY(FF)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    return v0
.end method

.method public getGameMode()Linfo/flowersoft/theotown/city/GameMode;
    .registers 2

    .line 560
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->mode:Linfo/flowersoft/theotown/city/GameMode;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .line 680
    iget v0, p0, Linfo/flowersoft/theotown/city/City;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 477
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;
    .registers 2

    .line 684
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    return-object v0
.end method

.method public getLastSimulationTimestamp()J
    .registers 3

    .line 430
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/City;->lastSimulationTimestamp:J

    return-wide v0
.end method

.method public getLod()Linfo/flowersoft/theotown/city/components/LODController;
    .registers 2

    .line 1372
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->lod:Linfo/flowersoft/theotown/city/components/LODController;

    return-object v0
.end method

.method public getLuaStorageProxy()Lvm2/LuaTable;
    .registers 2

    .line 308
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->luaStorageProxy:Lvm2/LuaTable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 599
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;
    .registers 3

    .line 458
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->neighbors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    .line 460
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getNeighborIndex(II)I
    .registers 5

    const/4 v0, 0x0

    .line 466
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/city/City;->neighbors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 467
    iget-object v1, p0, Linfo/flowersoft/theotown/city/City;->neighbors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_18

    return v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    const/4 p1, -0x1

    return p1
.end method

.method public getNoise()Lio/blueflower/stapel2d/util/OpenSimplexNoise;
    .registers 4

    .line 627
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    if-nez v0, :cond_14

    .line 628
    new-instance v0, Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getSeed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lio/blueflower/stapel2d/util/OpenSimplexNoise;-><init>(J)V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/City;->noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    .line 630
    :cond_14
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->noise:Lio/blueflower/stapel2d/util/OpenSimplexNoise;

    return-object v0
.end method

.method public getOriginalDaytime()F
    .registers 2

    .line 728
    iget v0, p0, Linfo/flowersoft/theotown/city/City;->originalDaytime:F

    return v0
.end method

.method public getPipes()Linfo/flowersoft/theotown/city/PipeList;
    .registers 2

    .line 591
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->pipes:Linfo/flowersoft/theotown/city/PipeList;

    return-object v0
.end method

.method public getRails()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Rail;",
            ">;"
        }
    .end annotation

    .line 595
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->rails:Ljava/util/List;

    return-object v0
.end method

.method public getRank()Linfo/flowersoft/theotown/draft/RankDraft;
    .registers 2

    .line 497
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->rank:Linfo/flowersoft/theotown/draft/RankDraft;

    return-object v0
.end method

.method public getRankUpgradeAbsDay()J
    .registers 3

    .line 501
    iget-wide v0, p0, Linfo/flowersoft/theotown/city/City;->rankUpgradeAbsDay:J

    return-wide v0
.end method

.method public getRawLuaStorage()Lvm2/LuaTable;
    .registers 2

    .line 304
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->luaStorage:Lvm2/LuaTable;

    return-object v0
.end method

.method public getRoads()Linfo/flowersoft/theotown/city/RoadList;
    .registers 2

    .line 579
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->roads:Linfo/flowersoft/theotown/city/RoadList;

    return-object v0
.end method

.method public getRotatedHeight()I
    .registers 2

    .line 672
    iget v0, p0, Linfo/flowersoft/theotown/city/City;->rotation:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_9

    iget v0, p0, Linfo/flowersoft/theotown/city/City;->height:I

    return v0

    :cond_9
    iget v0, p0, Linfo/flowersoft/theotown/city/City;->width:I

    return v0
.end method

.method public getRotatedWidth()I
    .registers 2

    .line 668
    iget v0, p0, Linfo/flowersoft/theotown/city/City;->rotation:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_9

    iget v0, p0, Linfo/flowersoft/theotown/city/City;->width:I

    return v0

    :cond_9
    iget v0, p0, Linfo/flowersoft/theotown/city/City;->height:I

    return v0
.end method

.method public getRotation()I
    .registers 2

    .line 541
    iget v0, p0, Linfo/flowersoft/theotown/city/City;->rotation:I

    return v0
.end method

.method public getScale()F
    .registers 3

    .line 1574
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getScenarioDraft()Linfo/flowersoft/theotown/draft/ScenarioDraft;
    .registers 2

    .line 387
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->scenarioDraft:Linfo/flowersoft/theotown/draft/ScenarioDraft;

    return-object v0
.end method

.method public getScenarioInfo()Linfo/flowersoft/theotown/city/ScenarioInfo;
    .registers 2

    .line 378
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->scenarioInfo:Linfo/flowersoft/theotown/city/ScenarioInfo;

    return-object v0
.end method

.method public getSeed()Ljava/lang/String;
    .registers 2

    .line 615
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->seed:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetScale()F
    .registers 3

    .line 1591
    iget v0, p0, Linfo/flowersoft/theotown/city/City;->targetScale:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_8

    return v0

    .line 1594
    :cond_8
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v0

    return v0
.end method

.method public getTargetXp()I
    .registers 2

    .line 407
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->targetXp:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    return v0
.end method

.method public getTileHeight(II)I
    .registers 9

    .line 1635
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    .line 1636
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v0

    .line 1637
    iget-object v2, p0, Linfo/flowersoft/theotown/city/City;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v2

    .line 1638
    iget-object v3, p0, Linfo/flowersoft/theotown/city/City;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object v3

    .line 1639
    iget-object v4, p0, Linfo/flowersoft/theotown/city/City;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v4

    .line 1640
    iget-object v5, p0, Linfo/flowersoft/theotown/city/City;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v5

    if-eqz v5, :cond_38

    .line 1644
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    iget p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    mul-int/lit8 p1, p1, 0x8

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getMaxTerrainLevel()I

    move-result p2

    mul-int/lit8 p2, p2, 0xc

    add-int/2addr p1, p2

    return p1

    :cond_38
    const/16 v5, 0x10

    if-nez v0, :cond_46

    if-eqz v4, :cond_3f

    goto :goto_46

    :cond_3f
    if-nez v3, :cond_43

    if-eqz v2, :cond_47

    :cond_43
    const/16 v1, 0x20

    goto :goto_47

    :cond_46
    :goto_46
    move v1, v5

    .line 1651
    :cond_47
    :goto_47
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 1653
    iget v0, v0, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    mul-int/lit8 v0, v0, 0xc

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v0, 0x10

    .line 1656
    :cond_59
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainAverageHeight()F

    move-result p1

    const/high16 p2, 0x41400000    # 12.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    add-int/2addr v1, p1

    :cond_68
    return v1
.end method

.method public getTiles()Linfo/flowersoft/theotown/city/Tiles;
    .registers 2

    .line 1288
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-object v0
.end method

.method public getTransitionVar(Ljava/lang/String;J)J
    .registers 5

    .line 357
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->transitionVars:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_f

    .line 359
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_f
    return-wide p2
.end method

.method public getTransitionVars()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->transitionVars:Ljava/util/Map;

    return-object v0
.end method

.method public getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;
    .registers 2

    .line 571
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    return-object v0
.end method

.method public getView()Lio/blueflower/stapel2d/util/ScreenRect;
    .registers 2

    .line 623
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    return-object v0
.end method

.method public getViewFX()F
    .registers 5

    .line 1268
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v0

    .line 1269
    iget-object v1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v1

    .line 1270
    iget-object v2, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoX(FF)F

    move-result v0

    return v0
.end method

.method public getViewFY()F
    .registers 5

    .line 1274
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v0

    .line 1275
    iget-object v1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v1

    .line 1276
    iget-object v2, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    div-float/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoY(FF)F

    move-result v0

    return v0
.end method

.method public getViewX()I
    .registers 5

    .line 1256
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v0

    .line 1257
    iget-object v1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v1

    .line 1258
    iget-object v2, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    float-to-int v0, v0

    div-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoX(II)I

    move-result v0

    return v0
.end method

.method public getViewY()I
    .registers 5

    .line 1262
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v0

    .line 1263
    iget-object v1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v1

    .line 1264
    iget-object v2, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    float-to-int v0, v0

    div-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoY(II)I

    move-result v0

    return v0
.end method

.method public getWaterTiles()I
    .registers 2

    .line 518
    iget v0, p0, Linfo/flowersoft/theotown/city/City;->waterTiles:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 676
    iget v0, p0, Linfo/flowersoft/theotown/city/City;->width:I

    return v0
.end method

.method public getWires()Linfo/flowersoft/theotown/city/WireList;
    .registers 2

    .line 587
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->wires:Linfo/flowersoft/theotown/city/WireList;

    return-object v0
.end method

.method public getZoneCounter()[I
    .registers 2

    .line 426
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->zoneCounter:[I

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 1712
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public hashCode(II)I
    .registers 4

    .line 1707
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->hashCode()I

    move-result v0

    mul-int/lit16 p1, p1, 0x3d1

    add-int/2addr v0, p1

    mul-int/lit16 p2, p2, 0xc91

    add-int/2addr v0, p2

    return v0
.end method

.method public isAllowPlugins()Z
    .registers 2

    .line 320
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/City;->allowPlugins:Z

    return v0
.end method

.method public isClickable(II)Z
    .registers 4

    const/16 v0, 0xe

    .line 1487
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/BuildMask;

    .line 1488
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/components/BuildMask;->isClickable(II)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method public isDirtyUIAndReset()Z
    .registers 3

    .line 249
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/City;->dirtyUI:Z

    const/4 v1, 0x0

    .line 250
    iput-boolean v1, p0, Linfo/flowersoft/theotown/city/City;->dirtyUI:Z

    return v0
.end method

.method public isDisposed()Z
    .registers 2

    .line 1569
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/City;->disposed:Z

    return v0
.end method

.method public isLeftSideTraffic()Z
    .registers 2

    .line 262
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/City;->leftSideTraffic:Z

    return v0
.end method

.method public isOnline()Z
    .registers 2

    .line 288
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/City;->online:Z

    return v0
.end method

.method public isReadonly()Z
    .registers 2

    .line 324
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/City;->readonly:Z

    return v0
.end method

.method public isRotatedValid(II)Z
    .registers 4

    if-ltz p1, :cond_12

    if-ltz p2, :cond_12

    .line 1284
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getRotatedWidth()I

    move-result v0

    if-ge p1, v0, :cond_12

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getRotatedHeight()I

    move-result p1

    if-ge p2, p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public isTutorial()Z
    .registers 2

    .line 493
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->cityInfo:Linfo/flowersoft/theotown/city/CityInfo;

    iget-object v0, v0, Linfo/flowersoft/theotown/city/CityInfo;->tutorialStage:Ljava/lang/String;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public isUber()Z
    .registers 2

    .line 337
    iget-boolean v0, p0, Linfo/flowersoft/theotown/city/City;->uber:Z

    return v0
.end method

.method public isValid(II)Z
    .registers 4

    if-ltz p1, :cond_e

    if-ltz p2, :cond_e

    .line 1280
    iget v0, p0, Linfo/flowersoft/theotown/city/City;->width:I

    if-ge p1, v0, :cond_e

    iget p1, p0, Linfo/flowersoft/theotown/city/City;->height:I

    if-ge p2, p1, :cond_e

    const/4 p1, 0x1

    return p1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public joinWorkers()V
    .registers 5

    .line 1555
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->components:[Linfo/flowersoft/theotown/city/components/CityComponent;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 1556
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/CityComponent;->join()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public move(FF)V
    .registers 6

    .line 1235
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftX()F

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v2

    div-float/2addr p1, v2

    add-float/2addr v1, p1

    iget-object p1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftY()F

    move-result p1

    iget-object v2, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v2

    div-float/2addr p2, v2

    add-float/2addr p1, p2

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V

    .line 1236
    iget-object p1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/IsoConverter;->halfWidth()F

    move-result p2

    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->halfHeight()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoX(FF)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    sub-float/2addr p1, p2

    .line 1237
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->halfWidth()F

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->halfHeight()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoY(FF)F

    move-result v0

    sub-float/2addr v0, p2

    .line 1238
    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/city/City;->setViewTo(FF)V

    return-void
.end method

.method public declared-synchronized nextDay()V
    .registers 6

    monitor-enter p0

    .line 694
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->components:[Linfo/flowersoft/theotown/city/components/CityComponent;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v1, :cond_12

    aget-object v4, v0, v3

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/components/CityComponent;->nextDay()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :catchall_10
    move-exception v0

    goto :goto_31

    .line 696
    :cond_12
    :goto_12
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->dateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_28

    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->dateListeners:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/DateListener;

    invoke-interface {v0}, Linfo/flowersoft/theotown/city/components/DateListener;->nextDay()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 698
    :cond_28
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->NEXT_DAY_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

    if-eqz v0, :cond_2f

    .line 699
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke()V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_10

    .line 701
    :cond_2f
    monitor-exit p0

    return-void

    :goto_31
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_10

    throw v0
.end method

.method public declared-synchronized nextMonth()V
    .registers 6

    monitor-enter p0

    .line 704
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->components:[Linfo/flowersoft/theotown/city/components/CityComponent;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v1, :cond_12

    aget-object v4, v0, v3

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/components/CityComponent;->nextMonth()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :catchall_10
    move-exception v0

    goto :goto_31

    .line 706
    :cond_12
    :goto_12
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->dateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_28

    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->dateListeners:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/DateListener;

    invoke-interface {v0}, Linfo/flowersoft/theotown/city/components/DateListener;->nextMonth()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 708
    :cond_28
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->NEXT_MONTH_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

    if-eqz v0, :cond_2f

    .line 709
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke()V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_10

    .line 711
    :cond_2f
    monitor-exit p0

    return-void

    :goto_31
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_10

    throw v0
.end method

.method public declared-synchronized nextYear()V
    .registers 6

    monitor-enter p0

    .line 714
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->components:[Linfo/flowersoft/theotown/city/components/CityComponent;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v1, :cond_12

    aget-object v4, v0, v3

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/components/CityComponent;->nextYear()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :catchall_10
    move-exception v0

    goto :goto_31

    .line 716
    :cond_12
    :goto_12
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->dateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_28

    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->dateListeners:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/DateListener;

    invoke-interface {v0}, Linfo/flowersoft/theotown/city/components/DateListener;->nextYear()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 718
    :cond_28
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->NEXT_YEAR_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

    if-eqz v0, :cond_2f

    .line 719
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke()V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_10

    .line 721
    :cond_2f
    monitor-exit p0

    return-void

    :goto_31
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_10

    throw v0
.end method

.method public declared-synchronized onCancelMouse()V
    .registers 2

    monitor-enter p0

    const/16 v0, 0xd

    .line 1550
    :try_start_3
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/Tool;

    .line 1551
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/Tool;->cancelMouse()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    .line 1552
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public declared-synchronized onClick(II)V
    .registers 22

    move-object/from16 v1, p0

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    .line 1492
    :try_start_7
    invoke-virtual/range {p0 .. p2}, Linfo/flowersoft/theotown/city/City;->resolveScreenToTile(II)Linfo/flowersoft/theotown/city/City$ScreenToTileData;

    move-result-object v6

    .line 1493
    iget v7, v6, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->x:I

    .line 1494
    iget v8, v6, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->y:I

    .line 1495
    iget v9, v6, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->fx:F

    .line 1496
    iget v6, v6, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->fy:F

    .line 1497
    invoke-virtual {v1, v7, v8}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v10

    .line 1498
    invoke-virtual {v1, v7, v8}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v7

    .line 1499
    invoke-virtual {v1, v9, v6}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(FF)F

    move-result v14

    .line 1500
    invoke-virtual {v1, v9, v6}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(FF)F

    move-result v15

    const/16 v6, 0xd

    .line 1502
    invoke-virtual {v1, v6}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Linfo/flowersoft/theotown/city/components/Tool;

    const/16 v6, 0xe

    .line 1503
    invoke-virtual {v1, v6}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/city/components/BuildMask;

    .line 1505
    iget-object v8, v1, Linfo/flowersoft/theotown/city/City;->CLICK_EARLY_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

    if-eqz v8, :cond_62

    .line 1506
    invoke-static {v10}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v9

    invoke-static {v7}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v13

    invoke-static/range {p2 .. p2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v16

    const/16 v18, 0x3

    new-array v0, v3, [Lvm2/LuaValue;

    aput-object v9, v0, v5

    aput-object v12, v0, v4

    aput-object v13, v0, v2

    aput-object v16, v0, v18

    .line 1505
    invoke-static {v0}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object v0

    invoke-virtual {v8, v0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(Lvm2/Varargs;)Z

    move-result v0
    :try_end_5c
    .catchall {:try_start_7 .. :try_end_5c} :catchall_60

    if-nez v0, :cond_64

    .line 1507
    monitor-exit p0

    return-void

    :catchall_60
    move-exception v0

    goto :goto_c2

    :cond_62
    const/16 v18, 0x3

    .line 1509
    :cond_64
    :try_start_64
    invoke-virtual {v6, v10, v7}, Linfo/flowersoft/theotown/city/components/BuildMask;->correct(II)[I

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 1511
    aget v10, v0, v5

    .line 1512
    aget v7, v0, v4

    :cond_6e
    move v13, v7

    move v12, v10

    .line 1515
    invoke-virtual {v6, v12, v13}, Linfo/flowersoft/theotown/city/components/BuildMask;->isClickable(II)Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-virtual {v1, v12, v13}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-nez v0, :cond_82

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/components/Tool;->ensureValidPosition()Z

    move-result v0

    if-nez v0, :cond_8a

    :cond_82
    move/from16 v16, p1

    move/from16 v17, p2

    .line 1516
    invoke-virtual/range {v11 .. v17}, Linfo/flowersoft/theotown/city/components/Tool;->click(IIFFII)V

    goto :goto_99

    .line 1517
    :cond_8a
    invoke-virtual {v1, v12, v13}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-nez v0, :cond_99

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/components/Tool;->ensureValidPosition()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 1519
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->closeOrCancelTool()V

    .line 1522
    :cond_99
    :goto_99
    iget-object v0, v1, Linfo/flowersoft/theotown/city/City;->CLICK_HANDLER:Linfo/flowersoft/theotown/scripting/MethodCluster;

    if-eqz v0, :cond_be

    .line 1524
    invoke-static {v12}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v6

    invoke-static {v13}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v8

    invoke-static/range {p2 .. p2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v9

    new-array v3, v3, [Lvm2/LuaValue;

    aput-object v6, v3, v5

    aput-object v7, v3, v4

    aput-object v8, v3, v2

    aput-object v9, v3, v18

    .line 1523
    invoke-static {v3}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(Lvm2/Varargs;)Z

    .line 1528
    :cond_be
    iput v5, v1, Linfo/flowersoft/theotown/city/City;->drawArrayCounter:I
    :try_end_c0
    .catchall {:try_start_64 .. :try_end_c0} :catchall_60

    .line 1529
    monitor-exit p0

    return-void

    :goto_c2
    :try_start_c2
    monitor-exit p0
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_60

    throw v0
.end method

.method public declared-synchronized onMouseMove(FFZ)V
    .registers 13

    monitor-enter p0

    float-to-int v0, p1

    float-to-int v1, p2

    .line 1538
    :try_start_3
    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/city/City;->resolveScreenToTile(II)Linfo/flowersoft/theotown/city/City$ScreenToTileData;

    move-result-object v0

    .line 1539
    iget v2, v0, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->originalX:I

    .line 1540
    iget v3, v0, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->originalY:I

    .line 1541
    iget v1, v0, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->fx:F

    iget v4, v0, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->fy:F

    invoke-virtual {p0, v1, v4}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(FF)F

    move-result v4

    .line 1542
    iget v1, v0, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->fx:F

    iget v0, v0, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->fy:F

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(FF)F

    move-result v5

    const/16 v0, 0xd

    .line 1544
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Linfo/flowersoft/theotown/city/components/Tool;

    move v6, p1

    move v7, p2

    move v8, p3

    .line 1546
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/city/components/Tool;->mouseMove(IIFFFFZ)V
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_2c

    .line 1547
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception v0

    move-object p1, v0

    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2c

    throw p1
.end method

.method public originalToRotatedX(FF)F
    .registers 5

    .line 1352
    iget v0, p0, Linfo/flowersoft/theotown/city/City;->rotation:I

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    const/4 p1, 0x3

    if-eq v0, p1, :cond_f

    const/4 p1, 0x0

    return p1

    .line 1356
    :cond_f
    iget p1, p0, Linfo/flowersoft/theotown/city/City;->height:I

    int-to-float p1, p1

    sub-float/2addr p1, p2

    return p1

    .line 1355
    :cond_14
    iget p2, p0, Linfo/flowersoft/theotown/city/City;->width:I

    int-to-float p2, p2

    sub-float/2addr p2, p1

    :cond_18
    return p2

    :cond_19
    return p1
.end method

.method public originalToRotatedX(II)I
    .registers 6

    .line 1332
    iget v0, p0, Linfo/flowersoft/theotown/city/City;->rotation:I

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v2, 0x2

    if-eq v0, v2, :cond_14

    const/4 p1, 0x3

    if-eq v0, p1, :cond_f

    const/4 p1, 0x0

    return p1

    .line 1336
    :cond_f
    iget p1, p0, Linfo/flowersoft/theotown/city/City;->height:I

    sub-int/2addr p1, v1

    sub-int/2addr p1, p2

    return p1

    .line 1335
    :cond_14
    iget p2, p0, Linfo/flowersoft/theotown/city/City;->width:I

    sub-int/2addr p2, v1

    sub-int/2addr p2, p1

    :cond_18
    return p2

    :cond_19
    return p1
.end method

.method public originalToRotatedY(FF)F
    .registers 5

    .line 1362
    iget v0, p0, Linfo/flowersoft/theotown/city/City;->rotation:I

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    const/4 p2, 0x3

    if-eq v0, p2, :cond_e

    const/4 p1, 0x0

    :cond_e
    return p1

    .line 1365
    :cond_f
    iget p1, p0, Linfo/flowersoft/theotown/city/City;->height:I

    int-to-float p1, p1

    sub-float/2addr p1, p2

    return p1

    .line 1364
    :cond_14
    iget p2, p0, Linfo/flowersoft/theotown/city/City;->width:I

    int-to-float p2, p2

    sub-float/2addr p2, p1

    :cond_18
    return p2
.end method

.method public originalToRotatedY(II)I
    .registers 6

    .line 1342
    iget v0, p0, Linfo/flowersoft/theotown/city/City;->rotation:I

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    const/4 p2, 0x3

    if-eq v0, p2, :cond_e

    const/4 p1, 0x0

    :cond_e
    return p1

    .line 1345
    :cond_f
    iget p1, p0, Linfo/flowersoft/theotown/city/City;->height:I

    sub-int/2addr p1, v1

    sub-int/2addr p1, p2

    return p1

    .line 1344
    :cond_14
    iget p2, p0, Linfo/flowersoft/theotown/city/City;->width:I

    sub-int/2addr p2, v1

    sub-int/2addr p2, p1

    :cond_18
    return p2
.end method

.method public prepare(Lio/blueflower/stapel2d/util/Setter;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 639
    iput v0, p0, Linfo/flowersoft/theotown/city/City;->waterTiles:I

    move v1, v0

    .line 640
    :goto_4
    iget v2, p0, Linfo/flowersoft/theotown/city/City;->height:I

    if-ge v1, v2, :cond_22

    move v2, v0

    .line 641
    :goto_9
    iget v3, p0, Linfo/flowersoft/theotown/city/City;->width:I

    if-ge v2, v3, :cond_1f

    .line 642
    iget v3, p0, Linfo/flowersoft/theotown/city/City;->waterTiles:I

    iget-object v4, p0, Linfo/flowersoft/theotown/city/City;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, v2, v1}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Linfo/flowersoft/theotown/city/City;->waterTiles:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_22
    move v1, v0

    .line 646
    :goto_23
    sget-object v2, Linfo/flowersoft/theotown/city/components/ComponentType;->values:[I

    array-length v2, v2

    if-ge v1, v2, :cond_51

    .line 647
    iget-object v2, p0, Linfo/flowersoft/theotown/city/City;->components:[Linfo/flowersoft/theotown/city/components/CityComponent;

    aget-object v2, v2, v1

    if-eqz v2, :cond_31

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 648
    :cond_31
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No component "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Linfo/flowersoft/theotown/city/components/ComponentType;->names:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " set!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 652
    :cond_51
    const-string v1, "Prepare City"

    if-eqz p2, :cond_58

    invoke-static {v1}, Linfo/flowersoft/theotown/util/StopWatch;->start(Ljava/lang/String;)V

    :cond_58
    move v2, v0

    .line 653
    :goto_59
    iget-object v3, p0, Linfo/flowersoft/theotown/city/City;->components:[Linfo/flowersoft/theotown/city/components/CityComponent;

    array-length v4, v3

    if-ge v2, v4, :cond_75

    .line 654
    aget-object v3, v3, v2

    .line 655
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/CityComponent;->prepare()V

    add-int/lit8 v2, v2, 0x1

    int-to-float v3, v2

    .line 656
    iget-object v4, p0, Linfo/flowersoft/theotown/city/City;->components:[Linfo/flowersoft/theotown/city/components/CityComponent;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    goto :goto_59

    .line 658
    :cond_75
    :goto_75
    iget-object v2, p0, Linfo/flowersoft/theotown/city/City;->components:[Linfo/flowersoft/theotown/city/components/CityComponent;

    array-length v3, v2

    if-ge v0, v3, :cond_b1

    .line 659
    aget-object v2, v2, v0

    .line 660
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/components/CityComponent;->finishPrepare()V

    add-int/lit8 v0, v0, 0x1

    .line 661
    iget-object v3, p0, Linfo/flowersoft/theotown/city/City;->components:[Linfo/flowersoft/theotown/city/components/CityComponent;

    array-length v4, v3

    add-int/2addr v4, v0

    int-to-float v4, v4

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    if-eqz p2, :cond_75

    .line 662
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Joined "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StopWatch;->step(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    :cond_b1
    if-eqz p2, :cond_b6

    .line 664
    invoke-static {v1}, Linfo/flowersoft/theotown/util/StopWatch;->stop(Ljava/lang/String;)V

    :cond_b6
    return-void
.end method

.method public removeDateListener(Linfo/flowersoft/theotown/city/components/DateListener;)V
    .registers 3

    .line 489
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->dateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeNeighbor(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;)V
    .registers 3

    .line 446
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->neighbors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetTargetScale()V
    .registers 2

    const/high16 v0, -0x40800000    # -1.0f

    .line 1588
    iput v0, p0, Linfo/flowersoft/theotown/city/City;->targetScale:F

    return-void
.end method

.method public resolveScreenToTile(II)Linfo/flowersoft/theotown/city/City$ScreenToTileData;
    .registers 31

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/16 v3, 0xd

    .line 1377
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/components/Tool;

    .line 1378
    instance-of v4, v3, Linfo/flowersoft/theotown/tools/DefaultTool;

    if-eqz v4, :cond_1b

    check-cast v3, Linfo/flowersoft/theotown/tools/DefaultTool;

    iget-boolean v3, v3, Linfo/flowersoft/theotown/tools/DefaultTool;->drawUnderground:Z

    if-nez v3, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v3, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v3, 0x1

    .line 1379
    :goto_1c
    new-instance v4, Linfo/flowersoft/theotown/city/City$ScreenToTileData;

    invoke-direct {v4}, Linfo/flowersoft/theotown/city/City$ScreenToTileData;-><init>()V

    const/16 v7, 0x10

    :goto_23
    if-ltz v7, :cond_232

    mul-int/lit8 v8, v7, 0xc

    int-to-float v8, v8

    .line 1382
    iget-object v9, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    .line 1383
    iget-object v9, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    add-int/2addr v8, v2

    invoke-virtual {v9, v1, v8}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoX(II)I

    move-result v9

    .line 1384
    iget-object v10, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v10, v1, v8}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoY(II)I

    move-result v10

    .line 1385
    invoke-virtual {v0, v9, v10}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v11

    .line 1386
    invoke-virtual {v0, v9, v10}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v12

    .line 1388
    invoke-virtual {v0, v11, v12}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v13

    if-eqz v13, :cond_8a

    .line 1389
    iget-object v13, v0, Linfo/flowersoft/theotown/city/City;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v13, v11, v12}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v13

    .line 1390
    iget-object v14, v0, Linfo/flowersoft/theotown/city/City;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v14, v11, v12}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v14

    .line 1391
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v13

    if-eq v13, v7, :cond_6f

    if-eqz v14, :cond_8a

    .line 1393
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v13

    iget-boolean v13, v13, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsSlope:Z

    if-nez v13, :cond_8a

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getMaxTerrainLevel()I

    move-result v13

    if-ne v13, v7, :cond_8a

    if-eqz v3, :cond_8a

    .line 1395
    :cond_6f
    iput v9, v4, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->x:I

    .line 1396
    iput v10, v4, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->y:I

    .line 1397
    iput v11, v4, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->originalX:I

    .line 1398
    iput v12, v4, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->originalY:I

    .line 1399
    iget-object v2, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    int-to-float v1, v1

    int-to-float v3, v8

    invoke-virtual {v2, v1, v3}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoX(FF)F

    move-result v2

    iput v2, v4, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->fx:F

    .line 1400
    iget-object v2, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v2, v1, v3}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoY(FF)F

    move-result v1

    iput v1, v4, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->fy:F

    return-object v4

    :cond_8a
    add-int/lit8 v8, v7, -0x1

    mul-int/lit8 v9, v8, 0xc

    int-to-float v9, v9

    .line 1405
    iget-object v10, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/16 v11, 0xc

    :goto_99
    if-ltz v11, :cond_228

    int-to-float v12, v9

    int-to-float v13, v11

    .line 1407
    iget-object v14, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v12, v12

    .line 1408
    iget-object v13, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    add-int/2addr v12, v2

    invoke-virtual {v13, v1, v12}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoX(II)I

    move-result v13

    .line 1409
    iget-object v14, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v14, v1, v12}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoY(II)I

    move-result v12

    .line 1410
    invoke-virtual {v0, v13, v12}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v14

    .line 1411
    invoke-virtual {v0, v13, v12}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v15

    .line 1413
    invoke-virtual {v0, v14, v15}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v16

    if-eqz v16, :cond_215

    .line 1414
    iget-object v5, v0, Linfo/flowersoft/theotown/city/City;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v14, v15}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    const/16 v17, 0x1

    .line 1415
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v6

    .line 1417
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v18

    if-nez v18, :cond_20c

    if-ne v6, v8, :cond_20c

    .line 1418
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainHeights()B

    move-result v6

    const/16 v18, 0xc

    iget v10, v0, Linfo/flowersoft/theotown/city/City;->rotation:I

    invoke-static {v6, v10}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v6

    and-int/lit8 v10, v6, 0x1

    shr-int/lit8 v19, v6, 0x1

    and-int/lit8 v19, v19, 0x1

    shr-int/lit8 v20, v6, 0x2

    and-int/lit8 v20, v20, 0x1

    shr-int/lit8 v6, v6, 0x3

    and-int/lit8 v6, v6, 0x1

    move/from16 v21, v3

    .line 1423
    iget-object v3, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v3, v13, v12}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(II)I

    move-result v3

    move/from16 v22, v3

    .line 1424
    iget-object v3, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    move/from16 v23, v6

    add-int/lit8 v6, v13, 0x1

    move/from16 v24, v7

    add-int/lit8 v7, v12, 0x1

    invoke-virtual {v3, v6, v7}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(II)I

    move-result v3

    add-int v25, v22, v3

    move/from16 v26, v3

    .line 1425
    div-int/lit8 v3, v25, 0x2

    move/from16 v25, v8

    .line 1428
    iget-object v8, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v8, v13, v12}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(II)I

    move-result v8

    int-to-float v8, v8

    mul-int/lit8 v10, v10, 0xc

    int-to-float v10, v10

    move/from16 v27, v8

    iget-object v8, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v8

    mul-float/2addr v10, v8

    sub-float v8, v27, v10

    .line 1429
    iget-object v10, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v10, v6, v7}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(II)I

    move-result v10

    int-to-float v10, v10

    move/from16 v27, v8

    mul-int/lit8 v8, v20, 0xc

    int-to-float v8, v8

    move/from16 v20, v8

    iget-object v8, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v8

    mul-float v8, v8, v20

    sub-float/2addr v10, v8

    .line 1430
    iget-object v8, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v8, v13, v7}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(II)I

    move-result v7

    int-to-float v7, v7

    mul-int/lit8 v8, v23, 0xc

    int-to-float v8, v8

    move/from16 v20, v7

    iget-object v7, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v7

    mul-float/2addr v8, v7

    sub-float v7, v20, v8

    add-float v8, v27, v10

    const/high16 v20, 0x40000000    # 2.0f

    div-float v8, v8, v20

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1431
    iget-object v8, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v8, v6, v12}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(II)I

    move-result v6

    int-to-float v6, v6

    mul-int/lit8 v8, v19, 0xc

    int-to-float v8, v8

    move/from16 v19, v6

    iget-object v6, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v6

    mul-float/2addr v8, v6

    sub-float v6, v19, v8

    const/high16 v8, 0x3f800000    # 1.0f

    if-ge v1, v3, :cond_184

    sub-int v10, v1, v22

    int-to-float v10, v10

    sub-int v3, v3, v22

    int-to-float v3, v3

    div-float/2addr v10, v3

    sub-float/2addr v8, v10

    mul-float v8, v8, v27

    mul-float/2addr v7, v10

    add-float/2addr v7, v8

    float-to-int v3, v7

    mul-float/2addr v10, v6

    add-float/2addr v8, v10

    float-to-int v6, v8

    goto :goto_197

    :cond_184
    move/from16 v19, v8

    sub-int v8, v1, v3

    int-to-float v8, v8

    sub-int v3, v26, v3

    int-to-float v3, v3

    div-float/2addr v8, v3

    sub-float v3, v19, v8

    mul-float/2addr v7, v3

    mul-float/2addr v8, v10

    add-float/2addr v7, v8

    float-to-int v7, v7

    mul-float/2addr v3, v6

    add-float/2addr v3, v8

    float-to-int v6, v3

    move v3, v7

    :goto_197
    add-int v7, v2, v9

    if-lt v7, v3, :cond_21e

    if-gt v7, v6, :cond_21e

    .line 1444
    iput v13, v4, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->x:I

    .line 1445
    iput v12, v4, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->y:I

    .line 1446
    iput v14, v4, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->originalX:I

    .line 1447
    iput v15, v4, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->originalY:I

    const/4 v3, 0x0

    move v6, v3

    move v7, v6

    const/4 v8, 0x0

    .line 1452
    :goto_1a9
    sget-object v9, Linfo/flowersoft/theotown/city/City;->xyOffsets:[I

    array-length v10, v9

    if-ge v8, v10, :cond_1f6

    .line 1453
    aget v10, v9, v8

    add-int/lit8 v11, v8, 0x1

    .line 1454
    aget v9, v9, v11

    .line 1455
    iget-object v11, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    add-int v14, v13, v10

    add-int v15, v12, v9

    invoke-virtual {v11, v14, v15}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(II)I

    move-result v11

    int-to-float v11, v11

    move/from16 v16, v3

    .line 1456
    iget-object v3, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v3, v14, v15}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(II)I

    move-result v3

    int-to-float v3, v3

    iget v14, v0, Linfo/flowersoft/theotown/city/City;->rotation:I

    div-int/lit8 v15, v8, 0x2

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, 0x3

    .line 1457
    invoke-virtual {v5, v14}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainHeight(I)B

    move-result v14

    mul-int/lit8 v14, v14, 0xc

    int-to-float v14, v14

    iget-object v15, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v15

    mul-float/2addr v14, v15

    sub-float/2addr v3, v14

    int-to-float v14, v1

    sub-float/2addr v14, v11

    int-to-float v11, v2

    sub-float/2addr v11, v3

    mul-float/2addr v14, v14

    mul-float/2addr v11, v11

    add-float/2addr v14, v11

    float-to-double v14, v14

    .line 1460
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v3, v14

    int-to-float v10, v10

    mul-float/2addr v10, v3

    add-float/2addr v6, v10

    int-to-float v9, v9

    mul-float/2addr v9, v3

    add-float/2addr v7, v9

    add-float v3, v16, v3

    add-int/lit8 v8, v8, 0x2

    goto :goto_1a9

    :cond_1f6
    move/from16 v16, v3

    int-to-float v1, v13

    mul-float v3, v16, v20

    sub-float v2, v3, v6

    const/high16 v5, 0x40400000    # 3.0f

    mul-float v5, v5, v16

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    .line 1466
    iput v1, v4, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->fx:F

    int-to-float v1, v12

    sub-float/2addr v3, v7

    div-float/2addr v3, v5

    add-float/2addr v1, v3

    .line 1467
    iput v1, v4, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->fy:F

    return-object v4

    :cond_20c
    move/from16 v21, v3

    move/from16 v24, v7

    move/from16 v25, v8

    :goto_212
    const/16 v18, 0xc

    goto :goto_21e

    :cond_215
    move/from16 v21, v3

    move/from16 v24, v7

    move/from16 v25, v8

    const/16 v17, 0x1

    goto :goto_212

    :cond_21e
    :goto_21e
    add-int/lit8 v11, v11, -0x1

    move/from16 v3, v21

    move/from16 v7, v24

    move/from16 v8, v25

    goto/16 :goto_99

    :cond_228
    move/from16 v21, v3

    move/from16 v24, v7

    const/16 v17, 0x1

    add-int/lit8 v7, v24, -0x1

    goto/16 :goto_23

    .line 1476
    :cond_232
    iget-object v3, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoX(II)I

    move-result v3

    iput v3, v4, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->x:I

    .line 1477
    iget-object v3, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoY(II)I

    move-result v3

    iput v3, v4, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->y:I

    .line 1478
    iget v5, v4, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->x:I

    invoke-virtual {v0, v5, v3}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v3

    iput v3, v4, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->originalX:I

    .line 1479
    iget v3, v4, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->x:I

    iget v5, v4, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->y:I

    invoke-virtual {v0, v3, v5}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v3

    iput v3, v4, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->originalY:I

    .line 1480
    iget-object v3, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoX(FF)F

    move-result v3

    iput v3, v4, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->fx:F

    .line 1481
    iget-object v3, v0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoY(FF)F

    move-result v1

    iput v1, v4, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->fy:F

    return-object v4
.end method

.method public rotatedToOriginalX(FF)F
    .registers 5

    .line 1312
    iget v0, p0, Linfo/flowersoft/theotown/city/City;->rotation:I

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 p1, 0x3

    if-eq v0, p1, :cond_f

    const/4 p1, 0x0

    return p1

    :cond_f
    return p2

    .line 1315
    :cond_10
    iget p2, p0, Linfo/flowersoft/theotown/city/City;->width:I

    int-to-float p2, p2

    sub-float/2addr p2, p1

    return p2

    .line 1314
    :cond_15
    iget p1, p0, Linfo/flowersoft/theotown/city/City;->width:I

    int-to-float p1, p1

    sub-float/2addr p1, p2

    :cond_19
    return p1
.end method

.method public rotatedToOriginalX(II)I
    .registers 6

    .line 1292
    iget v0, p0, Linfo/flowersoft/theotown/city/City;->rotation:I

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    const/4 v2, 0x2

    if-eq v0, v2, :cond_10

    const/4 p1, 0x3

    if-eq v0, p1, :cond_f

    const/4 p1, 0x0

    return p1

    :cond_f
    return p2

    .line 1295
    :cond_10
    iget p2, p0, Linfo/flowersoft/theotown/city/City;->width:I

    sub-int/2addr p2, v1

    sub-int/2addr p2, p1

    return p2

    .line 1294
    :cond_15
    iget p1, p0, Linfo/flowersoft/theotown/city/City;->width:I

    sub-int/2addr p1, v1

    sub-int/2addr p1, p2

    :cond_19
    return p1
.end method

.method public rotatedToOriginalY(FF)F
    .registers 5

    .line 1322
    iget v0, p0, Linfo/flowersoft/theotown/city/City;->rotation:I

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    const/4 p2, 0x3

    if-eq v0, p2, :cond_f

    const/4 p1, 0x0

    return p1

    .line 1326
    :cond_f
    iget p2, p0, Linfo/flowersoft/theotown/city/City;->height:I

    int-to-float p2, p2

    sub-float/2addr p2, p1

    return p2

    .line 1325
    :cond_14
    iget p1, p0, Linfo/flowersoft/theotown/city/City;->height:I

    int-to-float p1, p1

    sub-float/2addr p1, p2

    :cond_18
    return p1

    :cond_19
    return p2
.end method

.method public rotatedToOriginalY(II)I
    .registers 6

    .line 1302
    iget v0, p0, Linfo/flowersoft/theotown/city/City;->rotation:I

    if-eqz v0, :cond_19

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v2, 0x2

    if-eq v0, v2, :cond_14

    const/4 p2, 0x3

    if-eq v0, p2, :cond_f

    const/4 p1, 0x0

    return p1

    .line 1306
    :cond_f
    iget p2, p0, Linfo/flowersoft/theotown/city/City;->height:I

    sub-int/2addr p2, v1

    sub-int/2addr p2, p1

    return p2

    .line 1305
    :cond_14
    iget p1, p0, Linfo/flowersoft/theotown/city/City;->height:I

    sub-int/2addr p1, v1

    sub-int/2addr p1, p2

    :cond_18
    return p1

    :cond_19
    return p2
.end method

.method public setAuthor(Ljava/lang/String;)V
    .registers 2

    .line 611
    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->author:Ljava/lang/String;

    return-void
.end method

.method public setBackground(Linfo/flowersoft/theotown/draft/AnimationDraft;)V
    .registers 3

    if-nez p1, :cond_c

    .line 271
    sget-object p1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v0, "$anim_blank00"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 273
    :cond_c
    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->backgroundDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-void
.end method

.method public setCityInfo(Linfo/flowersoft/theotown/city/CityInfo;)V
    .registers 2

    .line 370
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->cityInfo:Linfo/flowersoft/theotown/city/CityInfo;

    return-void
.end method

.method public setController(Linfo/flowersoft/theotown/city/CityController;)V
    .registers 2

    .line 349
    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->controller:Linfo/flowersoft/theotown/city/CityController;

    return-void
.end method

.method public setCurrentXp(I)V
    .registers 3

    .line 422
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->currentXp:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    return-void
.end method

.method public setDefaultTool(Linfo/flowersoft/theotown/city/components/Tool;)V
    .registers 2

    .line 514
    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->defaultTool:Linfo/flowersoft/theotown/city/components/Tool;

    return-void
.end method

.method public setDirtyUI()V
    .registers 2

    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Linfo/flowersoft/theotown/city/City;->dirtyUI:Z

    return-void
.end method

.method public setGameMode(Linfo/flowersoft/theotown/city/GameMode;)V
    .registers 3

    .line 564
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->mode:Linfo/flowersoft/theotown/city/GameMode;

    if-eq v0, p1, :cond_9

    .line 565
    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->mode:Linfo/flowersoft/theotown/city/GameMode;

    .line 566
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->setDirtyUI()V

    :cond_9
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    .line 473
    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->id:Ljava/lang/String;

    return-void
.end method

.method public setLastSimulationTimestamp(J)V
    .registers 3

    .line 434
    iput-wide p1, p0, Linfo/flowersoft/theotown/city/City;->lastSimulationTimestamp:J

    return-void
.end method

.method public setLeftSideTraffic(Z)V
    .registers 2

    .line 266
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/City;->leftSideTraffic:Z

    return-void
.end method

.method public setLuaStorage(Lvm2/LuaTable;)V
    .registers 2

    .line 299
    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->luaStorage:Lvm2/LuaTable;

    .line 300
    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/LuaUtil;->getProxy(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->luaStorageProxy:Lvm2/LuaTable;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 603
    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->name:Ljava/lang/String;

    return-void
.end method

.method public setOnline(ZLjava/lang/String;JZ)V
    .registers 6

    .line 292
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/City;->online:Z

    .line 293
    iput-object p2, p0, Linfo/flowersoft/theotown/city/City;->authorName:Ljava/lang/String;

    .line 294
    iput-wide p3, p0, Linfo/flowersoft/theotown/city/City;->authorId:J

    .line 295
    iput-boolean p5, p0, Linfo/flowersoft/theotown/city/City;->allowPlugins:Z

    return-void
.end method

.method public setRank(Linfo/flowersoft/theotown/draft/RankDraft;J)V
    .registers 4

    .line 505
    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->rank:Linfo/flowersoft/theotown/draft/RankDraft;

    .line 506
    iput-wide p2, p0, Linfo/flowersoft/theotown/city/City;->rankUpgradeAbsDay:J

    return-void
.end method

.method public setReadonly(Z)V
    .registers 2

    .line 333
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/City;->readonly:Z

    return-void
.end method

.method public setRotation(I)V
    .registers 4

    .line 545
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    .line 546
    :cond_7
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->halfWidth()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->halfHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/city/City;->resolveScreenToTile(II)Linfo/flowersoft/theotown/city/City$ScreenToTileData;

    move-result-object v0

    .line 547
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/City;->setRotationRaw(I)V

    .line 548
    iget p1, v0, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->originalX:I

    int-to-float p1, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    iget v0, v0, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->originalY:I

    int-to-float v0, v0

    add-float/2addr v0, v1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Linfo/flowersoft/theotown/city/City;->focus(FFF)V

    return-void
.end method

.method public setRotationRaw(I)V
    .registers 2

    add-int/lit8 p1, p1, 0x4

    .line 552
    rem-int/lit8 p1, p1, 0x4

    iput p1, p0, Linfo/flowersoft/theotown/city/City;->rotation:I

    return-void
.end method

.method public setScale(F)V
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    .line 1581
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0, p1, p1}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsScale(FF)V

    return-void
.end method

.method public setScenarioInfo(Linfo/flowersoft/theotown/city/ScenarioInfo;)V
    .registers 3

    .line 394
    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->scenarioInfo:Linfo/flowersoft/theotown/city/ScenarioInfo;

    if-eqz p1, :cond_13

    .line 396
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getId()Ljava/lang/String;

    move-result-object p1

    const-class v0, Linfo/flowersoft/theotown/draft/ScenarioDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/ScenarioDraft;

    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->scenarioDraft:Linfo/flowersoft/theotown/draft/ScenarioDraft;

    return-void

    :cond_13
    const/4 p1, 0x0

    .line 398
    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->scenarioDraft:Linfo/flowersoft/theotown/draft/ScenarioDraft;

    return-void
.end method

.method public setSeed(Ljava/lang/String;)V
    .registers 2

    .line 619
    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->seed:Ljava/lang/String;

    return-void
.end method

.method public setTargetScale(F)V
    .registers 2

    .line 1585
    iput p1, p0, Linfo/flowersoft/theotown/city/City;->targetScale:F

    return-void
.end method

.method public setTargetXp(I)V
    .registers 3

    .line 411
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->targetXp:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/SpecialInt;->set(I)V

    return-void
.end method

.method public setUber(Z)V
    .registers 2

    .line 341
    iput-boolean p1, p0, Linfo/flowersoft/theotown/city/City;->uber:Z

    return-void
.end method

.method public setView(Lio/blueflower/stapel2d/util/ScreenRect;)V
    .registers 3

    .line 634
    iput-object p1, p0, Linfo/flowersoft/theotown/city/City;->view:Lio/blueflower/stapel2d/util/ScreenRect;

    .line 635
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/IsoConverter;->setView(Lio/blueflower/stapel2d/util/ScreenRect;)V

    return-void
.end method

.method public setViewTo(FF)V
    .registers 7

    const/16 v0, -0x20

    int-to-float v0, v0

    .line 1247
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getRotatedWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    int-to-float v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    .line 1248
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getRotatedHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    int-to-float v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    add-float/2addr p2, v1

    .line 1250
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftX()F

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->halfWidth()F

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 1251
    iget-object v1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftY()F

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->halfHeight()F

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v3, p1, p2}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result p1

    sub-float/2addr v2, p1

    iget-object p1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result p1

    div-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 1252
    iget-object p1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V

    return-void
.end method

.method public setViewToCenter()V
    .registers 4

    .line 1242
    iget v0, p0, Linfo/flowersoft/theotown/city/City;->width:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v2, p0, Linfo/flowersoft/theotown/city/City;->height:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/city/City;->setViewTo(FF)V

    return-void
.end method

.method public setWaterTiles(I)V
    .registers 2

    .line 522
    iput p1, p0, Linfo/flowersoft/theotown/city/City;->waterTiles:I

    return-void
.end method

.method public declared-synchronized update()V
    .registers 5

    monitor-enter p0

    .line 688
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->components:[Linfo/flowersoft/theotown/city/components/CityComponent;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    .line 689
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/CityComponent;->update()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catchall_f
    move-exception v0

    goto :goto_13

    .line 691
    :cond_11
    monitor-exit p0

    return-void

    :goto_13
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_f

    throw v0
.end method

.method public zoomIn(F)V
    .registers 3

    .line 1671
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->canZoomIn()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1672
    :cond_7
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v0

    mul-float/2addr p1, v0

    invoke-static {}, Linfo/flowersoft/theotown/city/City;->getMaxScale()F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1673
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/City;->setScale(F)V

    return-void
.end method

.method public zoomIn(FII)V
    .registers 9

    .line 1683
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->canZoomIn()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1685
    :cond_7
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    .line 1686
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftX()F

    move-result v1

    int-to-float p2, p2

    iget-object v2, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->halfWidth()F

    move-result v2

    sub-float v2, p2, v2

    iget-object v3, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    .line 1687
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftY()F

    move-result v2

    int-to-float p3, p3

    iget-object v3, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/IsoConverter;->halfHeight()F

    move-result v3

    sub-float v3, p3, v3

    iget-object v4, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 1685
    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V

    .line 1688
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/City;->zoomIn(F)V

    .line 1689
    iget-object p1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    .line 1690
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftX()F

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->halfWidth()F

    move-result v1

    sub-float/2addr p2, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v1

    div-float/2addr p2, v1

    add-float/2addr v0, p2

    iget-object p2, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    .line 1691
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftY()F

    move-result p2

    iget-object v1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->halfHeight()F

    move-result v1

    sub-float/2addr p3, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v1

    div-float/2addr p3, v1

    add-float/2addr p2, p3

    .line 1689
    invoke-virtual {p1, v0, p2}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V

    return-void
.end method

.method public zoomOut(F)V
    .registers 3

    .line 1677
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->canZoomOut()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    .line 1678
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result p1

    mul-float/2addr v0, p1

    invoke-static {}, Linfo/flowersoft/theotown/city/City;->getMinScale()F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1679
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/City;->setScale(F)V

    return-void
.end method

.method public zoomOut(FII)V
    .registers 9

    .line 1695
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->canZoomOut()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1697
    :cond_7
    iget-object v0, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    .line 1698
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftX()F

    move-result v1

    int-to-float p2, p2

    iget-object v2, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->halfWidth()F

    move-result v2

    sub-float v2, p2, v2

    iget-object v3, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    .line 1699
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftY()F

    move-result v2

    int-to-float p3, p3

    iget-object v3, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/IsoConverter;->halfHeight()F

    move-result v3

    sub-float v3, p3, v3

    iget-object v4, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 1697
    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V

    .line 1700
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/City;->zoomOut(F)V

    .line 1701
    iget-object p1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    .line 1702
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftX()F

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->halfWidth()F

    move-result v1

    sub-float/2addr p2, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v1

    div-float/2addr p2, v1

    add-float/2addr v0, p2

    iget-object p2, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    .line 1703
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftY()F

    move-result p2

    iget-object v1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->halfHeight()F

    move-result v1

    sub-float/2addr p3, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/city/City;->iso:Linfo/flowersoft/theotown/city/IsoConverter;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v1

    div-float/2addr p3, v1

    add-float/2addr p2, p3

    .line 1701
    invoke-virtual {p1, v0, p2}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V

    return-void
.end method

###### Class info.flowersoft.theotown.city.City.ScreenToTileData (info.flowersoft.theotown.city.City$ScreenToTileData)
.class public final Linfo/flowersoft/theotown/city/City$ScreenToTileData;
.super Ljava/lang/Object;
.source "City.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/City;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenToTileData"
.end annotation


# instance fields
.field public fx:F

.field public fy:F

.field public originalX:I

.field public originalY:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
