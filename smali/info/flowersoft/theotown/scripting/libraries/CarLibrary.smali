###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary (info.flowersoft.theotown.scripting.libraries.CarLibrary)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;
.super Linfo/flowersoft/theotown/scripting/ManagedLibrary;
.source "CarLibrary.java"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;


# instance fields
.field public final NULL_CAR:Linfo/flowersoft/theotown/draft/CarDraft;

.field public carController:Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;

.field public final carTrafficHandler:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

.field public city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 38
    const-string v0, "libs/Car.lua"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    .line 31
    const-string v0, "$car_null00"

    const-class v1, Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/CarDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->NULL_CAR:Linfo/flowersoft/theotown/draft/CarDraft;

    .line 40
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v0, 0x7

    .line 41
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultTraffic;

    const-class v0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    .line 42
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/components/DefaultTraffic;->getTrafficHandler(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/traffic/TrafficHandler;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->carTrafficHandler:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    .line 44
    const-class v0, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;

    .line 45
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->getCarController(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/traffic/carcontroller/CarController;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->carController:Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;
    .registers 1

    .line 29
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->carController:Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaTable;Linfo/flowersoft/theotown/city/MapArea;)V
    .registers 3

    .line 29
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->resolveXYLTable(Lvm2/LuaTable;Linfo/flowersoft/theotown/city/MapArea;)V

    return-void
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;
    .registers 2

    .line 29
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->resolveCarOwner(Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 29
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;
    .registers 1

    .line 29
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->carTrafficHandler:Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Ljava/lang/String;)V
    .registers 2

    .line 29
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;->assertPrivileged(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$600()Lvm2/LuaValue;
    .registers 1

    .line 29
    sget-object v0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->origKey:Lvm2/LuaValue;

    return-object v0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)Linfo/flowersoft/theotown/draft/CarDraft;
    .registers 1

    .line 29
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->NULL_CAR:Linfo/flowersoft/theotown/draft/CarDraft;

    return-object p0
.end method


# virtual methods
.method public inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
    .registers 4

    .line 58
    iget-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->carController:Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->setCarLibrary(Lvm2/LuaValue;)V

    .line 60
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$1;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$1;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "getCars"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 71
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$2;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$2;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "spawn"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 119
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$3;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$3;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "isValid"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 128
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$4;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$4;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "getDraft"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 137
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$5;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$5;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "getFrame"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 146
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$6;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$6;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "setFrame"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 156
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$7;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$7;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "getXY"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 172
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$8;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$8;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "getX"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 182
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$9;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$9;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "getY"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 192
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$10;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$10;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "getLevel"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 204
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$11;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$11;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "getDir"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 214
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$12;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$12;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "getSpeed"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 223
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$13;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$13;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "setSpeed"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 233
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$14;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$14;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "getEffectiveSpeed"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 244
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$15;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$15;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "wait"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 259
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$16;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$16;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "driveTo"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 283
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$17;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$17;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "despawn"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 293
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$18;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$18;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "getStorage"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 301
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$19;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$19;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "getOrig"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 314
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$20;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$20;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "tailSize"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 322
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$21;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$21;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "addTail"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 341
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$22;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$22;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "removeTail"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 362
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$23;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$23;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "removeWholeTail"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 375
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$24;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$24;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "getTailDraft"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 390
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$25;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$25;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "getTailFrame"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 405
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$26;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$26;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "setTailFrame"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 421
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$27;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$27;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "getCapacity"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 429
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$28;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$28;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "setColor"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 461
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$29;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$29;-><init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V

    const-string p3, "openFollowTool"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method

.method public final resolveCarOwner(Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;
    .registers 3

    .line 486
    sget-object v0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->origKey:Lvm2/LuaValue;

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    const-class v0, Linfo/flowersoft/theotown/city/objects/CarOwner;

    invoke-static {p1, v0}, Lvm2/lib/jse/CoerceLuaToJava;->coerce(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/CarOwner;

    return-object p1
.end method

.method public final resolveXYLTable(Lvm2/LuaTable;Linfo/flowersoft/theotown/city/MapArea;)V
    .registers 9

    .line 476
    invoke-virtual {p1}, Lvm2/LuaTable;->length()I

    move-result v0

    const/4 v1, 0x1

    :goto_5
    if-gt v1, v0, :cond_2d

    .line 478
    invoke-virtual {p1, v1}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->checkint()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    .line 479
    invoke-virtual {p1, v3}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lvm2/LuaValue;->checkint()I

    move-result v3

    add-int/lit8 v4, v1, 0x2

    .line 480
    invoke-virtual {p1, v4}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v4

    const/high16 v5, -0x80000000

    invoke-virtual {v4, v5}, Lvm2/LuaValue;->optint(I)I

    move-result v4

    .line 481
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->carController:Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;

    invoke-virtual {v5, v2, v3, v4, p2}, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->resolvePoint(IIILinfo/flowersoft/theotown/city/MapArea;)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_5

    :cond_2d
    return-void
.end method

.method public unload(Lvm2/Globals;)V
    .registers 2

    .line 50
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->unload(Lvm2/Globals;)V

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->city:Linfo/flowersoft/theotown/city/City;

    .line 53
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->carController:Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass1 (info.flowersoft.theotown.scripting.libraries.CarLibrary$1)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$1;
.super Lvm2/lib/OneArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 60
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 63
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    .line 64
    const-class v1, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {p1, v1}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    if-nez p1, :cond_20

    .line 65
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/scripting/Script;->getDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    .line 67
    :cond_20
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;

    move-result-object v1

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->getCarLuaReprs(Linfo/flowersoft/theotown/draft/Draft;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createArray(Ljava/util/List;)Lvm2/LuaTable;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass10 (info.flowersoft.theotown.scripting.libraries.CarLibrary$10)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$10;
.super Lvm2/lib/OneArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 192
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 195
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    .line 198
    iget v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    .line 199
    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    iget v2, p1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    div-int/lit8 v2, v2, 0x2

    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result p1

    sub-int/2addr v0, p1

    .line 198
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass11 (info.flowersoft.theotown.scripting.libraries.CarLibrary$11)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$11;
.super Lvm2/lib/OneArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 204
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$11;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 207
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$11;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    .line 209
    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass12 (info.flowersoft.theotown.scripting.libraries.CarLibrary$12)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$12;
.super Lvm2/lib/OneArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 214
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 217
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    .line 218
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    .line 219
    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Car;->speed:F

    float-to-double v0, p1

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass13 (info.flowersoft.theotown.scripting.libraries.CarLibrary$13)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$13;
.super Lvm2/lib/TwoArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 223
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 226
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 228
    invoke-virtual {p2, v0, v1}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v0

    double-to-float p2, v0

    iput p2, p1, Linfo/flowersoft/theotown/city/objects/Car;->speed:F

    .line 229
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass14 (info.flowersoft.theotown.scripting.libraries.CarLibrary$14)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$14;
.super Lvm2/lib/OneArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 233
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$14;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 236
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$14;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    .line 237
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    .line 238
    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Car;->lastSpeed:F

    float-to-double v0, p1

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass15 (info.flowersoft.theotown.scripting.libraries.CarLibrary$15)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$15;
.super Lvm2/lib/OneArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 244
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$15;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 248
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$15;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    .line 249
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    .line 251
    iget-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    if-nez v0, :cond_1f

    iget-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->paused:Z

    if-eqz v0, :cond_13

    goto :goto_1f

    .line 253
    :cond_13
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$15;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$400(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->wait(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 255
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 251
    :cond_1f
    :goto_1f
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass16 (info.flowersoft.theotown.scripting.libraries.CarLibrary$16)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$16;
.super Lvm2/lib/VarArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 259
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 8

    .line 262
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v0

    .line 265
    iget-boolean v1, v0, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    if-eqz v1, :cond_15

    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1

    .line 267
    :cond_15
    new-instance v1, Linfo/flowersoft/theotown/city/MapArea;

    invoke-direct {v1}, Linfo/flowersoft/theotown/city/MapArea;-><init>()V

    const/4 v2, 0x2

    .line 268
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v3

    invoke-virtual {v3}, Lvm2/LuaValue;->isint()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 269
    invoke-virtual {p1, v2}, Lvm2/Varargs;->checkint(I)I

    move-result v2

    const/4 v3, 0x3

    .line 270
    invoke-virtual {p1, v3}, Lvm2/Varargs;->checkint(I)I

    move-result v3

    const/4 v4, 0x4

    const/high16 v5, -0x80000000

    .line 271
    invoke-virtual {p1, v4, v5}, Lvm2/Varargs;->optint(II)I

    move-result p1

    .line 272
    iget-object v4, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v4}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;

    move-result-object v4

    invoke-virtual {v4, v2, v3, p1, v1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->resolvePoint(IIILinfo/flowersoft/theotown/city/MapArea;)V

    goto :goto_4c

    .line 274
    :cond_3f
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p1

    invoke-static {v3, p1, v1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaTable;Linfo/flowersoft/theotown/city/MapArea;)V

    .line 277
    :goto_4c
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->driveTo(Linfo/flowersoft/theotown/city/objects/Car;Linfo/flowersoft/theotown/city/MapArea;)V

    .line 279
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass17 (info.flowersoft.theotown.scripting.libraries.CarLibrary$17)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$17;
.super Lvm2/lib/OneArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 283
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 286
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    .line 287
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    .line 289
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass18 (info.flowersoft.theotown.scripting.libraries.CarLibrary$18)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$18;
.super Lvm2/lib/OneArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 293
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 296
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    .line 297
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getStorage()Lvm2/LuaTable;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass19 (info.flowersoft.theotown.scripting.libraries.CarLibrary$19)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$19;
.super Lvm2/lib/OneArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 301
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 304
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    const-string v1, "orig"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 307
    invoke-static {}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$600()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 309
    :cond_18
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass2 (info.flowersoft.theotown.scripting.libraries.CarLibrary$2)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$2;
.super Lvm2/lib/VarArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 71
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 13

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    const-class v2, Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Linfo/flowersoft/theotown/draft/CarDraft;

    .line 76
    new-instance v4, Linfo/flowersoft/theotown/city/MapArea;

    invoke-direct {v4}, Linfo/flowersoft/theotown/city/MapArea;-><init>()V

    .line 77
    new-instance v5, Linfo/flowersoft/theotown/city/MapArea;

    invoke-direct {v5}, Linfo/flowersoft/theotown/city/MapArea;-><init>()V

    const/4 v1, 0x2

    .line 81
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->isint()Z

    move-result v2

    const/4 v6, 0x4

    const/4 v7, -0x1

    if-eqz v2, :cond_71

    .line 83
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    const/4 v1, 0x3

    .line 84
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    const/16 v2, 0x8

    .line 85
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const/high16 v8, -0x80000000

    invoke-virtual {v2, v8}, Lvm2/LuaValue;->optint(I)I

    move-result v2

    .line 86
    iget-object v9, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v9}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;

    move-result-object v9

    invoke-virtual {v9, v0, v1, v2, v4}, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->resolvePoint(IIILinfo/flowersoft/theotown/city/MapArea;)V

    .line 88
    invoke-virtual {p1, v6}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->checkint()I

    move-result v2

    const/4 v6, 0x5

    .line 89
    invoke-virtual {p1, v6}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v6

    invoke-virtual {v6}, Lvm2/LuaValue;->checkint()I

    move-result v6

    const/16 v9, 0x9

    .line 90
    invoke-virtual {p1, v9}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v9

    invoke-virtual {v9, v8}, Lvm2/LuaValue;->optint(I)I

    move-result v8

    .line 91
    iget-object v9, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v9}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;

    move-result-object v9

    invoke-virtual {v9, v2, v6, v8, v5}, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->resolvePoint(IIILinfo/flowersoft/theotown/city/MapArea;)V

    :goto_6f
    move v6, v0

    goto :goto_a8

    .line 93
    :cond_71
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->istable()Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 95
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object v2

    .line 96
    invoke-virtual {p1, v6}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v6

    invoke-virtual {v6}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object v6

    .line 97
    invoke-virtual {v2, v0}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkint()I

    move-result v0

    .line 98
    invoke-virtual {v2, v1}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkint()I

    move-result v1

    .line 100
    iget-object v8, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v8, v2, v4}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaTable;Linfo/flowersoft/theotown/city/MapArea;)V

    .line 101
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v2, v6, v5}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaTable;Linfo/flowersoft/theotown/city/MapArea;)V

    goto :goto_6f

    :cond_a6
    move v1, v7

    move v6, v1

    :goto_a8
    const/4 v0, 0x6

    .line 104
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, v7}, Lvm2/LuaValue;->optint(I)I

    move-result v8

    const/4 v0, 0x7

    .line 105
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lvm2/LuaValue;->opttable(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v10

    const/16 v0, 0xa

    .line 106
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    const-class v0, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    if-nez p1, :cond_d1

    .line 107
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentDraft()Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    :cond_d1
    move-object v9, p1

    .line 109
    invoke-virtual {v10}, Lvm2/LuaValue;->isnil()Z

    move-result p1

    if-nez p1, :cond_e3

    if-eqz v9, :cond_db

    goto :goto_e3

    :cond_db
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Could not determine owning draft"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_e3
    :goto_e3
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;

    move-result-object v2

    move v7, v1

    invoke-virtual/range {v2 .. v10}, Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;->spawnCar(Linfo/flowersoft/theotown/draft/CarDraft;Linfo/flowersoft/theotown/city/MapArea;Linfo/flowersoft/theotown/city/MapArea;IIILinfo/flowersoft/theotown/draft/Draft;Lvm2/LuaTable;)V

    .line 113
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass20 (info.flowersoft.theotown.scripting.libraries.CarLibrary$20)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$20;
.super Lvm2/lib/OneArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 314
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 317
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    .line 318
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Car;->tailSize()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass21 (info.flowersoft.theotown.scripting.libraries.CarLibrary$21)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$21;
.super Lvm2/lib/VarArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 322
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 9

    .line 325
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object v0

    const/4 v1, 0x2

    .line 326
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const-class v3, Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/CarDraft;

    if-nez v2, :cond_20

    .line 327
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)Linfo/flowersoft/theotown/draft/CarDraft;

    move-result-object v2

    :cond_20
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 328
    invoke-virtual {p1, v3, v4}, Lvm2/Varargs;->optint(II)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x4

    const/4 v6, -0x1

    .line 329
    invoke-virtual {p1, v5, v6}, Lvm2/Varargs;->optint(II)I

    move-result p1

    if-nez v4, :cond_35

    .line 332
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v5

    goto :goto_36

    :cond_35
    const/4 v5, 0x0

    :goto_36
    if-lez v4, :cond_41

    .line 333
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v4

    sub-int/2addr v3, v1

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/city/objects/Car;->getTail(I)Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v5

    :cond_41
    if-nez v5, :cond_4b

    .line 334
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Car;->getLastTail()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v5

    .line 336
    :cond_4b
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$400(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    move-result-object v0

    invoke-virtual {v0, v2, v5, p1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->addTailCar(Linfo/flowersoft/theotown/draft/CarDraft;Linfo/flowersoft/theotown/city/objects/Car;I)Linfo/flowersoft/theotown/city/objects/Car;

    .line 337
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass22 (info.flowersoft.theotown.scripting.libraries.CarLibrary$22)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$22;
.super Lvm2/lib/TwoArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 341
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 344
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    const/4 v0, 0x0

    .line 345
    invoke-virtual {p2, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 347
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Car;->getChild()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v0

    if-nez v0, :cond_1a

    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1

    :cond_1a
    if-ltz p2, :cond_25

    .line 350
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v0

    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/city/objects/Car;->getTail(I)Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p2

    goto :goto_26

    :cond_25
    const/4 p2, 0x0

    :goto_26
    if-nez p2, :cond_30

    .line 351
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Car;->getLastTail()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p2

    .line 353
    :cond_30
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    if-eq p2, p1, :cond_42

    .line 354
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$400(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->removeTailCar(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 355
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 357
    :cond_42
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass23 (info.flowersoft.theotown.scripting.libraries.CarLibrary$23)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$23;
.super Lvm2/lib/OneArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 365
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    .line 366
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Car;->getChild()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 367
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$400(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    move-result-object v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->removeTail(Linfo/flowersoft/theotown/city/objects/Car;)V

    .line 368
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 370
    :cond_20
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass24 (info.flowersoft.theotown.scripting.libraries.CarLibrary$24)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$24;
.super Lvm2/lib/TwoArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 378
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    const/4 v0, 0x0

    .line 379
    invoke-virtual {p2, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 380
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Car;->getChild()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v0

    if-eqz v0, :cond_32

    if-ltz p2, :cond_22

    .line 382
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v0

    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/city/objects/Car;->getTail(I)Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p2

    goto :goto_23

    :cond_22
    const/4 p2, 0x0

    :goto_23
    if-nez p2, :cond_2d

    .line 383
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Car;->getLastTail()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p2

    .line 384
    :cond_2d
    iget-object p1, p2, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    return-object p1

    .line 386
    :cond_32
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass25 (info.flowersoft.theotown.scripting.libraries.CarLibrary$25)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$25;
.super Lvm2/lib/TwoArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 390
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 393
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    const/4 v0, 0x0

    .line 394
    invoke-virtual {p2, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 395
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Car;->getChild()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v0

    if-eqz v0, :cond_34

    if-ltz p2, :cond_22

    .line 397
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v0

    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/city/objects/Car;->getTail(I)Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p2

    goto :goto_23

    :cond_22
    const/4 p2, 0x0

    :goto_23
    if-nez p2, :cond_2d

    .line 398
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Car;->getLastTail()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p2

    .line 399
    :cond_2d
    iget p1, p2, Linfo/flowersoft/theotown/city/objects/Car;->frame:I

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 401
    :cond_34
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass26 (info.flowersoft.theotown.scripting.libraries.CarLibrary$26)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$26;
.super Lvm2/lib/ThreeArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 405
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$26;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 408
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$26;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    const/4 v0, 0x0

    .line 409
    invoke-virtual {p2, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 410
    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p3

    .line 411
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Car;->getChild()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v0

    if-eqz v0, :cond_33

    if-ltz p2, :cond_26

    .line 413
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v0

    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/city/objects/Car;->getTail(I)Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p2

    goto :goto_27

    :cond_26
    const/4 p2, 0x0

    :goto_27
    if-nez p2, :cond_31

    .line 414
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Car;->getLastTail()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p2

    .line 415
    :cond_31
    iput p3, p2, Linfo/flowersoft/theotown/city/objects/Car;->frame:I

    .line 417
    :cond_33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass27 (info.flowersoft.theotown.scripting.libraries.CarLibrary$27)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$27;
.super Lvm2/lib/OneArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 421
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 424
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    .line 425
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Car;->getCapacity()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass28 (info.flowersoft.theotown.scripting.libraries.CarLibrary$28)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$28;
.super Lvm2/lib/ThreeArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 429
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 7

    .line 432
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    .line 434
    invoke-virtual {p2}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    .line 435
    invoke-virtual {p2}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0}, Lio/blueflower/stapel2d/drawing/Color;-><init>()V

    invoke-static {p2, v1, v0}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p2

    goto :goto_1c

    :cond_1b
    move-object p2, v1

    :goto_1c
    const/4 v0, -0x1

    .line 439
    invoke-virtual {p3, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 441
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    if-gtz p3, :cond_32

    if-eqz p2, :cond_2e

    .line 443
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    goto :goto_2f

    :cond_2e
    move-object v0, v1

    :goto_2f
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Car;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_32
    const/4 v0, 0x1

    :goto_33
    if-le v0, p3, :cond_37

    if-gez p3, :cond_3d

    .line 449
    :cond_37
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Car;->getChild()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    if-nez p1, :cond_40

    .line 457
    :cond_3d
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    :cond_40
    if-eq p3, v0, :cond_44

    if-gez p3, :cond_4f

    :cond_44
    if-eqz p2, :cond_4b

    .line 453
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    goto :goto_4c

    :cond_4b
    move-object v2, v1

    :goto_4c
    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/objects/Car;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_33
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass29 (info.flowersoft.theotown.scripting.libraries.CarLibrary$29)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$29;
.super Lvm2/lib/OneArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 464
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    .line 465
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    .line 466
    iget-boolean v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    if-eqz v0, :cond_11

    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1

    .line 468
    :cond_11
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/tools/FollowCarTool;

    invoke-direct {v1, p1}, Linfo/flowersoft/theotown/tools/FollowCarTool;-><init>(Linfo/flowersoft/theotown/city/objects/Car;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 469
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass3 (info.flowersoft.theotown.scripting.libraries.CarLibrary$3)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$3;
.super Lvm2/lib/OneArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 119
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    .line 124
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)Linfo/flowersoft/theotown/components/traffic/carcontroller/ScriptedCarController;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-boolean p1, p1, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    if-nez p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass4 (info.flowersoft.theotown.scripting.libraries.CarLibrary$4)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$4;
.super Lvm2/lib/OneArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 128
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 131
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    .line 133
    iget-object p1, p1, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass5 (info.flowersoft.theotown.scripting.libraries.CarLibrary$5)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$5;
.super Lvm2/lib/OneArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 140
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    .line 142
    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Car;->frame:I

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass6 (info.flowersoft.theotown.scripting.libraries.CarLibrary$6)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$6;
.super Lvm2/lib/TwoArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 146
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 149
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    .line 151
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    iput p2, p1, Linfo/flowersoft/theotown/city/objects/Car;->frame:I

    .line 152
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass7 (info.flowersoft.theotown.scripting.libraries.CarLibrary$7)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$7;
.super Lvm2/lib/VarArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 7

    .line 159
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    .line 162
    iget v0, p1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    div-int/lit8 v0, v0, 0x2

    .line 163
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    iget v1, p1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    div-int/lit8 v1, v1, 0x2

    .line 164
    invoke-static {v1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v1

    iget v2, p1, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    .line 166
    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v3

    iget v4, p1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    div-int/lit8 v4, v4, 0x2

    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v3, v4, p1}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result p1

    sub-int/2addr v2, p1

    .line 165
    invoke-static {v2}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    .line 162
    invoke-static {v0, v1, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass8 (info.flowersoft.theotown.scripting.libraries.CarLibrary$8)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$8;
.super Lvm2/lib/OneArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 175
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    .line 176
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    .line 177
    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    div-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.CarLibrary.AnonymousClass9 (info.flowersoft.theotown.scripting.libraries.CarLibrary$9)
.class public Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$9;
.super Lvm2/lib/OneArgFunction;
.source "CarLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 182
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 185
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/CarLibrary;Lvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/CarOwner;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/CarOwner;->getCar()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    .line 187
    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    div-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method
