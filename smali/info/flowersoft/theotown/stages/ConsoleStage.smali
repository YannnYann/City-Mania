###### Class info.flowersoft.theotown.stages.ConsoleStage (info.flowersoft.theotown.stages.ConsoleStage)
.class public Linfo/flowersoft/theotown/stages/ConsoleStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "ConsoleStage.java"


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final cmds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/stages/commandhandler/CommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field public final lastInputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final region:Linfo/flowersoft/theotown/region/Region;

.field public final ssp:Linfo/flowersoft/theotown/util/SSP;

.field public text:Ljava/lang/String;

.field public textField:Linfo/flowersoft/theotown/ui/TextField;

.field public textFrame:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;


# direct methods
.method public static synthetic $r8$lambda$TCL6DtsEjba0obF1zRqulNCNrXY()V
    .registers 4

    .line 518
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User asked for it "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic $r8$lambda$vJF6dnEy-GONPg3Gt904hCsdq5c(Linfo/flowersoft/theotown/online/RegionUploader;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/util/ProgressVariable;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 11

    .line 555
    const-string v0, "name"

    invoke-virtual {p3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "password"

    invoke-virtual {p3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "allow plugins"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/online/RegionUploader;->uploadRegion(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/util/ProgressVariable;Ljava/lang/String;Ljava/lang/String;Z)Lio/blueflower/stapel2d/util/Getter;

    move-result-object p0

    invoke-interface {p0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_38

    .line 557
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    :cond_38
    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/region/Region;Z)V
    .registers 6

    .line 101
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 86
    new-instance p1, Linfo/flowersoft/theotown/util/SSP;

    const-string v0, "theotown console history"

    invoke-direct {p1, v0}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->ssp:Linfo/flowersoft/theotown/util/SSP;

    .line 91
    const-string p1, "Welcome to the developer console of TheoTown\nEnter help for more information\n\n"

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->text:Ljava/lang/String;

    .line 93
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->lastInputs:Ljava/util/List;

    .line 98
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->cmds:Ljava/util/List;

    .line 102
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->city:Linfo/flowersoft/theotown/city/City;

    .line 103
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->region:Linfo/flowersoft/theotown/region/Region;

    .line 105
    new-instance v0, Linfo/flowersoft/theotown/stages/commandhandler/DefaultHandler;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/commandhandler/DefaultHandler;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v0, Linfo/flowersoft/theotown/stages/commandhandler/PluginListHandler;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/commandhandler/PluginListHandler;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v0, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;

    invoke-direct {v0, p2}, Linfo/flowersoft/theotown/stages/commandhandler/VarsHandler;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v0, Linfo/flowersoft/theotown/stages/commandhandler/ActionHandler;

    invoke-direct {v0, p2}, Linfo/flowersoft/theotown/stages/commandhandler/ActionHandler;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v0, Linfo/flowersoft/theotown/stages/commandhandler/LuaHandler;

    invoke-direct {v0, p2}, Linfo/flowersoft/theotown/stages/commandhandler/LuaHandler;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v0, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;

    invoke-direct {v0, p2}, Linfo/flowersoft/theotown/stages/commandhandler/StorageHandler;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v0, Linfo/flowersoft/theotown/stages/commandhandler/FunnyHandler;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/commandhandler/FunnyHandler;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_64

    .line 115
    new-instance v0, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;

    invoke-direct {v0, p2}, Linfo/flowersoft/theotown/stages/commandhandler/CityOptionsHandler;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_64
    if-eqz p4, :cond_76

    .line 119
    new-instance p4, Linfo/flowersoft/theotown/stages/commandhandler/PluginMetaCommandsHandler;

    invoke-direct {p4, p2}, Linfo/flowersoft/theotown/stages/commandhandler/PluginMetaCommandsHandler;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance p2, Linfo/flowersoft/theotown/stages/commandhandler/RemoveHandler;

    invoke-direct {p2}, Linfo/flowersoft/theotown/stages/commandhandler/RemoveHandler;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_76
    new-instance p2, Linfo/flowersoft/theotown/stages/ConsoleStage$1;

    invoke-direct {p2, p0, p3}, Linfo/flowersoft/theotown/stages/ConsoleStage$1;-><init>(Linfo/flowersoft/theotown/stages/ConsoleStage;Linfo/flowersoft/theotown/region/Region;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {p2}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->getCommandHandlers()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_89

    .line 147
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    :cond_89
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/ConsoleStage;->loadLastInputs()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/ConsoleStage;)Linfo/flowersoft/theotown/ui/TextField;
    .registers 1

    .line 83
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->textField:Linfo/flowersoft/theotown/ui/TextField;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/ConsoleStage;Ljava/lang/String;)V
    .registers 2

    .line 83
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/ConsoleStage;->registerInput(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/ConsoleStage;Ljava/lang/String;)V
    .registers 2

    .line 83
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/ConsoleStage;->appendLines(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/ConsoleStage;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 83
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/ConsoleStage;->getPreviousInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/ConsoleStage;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 83
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/ConsoleStage;->getNextInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final appendLines(Ljava/lang/String;)V
    .registers 4

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->text:Ljava/lang/String;

    .line 293
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->textFrame:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setText(Ljava/lang/String;)V

    .line 294
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->textFrame:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->getListBox()Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ListBox;->setShiftToBottom()V

    return-void
.end method

.method public enter()V
    .registers 14

    .line 212
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 214
    new-instance v2, Linfo/flowersoft/theotown/ui/Page;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_CONSOLE:I

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const-string v5, "CONSOLE"

    invoke-direct {v2, v0, v5, v3, v4}, Linfo/flowersoft/theotown/ui/Page;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;ILio/blueflower/stapel2d/gui/Master;)V

    .line 215
    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v12

    .line 216
    new-instance v6, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->text:Ljava/lang/String;

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v10

    invoke-virtual {v12}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v12}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v6, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->textFrame:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    .line 217
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v6, v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 219
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_BACKWARD:I

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v4, 0x740

    invoke-interface {v0, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Linfo/flowersoft/theotown/stages/ConsoleStage$2;

    invoke-direct {v7, p0}, Linfo/flowersoft/theotown/stages/ConsoleStage$2;-><init>(Linfo/flowersoft/theotown/stages/ConsoleStage;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    .line 226
    new-instance v3, Linfo/flowersoft/theotown/stages/ConsoleStage$3;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/stages/ConsoleStage$3;-><init>(Linfo/flowersoft/theotown/stages/ConsoleStage;)V

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/ui/Page;->setOnBackgroundClick(Ljava/lang/Runnable;)V

    .line 233
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAY:I

    new-instance v7, Linfo/flowersoft/theotown/stages/ConsoleStage$4;

    invoke-direct {v7, p0}, Linfo/flowersoft/theotown/stages/ConsoleStage$4;-><init>(Linfo/flowersoft/theotown/stages/ConsoleStage;)V

    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v3

    const/4 v4, 0x1

    .line 250
    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    const/16 v4, 0x42

    .line 251
    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 253
    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/Page;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    .line 254
    new-instance v5, Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    .line 255
    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v7

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    sub-int/2addr v7, v0

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    sub-int/2addr v7, v0

    add-int/lit8 v8, v7, -0x4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v9

    .line 256
    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/Page;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v10

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v10}, Linfo/flowersoft/theotown/ui/TextField;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v5, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->textField:Linfo/flowersoft/theotown/ui/TextField;

    .line 258
    const-string v0, "Enter command here; Type help for help"

    invoke-virtual {v5, v0}, Linfo/flowersoft/theotown/ui/TextField;->setHint(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->textField:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/TextField;->setActive()V

    .line 261
    new-instance v0, Linfo/flowersoft/theotown/stages/ConsoleStage$5;

    const/4 v5, 0x0

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/ConsoleStage$5;-><init>(Linfo/flowersoft/theotown/stages/ConsoleStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 276
    new-instance v0, Linfo/flowersoft/theotown/stages/ConsoleStage$6;

    const-string v2, "$anim_store_restart00"

    const-class v3, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/16 v7, 0x1e

    iget-object v8, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const-string v3, ""

    const/16 v6, 0x1e

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/ConsoleStage$6;-><init>(Linfo/flowersoft/theotown/stages/ConsoleStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

.method public final getNextInput(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 200
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->lastInputs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 201
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->lastInputs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_13

    .line 202
    const-string p1, ""

    return-object p1

    :cond_13
    if-ltz v0, :cond_1f

    .line 204
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->lastInputs:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_1f
    return-object p1
.end method

.method public final getPreviousInput(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 189
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->lastInputs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_18

    .line 191
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->lastInputs:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 192
    :cond_18
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->lastInputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 193
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->lastInputs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_2e
    return-object p1
.end method

.method public final loadLastInputs()V
    .registers 5

    .line 153
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->ssp:Linfo/flowersoft/theotown/util/SSP;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->load()Linfo/flowersoft/theotown/util/SSP$Reader;

    move-result-object v0

    .line 155
    :try_start_6
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    const-string v2, "history"

    const-string v3, "[]"

    invoke-interface {v0, v2, v3}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->lastInputs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 157
    :goto_19
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_3d

    .line 158
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 159
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_37

    .line 160
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->lastInputs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_34} :catch_35

    goto :goto_37

    :catch_35
    move-exception v0

    goto :goto_3a

    :cond_37
    :goto_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 164
    :goto_3a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3d
    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 288
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawBackground()V

    return-void
.end method

.method public process(Ljava/lang/String;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 299
    :try_start_6
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 300
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    :catch_31
    move-exception v0

    goto/16 :goto_8ad

    .line 301
    :cond_34
    :goto_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":{}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    :cond_45
    new-instance v3, Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xa0

    const/16 v5, 0x20

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 305
    const-string v0, "hello"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 306
    const-string v0, "42"

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 308
    :cond_76
    const-string v0, "pt"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 309
    const-string v0, "Show plugin texture usage"

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 310
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    new-instance v3, Linfo/flowersoft/theotown/stages/PluginTextureStage;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/stages/PluginTextureStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void

    .line 312
    :cond_92
    const-string v0, "help"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 313
    const-string v0, ""

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cr:{name:\"Region name\",seed:\"42\",size:4,maps:[0,0,4]} - Creates a new region\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "lr - Lists all regions\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "rr:\"directory name\" - Removes specified region\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "pt - Shows plugin texture usage\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "settl:false - Disables all traffic lights of the current city\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bgseed - Returns seed of the background city (small)\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "plugins - Lists all ids used by plugins"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 323
    :cond_117
    const-string v0, "cr"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_2c7

    .line 324
    const-string v0, "cr"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 325
    const-string v3, "name"

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 326
    const-string v8, "tiles"

    const/16 v9, 0x40

    invoke-virtual {v0, v8, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 327
    const-string v8, "seed"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextLong()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 328
    const-string v8, "trees"

    invoke-virtual {v0, v8, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 329
    const-string v8, "decos"

    invoke-virtual {v0, v8, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 330
    const-string v8, "terrain"

    invoke-virtual {v0, v8, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 331
    const-string v8, "rivers"

    invoke-virtual {v0, v8, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 332
    const-string v8, "roughness"

    invoke-virtual {v0, v8, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v20

    .line 333
    const-string v8, "desert"

    invoke-virtual {v0, v8, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 334
    const-string v8, "snow"

    invoke-virtual {v0, v8, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 335
    const-string v8, "size"

    invoke-virtual {v0, v8, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 336
    const-string v9, "maps"

    invoke-virtual {v0, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v9

    .line 337
    const-string v10, "bmp"

    invoke-virtual {v0, v10, v14}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1d6

    .line 340
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d6

    .line 341
    new-instance v0, Ljava/io/File;

    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_DIR:Ljava/io/File;

    invoke-direct {v0, v4, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1d9

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1d9

    .line 343
    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v10, Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/lang/String;)V

    mul-int v11, v8, v13

    invoke-interface {v4, v10, v11}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->loadHeightMap(Lcom/badlogic/gdx/files/FileHandle;I)Linfo/flowersoft/theotown/creation/HeightMap;

    move-result-object v4

    if-nez v4, :cond_1d6

    .line 344
    sget-object v10, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not read in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    :cond_1d6
    :goto_1d6
    move-object/from16 v23, v4

    goto :goto_1e7

    .line 346
    :cond_1d9
    new-instance v0, Linfo/flowersoft/theotown/resources/HeightMapManager;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v0, v4}, Linfo/flowersoft/theotown/resources/HeightMapManager;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    mul-int v4, v8, v13

    invoke-virtual {v0, v15, v4}, Linfo/flowersoft/theotown/resources/HeightMapManager;->get(Ljava/lang/String;I)Linfo/flowersoft/theotown/creation/HeightMap;

    move-result-object v4

    goto :goto_1d6

    :goto_1e7
    if-eqz v23, :cond_1f1

    if-nez v8, :cond_1f1

    .line 351
    invoke-virtual/range {v23 .. v23}, Linfo/flowersoft/theotown/creation/HeightMap;->getWidth()I

    move-result v0

    div-int v8, v0, v13

    :cond_1f1
    if-nez v9, :cond_203

    .line 355
    new-instance v9, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v9}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 356
    invoke-virtual {v9, v7}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 359
    :cond_203
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v3, v0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getNewRegion(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    move-result-object v11

    .line 361
    new-instance v24, Linfo/flowersoft/theotown/creation/RegionCreator;

    iget-object v12, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    sget-object v0, Linfo/flowersoft/theotown/resources/Settings;->disabledBiomes:Ljava/util/List;

    .line 363
    invoke-static {v0}, Linfo/flowersoft/theotown/creation/CityCreator;->collectAvailableBiomes(Ljava/util/List;)Ljava/util/List;

    move-result-object v21

    sget-object v22, Linfo/flowersoft/theotown/city/GameMode;->EASY:Linfo/flowersoft/theotown/city/GameMode;

    move-object/from16 v10, v24

    sget-boolean v24, Linfo/flowersoft/theotown/resources/Settings;->regionOriginBackup:Z

    invoke-direct/range {v10 .. v24}, Linfo/flowersoft/theotown/creation/RegionCreator;-><init>(Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;ILjava/lang/String;Ljava/lang/String;ZZZZILjava/util/List;Linfo/flowersoft/theotown/city/GameMode;Linfo/flowersoft/theotown/creation/HeightMap;Z)V

    move v0, v7

    :goto_21d
    add-int/lit8 v4, v0, 0x2

    .line 366
    invoke-virtual {v9}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v12

    if-ge v4, v12, :cond_256

    .line 367
    invoke-virtual {v9, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v12

    add-int/lit8 v13, v0, 0x1

    .line 368
    invoke-virtual {v9, v13}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v13

    .line 371
    invoke-virtual {v9, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-eqz v14, :cond_244

    .line 372
    invoke-virtual {v9, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONArray(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v4

    .line 373
    invoke-virtual {v4, v7}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v14

    .line 374
    invoke-virtual {v4, v6}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v4

    goto :goto_249

    .line 376
    :cond_244
    invoke-virtual {v9, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v14

    move v4, v14

    :goto_249
    add-int/2addr v12, v14

    add-int/2addr v13, v4

    .line 378
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v0, v0, 0x3

    goto :goto_21d

    .line 380
    :cond_256
    invoke-virtual {v10, v8}, Linfo/flowersoft/theotown/creation/RegionCreator;->beginCreation(I)V

    move v0, v7

    :goto_25a
    add-int/lit8 v4, v0, 0x2

    .line 381
    invoke-virtual {v9}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_2a0

    .line 382
    invoke-virtual {v9, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v25

    add-int/lit8 v8, v0, 0x1

    .line 383
    invoke-virtual {v9, v8}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v26

    .line 387
    invoke-virtual {v9, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Linfo/flowersoft/theotown/util/json/JSONArray;

    if-eqz v8, :cond_28d

    .line 388
    invoke-virtual {v9, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONArray(I)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v4

    .line 389
    invoke-virtual {v4, v7}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v8

    .line 390
    invoke-virtual {v4, v6}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v12

    .line 391
    invoke-virtual {v4, v5, v7}, Linfo/flowersoft/theotown/util/json/JSONArray;->optInt(II)I

    move-result v4

    move/from16 v29, v4

    move/from16 v27, v8

    move/from16 v28, v12

    :goto_28a
    move-object/from16 v24, v10

    goto :goto_298

    .line 393
    :cond_28d
    invoke-virtual {v9, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->getInt(I)I

    move-result v8

    move/from16 v29, v7

    move/from16 v27, v8

    move/from16 v28, v27

    goto :goto_28a

    .line 396
    :goto_298
    invoke-virtual/range {v24 .. v29}, Linfo/flowersoft/theotown/creation/RegionCreator;->addRegionMap(IIIII)V

    move-object/from16 v10, v24

    add-int/lit8 v0, v0, 0x3

    goto :goto_25a

    .line 398
    :cond_2a0
    invoke-virtual {v10}, Linfo/flowersoft/theotown/creation/RegionCreator;->endCreation()V

    .line 399
    invoke-virtual {v11}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v0

    .line 400
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->setName(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v11, v0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->saveRegionInformation(Linfo/flowersoft/theotown/cityfile/RegionInformation;)Z

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Region "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " successfully created. You have to restart to see any effect."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 404
    :cond_2c7
    const-string v0, "lr"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_311

    .line 405
    invoke-static {}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->collectRegions()Ljava/util/List;

    move-result-object v0

    .line 406
    const-string v3, ""

    .line 407
    :goto_2d5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v7, v4, :cond_30d

    .line 408
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 409
    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getRegion(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    move-result-object v5

    invoke-virtual {v5}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v5

    .line 410
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "%s - %s\n"

    invoke-virtual {v5}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getName()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v8, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_2d5

    .line 412
    :cond_30d
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 414
    :cond_311
    const-string v0, "rr"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_366

    .line 415
    invoke-static {}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->collectRegions()Ljava/util/List;

    move-result-object v0

    .line 416
    const-string v4, "rr"

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33e

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find a region directory named "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 420
    :cond_33e
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v3, v0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getRegion(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getName()Ljava/lang/String;

    move-result-object v4

    .line 422
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->deleteAnything()V

    .line 423
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 424
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "Removed region %s - %s"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 427
    :cond_366
    const-string v0, "settut"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_397

    .line 428
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/ConsoleStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v0

    const-string v4, "settut"

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Linfo/flowersoft/theotown/city/CityInfo;->tutorialStage:Ljava/lang/String;

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set tutorial stage to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "settut"

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 431
    :cond_397
    const-string v0, "disable uber"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3aa

    .line 432
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/ConsoleStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/city/City;->setUber(Z)V

    .line 433
    const-string v0, "done"

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 435
    :cond_3aa
    const-string v0, "settl"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_400

    .line 436
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/ConsoleStage;->city:Linfo/flowersoft/theotown/city/City;

    if-eqz v0, :cond_3fa

    .line 437
    const-string v0, "settl"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 438
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/ConsoleStage;->city:Linfo/flowersoft/theotown/city/City;

    monitor-enter v3
    :try_end_3bf
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3bf} :catch_31

    .line 439
    :try_start_3bf
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/ConsoleStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3c9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3db

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/city/objects/Road;

    .line 440
    invoke-virtual {v5, v0}, Linfo/flowersoft/theotown/city/objects/Road;->setTrafficLights(Z)V

    goto :goto_3c9

    :catchall_3d9
    move-exception v0

    goto :goto_3f8

    .line 442
    :cond_3db
    monitor-exit v3
    :try_end_3dc
    .catchall {:try_start_3bf .. :try_end_3dc} :catchall_3d9

    .line 443
    :try_start_3dc
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Turned all traffic lights "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3eb

    const-string v0, "on"

    goto :goto_3ed

    :cond_3eb
    const-string v0, "off"

    :goto_3ed
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V
    :try_end_3f7
    .catch Ljava/lang/Exception; {:try_start_3dc .. :try_end_3f7} :catch_31

    return-void

    .line 442
    :goto_3f8
    :try_start_3f8
    monitor-exit v3
    :try_end_3f9
    .catchall {:try_start_3f8 .. :try_end_3f9} :catchall_3d9

    :try_start_3f9
    throw v0

    .line 445
    :cond_3fa
    const-string v0, "ERROR: No active city context"

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 448
    :cond_400
    const-string v0, "detholiad"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_454

    .line 449
    const-string v0, "detholiad"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    new-instance v3, Ljava/io/File;

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getTheoTownDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 451
    new-instance v4, Ljava/io/File;

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getTheoTownDir()Ljava/io/File;

    move-result-object v5

    const-string v6, ".plugin"

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 453
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_436

    .line 454
    const-string v0, "Couldn\'t find file"

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 455
    :cond_436
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_448

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_448

    .line 456
    const-string v0, "May not create directory"

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 458
    :cond_448
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Linfo/flowersoft/theotown/resources/ContentCollector;->extractZipDir(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 461
    :cond_454
    const-string v0, "bgseed"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_472

    .line 462
    sget-object v0, Linfo/flowersoft/theotown/stages/BaseStage;->staticBackgroundCity:Linfo/flowersoft/theotown/city/City;

    if-eqz v0, :cond_8c8

    .line 464
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getSeed()Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 466
    invoke-static {v0}, Linfo/flowersoft/theotown/util/OSUtil;->pasteIntoClipboard(Ljava/lang/String;)V

    .line 467
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    const-string v3, "Copied seed of background city"

    invoke-interface {v0, v3}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void

    .line 470
    :cond_472
    const-string v0, "getid"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_484

    .line 471
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/ConsoleStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 473
    :cond_484
    const-string v0, "setgm"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_506

    .line 474
    const-string v0, "setgm"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_497

    goto :goto_498

    :cond_497
    move v6, v7

    :goto_498
    and-int/lit16 v0, v0, 0xff

    .line 477
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/ConsoleStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v3

    sget-object v4, Linfo/flowersoft/theotown/city/GameMode;->SANDBOX:Linfo/flowersoft/theotown/city/GameMode;

    if-ne v3, v4, :cond_4b2

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v0, v3, :cond_4b2

    if-nez v6, :cond_4b2

    .line 478
    const-string v0, "May not change gamemode of sandbox city"

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    :cond_4b2
    const/4 v3, 0x6

    if-ne v0, v3, :cond_4bb

    .line 480
    const-string v0, "Specified gamemode cannot be used"

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    :cond_4bb
    if-ltz v0, :cond_4f1

    .line 481
    invoke-static {}, Linfo/flowersoft/theotown/city/GameMode;->values()[Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_4f1

    sget-object v3, Linfo/flowersoft/theotown/city/GameMode;->NOLOGIC:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v0, v3, :cond_4cd

    goto :goto_4f1

    .line 484
    :cond_4cd
    invoke-static {}, Linfo/flowersoft/theotown/city/GameMode;->values()[Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v3

    aget-object v0, v3, v0

    .line 485
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/ConsoleStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/city/City;->setGameMode(Linfo/flowersoft/theotown/city/GameMode;)V

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set game mode to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 482
    :cond_4f1
    :goto_4f1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 489
    :cond_506
    const-string v0, "winter"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_544

    .line 490
    const-string v0, "winter"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 491
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v3

    if-nez v0, :cond_524

    sget v4, Linfo/flowersoft/theotown/resources/Settings;->winter:I

    invoke-static {v4}, Linfo/flowersoft/theotown/resources/WinterManager;->shouldItBeWinter(I)Z

    move-result v4

    if-eqz v4, :cond_523

    goto :goto_524

    :cond_523
    move v6, v7

    :cond_524
    :goto_524
    invoke-virtual {v3, v6}, Linfo/flowersoft/theotown/resources/WinterManager;->setWinter(Z)V

    .line 492
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/ConsoleStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v3

    iput-boolean v0, v3, Linfo/flowersoft/theotown/city/CityInfo;->winter:Z

    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set winter to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 495
    :cond_544
    const-string v0, "stdout"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_560

    .line 496
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "=== In-game console ==="

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 497
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/ConsoleStage;->text:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 498
    const-string v0, "Console text written to standard output"

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 499
    :cond_560
    const-string v0, "outcopy"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_573

    .line 500
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/ConsoleStage;->text:Ljava/lang/String;

    invoke-static {v0}, Linfo/flowersoft/theotown/util/OSUtil;->pasteIntoClipboard(Ljava/lang/String;)V

    .line 501
    const-string v0, "Copied to clipboard"

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 503
    :cond_573
    const-string v0, "clearreports"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_588

    .line 504
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->clearReportedPlugins()V

    .line 505
    const-string v0, "Cleared"

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 507
    :cond_588
    const-string v0, "237"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89c

    const-string v0, "1237"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89c

    const-string v0, "1.2.37"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a2

    goto/16 :goto_89c

    .line 511
    :cond_5a2
    const-string v0, "noreqs"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5bc

    .line 512
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-nez v0, :cond_5b4

    invoke-static {}, Linfo/flowersoft/theotown/crossplatform/TheoTown;->isPickleMode()Z

    move-result v0

    if-eqz v0, :cond_8c8

    .line 513
    :cond_5b4
    sput-boolean v6, Linfo/flowersoft/theotown/resources/Constants;->NO_REQUIREMENTS:Z

    .line 514
    const-string v0, "Requirements disabled"

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 517
    :cond_5bc
    const-string v0, "exception"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5cd

    .line 518
    new-instance v0, Linfo/flowersoft/theotown/stages/ConsoleStage$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/ConsoleStage$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->addTask(Ljava/lang/Runnable;)V

    return-void

    .line 520
    :cond_5cd
    const-string v0, "create backup"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_607

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".backup"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/Backup;->saveBackup(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 524
    :cond_607
    const-string v0, "load backup"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_627

    .line 525
    const-string v0, "load backup"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/Backup;->loadBackup(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_621

    .line 526
    const-string v0, "Success"

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 528
    :cond_621
    const-string v0, "Something gone wrong"

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 531
    :cond_627
    const-string v0, "load online backup"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_664

    .line 532
    const-string v0, "load online backup"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    new-instance v3, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://bck0.theotown.com/backups/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 535
    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/Backup;->loadBackup(Ljava/io/InputStream;)Z

    move-result v3

    if-eqz v3, :cond_65b

    .line 536
    const-string v3, "Success"

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    goto :goto_660

    .line 538
    :cond_65b
    const-string v3, "Something gone wrong"

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 540
    :goto_660
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    .line 542
    :cond_664
    const-string v0, "restart"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_672

    .line 544
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->requestRestart()V

    return-void

    .line 546
    :cond_672
    const-string v0, "uploadregion"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6db

    .line 547
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/ConsoleStage;->region:Linfo/flowersoft/theotown/region/Region;

    if-eqz v0, :cond_8c8

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getMapDirectory()Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-result-object v0

    instance-of v0, v0, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    if-eqz v0, :cond_8c8

    .line 548
    const-string v0, "uploadregion"

    invoke-static {v3, v0}, Linfo/flowersoft/theotown/util/JSONUtil;->optObject(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 550
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/ConsoleStage;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/region/Region;->getMapDirectory()Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    .line 551
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/backend/User;->isSocialConnected()Z

    move-result v4

    if-eqz v4, :cond_6cc

    .line 552
    new-instance v11, Linfo/flowersoft/theotown/util/ProgressVariable;

    const/4 v4, 0x0

    invoke-direct {v11, v4}, Linfo/flowersoft/theotown/util/ProgressVariable;-><init>(F)V

    .line 553
    new-instance v4, Linfo/flowersoft/theotown/online/RegionUploader;

    invoke-direct {v4}, Linfo/flowersoft/theotown/online/RegionUploader;-><init>()V

    .line 554
    new-instance v9, Ljava/lang/Thread;

    new-instance v5, Linfo/flowersoft/theotown/stages/ConsoleStage$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4, v3, v11, v0}, Linfo/flowersoft/theotown/stages/ConsoleStage$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/online/RegionUploader;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/util/ProgressVariable;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    invoke-direct {v9, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 560
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    new-instance v5, Linfo/flowersoft/theotown/stages/WaitingStage;

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->ICON_WEATHER_FOG:I

    const-string v8, "Uploading region to cloud"

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Linfo/flowersoft/theotown/stages/WaitingStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;ILjava/lang/String;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/util/ProgressProvider;Lio/blueflower/stapel2d/util/Getter;)V

    invoke-virtual {v0, v5}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void

    .line 570
    :cond_6cc
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    new-instance v3, Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/stages/AccountStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void

    .line 574
    :cond_6db
    const-string v0, "restore purchases"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f0

    .line 575
    invoke-static {}, Linfo/flowersoft/theotown/InAppHandler;->getInstance()Linfo/flowersoft/theotown/InAppHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/InAppHandler;->restorePurchases()V

    .line 576
    const-string v0, "Done."

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 578
    :cond_6f0
    const-string v0, "list purchases"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_710

    .line 579
    invoke-static {}, Linfo/flowersoft/theotown/InAppHandler;->getInstance()Linfo/flowersoft/theotown/InAppHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/InAppHandler;->getRestoredPurchases()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_708

    .line 581
    const-string v0, "None"

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 583
    :cond_708
    invoke-virtual {v0, v5}, Linfo/flowersoft/theotown/util/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 586
    :cond_710
    const-string v0, "insets"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v8, 0x3

    if-eqz v0, :cond_780

    .line 587
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->getInsetsTRBL()[F

    move-result-object v0

    if-eqz v0, :cond_77a

    .line 589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "top: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 590
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "right: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bottom: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "left: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 594
    :cond_77a
    const-string v0, "null"

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 597
    :cond_780
    const-string v0, "reset achievements"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_795

    .line 598
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    if-eqz v0, :cond_8c8

    .line 599
    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/GamesService;->resetAchievements()V

    .line 600
    const-string v0, "Reset achievements :)"

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 603
    :cond_795
    const-string v0, "budget log"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c1

    .line 604
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/ConsoleStage;->city:Linfo/flowersoft/theotown/city/City;

    if-eqz v0, :cond_8c8

    .line 605
    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 606
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getLog()Ljava/util/List;

    move-result-object v0

    .line 607
    :goto_7ab
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v7, v3, :cond_8c8

    .line 608
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;

    .line 609
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/DefaultBudget$BudgetLog;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7ab

    .line 613
    :cond_7c1
    const-string v0, "diamond log"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e7

    .line 614
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    .line 615
    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getLog()Ljava/util/List;

    move-result-object v0

    .line 616
    :goto_7d1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v7, v3, :cond_8c8

    .line 617
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/mechanics/LogEntry;

    .line 618
    invoke-virtual {v3}, Linfo/flowersoft/theotown/mechanics/LogEntry;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7d1

    .line 621
    :cond_7e7
    const-string v0, "rate"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f5

    .line 622
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->rateGame()V

    return-void

    .line 624
    :cond_7f5
    const-string v0, "rate light"

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_803

    .line 625
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->rateGameLight()V

    return-void

    .line 627
    :cond_803
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->names()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_85a

    .line 628
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->names()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_85a

    .line 629
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->names()Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/util/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/util/Hashing;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "98ca1a5c8ce8c1cdd0a0a82d261bae89"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85a

    .line 630
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_H76:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_839

    .line 631
    const-string v0, "You already hacked it, calm down"

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 633
    :cond_839
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_H76:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->complete()V

    .line 634
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    const/16 v3, 0xc8

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnRegionCoins(I)V

    .line 635
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v0

    const-wide/high16 v3, 0x4069000000000000L    # 200.0

    invoke-virtual {v0, v8, v3, v4}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->addEvent(ID)V

    .line 636
    const-string v0, "Just Pickle"

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 640
    :cond_85a
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    move-object v5, v4

    .line 643
    :cond_85f
    :goto_85f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_890

    if-nez v4, :cond_890

    .line 644
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move v6, v7

    .line 645
    :goto_86e
    iget-object v8, v1, Linfo/flowersoft/theotown/stages/ConsoleStage;->cmds:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_85f

    .line 646
    iget-object v8, v1, Linfo/flowersoft/theotown/stages/ConsoleStage;->cmds:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Linfo/flowersoft/theotown/stages/commandhandler/CommandHandler;

    invoke-interface {v8, v5}, Linfo/flowersoft/theotown/stages/commandhandler/CommandHandler;->canHandle(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_88d

    .line 647
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/ConsoleStage;->cmds:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/stages/commandhandler/CommandHandler;

    goto :goto_85f

    :cond_88d
    add-int/lit8 v6, v6, 0x1

    goto :goto_86e

    :cond_890
    if-eqz v4, :cond_896

    .line 653
    invoke-interface {v4, v3, v5, v2}, Linfo/flowersoft/theotown/stages/commandhandler/CommandHandler;->handle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Lio/blueflower/stapel2d/util/Setter;)V

    return-void

    .line 655
    :cond_896
    const-string v0, "I don\'t get you"

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void

    .line 508
    :cond_89c
    :goto_89c
    const-string v0, "Congratulations on almost cracking the spoiler."

    invoke-interface {v2, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 509
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getInstance()Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    move-result-object v0

    const-string v3, "!_unlock_metro_pickle"

    const-wide/16 v4, 0x2a

    invoke-virtual {v0, v3, v4, v5}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->set(Ljava/lang/String;J)V
    :try_end_8ac
    .catch Ljava/lang/Exception; {:try_start_3f9 .. :try_end_8ac} :catch_31

    return-void

    .line 659
    :goto_8ad
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 660
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "User asked for it"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c8

    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-nez v2, :cond_8c5

    goto :goto_8c8

    :cond_8c5
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_8c8
    :goto_8c8
    return-void
.end method

.method public final registerInput(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 170
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->lastInputs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 171
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->lastInputs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 173
    :cond_1a
    :goto_1a
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->lastInputs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_2a

    .line 174
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->lastInputs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1a

    .line 176
    :cond_2a
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->lastInputs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_2f
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->ssp:Linfo/flowersoft/theotown/util/SSP;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/SSP;->edit()Linfo/flowersoft/theotown/util/SSP$Writer;

    move-result-object p1

    .line 180
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 181
    :goto_3a
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->lastInputs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4e

    .line 182
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/ConsoleStage;->lastInputs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 184
    :cond_4e
    const-string v0, "history"

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-interface {p1}, Linfo/flowersoft/theotown/util/SSP$Writer;->apply()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 666
    const-string v0, "ConsoleStage"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.ConsoleStage.AnonymousClass1 (info.flowersoft.theotown.stages.ConsoleStage$1)
.class public Linfo/flowersoft/theotown/stages/ConsoleStage$1;
.super Ljava/lang/Object;
.source "ConsoleStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/stages/commandhandler/CommandHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/ConsoleStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/region/Region;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;

.field public final synthetic val$region:Linfo/flowersoft/theotown/region/Region;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/ConsoleStage;Linfo/flowersoft/theotown/region/Region;)V
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

    .line 123
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$1;->this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$1;->val$region:Linfo/flowersoft/theotown/region/Region;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string p2, "plugin"

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    const-string p2, "cmd region unlock key"

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$1;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canHandle(Ljava/lang/String;)Z
    .registers 3

    .line 128
    invoke-static {p1}, Linfo/flowersoft/theotown/util/Hashing;->sha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$1;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public handle(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 133
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$1;->val$region:Linfo/flowersoft/theotown/region/Region;

    if-eqz p1, :cond_43

    .line 134
    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/Region;->getMapDirectory()Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-result-object p1

    .line 135
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$1;->val$region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/region/Region;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object p2

    .line 136
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMaps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 137
    invoke-virtual {p2, v1}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getCityInformation(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->setLocked(Z)V

    goto :goto_16

    .line 138
    :cond_2b
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->saveRegionInformation(Linfo/flowersoft/theotown/cityfile/RegionInformation;)Z

    .line 139
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$1;->val$region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/region/Region;->reloadRegionInformation()V

    .line 140
    const-string p1, "done"

    invoke-interface {p3, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    .line 141
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string p2, "unlock region"

    const-string p3, ""

    const-string v0, "Fraud"

    invoke-interface {p1, v0, p2, p3}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    return-void
.end method

###### Class info.flowersoft.theotown.stages.ConsoleStage.AnonymousClass2 (info.flowersoft.theotown.stages.ConsoleStage$2)
.class public Linfo/flowersoft/theotown/stages/ConsoleStage$2;
.super Ljava/lang/Object;
.source "ConsoleStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/ConsoleStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/ConsoleStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 220
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$2;->this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 223
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$2;->this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.ConsoleStage.AnonymousClass3 (info.flowersoft.theotown.stages.ConsoleStage$3)
.class public Linfo/flowersoft/theotown/stages/ConsoleStage$3;
.super Ljava/lang/Object;
.source "ConsoleStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/ConsoleStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/ConsoleStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 226
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$3;->this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 229
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$3;->this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.ConsoleStage.AnonymousClass4 (info.flowersoft.theotown.stages.ConsoleStage$4)
.class public Linfo/flowersoft/theotown/stages/ConsoleStage$4;
.super Ljava/lang/Object;
.source "ConsoleStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/ConsoleStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/ConsoleStage;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$4;->this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 236
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$4;->this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/ConsoleStage;->access$000(Linfo/flowersoft/theotown/stages/ConsoleStage;)Linfo/flowersoft/theotown/ui/TextField;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v0

    .line 237
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$4;->this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/stages/ConsoleStage;->access$100(Linfo/flowersoft/theotown/stages/ConsoleStage;Ljava/lang/String;)V

    .line 238
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v1, v2, :cond_24

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$4;->this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/ConsoleStage;->access$000(Linfo/flowersoft/theotown/stages/ConsoleStage;)Linfo/flowersoft/theotown/ui/TextField;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/TextField;->setText(Ljava/lang/String;)V

    .line 239
    :cond_24
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 240
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$4;->this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/stages/ConsoleStage;->access$200(Linfo/flowersoft/theotown/stages/ConsoleStage;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$4;->this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;

    new-instance v2, Linfo/flowersoft/theotown/stages/ConsoleStage$4$1;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/stages/ConsoleStage$4$1;-><init>(Linfo/flowersoft/theotown/stages/ConsoleStage$4;)V

    invoke-virtual {v1, v0, v2}, Linfo/flowersoft/theotown/stages/ConsoleStage;->process(Ljava/lang/String;Lio/blueflower/stapel2d/util/Setter;)V

    :cond_4a
    return-void
.end method

###### Class info.flowersoft.theotown.stages.ConsoleStage.AnonymousClass4.AnonymousClass1 (info.flowersoft.theotown.stages.ConsoleStage$4$1)
.class public Linfo/flowersoft/theotown/stages/ConsoleStage$4$1;
.super Ljava/lang/Object;
.source "ConsoleStage.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/ConsoleStage$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/ConsoleStage$4;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/ConsoleStage$4;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 241
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$4$1;->this$1:Linfo/flowersoft/theotown/stages/ConsoleStage$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 241
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/ConsoleStage$4$1;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .registers 3

    .line 244
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$4$1;->this$1:Linfo/flowersoft/theotown/stages/ConsoleStage$4;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/ConsoleStage$4;->this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/ConsoleStage;->access$200(Linfo/flowersoft/theotown/stages/ConsoleStage;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.ConsoleStage.AnonymousClass5 (info.flowersoft.theotown.stages.ConsoleStage$5)
.class public Linfo/flowersoft/theotown/stages/ConsoleStage$5;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "ConsoleStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/ConsoleStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/ConsoleStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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
            null,
            null
        }
    .end annotation

    .line 261
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$5;->this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public updateKeyInput(Lio/blueflower/stapel2d/key/KeyMapper;)V
    .registers 4

    const/16 v0, 0x13

    .line 268
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 269
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$5;->this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/ConsoleStage;->access$000(Linfo/flowersoft/theotown/stages/ConsoleStage;)Linfo/flowersoft/theotown/ui/TextField;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$5;->this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/ConsoleStage;->access$000(Linfo/flowersoft/theotown/stages/ConsoleStage;)Linfo/flowersoft/theotown/ui/TextField;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/ConsoleStage;->access$300(Linfo/flowersoft/theotown/stages/ConsoleStage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/ui/TextField;->setText(Ljava/lang/String;)V

    return-void

    :cond_20
    const/16 v0, 0x14

    .line 270
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(I)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 271
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$5;->this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/ConsoleStage;->access$000(Linfo/flowersoft/theotown/stages/ConsoleStage;)Linfo/flowersoft/theotown/ui/TextField;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$5;->this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/ConsoleStage;->access$000(Linfo/flowersoft/theotown/stages/ConsoleStage;)Linfo/flowersoft/theotown/ui/TextField;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/ConsoleStage;->access$400(Linfo/flowersoft/theotown/stages/ConsoleStage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/ui/TextField;->setText(Ljava/lang/String;)V

    :cond_3f
    return-void
.end method

###### Class info.flowersoft.theotown.stages.ConsoleStage.AnonymousClass6 (info.flowersoft.theotown.stages.ConsoleStage$6)
.class public Linfo/flowersoft/theotown/stages/ConsoleStage$6;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "ConsoleStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/ConsoleStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/ConsoleStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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
            0x0
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

    .line 276
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$6;->this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 2

    .line 279
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 281
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$6;->this$0:Linfo/flowersoft/theotown/stages/ConsoleStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->requestRestart()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.ConsoleStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.ConsoleStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/ConsoleStage$$ExternalSyntheticLambda0;
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
    invoke-static {}, Linfo/flowersoft/theotown/stages/ConsoleStage;->$r8$lambda$TCL6DtsEjba0obF1zRqulNCNrXY()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.ConsoleStage$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.ConsoleStage$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/ConsoleStage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/online/RegionUploader;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

.field public final synthetic f$2:Linfo/flowersoft/theotown/util/ProgressVariable;

.field public final synthetic f$3:Linfo/flowersoft/theotown/util/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/online/RegionUploader;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/util/ProgressVariable;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/online/RegionUploader;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$$ExternalSyntheticLambda1;->f$2:Linfo/flowersoft/theotown/util/ProgressVariable;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$$ExternalSyntheticLambda1;->f$3:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/online/RegionUploader;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$$ExternalSyntheticLambda1;->f$2:Linfo/flowersoft/theotown/util/ProgressVariable;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/ConsoleStage$$ExternalSyntheticLambda1;->f$3:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/stages/ConsoleStage;->$r8$lambda$vJF6dnEy-GONPg3Gt904hCsdq5c(Linfo/flowersoft/theotown/online/RegionUploader;Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;Linfo/flowersoft/theotown/util/ProgressVariable;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method
