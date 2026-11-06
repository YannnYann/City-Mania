###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary (info.flowersoft.theotown.scripting.libraries.DraftLibrary)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;
.super Linfo/flowersoft/theotown/scripting/ManagedLibrary;
.source "DraftLibrary.java"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;


# instance fields
.field public final localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 4

    .line 42
    const-string v0, "libs/Draft.lua"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)Linfo/flowersoft/theotown/util/DraftLocalizer;
    .registers 1

    .line 37
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;Ljava/lang/String;)V
    .registers 2

    .line 37
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;->assertPrivileged(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200()Lvm2/LuaValue;
    .registers 1

    .line 37
    sget-object v0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->origKey:Lvm2/LuaValue;

    return-object v0
.end method

.method public static resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;
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

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 462
    :cond_4
    invoke-virtual {p0}, Lvm2/LuaValue;->istable()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 463
    sget-object v0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->origKey:Lvm2/LuaValue;

    invoke-virtual {p0, v0}, Lvm2/LuaValue;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p0

    invoke-static {p0, p1}, Lvm2/lib/jse/CoerceLuaToJava;->coerce(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/draft/Draft;

    return-object p0

    .line 464
    :cond_17
    invoke-virtual {p0}, Lvm2/LuaValue;->isstring()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 465
    invoke-virtual {p0}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p0

    return-object p0

    .line 466
    :cond_26
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->isuserdata(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 467
    invoke-static {p0, p1}, Lvm2/lib/jse/CoerceLuaToJava;->coerce(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/draft/Draft;

    return-object p0

    :cond_33
    return-object v0
.end method

.method public static resolveDraftListOpt(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Linfo/flowersoft/theotown/draft/Draft;",
            ">(",
            "Lvm2/LuaValue;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 492
    :cond_4
    invoke-virtual {p0}, Lvm2/LuaValue;->istable()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 493
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    .line 495
    :goto_10
    invoke-virtual {p0, v0}, Lvm2/LuaValue;->get(I)Lvm2/LuaValue;

    move-result-object v2

    .line 496
    invoke-virtual {v2}, Lvm2/LuaValue;->isnil()Z

    move-result v3

    if-eqz v3, :cond_1b

    return-object v1

    .line 497
    :cond_1b
    invoke-static {v2, p1}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraftOpt(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 499
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 503
    :cond_27
    invoke-virtual {p0}, Lvm2/LuaValue;->isnil()Z

    move-result v1

    if-eqz v1, :cond_2e

    return-object v0

    .line 506
    :cond_2e
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static resolveDraftOpt(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;
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

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 476
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lvm2/LuaValue;->istable()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 477
    sget-object v1, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->origKey:Lvm2/LuaValue;

    invoke-virtual {p0, v1}, Lvm2/LuaValue;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p0

    invoke-static {p0, p1}, Lvm2/lib/jse/CoerceLuaToJava;->coerce(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/draft/Draft;

    return-object p0

    .line 478
    :cond_17
    invoke-virtual {p0}, Lvm2/LuaValue;->isstring()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 479
    invoke-virtual {p0}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p0

    return-object p0

    .line 480
    :cond_26
    invoke-virtual {p0, p1}, Lvm2/LuaValue;->isuserdata(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 481
    invoke-static {p0, p1}, Lvm2/lib/jse/CoerceLuaToJava;->coerce(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/draft/Draft;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_32} :catch_33

    return-object p0

    :catch_33
    :cond_33
    return-object v0
.end method


# virtual methods
.method public inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
    .registers 5

    .line 52
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$1;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$1;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string v0, "getDraft"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 64
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$2;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$2;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string v0, "getDrafts"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 88
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$3;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$3;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string v0, "getAllDrafts"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 113
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$4;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$4;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string v0, "getTitle"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 121
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$5;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$5;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string v0, "getText"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 129
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$6;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$6;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string v0, "getFrameCount"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 138
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$7;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$7;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string v0, "getFrame"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 149
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$8;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$8;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string v0, "setFrame"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 161
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$9;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$9;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string v0, "getOverlayFrameCount"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 170
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$10;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$10;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string v0, "getOverlayFrame"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 181
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$11;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$11;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string v0, "getColors"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 201
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$12;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$12;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string v0, "getOverlayColors"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 222
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$13;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$13;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string v0, "getFrameType"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 234
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$14;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$14;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string v0, "setFrameType"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 248
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$15;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$15;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string v0, "getPluginTitle"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 262
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$16;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$16;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string v0, "getPluginText"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 276
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$17;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$17;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string v0, "getPluginAuthor"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 295
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$18;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$18;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string v0, "getDiamondPrice"

    invoke-virtual {p1, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 315
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$19;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$19;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string v0, "assertPrivileged"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 324
    new-instance p3, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$20;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$20;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string v0, "assertSuperPrivileged"

    invoke-virtual {p2, v0, p3}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 334
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$21;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$21;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string p3, "callAll"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 346
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$22;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$22;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string p3, "call"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 359
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$23;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$23;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string p3, "getOrig"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 372
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$24;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$24;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string p3, "append"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 383
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$25;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$25;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string p3, "merge"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 395
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$26;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$26;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string p3, "getTail"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 415
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$27;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$27;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string p3, "getSpeed"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 428
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$28;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$28;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string p3, "getCapacity"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 447
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$29;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$29;-><init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V

    const-string p3, "getDepotCapacity"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method

.method public setCityName(Ljava/lang/String;)V
    .registers 3

    .line 47
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->localizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->setCityName(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass1 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$1)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$1;
.super Lvm2/lib/OneArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 52
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 55
    const-class v0, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 57
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    return-object p1

    .line 59
    :cond_b
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass10 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$10)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$10;
.super Lvm2/lib/TwoArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 170
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 173
    const-class v0, Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/CarDraft;

    if-eqz p1, :cond_2e

    .line 174
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/CarDraft;->overlayFrames:[I

    if-eqz v0, :cond_2e

    array-length v0, v0

    if-nez v0, :cond_12

    goto :goto_2e

    :cond_12
    const/4 v0, 0x1

    .line 175
    invoke-virtual {p2, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p2

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    .line 176
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v1, p1, Linfo/flowersoft/theotown/draft/CarDraft;->overlayFrames:[I

    array-length v1, v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 177
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/CarDraft;->overlayFrames:[I

    aget p1, p1, p2

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 174
    :cond_2e
    :goto_2e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass11 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$11)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$11;
.super Lvm2/lib/OneArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 181
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$11;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 184
    const-class v0, Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/CarDraft;

    if-eqz p1, :cond_41

    .line 186
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/CarDraft;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v0, :cond_41

    array-length v0, v0

    if-nez v0, :cond_12

    goto :goto_41

    .line 190
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Linfo/flowersoft/theotown/draft/CarDraft;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 191
    :goto_1b
    iget-object v2, p1, Linfo/flowersoft/theotown/draft/CarDraft;->colors:[Lio/blueflower/stapel2d/drawing/Color;

    array-length v3, v2

    if-ge v1, v3, :cond_30

    .line 192
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Color;->toHexRGB()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 195
    :cond_30
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    const-class v1, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    .line 196
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    .line 197
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createArray(Ljava/util/List;)Lvm2/LuaTable;

    move-result-object p1

    return-object p1

    .line 187
    :cond_41
    :goto_41
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass12 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$12)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$12;
.super Lvm2/lib/OneArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 201
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 204
    const-class v0, Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/CarDraft;

    if-eqz p1, :cond_41

    .line 206
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/CarDraft;->overlayColors:[Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v0, :cond_41

    array-length v0, v0

    if-nez v0, :cond_12

    goto :goto_41

    .line 210
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Linfo/flowersoft/theotown/draft/CarDraft;->overlayColors:[Lio/blueflower/stapel2d/drawing/Color;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 211
    :goto_1b
    iget-object v2, p1, Linfo/flowersoft/theotown/draft/CarDraft;->overlayColors:[Lio/blueflower/stapel2d/drawing/Color;

    array-length v3, v2

    if-ge v1, v3, :cond_30

    .line 212
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Color;->toHexRGB()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 215
    :cond_30
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    const-class v1, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    .line 216
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    .line 217
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createArray(Ljava/util/List;)Lvm2/LuaTable;

    move-result-object p1

    return-object p1

    .line 207
    :cond_41
    :goto_41
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass13 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$13)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$13;
.super Lvm2/lib/TwoArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 225
    const-class v0, Linfo/flowersoft/theotown/draft/ViewportDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/ViewportDraft;

    if-eqz p1, :cond_2c

    const/4 v0, 0x1

    .line 228
    invoke-virtual {p2, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p2

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    .line 229
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 230
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget p1, p1, p2

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Image;->getType(I)I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 226
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsuited draft for getFrameType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass14 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$14)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$14;
.super Lvm2/lib/ThreeArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$14;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 237
    const-class v0, Linfo/flowersoft/theotown/draft/ViewportDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/ViewportDraft;

    if-eqz p1, :cond_39

    const/4 v0, 0x1

    .line 240
    invoke-virtual {p2, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p2

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    .line 241
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 242
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Image;->getType(I)I

    move-result v0

    .line 243
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget p1, p1, p2

    invoke-virtual {p3}, Lvm2/LuaValue;->checkint()I

    move-result p2

    invoke-virtual {v1, p1, p2}, Lio/blueflower/stapel2d/drawing/Image;->setType(II)V

    .line 244
    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 238
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unsuited draft for setFrameType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass15 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$15)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$15;
.super Lvm2/lib/OneArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 248
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$15;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 251
    const-class v0, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 252
    iget v0, p1, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    if-eqz v0, :cond_1f

    .line 254
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v0

    iget p1, p1, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    .line 255
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1

    .line 257
    :cond_1f
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass16 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$16)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$16;
.super Lvm2/lib/OneArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 265
    const-class v0, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 266
    iget v0, p1, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    if-eqz v0, :cond_1f

    .line 268
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v0

    iget p1, p1, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    .line 269
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getText()Ljava/lang/String;

    move-result-object p1

    .line 267
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1

    .line 271
    :cond_1f
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass17 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$17)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$17;
.super Lvm2/lib/VarArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 276
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    .line 279
    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    const-class v0, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 280
    iget v0, p1, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    if-eqz v0, :cond_38

    .line 282
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v0

    iget p1, p1, Linfo/flowersoft/theotown/draft/Draft;->pluginId:I

    .line 283
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object p1

    .line 285
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object v0

    .line 286
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getAuthorId()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Lvm2/LuaValue;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    .line 284
    invoke-static {v1}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 289
    :cond_38
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass18 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$18)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$18;
.super Lvm2/lib/OneArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 295
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 298
    const-class v0, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    if-nez p1, :cond_b

    .line 299
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 301
    :cond_b
    instance-of v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v0, :cond_1c

    .line 302
    check-cast p1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 303
    :cond_1c
    instance-of v0, p1, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    if-eqz v0, :cond_2d

    .line 304
    check-cast p1, Linfo/flowersoft/theotown/draft/UpgradeDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/UpgradeDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 305
    :cond_2d
    instance-of v0, p1, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    if-eqz v0, :cond_3e

    .line 306
    check-cast p1, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 307
    :cond_3e
    instance-of v0, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;

    if-eqz v0, :cond_4f

    .line 308
    check-cast p1, Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 310
    :cond_4f
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass19 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$19)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$19;
.super Lvm2/lib/ZeroArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 318
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 321
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0

    .line 319
    :cond_d
    new-instance v0, Lvm2/LuaError;

    const-string v1, "Privileged context was expected"

    invoke-direct {v0, v1}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass2 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$2)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$2;
.super Lvm2/lib/OneArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 64
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 68
    invoke-virtual {p1}, Lvm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 69
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 70
    const-class v0, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/resources/Drafts;->getDraftsWithTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    goto :goto_17

    .line 72
    :cond_11
    sget-object p1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 75
    :goto_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_24
    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Draft;

    .line 77
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    if-eqz v2, :cond_24

    iget-boolean v1, v1, Linfo/flowersoft/theotown/draft/Draft;->index:Z

    if-eqz v1, :cond_24

    .line 78
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 82
    :cond_3c
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    const-class v1, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    .line 83
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    .line 84
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createArray(Ljava/util/List;)Lvm2/LuaTable;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass20 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$20)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$20;
.super Lvm2/lib/ZeroArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 324
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 327
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->isSuperPrivileged()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 330
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0

    .line 328
    :cond_d
    new-instance v0, Lvm2/LuaError;

    const-string v1, "Super Privileged context was expected"

    invoke-direct {v0, v1}, Lvm2/LuaError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass21 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$21)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$21;
.super Lvm2/lib/VarArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 334
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$21;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 4

    const/4 v0, 0x1

    .line 337
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v1

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v1, 0x2

    .line 340
    invoke-virtual {p1, v1}, Lvm2/Varargs;->subargs(I)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(Lvm2/Varargs;)Z

    .line 342
    :cond_1b
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass22 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$22)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$22;
.super Lvm2/lib/VarArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 346
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$22;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    const/4 v0, 0x1

    .line 349
    invoke-virtual {p1, v0}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    const/4 v1, 0x2

    .line 350
    invoke-virtual {p1, v1}, Lvm2/Varargs;->arg(I)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    if-eqz v0, :cond_26

    const/4 v1, 0x3

    .line 353
    invoke-virtual {p1, v1}, Lvm2/Varargs;->subargs(I)Lvm2/Varargs;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(Lvm2/Varargs;)Z

    .line 355
    :cond_26
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass23 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$23)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$23;
.super Lvm2/lib/OneArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 359
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 362
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$23;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    const-string v1, "orig"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;Ljava/lang/String;)V

    .line 363
    const-class v0, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 365
    invoke-static {}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->access$200()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 367
    :cond_18
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass24 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$24)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$24;
.super Lvm2/lib/OneArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 372
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$24;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 375
    sget-object v0, Linfo/flowersoft/theotown/draftloader/ContentLoader;->appendFunction:Lvm2/lib/OneArgFunction;

    if-eqz v0, :cond_9

    .line 377
    invoke-virtual {v0, p1}, Lvm2/lib/OneArgFunction;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 379
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot call append function after initialization phase"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass25 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$25)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$25;
.super Lvm2/lib/ThreeArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$25;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 386
    sget-object v0, Linfo/flowersoft/theotown/draftloader/ContentLoader;->mergeFunction:Lvm2/lib/ThreeArgFunction;

    if-eqz v0, :cond_9

    .line 388
    invoke-virtual {v0, p1, p2, p3}, Lvm2/lib/ThreeArgFunction;->call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 390
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot call merge function after initialization phase"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass26 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$26)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$26;
.super Lvm2/lib/OneArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 395
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$26;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 398
    const-class v0, Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/CarDraft;

    if-eqz p1, :cond_38

    .line 400
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/CarDraft;->tail:[Linfo/flowersoft/theotown/draft/CarDraft;

    if-nez v0, :cond_f

    goto :goto_38

    .line 404
    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Linfo/flowersoft/theotown/draft/CarDraft;->tail:[Linfo/flowersoft/theotown/draft/CarDraft;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 405
    :goto_18
    iget-object v2, p1, Linfo/flowersoft/theotown/draft/CarDraft;->tail:[Linfo/flowersoft/theotown/draft/CarDraft;

    array-length v3, v2

    if-ge v1, v3, :cond_27

    .line 406
    aget-object v2, v2, v1

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 409
    :cond_27
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    const-class v1, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    .line 410
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    .line 411
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createArray(Ljava/util/List;)Lvm2/LuaTable;

    move-result-object p1

    return-object p1

    .line 401
    :cond_38
    :goto_38
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass27 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$27)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$27;
.super Lvm2/lib/OneArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$27;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 418
    const-class v0, Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/CarDraft;

    if-nez p1, :cond_d

    .line 421
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 424
    :cond_d
    iget p1, p1, Linfo/flowersoft/theotown/draft/CarDraft;->speed:F

    float-to-double v0, p1

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass28 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$28)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$28;
.super Lvm2/lib/OneArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$28;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 431
    const-class v0, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    if-nez p1, :cond_b

    .line 434
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 437
    :cond_b
    instance-of v0, p1, Linfo/flowersoft/theotown/draft/CarDraft;

    if-eqz v0, :cond_18

    .line 438
    check-cast p1, Linfo/flowersoft/theotown/draft/CarDraft;

    iget p1, p1, Linfo/flowersoft/theotown/draft/CarDraft;->capacity:I

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 439
    :cond_18
    instance-of v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v0, :cond_25

    .line 440
    check-cast p1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->capacity:I

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 442
    :cond_25
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass29 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$29)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$29;
.super Lvm2/lib/OneArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 447
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$29;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 450
    const-class v0, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 451
    instance-of v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-nez v0, :cond_d

    goto :goto_16

    .line 455
    :cond_d
    check-cast p1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->depotCapacity:I

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 452
    :cond_16
    :goto_16
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass3 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$3)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$3;
.super Lvm2/lib/OneArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 88
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 91
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "all drafts"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->assertSuperPrivileged(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1}, Lvm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 94
    invoke-virtual {p1}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    .line 95
    const-class v0, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/resources/Drafts;->getDraftsWithTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    goto :goto_20

    .line 97
    :cond_1a
    sget-object p1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 100
    :goto_20
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2d
    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/Draft;

    .line 102
    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    if-eqz v1, :cond_2d

    .line 103
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 107
    :cond_41
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object p1

    const-class v1, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    .line 108
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;

    .line 109
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/ArrayLibrary;->createArray(Ljava/util/List;)Lvm2/LuaTable;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass4 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$4)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$4;
.super Lvm2/lib/OneArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 113
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 116
    const-class v0, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    .line 117
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)Linfo/flowersoft/theotown/util/DraftLocalizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass5 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$5)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$5;
.super Lvm2/lib/OneArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 121
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 124
    const-class v0, Linfo/flowersoft/theotown/draft/Draft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    .line 125
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)Linfo/flowersoft/theotown/util/DraftLocalizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getText(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass6 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$6)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$6;
.super Lvm2/lib/OneArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 129
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 132
    const-class v0, Linfo/flowersoft/theotown/draft/ViewportDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/ViewportDraft;

    if-eqz p1, :cond_16

    .line 133
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v0, p1

    if-nez v0, :cond_10

    goto :goto_16

    .line 134
    :cond_10
    array-length p1, p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 133
    :cond_16
    :goto_16
    sget-object p1, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass7 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$7)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$7;
.super Lvm2/lib/TwoArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 138
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 141
    const-class v0, Linfo/flowersoft/theotown/draft/ViewportDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/ViewportDraft;

    if-eqz p1, :cond_2c

    .line 142
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v0, v0

    if-nez v0, :cond_10

    goto :goto_2c

    :cond_10
    const/4 v0, 0x1

    .line 143
    invoke-virtual {p2, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p2

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    .line 144
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 145
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget p1, p1, p2

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 142
    :cond_2c
    :goto_2c
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass8 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$8)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$8;
.super Lvm2/lib/ThreeArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 149
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 7

    .line 152
    const-class v0, Linfo/flowersoft/theotown/draft/ViewportDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/ViewportDraft;

    if-eqz p1, :cond_2e

    .line 153
    iget-object v0, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v0, v0

    if-nez v0, :cond_10

    goto :goto_2e

    :cond_10
    const/4 v0, 0x1

    .line 154
    invoke-virtual {p2, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p2

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    .line 155
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v2, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v2, v2

    sub-int/2addr v2, v0

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 156
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    invoke-virtual {p3, v1}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    aput p3, p1, p2

    .line 157
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 153
    :cond_2e
    :goto_2e
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.DraftLibrary.AnonymousClass9 (info.flowersoft.theotown.scripting.libraries.DraftLibrary$9)
.class public Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$9;
.super Lvm2/lib/OneArgFunction;
.source "DraftLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 161
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 3

    .line 164
    const-class v0, Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/DraftLibrary;->resolveDraft(Lvm2/LuaValue;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/CarDraft;

    if-eqz p1, :cond_18

    .line 165
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/CarDraft;->overlayFrames:[I

    if-eqz p1, :cond_18

    array-length v0, p1

    if-nez v0, :cond_12

    goto :goto_18

    .line 166
    :cond_12
    array-length p1, p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    return-object p1

    .line 165
    :cond_18
    :goto_18
    sget-object p1, Lvm2/LuaValue;->ZERO:Lvm2/LuaNumber;

    return-object p1
.end method
