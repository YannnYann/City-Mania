###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;
.super Linfo/flowersoft/theotown/scripting/ManagedLibrary;
.source "ScenarioLibrary.kt"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$EntriesMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScenarioLibrary.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 2 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt\n*L\n1#1,374:1\n21#2,4:375\n31#2,4:379\n21#2,4:383\n21#2,4:387\n21#2,4:391\n21#2,4:395\n21#2,4:399\n21#2,4:403\n31#2,4:407\n31#2,4:411\n31#2,4:415\n31#2,4:419\n31#2,4:423\n21#2,4:427\n31#2,4:431\n21#2,4:435\n31#2,4:439\n31#2,4:443\n31#2,4:447\n21#2,4:451\n31#2,4:455\n31#2,4:459\n31#2,4:463\n21#2,4:467\n21#2,4:471\n21#2,4:475\n31#2,4:479\n31#2,4:483\n21#2,4:487\n21#2,4:491\n21#2,4:495\n31#2,4:499\n31#2,4:503\n31#2,4:507\n21#2,4:511\n21#2,4:515\n31#2,4:519\n21#2,4:523\n41#2,4:527\n*S KotlinDebug\n*F\n+ 1 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n74#1:375,4\n76#1:379,4\n87#1:383,4\n100#1:387,4\n101#1:391,4\n102#1:395,4\n103#1:399,4\n104#1:403,4\n106#1:407,4\n113#1:411,4\n120#1:415,4\n127#1:419,4\n134#1:423,4\n142#1:427,4\n143#1:431,4\n150#1:435,4\n155#1:439,4\n172#1:443,4\n179#1:447,4\n187#1:451,4\n193#1:455,4\n210#1:459,4\n216#1:463,4\n224#1:467,4\n236#1:471,4\n243#1:475,4\n246#1:479,4\n255#1:483,4\n261#1:487,4\n262#1:491,4\n263#1:495,4\n265#1:499,4\n272#1:503,4\n279#1:507,4\n287#1:511,4\n295#1:515,4\n299#1:519,4\n320#1:523,4\n324#1:527,4\n*E\n"
.end annotation


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 4

    const-string v0, "city"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    const-string v0, "libs/Scenario.lua"

    .line 35
    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->city:Linfo/flowersoft/theotown/city/City;

    .line 37
    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method

.method public static final synthetic access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;->assertPrivileged(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getArrayLib(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;
    .registers 1

    .line 35
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->getArrayLib()Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCity$p(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 35
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;
    .registers 1

    .line 35
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-object p0
.end method

.method public static final synthetic access$getGuiLib(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;
    .registers 1

    .line 35
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->getGuiLib()Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;
    .registers 1

    .line 35
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->getInfo()Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Linfo/flowersoft/theotown/city/ScenarioInfo;)V
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->setInfo(Linfo/flowersoft/theotown/city/ScenarioInfo;)V

    return-void
.end method

.method public static final synthetic access$updateCityStorage(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 1

    .line 35
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->updateCityStorage()V

    return-void
.end method


# virtual methods
.method public final getArrayLib()Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;
    .registers 3

    .line 46
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 47
    const-class v1, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    return-object v0
.end method

.method public final getGuiLib()Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;
    .registers 3

    .line 48
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 49
    const-class v1, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    return-object v0
.end method

.method public final getInfo()Linfo/flowersoft/theotown/city/ScenarioInfo;
    .registers 2

    .line 41
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getScenarioInfo()Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    return-object v0
.end method

.method public inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
    .registers 5

    const-string v0, "lib"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privateLib"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globals"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$1;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$1;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 74
    const-string v0, "isScenario"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$2;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$2;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 76
    const-string v0, "setScenario"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 21
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$3;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$3;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 87
    const-string v0, "showWelcomeWindow"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 21
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$4;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$4;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 100
    const-string v0, "getId"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 21
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$5;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$5;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 101
    const-string v0, "getTitle"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 21
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$6;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$6;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 102
    const-string v0, "getText"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 21
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$7;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$7;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 103
    const-string v0, "getAuthor"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 21
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$8;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$8;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 104
    const-string v0, "getMinVersion"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$9;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$9;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 106
    const-string v0, "setId"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$10;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$10;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 113
    const-string v0, "setTitle"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$11;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$11;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 120
    const-string v0, "setText"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$12;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$12;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 127
    const-string v0, "setAuthor"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$13;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$13;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 134
    const-string v0, "setMinVersion"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 21
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$14;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$14;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 142
    const-string v0, "getPluginsType"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$15;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$15;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 143
    const-string v0, "setPluginsType"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 21
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$16;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$16;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 150
    const-string v0, "getDisabledDrafts"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$17;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$17;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 155
    const-string v0, "setDisabledDrafts"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$18;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$18;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 172
    const-string v0, "addDisabledDraft"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$19;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$19;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 179
    const-string v0, "removeDisabledDraft"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 21
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$20;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$20;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 187
    const-string v0, "getWhitelistedDrafts"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$21;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$21;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 193
    const-string v0, "setWhitelistedDrafts"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$22;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$22;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 210
    const-string v0, "addWhitelistedDraft"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$23;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$23;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 216
    const-string v0, "removeWhitelistedDraft"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 21
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$24;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$24;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 224
    const-string v0, "resetTime"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 21
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$25;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$25;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 236
    const-string v0, "resetBudget"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 21
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$26;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$26;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 243
    const-string v0, "getGameMode"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$27;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$27;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 246
    const-string v0, "setGameMode"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$28;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$28;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 255
    const-string v0, "setUber"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 21
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$29;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$29;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 261
    const-string v0, "isAllowBuyMoney"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 21
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$30;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$30;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 262
    const-string v0, "isAllowLoans"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 21
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$31;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$31;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 263
    const-string v0, "grantAchievements"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$32;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$32;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 265
    const-string v0, "setAllowBuyMoney"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$33;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$33;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 272
    const-string v0, "setAllowLoans"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$34;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$34;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 279
    const-string v0, "setGrantAchievements"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 21
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$35;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$35;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 287
    const-string v0, "updateDrafts"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 21
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$36;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$36;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 295
    const-string v0, "getRequiredPlugins"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 31
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$37;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$37;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 299
    const-string v0, "setRequiredPluginIds"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 21
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$38;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$38;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 320
    const-string v0, "getWhitelistedPlugins"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 41
    new-instance p1, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$39;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$39;-><init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 324
    const-string p3, "setWhitelistedPluginIds"

    invoke-virtual {p2, p3, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method

.method public final setInfo(Linfo/flowersoft/theotown/city/ScenarioInfo;)V
    .registers 3

    .line 43
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/City;->setScenarioInfo(Linfo/flowersoft/theotown/city/ScenarioInfo;)V

    return-void
.end method

.method public final updateCityStorage()V
    .registers 8

    .line 57
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRawLuaStorage()Lvm2/LuaTable;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->getInfo()Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 59
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v2

    .line 60
    const-string v3, "id"

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lvm2/LuaValue;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v3, "title"

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lvm2/LuaValue;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v3, "text"

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lvm2/LuaValue;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v3, "author"

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lvm2/LuaValue;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v3, "min version"

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getMinVersion()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;I)V

    .line 65
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v1, v3

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(I)Lvm2/LuaInteger;

    move-result-object v1

    const-string v3, "time"

    invoke-virtual {v2, v3, v1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    goto :goto_51

    .line 67
    :cond_4f
    sget-object v2, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    .line 58
    :goto_51
    const-string v1, "45f674fe-dd47-4484-a9c1-03789d8168e0"

    invoke-virtual {v0, v1, v2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary.EntriesMappings (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$EntriesMappings)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$EntriesMappings;
.super Ljava/lang/Object;
.source "ScenarioLibrary.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "EntriesMappings"
.end annotation


# static fields
.field public static final synthetic entries$0:Lkotlin/enums/EnumEntries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/enums/EnumEntries<",
            "Linfo/flowersoft/theotown/city/GameMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/city/GameMode;->values()[Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$EntriesMappings;->entries$0:Lkotlin/enums/EnumEntries;

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$1 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$1)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$1;
.super Lvm2/lib/ZeroArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$1\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n1#1,66:1\n74#2:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 21
    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(Z)Lvm2/LuaBoolean;

    move-result-object v0

    if-nez v0, :cond_13

    .line 23
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_13
    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$10 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$10)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$10;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n114#2,2:67\n116#2,3:70\n1#3:69\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "setTitle"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 70
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    const-string v1, "checkjstring(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/ScenarioInfo;->setTitle(Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$updateCityStorage(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 68
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No active scenario"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$11 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$11)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$11;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n121#2,2:67\n123#2,3:70\n1#3:69\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$11;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$11;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "setText"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$11;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 70
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    const-string v1, "checkjstring(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/ScenarioInfo;->setText(Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$11;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$updateCityStorage(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 68
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No active scenario"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$12 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$12)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$12;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n128#2,2:67\n130#2,3:70\n1#3:69\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "setAuthor"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 70
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    const-string v1, "checkjstring(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/ScenarioInfo;->setAuthor(Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$updateCityStorage(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 68
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No active scenario"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$13 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$13)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$13;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n135#2,2:67\n137#2,3:70\n1#3:69\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "setMinVersion"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_24

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p1, v1}, Lvm2/LuaValue;->optint(I)I

    move-result p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/ScenarioInfo;->setMinVersion(I)V

    .line 71
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$updateCityStorage(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 68
    :cond_24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No active scenario"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$14 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$14)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$14;
.super Lvm2/lib/ZeroArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$1\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n1#1,66:1\n142#2:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$14;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 21
    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 142
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$14;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getAllowPluginsType()I

    move-result v0

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(I)Lvm2/LuaInteger;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-nez v0, :cond_16

    .line 23
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_16
    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$15 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$15)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$15;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n144#2,2:67\n146#2,2:70\n1#3:69\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$15;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$15;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "setPluginsType"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$15;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 70
    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/ScenarioInfo;->setAllowPluginsType(I)V

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 68
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No active scenario"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$16 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$16)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$16;
.super Lvm2/lib/ZeroArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$1\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n151#2,2:67\n153#2:70\n1#3:69\n1745#4:71\n1820#4,3:72\n*S KotlinDebug\n*F\n+ 1 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n153#1:71\n153#1:72,3\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 21
    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 5

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "getDisabledDrafts"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 70
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getArrayLib(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    move-result-object v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getDisabledDraftIds()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1745
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1820
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1821
    check-cast v3, Ljava/lang/String;

    .line 70
    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v3

    .line 1821
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 70
    :cond_3e
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createArray(Ljava/util/List;)Lvm2/LuaTable;

    move-result-object v0

    if-nez v0, :cond_46

    .line 23
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_46
    return-object v0

    .line 68
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No active scenario"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$17 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$17)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$17;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n156#2,2:67\n158#2,13:70\n1#3:69\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 7

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "setDisabledDrafts"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 70
    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p1

    .line 71
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getDisabledDraftIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 72
    invoke-virtual {p1}, Lvm2/LuaTable;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v2, v1, :cond_4f

    .line 73
    :goto_26
    invoke-virtual {p1, v2}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v3

    .line 74
    invoke-virtual {v3}, Lvm2/LuaValue;->isstring()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 75
    invoke-virtual {v3}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object v3

    goto :goto_40

    .line 77
    :cond_35
    const-class v4, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    .line 79
    :goto_40
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getDisabledDraftIds()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eq v2, v1, :cond_4f

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 81
    :cond_4f
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$updateCityStorage(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 68
    :cond_57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No active scenario"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$18 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$18)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$18;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n173#2,3:67\n176#2,2:71\n1#3:70\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "addDisabledDraft"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 71
    const-class v1, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {p1, v1}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 72
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getDisabledDraftIds()Ljava/util/Set;

    move-result-object v0

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v1, "id"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$updateCityStorage(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(Z)Lvm2/LuaBoolean;

    move-result-object p1

    if-nez p1, :cond_38

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_38
    return-object p1

    .line 71
    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid draft"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No active scenario"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$19 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$19)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$19;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n180#2,3:67\n183#2,2:71\n1#3:70\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "removeDisabledDraft"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 71
    const-class v1, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {p1, v1}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 72
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getDisabledDraftIds()Ljava/util/Set;

    move-result-object v0

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$updateCityStorage(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(Z)Lvm2/LuaBoolean;

    move-result-object p1

    if-nez p1, :cond_33

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_33
    return-object p1

    .line 71
    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid draft"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No active scenario"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$2 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$2)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$2;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n1#1,66:1\n77#2,8:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "setScenario"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 69
    new-instance p1, Linfo/flowersoft/theotown/city/ScenarioInfo;

    invoke-direct {p1}, Linfo/flowersoft/theotown/city/ScenarioInfo;-><init>()V

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    .line 68
    :goto_1c
    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$setInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Linfo/flowersoft/theotown/city/ScenarioInfo;)V

    .line 73
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$updateCityStorage(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 74
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object p1

    if-eqz p1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(Z)Lvm2/LuaBoolean;

    move-result-object p1

    if-nez p1, :cond_36

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_36
    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$20 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$20)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$20;
.super Lvm2/lib/ZeroArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$1\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n188#2,3:67\n191#2:71\n1#3:70\n1745#4:72\n1820#4,3:73\n*S KotlinDebug\n*F\n+ 1 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n191#1:72\n191#1:73,3\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 21
    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 5

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "getWhitelistedDrafts"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 71
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getArrayLib(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    move-result-object v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getWhitelistedDraftIds()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1745
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1820
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1821
    check-cast v3, Ljava/lang/String;

    .line 71
    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v3

    .line 1821
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 71
    :cond_3e
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createArray(Ljava/util/List;)Lvm2/LuaTable;

    move-result-object v0

    if-nez v0, :cond_46

    .line 23
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_46
    return-object v0

    .line 69
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No active scenario"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$21 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$21)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$21;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n194#2,2:67\n196#2,13:70\n1#3:69\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 7

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "setWhitelistedDrafts"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 70
    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p1

    .line 71
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getWhitelistedDraftIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 72
    invoke-virtual {p1}, Lvm2/LuaTable;->length()I

    move-result v1

    const/4 v2, 0x1

    if-gt v2, v1, :cond_4f

    .line 73
    :goto_26
    invoke-virtual {p1, v2}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v3

    .line 74
    invoke-virtual {v3}, Lvm2/LuaValue;->isstring()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 75
    invoke-virtual {v3}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object v3

    goto :goto_40

    .line 77
    :cond_35
    const-class v4, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    .line 79
    :goto_40
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getWhitelistedDraftIds()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eq v2, v1, :cond_4f

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 81
    :cond_4f
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$updateCityStorage(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 68
    :cond_57
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No active scenario"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$22 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$22)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$22;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n211#2,2:67\n213#2,2:70\n1#3:69\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "addWhitelistedDraft"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 70
    const-class v1, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {p1, v1}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 71
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getWhitelistedDraftIds()Ljava/util/Set;

    move-result-object v0

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v1, "id"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$updateCityStorage(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(Z)Lvm2/LuaBoolean;

    move-result-object p1

    if-nez p1, :cond_38

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_38
    return-object p1

    .line 70
    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid draft"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No active scenario"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$23 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$23)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$23;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n217#2,3:67\n220#2,2:71\n1#3:70\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "removeWhitelistedDraft"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 71
    const-class v1, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {p1, v1}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    if-eqz p1, :cond_34

    .line 72
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getWhitelistedDraftIds()Ljava/util/Set;

    move-result-object v0

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$updateCityStorage(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(Z)Lvm2/LuaBoolean;

    move-result-object p1

    if-nez p1, :cond_33

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_33
    return-object p1

    .line 71
    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid draft"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No active scenario"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$24 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$24)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$24;
.super Lvm2/lib/ZeroArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$1\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n1#1,66:1\n225#2,9:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 21
    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 6

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "resetTime"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getCity$p(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type info.flowersoft.theotown.components.DefaultDate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->reset()V

    .line 69
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getCity$p(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type info.flowersoft.theotown.components.DefaultStatistics"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultStatistics;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultStatistics;->reset()V

    .line 70
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getCity$p(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getCity$p(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/components/notification/DefaultNotificator;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 71
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getCity$p(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/City;->setLastSimulationTimestamp(J)V

    .line 72
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getCity$p(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v0

    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v3

    iput-wide v3, v0, Linfo/flowersoft/theotown/city/CityInfo;->creationTime:J

    .line 73
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getCity$p(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v0

    iput-wide v1, v0, Linfo/flowersoft/theotown/city/CityInfo;->playtimeSeconds:J

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getCity$p(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getCity$p(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Linfo/flowersoft/theotown/city/City;->setRank(Linfo/flowersoft/theotown/draft/RankDraft;J)V

    .line 23
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$25 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$25)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$25;
.super Lvm2/lib/ZeroArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$1\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n1#1,66:1\n237#2,4:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 21
    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 4

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "resetBudget"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getCity$p(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type info.flowersoft.theotown.components.DefaultBudget"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 69
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getCity$p(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/GameMode;->getMoneyAtStart()I

    move-result v1

    int-to-double v1, v1

    .line 68
    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->setEstate(D)V

    .line 23
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$26 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$26)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$26;
.super Lvm2/lib/ZeroArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$1\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n1#1,66:1\n244#2:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$26;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 21
    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$26;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getCity$p(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(I)Lvm2/LuaInteger;

    move-result-object v0

    if-nez v0, :cond_16

    .line 23
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_16
    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$27 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$27)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$27;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n1#1,66:1\n247#2,6:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "setGameMode"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getCity$p(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$EntriesMappings;->entries$0:Lkotlin/enums/EnumEntries;

    invoke-virtual {p1}, Lvm2/LuaValue;->checkint()I

    move-result p1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/City;->setGameMode(Linfo/flowersoft/theotown/city/GameMode;)V

    .line 69
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getCity$p(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result p1

    if-nez p1, :cond_3b

    .line 70
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getCity$p(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->setUber(Z)V

    .line 33
    :cond_3b
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$28 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$28)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$28;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n1#1,66:1\n256#2,3:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "setUber"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getCity$p(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {p1}, Lvm2/LuaValue;->checkboolean()Z

    move-result p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/City;->setUber(Z)V

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$29 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$29)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$29;
.super Lvm2/lib/ZeroArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$1\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n1#1,66:1\n261#2:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 21
    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 261
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getAllowBuyMoney()Z

    move-result v0

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(Z)Lvm2/LuaBoolean;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-nez v0, :cond_16

    .line 23
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_16
    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$3 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$3)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$3;
.super Lvm2/lib/ZeroArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$1\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n88#2,2:67\n91#2,7:70\n1#3:69\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 21
    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 6

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "showWelcomeWindow"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 70
    sget-object v1, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog;->Companion:Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$Companion;

    .line 71
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getContext$p(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v2

    .line 73
    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v3}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getGuiLib(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->getMaster()Lio/blueflower/stapel2d/gui/Master;

    move-result-object v3

    const-string v4, "getMaster(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v4, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$3$1;->INSTANCE:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$3$1;

    .line 70
    invoke-virtual {v1, v2, v0, v3, v4}, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$Companion;->forInfo(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/ScenarioInfo;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 74
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 23
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0

    .line 68
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No active scenario"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$3$1 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$3$1)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$3$1;
.super Ljava/lang/Object;
.source "ScenarioLibrary.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$3$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$3$1;

    invoke-direct {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$3$1;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$3$1;->INSTANCE:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$3$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$30 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$30)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$30;
.super Lvm2/lib/ZeroArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$1\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n1#1,66:1\n262#2:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$30;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 21
    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 262
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$30;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getAllowLoans()Z

    move-result v0

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(Z)Lvm2/LuaBoolean;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-nez v0, :cond_16

    .line 23
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_16
    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$31 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$31)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$31;
.super Lvm2/lib/ZeroArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$1\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n1#1,66:1\n263#2:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 21
    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 263
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$31;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getGrantAchievements()Z

    move-result v0

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(Z)Lvm2/LuaBoolean;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-nez v0, :cond_16

    .line 23
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_16
    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$32 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$32)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$32;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n266#2,2:67\n268#2,3:70\n1#3:69\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$32;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$32;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "setAllowBuyMoney"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$32;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 70
    invoke-virtual {p1}, Lvm2/LuaValue;->checkboolean()Z

    move-result p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/ScenarioInfo;->setAllowBuyMoney(Z)V

    .line 71
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$32;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$updateCityStorage(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 68
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No active scenario"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$33 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$33)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$33;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n273#2,2:67\n275#2,3:70\n1#3:69\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$33;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$33;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "setAllowLoans"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$33;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 70
    invoke-virtual {p1}, Lvm2/LuaValue;->checkboolean()Z

    move-result p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/ScenarioInfo;->setAllowLoans(Z)V

    .line 71
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$33;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$updateCityStorage(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 68
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No active scenario"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$34 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$34)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$34;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n280#2,2:67\n282#2,3:70\n1#3:69\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$34;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$34;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "setGrantAchievements"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$34;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 70
    invoke-virtual {p1}, Lvm2/LuaValue;->checkboolean()Z

    move-result p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/ScenarioInfo;->setGrantAchievements(Z)V

    .line 71
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$34;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$updateCityStorage(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 68
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No active scenario"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$35 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$35)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$35;
.super Lvm2/lib/ZeroArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$1\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n288#2,2:67\n290#2,3:70\n1#3:69\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$35;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 21
    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$35;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "updateDrafts"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$35;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 70
    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibraryKt;->applyToDrafts(Linfo/flowersoft/theotown/city/ScenarioInfo;)V

    .line 71
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$35;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$updateCityStorage(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 23
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0

    .line 68
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No active scenario"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$36 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$36)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$36;
.super Lvm2/lib/ZeroArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$1\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n296#2:67\n297#2:69\n1#3:68\n1745#4:70\n1820#4,3:71\n*S KotlinDebug\n*F\n+ 1 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n297#1:70\n297#1:71,3\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$36;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 21
    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 5

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$36;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 69
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$36;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getArrayLib(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    move-result-object v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getRequiredStorePlugins()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1745
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1820
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1821
    check-cast v3, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    .line 69
    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->toLuaTable()Lvm2/LuaTable;

    move-result-object v3

    .line 1821
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 69
    :cond_37
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createArray(Ljava/util/List;)Lvm2/LuaTable;

    move-result-object v0

    if-nez v0, :cond_3f

    .line 23
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_3f
    return-object v0

    .line 67
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No active scenario"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$37 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$37)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$37;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n300#2,2:67\n302#2,3:70\n305#2,13:79\n1#3:69\n1379#4,2:73\n1408#4,4:75\n*S KotlinDebug\n*F\n+ 1 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n304#1:73,2\n304#1:75,4\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 9

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "setRequiredPluginIds"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_b2

    .line 70
    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p1

    .line 71
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v1

    .line 72
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getRequiredStorePlugins()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    const/16 v3, 0xa

    .line 1379
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v3

    .line 1380
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1408
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1409
    move-object v5, v3

    check-cast v5, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    .line 72
    invoke-virtual {v5}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1409
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    .line 79
    :cond_54
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getRequiredStorePlugins()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 81
    invoke-virtual {p1}, Lvm2/LuaTable;->length()I

    move-result v2

    const/4 v3, 0x1

    if-gt v3, v2, :cond_aa

    .line 82
    :goto_62
    invoke-virtual {p1, v3}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5}, Lvm2/LuaValue;->checkint()I

    move-result v5

    .line 83
    invoke-virtual {v1, v5}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object v6

    if-eqz v6, :cond_76

    .line 84
    new-instance v5, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    invoke-direct {v5, v6}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;-><init>(Linfo/flowersoft/theotown/store/ManagedPluginFile;)V

    goto :goto_83

    .line 85
    :cond_76
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    if-eqz v6, :cond_8f

    move-object v5, v6

    .line 87
    :goto_83
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getRequiredStorePlugins()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v3, v2, :cond_aa

    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    .line 83
    :cond_8f
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not resolve plugin of id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_aa
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$37;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$updateCityStorage(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 68
    :cond_b2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No active scenario"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$38 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$38)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$38;
.super Lvm2/lib/ZeroArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$1\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n321#2:67\n322#2:69\n1#3:68\n1745#4:70\n1820#4,3:71\n*S KotlinDebug\n*F\n+ 1 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n322#1:70\n322#1:71,3\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$38;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 21
    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 5

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$38;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 69
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$38;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getArrayLib(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    move-result-object v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getWhitelistedStorePlugins()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1745
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1820
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1821
    check-cast v3, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    .line 69
    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->toLuaTable()Lvm2/LuaTable;

    move-result-object v3

    .line 1821
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 69
    :cond_37
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createArray(Ljava/util/List;)Lvm2/LuaTable;

    move-result-object v0

    if-nez v0, :cond_3f

    .line 23
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_3f
    return-object v0

    .line 67
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No active scenario"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$39 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$39)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$39;
.super Lvm2/lib/TwoArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$3\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n325#2,2:67\n327#2,3:70\n330#2,31:79\n1#3:69\n1379#4,2:73\n1408#4,4:75\n*S KotlinDebug\n*F\n+ 1 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n329#1:73,2\n329#1:75,4\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$39;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 41
    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "arg1"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "arg2"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v2, v0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$39;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v4, "setWhitelistedPluginIds"

    invoke-static {v2, v4}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v2, v0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$39;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v2}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v2

    if-eqz v2, :cond_137

    .line 70
    invoke-virtual {v3}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object v3

    const-string v4, "checktable(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v4

    .line 72
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getRequiredStorePlugins()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    const/16 v6, 0xa

    .line 1379
    invoke-static {v5, v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-static {v6}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(II)I

    move-result v6

    .line 1380
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1408
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_64

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1409
    move-object v8, v6

    check-cast v8, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    .line 72
    invoke-virtual {v8}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1409
    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    .line 79
    :cond_64
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getWhitelistedStorePlugins()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    const/4 v5, 0x0

    .line 81
    invoke-virtual {v1, v5}, Lvm2/LuaValue;->opttable(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v1

    const/4 v6, 0x0

    if-eqz v1, :cond_88

    .line 84
    invoke-virtual {v1}, Lvm2/LuaTable;->keys()[Lvm2/LuaValue;

    move-result-object v8

    const-string v9, "keys(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v9, v8

    move v10, v6

    :goto_7e
    if-ge v10, v9, :cond_88

    aget-object v11, v8, v10

    .line 85
    invoke-virtual {v3, v6, v11}, Lvm2/LuaTable;->insert(ILvm2/LuaValue;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_7e

    .line 89
    :cond_88
    invoke-virtual {v3}, Lvm2/LuaTable;->length()I

    move-result v8

    const/4 v9, 0x1

    if-gt v9, v8, :cond_12f

    .line 90
    :goto_8f
    invoke-virtual {v3, v9}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v10

    invoke-virtual {v10}, Lvm2/LuaValue;->checkint()I

    move-result v12

    .line 91
    invoke-virtual {v4, v12}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object v10

    if-eqz v10, :cond_a6

    .line 92
    new-instance v11, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    invoke-direct {v11, v10}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;-><init>(Linfo/flowersoft/theotown/store/ManagedPluginFile;)V

    :cond_a2
    move-object/from16 p2, v1

    goto/16 :goto_11f

    .line 93
    :cond_a6
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    if-nez v11, :cond_a2

    if-eqz v1, :cond_fe

    .line 94
    invoke-virtual {v1, v12}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v10

    if-eqz v10, :cond_fe

    invoke-virtual {v10, v5}, Lvm2/LuaValue;->opttable(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v10

    if-eqz v10, :cond_fe

    .line 95
    new-instance v11, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    .line 97
    const-string v13, "title"

    invoke-virtual {v10, v13}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v13

    invoke-virtual {v13}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object v13

    .line 98
    const-string v14, "text"

    invoke-virtual {v10, v14}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 99
    const-string v5, "version"

    invoke-virtual {v10, v5}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5, v6}, Lvm2/LuaValue;->optint(I)I

    move-result v5

    move-object/from16 p2, v1

    .line 100
    const-string v1, "authorId"

    invoke-virtual {v10, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1, v6}, Lvm2/LuaValue;->optint(I)I

    move-result v16

    .line 101
    const-string v1, "author"

    invoke-virtual {v10, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1, v15}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move v15, v5

    .line 95
    invoke-direct/range {v11 .. v17}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_101

    :cond_fe
    move-object/from16 p2, v1

    const/4 v11, 0x0

    :goto_101
    if-eqz v11, :cond_104

    goto :goto_11f

    .line 91
    :cond_104
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not resolve plugin of id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :goto_11f
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getWhitelistedStorePlugins()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v9, v8, :cond_12f

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p2

    const/4 v5, 0x0

    goto/16 :goto_8f

    .line 108
    :cond_12f
    iget-object v1, v0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$39;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$updateCityStorage(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 43
    sget-object v1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v1

    .line 68
    :cond_137
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No active scenario"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$4 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$4)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$4;
.super Lvm2/lib/ZeroArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$1\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n1#1,66:1\n100#2:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 21
    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 100
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-nez v0, :cond_18

    .line 23
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_18
    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$5 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$5)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$5;
.super Lvm2/lib/ZeroArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$1\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n1#1,66:1\n101#2:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 21
    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 101
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-nez v0, :cond_18

    .line 23
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_18
    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$6 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$6)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$6;
.super Lvm2/lib/ZeroArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$1\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n1#1,66:1\n102#2:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 21
    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-nez v0, :cond_18

    .line 23
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_18
    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$7 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$7)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$7;
.super Lvm2/lib/ZeroArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$1\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n1#1,66:1\n103#2:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 21
    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 103
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getAuthor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    if-nez v0, :cond_18

    .line 23
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_18
    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$8 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$8)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$8;
.super Lvm2/lib/ZeroArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$1\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n*L\n1#1,66:1\n104#2:67\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 21
    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 104
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getMinVersion()I

    move-result v0

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/LuahelpersKt;->toLua(I)Lvm2/LuaInteger;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-nez v0, :cond_16

    .line 23
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    :cond_16
    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$9 (info.flowersoft.theotown.scripting.libraries.ScenarioLibrary$inject$$inlined$luaFun$9)
.class public final Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$9;
.super Lvm2/lib/OneArgFunction;
.source "luahelpers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nluahelpers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 luahelpers.kt\ninfo/flowersoft/theotown/scripting/LuahelpersKt$luaFun$2\n+ 2 ScenarioLibrary.kt\ninfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,66:1\n107#2,2:67\n109#2,3:70\n1#3:69\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V
    .registers 2

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    .line 31
    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    const-string v0, "arg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    const-string v1, "setId"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$assertPrivileged(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$getInfo(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 70
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    const-string v1, "checkjstring(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/ScenarioInfo;->setId(Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary$inject$$inlined$luaFun$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;

    invoke-static {p1}, Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;->access$updateCityStorage(Linfo/flowersoft/theotown/scripting/libraries/ScenarioLibrary;)V

    .line 33
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 68
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No active scenario"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
