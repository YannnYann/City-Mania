###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;
.super Linfo/flowersoft/theotown/scripting/ManagedLibrary;
.source "TheoTownLibrary.java"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;


# instance fields
.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

.field public final localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

.field public rootTheoTownDir:Linfo/flowersoft/theotown/util/vfs/AbstractFile;


# direct methods
.method public static synthetic $r8$lambda$9Ire2y4Is6XadaDiamcJv76VEkA(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 83
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    new-instance v1, Linfo/flowersoft/theotown/stages/CityStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/stages/CityStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/cityfile/RegionInformation;Linfo/flowersoft/theotown/stages/CityStage$CityVisitor;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    :cond_1f
    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 4

    .line 65
    const-string v0, "libs/TheoTown.lua"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->rootTheoTownDir:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 66
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 67
    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    .line 68
    new-instance p2, Linfo/flowersoft/theotown/util/DraftLocalizer;

    const-string v0, ""

    invoke-direct {p2, p1, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;Linfo/flowersoft/theotown/util/vfs/AbstractFile;ZLjava/lang/String;Z)V
    .registers 5

    .line 56
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->loadExternalCity(Linfo/flowersoft/theotown/util/vfs/AbstractFile;ZLjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;
    .registers 1

    .line 56
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;Ljava/io/File;)V
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->loadCity(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;->assertPrivileged(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)Linfo/flowersoft/theotown/util/DraftLocalizer;
    .registers 1

    .line 56
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;->assertPrivileged(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 1

    .line 56
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->getRootTheoTownDir()Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;->assertPrivileged(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;Ljava/lang/String;)V
    .registers 2

    .line 56
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;->assertPrivileged(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getRootTheoTownDir()Linfo/flowersoft/theotown/util/vfs/AbstractFile;
    .registers 4

    .line 511
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->rootTheoTownDir:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    if-nez v0, :cond_11

    .line 512
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getTheoTownDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "game"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/util/vfs/RealFile;->parse(Ljava/io/File;Ljava/lang/String;Z)Linfo/flowersoft/theotown/util/vfs/RealFile;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->rootTheoTownDir:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    .line 514
    :cond_11
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->rootTheoTownDir:Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    return-object v0
.end method

.method public inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
    .registers 5

    .line 117
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$2;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$2;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "_loadCity"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 144
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$3;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$3;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "_execute"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 157
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$4;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$4;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "getGlobalFunVar"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 166
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$5;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$5;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "setGlobalFunVar"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 176
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$6;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$6;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "getDiamonds"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 183
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$7;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$7;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "spendDiamonds"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 202
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$8;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$8;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "getRegionCoins"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 209
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$9;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$9;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "spendRegionCoins"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 222
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$10;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$10;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "earnRegionCoins"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 235
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$11;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$11;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "getStorage"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 242
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$12;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$12;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "getFileStorage"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 249
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$13;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$13;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "registerCommand"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 265
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$14;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$14;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "getExperiment"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 273
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$15;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$15;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "setExperiment"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 283
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$16;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$16;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "translate"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 292
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$17;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$17;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "translateInline"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 300
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$18;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$18;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "formatMoney"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 308
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$19;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$19;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "formatNumber"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 320
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "playSound"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 376
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$21;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$21;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "getId"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 383
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$22;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$22;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "getConfig"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 397
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$23;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$23;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "getPlayTime"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 404
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$24;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$24;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "getUserId"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 412
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$25;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$25;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "getUserPermissions"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 420
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$26;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$26;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "getUserAdmin"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 428
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$27;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$27;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "getUserName"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 436
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$28;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$28;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "getTheoTownDir"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 444
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$29;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$29;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "getPluginDir"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 452
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$30;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$30;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "isRTL"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 459
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$31;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$31;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "achieve"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 475
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$32;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$32;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "getInstalledStorePlugins"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 495
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$33;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$33;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V

    const-string v0, "showSuccessOverlay"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 505
    const-class p2, Linfo/flowersoft/theotown/resources/Resources;

    invoke-static {p2}, Lvm2/lib/jse/JavaClass;->forClass(Ljava/lang/Class;)Lvm2/lib/jse/JavaClass;

    move-result-object p2

    const-string p3, "RESOURCES"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 506
    const-class p2, Linfo/flowersoft/theotown/resources/Settings;

    invoke-static {p2}, Lvm2/lib/jse/JavaClass;->forClass(Ljava/lang/Class;)Lvm2/lib/jse/JavaClass;

    move-result-object p2

    const-string p3, "SETTINGS"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 507
    const-class p2, Linfo/flowersoft/theotown/resources/Constants;

    invoke-static {p2}, Lvm2/lib/jse/JavaClass;->forClass(Ljava/lang/Class;)Lvm2/lib/jse/JavaClass;

    move-result-object p2

    const-string p3, "CONSTANTS"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method

.method public final loadCity(Ljava/io/File;)V
    .registers 6

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 73
    new-instance v0, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;-><init>(Ljava/io/File;Lio/blueflower/stapel2d/gamestack/Translator;)V

    .line 74
    new-instance p1, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$1;

    invoke-direct {p1, p0, v0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$1;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    .line 81
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    .line 88
    new-instance v2, Linfo/flowersoft/theotown/stages/LoadWaitingStage;

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v2, v3, p1, v1, v0}, Linfo/flowersoft/theotown/stages/LoadWaitingStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    .line 89
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    :cond_33
    return-void
.end method

.method public final loadExternalCity(Linfo/flowersoft/theotown/util/vfs/AbstractFile;ZLjava/lang/String;Z)V
    .registers 6

    if-eqz p1, :cond_56

    .line 94
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result v0

    if-eqz v0, :cond_56

    if-eqz p2, :cond_f

    .line 95
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getLocalMapSaveDir()Ljava/io/File;

    move-result-object p2

    goto :goto_13

    .line 96
    :cond_f
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getOldMapSaveDir()Ljava/io/File;

    move-result-object p2

    .line 97
    :goto_13
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_56

    :cond_1f
    if-eqz p3, :cond_27

    .line 98
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_27
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getName()Ljava/lang/String;

    move-result-object p3

    .line 99
    :cond_2b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_38

    if-eqz p4, :cond_44

    .line 102
    :cond_38
    :try_start_38
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->read()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/util/Files;->copyFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3f} :catch_40

    goto :goto_44

    :catch_40
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    :cond_44
    :goto_44
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_56

    .line 108
    new-instance p1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->loadCity(Ljava/io/File;)V

    :cond_56
    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass1 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$1)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$1;
.super Ljava/lang/Thread;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->loadCity(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

.field public final synthetic val$keeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
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

    .line 74
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$1;->val$keeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 77
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$1;->val$keeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->load()V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass10 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$10)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$10;
.super Lvm2/lib/OneArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 222
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 225
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    if-lez p1, :cond_1f

    .line 227
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "earnRegionCoins"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->assertSuperPrivileged(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnRegionCoins(I)V

    .line 229
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v0

    const/4 v1, 0x3

    int-to-double v2, p1

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->addEvent(ID)V

    .line 231
    :cond_1f
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass11 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$11)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$11;
.super Lvm2/lib/ZeroArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 235
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$11;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 238
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getInstance()Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getLuaStorage()Lvm2/LuaTable;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass12 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$12)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$12;
.super Lvm2/lib/ZeroArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 242
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 245
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getInstance()Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getLuaFileStorage()Lvm2/LuaTable;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass13 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$13)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$13;
.super Lvm2/lib/TwoArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 249
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 252
    invoke-virtual {p1}, Lvm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 253
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-virtual {p2}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object p2

    .line 255
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    invoke-static {p1, p2, v0}, Linfo/flowersoft/theotown/stages/commandhandler/LuaHandler;->registerLuaCommand(Ljava/lang/String;Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V

    goto :goto_33

    .line 256
    :cond_1a
    invoke-virtual {p1}, Lvm2/LuaValue;->isfunction()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 257
    invoke-virtual {p1}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object p1

    .line 258
    invoke-virtual {p2}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object p2

    .line 259
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v0

    invoke-static {p1, p2, v0}, Linfo/flowersoft/theotown/stages/commandhandler/LuaHandler;->registerLuaCommand(Lvm2/LuaFunction;Lvm2/LuaFunction;Linfo/flowersoft/theotown/scripting/Script;)V

    .line 261
    :cond_33
    :goto_33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass14 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$14)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$14;
.super Lvm2/lib/OneArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 265
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$14;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 268
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-static {}, Linfo/flowersoft/theotown/resources/ExperimentManager;->getInstance()Linfo/flowersoft/theotown/resources/ExperimentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/resources/ExperimentManager;->getValue(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass15 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$15)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$15;
.super Lvm2/lib/TwoArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 273
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$15;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 276
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 277
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 278
    invoke-static {}, Linfo/flowersoft/theotown/resources/ExperimentManager;->getInstance()Linfo/flowersoft/theotown/resources/ExperimentManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/resources/ExperimentManager;->setValue(Ljava/lang/String;I)V

    .line 279
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass16 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$16)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$16;
.super Lvm2/lib/OneArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 286
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->access$400(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)Linfo/flowersoft/theotown/util/DraftLocalizer;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass17 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$17)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$17;
.super Lvm2/lib/OneArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 292
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 295
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 296
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->access$400(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)Linfo/flowersoft/theotown/util/DraftLocalizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizePacked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass18 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$18)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$18;
.super Lvm2/lib/TwoArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 300
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 303
    invoke-virtual {p1}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v0

    const/4 p1, 0x0

    .line 304
    invoke-virtual {p2, p1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p1

    .line 305
    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(DZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass19 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$19)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$19;
.super Lvm2/lib/ThreeArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 308
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 311
    invoke-virtual {p1}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v0

    const/4 p1, 0x0

    .line 312
    invoke-virtual {p2, p1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p1

    const/4 p2, 0x1

    .line 313
    invoke-virtual {p3, p2}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 315
    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/util/Localizer;->localizeBigNumber(DZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    .line 316
    :cond_15
    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/util/Localizer;->localizeSmallNumber(DZ)Ljava/lang/String;

    move-result-object p1

    .line 314
    :goto_19
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass2 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$2)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$2;
.super Lvm2/lib/VarArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 7

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 121
    invoke-virtual {p1, v2}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v2

    const/4 v4, 0x3

    .line 122
    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4, v3}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v3

    const/4 v4, 0x4

    .line 123
    invoke-virtual {p1, v4}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object p1

    invoke-virtual {p1, v1}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 125
    const-string v4, ".."

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    const/4 p1, 0x0

    .line 128
    :cond_34
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentScript()Linfo/flowersoft/theotown/scripting/Script;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->findExternalCity(Ljava/lang/String;Linfo/flowersoft/theotown/scripting/Script;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v1

    if-eqz v1, :cond_4e

    .line 130
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 131
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-static {v0, v1, v3, p1, v2}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;Linfo/flowersoft/theotown/util/vfs/AbstractFile;ZLjava/lang/String;Z)V

    goto :goto_69

    .line 133
    :cond_4e
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/CityLibrary;->findInternalCity(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Ljava/io/File;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-static {p1}, Linfo/flowersoft/theotown/resources/Resources;->isInTheoTownDir(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 136
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;Ljava/io/File;)V

    .line 140
    :cond_69
    :goto_69
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass20 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$20)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20;
.super Lvm2/lib/ThreeArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 320
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 17

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 323
    invoke-virtual {p2, v0, v1}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v0

    double-to-float v5, v0

    const/4 p2, 0x0

    move-object/from16 v0, p3

    .line 324
    invoke-virtual {v0, p2}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v7

    .line 327
    invoke-virtual {p1}, Lvm2/LuaValue;->isint()Z

    move-result p2

    if-eqz p2, :cond_26

    .line 328
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result v3

    .line 329
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object v2

    sget-object v4, Linfo/flowersoft/theotown/resources/SoundType;->PLUGIN:Linfo/flowersoft/theotown/resources/SoundType;

    const/high16 v8, 0x3f800000    # 1.0f

    move v6, v5

    invoke-virtual/range {v2 .. v8}, Linfo/flowersoft/theotown/resources/SoundPlayer;->play(ILinfo/flowersoft/theotown/resources/SoundType;FFZF)Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    move-result-object p1

    goto :goto_47

    .line 332
    :cond_26
    const-class p2, Linfo/flowersoft/theotown/draft/SoundDraft;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/SoundDraft;

    if-eqz p1, :cond_46

    .line 334
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object v6

    move v11, v7

    iget v7, p1, Linfo/flowersoft/theotown/draft/SoundDraft;->sound:I

    sget-object v8, Linfo/flowersoft/theotown/resources/SoundType;->PLUGIN:Linfo/flowersoft/theotown/resources/SoundType;

    iget p1, p1, Linfo/flowersoft/theotown/draft/SoundDraft;->volume:F

    mul-float v9, v5, p1

    mul-float v10, v5, p1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual/range {v6 .. v12}, Linfo/flowersoft/theotown/resources/SoundPlayer;->play(ILinfo/flowersoft/theotown/resources/SoundType;FFZF)Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    move-result-object p1

    goto :goto_47

    :cond_46
    const/4 p1, 0x0

    :goto_47
    if-eqz p1, :cond_6c

    .line 343
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object p2

    .line 345
    new-instance v0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20$1;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20$1;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20;Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;)V

    const-string v1, "stop"

    invoke-virtual {p2, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 352
    new-instance v0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20$2;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20$2;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20;Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;)V

    const-string v1, "setVolume"

    invoke-virtual {p2, v1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 361
    new-instance v0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20$3;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20$3;-><init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20;Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;)V

    const-string p1, "setRate"

    invoke-virtual {p2, p1, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-object p2

    .line 371
    :cond_6c
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass20.AnonymousClass1 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$20$1)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20$1;
.super Lvm2/lib/ZeroArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20;->call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20;

.field public final synthetic val$s0:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20;Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;)V
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

    .line 345
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20$1;->this$1:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20$1;->val$s0:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 348
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20$1;->val$s0:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->stop()V

    .line 349
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass20.AnonymousClass2 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$20$2)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20$2;
.super Lvm2/lib/TwoArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20;->call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20;

.field public final synthetic val$s0:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20;Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;)V
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

    .line 352
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20$2;->this$1:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20$2;->val$s0:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 355
    invoke-virtual {p1}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v0

    double-to-float p1, v0

    float-to-double v0, p1

    .line 356
    invoke-virtual {p2, v0, v1}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v0

    double-to-float p2, v0

    .line 357
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20$2;->val$s0:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->setVolume(FF)V

    .line 358
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass20.AnonymousClass3 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$20$3)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20$3;
.super Lvm2/lib/OneArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20;->call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20;

.field public final synthetic val$s0:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20;Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;)V
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

    .line 361
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20$3;->this$1:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20$3;->val$s0:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 364
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$20$3;->val$s0:Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    invoke-virtual {p1}, Lvm2/LuaValue;->checkdouble()D

    move-result-wide v1

    double-to-float p1, v1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;->setRate(F)V

    .line 365
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass21 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$21)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$21;
.super Lvm2/lib/ZeroArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 376
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 379
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->getNumId()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass22 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$22)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$22;
.super Lvm2/lib/OneArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 383
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 2

    .line 386
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 387
    invoke-static {p1}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    .line 389
    :try_start_8
    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/LuaTableSerializer;->deserialize(Linfo/flowersoft/theotown/util/json/JSONObject;)Lvm2/LuaTable;

    move-result-object p1
    :try_end_c
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_8 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 391
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 392
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass23 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$23)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$23;
.super Lvm2/lib/ZeroArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 397
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 400
    sget-wide v0, Linfo/flowersoft/theotown/resources/Settings;->playTimeSeconds:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass24 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$24)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$24;
.super Lvm2/lib/ZeroArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 407
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v0

    long-to-double v0, v0

    goto :goto_16

    :cond_14
    const-wide/16 v0, 0x0

    :goto_16
    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass25 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$25)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$25;
.super Lvm2/lib/ZeroArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 412
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 415
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getPermissions()I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass26 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$26)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$26;
.super Lvm2/lib/ZeroArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 420
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$26;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 423
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getAdmin()I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass27 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$27)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$27;
.super Lvm2/lib/ZeroArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 431
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    return-object v0

    :cond_17
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass28 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$28)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$28;
.super Lvm2/lib/ZeroArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 436
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 439
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    const-string v1, "dir"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    invoke-static {v0}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass29 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$29)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$29;
.super Lvm2/lib/ZeroArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 444
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 447
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    const-string v1, "getPluginDir"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    const-string v1, "plugins"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/vfs/AbstractFile;->getFile(Ljava/lang/String;)Linfo/flowersoft/theotown/util/vfs/AbstractFile;

    move-result-object v0

    invoke-static {v0}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass3 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$3)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$3;
.super Lvm2/lib/TwoArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public static synthetic $r8$lambda$6P-rhuVHRWpm_XoEA-8_g-FHyLo(Lvm2/LuaFunction;Ljava/lang/String;)V
    .registers 2

    .line 151
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 144
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 7

    .line 147
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 148
    invoke-virtual {p2}, Lvm2/LuaValue;->checkfunction()Lvm2/LuaFunction;

    move-result-object p2

    .line 150
    new-instance v0, Linfo/flowersoft/theotown/stages/ConsoleStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v2, v3}, Linfo/flowersoft/theotown/stages/ConsoleStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/region/Region;Z)V

    .line 151
    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$3$$ExternalSyntheticLambda0;-><init>(Lvm2/LuaFunction;)V

    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/stages/ConsoleStage;->process(Ljava/lang/String;Lio/blueflower/stapel2d/util/Setter;)V

    .line 153
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$3$$ExternalSyntheticLambda0 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$3$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$3$$ExternalSyntheticLambda0;
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

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$3$$ExternalSyntheticLambda0;->f$0:Lvm2/LuaFunction;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$3$$ExternalSyntheticLambda0;->f$0:Lvm2/LuaFunction;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$3;->$r8$lambda$6P-rhuVHRWpm_XoEA-8_g-FHyLo(Lvm2/LuaFunction;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass30 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$30)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$30;
.super Lvm2/lib/ZeroArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 452
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$30;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 455
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$30;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/gamestack/Translator;->prefersRTL()Z

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass31 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$31)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$31;
.super Lvm2/lib/ThreeArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 459
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 462
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "achieve"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->assertSuperPrivileged(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 464
    invoke-virtual {p2}, Lvm2/LuaValue;->isint()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p3}, Lvm2/LuaValue;->isint()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 465
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    .line 467
    invoke-virtual {p2}, Lvm2/LuaValue;->checkint()I

    move-result p2

    .line 468
    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p3

    .line 465
    invoke-interface {v0, p1, p2, p3}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;II)Z

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 470
    :cond_2c
    sget-object p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    invoke-interface {p2, p1}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass32 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$32)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$32;
.super Lvm2/lib/ZeroArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 475
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$32;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 8

    .line 478
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$32;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    const-string v1, "getInstalledStorePlugins"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->access$800(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;Ljava/lang/String;)V

    .line 479
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    .line 480
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 481
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v2

    .line 482
    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getDownloadedPlugins()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 484
    :goto_21
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_50

    .line 485
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    .line 486
    invoke-virtual {v5}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v6

    invoke-virtual {v2, v6}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isLoaded(I)Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-virtual {v5}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v6

    invoke-virtual {v2, v6}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isInternalPlugin(I)Z

    move-result v6

    if-nez v6, :cond_4d

    .line 487
    new-instance v6, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    invoke-direct {v6, v5}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;-><init>(Linfo/flowersoft/theotown/store/ManagedPluginFile;)V

    invoke-virtual {v6}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->toLuaTable()Lvm2/LuaTable;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 491
    :cond_50
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createArray(Ljava/util/List;)Lvm2/LuaTable;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass33 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$33)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$33;
.super Lvm2/lib/TwoArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 495
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$33;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    const/4 v0, 0x0

    .line 498
    invoke-virtual {p1, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    const-wide/16 v0, 0x0

    .line 499
    invoke-virtual {p2, v0, v1}, Lvm2/LuaValue;->optdouble(D)D

    move-result-wide v0

    .line 500
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v1}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->addEvent(ID)V

    .line 501
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass4 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$4)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$4;
.super Lvm2/lib/TwoArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 157
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 160
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    .line 161
    invoke-virtual {p2, v0, v1}, Lvm2/LuaValue;->optlong(J)J

    move-result-wide v0

    .line 162
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getInstance()Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v1}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->get(Ljava/lang/String;J)J

    move-result-wide p1

    long-to-double p1, p1

    invoke-static {p1, p2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass5 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$5)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$5;
.super Lvm2/lib/TwoArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 166
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 169
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-virtual {p2}, Lvm2/LuaValue;->checklong()J

    move-result-wide v0

    .line 171
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getInstance()Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    move-result-object p2

    invoke-virtual {p2, p1, v0, v1}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->set(Ljava/lang/String;J)V

    .line 172
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass6 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$6)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$6;
.super Lvm2/lib/ZeroArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 176
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 179
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass7 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$7)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$7;
.super Lvm2/lib/TwoArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 183
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 7

    .line 186
    invoke-virtual {p1}, Lvm2/LuaValue;->toint()I

    move-result p1

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p2, v0}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p2

    .line 188
    sget-boolean v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v1, :cond_55

    .line 189
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getCurrentSource()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-ltz p1, :cond_3c

    const/16 v3, 0x2710

    if-ge p1, v3, :cond_26

    .line 190
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v3

    if-le p1, v3, :cond_30

    :cond_26
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->isPrivileged()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 191
    :cond_30
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->spendDiamonds(ILjava/lang/String;)V

    .line 192
    invoke-static {v2}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    :cond_3c
    if-gez p1, :cond_55

    .line 193
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->isSuperPrivileged()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 194
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    neg-int p1, p1

    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnDiamonds(IZLjava/lang/String;)V

    .line 195
    invoke-static {v2}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1

    .line 198
    :cond_55
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass8 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$8)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$8;
.super Lvm2/lib/ZeroArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 202
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 205
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getRegionCoins()I

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary.AnonymousClass9 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$9)
.class public Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$9;
.super Lvm2/lib/OneArgFunction;
.source "TheoTownLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 209
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 212
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    if-lez p1, :cond_21

    .line 213
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getRegionCoins()I

    move-result v0

    if-lt v0, p1, :cond_21

    .line 214
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    const-string v1, "spendRegionCoins"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->access$300(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->spendRegionCoins(I)V

    .line 216
    sget-object p1, Lvm2/LuaValue;->TRUE:Lvm2/LuaBoolean;

    return-object p1

    .line 218
    :cond_21
    sget-object p1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$$ExternalSyntheticLambda0 (info.flowersoft.theotown.scripting.libraries.TheoTownLibrary$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;->$r8$lambda$9Ire2y4Is6XadaDiamcJv76VEkA(Linfo/flowersoft/theotown/scripting/libraries/TheoTownLibrary;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    return-void
.end method
