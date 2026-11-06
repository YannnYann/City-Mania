###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary (info.flowersoft.theotown.scripting.libraries.GUILibrary)
.class public Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;
.super Linfo/flowersoft/theotown/scripting/ManagedLibrary;
.source "GUILibrary.java"

# interfaces
.implements Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary$LibraryInjector;


# static fields
.field public static final EMPTY_RUNNER:Ljava/lang/Runnable;


# instance fields
.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final master:Lio/blueflower/stapel2d/gui/Master;


# direct methods
.method public static synthetic $r8$lambda$-4OuqIDxfjeLiWT_74RIWLS6U9A(Linfo/flowersoft/theotown/scripting/ScriptMethod;)V
    .registers 1

    .line 359
    invoke-virtual {p0}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call()Lvm2/LuaValue;

    return-void
.end method

.method public static synthetic $r8$lambda$CeYQNAT6tJNY5JAzoifva4k7yXY(Linfo/flowersoft/theotown/scripting/ScriptMethod;Lvm2/LuaTable;)V
    .registers 2

    if-eqz p0, :cond_5

    .line 436
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    :cond_5
    return-void
.end method

.method public static synthetic $r8$lambda$GbmP15qrHAy9Cp39kXp-iboP4wY(Linfo/flowersoft/theotown/scripting/ScriptMethod;Lvm2/LuaTable;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 3

    if-eqz p0, :cond_5

    .line 396
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 398
    :cond_5
    invoke-virtual {p2}, Linfo/flowersoft/theotown/ui/Dialog;->free()V

    return-void
.end method

.method public static synthetic $r8$lambda$JnvDQINljXIZeQUS5XoEicJq60Q(Linfo/flowersoft/theotown/scripting/ScriptMethod;Lvm2/LuaTable;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 3

    if-eqz p0, :cond_5

    .line 366
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 368
    :cond_5
    invoke-virtual {p2}, Linfo/flowersoft/theotown/ui/Dialog;->free()V

    return-void
.end method

.method public static synthetic $r8$lambda$KId3vT3foC7rRvqLSDRcNiZJvZA(Linfo/flowersoft/theotown/scripting/ScriptMethod;Ljava/lang/String;)Z
    .registers 2

    .line 353
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RxNU72K64-UwMuBrlxr5irbS-MY(Linfo/flowersoft/theotown/scripting/ScriptMethod;Ljava/lang/String;)V
    .registers 2

    .line 356
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    return-void
.end method

.method public static synthetic $r8$lambda$W6xQpvGE2h2bCfjbGCKcr1VV6Zo(Linfo/flowersoft/theotown/scripting/ScriptMethod;[Lvm2/LuaTable;)V
    .registers 3

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 316
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    :cond_8
    return-void
.end method

.method public static synthetic $r8$lambda$aLmPH6lGeuEFt-7Ri1npd3exEgk()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$mPtfChrhJEwUvjjcTpB2E-Yxd2Y(Linfo/flowersoft/theotown/scripting/ScriptMethod;Lvm2/LuaTable;)V
    .registers 2

    if-eqz p0, :cond_5

    .line 405
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    :cond_5
    return-void
.end method

.method public static synthetic $r8$lambda$nZeduyq-Rwy0Mxj80JniI30B-k4(Linfo/flowersoft/theotown/scripting/ScriptMethod;[Lvm2/LuaTable;)V
    .registers 3

    const/4 v0, 0x0

    .line 525
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->EMPTY_RUNNER:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 4

    .line 53
    const-string v0, "libs/GUI.lua"

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;-><init>(Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->master:Lio/blueflower/stapel2d/gui/Master;

    .line 56
    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lio/blueflower/stapel2d/drawing/Color;)Lvm2/Varargs;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->colorToVarargs(Lio/blueflower/stapel2d/drawing/Color;)Lvm2/Varargs;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;)Lio/blueflower/stapel2d/gui/Gadget;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->resolveGadget(Lvm2/LuaValue;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lio/blueflower/stapel2d/gui/Gadget;Lvm2/LuaTable;Ljava/lang/String;[Lvm2/LuaTable;)Lio/blueflower/stapel2d/gui/Gadget;
    .registers 5

    .line 45
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;Lvm2/LuaTable;Ljava/lang/String;[Lvm2/LuaTable;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lvm2/LuaValue;Lio/blueflower/stapel2d/gui/Gadget;Z)Lvm2/LuaTable;
    .registers 3

    .line 45
    invoke-static {p0, p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->wrap(Lvm2/LuaValue;Lio/blueflower/stapel2d/gui/Gadget;Z)Lvm2/LuaTable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;Lvm2/LuaTable;)Lvm2/LuaValue;
    .registers 3

    .line 45
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->createMenu(Lvm2/LuaValue;Lvm2/LuaTable;)Lvm2/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;Lvm2/LuaTable;)Lvm2/LuaValue;
    .registers 3

    .line 45
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->createDialog(Lvm2/LuaValue;Lvm2/LuaTable;)Lvm2/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;)Lio/blueflower/stapel2d/gui/Master;
    .registers 1

    .line 45
    iget-object p0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->master:Lio/blueflower/stapel2d/gui/Master;

    return-object p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;Lvm2/LuaTable;)Lvm2/LuaValue;
    .registers 3

    .line 45
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->createRenameDialog(Lvm2/LuaValue;Lvm2/LuaTable;)Lvm2/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Ljava/lang/String;)V
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/scripting/ManagedLibrary;->assertPrivileged(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$900()Lvm2/LuaValue;
    .registers 1

    .line 45
    sget-object v0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->origKey:Lvm2/LuaValue;

    return-object v0
.end method

.method public static wrap(Lio/blueflower/stapel2d/gui/Gadget;)Lvm2/LuaTable;
    .registers 2

    const/4 v0, 0x0

    .line 472
    invoke-static {p0, v0}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->wrap(Lio/blueflower/stapel2d/gui/Gadget;Z)Lvm2/LuaTable;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Lio/blueflower/stapel2d/gui/Gadget;Z)Lvm2/LuaTable;
    .registers 4

    .line 482
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getGlobals()Lvm2/Globals;

    move-result-object v0

    const-string v1, "GUI"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    .line 483
    invoke-static {v0, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->wrap(Lvm2/LuaValue;Lio/blueflower/stapel2d/gui/Gadget;Z)Lvm2/LuaTable;

    move-result-object p0

    return-object p0
.end method

.method public static wrap(Lvm2/LuaValue;Lio/blueflower/stapel2d/gui/Gadget;Z)Lvm2/LuaTable;
    .registers 5

    .line 493
    invoke-static {p1}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object p1

    .line 494
    invoke-static {p2}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Lvm2/LuaValue;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 491
    const-string p1, "_new"

    invoke-virtual {p0, p1, v0}, Lvm2/LuaValue;->invokemethod(Ljava/lang/String;[Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p0

    .line 496
    invoke-virtual {p0}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p0

    invoke-virtual {p0}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p0

    return-object p0
.end method

.method public static wrapDialog(Linfo/flowersoft/theotown/ui/Dialog;)Lvm2/LuaTable;
    .registers 3

    .line 684
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getGlobals()Lvm2/Globals;

    move-result-object v0

    const-string v1, "GUI"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    .line 685
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v1

    .line 686
    invoke-static {p0, v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->wrapDialog(Linfo/flowersoft/theotown/ui/Dialog;Lvm2/LuaValue;Lvm2/LuaTable;)V

    return-object v1
.end method

.method public static wrapDialog(Linfo/flowersoft/theotown/ui/Dialog;Lvm2/LuaValue;Lvm2/LuaTable;)V
    .registers 6

    .line 670
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getTitleLabel()Lio/blueflower/stapel2d/gui/Label;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->wrap(Lvm2/LuaValue;Lio/blueflower/stapel2d/gui/Gadget;Z)Lvm2/LuaTable;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {p2, v2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 671
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getTextFrame()Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    move-result-object v0

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->wrap(Lvm2/LuaValue;Lio/blueflower/stapel2d/gui/Gadget;Z)Lvm2/LuaTable;

    move-result-object v0

    const-string v2, "text"

    invoke-virtual {p2, v2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 672
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v0

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->wrap(Lvm2/LuaValue;Lio/blueflower/stapel2d/gui/Gadget;Z)Lvm2/LuaTable;

    move-result-object v0

    const-string v2, "content"

    invoke-virtual {p2, v2, v0}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 673
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v0

    invoke-static {p1, v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->wrap(Lvm2/LuaValue;Lio/blueflower/stapel2d/gui/Gadget;Z)Lvm2/LuaTable;

    move-result-object p1

    const-string v0, "controls"

    invoke-virtual {p2, v0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 674
    new-instance p1, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$21;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$21;-><init>(Linfo/flowersoft/theotown/ui/Dialog;)V

    const-string p0, "close"

    invoke-virtual {p2, p0, p1}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method


# virtual methods
.method public final addGadget(Lio/blueflower/stapel2d/gui/Gadget;Lvm2/LuaTable;Ljava/lang/String;[Lvm2/LuaTable;)Lio/blueflower/stapel2d/gui/Gadget;
    .registers 30

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 500
    const-string v3, "x"

    invoke-virtual {v0, v3}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lvm2/LuaValue;->optint(I)I

    move-result v3

    .line 501
    const-string v5, "y"

    invoke-virtual {v0, v5}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5, v4}, Lvm2/LuaValue;->optint(I)I

    move-result v5

    if-gez v3, :cond_20

    .line 502
    invoke-virtual/range {p1 .. p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v6

    add-int/2addr v3, v6

    :cond_20
    move v8, v3

    if-gez v5, :cond_28

    .line 503
    invoke-virtual/range {p1 .. p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    add-int/2addr v5, v3

    :cond_28
    move v9, v5

    .line 504
    const-string v3, "width"

    invoke-virtual {v0, v3}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v3

    const-string v5, "w"

    invoke-virtual {v0, v5}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v5, v6}, Lvm2/LuaValue;->optint(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lvm2/LuaValue;->optint(I)I

    move-result v3

    .line 505
    const-string v5, "height"

    invoke-virtual {v0, v5}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v5

    const-string v6, "h"

    invoke-virtual {v0, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    sub-int/2addr v7, v9

    invoke-virtual {v6, v7}, Lvm2/LuaValue;->optint(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lvm2/LuaValue;->optint(I)I

    move-result v5

    if-gez v3, :cond_63

    .line 506
    invoke-virtual/range {p1 .. p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v6

    sub-int/2addr v6, v8

    add-int/2addr v3, v6

    :cond_63
    move v11, v3

    if-gez v5, :cond_6c

    .line 507
    invoke-virtual/range {p1 .. p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    sub-int/2addr v3, v9

    add-int/2addr v5, v3

    :cond_6c
    move v12, v5

    .line 508
    const-string v3, "text"

    invoke-virtual {v0, v3}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 509
    const-string v6, "icon"

    invoke-virtual {v0, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    invoke-virtual {v6, v4}, Lvm2/LuaValue;->optint(I)I

    move-result v6

    .line 510
    const-string v7, "onClick"

    invoke-static {v0, v7}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v15

    .line 511
    const-string v7, "onDraw"

    invoke-static {v0, v7}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v13

    .line 512
    const-string v7, "isPressed"

    invoke-static {v0, v7}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v17

    .line 513
    const-string v7, "onUpdate"

    invoke-static {v0, v7}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v7

    .line 514
    const-string v10, "onScroll"

    invoke-static {v0, v10}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v10

    .line 515
    const-string v14, "golden"

    invoke-virtual {v0, v14}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v14

    invoke-virtual {v14, v4}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v14

    .line 516
    const-string v4, "frameDefault"

    invoke-virtual {v0, v4}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v4

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v2, v2, Lio/blueflower/stapel2d/gui/Skin;->npButton:I

    invoke-virtual {v4, v2}, Lvm2/LuaValue;->optint(I)I

    move-result v2

    .line 517
    const-string v4, "frameDown"

    invoke-virtual {v0, v4}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v4

    move-object/from16 v19, v3

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v3, v3, Lio/blueflower/stapel2d/gui/Skin;->npButtonDown:I

    invoke-virtual {v4, v3}, Lvm2/LuaValue;->optint(I)I

    move-result v3

    .line 518
    const-string v4, "fitWidth"

    invoke-virtual {v0, v4}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v4

    move/from16 v20, v6

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v4

    .line 519
    const-string v6, "vertical"

    invoke-virtual {v0, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    move/from16 v21, v8

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v6

    .line 520
    const-string v8, "spacing"

    invoke-virtual {v0, v8}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v8

    move/from16 v22, v6

    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Lvm2/LuaValue;->optint(I)I

    move-result v8

    .line 521
    const-string v6, "password"

    invoke-virtual {v0, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    move/from16 v23, v8

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v6

    .line 522
    const-string v8, "hint"

    invoke-virtual {v0, v8}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, v5}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_111

    .line 525
    new-instance v5, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda1;

    move-object/from16 v8, p4

    invoke-direct {v5, v7, v8}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/scripting/ScriptMethod;[Lvm2/LuaTable;)V

    goto :goto_115

    :cond_111
    move-object/from16 v8, p4

    sget-object v5, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->EMPTY_RUNNER:Ljava/lang/Runnable;

    .line 527
    :goto_115
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v24

    sparse-switch v24, :sswitch_data_222

    :goto_11f
    const/4 v1, -0x1

    goto :goto_16d

    :sswitch_121
    const-string v7, "listbox"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12a

    goto :goto_11f

    :cond_12a
    const/4 v1, 0x6

    goto :goto_16d

    :sswitch_12c
    const-string v7, "label"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_135

    goto :goto_11f

    :cond_135
    const/4 v1, 0x5

    goto :goto_16d

    :sswitch_137
    const-string v7, "textframe"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_140

    goto :goto_11f

    :cond_140
    const/4 v1, 0x4

    goto :goto_16d

    :sswitch_142
    const-string v7, "textfield"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14b

    goto :goto_11f

    :cond_14b
    const/4 v1, 0x3

    goto :goto_16d

    :sswitch_14d
    const-string v7, "layout"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_156

    goto :goto_11f

    :cond_156
    const/4 v1, 0x2

    goto :goto_16d

    :sswitch_158
    const-string v7, "canvas"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_161

    goto :goto_11f

    :cond_161
    const/4 v1, 0x1

    goto :goto_16d

    :sswitch_163
    const-string v7, "button"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16c

    goto :goto_11f

    :cond_16c
    const/4 v1, 0x0

    :goto_16d
    packed-switch v1, :pswitch_data_240

    const/4 v0, 0x0

    return-object v0

    .line 604
    :pswitch_172
    new-instance v6, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$19;

    move-object/from16 v7, p0

    move-object v13, v5

    move v10, v11

    move v11, v12

    move/from16 v8, v21

    move-object/from16 v12, p1

    invoke-direct/range {v6 .. v13}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$19;-><init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)V

    return-object v6

    :pswitch_181
    move-object v13, v5

    move/from16 v8, v21

    .line 569
    new-instance v6, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$16;

    move-object/from16 v7, p0

    move v10, v9

    move-object v14, v13

    move-object/from16 v13, p1

    move v9, v8

    move-object/from16 v8, v19

    invoke-direct/range {v6 .. v14}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$16;-><init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)V

    .line 575
    invoke-virtual {v6, v4}, Lio/blueflower/stapel2d/gui/Label;->setScaleToFitWidth(Z)V

    return-object v6

    :pswitch_196
    move-object v13, v5

    move/from16 v8, v21

    .line 578
    new-instance v6, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$17;

    move-object/from16 v7, p0

    move v10, v9

    move-object v14, v13

    move-object/from16 v13, p1

    move v9, v8

    move-object/from16 v8, v19

    invoke-direct/range {v6 .. v14}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$17;-><init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)V

    const/4 v8, 0x0

    .line 585
    invoke-virtual {v6, v8}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setShowBorder(Z)V

    return-object v6

    :pswitch_1ac
    move-object v13, v5

    move v2, v6

    move-object/from16 v1, v19

    move/from16 v8, v21

    .line 588
    new-instance v6, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$18;

    move-object/from16 v7, p0

    move v10, v11

    move v11, v12

    move-object/from16 v12, p1

    invoke-direct/range {v6 .. v13}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$18;-><init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)V

    .line 595
    invoke-virtual {v6, v1}, Linfo/flowersoft/theotown/ui/TextField;->setText(Ljava/lang/String;)V

    if-eqz v2, :cond_1c5

    .line 598
    invoke-virtual {v6, v2}, Linfo/flowersoft/theotown/ui/TextField;->setPassword(Z)V

    :cond_1c5
    if-eqz v0, :cond_1d0

    .line 600
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d0

    invoke-virtual {v6, v0}, Linfo/flowersoft/theotown/ui/TextField;->setHint(Ljava/lang/String;)V

    .line 601
    :cond_1d0
    invoke-virtual {v6}, Linfo/flowersoft/theotown/ui/TextField;->setActive()V

    return-object v6

    :pswitch_1d4
    move/from16 v8, v21

    .line 529
    new-instance v6, Lio/blueflower/stapel2d/gui/ElementLine;

    move-object/from16 v13, p1

    move v10, v9

    move/from16 v7, v22

    move v9, v8

    move/from16 v8, v23

    .line 530
    invoke-direct/range {v6 .. v13}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-object v6

    :pswitch_1e4
    move-object v14, v5

    move v5, v12

    move v12, v11

    move v11, v9

    move/from16 v9, v21

    .line 613
    new-instance v6, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$20;

    move-object/from16 v7, p0

    move-object/from16 v17, v10

    move v10, v12

    move-object/from16 v16, v14

    move-object/from16 v12, p1

    move-object v14, v8

    move v8, v9

    move v9, v11

    move v11, v5

    invoke-direct/range {v6 .. v17}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$20;-><init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/scripting/ScriptMethod;[Lvm2/LuaTable;Linfo/flowersoft/theotown/scripting/ScriptMethod;Ljava/lang/Runnable;Linfo/flowersoft/theotown/scripting/ScriptMethod;)V

    return-object v6

    :pswitch_1fd
    move-object v13, v5

    move-object/from16 v1, v19

    move/from16 v8, v21

    .line 534
    new-instance v6, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$15;

    move-object/from16 v7, p0

    move-object/from16 v16, p4

    move v10, v8

    move-object/from16 v18, v13

    move v0, v14

    move/from16 v8, v20

    move-object/from16 v14, p1

    move v13, v12

    move v12, v11

    move v11, v9

    move-object v9, v1

    invoke-direct/range {v6 .. v18}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$15;-><init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/scripting/ScriptMethod;[Lvm2/LuaTable;Linfo/flowersoft/theotown/scripting/ScriptMethod;Ljava/lang/Runnable;)V

    .line 564
    invoke-virtual {v6, v0}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 565
    invoke-virtual {v6, v2}, Lio/blueflower/stapel2d/gui/Button;->setFrameDefault(I)V

    .line 566
    invoke-virtual {v6, v3}, Lio/blueflower/stapel2d/gui/Button;->setFrameDown(I)V

    return-object v6

    nop

    :sswitch_data_222
    .sparse-switch
        -0x521dd8ce -> :sswitch_163
        -0x51858aa8 -> :sswitch_158
        -0x422504d6 -> :sswitch_14d
        -0x3d7a7013 -> :sswitch_142
        -0x3d7667a0 -> :sswitch_137
        0x61f7ef4 -> :sswitch_12c
        0xad8a06d -> :sswitch_121
    .end sparse-switch

    :pswitch_data_240
    .packed-switch 0x0
        :pswitch_1fd
        :pswitch_1e4
        :pswitch_1d4
        :pswitch_1ac
        :pswitch_196
        :pswitch_181
        :pswitch_172
    .end packed-switch
.end method

.method public final colorToVarargs(Lio/blueflower/stapel2d/drawing/Color;)Lvm2/Varargs;
    .registers 4

    .line 65
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v1

    invoke-static {v1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v1

    .line 67
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    .line 64
    invoke-static {v0, v1, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1
.end method

.method public final createDialog(Lvm2/LuaValue;Lvm2/LuaTable;)Lvm2/LuaValue;
    .registers 40

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 377
    const-string v2, "icon"

    invoke-virtual {v1, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lvm2/LuaValue;->optint(I)I

    move-result v6

    .line 378
    const-string v3, "title"

    invoke-virtual {v1, v3}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v3

    const-string v12, ""

    invoke-virtual {v3, v12}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 379
    const-string v3, "text"

    invoke-virtual {v1, v3}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5, v12}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 380
    const-string v5, "width"

    invoke-virtual {v1, v5}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v5

    const-string v9, "w"

    invoke-virtual {v1, v9}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v9

    const/16 v10, 0x12c

    invoke-virtual {v9, v10}, Lvm2/LuaValue;->optint(I)I

    move-result v9

    invoke-virtual {v5, v9}, Lvm2/LuaValue;->optint(I)I

    move-result v9

    .line 381
    const-string v5, "height"

    invoke-virtual {v1, v5}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v5

    const-string v10, "h"

    invoke-virtual {v1, v10}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v10

    const/16 v11, 0xa0

    invoke-virtual {v10, v11}, Lvm2/LuaValue;->optint(I)I

    move-result v10

    invoke-virtual {v5, v10}, Lvm2/LuaValue;->optint(I)I

    move-result v10

    .line 382
    const-string v5, "closeable"

    invoke-virtual {v1, v5}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v5

    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v14

    .line 383
    const-string v5, "pause"

    invoke-virtual {v1, v5}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5, v13}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v15

    .line 384
    const-string v5, "actions"

    invoke-virtual {v1, v5}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v5

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lvm2/LuaValue;->opttable(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v5

    .line 385
    const-string v11, "distribute"

    invoke-virtual {v1, v11}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v11

    invoke-virtual {v11, v4}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v17

    .line 386
    const-string v11, "onInit"

    invoke-static {v1, v11}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v4

    move/from16 v18, v13

    .line 387
    const-string v13, "onUpdate"

    invoke-static {v1, v13}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v26

    .line 388
    const-string v13, "onClose"

    invoke-static {v1, v13}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v13

    move-object/from16 v19, v5

    .line 389
    const-string v5, "onCancel"

    invoke-static {v1, v5}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v1

    .line 391
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v27

    .line 393
    new-instance v28, Linfo/flowersoft/theotown/ui/Dialog;

    move-object/from16 v5, p0

    move-object/from16 v20, v11

    iget-object v11, v5, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->master:Lio/blueflower/stapel2d/gui/Master;

    move-object/from16 v35, v4

    move/from16 v16, v14

    move-object/from16 v14, v19

    move-object/from16 v4, v27

    move-object/from16 v5, v28

    move/from16 v19, v15

    move-object/from16 v15, v20

    invoke-direct/range {v5 .. v11}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 394
    new-instance v6, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda2;

    invoke-direct {v6, v13, v4, v5}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/scripting/ScriptMethod;Lvm2/LuaTable;Linfo/flowersoft/theotown/ui/Dialog;)V

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/ui/Dialog;->setOnClose(Ljava/lang/Runnable;)V

    xor-int/lit8 v6, v19, 0x1

    .line 401
    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/ui/Dialog;->setDrawBackground(Z)V

    if-eqz v16, :cond_cb

    .line 403
    new-instance v6, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda3;

    invoke-direct {v6, v1, v4}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/scripting/ScriptMethod;Lvm2/LuaTable;)V

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton(Ljava/lang/Runnable;)Lio/blueflower/stapel2d/gui/Button;

    .line 409
    :cond_cb
    new-instance v19, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$14;

    const/16 v24, 0x0

    invoke-virtual {v5}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v25

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, p0

    move-object/from16 v27, v4

    invoke-direct/range {v19 .. v27}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$14;-><init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/scripting/ScriptMethod;Lvm2/LuaTable;)V

    if-eqz v14, :cond_167

    move/from16 v1, v18

    .line 421
    invoke-virtual {v14, v1}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v6

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lvm2/LuaValue;->opttable(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v6

    const/4 v7, 0x1

    :goto_ee
    if-eqz v6, :cond_161

    .line 425
    invoke-virtual {v6, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lvm2/LuaValue;->optint(I)I

    move-result v29

    .line 426
    const-string v8, "id"

    invoke-virtual {v6, v8}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v8

    invoke-virtual {v8, v1}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 427
    invoke-virtual {v6, v3}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1, v12}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 428
    const-string v1, "onClick"

    invoke-static {v6, v1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v1

    .line 429
    const-string v9, "autoClose"

    invoke-virtual {v6, v9}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v32

    .line 430
    const-string v9, "golden"

    invoke-virtual {v6, v9}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v9

    .line 431
    invoke-static {v6, v15}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v6

    .line 433
    new-instance v10, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda4;

    invoke-direct {v10, v1, v4}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/scripting/ScriptMethod;Lvm2/LuaTable;)V

    const/16 v31, 0x0

    const/16 v33, 0x1

    move-object/from16 v28, v5

    move-object/from16 v34, v10

    invoke-virtual/range {v28 .. v34}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    if-eqz v8, :cond_141

    .line 440
    invoke-virtual {v1, v8}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 441
    :cond_141
    invoke-virtual {v1, v9}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    const/4 v9, 0x0

    if-eqz v6, :cond_14e

    .line 444
    invoke-static {v0, v1, v9}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->wrap(Lvm2/LuaValue;Lio/blueflower/stapel2d/gui/Gadget;Z)Lvm2/LuaTable;

    move-result-object v1

    invoke-virtual {v6, v4, v1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    :cond_14e
    const/16 v18, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 447
    invoke-virtual {v14, v7}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lvm2/LuaValue;->opttable(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v1

    move-object/from16 v36, v6

    move-object v6, v1

    move-object/from16 v1, v36

    goto :goto_ee

    :cond_161
    if-eqz v17, :cond_16a

    .line 451
    invoke-virtual {v5}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    goto :goto_16a

    .line 454
    :cond_167
    invoke-virtual {v5}, Linfo/flowersoft/theotown/ui/Dialog;->removeControlLine()V

    .line 457
    :cond_16a
    :goto_16a
    invoke-static {v5, v0, v4}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->wrapDialog(Linfo/flowersoft/theotown/ui/Dialog;Lvm2/LuaValue;Lvm2/LuaTable;)V

    const/4 v1, 0x1

    .line 458
    invoke-virtual {v5, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    if-eqz v35, :cond_178

    move-object/from16 v0, v35

    .line 461
    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    :cond_178
    return-object v4
.end method

.method public final createMenu(Lvm2/LuaValue;Lvm2/LuaTable;)Lvm2/LuaValue;
    .registers 13

    const/4 v0, 0x1

    .line 278
    new-array v1, v0, [Lvm2/LuaTable;

    .line 280
    const-string v2, "source"

    invoke-virtual {p2, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->opttable(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 281
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->resolveGadget(Lvm2/LuaValue;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v3

    .line 282
    :cond_14
    const-string v2, "x"

    invoke-virtual {p2, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lvm2/LuaValue;->optint(I)I

    move-result v2

    .line 283
    const-string v5, "y"

    invoke-virtual {p2, v5}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5, v4}, Lvm2/LuaValue;->optint(I)I

    move-result v5

    .line 284
    const-string v6, "w"

    invoke-virtual {p2, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    const-string v7, "width"

    invoke-virtual {p2, v7}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v7

    invoke-virtual {v7, v4}, Lvm2/LuaValue;->optint(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lvm2/LuaValue;->optint(I)I

    move-result v6

    .line 285
    const-string v7, "h"

    invoke-virtual {p2, v7}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v7

    const-string v8, "height"

    invoke-virtual {p2, v8}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v8

    invoke-virtual {v8, v4}, Lvm2/LuaValue;->optint(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lvm2/LuaValue;->optint(I)I

    move-result v7

    .line 286
    const-string v8, "actions"

    invoke-virtual {p2, v8}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p2

    invoke-virtual {p2}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p2

    .line 288
    new-instance v8, Linfo/flowersoft/theotown/ui/PopupBuilder;

    iget-object v9, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v8, v9}, Linfo/flowersoft/theotown/ui/PopupBuilder;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    if-eqz v3, :cond_78

    .line 290
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v2

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v5

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v3

    invoke-virtual {v8, v2, v5, v6, v3}, Linfo/flowersoft/theotown/ui/PopupBuilder;->setSource(IIII)Linfo/flowersoft/theotown/ui/PopupBuilder;

    goto :goto_7b

    .line 292
    :cond_78
    invoke-virtual {v8, v2, v5, v6, v7}, Linfo/flowersoft/theotown/ui/PopupBuilder;->setSource(IIII)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 296
    :goto_7b
    invoke-virtual {p2, v0}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v2

    .line 297
    sget-object v3, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    if-ne v2, v3, :cond_84

    move-object v2, p2

    :cond_84
    move v3, v0

    .line 298
    :goto_85
    sget-object v5, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    if-eq v2, v5, :cond_da

    .line 300
    sget-object v5, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    if-ne v2, v5, :cond_94

    add-int/lit8 v3, v3, 0x1

    .line 301
    invoke-virtual {p2, v3}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v2

    goto :goto_85

    .line 305
    :cond_94
    invoke-virtual {v2}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    .line 306
    const-string v5, "icon"

    invoke-virtual {v2, v5}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5, v4}, Lvm2/LuaValue;->optint(I)I

    move-result v5

    .line 307
    const-string v6, "text"

    invoke-virtual {v2, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 308
    const-string v7, "onClick"

    invoke-static {v2, v7}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v7

    .line 309
    const-string v9, "enabled"

    invoke-virtual {v2, v9}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v2

    if-nez v5, :cond_cb

    if-eqz v6, :cond_c7

    .line 311
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_cb

    .line 312
    :cond_c7
    invoke-virtual {v8}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addSeparator()Linfo/flowersoft/theotown/ui/PopupBuilder;

    goto :goto_d3

    .line 314
    :cond_cb
    new-instance v9, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda9;

    invoke-direct {v9, v7, v1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda9;-><init>(Linfo/flowersoft/theotown/scripting/ScriptMethod;[Lvm2/LuaTable;)V

    invoke-virtual {v8, v5, v6, v9, v2}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;Z)Linfo/flowersoft/theotown/ui/PopupBuilder;

    :goto_d3
    add-int/lit8 v3, v3, 0x1

    .line 321
    invoke-virtual {p2, v3}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v2

    goto :goto_85

    .line 324
    :cond_da
    invoke-virtual {v8}, Linfo/flowersoft/theotown/ui/PopupBuilder;->build()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object p2

    if-eqz p2, :cond_e7

    .line 326
    invoke-static {p1, p2, v4}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->wrap(Lvm2/LuaValue;Lio/blueflower/stapel2d/gui/Gadget;Z)Lvm2/LuaTable;

    move-result-object p1

    aput-object p1, v1, v4

    return-object p1

    :cond_e7
    return-object v5
.end method

.method public final createRenameDialog(Lvm2/LuaValue;Lvm2/LuaTable;)Lvm2/LuaValue;
    .registers 15

    .line 334
    new-instance v0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->master:Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;)V

    .line 336
    const-string v1, "icon"

    invoke-virtual {p2, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lvm2/LuaValue;->optint(I)I

    move-result v1

    .line 337
    const-string v3, "title"

    invoke-virtual {p2, v3}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 338
    const-string v5, "text"

    invoke-virtual {p2, v5}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5, v4}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 339
    const-string v6, "value"

    invoke-virtual {p2, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    invoke-virtual {v6, v4}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 340
    const-string v6, "password"

    invoke-virtual {p2, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    invoke-virtual {v6, v2}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v2

    .line 341
    const-string v6, "okText"

    invoke-virtual {p2, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 342
    const-string v8, "cancelText"

    invoke-virtual {p2, v8}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v8

    invoke-virtual {v8, v7}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 343
    const-string v8, "onOk"

    invoke-static {p2, v8}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v8

    .line 344
    const-string v9, "onCancel"

    invoke-static {p2, v9}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v9

    .line 345
    const-string v10, "onClose"

    invoke-static {p2, v10}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object v10

    .line 346
    const-string v11, "filter"

    invoke-static {p2, v11}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p2

    .line 348
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v11

    if-eqz v6, :cond_7e

    .line 350
    invoke-virtual {v0, v6}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOkText(Ljava/lang/String;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    :cond_7e
    if-eqz v7, :cond_83

    .line 351
    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setCancelText(Ljava/lang/String;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    :cond_83
    if-eqz p2, :cond_8d

    .line 353
    new-instance v6, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda5;

    invoke-direct {v6, p2}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda5;-><init>(Linfo/flowersoft/theotown/scripting/ScriptMethod;)V

    invoke-virtual {v0, v6}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setFilter(Lio/blueflower/stapel2d/util/Predicate;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    :cond_8d
    if-eqz v8, :cond_97

    .line 356
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda6;

    invoke-direct {p2, v8}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda6;-><init>(Linfo/flowersoft/theotown/scripting/ScriptMethod;)V

    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnOk(Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    :cond_97
    if-eqz v9, :cond_a1

    .line 359
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda7;

    invoke-direct {p2, v9}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda7;-><init>(Linfo/flowersoft/theotown/scripting/ScriptMethod;)V

    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnCancel(Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 361
    :cond_a1
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setPassword(Z)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 363
    invoke-virtual {v0, v1, v3, v5, v4}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object p2

    .line 364
    new-instance v0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda8;

    invoke-direct {v0, v10, v11, p2}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda8;-><init>(Linfo/flowersoft/theotown/scripting/ScriptMethod;Lvm2/LuaTable;Linfo/flowersoft/theotown/ui/Dialog;)V

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setOnClose(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 370
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 372
    invoke-static {p2, p1, v11}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->wrapDialog(Linfo/flowersoft/theotown/ui/Dialog;Lvm2/LuaValue;Lvm2/LuaTable;)V

    return-object v11
.end method

.method public getMaster()Lio/blueflower/stapel2d/gui/Master;
    .registers 2

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->master:Lio/blueflower/stapel2d/gui/Master;

    return-object v0
.end method

.method public inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
    .registers 4

    .line 72
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$1;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$1;-><init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;)V

    const-string p3, "isDarkMode"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 79
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$2;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$2;-><init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;)V

    const-string p3, "getSkinColor"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 99
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$3;

    invoke-direct {p2, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$3;-><init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;)V

    const-string p3, "addGadget"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 148
    const-string p2, "_init"

    invoke-virtual {p1, p2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object p2

    iget-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-static {p3}, Lvm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lvm2/LuaValue;

    move-result-object p3

    invoke-virtual {p2, p3}, Lvm2/LuaValue;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 150
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$4;

    invoke-direct {p2, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$4;-><init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;)V

    const-string p3, "createMenu"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 157
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$5;

    invoke-direct {p2, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$5;-><init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;)V

    const-string p3, "createDialog"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 164
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$6;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$6;-><init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;)V

    const-string p3, "getTouchPoint"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 188
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$7;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$7;-><init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;)V

    const-string p3, "delete"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 216
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$8;

    invoke-direct {p2, p0, p1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$8;-><init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;)V

    const-string p3, "createRenameDialog"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 223
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$9;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$9;-><init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;)V

    const-string p3, "getOrig"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 236
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$10;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$10;-><init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;)V

    const-string p3, "setMinSize"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 247
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$11;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$11;-><init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;)V

    const-string p3, "setMaxSize"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 259
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$12;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$12;-><init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;)V

    const-string p3, "getMinSize"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    .line 267
    new-instance p2, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$13;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$13;-><init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;)V

    const-string p3, "getMaxSize"

    invoke-virtual {p1, p3, p2}, Lvm2/LuaValue;->set(Ljava/lang/String;Lvm2/LuaValue;)V

    return-void
.end method

.method public final resolveGadget(Lvm2/LuaValue;)Lio/blueflower/stapel2d/gui/Gadget;
    .registers 3

    .line 691
    invoke-virtual {p1}, Lvm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 694
    :cond_8
    sget-object v0, Linfo/flowersoft/theotown/scripting/SimpleLuaLibrary;->origKey:Lvm2/LuaValue;

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    const-class v0, Lio/blueflower/stapel2d/gui/Gadget;

    invoke-static {p1, v0}, Lvm2/lib/jse/CoerceLuaToJava;->coerce(Lvm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/gui/Gadget;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary.AnonymousClass1 (info.flowersoft.theotown.scripting.libraries.GUILibrary$1)
.class public Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$1;
.super Lvm2/lib/ZeroArgFunction;
.source "GUILibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 72
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$1;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 2

    .line 75
    sget-object v0, Linfo/flowersoft/theotown/util/ThemeManager;->INSTANCE:Linfo/flowersoft/theotown/util/ThemeManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ThemeManager;->isDarkMode()Z

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(Z)Lvm2/LuaBoolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary.AnonymousClass10 (info.flowersoft.theotown.scripting.libraries.GUILibrary$10)
.class public Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$10;
.super Lvm2/lib/ThreeArgFunction;
.source "GUILibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 236
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$10;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p1

    if-eqz p1, :cond_17

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p2, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p2

    .line 242
    invoke-virtual {p3, p2}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 243
    invoke-virtual {p1, p2, p3}, Lio/blueflower/stapel2d/gui/Gadget;->setMinimumSize(II)V

    .line 244
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 240
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Received invalid GUI object"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary.AnonymousClass11 (info.flowersoft.theotown.scripting.libraries.GUILibrary$11)
.class public Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$11;
.super Lvm2/lib/ThreeArgFunction;
.source "GUILibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$11;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 5

    .line 250
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$11;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p1

    if-eqz p1, :cond_19

    const v0, 0x7fffffff

    .line 252
    invoke-virtual {p2, v0}, Lvm2/LuaValue;->optint(I)I

    move-result p2

    .line 253
    invoke-virtual {p3, p2}, Lvm2/LuaValue;->optint(I)I

    move-result p3

    .line 254
    invoke-virtual {p1, p2, p3}, Lio/blueflower/stapel2d/gui/Gadget;->setMaximumSize(II)V

    .line 255
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1

    .line 251
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Received invalid GUI object"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary.AnonymousClass12 (info.flowersoft.theotown.scripting.libraries.GUILibrary$12)
.class public Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$12;
.super Lvm2/lib/VarArgFunction;
.source "GUILibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 262
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$12;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 264
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getMinWidth()I

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getMinHeight()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-static {v0, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 263
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Received invalid GUI object"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary.AnonymousClass13 (info.flowersoft.theotown.scripting.libraries.GUILibrary$13)
.class public Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$13;
.super Lvm2/lib/VarArgFunction;
.source "GUILibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 267
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 3

    .line 270
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$13;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 272
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getMaxWidth()I

    move-result v0

    invoke-static {v0}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getMaxHeight()I

    move-result p1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    invoke-static {v0, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 271
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Received invalid GUI object"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary.AnonymousClass14 (info.flowersoft.theotown.scripting.libraries.GUILibrary$14)
.class public Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$14;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "GUILibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->createDialog(Lvm2/LuaValue;Lvm2/LuaTable;)Lvm2/LuaValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

.field public final synthetic val$onUpdate:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final synthetic val$result:Lvm2/LuaTable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/scripting/ScriptMethod;Lvm2/LuaTable;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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

    .line 409
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$14;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    iput-object p7, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$14;->val$onUpdate:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    iput-object p8, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$14;->val$result:Lvm2/LuaTable;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 3

    .line 412
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onUpdate()V

    .line 413
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$14;->val$onUpdate:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    if-eqz v0, :cond_c

    .line 414
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$14;->val$result:Lvm2/LuaTable;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    :cond_c
    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary.AnonymousClass15 (info.flowersoft.theotown.scripting.libraries.GUILibrary$15)
.class public Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$15;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "GUILibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;Lvm2/LuaTable;Ljava/lang/String;[Lvm2/LuaTable;)Lio/blueflower/stapel2d/gui/Gadget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

.field public final synthetic val$isPressed:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final synthetic val$onClick:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final synthetic val$onUpdate:Ljava/lang/Runnable;

.field public final synthetic val$wrappedResult:[Lvm2/LuaTable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/scripting/ScriptMethod;[Lvm2/LuaTable;Linfo/flowersoft/theotown/scripting/ScriptMethod;Ljava/lang/Runnable;)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 534
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$15;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    iput-object p9, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$15;->val$onClick:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    iput-object p10, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$15;->val$wrappedResult:[Lvm2/LuaTable;

    iput-object p11, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$15;->val$isPressed:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    iput-object p12, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$15;->val$onUpdate:Ljava/lang/Runnable;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isPressed()Z
    .registers 4

    .line 551
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$15;->val$isPressed:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    if-eqz v0, :cond_12

    .line 552
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$15;->val$wrappedResult:[Lvm2/LuaTable;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0, v2}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v0

    return v0

    .line 554
    :cond_12
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .registers 6

    .line 537
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 538
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$15;->val$onClick:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    if-eqz v0, :cond_3f

    .line 539
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    .line 541
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    if-eqz v1, :cond_34

    .line 542
    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v0

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getWidthRatio()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    .line 543
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v1

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v1

    goto :goto_35

    :cond_34
    move-object v1, v0

    .line 545
    :goto_35
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$15;->val$onClick:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$15;->val$wrappedResult:[Lvm2/LuaTable;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    :cond_3f
    return-void
.end method

.method public onUpdate()V
    .registers 2

    .line 560
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 561
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$15;->val$onUpdate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary.AnonymousClass16 (info.flowersoft.theotown.scripting.libraries.GUILibrary$16)
.class public Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$16;
.super Lio/blueflower/stapel2d/gui/Label;
.source "GUILibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;Lvm2/LuaTable;Ljava/lang/String;[Lvm2/LuaTable;)Lio/blueflower/stapel2d/gui/Gadget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

.field public final synthetic val$onUpdate:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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

    .line 569
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$16;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    iput-object p8, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$16;->val$onUpdate:Ljava/lang/Runnable;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 2

    .line 572
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onUpdate()V

    .line 573
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$16;->val$onUpdate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary.AnonymousClass17 (info.flowersoft.theotown.scripting.libraries.GUILibrary$17)
.class public Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$17;
.super Linfo/flowersoft/theotown/ui/ScrollableTextFrame;
.source "GUILibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;Lvm2/LuaTable;Ljava/lang/String;[Lvm2/LuaTable;)Lio/blueflower/stapel2d/gui/Gadget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

.field public final synthetic val$onUpdate:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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

    .line 578
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$17;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    iput-object p8, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$17;->val$onUpdate:Ljava/lang/Runnable;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 2

    .line 581
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onUpdate()V

    .line 582
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$17;->val$onUpdate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary.AnonymousClass18 (info.flowersoft.theotown.scripting.libraries.GUILibrary$18)
.class public Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$18;
.super Linfo/flowersoft/theotown/ui/TextField;
.source "GUILibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;Lvm2/LuaTable;Ljava/lang/String;[Lvm2/LuaTable;)Lio/blueflower/stapel2d/gui/Gadget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

.field public final synthetic val$onUpdate:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 588
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$18;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    iput-object p7, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$18;->val$onUpdate:Ljava/lang/Runnable;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Linfo/flowersoft/theotown/ui/TextField;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 2

    .line 591
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/TextField;->onUpdate()V

    .line 592
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$18;->val$onUpdate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary.AnonymousClass19 (info.flowersoft.theotown.scripting.libraries.GUILibrary$19)
.class public Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$19;
.super Lio/blueflower/stapel2d/gui/ListBox;
.source "GUILibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;Lvm2/LuaTable;Ljava/lang/String;[Lvm2/LuaTable;)Lio/blueflower/stapel2d/gui/Gadget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

.field public final synthetic val$onUpdate:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 604
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$19;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    iput-object p7, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$19;->val$onUpdate:Ljava/lang/Runnable;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 2

    .line 607
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/ListBox;->onUpdate()V

    .line 608
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$19;->val$onUpdate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary.AnonymousClass2 (info.flowersoft.theotown.scripting.libraries.GUILibrary$2)
.class public Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$2;
.super Lvm2/lib/VarArgFunction;
.source "GUILibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 5

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p1, v0}, Lvm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_7e

    :goto_10
    move v0, v1

    goto :goto_3b

    :sswitch_12
    const-string v0, "textColorSelected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_10

    :cond_1b
    const/4 v0, 0x3

    goto :goto_3b

    :sswitch_1d
    const-string v0, "textColorSecondary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_10

    :cond_26
    const/4 v0, 0x2

    goto :goto_3b

    :sswitch_28
    const-string v2, "textColorAccent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_10

    :sswitch_31
    const-string v0, "textColorDefault"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_10

    :cond_3a
    const/4 v0, 0x0

    :cond_3b
    :goto_3b
    packed-switch v0, :pswitch_data_90

    const/16 p1, 0xff

    .line 95
    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v0

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v1

    invoke-static {p1}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object p1

    .line 94
    invoke-static {v0, v1, p1}, Lvm2/LuaValue;->varargsOf(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Varargs;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 87
    :pswitch_51
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextSelected:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lio/blueflower/stapel2d/drawing/Color;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 91
    :pswitch_5c
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lio/blueflower/stapel2d/drawing/Color;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 89
    :pswitch_67
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lio/blueflower/stapel2d/drawing/Color;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 85
    :pswitch_72
    iget-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$2;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->access$000(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lio/blueflower/stapel2d/drawing/Color;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_7e
    .sparse-switch
        -0x761f08d5 -> :sswitch_31
        -0x63e23160 -> :sswitch_28
        -0x41b30022 -> :sswitch_1d
        -0x2d23110f -> :sswitch_12
    .end sparse-switch

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_72
        :pswitch_67
        :pswitch_5c
        :pswitch_51
    .end packed-switch
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary.AnonymousClass20 (info.flowersoft.theotown.scripting.libraries.GUILibrary$20)
.class public Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$20;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "GUILibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;Lvm2/LuaTable;Ljava/lang/String;[Lvm2/LuaTable;)Lio/blueflower/stapel2d/gui/Gadget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

.field public final synthetic val$onClick:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final synthetic val$onDraw:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final synthetic val$onScroll:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final synthetic val$onUpdate:Ljava/lang/Runnable;

.field public final synthetic val$wrappedResult:[Lvm2/LuaTable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/scripting/ScriptMethod;[Lvm2/LuaTable;Linfo/flowersoft/theotown/scripting/ScriptMethod;Ljava/lang/Runnable;Linfo/flowersoft/theotown/scripting/ScriptMethod;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 613
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$20;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    iput-object p7, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$20;->val$onDraw:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    iput-object p8, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$20;->val$wrappedResult:[Lvm2/LuaTable;

    iput-object p9, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$20;->val$onClick:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    iput-object p10, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$20;->val$onUpdate:Ljava/lang/Runnable;

    iput-object p11, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$20;->val$onScroll:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    const/4 v0, 0x0

    .line 616
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$20;->val$onDraw:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    if-eqz v1, :cond_3b

    .line 617
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$20;->val$wrappedResult:[Lvm2/LuaTable;

    aget-object v2, v2, v0

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v3, p1

    .line 619
    invoke-static {v3}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v3

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v4, p2

    .line 620
    invoke-static {v4}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v4

    .line 621
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v5

    invoke-static {v5}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v5

    .line 622
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v6

    invoke-static {v6}, Lvm2/LuaValue;->valueOf(I)Lvm2/LuaInteger;

    move-result-object v6

    const/4 v7, 0x5

    new-array v7, v7, [Lvm2/LuaValue;

    aput-object v2, v7, v0

    const/4 v0, 0x1

    aput-object v3, v7, v0

    const/4 v0, 0x2

    aput-object v4, v7, v0

    const/4 v0, 0x3

    aput-object v5, v7, v0

    const/4 v0, 0x4

    aput-object v6, v7, v0

    .line 617
    invoke-virtual {v1, v7}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call([Lvm2/LuaValue;)Lvm2/Varargs;

    .line 625
    :cond_3b
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onClick()V
    .registers 6

    .line 630
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onClick()V

    .line 631
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$20;->val$onClick:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    if-eqz v0, :cond_3f

    .line 632
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    .line 634
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    if-eqz v1, :cond_34

    .line 635
    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v0

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getWidthRatio()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    .line 636
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v1

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v1

    goto :goto_35

    :cond_34
    move-object v1, v0

    .line 638
    :goto_35
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$20;->val$onClick:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    iget-object v3, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$20;->val$wrappedResult:[Lvm2/LuaTable;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3, v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    :cond_3f
    return-void
.end method

.method public onUpdate()V
    .registers 2

    .line 644
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 645
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$20;->val$onUpdate:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;
    .registers 7

    .line 650
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;

    .line 652
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getScrollChange()F

    move-result v0

    .line 653
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getMousePos()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v1

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_3f

    .line 654
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$20;->val$onScroll:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->rect:Lio/blueflower/stapel2d/util/ScreenRect;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v2, v3, v1}, Lio/blueflower/stapel2d/util/ScreenRect;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 655
    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$20;->val$onScroll:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$20;->val$wrappedResult:[Lvm2/LuaTable;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object v0

    sget-object v1, Lvm2/LuaValue;->FALSE:Lvm2/LuaBoolean;

    if-eq v0, v1, :cond_3f

    .line 656
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->clearScrollChange()V

    :cond_3f
    const/4 p1, 0x0

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary.AnonymousClass21 (info.flowersoft.theotown.scripting.libraries.GUILibrary$21)
.class public Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$21;
.super Lvm2/lib/ZeroArgFunction;
.source "GUILibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->wrapDialog(Linfo/flowersoft/theotown/ui/Dialog;Lvm2/LuaValue;Lvm2/LuaTable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 2

    .line 674
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$21;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-direct {p0}, Lvm2/lib/ZeroArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lvm2/LuaValue;
    .registers 3

    .line 677
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$21;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 678
    sget-object v0, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object v0
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary.AnonymousClass3 (info.flowersoft.theotown.scripting.libraries.GUILibrary$3)
.class public Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$3;
.super Lvm2/lib/ThreeArgFunction;
.source "GUILibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

.field public final synthetic val$lib:Lvm2/LuaValue;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;)V
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

    .line 99
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$3;->val$lib:Lvm2/LuaValue;

    invoke-direct {p0}, Lvm2/lib/ThreeArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 13

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p1

    .line 103
    instance-of v0, p1, Lio/blueflower/stapel2d/gui/ElementLine;

    if-eqz v0, :cond_10

    .line 104
    check-cast p1, Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object p1

    :cond_10
    const/4 v0, 0x1

    .line 106
    new-array v1, v0, [Lvm2/LuaTable;

    .line 107
    invoke-static {}, Lvm2/LuaValue;->tableOf()Lvm2/LuaTable;

    move-result-object v2

    invoke-virtual {p2, v2}, Lvm2/LuaValue;->opttable(Lvm2/LuaTable;)Lvm2/LuaTable;

    move-result-object p2

    .line 108
    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$3;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    .line 111
    invoke-virtual {p3}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p3

    .line 108
    invoke-static {v2, p1, p2, p3, v1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->access$200(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lio/blueflower/stapel2d/gui/Gadget;Lvm2/LuaTable;Ljava/lang/String;[Lvm2/LuaTable;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p3

    if-eqz p3, :cond_ee

    .line 115
    const-string v2, "padding"

    invoke-virtual {p2, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->optint(I)I

    move-result v2

    .line 116
    const-string v4, "paddingLeft"

    invoke-virtual {p2, v4}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v4

    const-string v5, "pl"

    invoke-virtual {p2, v5}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5, v2}, Lvm2/LuaValue;->optint(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lvm2/LuaValue;->optint(I)I

    move-result v4

    .line 117
    const-string v5, "paddingRight"

    invoke-virtual {p2, v5}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v5

    const-string v6, "pr"

    invoke-virtual {p2, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    invoke-virtual {v6, v2}, Lvm2/LuaValue;->optint(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lvm2/LuaValue;->optint(I)I

    move-result v5

    .line 118
    const-string v6, "paddingTop"

    invoke-virtual {p2, v6}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    const-string v7, "pt"

    invoke-virtual {p2, v7}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v7

    invoke-virtual {v7, v2}, Lvm2/LuaValue;->optint(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lvm2/LuaValue;->optint(I)I

    move-result v6

    .line 119
    const-string v7, "paddingBottom"

    invoke-virtual {p2, v7}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v7

    const-string v8, "pb"

    invoke-virtual {p2, v8}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v8

    invoke-virtual {v8, v2}, Lvm2/LuaValue;->optint(I)I

    move-result v2

    invoke-virtual {v7, v2}, Lvm2/LuaValue;->optint(I)I

    move-result v2

    if-nez v4, :cond_8a

    if-nez v5, :cond_8a

    if-nez v6, :cond_8a

    if-eqz v2, :cond_8d

    .line 121
    :cond_8a
    invoke-virtual {p3, v4, v6, v5, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(IIII)V

    .line 123
    :cond_8d
    const-string v2, "listboxBackground"

    invoke-virtual {p2, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2, v0}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v0

    .line 124
    const-string v2, "listboxSelectable"

    invoke-virtual {p2, v2}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v2

    invoke-virtual {v2, v3}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v2

    .line 125
    const-string v4, "postpone"

    invoke-virtual {p2, v4}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v4

    invoke-virtual {v4, v3}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v4

    .line 127
    const-string v5, "id"

    invoke-virtual {p2, v5}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v6

    invoke-virtual {v6}, Lvm2/LuaValue;->isstring()Z

    move-result v6

    if-eqz v6, :cond_c2

    invoke-virtual {p2, v5}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v5

    invoke-virtual {v5}, Lvm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 128
    :cond_c2
    iget-object v5, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$3;->val$lib:Lvm2/LuaValue;

    invoke-static {v5, p3, v4}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->access$300(Lvm2/LuaValue;Lio/blueflower/stapel2d/gui/Gadget;Z)Lvm2/LuaTable;

    move-result-object v4

    aput-object v4, v1, v3

    .line 129
    const-string v4, "onInit"

    invoke-static {p2, v4}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->resolve(Lvm2/LuaValue;Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/ScriptMethod;

    move-result-object p2

    if-eqz p2, :cond_d7

    .line 131
    aget-object v4, v1, v3

    invoke-virtual {p2, v4}, Linfo/flowersoft/theotown/scripting/ScriptMethod;->call(Lvm2/LuaValue;)Lvm2/LuaValue;

    .line 134
    :cond_d7
    instance-of p2, p1, Lio/blueflower/stapel2d/gui/ListBox;

    if-eqz p2, :cond_eb

    .line 135
    check-cast p1, Lio/blueflower/stapel2d/gui/ListBox;

    .line 136
    new-instance p2, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;

    invoke-direct {p2, p3}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 137
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->setDrawBackground(Z)V

    .line 138
    invoke-virtual {p2, v2}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->setCanBeSelected(Z)V

    .line 139
    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 142
    :cond_eb
    aget-object p1, v1, v3

    return-object p1

    .line 144
    :cond_ee
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary.AnonymousClass4 (info.flowersoft.theotown.scripting.libraries.GUILibrary$4)
.class public Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$4;
.super Lvm2/lib/OneArgFunction;
.source "GUILibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

.field public final synthetic val$lib:Lvm2/LuaValue;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;)V
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

    .line 150
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$4;->val$lib:Lvm2/LuaValue;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 153
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$4;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$4;->val$lib:Lvm2/LuaValue;

    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p1

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->access$400(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;Lvm2/LuaTable;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary.AnonymousClass5 (info.flowersoft.theotown.scripting.libraries.GUILibrary$5)
.class public Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$5;
.super Lvm2/lib/OneArgFunction;
.source "GUILibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

.field public final synthetic val$lib:Lvm2/LuaValue;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;)V
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

    .line 157
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$5;->val$lib:Lvm2/LuaValue;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 160
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$5;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$5;->val$lib:Lvm2/LuaValue;

    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p1

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->access$500(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;Lvm2/LuaTable;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary.AnonymousClass6 (info.flowersoft.theotown.scripting.libraries.GUILibrary$6)
.class public Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$6;
.super Lvm2/lib/VarArgFunction;
.source "GUILibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 164
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    invoke-direct {p0}, Lvm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lvm2/Varargs;)Lvm2/Varargs;
    .registers 10

    .line 167
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$6;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    invoke-virtual {p1}, Lvm2/Varargs;->arg1()Lvm2/LuaValue;

    move-result-object p1

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p1

    .line 168
    instance-of v0, p1, Lio/blueflower/stapel2d/gui/SensitiveGadget;

    if-eqz v0, :cond_87

    .line 169
    move-object v0, p1

    check-cast v0, Lio/blueflower/stapel2d/gui/SensitiveGadget;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->getTouchPoint()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 171
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object p1

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 172
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getWidthRatio()F

    move-result v1

    .line 173
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result p1

    .line 175
    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v2

    .line 176
    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v3

    mul-float/2addr v3, p1

    float-to-double v3, v3

    invoke-static {v3, v4}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v3

    .line 177
    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstX()F

    move-result v4

    mul-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v4

    .line 178
    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getFirstY()F

    move-result v5

    mul-float/2addr v5, p1

    float-to-double v5, v5

    invoke-static {v5, v6}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v5

    .line 179
    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getXSpeed()F

    move-result v6

    mul-float/2addr v6, v1

    float-to-double v6, v6

    invoke-static {v6, v7}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v1

    .line 180
    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getYSpeed()F

    move-result v6

    mul-float/2addr v6, p1

    float-to-double v6, v6

    invoke-static {v6, v7}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object p1

    .line 181
    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getTimestamp()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-static {v6, v7}, Lvm2/LuaValue;->valueOf(D)Lvm2/LuaNumber;

    move-result-object v0

    const/4 v6, 0x7

    new-array v6, v6, [Lvm2/LuaValue;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const/4 v2, 0x2

    aput-object v4, v6, v2

    const/4 v2, 0x3

    aput-object v5, v6, v2

    const/4 v2, 0x4

    aput-object v1, v6, v2

    const/4 v1, 0x5

    aput-object p1, v6, v1

    const/4 p1, 0x6

    aput-object v0, v6, p1

    .line 174
    invoke-static {v6}, Lvm2/LuaValue;->varargsOf([Lvm2/LuaValue;)Lvm2/Varargs;

    move-result-object p1

    return-object p1

    .line 185
    :cond_87
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary.AnonymousClass7 (info.flowersoft.theotown.scripting.libraries.GUILibrary$7)
.class public Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$7;
.super Lvm2/lib/OneArgFunction;
.source "GUILibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 188
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 6

    .line 191
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p1

    .line 192
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$7;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->access$600(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v0

    if-eq p1, v0, :cond_42

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 193
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    .line 194
    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->removeChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 196
    instance-of v1, v0, Lio/blueflower/stapel2d/gui/ListBox;

    if-eqz v1, :cond_3f

    .line 198
    check-cast v0, Lio/blueflower/stapel2d/gui/ListBox;

    const/4 v1, 0x0

    .line 199
    :goto_22
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 200
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->getItem(I)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object v2

    .line 201
    instance-of v3, v2, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;

    if-eqz v3, :cond_3c

    .line 202
    check-cast v2, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->getGadget()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v2

    if-ne v2, p1, :cond_3c

    .line 203
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->removeItemIndex(I)V

    goto :goto_3f

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 210
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->free()V

    .line 212
    :cond_42
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary.AnonymousClass8 (info.flowersoft.theotown.scripting.libraries.GUILibrary$8)
.class public Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$8;
.super Lvm2/lib/OneArgFunction;
.source "GUILibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

.field public final synthetic val$lib:Lvm2/LuaValue;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;)V
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

    .line 216
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$8;->val$lib:Lvm2/LuaValue;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 219
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$8;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$8;->val$lib:Lvm2/LuaValue;

    invoke-virtual {p1}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object p1

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->access$700(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;Lvm2/LuaTable;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary.AnonymousClass9 (info.flowersoft.theotown.scripting.libraries.GUILibrary$9)
.class public Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$9;
.super Lvm2/lib/OneArgFunction;
.source "GUILibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->inject(Lvm2/LuaValue;Lvm2/LuaValue;Lvm2/Globals;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    invoke-direct {p0}, Lvm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lvm2/LuaValue;)Lvm2/LuaValue;
    .registers 4

    .line 226
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    const-string v1, "orig"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->access$800(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$9;->this$0:Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->access$100(Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;Lvm2/LuaValue;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 229
    invoke-static {}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->access$900()Lvm2/LuaValue;

    move-result-object v0

    invoke-virtual {p1, v0}, Lvm2/LuaValue;->rawget(Lvm2/LuaValue;)Lvm2/LuaValue;

    move-result-object p1

    return-object p1

    .line 231
    :cond_18
    sget-object p1, Lvm2/LuaValue;->NIL:Lvm2/LuaValue;

    return-object p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda0 (info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->$r8$lambda$aLmPH6lGeuEFt-7Ri1npd3exEgk()V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda1 (info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final synthetic f$1:[Lvm2/LuaTable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/ScriptMethod;[Lvm2/LuaTable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda1;->f$1:[Lvm2/LuaTable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda1;->f$1:[Lvm2/LuaTable;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->$r8$lambda$nZeduyq-Rwy0Mxj80JniI30B-k4(Linfo/flowersoft/theotown/scripting/ScriptMethod;[Lvm2/LuaTable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda2 (info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final synthetic f$1:Lvm2/LuaTable;

.field public final synthetic f$2:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/ScriptMethod;Lvm2/LuaTable;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda2;->f$1:Lvm2/LuaTable;

    iput-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda2;->f$2:Linfo/flowersoft/theotown/ui/Dialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda2;->f$1:Lvm2/LuaTable;

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda2;->f$2:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->$r8$lambda$GbmP15qrHAy9Cp39kXp-iboP4wY(Linfo/flowersoft/theotown/scripting/ScriptMethod;Lvm2/LuaTable;Linfo/flowersoft/theotown/ui/Dialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda3 (info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final synthetic f$1:Lvm2/LuaTable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/ScriptMethod;Lvm2/LuaTable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda3;->f$1:Lvm2/LuaTable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda3;->f$1:Lvm2/LuaTable;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->$r8$lambda$mPtfChrhJEwUvjjcTpB2E-Yxd2Y(Linfo/flowersoft/theotown/scripting/ScriptMethod;Lvm2/LuaTable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda4 (info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final synthetic f$1:Lvm2/LuaTable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/ScriptMethod;Lvm2/LuaTable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda4;->f$1:Lvm2/LuaTable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda4;->f$1:Lvm2/LuaTable;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->$r8$lambda$CeYQNAT6tJNY5JAzoifva4k7yXY(Linfo/flowersoft/theotown/scripting/ScriptMethod;Lvm2/LuaTable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda5 (info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Predicate;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/ScriptMethod;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->$r8$lambda$KId3vT3foC7rRvqLSDRcNiZJvZA(Linfo/flowersoft/theotown/scripting/ScriptMethod;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda6 (info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/ScriptMethod;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->$r8$lambda$RxNU72K64-UwMuBrlxr5irbS-MY(Linfo/flowersoft/theotown/scripting/ScriptMethod;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda7 (info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/ScriptMethod;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    invoke-static {v0}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->$r8$lambda$-4OuqIDxfjeLiWT_74RIWLS6U9A(Linfo/flowersoft/theotown/scripting/ScriptMethod;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda8 (info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda8)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final synthetic f$1:Lvm2/LuaTable;

.field public final synthetic f$2:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/ScriptMethod;Lvm2/LuaTable;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda8;->f$1:Lvm2/LuaTable;

    iput-object p3, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda8;->f$2:Linfo/flowersoft/theotown/ui/Dialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda8;->f$1:Lvm2/LuaTable;

    iget-object v2, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda8;->f$2:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->$r8$lambda$JnvDQINljXIZeQUS5XoEicJq60Q(Linfo/flowersoft/theotown/scripting/ScriptMethod;Lvm2/LuaTable;Linfo/flowersoft/theotown/ui/Dialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda9 (info.flowersoft.theotown.scripting.libraries.GUILibrary$$ExternalSyntheticLambda9)
.class public final synthetic Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

.field public final synthetic f$1:[Lvm2/LuaTable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/scripting/ScriptMethod;[Lvm2/LuaTable;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda9;->f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    iput-object p2, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda9;->f$1:[Lvm2/LuaTable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda9;->f$0:Linfo/flowersoft/theotown/scripting/ScriptMethod;

    iget-object v1, p0, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary$$ExternalSyntheticLambda9;->f$1:[Lvm2/LuaTable;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;->$r8$lambda$W6xQpvGE2h2bCfjbGCKcr1VV6Zo(Linfo/flowersoft/theotown/scripting/ScriptMethod;[Lvm2/LuaTable;)V

    return-void
.end method
