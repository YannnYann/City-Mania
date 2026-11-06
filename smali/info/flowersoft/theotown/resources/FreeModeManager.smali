###### Class info.flowersoft.theotown.resources.FreeModeManager (info.flowersoft.theotown.resources.FreeModeManager)
.class public Linfo/flowersoft/theotown/resources/FreeModeManager;
.super Ljava/lang/Object;
.source "FreeModeManager.java"


# static fields
.field public static instance:Linfo/flowersoft/theotown/resources/FreeModeManager;


# instance fields
.field public final config:Linfo/flowersoft/theotown/util/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "free mode"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/resources/FreeModeManager;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-void
.end method

.method public static dispose()V
    .registers 1

    const/4 v0, 0x0

    .line 73
    sput-object v0, Linfo/flowersoft/theotown/resources/FreeModeManager;->instance:Linfo/flowersoft/theotown/resources/FreeModeManager;

    return-void
.end method

.method public static getInstance()Linfo/flowersoft/theotown/resources/FreeModeManager;
    .registers 1

    .line 66
    sget-object v0, Linfo/flowersoft/theotown/resources/FreeModeManager;->instance:Linfo/flowersoft/theotown/resources/FreeModeManager;

    if-nez v0, :cond_b

    .line 67
    new-instance v0, Linfo/flowersoft/theotown/resources/FreeModeManager;

    invoke-direct {v0}, Linfo/flowersoft/theotown/resources/FreeModeManager;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/resources/FreeModeManager;->instance:Linfo/flowersoft/theotown/resources/FreeModeManager;

    .line 69
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/resources/FreeModeManager;->instance:Linfo/flowersoft/theotown/resources/FreeModeManager;

    return-object v0
.end method


# virtual methods
.method public getPrice(I)I
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public isAvailable()Z
    .registers 4

    .line 24
    iget-object v0, p0, Linfo/flowersoft/theotown/resources/FreeModeManager;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "available"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public rollback()V
    .registers 1

    .line 0
    return-void
.end method

.method public showDialog(ILio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Getter;Ljava/lang/Runnable;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/gui/Master;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 38
    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/resources/FreeModeManager;->getPrice(I)I

    move-result p1

    if-gtz p1, :cond_a

    .line 40
    invoke-interface/range {p5 .. p5}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    return-void

    .line 43
    :cond_a
    new-instance v0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    sget-object v1, Linfo/flowersoft/theotown/city/GameMode;->FREE:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/GameMode;->getIcon()I

    move-result v1

    .line 44
    invoke-virtual {p2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v2

    const/16 v3, 0x9a5

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-virtual {p2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v3

    const/16 v4, 0xdaa

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    int-to-long v5, p1

    const-string v11, "free game mode"

    const/4 v12, 0x0

    const-string v10, "free game mode"

    move-object v9, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v12}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 p1, p6

    .line 54
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setOnClose(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 55
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method
