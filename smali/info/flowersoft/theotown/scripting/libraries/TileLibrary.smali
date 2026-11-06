###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary (info.flowersoft.theotown.scripting.libraries.TileLibrary)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;
.super Linfo/flowersoft/theotown/scripting/ManagedLibrary;
.source "TileLibrary.java"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final date:Linfo/flowersoft/theotown/components/DefaultDate;

.field public final influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

.field public final m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 47
    const-string v0, "libs/Tile.lua"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->city:Linfo/flowersoft/theotown/city/City;

    .line 49
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 50
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v0, 0x2

    .line 51
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultInfluence;

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 38
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;
    .registers 1

    .line 38
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/components/DefaultInfluence;
    .registers 1

    .line 38
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/components/DefaultDate;
    .registers 1

    .line 38
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;
    .registers 1

    .line 38
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->m:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;Lio/blueflower/stapel2d/drawing/Color;)Lvm2/Varargs;
    .registers 2

    .line 38
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->colorToLua(Lio/blueflower/stapel2d/drawing/Color;)Lvm2/Varargs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final colorToLua(Lio/blueflower/stapel2d/drawing/Color;)Lvm2/Varargs;
    .registers 7

    .line 1789
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    .line 1790
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v1

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v1

    .line 1791
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v2

    invoke-static {v2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v2

    .line 1792
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getAlpha()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    const/4 v3, 0x4

    new-array v3, v3, [Lvm2/LuaValue;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object p1, v3, v0

    .line 1788
    invoke-static {v3}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
    .registers 4

    .line 57
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->city:Linfo/flowersoft/theotown/city/City;

    invoke-static {p2}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object p2

    const-string p3, "_init"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->method(Ljava/lang/String;Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 59
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$1;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$1;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isValid"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 68
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$2;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$2;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isWater"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 77
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$3;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$3;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isLand"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 86
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$4;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$4;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isCoast"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 95
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$5;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$5;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isTree"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 104
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$6;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$6;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getTreeDraft"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 117
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$7;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$7;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getTreeFrame"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 130
    const-string p2, "$water00"

    const-class p3, Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-static {p2, p3}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 131
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$8;

    invoke-direct {p3, p0, p2}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$8;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;Linfo/flowersoft/theotown/draft/GroundDraft;)V

    const-string p2, "getGroundDraft"

    invoke-virtual {p1, p2, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 172
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$9;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$9;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getGroundHeight"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 185
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$10;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$10;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "setGroundHeight"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 199
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$11;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$11;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getTerrainHeight"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 211
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$12;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$12;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getCornerTerrainHeight"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 234
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$13;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$13;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isSlope"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 247
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$14;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$14;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isFlat"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 260
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$15;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$15;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getInfluence"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 272
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$16;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$16;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isBuilding"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 284
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$17;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$17;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isBuildingWorking"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 297
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$18;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$18;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isBuildingInConstruction"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 310
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$19;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$19;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isBuildingUpgradeInConstruction"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 323
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$20;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$20;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "hasBuildingNeededRoad"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 336
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$21;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$21;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "hasBuildingRoad"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 349
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$22;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$22;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isBuildingBurning"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 362
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$23;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$23;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isBuildingIll"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 375
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$24;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$24;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isBuildingFullOfWaste"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 388
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$25;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$25;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isBuildingFullOfDeadPeople"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 401
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$26;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$26;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isBuildingEmpty"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 414
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$27;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$27;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "hasBuildingUpgrade"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 428
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$28;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$28;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "hasBuildingPendingUpgrade"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 443
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$29;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$29;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "extinguishBurningBuilding"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 462
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$30;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$30;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "pauseBuildingAnimation"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 480
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$31;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$31;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "resumeBuildingAnimation"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 499
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$32;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$32;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "spawnBuildingPedestrian"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 516
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$33;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$33;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getBuildingFrame"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 531
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$34;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$34;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "setBuildingFrame"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 547
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$35;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$35;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getBuildingName"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 562
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$36;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$36;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "setBuildingName"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 578
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$37;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$37;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getBuildingPerformance"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 593
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$38;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$38;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "setBuildingPerformance"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 609
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$39;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$39;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getBuildingDraft"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 624
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$40;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$40;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getBuildingXY"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 641
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$41;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$41;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getBuildingDrawXY"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 659
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$42;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$42;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isBuildingUntouchable"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 674
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$43;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$43;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "setBuildingUntouchable"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 690
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$44;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$44;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getBuildingStorage"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 705
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$45;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$45;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getBuildingDaysBuilt"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 725
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$46;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$46;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "setBuildingAnimationFrame"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 744
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$47;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$47;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getBuildingAnimationFrame"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 761
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$48;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$48;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isBuildingAnimationPaused"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 777
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$49;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$49;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "setBuildingAnimationColor"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 798
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$50;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$50;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getBuildingAnimationColor"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 815
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$51;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$51;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "abandonBuilding"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 830
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$52;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$52;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isRoad"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 843
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$53;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$53;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "hasRoad"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 855
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$54;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$54;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getRoadFrame"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 871
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$55;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$55;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getRoadDraft"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 887
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$56;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$56;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getRoadStorage"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 903
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$57;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$57;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getRoadTraffic"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 919
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$58;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$58;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getRoadCarCount"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 935
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$59;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$59;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getRoadChargeableCarCount"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 951
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$60;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$60;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isRoadDeco"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 967
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$61;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$61;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getRoadDeco"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 987
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$62;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$62;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "countRoadDecos"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1003
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$63;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$63;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "hasRoadOccupation"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1020
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$64;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$64;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "hasFence"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1035
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$65;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$65;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "hasFenceWithin"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1046
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$66;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$66;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getFenceDraft"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1062
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$67;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$67;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isBusStop"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1078
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$68;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$68;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getBusStop"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1097
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$69;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$69;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getRoadAlign"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1113
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$70;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$70;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "setRoadAlignment"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1130
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$71;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$71;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "setRoadOneWayAlignment"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1147
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$72;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$72;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getRoadDirection"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1163
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$73;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$73;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isRoadPile"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1179
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$74;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$74;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "setRoadPile"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1196
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$75;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$75;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getRoadAbsoluteLevel"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1212
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$76;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$76;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isRoadSlope"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1228
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$77;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$77;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getRoadSlopeDirection"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1244
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$78;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$78;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "countRoadBridgeType"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1260
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$79;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$79;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getRoadBridgeType"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1276
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$80;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$80;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "setRoadBridgeType"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1294
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$81;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$81;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getRoadOccupation"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1310
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$82;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$82;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "setRoadOccupation"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1328
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$83;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$83;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isPipe"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1340
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$84;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$84;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getPipeDraft"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1355
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$85;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$85;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getPipeFrame"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1370
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$86;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$86;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "hasWire"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1382
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$87;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$87;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isWire"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1396
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$88;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$88;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getWireDraft"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1412
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$89;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$89;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getWireFrame"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1428
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$90;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$90;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getZoneDraft"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1445
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$91;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$91;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isWirePole"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1461
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$92;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$92;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "setWirePole"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1479
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$93;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$93;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "setBuildingIcon"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1496
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$94;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$94;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getBuildingIcon"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1515
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$95;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$95;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "setRoadAnimationFrame"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1535
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$96;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$96;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getRoadAnimationFrame"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1553
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$97;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$97;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isRoadAnimationPaused"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1570
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$98;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$98;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "setRoadAnimationColor"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1592
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$99;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$99;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getRoadAnimationColor"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1610
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$100;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$100;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "pauseRoadAnimation"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1629
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$101;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$101;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "resumeRoadAnimation"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1652
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$102;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$102;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "setRoadAnimationFrameFG"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1672
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$103;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$103;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getRoadAnimationFrameFG"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1690
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$104;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$104;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "isRoadAnimationPausedFG"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1707
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$105;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$105;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "setRoadAnimationColorFG"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1729
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$106;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$106;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "getRoadAnimationColorFG"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1747
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$107;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$107;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "pauseRoadAnimationFG"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 1766
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$108;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$108;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V

    const-string p3, "resumeRoadAnimationFG"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass1 (info.flowersoft.theotown.scripting.libraries.TileLibrary$1)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$1;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 59
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 62
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 63
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 64
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass10 (info.flowersoft.theotown.scripting.libraries.TileLibrary$10)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$10;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 185
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 188
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 189
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 190
    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p3

    .line 191
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 192
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    int-to-short p2, p3

    .line 193
    iput-short p2, p1, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    .line 195
    :cond_25
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass100 (info.flowersoft.theotown.scripting.libraries.TileLibrary$100)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$100;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1610
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$100;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 8

    .line 1613
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    const/4 v1, 0x2

    .line 1614
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x3

    .line 1615
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->optint(I)I

    move-result v2

    const/4 v3, 0x4

    .line 1616
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    sub-int/2addr p1, v3

    .line 1617
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$100;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v4

    .line 1618
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$100;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1619
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$100;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v5

    invoke-virtual {v5, v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_56

    const/4 v1, 0x0

    .line 1621
    invoke-virtual {v0, p1, v1, v4}, Linfo/flowersoft/theotown/city/objects/Road;->setAnimationFrameSpeed(IFI)V

    .line 1622
    invoke-virtual {v0, v4, p1}, Linfo/flowersoft/theotown/city/objects/Road;->activeAnimationSpotFrame(II)I

    move-result p1

    add-int/2addr p1, v3

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 1625
    :cond_56
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass101 (info.flowersoft.theotown.scripting.libraries.TileLibrary$101)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$101;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1629
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$101;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/LuaValue;
    .registers 9

    .line 1632
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    const/4 v1, 0x2

    .line 1633
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x3

    .line 1634
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->optint(I)I

    move-result v2

    const/4 v3, 0x4

    .line 1635
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lvm2/LuaValue;->optint(I)I

    move-result v3

    sub-int/2addr v3, v4

    const/4 v5, 0x5

    .line 1636
    invoke-virtual {p1, v5}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v5, v6}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v5

    double-to-float p1, v5

    .line 1637
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$101;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v5

    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v5

    .line 1638
    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$101;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v6}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 1639
    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$101;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v6}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v6

    invoke-virtual {v6, v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 1641
    invoke-virtual {v0, v3, p1, v5}, Linfo/flowersoft/theotown/city/objects/Road;->setAnimationFrameSpeed(IFI)V

    .line 1642
    invoke-virtual {v0, v5, v3}, Linfo/flowersoft/theotown/city/objects/Road;->activeAnimationSpotFrame(II)I

    move-result p1

    add-int/2addr p1, v4

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 1645
    :cond_61
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

    .line 1629
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$101;->invoke(Lvm2/Varargs;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass102 (info.flowersoft.theotown.scripting.libraries.TileLibrary$102)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$102;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1652
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$102;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    const/4 v0, 0x1

    .line 1655
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x2

    .line 1656
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->checkint()I

    move-result v2

    const/4 v3, 0x3

    .line 1657
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lvm2/LuaValue;->optint(I)I

    move-result v3

    const/4 v4, 0x4

    .line 1658
    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lvm2/LuaValue;->checkint()I

    move-result v4

    sub-int/2addr v4, v0

    const/4 v5, 0x5

    .line 1659
    invoke-virtual {p1, v5}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    sub-int/2addr p1, v0

    .line 1660
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$102;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v5

    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v5

    .line 1661
    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$102;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v6}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 1662
    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$102;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v6}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v6

    invoke-virtual {v6, v1, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 1664
    invoke-virtual {v1, p1, v4, v5}, Linfo/flowersoft/theotown/city/objects/Road;->setAnimationFrameOffsetFG(III)V

    .line 1665
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 1668
    :cond_5a
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass103 (info.flowersoft.theotown.scripting.libraries.TileLibrary$103)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$103;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1672
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$103;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 7

    .line 1675
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    const/4 v1, 0x2

    .line 1676
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x3

    .line 1677
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->optint(I)I

    move-result v2

    const/4 v3, 0x4

    .line 1678
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    sub-int/2addr p1, v3

    .line 1679
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$103;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v3

    .line 1680
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$103;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 1681
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$103;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 1683
    invoke-virtual {v0, v3, p1}, Linfo/flowersoft/theotown/city/objects/Road;->activeAnimationSpotFrameFG(II)I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 1686
    :cond_51
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass104 (info.flowersoft.theotown.scripting.libraries.TileLibrary$104)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$104;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1690
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$104;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 8

    .line 1693
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    const/4 v1, 0x2

    .line 1694
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x3

    .line 1695
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->optint(I)I

    move-result v2

    const/4 v4, 0x4

    .line 1696
    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    sub-int/2addr p1, v4

    .line 1697
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$104;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 1698
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$104;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v5

    invoke-virtual {v5, v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 1700
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/Road;->getAnimationFrameSpeedFG(I)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_48

    move v3, v4

    :cond_48
    invoke-static {v3}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 1703
    :cond_4d
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass105 (info.flowersoft.theotown.scripting.libraries.TileLibrary$105)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$105;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1707
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$105;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 10

    .line 1710
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    const/4 v1, 0x2

    .line 1711
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x3

    .line 1712
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->optint(I)I

    move-result v2

    const/4 v3, 0x4

    .line 1713
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lvm2/LuaValue;->checkint()I

    move-result v3

    const/4 v4, 0x5

    .line 1714
    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lvm2/LuaValue;->checkint()I

    move-result v4

    const/4 v5, 0x6

    .line 1715
    invoke-virtual {p1, v5}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5}, Lvm2/LuaValue;->checkint()I

    move-result v5

    const/4 v6, 0x7

    .line 1716
    invoke-virtual {p1, v6}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v6

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Lvm2/LuaValue;->optint(I)I

    move-result v6

    const/16 v7, 0x8

    .line 1717
    invoke-virtual {p1, v7}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    sub-int/2addr p1, v7

    .line 1718
    iget-object v7, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$105;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v7}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 1719
    iget-object v7, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$105;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v7}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v7

    invoke-virtual {v7, v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 1721
    new-instance v1, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, v3, v4, v5, v6}, Lio/blueflower/stapel2d/drawing/Color;-><init>(IIII)V

    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/city/objects/Road;->setAnimationFrameColorFG(ILio/blueflower/stapel2d/drawing/Color;)V

    .line 1722
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 1725
    :cond_70
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass106 (info.flowersoft.theotown.scripting.libraries.TileLibrary$106)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$106;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1729
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$106;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    .line 1732
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    const/4 v1, 0x2

    .line 1733
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x3

    .line 1734
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->optint(I)I

    move-result v2

    const/4 v3, 0x4

    .line 1735
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    sub-int/2addr p1, v3

    .line 1736
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$106;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1737
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$106;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 1739
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/Road;->getAnimationFrameColorFG(I)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    .line 1740
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$106;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;Lio/blueflower/stapel2d/drawing/Color;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 1743
    :cond_49
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass107 (info.flowersoft.theotown.scripting.libraries.TileLibrary$107)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$107;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1747
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$107;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 8

    .line 1750
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    const/4 v1, 0x2

    .line 1751
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x3

    .line 1752
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->optint(I)I

    move-result v2

    const/4 v3, 0x4

    .line 1753
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    sub-int/2addr p1, v3

    .line 1754
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$107;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v4

    .line 1755
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$107;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1756
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$107;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v5

    invoke-virtual {v5, v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_56

    const/4 v1, 0x0

    .line 1758
    invoke-virtual {v0, p1, v1, v4}, Linfo/flowersoft/theotown/city/objects/Road;->setAnimationFrameSpeedFG(IFI)V

    .line 1759
    invoke-virtual {v0, v4, p1}, Linfo/flowersoft/theotown/city/objects/Road;->activeAnimationSpotFrameFG(II)I

    move-result p1

    add-int/2addr p1, v3

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 1762
    :cond_56
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass108 (info.flowersoft.theotown.scripting.libraries.TileLibrary$108)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$108;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1766
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$108;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/LuaValue;
    .registers 9

    .line 1769
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    const/4 v1, 0x2

    .line 1770
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x3

    .line 1771
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->optint(I)I

    move-result v2

    const/4 v3, 0x4

    .line 1772
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lvm2/LuaValue;->optint(I)I

    move-result v3

    sub-int/2addr v3, v4

    const/4 v5, 0x5

    .line 1773
    invoke-virtual {p1, v5}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v5, v6}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v5

    double-to-float p1, v5

    .line 1774
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$108;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v5

    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v5

    .line 1775
    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$108;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v6}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 1776
    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$108;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v6}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v6

    invoke-virtual {v6, v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 1778
    invoke-virtual {v0, v3, p1, v5}, Linfo/flowersoft/theotown/city/objects/Road;->setAnimationFrameSpeedFG(IFI)V

    .line 1779
    invoke-virtual {v0, v5, v3}, Linfo/flowersoft/theotown/city/objects/Road;->activeAnimationSpotFrameFG(II)I

    move-result p1

    add-int/2addr p1, v4

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 1782
    :cond_61
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

    .line 1766
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$108;->invoke(Lvm2/Varargs;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass11 (info.flowersoft.theotown.scripting.libraries.TileLibrary$11)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$11;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 199
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$11;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 202
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 203
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 204
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$11;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 205
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$11;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainAvgHeight(II)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1

    .line 207
    :cond_24
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass12 (info.flowersoft.theotown.scripting.libraries.TileLibrary$12)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$12;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 7

    .line 214
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 215
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 218
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1a

    add-int/lit8 p1, p1, -0x1

    move v0, v1

    goto :goto_1b

    :cond_1a
    move v0, v2

    .line 222
    :goto_1b
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v3

    if-ne p2, v3, :cond_2a

    add-int/lit8 p2, p2, -0x1

    goto :goto_2b

    :cond_2a
    move v1, v2

    .line 226
    :goto_2b
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 227
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    .line 228
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result p2

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainHeight(II)B

    move-result p1

    add-int/2addr p2, p1

    invoke-static {p2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 230
    :cond_4f
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass13 (info.flowersoft.theotown.scripting.libraries.TileLibrary$13)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$13;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 234
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 237
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 238
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 240
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 243
    :cond_29
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass14 (info.flowersoft.theotown.scripting.libraries.TileLibrary$14)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$14;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$14;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 250
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 251
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 252
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$14;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 253
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$14;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 256
    :cond_27
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass15 (info.flowersoft.theotown.scripting.libraries.TileLibrary$15)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$15;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 260
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$15;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 263
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 264
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 265
    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p3

    .line 266
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$15;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 268
    :cond_1b
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$15;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/components/DefaultInfluence;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p1}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluence(III)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass16 (info.flowersoft.theotown.scripting.libraries.TileLibrary$16)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$16;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 272
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 275
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 276
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 277
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 278
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 280
    :cond_28
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass17 (info.flowersoft.theotown.scripting.libraries.TileLibrary$17)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$17;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 284
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 287
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 288
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 289
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 290
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 291
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 293
    :cond_2e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass18 (info.flowersoft.theotown.scripting.libraries.TileLibrary$18)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$18;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 300
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 301
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 302
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 303
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 304
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 306
    :cond_2e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass19 (info.flowersoft.theotown.scripting.libraries.TileLibrary$19)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$19;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 310
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 313
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 314
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 315
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 316
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 317
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 319
    :cond_2e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass2 (info.flowersoft.theotown.scripting.libraries.TileLibrary$2)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$2;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 68
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 71
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 72
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 73
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->isGroundWater(II)Z

    move-result p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass20 (info.flowersoft.theotown.scripting.libraries.TileLibrary$20)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$20;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 323
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 326
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 327
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 328
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 329
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 330
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->hasNeededRoad()Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 332
    :cond_2e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass21 (info.flowersoft.theotown.scripting.libraries.TileLibrary$21)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$21;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 339
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 340
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 341
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 342
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 343
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->hasRoad()Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 345
    :cond_2e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass22 (info.flowersoft.theotown.scripting.libraries.TileLibrary$22)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$22;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 349
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 352
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 353
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 354
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 355
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 356
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isBurning()Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 358
    :cond_2e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass23 (info.flowersoft.theotown.scripting.libraries.TileLibrary$23)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$23;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 362
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 365
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 366
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 367
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 368
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 369
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isIll()Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 371
    :cond_2e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass24 (info.flowersoft.theotown.scripting.libraries.TileLibrary$24)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$24;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 375
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 378
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 379
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 380
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 381
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 382
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isFullOfWaste()Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 384
    :cond_2e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass25 (info.flowersoft.theotown.scripting.libraries.TileLibrary$25)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$25;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 388
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 391
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 392
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 393
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 394
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 395
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isFullOfDeadPeople()Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 397
    :cond_2e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass26 (info.flowersoft.theotown.scripting.libraries.TileLibrary$26)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$26;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$26;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 404
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 405
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 406
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$26;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 407
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$26;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 408
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 410
    :cond_2e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass27 (info.flowersoft.theotown.scripting.libraries.TileLibrary$27)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$27;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 414
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 417
    const-class v0, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    .line 418
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 419
    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p3

    .line 420
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 422
    :cond_1f
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p2

    if-nez p2, :cond_2e

    .line 423
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    :cond_2e
    if-eqz p1, :cond_38

    .line 425
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/city/objects/Building;->hasUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z

    move-result p1

    if-eqz p1, :cond_38

    const/4 p1, 0x1

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    :goto_39
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass28 (info.flowersoft.theotown.scripting.libraries.TileLibrary$28)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$28;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 428
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 431
    const-class v0, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    .line 432
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 433
    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p3

    .line 434
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-nez v0, :cond_1f

    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 436
    :cond_1f
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p2

    if-nez p2, :cond_2e

    .line 437
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    :cond_2e
    if-eqz p1, :cond_38

    .line 439
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrade(Linfo/flowersoft/theotown/draft/UpgradeDraft;)Z

    move-result p1

    if-eqz p1, :cond_38

    const/4 p1, 0x1

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    :goto_39
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass29 (info.flowersoft.theotown.scripting.libraries.TileLibrary$29)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$29;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 443
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 446
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 447
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 448
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 450
    :cond_17
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_47

    .line 452
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isBurning()Z

    move-result p2

    if-eqz p2, :cond_47

    .line 453
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {p2}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object p2

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    const-class v0, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    .line 454
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/disaster/FireDisaster;

    .line 455
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/disaster/FireDisaster;->removeFire(Linfo/flowersoft/theotown/city/objects/Building;)V

    const/4 p1, 0x1

    .line 456
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    :cond_47
    const/4 p1, 0x0

    .line 458
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass3 (info.flowersoft.theotown.scripting.libraries.TileLibrary$3)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$3;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 77
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 80
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 81
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 82
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->isGroundWater(II)Z

    move-result p1

    if-nez p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass30 (info.flowersoft.theotown.scripting.libraries.TileLibrary$30)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$30;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 462
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$30;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 7

    .line 465
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 466
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x1

    .line 467
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    sub-int/2addr p3, v0

    .line 468
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$30;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v1

    .line 469
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$30;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 470
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$30;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_3e

    const/4 p2, 0x0

    .line 472
    invoke-virtual {p1, p3, p2, v1}, Linfo/flowersoft/theotown/city/objects/Building;->setAnimationFrameSpeed(IFI)V

    .line 473
    invoke-virtual {p1, v1, p3}, Linfo/flowersoft/theotown/city/objects/Building;->activeAnimationSpotFrame(II)I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 476
    :cond_3e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass31 (info.flowersoft.theotown.scripting.libraries.TileLibrary$31)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$31;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 480
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/LuaValue;
    .registers 8

    const/4 v0, 0x1

    .line 483
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x2

    .line 484
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->checkint()I

    move-result v2

    const/4 v3, 0x3

    .line 485
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    invoke-virtual {v3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result v3

    sub-int/2addr v3, v0

    const/4 v4, 0x4

    .line 486
    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v4, v5}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v4

    double-to-float p1, v4

    .line 487
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v4

    .line 488
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 489
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 491
    invoke-virtual {v1, v3, p1, v4}, Linfo/flowersoft/theotown/city/objects/Building;->setAnimationFrameSpeed(IFI)V

    .line 492
    invoke-virtual {v1, v4, v3}, Linfo/flowersoft/theotown/city/objects/Building;->activeAnimationSpotFrame(II)I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 495
    :cond_57
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

    .line 480
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$31;->invoke(Lvm2/Varargs;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass32 (info.flowersoft.theotown.scripting.libraries.TileLibrary$32)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$32;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 499
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$32;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 502
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 503
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x1

    .line 504
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 505
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$32;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 506
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$32;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 508
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getPendingPedestrians()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/objects/Building;->setPendingPedestrians(I)V

    .line 509
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 512
    :cond_32
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass33 (info.flowersoft.theotown.scripting.libraries.TileLibrary$33)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$33;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 516
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$33;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 519
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 520
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 521
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$33;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 522
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$33;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 524
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getFrame()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 527
    :cond_29
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass34 (info.flowersoft.theotown.scripting.libraries.TileLibrary$34)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$34;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 531
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$34;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 534
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 535
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 536
    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p3

    .line 537
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$34;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 538
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$34;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 540
    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/city/objects/Building;->setFrame(I)V

    .line 543
    :cond_27
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass35 (info.flowersoft.theotown.scripting.libraries.TileLibrary$35)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$35;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 547
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$35;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 550
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 551
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 552
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$35;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 553
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$35;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 555
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1

    .line 558
    :cond_29
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass36 (info.flowersoft.theotown.scripting.libraries.TileLibrary$36)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$36;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 562
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$36;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 565
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 566
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 567
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 568
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$36;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 569
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$36;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 571
    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/city/objects/Building;->setName(Ljava/lang/String;)V

    .line 574
    :cond_28
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass37 (info.flowersoft.theotown.scripting.libraries.TileLibrary$37)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$37;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 578
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 581
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 582
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 583
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 584
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 586
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getPerformance()F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1

    .line 589
    :cond_2a
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass38 (info.flowersoft.theotown.scripting.libraries.TileLibrary$38)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$38;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 593
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$38;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 596
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 597
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 598
    invoke-virtual {p3}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v0

    double-to-float p3, v0

    .line 599
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$38;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 600
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$38;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 602
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$38;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {p2}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$400(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->setBuildingPerformance(Linfo/flowersoft/theotown/city/objects/Building;F)V

    .line 605
    :cond_2e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass39 (info.flowersoft.theotown.scripting.libraries.TileLibrary$39)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$39;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 609
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$39;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 612
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 613
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 614
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$39;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 615
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$39;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 617
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    return-object p1

    .line 620
    :cond_27
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass4 (info.flowersoft.theotown.scripting.libraries.TileLibrary$4)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$4;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 86
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 89
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 90
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 91
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->isBorder()Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass40 (info.flowersoft.theotown.scripting.libraries.TileLibrary$40)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$40;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 624
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$40;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    const/4 v0, 0x1

    .line 627
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    const/4 v1, 0x2

    .line 628
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 629
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$40;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 630
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$40;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 633
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    .line 634
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    .line 632
    invoke-static {v0, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 637
    :cond_3f
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass41 (info.flowersoft.theotown.scripting.libraries.TileLibrary$41)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$41;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 641
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$41;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    const/4 v0, 0x1

    .line 644
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    const/4 v1, 0x2

    .line 645
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 646
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$41;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 647
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$41;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 649
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$41;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result v0

    .line 651
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getPivotX(I)I

    move-result v1

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v1

    .line 652
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getPivotY(I)I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    .line 650
    invoke-static {v1, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 655
    :cond_49
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass42 (info.flowersoft.theotown.scripting.libraries.TileLibrary$42)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$42;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 659
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$42;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 662
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 663
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 664
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$42;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 665
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$42;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 667
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isUntouchable()Z

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 670
    :cond_29
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass43 (info.flowersoft.theotown.scripting.libraries.TileLibrary$43)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$43;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 674
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$43;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 677
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 678
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 679
    invoke-virtual {p3}, Lvm2/LuaValue;->checkboolean()Z

    move-result p3

    .line 680
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$43;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 681
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$43;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 683
    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/city/objects/Building;->setUntouchable(Z)V

    .line 686
    :cond_27
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass44 (info.flowersoft.theotown.scripting.libraries.TileLibrary$44)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$44;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 690
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$44;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 693
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 694
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 695
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$44;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 696
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$44;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 698
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getLuaStorageProxy()Lvm2/LuaTable;

    move-result-object p1

    return-object p1

    .line 701
    :cond_25
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass45 (info.flowersoft.theotown.scripting.libraries.TileLibrary$45)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$45;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$45;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 708
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 709
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 710
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$45;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 711
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$45;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 713
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$45;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {p2}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/DefaultDate;

    .line 714
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    long-to-double v0, v0

    .line 715
    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/city/objects/Building;->getDaysBuilt(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1

    .line 718
    :cond_3b
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass46 (info.flowersoft.theotown.scripting.libraries.TileLibrary$46)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$46;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 725
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$46;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 8

    const/4 v0, 0x1

    .line 728
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x2

    .line 729
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->checkint()I

    move-result v2

    const/4 v3, 0x3

    .line 730
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lvm2/LuaValue;->checkint()I

    move-result v3

    sub-int/2addr v3, v0

    const/4 v4, 0x4

    .line 731
    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    sub-int/2addr p1, v0

    .line 732
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$46;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v4

    .line 733
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$46;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 734
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$46;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 736
    invoke-virtual {v1, p1, v3, v4}, Linfo/flowersoft/theotown/city/objects/Building;->setAnimationFrameOffset(III)V

    .line 737
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 740
    :cond_50
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass47 (info.flowersoft.theotown.scripting.libraries.TileLibrary$47)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$47;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 744
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$47;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 747
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 748
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x1

    .line 749
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    sub-int/2addr p3, v0

    .line 750
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$47;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v0

    .line 751
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$47;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 752
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$47;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 754
    invoke-virtual {p1, v0, p3}, Linfo/flowersoft/theotown/city/objects/Building;->activeAnimationSpotFrame(II)I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 757
    :cond_39
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass48 (info.flowersoft.theotown.scripting.libraries.TileLibrary$48)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$48;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 761
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$48;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 764
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 765
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x1

    .line 766
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    sub-int/2addr p3, v0

    .line 767
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$48;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 768
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$48;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 770
    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/city/objects/Building;->getAnimationFrameSpeed(I)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_30

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 773
    :cond_36
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass49 (info.flowersoft.theotown.scripting.libraries.TileLibrary$49)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$49;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 777
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$49;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    .line 780
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    const/4 v1, 0x2

    .line 781
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x3

    .line 782
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->checkint()I

    move-result v2

    const/4 v3, 0x4

    .line 783
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lvm2/LuaValue;->checkint()I

    move-result v3

    const/4 v4, 0x5

    .line 784
    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lvm2/LuaValue;->checkint()I

    move-result v4

    const/4 v5, 0x6

    .line 785
    invoke-virtual {p1, v5}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v5

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Lvm2/LuaValue;->optint(I)I

    move-result v5

    const/4 v6, 0x7

    .line 786
    invoke-virtual {p1, v6}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    sub-int/2addr p1, v6

    .line 787
    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$49;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v6}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v6

    if-eqz v6, :cond_65

    .line 788
    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$49;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v6}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 790
    new-instance v1, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, v2, v3, v4, v5}, Lio/blueflower/stapel2d/drawing/Color;-><init>(IIII)V

    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/city/objects/Building;->setAnimationFrameColor(ILio/blueflower/stapel2d/drawing/Color;)V

    .line 791
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 794
    :cond_65
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass5 (info.flowersoft.theotown.scripting.libraries.TileLibrary$5)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$5;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 95
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 98
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 99
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 100
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass50 (info.flowersoft.theotown.scripting.libraries.TileLibrary$50)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$50;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 798
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$50;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    .line 801
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    const/4 v1, 0x2

    .line 802
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x3

    .line 803
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    sub-int/2addr p1, v2

    .line 804
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$50;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 805
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$50;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 807
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->getAnimationFrameColor(I)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    .line 808
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$50;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;Lio/blueflower/stapel2d/drawing/Color;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 811
    :cond_3f
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass51 (info.flowersoft.theotown.scripting.libraries.TileLibrary$51)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$51;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 815
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$51;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 818
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 819
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 820
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$51;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 821
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$51;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_28

    const/4 p2, 0x1

    .line 823
    invoke-static {}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->getUnknown()Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Linfo/flowersoft/theotown/city/objects/Building;->setEmpty(ZLinfo/flowersoft/theotown/city/objects/EmptyBuildingCause;)V

    .line 826
    :cond_28
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass52 (info.flowersoft.theotown.scripting.libraries.TileLibrary$52)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$52;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 830
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$52;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 833
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 834
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 835
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 836
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$52;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 837
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$52;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_26

    const/4 v0, 0x1

    :cond_26
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 839
    :cond_2b
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass53 (info.flowersoft.theotown.scripting.libraries.TileLibrary$53)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$53;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 843
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$53;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 846
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 847
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 848
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$53;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 849
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$53;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->hasRoad(II)Z

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 851
    :cond_23
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass54 (info.flowersoft.theotown.scripting.libraries.TileLibrary$54)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$54;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 855
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$54;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 858
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 859
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 860
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 861
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$54;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 862
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$54;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 864
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getFrame()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 867
    :cond_2e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass55 (info.flowersoft.theotown.scripting.libraries.TileLibrary$55)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$55;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 871
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$55;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 874
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 875
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 876
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 877
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$55;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 878
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$55;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 880
    iget-object p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    return-object p1

    .line 883
    :cond_2a
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass56 (info.flowersoft.theotown.scripting.libraries.TileLibrary$56)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$56;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 887
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$56;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 890
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 891
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 892
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 893
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$56;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 894
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$56;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 896
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getLuaStorageProxy()Lvm2/LuaTable;

    move-result-object p1

    return-object p1

    .line 899
    :cond_2a
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass57 (info.flowersoft.theotown.scripting.libraries.TileLibrary$57)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$57;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$57;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 906
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 907
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 908
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 909
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$57;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 910
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$57;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 912
    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmount:F

    float-to-double p1, p1

    invoke-static {p1, p2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1

    .line 915
    :cond_2d
    sget-object p1, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass58 (info.flowersoft.theotown.scripting.libraries.TileLibrary$58)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$58;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$58;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 922
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 923
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 924
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 925
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$58;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 926
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$58;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 928
    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->carCounter:I

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 931
    :cond_2c
    sget-object p1, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass59 (info.flowersoft.theotown.scripting.libraries.TileLibrary$59)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$59;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 935
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$59;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 938
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 939
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 940
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 941
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$59;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 942
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$59;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 944
    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->chargeableCarCounter:I

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 947
    :cond_2c
    sget-object p1, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass6 (info.flowersoft.theotown.scripting.libraries.TileLibrary$6)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$6;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 107
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 108
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 109
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 110
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 111
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Tree;->getDraft()Linfo/flowersoft/theotown/draft/TreeDraft;

    move-result-object p1

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    return-object p1

    :cond_27
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 113
    :cond_2a
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass60 (info.flowersoft.theotown.scripting.libraries.TileLibrary$60)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$60;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$60;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 954
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 955
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 956
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 957
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$60;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 958
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$60;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 960
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result p1

    if-lez p1, :cond_2c

    const/4 v0, 0x1

    :cond_2c
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 963
    :cond_31
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass61 (info.flowersoft.theotown.scripting.libraries.TileLibrary$61)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$61;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$61;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/LuaValue;
    .registers 7

    const/4 v0, 0x1

    .line 970
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v1

    const/4 v2, 0x2

    .line 971
    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkint(I)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 972
    invoke-virtual {p1, v3, v4}, Lvm2/Varargs;->optint(II)I

    move-result v3

    const/4 v4, 0x4

    .line 973
    invoke-virtual {p1, v4, v0}, Lvm2/Varargs;->optint(II)I

    move-result p1

    .line 974
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$61;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 975
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$61;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v1

    if-eqz v1, :cond_37

    sub-int/2addr p1, v0

    .line 977
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/city/objects/Road;->getDecoration(I)Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 979
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    return-object p1

    .line 983
    :cond_37
    sget-object p1, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

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

    .line 967
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$61;->invoke(Lvm2/Varargs;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass62 (info.flowersoft.theotown.scripting.libraries.TileLibrary$62)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$62;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 987
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$62;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 990
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 991
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 992
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 993
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$62;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 994
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$62;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 996
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 999
    :cond_2e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass63 (info.flowersoft.theotown.scripting.libraries.TileLibrary$63)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$63;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1003
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$63;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 1006
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1007
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 1008
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 1009
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$63;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1010
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$63;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 1012
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getOccupation()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object p1

    if-eqz p1, :cond_2c

    const/4 v0, 0x1

    :cond_2c
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 1015
    :cond_31
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass64 (info.flowersoft.theotown.scripting.libraries.TileLibrary$64)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$64;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1020
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$64;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 1023
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1024
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, -0x1

    .line 1025
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 1026
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$64;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1027
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$64;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->hasFence(II)Z

    move-result v0

    if-eqz v0, :cond_35

    if-ltz p3, :cond_33

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$64;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    .line 1028
    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getFence(III)Linfo/flowersoft/theotown/draft/FenceDraft;

    move-result-object p1

    if-eqz p1, :cond_35

    :cond_33
    const/4 p1, 0x1

    goto :goto_36

    :cond_35
    const/4 p1, 0x0

    .line 1027
    :goto_36
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 1031
    :cond_3b
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass65 (info.flowersoft.theotown.scripting.libraries.TileLibrary$65)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$65;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1035
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$65;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    const/4 v0, 0x1

    .line 1038
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    const/4 v1, 0x2

    .line 1039
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x3

    .line 1040
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->checkint()I

    move-result v2

    const/4 v3, 0x4

    .line 1041
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1042
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$65;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$400(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->containsFenceWithin(IIII)Z

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass66 (info.flowersoft.theotown.scripting.libraries.TileLibrary$66)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$66;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1046
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$66;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 1049
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1050
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 1051
    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p3

    if-ltz p3, :cond_20

    const/4 v0, 0x3

    if-gt p3, v0, :cond_20

    .line 1053
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$66;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$400(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getFence(III)Linfo/flowersoft/theotown/draft/FenceDraft;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 1054
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    return-object p1

    .line 1056
    :cond_20
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass67 (info.flowersoft.theotown.scripting.libraries.TileLibrary$67)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$67;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1062
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$67;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 1065
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1066
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 1067
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 1068
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$67;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1069
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$67;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 1071
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object p1

    if-eqz p1, :cond_2c

    const/4 v0, 0x1

    :cond_2c
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 1074
    :cond_31
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass68 (info.flowersoft.theotown.scripting.libraries.TileLibrary$68)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$68;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1078
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$68;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 1081
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1082
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 1083
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 1084
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$68;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1085
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$68;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 1087
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getBusStop()Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 1089
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/BusStop;->getDraft()Linfo/flowersoft/theotown/draft/BusStopDraft;

    move-result-object p1

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    return-object p1

    .line 1093
    :cond_32
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass69 (info.flowersoft.theotown.scripting.libraries.TileLibrary$69)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$69;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1097
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$69;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 1100
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1101
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 1102
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 1103
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$69;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1104
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$69;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 1106
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 1109
    :cond_2e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass7 (info.flowersoft.theotown.scripting.libraries.TileLibrary$7)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$7;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 117
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 120
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 121
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 123
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 124
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Tree;->getFrame()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    :cond_29
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 126
    :cond_2c
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass70 (info.flowersoft.theotown.scripting.libraries.TileLibrary$70)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$70;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1113
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$70;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    const/4 v0, 0x1

    .line 1116
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v0

    const/4 v1, 0x2

    .line 1117
    invoke-virtual {p1, v1}, Lvm2/Varargs;->checkint(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 1118
    invoke-virtual {p1, v2, v3}, Lvm2/Varargs;->optint(II)I

    move-result v2

    const/4 v3, 0x4

    .line 1119
    invoke-virtual {p1, v3}, Lvm2/Varargs;->checkint(I)I

    move-result p1

    .line 1120
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$70;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1121
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$70;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1123
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/Road;->alignTo(I)V

    .line 1126
    :cond_30
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass71 (info.flowersoft.theotown.scripting.libraries.TileLibrary$71)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$71;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1130
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$71;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    const/4 v0, 0x1

    .line 1133
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v0

    const/4 v1, 0x2

    .line 1134
    invoke-virtual {p1, v1}, Lvm2/Varargs;->checkint(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 1135
    invoke-virtual {p1, v2, v3}, Lvm2/Varargs;->optint(II)I

    move-result v2

    const/4 v3, 0x4

    .line 1136
    invoke-virtual {p1, v3}, Lvm2/Varargs;->checkint(I)I

    move-result p1

    .line 1137
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$71;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1138
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$71;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1140
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/Road;->alignToRaw(I)V

    .line 1143
    :cond_30
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass72 (info.flowersoft.theotown.scripting.libraries.TileLibrary$72)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$72;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1147
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$72;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 1150
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1151
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 1152
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 1153
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$72;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1154
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$72;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 1156
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getOnewayDir()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 1159
    :cond_2e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass73 (info.flowersoft.theotown.scripting.libraries.TileLibrary$73)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$73;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1163
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$73;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 1166
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1167
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 1168
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 1169
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$73;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1170
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$73;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 1172
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->isPile()Z

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 1175
    :cond_2e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass74 (info.flowersoft.theotown.scripting.libraries.TileLibrary$74)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$74;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1179
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$74;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/LuaValue;
    .registers 6

    const/4 v0, 0x1

    .line 1182
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v0

    const/4 v1, 0x2

    .line 1183
    invoke-virtual {p1, v1}, Lvm2/Varargs;->checkint(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 1184
    invoke-virtual {p1, v2, v3}, Lvm2/Varargs;->optint(II)I

    move-result v2

    const/4 v3, 0x4

    .line 1185
    invoke-virtual {p1, v3}, Lvm2/Varargs;->checkboolean(I)Z

    move-result p1

    .line 1186
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$74;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1187
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$74;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1189
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/Road;->setPile(Z)V

    .line 1192
    :cond_30
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

    .line 1179
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$74;->invoke(Lvm2/Varargs;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass75 (info.flowersoft.theotown.scripting.libraries.TileLibrary$75)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$75;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1196
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$75;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 1199
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1200
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 1201
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 1202
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$75;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1203
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$75;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 1205
    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 1208
    :cond_2c
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass76 (info.flowersoft.theotown.scripting.libraries.TileLibrary$76)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$76;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1212
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$76;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 1215
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1216
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 1217
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 1218
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$76;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1219
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$76;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 1221
    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-lez p1, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 1224
    :cond_2f
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass77 (info.flowersoft.theotown.scripting.libraries.TileLibrary$77)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$77;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1228
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$77;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 1231
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1232
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 1233
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 1234
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$77;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1235
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$77;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 1237
    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 1240
    :cond_2c
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass78 (info.flowersoft.theotown.scripting.libraries.TileLibrary$78)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$78;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1244
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$78;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 1247
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1248
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 1249
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 1250
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$78;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1251
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$78;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 1253
    iget-object p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/RoadDraft;->countBridges()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 1256
    :cond_30
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass79 (info.flowersoft.theotown.scripting.libraries.TileLibrary$79)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$79;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1260
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$79;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 1263
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1264
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 1265
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 1266
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$79;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1267
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$79;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 1269
    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->bridgeType:I

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 1272
    :cond_2c
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass8 (info.flowersoft.theotown.scripting.libraries.TileLibrary$8)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$8;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

.field public final synthetic val$DEFAULT_WATER_DRAFT:Linfo/flowersoft/theotown/draft/GroundDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;Linfo/flowersoft/theotown/draft/GroundDraft;)V
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

    .line 131
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$8;->val$DEFAULT_WATER_DRAFT:Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 8

    .line 134
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 135
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 136
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 137
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 138
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p3, v1, :cond_71

    .line 141
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object p3

    .line 142
    iget-boolean v1, p3, Linfo/flowersoft/theotown/draft/GroundDraft;->isWater:Z

    if-nez v1, :cond_2f

    const/4 p3, 0x0

    .line 144
    :cond_2f
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isBorder()Z

    move-result v0

    if-eqz v0, :cond_6a

    if-nez p3, :cond_6a

    const/4 v0, 0x1

    :goto_38
    const/16 v1, 0x8

    if-gt v0, v1, :cond_6a

    .line 146
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v1

    add-int/2addr v1, p1

    .line 147
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v2

    add-int/2addr v2, p2

    .line 148
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 149
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v2

    if-eqz v2, :cond_67

    .line 151
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object p3

    goto :goto_6a

    :cond_67
    shl-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_6a
    :goto_6a
    if-nez p3, :cond_6e

    .line 158
    iget-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$8;->val$DEFAULT_WATER_DRAFT:Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 160
    :cond_6e
    iget-object p1, p3, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    return-object p1

    :cond_71
    if-nez p3, :cond_7a

    .line 162
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object p1

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    return-object p1

    .line 164
    :cond_7a
    iget-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {p3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGroundDraft2(II)Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object p1

    if-eqz p1, :cond_89

    .line 165
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    return-object p1

    .line 168
    :cond_89
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass80 (info.flowersoft.theotown.scripting.libraries.TileLibrary$80)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$80;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1276
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$80;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 7

    const/4 v0, 0x1

    .line 1279
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v0

    const/4 v1, 0x2

    .line 1280
    invoke-virtual {p1, v1}, Lvm2/Varargs;->checkint(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 1281
    invoke-virtual {p1, v2, v3}, Lvm2/Varargs;->optint(II)I

    move-result v2

    const/4 v4, 0x4

    .line 1282
    invoke-virtual {p1, v4, v3}, Lvm2/Varargs;->optint(II)I

    move-result p1

    .line 1283
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$80;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1284
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$80;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 1286
    iput p1, v0, Linfo/flowersoft/theotown/city/objects/Road;->bridgeType:I

    .line 1289
    :cond_2f
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass81 (info.flowersoft.theotown.scripting.libraries.TileLibrary$81)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$81;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1294
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$81;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 1297
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1298
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 1299
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 1301
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$81;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 1303
    :cond_1c
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$81;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-nez p1, :cond_2b

    .line 1304
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 1306
    :cond_2b
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getOccupation()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 1307
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    return-object p1

    :cond_34
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass82 (info.flowersoft.theotown.scripting.libraries.TileLibrary$82)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$82;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1310
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$82;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    const/4 v0, 0x1

    .line 1313
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    const/4 v1, 0x2

    .line 1314
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x3

    .line 1315
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->checkint()I

    move-result v2

    const/4 v3, 0x4

    .line 1316
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    .line 1317
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$82;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-nez v3, :cond_38

    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 1319
    :cond_38
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$82;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v3

    invoke-virtual {v3, v1, v2, p1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-nez p1, :cond_47

    .line 1320
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 1322
    :cond_47
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Road;->setOccupation(Linfo/flowersoft/theotown/draft/AnimationDraft;)V

    .line 1323
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass83 (info.flowersoft.theotown.scripting.libraries.TileLibrary$83)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$83;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$83;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 1331
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1332
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 1333
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$83;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1334
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$83;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object p1

    if-eqz p1, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 1336
    :cond_28
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass84 (info.flowersoft.theotown.scripting.libraries.TileLibrary$84)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$84;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1340
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$84;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 1343
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1344
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 1345
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$84;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1346
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$84;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 1348
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Pipe;->getDraft()Linfo/flowersoft/theotown/draft/PipeDraft;

    move-result-object p1

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    return-object p1

    .line 1351
    :cond_27
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass85 (info.flowersoft.theotown.scripting.libraries.TileLibrary$85)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$85;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1355
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$85;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 1358
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1359
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 1360
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$85;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1361
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$85;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 1363
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Pipe;->getFrame()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 1366
    :cond_29
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass86 (info.flowersoft.theotown.scripting.libraries.TileLibrary$86)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$86;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$86;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 1373
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1374
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 1375
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$86;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1376
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$86;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->hasWire(II)Z

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 1378
    :cond_23
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass87 (info.flowersoft.theotown.scripting.libraries.TileLibrary$87)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$87;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1382
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$87;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 1385
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1386
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 1387
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 1388
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$87;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 1389
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$87;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object p1

    if-eqz p1, :cond_26

    const/4 v0, 0x1

    .line 1390
    :cond_26
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 1392
    :cond_2b
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass88 (info.flowersoft.theotown.scripting.libraries.TileLibrary$88)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$88;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1396
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$88;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 1399
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1400
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 1401
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 1402
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$88;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1403
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$88;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 1405
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Wire;->getDraft()Linfo/flowersoft/theotown/draft/WireDraft;

    move-result-object p1

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    return-object p1

    .line 1408
    :cond_2c
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass89 (info.flowersoft.theotown.scripting.libraries.TileLibrary$89)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$89;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1412
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$89;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 1415
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1416
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 1417
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 1418
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$89;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1419
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$89;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 1421
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Wire;->getFrame()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 1424
    :cond_2e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass9 (info.flowersoft.theotown.scripting.libraries.TileLibrary$9)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$9;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 172
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 175
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 176
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 177
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 178
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    .line 179
    iget-short p1, p1, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 181
    :cond_25
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass90 (info.flowersoft.theotown.scripting.libraries.TileLibrary$90)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$90;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1428
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$90;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 1431
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1432
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 1433
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$90;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1434
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$90;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 1436
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    return-object p1

    .line 1439
    :cond_23
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass91 (info.flowersoft.theotown.scripting.libraries.TileLibrary$91)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$91;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1445
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$91;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 1448
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1449
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x0

    .line 1450
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 1451
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$91;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1452
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$91;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 1454
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Wire;->isPunch()Z

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 1457
    :cond_2e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass92 (info.flowersoft.theotown.scripting.libraries.TileLibrary$92)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$92;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1461
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$92;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    const/4 v0, 0x1

    .line 1464
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkint(I)I

    move-result v0

    const/4 v1, 0x2

    .line 1465
    invoke-virtual {p1, v1}, Lvm2/Varargs;->checkint(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 1466
    invoke-virtual {p1, v2, v3}, Lvm2/Varargs;->optint(II)I

    move-result v2

    const/4 v3, 0x4

    .line 1467
    invoke-virtual {p1, v3}, Lvm2/Varargs;->checkboolean(I)Z

    move-result p1

    .line 1468
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$92;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1469
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$92;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1471
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/Wire;->setPunch(Z)V

    .line 1474
    :cond_30
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass93 (info.flowersoft.theotown.scripting.libraries.TileLibrary$93)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$93;
.super Lvm2/lib/ThreeArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1479
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$93;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 1482
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1483
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 1484
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$93;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1485
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$93;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 1487
    const-class p2, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {p3, p2}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 1488
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/objects/Building;->setCustomBuildingIcon(Linfo/flowersoft/theotown/draft/AnimationDraft;)V

    .line 1489
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 1492
    :cond_2e
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass94 (info.flowersoft.theotown.scripting.libraries.TileLibrary$94)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$94;
.super Lvm2/lib/TwoArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1496
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$94;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 1499
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    .line 1500
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 1501
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$94;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1502
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$94;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 1504
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getCustomBuildingIcon()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 1506
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    return-object p1

    .line 1510
    :cond_29
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass95 (info.flowersoft.theotown.scripting.libraries.TileLibrary$95)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$95;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1515
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$95;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    const/4 v0, 0x1

    .line 1518
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x2

    .line 1519
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->checkint()I

    move-result v2

    const/4 v3, 0x3

    .line 1520
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lvm2/LuaValue;->optint(I)I

    move-result v3

    const/4 v4, 0x4

    .line 1521
    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lvm2/LuaValue;->checkint()I

    move-result v4

    sub-int/2addr v4, v0

    const/4 v5, 0x5

    .line 1522
    invoke-virtual {p1, v5}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    sub-int/2addr p1, v0

    .line 1523
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$95;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v5

    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v5

    .line 1524
    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$95;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v6}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 1525
    iget-object v6, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$95;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v6}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v6

    invoke-virtual {v6, v1, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 1527
    invoke-virtual {v1, p1, v4, v5}, Linfo/flowersoft/theotown/city/objects/Road;->setAnimationFrameOffset(III)V

    .line 1528
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 1531
    :cond_5a
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass96 (info.flowersoft.theotown.scripting.libraries.TileLibrary$96)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$96;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1535
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$96;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 7

    .line 1538
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    const/4 v1, 0x2

    .line 1539
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x3

    .line 1540
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->optint(I)I

    move-result v2

    const/4 v3, 0x4

    .line 1541
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    sub-int/2addr p1, v3

    .line 1542
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$96;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v3

    .line 1543
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$96;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 1544
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$96;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 1546
    invoke-virtual {v0, v3, p1}, Linfo/flowersoft/theotown/city/objects/Road;->activeAnimationSpotFrame(II)I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 1549
    :cond_51
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass97 (info.flowersoft.theotown.scripting.libraries.TileLibrary$97)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$97;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1553
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$97;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 8

    .line 1556
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    const/4 v1, 0x2

    .line 1557
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x3

    .line 1558
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->optint(I)I

    move-result v2

    const/4 v4, 0x4

    .line 1559
    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    sub-int/2addr p1, v4

    .line 1560
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$97;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 1561
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$97;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v5}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v5

    invoke-virtual {v5, v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 1563
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/Road;->getAnimationFrameSpeed(I)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_48

    move v3, v4

    :cond_48
    invoke-static {v3}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 1566
    :cond_4d
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass98 (info.flowersoft.theotown.scripting.libraries.TileLibrary$98)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$98;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1570
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$98;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 10

    .line 1573
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    const/4 v1, 0x2

    .line 1574
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x3

    .line 1575
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->optint(I)I

    move-result v2

    const/4 v3, 0x4

    .line 1576
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lvm2/LuaValue;->checkint()I

    move-result v3

    const/4 v4, 0x5

    .line 1577
    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lvm2/LuaValue;->checkint()I

    move-result v4

    const/4 v5, 0x6

    .line 1578
    invoke-virtual {p1, v5}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5}, Lvm2/LuaValue;->checkint()I

    move-result v5

    const/4 v6, 0x7

    .line 1579
    invoke-virtual {p1, v6}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v6

    const/16 v7, 0xff

    invoke-virtual {v6, v7}, Lvm2/LuaValue;->optint(I)I

    move-result v6

    const/16 v7, 0x8

    .line 1580
    invoke-virtual {p1, v7}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    sub-int/2addr p1, v7

    .line 1581
    iget-object v7, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$98;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v7}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 1582
    iget-object v7, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$98;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v7}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v7

    invoke-virtual {v7, v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 1584
    new-instance v1, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, v3, v4, v5, v6}, Lio/blueflower/stapel2d/drawing/Color;-><init>(IIII)V

    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/city/objects/Road;->setAnimationFrameColor(ILio/blueflower/stapel2d/drawing/Color;)V

    .line 1585
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 1588
    :cond_70
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TileLibrary.AnonymousClass99 (info.flowersoft.theotown.scripting.libraries.TileLibrary$99)
.class public Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$99;
.super Lvm2/lib/VarArgFunction;
.source "TileLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1592
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$99;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 6

    .line 1595
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    const/4 v1, 0x2

    .line 1596
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/4 v2, 0x3

    .line 1597
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->optint(I)I

    move-result v2

    const/4 v3, 0x4

    .line 1598
    invoke-virtual {p1, v3}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    sub-int/2addr p1, v3

    .line 1599
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$99;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1600
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$99;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 1602
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/Road;->getAnimationFrameColor(I)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    .line 1603
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary$99;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/TileLibrary;Lio/blueflower/stapel2d/drawing/Color;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 1606
    :cond_49
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method
