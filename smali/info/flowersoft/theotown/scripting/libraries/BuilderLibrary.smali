###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary (info.flowersoft.theotown.scripting.libraries.BuilderLibrary)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;
.super Linfo/flowersoft/theotown/scripting/ManagedLibrary;
.source "BuilderLibrary.java"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;


# instance fields
.field public final budget:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

.field public final terrainBuilder:Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;

.field public final zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 61
    const-string v0, "libs/Builder.lua"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->city:Linfo/flowersoft/theotown/city/City;

    .line 64
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 65
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    .line 66
    new-instance v1, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultBudget;

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 68
    new-instance p1, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;-><init>(Linfo/flowersoft/theotown/city/modifier/CityModifier;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->terrainBuilder:Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;
    .registers 3

    .line 51
    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;
    .registers 1

    .line 51
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/components/DefaultBudget;
    .registers 1

    .line 51
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;
    .registers 1

    .line 51
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Ljava/lang/String;)V
    .registers 2

    .line 51
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;->assertPrivileged(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 51
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/Tiles;
    .registers 1

    .line 51
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-object p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/Varargs;)Linfo/flowersoft/theotown/city/modifier/RoadBuilder;
    .registers 2

    .line 51
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->prepareRoadBuilder(Lvm2/Varargs;)Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;
    .registers 1

    .line 51
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->terrainBuilder:Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

    return-object p0
.end method

.method private resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linfo/flowersoft/theotown/draft/Draft;",
            ">(",
            "Lvm2/LuaValue;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 848
    invoke-virtual {p1}, Lvm2/LuaValue;->istable()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 849
    sget-object v0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->origKey:Lvm2/LuaValue;

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->get(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    invoke-static {p1, p2}, Lvm2/lib/jse/CoerceLuaToJava;->coerce(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/Draft;

    return-object p1

    .line 850
    :cond_13
    invoke-virtual {p1}, Lvm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 851
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    return-object p1

    .line 852
    :cond_22
    invoke-virtual {p1, p2}, Lvm2/LuaValue;->isuserdata(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 853
    invoke-static {p1, p2}, Lvm2/lib/jse/CoerceLuaToJava;->coerce(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/Draft;

    return-object p1

    :cond_2f
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
    .registers 5

    .line 73
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->city:Linfo/flowersoft/theotown/city/City;

    .line 74
    invoke-static {p2}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object p2

    iget-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    .line 75
    invoke-static {p3}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object p3

    .line 73
    const-string v0, "init"

    invoke-virtual {p1, v0, p2, p3}, Lvm2/LuaValue;->method(Ljava/lang/String;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 78
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$1;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$1;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "isBuildingBuildable"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 92
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$2;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$2;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "getBuildingPrice"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 104
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$3;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$3;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "buildBuilding"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 137
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$4;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$4;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "finishBuilding"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 156
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$5;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$5;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "getBuildingUpgradePrice"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 174
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$6;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$6;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "buildBuildingUpgrade"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 193
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$7;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$7;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "removeBuildingUpgrade"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 211
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$8;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$8;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "isRoadBuildable"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 221
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$9;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$9;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "getRoadPrice"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 232
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$10;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$10;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "buildRoad"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 247
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$11;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$11;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "isPipeBuildable"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 262
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$12;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$12;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "getPipePrice"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 279
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$13;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$13;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "buildPipe"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 297
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$14;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$14;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "removePipe"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 315
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$15;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$15;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "isWireBuildable"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 330
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$16;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$16;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "getWirePrice"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 347
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$17;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$17;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "buildWire"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 365
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$18;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$18;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "removeWire"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 394
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$19;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$19;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "isTreeBuildable"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 404
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$20;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$20;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "getTreePrice"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 415
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$21;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$21;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "buildTree"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 435
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$22;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$22;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "isRoadDecoBuildable"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 450
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$23;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$23;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "getRoadDecoPrice"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 461
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$24;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$24;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "buildRoadDeco"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 487
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$25;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$25;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "removeRoadDeco"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 512
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$26;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$26;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "isGroundBuildable"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 532
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$27;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$27;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "getGroundPrice"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 555
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$28;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$28;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "removeGround"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 575
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$29;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$29;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "buildGround"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 612
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$30;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$30;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "remove"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 621
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$31;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$31;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "buildZone"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 630
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$32;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$32;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "getZonePrice"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 642
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$33;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$33;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "isFenceBuildable"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 656
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$34;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$34;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "buildFence"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 671
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$35;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$35;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "buildFenceAround"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 687
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$36;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$36;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "removeFence"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 705
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$37;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$37;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "removeFenceWithin"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 722
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$38;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$38;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "setTerrainHeight"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 740
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$39;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$39;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "getTerrainHeightPrice"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 754
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$40;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$40;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "isTerrainHeightBuildable"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 771
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$41;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$41;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "isBusStopBuildable"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 782
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$42;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$42;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "getBusStopPrice"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 793
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$43;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$43;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "buildBusStop"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 808
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$44;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$44;-><init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V

    const-string p3, "removeBusStop"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method

.method public final prepareRoadBuilder(Lvm2/Varargs;)Linfo/flowersoft/theotown/city/modifier/RoadBuilder;
    .registers 13

    const/4 v0, 0x1

    .line 829
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    const-class v2, Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-direct {p0, v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/RoadDraft;

    const/4 v2, 0x2

    .line 830
    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkint(I)I

    move-result v2

    const/4 v3, 0x3

    .line 831
    invoke-virtual {p1, v3}, Lvm2/Varargs;->checkint(I)I

    move-result v3

    const/4 v4, 0x4

    .line 832
    invoke-virtual {p1, v4}, Lvm2/Varargs;->checkint(I)I

    move-result v4

    const/4 v5, 0x5

    .line 833
    invoke-virtual {p1, v5}, Lvm2/Varargs;->checkint(I)I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x0

    .line 834
    invoke-virtual {p1, v6, v7}, Lvm2/Varargs;->optint(II)I

    move-result v6

    const/4 v8, 0x7

    .line 835
    invoke-virtual {p1, v8, v7}, Lvm2/Varargs;->optint(II)I

    move-result v8

    const/16 v9, 0x8

    .line 836
    invoke-virtual {p1, v9, v7}, Lvm2/Varargs;->optboolean(IZ)Z

    move-result p1

    .line 837
    iget-object v9, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getRoadBuilder()Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    move-result-object v9

    .line 838
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v10

    invoke-virtual {v10}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getSender()Lvm2/LuaValue;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    .line 839
    invoke-virtual {v9, v2, v3, v4, v5}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    .line 840
    invoke-virtual {v9, v6, v8, v7}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setRelativeLevelStartTarget(IIZ)V

    if-eqz p1, :cond_4f

    add-int/2addr v6, v0

    .line 842
    invoke-virtual {v9, v0, v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setInnerLevels(II)V

    :cond_4f
    return-object v9
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass1 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$1)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$1;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 78
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 12

    .line 81
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v1

    const-class v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    const/4 v0, 0x2

    .line 82
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v3

    const/4 v0, 0x3

    .line 83
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v4

    const/4 v0, 0x4

    .line 84
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v0

    const/4 v1, 0x5

    .line 85
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1, v8}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v1

    const/4 v5, 0x6

    .line 86
    invoke-virtual {p1, v5}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lvm2/LuaValue;->optint(I)I

    move-result v7

    .line 87
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    .line 88
    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object p1

    xor-int/lit8 v5, v0, 0x1

    xor-int/lit8 v6, v1, 0x1

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;IIZZI)Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    move-result-object p1

    if-nez p1, :cond_50

    goto :goto_51

    :cond_50
    move v8, v9

    .line 87
    :goto_51
    invoke-static {v8}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass10 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$10)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$10;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 232
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    .line 235
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/Varargs;)Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->isBuildable()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 238
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->build()V

    .line 240
    :cond_f
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getSender()Lvm2/LuaValue;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    .line 241
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass11 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$11)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$11;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 247
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$11;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    .line 250
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$11;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v1

    const-class v2, Linfo/flowersoft/theotown/draft/PipeDraft;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Linfo/flowersoft/theotown/draft/PipeDraft;

    if-eqz v2, :cond_34

    const/4 v0, 0x2

    .line 252
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v3

    const/4 v0, 0x3

    .line 253
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v4

    const/4 v0, 0x4

    .line 254
    invoke-virtual {p1, v0, v3}, Lvm2/Varargs;->optint(II)I

    move-result v5

    const/4 v0, 0x5

    .line 255
    invoke-virtual {p1, v0, v4}, Lvm2/Varargs;->optint(II)I

    move-result v6

    .line 256
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$11;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/PipeDraft;IIII)Z

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 258
    :cond_34
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass12 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$12)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$12;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 262
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    .line 265
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v1

    const-class v2, Linfo/flowersoft/theotown/draft/PipeDraft;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Linfo/flowersoft/theotown/draft/PipeDraft;

    if-eqz v2, :cond_41

    const/4 v0, 0x2

    .line 267
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v3

    const/4 v0, 0x3

    .line 268
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v4

    const/4 v0, 0x4

    .line 269
    invoke-virtual {p1, v0, v3}, Lvm2/Varargs;->optint(II)I

    move-result v5

    const/4 v0, 0x5

    .line 270
    invoke-virtual {p1, v0, v4}, Lvm2/Varargs;->optint(II)I

    move-result v6

    .line 271
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/PipeDraft;IIII)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 272
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPrice(Linfo/flowersoft/theotown/draft/PipeDraft;IIII)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1

    .line 275
    :cond_41
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass13 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$13)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$13;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 279
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    .line 282
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v1

    const-class v2, Linfo/flowersoft/theotown/draft/PipeDraft;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Linfo/flowersoft/theotown/draft/PipeDraft;

    if-eqz v2, :cond_3d

    const/4 v0, 0x2

    .line 284
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v3

    const/4 v0, 0x3

    .line 285
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v4

    const/4 v0, 0x4

    .line 286
    invoke-virtual {p1, v0, v3}, Lvm2/Varargs;->optint(II)I

    move-result v5

    const/4 v0, 0x5

    .line 287
    invoke-virtual {p1, v0, v4}, Lvm2/Varargs;->optint(II)I

    move-result v6

    .line 288
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/PipeDraft;IIII)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 289
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/PipeDraft;IIII)Ljava/util/List;

    .line 290
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 293
    :cond_3d
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass14 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$14)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$14;
.super Lvm2/lib/TwoArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 297
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$14;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 300
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 301
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 302
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$14;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 303
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$14;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 305
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$14;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Pipe;II)V

    .line 306
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 309
    :cond_2c
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass15 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$15)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$15;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 315
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$15;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    .line 318
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$15;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v1

    const-class v2, Linfo/flowersoft/theotown/draft/WireDraft;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Linfo/flowersoft/theotown/draft/WireDraft;

    if-eqz v2, :cond_34

    const/4 v0, 0x2

    .line 320
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v3

    const/4 v0, 0x3

    .line 321
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v4

    const/4 v0, 0x4

    .line 322
    invoke-virtual {p1, v0, v3}, Lvm2/Varargs;->optint(II)I

    move-result v5

    const/4 v0, 0x5

    .line 323
    invoke-virtual {p1, v0, v4}, Lvm2/Varargs;->optint(II)I

    move-result v6

    .line 324
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$15;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/WireDraft;IIII)Z

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 326
    :cond_34
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass16 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$16)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$16;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 330
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    .line 333
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v1

    const-class v2, Linfo/flowersoft/theotown/draft/WireDraft;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Linfo/flowersoft/theotown/draft/WireDraft;

    if-eqz v2, :cond_41

    const/4 v0, 0x2

    .line 335
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v3

    const/4 v0, 0x3

    .line 336
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v4

    const/4 v0, 0x4

    .line 337
    invoke-virtual {p1, v0, v3}, Lvm2/Varargs;->optint(II)I

    move-result v5

    const/4 v0, 0x5

    .line 338
    invoke-virtual {p1, v0, v4}, Lvm2/Varargs;->optint(II)I

    move-result v6

    .line 339
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/WireDraft;IIII)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 340
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPrice(Linfo/flowersoft/theotown/draft/WireDraft;IIII)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1

    .line 343
    :cond_41
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass17 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$17)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$17;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 347
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    .line 350
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v1

    const-class v2, Linfo/flowersoft/theotown/draft/WireDraft;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Linfo/flowersoft/theotown/draft/WireDraft;

    if-eqz v2, :cond_3d

    const/4 v0, 0x2

    .line 352
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v3

    const/4 v0, 0x3

    .line 353
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v4

    const/4 v0, 0x4

    .line 354
    invoke-virtual {p1, v0, v3}, Lvm2/Varargs;->optint(II)I

    move-result v5

    const/4 v0, 0x5

    .line 355
    invoke-virtual {p1, v0, v4}, Lvm2/Varargs;->optint(II)I

    move-result v6

    .line 356
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/WireDraft;IIII)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 357
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/WireDraft;IIII)Ljava/util/List;

    .line 358
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 361
    :cond_3d
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass18 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$18)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$18;
.super Lvm2/lib/ThreeArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 365
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 368
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 369
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 370
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 371
    invoke-virtual {p3}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 p3, 0x1

    :goto_1b
    const/4 v0, -0x1

    if-lt p3, v0, :cond_55

    .line 373
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 375
    iget-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object p3

    invoke-virtual {p3, v0, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Wire;II)V

    .line 376
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_36
    add-int/lit8 p3, p3, -0x1

    goto :goto_1b

    .line 380
    :cond_39
    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p3

    .line 381
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object p3

    if-eqz p3, :cond_55

    .line 383
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v0

    invoke-virtual {v0, p3, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Wire;II)V

    .line 384
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 388
    :cond_55
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass19 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$19)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$19;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    .line 397
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    const-class v2, Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/TreeDraft;

    const/4 v1, 0x2

    .line 398
    invoke-virtual {p1, v1}, Lvm2/Varargs;->checkint(I)I

    move-result v1

    const/4 v2, 0x3

    .line 399
    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkint(I)I

    move-result p1

    .line 400
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/TreeDraft;II)Z

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass2 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$2)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$2;
.super Lvm2/lib/ThreeArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 92
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 95
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const-class p3, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {p2, p1, p3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz p1, :cond_1d

    .line 97
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/BuildingDraft;I)J

    move-result-wide p1

    long-to-double p1, p1

    invoke-static {p1, p2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1

    .line 99
    :cond_1d
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass20 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$20)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$20;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 404
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 407
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const-class v1, Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-static {v0, p1, v1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/TreeDraft;

    if-eqz p1, :cond_21

    .line 409
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/TreeDraft;)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1

    .line 411
    :cond_21
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass21 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$21)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$21;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public onInvoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 8

    .line 418
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const-class v3, Linfo/flowersoft/theotown/draft/TreeDraft;

    invoke-static {v0, v2, v3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/TreeDraft;

    const/4 v2, 0x2

    .line 419
    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkint(I)I

    move-result v2

    const/4 v3, 0x3

    .line 420
    invoke-virtual {p1, v3}, Lvm2/Varargs;->checkint(I)I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, -0x1

    .line 421
    invoke-virtual {p1, v4, v5}, Lvm2/Varargs;->optint(II)I

    move-result p1

    .line 422
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/TreeDraft;II)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 423
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/TreeDraft;II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v0

    if-ltz p1, :cond_3a

    .line 425
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/Tree;->setFrame(I)V

    .line 427
    :cond_3a
    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    :cond_3f
    const/4 p1, 0x0

    .line 429
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass22 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$22)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$22;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 435
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 8

    .line 438
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const-class v3, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    invoke-static {v0, v2, v3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    const/4 v2, 0x2

    .line 439
    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkint(I)I

    move-result v2

    const/4 v3, 0x3

    .line 440
    invoke-virtual {p1, v3}, Lvm2/Varargs;->checkint(I)I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 441
    invoke-virtual {p1, v4, v5}, Lvm2/Varargs;->optint(II)I

    move-result p1

    .line 442
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 443
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-virtual {v4, v2, v3, p1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_44

    .line 444
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isRoadDecorationBuildable(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;Linfo/flowersoft/theotown/city/objects/Road;)Z

    move-result p1

    if-eqz p1, :cond_44

    goto :goto_45

    :cond_44
    move v1, v5

    :goto_45
    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 446
    :cond_4a
    invoke-static {v5}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass23 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$23)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$23;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 450
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 453
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const-class v1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    invoke-static {v0, p1, v1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    if-eqz p1, :cond_18

    .line 455
    iget p1, p1, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->price:I

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 457
    :cond_18
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass24 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$24)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$24;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 461
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 10

    .line 464
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const-class v3, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    invoke-static {v0, v2, v3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    const/4 v0, 0x2

    .line 465
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v0

    const/4 v2, 0x3

    .line 466
    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkint(I)I

    move-result v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 467
    invoke-virtual {p1, v4, v5}, Lvm2/Varargs;->optint(II)I

    move-result v4

    const/4 v6, 0x5

    .line 468
    invoke-virtual {p1, v6, v5}, Lvm2/Varargs;->optint(II)I

    move-result p1

    sub-int/2addr p1, v1

    .line 469
    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v6}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v6

    invoke-virtual {v6, v0, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 470
    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v6}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v6

    invoke-virtual {v6, v0, v2, v4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v4

    if-eqz v4, :cond_7d

    if-eqz v3, :cond_65

    .line 473
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isRoadDecorationBuildable(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;Linfo/flowersoft/theotown/city/objects/Road;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 474
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v2

    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getSender()Lvm2/LuaValue;

    move-result-object v6

    sget-boolean v7, Linfo/flowersoft/theotown/resources/Settings;->multiRoadDecorationSupport:Z

    move v5, p1

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildRoadDecoration(Linfo/flowersoft/theotown/draft/RoadDecorationDraft;Linfo/flowersoft/theotown/city/objects/Road;ILvm2/LuaValue;Z)V

    .line 475
    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 478
    :cond_65
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object p1

    iget v3, v4, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getSender()Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {p1, v0, v2, v3, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeAllRoadDecorations(IIILvm2/LuaValue;)V

    .line 479
    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 483
    :cond_7d
    invoke-static {v5}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass25 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$25)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$25;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 487
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    const/4 v0, 0x1

    .line 490
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v2

    const/4 v1, 0x2

    .line 491
    invoke-virtual {p1, v1}, Lvm2/Varargs;->checkint(I)I

    move-result v3

    const/4 v1, 0x3

    const/4 v4, 0x0

    .line 492
    invoke-virtual {p1, v1, v4}, Lvm2/Varargs;->optint(II)I

    move-result v1

    const/4 v5, 0x4

    .line 493
    invoke-virtual {p1, v5, v4}, Lvm2/Varargs;->optint(II)I

    move-result p1

    add-int/lit8 v5, p1, -0x1

    .line 494
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 495
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    invoke-virtual {p1, v2, v3, v1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_6a

    .line 497
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result v0

    if-lez v0, :cond_6a

    const/4 v0, -0x1

    if-ne v5, v0, :cond_4c

    .line 499
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v0

    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getSender()Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v0, v2, v3, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeAllRoadDecorations(IIILvm2/LuaValue;)V

    goto :goto_67

    :cond_4c
    if-ltz v5, :cond_67

    .line 500
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result v0

    if-ge v5, v0, :cond_67

    .line 501
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v1

    iget v4, p1, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getSender()Lvm2/LuaValue;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeRoadDecoration(IIIILvm2/LuaValue;)V

    .line 503
    :cond_67
    :goto_67
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 506
    :cond_6a
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass26 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$26)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$26;
.super Lvm2/lib/ThreeArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 512
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$26;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 9

    .line 515
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$26;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const-class v1, Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-static {v0, p1, v1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 516
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 517
    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p3

    .line 518
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$26;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-nez v1, :cond_21

    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1

    :cond_21
    if-eqz v0, :cond_26

    .line 520
    iget-boolean p1, v0, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    goto :goto_2a

    :cond_26
    invoke-virtual {p1}, Lvm2/LuaValue;->checkboolean()Z

    move-result p1

    .line 521
    :goto_2a
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$26;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4b

    .line 523
    iget v4, v0, Linfo/flowersoft/theotown/draft/GroundDraft;->level:I

    if-nez v4, :cond_3d

    goto :goto_4b

    .line 527
    :cond_3d
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result p1

    iget-boolean p2, v0, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    if-ne p1, p2, :cond_46

    move v2, v3

    :cond_46
    invoke-static {v2}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 524
    :cond_4b
    :goto_4b
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$26;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isTerrainBuildable(ZII)Z

    move-result p2

    if-nez p2, :cond_5d

    .line 525
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result p2

    if-ne p2, p1, :cond_5e

    :cond_5d
    move v2, v3

    .line 524
    :cond_5e
    invoke-static {v2}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass27 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$27)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$27;
.super Lvm2/lib/ThreeArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 532
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 8

    .line 535
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const-class v1, Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-static {v0, p1, v1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 536
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 537
    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p3

    .line 538
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_24

    invoke-static {v2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    :cond_24
    if-eqz v0, :cond_29

    .line 540
    iget-boolean p1, v0, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    goto :goto_2d

    :cond_29
    invoke-virtual {p1}, Lvm2/LuaValue;->checkboolean()Z

    move-result p1

    .line 541
    :goto_2d
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v1

    .line 543
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isTerrainBuildable(ZII)Z

    move-result p2

    if-nez p2, :cond_4c

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result p2

    if-eq p2, p1, :cond_4c

    .line 544
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    :cond_4c
    if-eqz v0, :cond_68

    .line 547
    iget-boolean p1, v0, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result p2

    if-ne p1, p2, :cond_68

    .line 548
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p1

    iget-boolean p2, v0, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPriceForTerrain(Z)J

    move-result-wide p1

    long-to-double p1, p1

    invoke-static {p1, p2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1

    .line 551
    :cond_68
    invoke-static {v2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass28 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$28)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$28;
.super Lvm2/lib/ThreeArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 555
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 558
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 559
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 560
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1

    :cond_17
    const/4 v0, 0x1

    .line 562
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    if-ne p3, v0, :cond_41

    .line 564
    iget-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGroundDraft2(II)Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object p3

    if-eqz p3, :cond_41

    .line 566
    iget-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Linfo/flowersoft/theotown/city/Tiles;->setGroundDraft2(IILinfo/flowersoft/theotown/draft/GroundDraft;)V

    .line 567
    iget-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Linfo/flowersoft/theotown/city/Tiles;->setGroundFrame2(III)V

    .line 568
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 571
    :cond_41
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass29 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$29)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$29;
.super Lvm2/lib/ThreeArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 575
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 9

    .line 578
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const-class v1, Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-static {v0, p1, v1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 579
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 580
    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p3

    .line 581
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-nez v1, :cond_21

    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1

    :cond_21
    if-eqz v0, :cond_26

    .line 583
    iget-boolean p1, v0, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    goto :goto_2a

    :cond_26
    invoke-virtual {p1}, Lvm2/LuaValue;->checkboolean()Z

    move-result p1

    :goto_2a
    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 584
    iget v2, v0, Linfo/flowersoft/theotown/draft/GroundDraft;->level:I

    goto :goto_31

    :cond_30
    move v2, v1

    .line 585
    :goto_31
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v3

    if-nez v2, :cond_67

    .line 588
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isTerrainBuildable(ZII)Z

    move-result v4

    if-nez v4, :cond_55

    .line 589
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v4

    if-ne v4, p1, :cond_50

    goto :goto_55

    .line 592
    :cond_50
    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 590
    :cond_55
    :goto_55
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v1

    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getSender()Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v1, p1, p2, p3, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildTerrain(ZIILvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/Ground;

    goto :goto_76

    .line 595
    :cond_67
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v1

    if-ne v1, p1, :cond_94

    .line 596
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v0}, Linfo/flowersoft/theotown/city/Tiles;->setGroundDraft2(IILinfo/flowersoft/theotown/draft/GroundDraft;)V

    :goto_76
    if-nez v2, :cond_91

    if-eqz v0, :cond_91

    .line 602
    iget-boolean p1, v0, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result p2

    if-ne p1, p2, :cond_91

    .line 603
    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/city/objects/Ground;->setDraft(Linfo/flowersoft/theotown/draft/GroundDraft;)V

    .line 604
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object p2, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    invoke-virtual {v3, p1}, Linfo/flowersoft/theotown/city/objects/Ground;->setFrame(I)V

    .line 607
    :cond_91
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 598
    :cond_94
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass3 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$3)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$3;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 104
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 11

    .line 107
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const-class v3, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {v0, v2, v3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Linfo/flowersoft/theotown/draft/BuildingDraft;

    const/4 v0, 0x2

    .line 108
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v4

    const/4 v0, 0x3

    .line 109
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v5

    .line 111
    invoke-virtual {p1}, Lvm2/Varargs;->narg()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_33

    .line 112
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    :goto_31
    move v6, p1

    goto :goto_35

    :cond_33
    const/4 p1, -0x1

    goto :goto_31

    :goto_35
    if-eqz v3, :cond_be

    .line 114
    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/BuildingDraft;->isSquare()Z

    move-result p1

    if-nez p1, :cond_41

    if-gez v6, :cond_41

    goto/16 :goto_be

    .line 119
    :cond_41
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v2

    move v8, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;IIZZI)Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    move-result-object p1

    if-nez p1, :cond_b8

    .line 120
    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/Draft;->isFinal()Z

    move-result p1

    if-eqz p1, :cond_60

    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->isPrivileged()Z

    move-result p1

    if-eqz p1, :cond_b8

    .line 121
    :cond_60
    iget-boolean p1, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildZone:Z

    if-eqz p1, :cond_a1

    iget-object p1, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eqz p1, :cond_a1

    iget-boolean p1, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->placeable:Z

    if-eqz p1, :cond_a1

    .line 122
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    move-result-object p1

    invoke-virtual {v3, v8}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v0

    add-int/2addr v0, v4

    sub-int/2addr v0, v1

    invoke-virtual {v3, v8}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result v2

    add-int/2addr v2, v5

    sub-int/2addr v2, v1

    invoke-virtual {p1, v4, v5, v0, v2}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->setArea(IIII)V

    .line 123
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    move-result-object p1

    iget-object v0, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->setZone(Linfo/flowersoft/theotown/draft/ZoneDraft;)V

    .line 124
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->isBuildable()Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 125
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->build()V

    .line 128
    :cond_a1
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v2

    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getSender()Lvm2/LuaValue;

    move-result-object v7

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/BuildingDraft;IIILvm2/LuaValue;)Ljava/util/List;

    .line 130
    invoke-static {v1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    :cond_b8
    const/4 p1, 0x0

    .line 132
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 116
    :cond_be
    :goto_be
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass30 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$30)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$30;
.super Lvm2/lib/TwoArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 612
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$30;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 615
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$30;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v0

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getSender()Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(IILvm2/LuaValue;)V

    .line 616
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass31 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$31)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$31;
.super Lvm2/lib/ThreeArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 621
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 624
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const-class v1, Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {v0, p1, v1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 625
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v0

    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p3

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->markZone(Linfo/flowersoft/theotown/draft/ZoneDraft;II)Z

    .line 626
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass32 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$32)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$32;
.super Lvm2/lib/ThreeArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 630
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$32;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 633
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$32;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const-class p3, Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {p2, p1, p3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 634
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$32;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPrice(Linfo/flowersoft/theotown/draft/ZoneDraft;I)J

    move-result-wide p1

    long-to-double p1, p1

    invoke-static {p1, p2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass33 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$33)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$33;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 642
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$33;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    .line 645
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$33;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    const-class v2, Linfo/flowersoft/theotown/draft/FenceDraft;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/FenceDraft;

    const/4 v1, 0x2

    .line 646
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x3

    .line 647
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->checkint()I

    move-result v2

    const/4 v3, 0x4

    .line 648
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    if-eqz v0, :cond_3f

    if-ltz p1, :cond_3f

    if-ge p1, v3, :cond_3f

    .line 649
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$33;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->canBuildFence(Linfo/flowersoft/theotown/draft/FenceDraft;III)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 650
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 652
    :cond_3f
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass34 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$34)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$34;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 656
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$34;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    .line 659
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$34;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    const-class v2, Linfo/flowersoft/theotown/draft/FenceDraft;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/FenceDraft;

    const/4 v1, 0x2

    .line 660
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x3

    .line 661
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->checkint()I

    move-result v2

    const/4 v3, 0x4

    .line 662
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    if-eqz v0, :cond_48

    if-ltz p1, :cond_48

    if-ge p1, v3, :cond_48

    .line 663
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$34;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->canBuildFence(Linfo/flowersoft/theotown/draft/FenceDraft;III)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 664
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$34;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildFence(Linfo/flowersoft/theotown/draft/FenceDraft;III)V

    .line 665
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 667
    :cond_48
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass35 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$35)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$35;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 671
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$35;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    .line 674
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$35;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    const-class v2, Linfo/flowersoft/theotown/draft/FenceDraft;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Linfo/flowersoft/theotown/draft/FenceDraft;

    const/4 v0, 0x2

    .line 675
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v3

    const/4 v0, 0x3

    .line 676
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v4

    const/4 v0, 0x4

    .line 677
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v5

    const/4 v0, 0x5

    .line 678
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result v6

    if-eqz v2, :cond_46

    if-lez v5, :cond_46

    if-lez v6, :cond_46

    .line 680
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$35;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildFenceAround(Linfo/flowersoft/theotown/draft/FenceDraft;IIII)V

    .line 681
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 683
    :cond_46
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass36 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$36)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$36;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 687
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$36;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    const/4 v0, 0x1

    .line 690
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    const/4 v1, 0x2

    .line 691
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x3

    .line 692
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    if-gez p1, :cond_36

    .line 693
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$36;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->hasFence(II)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 694
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$36;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeFences(II)V

    .line 695
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    :cond_36
    if-ltz p1, :cond_53

    const/4 v2, 0x4

    if-ge p1, v2, :cond_53

    .line 696
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$36;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getFence(III)Linfo/flowersoft/theotown/draft/FenceDraft;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 697
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$36;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeFence(III)V

    .line 698
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 700
    :cond_53
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass37 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$37)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$37;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 705
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    const/4 v0, 0x1

    .line 708
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    const/4 v1, 0x2

    .line 709
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x3

    .line 710
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->checkint()I

    move-result v2

    const/4 v3, 0x4

    .line 711
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    if-lez v2, :cond_40

    if-lez p1, :cond_40

    .line 712
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->containsFenceWithin(IIII)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 713
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeFenceWithin(IIII)V

    .line 714
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 716
    :cond_40
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass38 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$38)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$38;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 722
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$38;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    const/4 v0, 0x1

    .line 725
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v2

    const/4 v0, 0x2

    .line 726
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v3

    const/4 v0, 0x3

    .line 727
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    int-to-byte v4, v0

    const/4 v0, 0x4

    .line 728
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lvm2/LuaValue;->optboolean(Z)Z

    .line 729
    invoke-virtual {p0, v0}, Lvm2/LuaValue;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->isnil()Z

    move-result p1

    if-nez p1, :cond_55

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->isboolean()Z

    move-result p1

    if-eqz p1, :cond_3a

    goto :goto_55

    .line 732
    :cond_3a
    invoke-virtual {p0, v0}, Lvm2/LuaValue;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result v5

    const/4 p1, 0x5

    .line 733
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result v6

    .line 734
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$38;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->setTerrainHeight(IIIII)V

    goto :goto_66

    .line 730
    :cond_55
    :goto_55
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$38;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object p1

    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getSender()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {p1, v2, v3, v4, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->setTerrainHeight(IIILvm2/LuaValue;)V

    .line 736
    :goto_66
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass39 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$39)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$39;
.super Lvm2/lib/ThreeArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 740
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$39;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 743
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 744
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 745
    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p3

    .line 746
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$39;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$800(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->clear()V

    .line 747
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$39;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$800(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->addTarget(III)V

    .line 748
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$39;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$800(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->calculate()V

    .line 749
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$39;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$800(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->getMovedEarth()I

    move-result p1

    mul-int/lit8 p1, p1, 0x64

    int-to-long p1, p1

    .line 750
    iget-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$39;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$800(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

    move-result-object p3

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->clear()V

    long-to-double p1, p1

    .line 751
    invoke-static {p1, p2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass4 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$4)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$4;
.super Lvm2/lib/TwoArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 137
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 140
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const-string v1, "finishBuilding"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$400(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 142
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 143
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 144
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 147
    new-instance p2, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p2, v0, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getSender()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->finishBuilding(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    .line 150
    :cond_3e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass40 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$40)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$40;
.super Lvm2/lib/ThreeArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 754
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$40;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 757
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 758
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 759
    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p3

    .line 760
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$40;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$800(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->clear()V

    .line 761
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$40;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$800(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->addTarget(III)V

    .line 762
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$40;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$800(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->calculate()V

    .line 763
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$40;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$800(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->isBuildable()Z

    move-result p1

    .line 764
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$40;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$800(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->clear()V

    .line 765
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass41 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$41)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$41;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 771
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$41;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 7

    .line 774
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$41;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    const-class v2, Linfo/flowersoft/theotown/draft/BusStopDraft;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BusStopDraft;

    const/4 v1, 0x2

    .line 775
    invoke-virtual {p1, v1}, Lvm2/Varargs;->checkint(I)I

    move-result v1

    const/4 v2, 0x3

    .line 776
    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkint(I)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 777
    invoke-virtual {p1, v3, v4}, Lvm2/Varargs;->optint(II)I

    move-result p1

    .line 778
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$41;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BusStopDraft;III)Z

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass42 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$42)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$42;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 782
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$42;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 785
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$42;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const-class v1, Linfo/flowersoft/theotown/draft/BusStopDraft;

    invoke-static {v0, p1, v1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/BusStopDraft;

    if-eqz p1, :cond_21

    .line 787
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$42;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/DefaultBudget;->getPrice(Linfo/flowersoft/theotown/draft/BusStopDraft;)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1

    .line 789
    :cond_21
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass43 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$43)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$43;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 793
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$43;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 7

    .line 796
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$43;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    const-class v2, Linfo/flowersoft/theotown/draft/BusStopDraft;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BusStopDraft;

    const/4 v1, 0x2

    .line 797
    invoke-virtual {p1, v1}, Lvm2/Varargs;->checkint(I)I

    move-result v1

    const/4 v2, 0x3

    .line 798
    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkint(I)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 799
    invoke-virtual {p1, v3, v4}, Lvm2/Varargs;->optint(II)I

    move-result p1

    if-eqz v0, :cond_39

    .line 800
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$43;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BusStopDraft;III)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 801
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$43;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/BusStopDraft;III)Linfo/flowersoft/theotown/city/objects/BusStop;

    .line 802
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 804
    :cond_39
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass44 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$44)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$44;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 808
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$44;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    const/4 v0, 0x1

    .line 813
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v0

    const/4 v1, 0x2

    .line 814
    invoke-virtual {p1, v1}, Lvm2/Varargs;->checkint(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 815
    invoke-virtual {p1, v2, v3}, Lvm2/Varargs;->optint(II)I

    move-result p1

    .line 816
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$44;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$44;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    .line 817
    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 818
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v2

    if-eqz v2, :cond_3e

    const/4 v3, 0x0

    .line 819
    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/city/objects/Road;->setBusStop(Linfo/flowersoft/theotown/city/objects/BusStop;)V

    .line 820
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$44;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object p1

    invoke-virtual {p1, v2, v0, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/BusStop;II)V

    .line 821
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 823
    :cond_3e
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass5 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$5)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$5;
.super Lvm2/lib/ThreeArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 156
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 159
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const-class v1, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    invoke-static {v0, p1, v1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    .line 160
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 161
    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p3

    .line 162
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p2

    if-eqz p1, :cond_4a

    if-eqz p2, :cond_4a

    .line 165
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/city/objects/Building;->hasUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z

    move-result p3

    if-nez p3, :cond_4a

    .line 166
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z

    move-result p3

    if-nez p3, :cond_4a

    .line 167
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p3

    invoke-virtual {p3}, Linfo/flowersoft/theotown/draft/BuildingDraft;->hasUpgrades()Z

    move-result p3

    if-eqz p3, :cond_4a

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p2

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/BuildingDraft;->upgrades:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4a

    .line 168
    iget-wide p1, p1, Linfo/flowersoft/theotown/draft/UpgradeDraft;->price:J

    long-to-double p1, p1

    invoke-static {p1, p2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1

    .line 170
    :cond_4a
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass6 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$6)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$6;
.super Lvm2/lib/ThreeArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 174
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 177
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const-class v1, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    invoke-static {v0, p1, v1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    .line 178
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 179
    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p3

    .line 180
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p2

    if-eqz p2, :cond_59

    if-eqz p1, :cond_59

    .line 183
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/city/objects/Building;->hasUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z

    move-result p3

    if-nez p3, :cond_59

    .line 184
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z

    move-result p3

    if-nez p3, :cond_59

    .line 185
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p3

    invoke-virtual {p3}, Linfo/flowersoft/theotown/draft/BuildingDraft;->hasUpgrades()Z

    move-result p3

    if-eqz p3, :cond_59

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p3

    iget-object p3, p3, Linfo/flowersoft/theotown/draft/BuildingDraft;->upgrades:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_59

    .line 186
    iget-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {p3}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p3

    check-cast p3, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    invoke-virtual {p2, p1, v0, v1}, Linfo/flowersoft/theotown/city/objects/Building;->appendUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;J)V

    .line 187
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 189
    :cond_59
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass7 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$7)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$7;
.super Lvm2/lib/ThreeArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 193
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 196
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    const-class v1, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    invoke-static {v0, p1, v1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    .line 197
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 198
    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p3

    .line 199
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p2

    if-eqz p2, :cond_2c

    .line 201
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/city/objects/Building;->hasUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z

    move-result p3

    if-eqz p3, :cond_2c

    if-eqz p1, :cond_2c

    .line 202
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/city/objects/Building;->removeUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)V

    .line 203
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 205
    :cond_2c
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass8 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$8)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$8;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 211
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    .line 214
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/Varargs;)Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->isBuildable()Z

    move-result v0

    .line 216
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getSender()Lvm2/LuaValue;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    .line 217
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.BuilderLibrary.AnonymousClass9 (info.flowersoft.theotown.scripting.libraries.BuilderLibrary$9)
.class public Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$9;
.super Lvm2/lib/VarArgFunction;
.source "BuilderLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 221
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    .line 224
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/BuilderLibrary;Lvm2/Varargs;)Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->isBuildable()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 226
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->getPrice()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1

    .line 228
    :cond_16
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method
