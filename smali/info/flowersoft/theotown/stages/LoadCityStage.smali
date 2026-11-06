###### Class info.flowersoft.theotown.stages.LoadCityStage (info.flowersoft.theotown.stages.LoadCityStage)
.class public Linfo/flowersoft/theotown/stages/LoadCityStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "LoadCityStage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;
    }
.end annotation


# instance fields
.field public cityLoadingFailed:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public deleteDialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public executor:Ljava/util/concurrent/ExecutorService;

.field public final handler:Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;

.field public lastItem:Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;

.field public listBox:Lio/blueflower/stapel2d/gui/ListBox;

.field public listBoxMovement:F

.field public loadCityGuard:Linfo/flowersoft/theotown/city/LoadCityGuard;

.field public mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

.field public final mapPreviewRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;",
            ">;"
        }
    .end annotation
.end field

.field public selectedCity:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public final waitingForUpload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$FcIDfOfOZ80mZBnnKetznLjleV8(Linfo/flowersoft/theotown/stages/LoadCityStage;)V
    .registers 4

    .line 240
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->loadCityGuard:Linfo/flowersoft/theotown/city/LoadCityGuard;

    .line 240
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    .line 241
    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMaps()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ListBox;->getSelectedItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->handler:Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;

    .line 240
    invoke-virtual {v0, v1, p0}, Linfo/flowersoft/theotown/city/LoadCityGuard;->loadCityProtected(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fjxxe4p7BWQCqDHua0nsaYLN-B4(Linfo/flowersoft/theotown/stages/LoadCityStage;)V
    .registers 1

    .line 174
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    .line 174
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->refreshCurrentStage()V

    return-void
.end method

.method public static synthetic $r8$lambda$IhQKCR6PqJ1PytEva48UYu5iwrI(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    .line 99
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 100
    const-string p0, "LoadCityExecutor"

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$Qerpl1n_Ug0SkqxfIh0UOqfTEGw(Linfo/flowersoft/theotown/stages/LoadCityStage;)V
    .registers 1

    .line 117
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

.method public static synthetic $r8$lambda$YyxHGWaCKPCBcq3yX1EVAPDwgq4(Linfo/flowersoft/theotown/stages/LoadCityStage;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\"

    const-string v2, "/"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->openURI(Ljava/lang/String;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$d426ho-fDG7WUNzockqOucEFfNc(Linfo/flowersoft/theotown/stages/LoadCityStage;)V
    .registers 2

    .line 166
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->deleteDialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 166
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->showDialog(Linfo/flowersoft/theotown/ui/Dialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xrav3JfLmGWpqkMnj2o_zlBd7KM(Linfo/flowersoft/theotown/stages/LoadCityStage;)V
    .registers 4

    .line 249
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 250
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/stages/CreateCityStage;

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Linfo/flowersoft/theotown/stages/CreateCityStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Z)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yoCdceE3YXF2Z2BV4ucep8alNGQ(Linfo/flowersoft/theotown/stages/LoadCityStage;)V
    .registers 8

    .line 170
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    .line 170
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMaps()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ListBox;->getSelectedItemIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 171
    sget-object v1, Linfo/flowersoft/theotown/ui/RestoreCityDialog;->INSTANCE:Linfo/flowersoft/theotown/ui/RestoreCityDialog;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-virtual {v1, v0, v3}, Linfo/flowersoft/theotown/ui/RestoreCityDialog;->supportsRestore(Linfo/flowersoft/theotown/cityfile/MapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 172
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    new-instance v4, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda7;-><init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/ui/RestoreCityDialog;->show(Linfo/flowersoft/theotown/cityfile/MapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/Runnable;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V

    :cond_2b
    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 2

    .line 89
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 70
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->waitingForUpload:Ljava/util/List;

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->mapPreviewRenderers:Ljava/util/List;

    .line 76
    new-instance p1, Linfo/flowersoft/theotown/stages/LoadCityStage$1;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/stages/LoadCityStage$1;-><init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->handler:Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/LoadCityStage;)Linfo/flowersoft/theotown/cityloader/CityKeeper;
    .registers 1

    .line 52
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->cityLoadingFailed:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    return-object p0
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/stages/LoadCityStage;Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/cityloader/CityKeeper;
    .registers 2

    .line 52
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->cityLoadingFailed:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    return-object p1
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/LoadCityStage;)Lio/blueflower/stapel2d/gui/ListBox;
    .registers 1

    .line 52
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/LoadCityStage;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;
    .registers 1

    .line 52
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/LoadCityStage;)Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;
    .registers 1

    .line 52
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->lastItem:Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;

    return-object p0
.end method

.method public static synthetic access$402(Linfo/flowersoft/theotown/stages/LoadCityStage;Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;)Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;
    .registers 2

    .line 52
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->lastItem:Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;

    return-object p1
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/stages/LoadCityStage;)Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;
    .registers 1

    .line 52
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->handler:Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/stages/LoadCityStage;)Linfo/flowersoft/theotown/city/LoadCityGuard;
    .registers 1

    .line 52
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->loadCityGuard:Linfo/flowersoft/theotown/city/LoadCityGuard;

    return-object p0
.end method


# virtual methods
.method public drop()V
    .registers 2

    .line 322
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drop()V

    .line 324
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public enter()V
    .registers 12

    .line 108
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 110
    invoke-static {}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->waitForSaving()V

    .line 112
    new-instance v0, Linfo/flowersoft/theotown/city/LoadCityGuard;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/city/LoadCityGuard;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->loadCityGuard:Linfo/flowersoft/theotown/city/LoadCityGuard;

    .line 114
    new-instance v4, Linfo/flowersoft/theotown/ui/Page;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x835

    .line 115
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOAD:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v4, v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/Page;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;ILio/blueflower/stapel2d/gui/Master;)V

    .line 117
    new-instance v0, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V

    invoke-virtual {v4, v0}, Linfo/flowersoft/theotown/ui/Page;->setOnBackgroundClick(Ljava/lang/Runnable;)V

    .line 119
    invoke-virtual {v4}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v10

    .line 120
    new-instance v5, Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v10}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v8

    invoke-virtual {v10}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v5 .. v10}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v5, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->getDefault(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    const/4 v1, 0x0

    .line 123
    invoke-virtual {v0, v1, v1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->loadMaps(Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    .line 125
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMaps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5b
    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_98

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 126
    new-instance v3, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v1, v5, v6}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;-><init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;Lio/blueflower/stapel2d/drawing/Engine;Ljava/util/concurrent/ExecutorService;)V

    .line 127
    iget-object v5, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->mapPreviewRenderers:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v5, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->waitingForUpload:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v5, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;

    invoke-direct {v5, p0, v3, v1}, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;-><init>(Linfo/flowersoft/theotown/stages/LoadCityStage;Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    .line 131
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v3, v5}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 132
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->selectedCity:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 133
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/gui/ListBox;->selectItemIndex(I)V

    goto :goto_5b

    .line 137
    :cond_98
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->hasNoMemoryAccess()Z

    move-result v0

    if-eqz v0, :cond_b0

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->showNoMemAccessDialog:Z

    if-eqz v0, :cond_b0

    .line 138
    new-instance v0, Linfo/flowersoft/theotown/ui/ExternalStorageDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v3}, Linfo/flowersoft/theotown/ui/ExternalStorageDialog;-><init>(Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Master;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->showDialog(Linfo/flowersoft/theotown/ui/Dialog;)V

    .line 141
    :cond_b0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->cityLoadingFailed:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    if-eqz v0, :cond_bb

    .line 142
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getLoadingException()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/LoadCityStage;->showErrorDialog(Ljava/lang/Exception;)V

    .line 145
    :cond_bb
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x5

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x8c6

    .line 146
    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x6f9

    .line 147
    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v3, v5, v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->deleteDialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 148
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x5c9

    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Button;->setMarked(Z)V

    .line 149
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->deleteDialog:Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRASH:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x42b

    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Linfo/flowersoft/theotown/stages/LoadCityStage$2;

    invoke-direct {v5, p0}, Linfo/flowersoft/theotown/stages/LoadCityStage$2;-><init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V

    const/4 v10, 0x0

    invoke-virtual {v0, v1, v3, v10, v5}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 162
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->deleteDialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 163
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->deleteDialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0, v10}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 165
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRASH:I

    new-instance v9, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda1;

    invoke-direct {v9, p0}, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    .line 167
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMaps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 169
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_MEDIC:I

    new-instance v9, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda2;

    invoke-direct {v9, p0}, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    .line 178
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMaps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 180
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_COPY:I

    new-instance v9, Linfo/flowersoft/theotown/stages/LoadCityStage$3;

    invoke-direct {v9, p0}, Linfo/flowersoft/theotown/stages/LoadCityStage$3;-><init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    .line 234
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMaps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 236
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v0

    if-lez v0, :cond_191

    .line 237
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->getSelectedItemIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->getItem(I)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->lastItem:Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;

    .line 239
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_FORWARD:I

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x353

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda3;

    invoke-direct {v9, p0}, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    .line 244
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    invoke-virtual {v0, v10}, Lio/blueflower/stapel2d/gui/Button;->setMarked(Z)V

    .line 247
    :cond_191
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_CITY:I

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x101

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda4;

    invoke-direct {v9, p0}, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 253
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_FOLDER:I

    new-instance v9, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda5;

    invoke-direct {v9, p0}, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda5;-><init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V

    const-string v6, ""

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    .line 255
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v1

    sget-object v3, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v1, v3, :cond_1bf

    move v1, v2

    goto :goto_1c0

    :cond_1bf
    move v1, v10

    :goto_1c0
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 259
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMaps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_210

    .line 260
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOAD:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xaf1

    .line 261
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x83b

    .line 262
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v3, v4, v5}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 264
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CITY:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x628

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/stages/LoadCityStage$4;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/stages/LoadCityStage$4;-><init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V

    invoke-virtual {v0, v1, v3, v10, v4}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    .line 270
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Button;->setMarked(Z)V

    .line 271
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xc11

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/stages/LoadCityStage$5;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/stages/LoadCityStage$5;-><init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V

    invoke-virtual {v0, v1, v3, v2, v4}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 279
    :cond_210
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    iget v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->listBoxMovement:F

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->setShiftY(F)V

    .line 280
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->setShiftY(F)V

    return-void
.end method

.method public leave()V
    .registers 4

    .line 302
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->getShiftY()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->listBoxMovement:F

    const/4 v0, 0x0

    .line 303
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->cityLoadingFailed:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 305
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v1

    if-lez v1, :cond_27

    .line 306
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMaps()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ListBox;->getSelectedItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iput-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->selectedCity:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 308
    :cond_27
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ListBox;->removeAllItems()V

    .line 309
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->mapDirectory:Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    const/4 v0, 0x0

    .line 311
    :goto_2f
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->mapPreviewRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 312
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->mapPreviewRenderers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 314
    :cond_45
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->mapPreviewRenderers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 315
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->waitingForUpload:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 317
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->leave()V

    return-void
.end method

.method public onUpdate()V
    .registers 4

    .line 286
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawBackground()V

    .line 288
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->waitingForUpload:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 v0, 0x0

    .line 289
    :goto_c
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->waitingForUpload:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 290
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->waitingForUpload:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    .line 291
    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->readyForUpload()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 292
    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->upload()V

    .line 293
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->waitingForUpload:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_2e
    return-void
.end method

.method public prepare()V
    .registers 3

    .line 94
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->prepare()V

    .line 97
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    new-instance v1, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda6;-><init>()V

    .line 96
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public final showErrorDialog(Ljava/lang/Exception;)V
    .registers 15

    .line 503
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_PEOPLE:I

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xc30

    .line 504
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x97b

    .line 505
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, p1, v3}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 507
    new-instance v4, Linfo/flowersoft/theotown/stages/LoadCityStage$6;

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_MEDIC:I

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x65c

    .line 508
    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    .line 509
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v11

    .line 510
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v4 .. v12}, Linfo/flowersoft/theotown/stages/LoadCityStage$6;-><init>(Linfo/flowersoft/theotown/stages/LoadCityStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 528
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v1, v5, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xca1

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/gui/Button;->setMarked(Z)V

    .line 529
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->showDialog(Linfo/flowersoft/theotown/ui/Dialog;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 330
    const-string v0, "LoadCityStage"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.LoadCityStage.AnonymousClass1 (info.flowersoft.theotown.stages.LoadCityStage$1)
.class public Linfo/flowersoft/theotown/stages/LoadCityStage$1;
.super Ljava/lang/Object;
.source "LoadCityStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/LoadCityStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 76
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$1;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 3

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$1;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$002(Linfo/flowersoft/theotown/stages/LoadCityStage;Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    return-void
.end method

.method public onLoadCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 2

    .line 79
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$1;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadCityStage.AnonymousClass2 (info.flowersoft.theotown.stages.LoadCityStage$2)
.class public Linfo/flowersoft/theotown/stages/LoadCityStage$2;
.super Ljava/lang/Object;
.source "LoadCityStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/LoadCityStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$2;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 152
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$2;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$100(Linfo/flowersoft/theotown/stages/LoadCityStage;)Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->getSelectedItemIndex()I

    move-result v0

    .line 153
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$2;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$100(Linfo/flowersoft/theotown/stages/LoadCityStage;)Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/ListBox;->getItem(I)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;

    .line 154
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->access$200(Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v1

    .line 155
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$2;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$100(Linfo/flowersoft/theotown/stages/LoadCityStage;)Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/gui/ListBox;->removeItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 157
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete city in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoadCityStage"

    invoke-interface {v0, v2, v1}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$2;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->refreshCurrentStage()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadCityStage.AnonymousClass3 (info.flowersoft.theotown.stages.LoadCityStage$3)
.class public Linfo/flowersoft/theotown/stages/LoadCityStage$3;
.super Ljava/lang/Object;
.source "LoadCityStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/LoadCityStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 180
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 183
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$300(Linfo/flowersoft/theotown/stages/LoadCityStage;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getMaps()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$100(Linfo/flowersoft/theotown/stages/LoadCityStage;)Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ListBox;->getSelectedItemIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 184
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_26
    if-lez v2, :cond_37

    add-int/lit8 v3, v2, -0x1

    .line 186
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_37

    add-int/lit8 v2, v2, -0x1

    goto :goto_26

    .line 189
    :cond_37
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_4d

    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    .line 191
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_4e

    :cond_4d
    const/4 v3, 0x2

    .line 193
    :goto_4e
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$300(Linfo/flowersoft/theotown/stages/LoadCityStage;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isNameInUse(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 195
    :cond_6c
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    new-instance v2, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v6

    invoke-direct {v2, v3, v5, v6}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;)V

    new-instance v3, Linfo/flowersoft/theotown/stages/LoadCityStage$3$2;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/stages/LoadCityStage$3$2;-><init>(Linfo/flowersoft/theotown/stages/LoadCityStage$3;)V

    .line 196
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setFilter(Lio/blueflower/stapel2d/util/Predicate;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1;

    invoke-direct {v3, p0, v0}, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1;-><init>(Linfo/flowersoft/theotown/stages/LoadCityStage$3;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    .line 202
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnOk(Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xaa

    .line 228
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOkText(Ljava/lang/String;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x83

    .line 229
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setCancelText(Ljava/lang/String;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    move-result-object v0

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_COPY:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xbb8

    .line 230
    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    iget-object v5, v5, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x6ae

    .line 231
    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    .line 230
    invoke-virtual {v0, v2, v3, v5, v4}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object v0

    .line 195
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->showDialog(Linfo/flowersoft/theotown/ui/Dialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadCityStage.AnonymousClass3.AnonymousClass1 (info.flowersoft.theotown.stages.LoadCityStage$3$1)
.class public Linfo/flowersoft/theotown/stages/LoadCityStage$3$1;
.super Ljava/lang/Object;
.source "LoadCityStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/LoadCityStage$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/LoadCityStage$3;

.field public final synthetic val$currentCity:Linfo/flowersoft/theotown/cityloader/CityKeeper;


# direct methods
.method public static synthetic $r8$lambda$GnOYeMVqoDEXqMOzAQPoeNl0MDw(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/String;)V
    .registers 4

    .line 212
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->load()V

    .line 213
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->setCity(Linfo/flowersoft/theotown/city/City;)V

    .line 214
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/city/City;->setName(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasPreview()Z

    move-result p2

    if-eqz p2, :cond_36

    .line 216
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object p2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getPreviewData()[I

    move-result-object p2

    .line 217
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getPreviewWidth()I

    move-result v0

    .line 218
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object p0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getPreviewHeight()I

    move-result p0

    .line 216
    invoke-virtual {p1, p2, v0, p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->setPreview([III)V

    .line 220
    :cond_36
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->save()V

    .line 221
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object p0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->dispose()V

    const/4 p0, 0x0

    .line 222
    invoke-virtual {p1, p0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->setCity(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SttCANZ_O0_uWAPheO5g-fCLQvE()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/LoadCityStage$3;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
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

    .line 202
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1;->this$1:Linfo/flowersoft/theotown/stages/LoadCityStage$3;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1;->val$currentCity:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 202
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public accept(Ljava/lang/String;)V
    .registers 12

    .line 205
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1;->this$1:Linfo/flowersoft/theotown/stages/LoadCityStage$3;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$3;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$300(Linfo/flowersoft/theotown/stages/LoadCityStage;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->findFileForNewCity(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 206
    new-instance v1, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1;->this$1:Linfo/flowersoft/theotown/stages/LoadCityStage$3;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/LoadCityStage$3;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-direct {v1, v0, v2}, Linfo/flowersoft/theotown/cityloader/CityKeeper;-><init>(Ljava/io/File;Lio/blueflower/stapel2d/gamestack/Translator;)V

    .line 208
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1;->this$1:Linfo/flowersoft/theotown/stages/LoadCityStage$3;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$3;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$100(Linfo/flowersoft/theotown/stages/LoadCityStage;)Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->removeAllItems()V

    .line 210
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1;->this$1:Linfo/flowersoft/theotown/stages/LoadCityStage$3;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$3;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    new-instance v2, Linfo/flowersoft/theotown/stages/WaitingStage;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1;->this$1:Linfo/flowersoft/theotown/stages/LoadCityStage$3;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/LoadCityStage$3;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    move-object v4, v3

    iget-object v3, v4, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-object v5, v4

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_COPY:I

    iget-object v5, v5, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0xafc

    .line 211
    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/Thread;

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1;->val$currentCity:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    new-instance v8, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1$$ExternalSyntheticLambda0;

    invoke-direct {v8, v7, v1, p1}, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v7, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1$$ExternalSyntheticLambda1;-><init>()V

    .line 225
    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getProgressProvider()Linfo/flowersoft/theotown/util/ProgressProvider;

    move-result-object v8

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getStateProvider()Lio/blueflower/stapel2d/util/Getter;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Linfo/flowersoft/theotown/stages/WaitingStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;ILjava/lang/String;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/util/ProgressProvider;Lio/blueflower/stapel2d/util/Getter;)V

    .line 210
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadCityStage$3$1$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.LoadCityStage$3$1$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadCityStage$3$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public final synthetic f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1;->$r8$lambda$GnOYeMVqoDEXqMOzAQPoeNl0MDw(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadCityStage$3$1$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.LoadCityStage$3$1$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadCityStage$3$1$$ExternalSyntheticLambda1;
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
    invoke-static {}, Linfo/flowersoft/theotown/stages/LoadCityStage$3$1;->$r8$lambda$SttCANZ_O0_uWAPheO5g-fCLQvE()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadCityStage.AnonymousClass3.AnonymousClass2 (info.flowersoft.theotown.stages.LoadCityStage$3$2)
.class public Linfo/flowersoft/theotown/stages/LoadCityStage$3$2;
.super Ljava/lang/Object;
.source "LoadCityStage.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/LoadCityStage$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Predicate<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/LoadCityStage$3;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/LoadCityStage$3;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 196
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3$2;->this$1:Linfo/flowersoft/theotown/stages/LoadCityStage$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 196
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/LoadCityStage$3$2;->apply(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public apply(Ljava/lang/String;)Z
    .registers 3

    .line 199
    invoke-static {p1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->isCityNameValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$3$2;->this$1:Linfo/flowersoft/theotown/stages/LoadCityStage$3;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$3;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$300(Linfo/flowersoft/theotown/stages/LoadCityStage;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isNameInUse(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

###### Class info.flowersoft.theotown.stages.LoadCityStage.AnonymousClass4 (info.flowersoft.theotown.stages.LoadCityStage$4)
.class public Linfo/flowersoft/theotown/stages/LoadCityStage$4;
.super Ljava/lang/Object;
.source "LoadCityStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/LoadCityStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 264
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$4;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 267
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$4;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 268
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$4;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/stages/CreateCityStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$4;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/stages/CreateCityStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Z)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadCityStage.AnonymousClass5 (info.flowersoft.theotown.stages.LoadCityStage$5)
.class public Linfo/flowersoft/theotown/stages/LoadCityStage$5;
.super Ljava/lang/Object;
.source "LoadCityStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/LoadCityStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 271
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$5;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 274
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$5;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadCityStage.AnonymousClass6 (info.flowersoft.theotown.stages.LoadCityStage$6)
.class public Linfo/flowersoft/theotown/stages/LoadCityStage$6;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "LoadCityStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/LoadCityStage;->showErrorDialog(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/LoadCityStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 510
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$6;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .registers 3

    .line 513
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$6;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$000(Linfo/flowersoft/theotown/stages/LoadCityStage;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$6;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$300(Linfo/flowersoft/theotown/stages/LoadCityStage;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$6;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$000(Linfo/flowersoft/theotown/stages/LoadCityStage;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->canRecoverFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    return v0

    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 4

    .line 518
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$6;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$000(Linfo/flowersoft/theotown/stages/LoadCityStage;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 519
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$6;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$000(Linfo/flowersoft/theotown/stages/LoadCityStage;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v0

    .line 520
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$6;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$300(Linfo/flowersoft/theotown/stages/LoadCityStage;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    move-result-object v1

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->canRecoverFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 521
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$6;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$300(Linfo/flowersoft/theotown/stages/LoadCityStage;)Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    move-result-object v1

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;->recoverFile(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 522
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$6;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$600(Linfo/flowersoft/theotown/stages/LoadCityStage;)Linfo/flowersoft/theotown/city/LoadCityGuard;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$6;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$000(Linfo/flowersoft/theotown/stages/LoadCityStage;)Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$6;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$500(Linfo/flowersoft/theotown/stages/LoadCityStage;)Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/LoadCityGuard;->loadCityProtected(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V

    :cond_3f
    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadCityStage.CityListItem (info.flowersoft.theotown.stages.LoadCityStage$CityListItem)
.class public Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;
.super Linfo/flowersoft/theotown/ui/listitem/SmoothHeightListItem;
.source "LoadCityStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/LoadCityStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CityListItem"
.end annotation


# instance fields
.field public final city:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public final cursor:Linfo/flowersoft/theotown/util/Cursor;

.field public final minimap:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

.field public scenarioAuthor:Ljava/lang/String;

.field public scenarioTitle:Ljava/lang/String;

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/LoadCityStage;Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 343
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    .line 344
    invoke-virtual {p3}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/ui/listitem/SmoothHeightListItem;-><init>(Ljava/lang/String;)V

    .line 338
    new-instance v0, Linfo/flowersoft/theotown/util/Cursor;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/Cursor;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->cursor:Linfo/flowersoft/theotown/util/Cursor;

    .line 345
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->minimap:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    .line 346
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->city:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 348
    invoke-virtual {p3}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object p2

    .line 349
    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->isScenario()Z

    move-result p3

    if-eqz p3, :cond_82

    .line 350
    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getScenarioId()Ljava/lang/String;

    move-result-object p3

    const-class v0, Linfo/flowersoft/theotown/draft/ScenarioDraft;

    invoke-static {p3, v0}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p3

    check-cast p3, Linfo/flowersoft/theotown/draft/ScenarioDraft;

    if-eqz p3, :cond_46

    .line 353
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0, p3}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->scenarioTitle:Ljava/lang/String;

    .line 355
    iget-object p2, p3, Linfo/flowersoft/theotown/draft/Draft;->author:Ljava/lang/String;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->scenarioAuthor:Ljava/lang/String;

    goto :goto_52

    .line 357
    :cond_46
    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getScenarioTitle()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->scenarioTitle:Ljava/lang/String;

    .line 358
    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getScenarioAuthor()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->scenarioAuthor:Ljava/lang/String;

    .line 362
    :goto_52
    iget-object p2, p1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p3, 0x7d3

    .line 363
    invoke-interface {p2, p3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->scenarioTitle:Ljava/lang/String;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    .line 362
    invoke-static {p2, p3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->scenarioTitle:Ljava/lang/String;

    .line 366
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->scenarioAuthor:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_82

    .line 367
    iget-object p1, p1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p2, 0x174

    .line 368
    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->scenarioAuthor:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 367
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->scenarioAuthor:Ljava/lang/String;

    :cond_82
    return-void
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;)Linfo/flowersoft/theotown/cityloader/CityKeeper;
    .registers 1

    .line 333
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->city:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    return-object p0
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object/from16 v2, p7

    .line 376
    invoke-virtual/range {p0 .. p7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 378
    iget-object v3, v2, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 379
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->city:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v13

    move/from16 v4, p5

    int-to-float v14, v4

    int-to-float v15, v1

    .line 383
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->cursor:Linfo/flowersoft/theotown/util/Cursor;

    add-int/lit8 v5, p3, 0x2

    int-to-float v5, v5

    add-int/lit8 v6, p4, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/util/Cursor;->resetTo(FF)V

    .line 385
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->minimap:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->isFinished()Z

    move-result v4

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v4, :cond_b0

    .line 386
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->minimap:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->finishedSince()I

    move-result v4

    add-int/lit8 v16, v1, -0xc

    .line 390
    sget-object v7, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    int-to-float v4, v4

    const/high16 v7, 0x43480000    # 200.0f

    div-float/2addr v4, v7

    .line 391
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 402
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->minimap:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;->getImage()Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v17

    .line 406
    iget-object v4, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    add-int/lit8 v4, p3, 0x1

    .line 408
    div-int/lit8 v7, v1, 0x2

    add-int v7, p4, v7

    add-int/lit8 v1, v1, -0xb

    move-object v12, v3

    .line 410
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v3

    move v8, v4

    int-to-float v4, v8

    int-to-float v7, v7

    add-int v9, v8, v1

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    int-to-float v11, v1

    mul-float/2addr v11, v10

    move v10, v5

    move v5, v7

    add-float v7, v5, v11

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v8

    int-to-float v8, v1

    sub-float v11, v5, v11

    move v1, v6

    move v6, v9

    move v9, v5

    move/from16 v18, v10

    move v10, v6

    invoke-virtual/range {v3 .. v12}, Linfo/flowersoft/theotown/drawing/Drawing;->drawQuad(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move-object v3, v12

    .line 417
    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    mul-int/lit8 v10, v16, 0x2

    int-to-float v7, v10

    .line 423
    invoke-virtual/range {v17 .. v17}, Lio/blueflower/stapel2d/drawing/Image;->getHeight()F

    move-result v4

    mul-float/2addr v4, v7

    invoke-virtual/range {v17 .. v17}, Lio/blueflower/stapel2d/drawing/Image;->getWidth()F

    move-result v6

    div-float v8, v4, v6

    const/4 v9, 0x0

    move v6, v5

    move-object/from16 v4, v17

    move/from16 v5, v18

    .line 420
    invoke-virtual/range {v3 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    const/16 v4, 0xff

    .line 426
    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    add-int/lit8 v4, v10, 0x6

    int-to-float v4, v4

    sub-float/2addr v14, v4

    .line 428
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->cursor:Linfo/flowersoft/theotown/util/Cursor;

    add-int/lit8 v10, v10, 0x4

    int-to-float v5, v10

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/util/Cursor;->moveX(F)V

    .line 429
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->cursor:Linfo/flowersoft/theotown/util/Cursor;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/Cursor;->resetTo()V

    goto :goto_b1

    :cond_b0
    move v1, v6

    :goto_b1
    const/high16 v12, 0x40000000    # 2.0f

    sub-float/2addr v14, v12

    const/high16 v4, 0x40800000    # 4.0f

    sub-float/2addr v15, v4

    if-eqz p1, :cond_bc

    .line 435
    iget-object v4, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextSelected:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_be

    :cond_bc
    iget-object v4, v2, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    :goto_be
    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 436
    iget-object v4, v2, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v5, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    iget-object v6, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->cursor:Linfo/flowersoft/theotown/util/Cursor;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/util/Cursor;->getX()F

    move-result v6

    iget-object v7, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->cursor:Linfo/flowersoft/theotown/util/Cursor;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/util/Cursor;->getY()F

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    if-eqz p1, :cond_d9

    .line 437
    iget-object v4, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextSelected:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_db

    :cond_d9
    iget-object v4, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    :goto_db
    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 438
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->cursor:Linfo/flowersoft/theotown/util/Cursor;

    iget-object v5, v2, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v6, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v5

    add-float/2addr v5, v1

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/util/Cursor;->moveX(F)V

    .line 440
    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->isScenario()Z

    move-result v1

    if-eqz v1, :cond_11a

    if-eqz p1, :cond_f7

    .line 441
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->ORANGE:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_f9

    :cond_f7
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->DARK_ORANGE:Lio/blueflower/stapel2d/drawing/Color;

    :goto_f9
    invoke-virtual {v3, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 442
    iget-object v4, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->scenarioTitle:Ljava/lang/String;

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->cursor:Linfo/flowersoft/theotown/util/Cursor;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/Cursor;->getX()F

    move-result v6

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->cursor:Linfo/flowersoft/theotown/util/Cursor;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/Cursor;->getY()F

    move-result v7

    iget-object v1, v2, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    .line 443
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v9

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 442
    invoke-virtual/range {v3 .. v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    goto :goto_149

    .line 444
    :cond_11a
    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getAuthor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_149

    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_149

    .line 445
    iget-object v4, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getAuthor()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->cursor:Linfo/flowersoft/theotown/util/Cursor;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/Cursor;->getX()F

    move-result v6

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->cursor:Linfo/flowersoft/theotown/util/Cursor;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/Cursor;->getY()F

    move-result v7

    iget-object v1, v2, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    .line 446
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v9

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 445
    invoke-virtual/range {v3 .. v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    :cond_149
    :goto_149
    if-eqz p1, :cond_14e

    .line 449
    iget-object v1, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextSelected:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_150

    :cond_14e
    iget-object v1, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    :goto_150
    invoke-virtual {v3, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 451
    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v1

    if-eqz v1, :cond_17f

    .line 452
    new-instance v1, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v4, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    iget-object v4, v4, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object v4

    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v1

    .line 453
    iget-object v4, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->cursor:Linfo/flowersoft/theotown/util/Cursor;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/Cursor;->getX()F

    move-result v5

    iget-object v6, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->cursor:Linfo/flowersoft/theotown/util/Cursor;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/util/Cursor;->getY()F

    move-result v6

    invoke-virtual {v3, v4, v1, v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 456
    :cond_17f
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->cursor:Linfo/flowersoft/theotown/util/Cursor;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/Cursor;->resetX()V

    .line 457
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->cursor:Linfo/flowersoft/theotown/util/Cursor;

    iget-object v4, v2, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v4

    add-float/2addr v4, v12

    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/Cursor;->moveY(F)V

    .line 459
    iget-object v1, v2, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v1

    add-float/2addr v1, v12

    sub-float v9, v15, v1

    .line 461
    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getWidth()I

    move-result v1

    .line 462
    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getHeight()I

    move-result v4

    .line 464
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    iget-object v6, v6, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v7, 0xd8a

    invoke-interface {v6, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    iget-object v7, v7, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-static {v1, v4}, Linfo/flowersoft/theotown/city/MapSize;->fromSize(II)Linfo/flowersoft/theotown/city/MapSize;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/MapSize;->getLocalizationId()I

    move-result v1

    invoke-interface {v7, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getHabitants()I

    move-result v4

    const-string v5, ", "

    if-ltz v4, :cond_203

    .line 466
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v7, 0xa0e

    invoke-interface {v1, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getHabitants()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v1, v7}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    :cond_203
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x49e

    invoke-interface {v1, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v5

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/GameMode;->getLocalizationId()I

    move-result v5

    invoke-interface {v1, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->isUber()Z

    move-result v4

    if-eqz v4, :cond_257

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x4c3

    invoke-interface {v1, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 470
    :cond_257
    iget-object v4, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->cursor:Linfo/flowersoft/theotown/util/Cursor;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/Cursor;->getX()F

    move-result v5

    iget-object v7, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->cursor:Linfo/flowersoft/theotown/util/Cursor;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/util/Cursor;->getY()F

    move-result v7

    invoke-virtual {v3, v4, v1, v5, v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 472
    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->debugMode:Z

    if-eqz v1, :cond_2f5

    .line 473
    iget-object v4, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->city:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    .line 474
    invoke-virtual {v5}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    iget-object v5, v5, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getSize()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Linfo/flowersoft/theotown/util/Localizer;->localizeFileSize(Lio/blueflower/stapel2d/gamestack/Translator;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->cursor:Linfo/flowersoft/theotown/util/Cursor;

    .line 475
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/Cursor;->getX()F

    move-result v6

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->cursor:Linfo/flowersoft/theotown/util/Cursor;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/Cursor;->getY()F

    move-result v7

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    move v8, v14

    .line 473
    invoke-virtual/range {v3 .. v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 477
    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getVersion()I

    move-result v1

    sget v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    if-ge v1, v4, :cond_2bb

    if-eqz p1, :cond_2b6

    .line 478
    iget-object v1, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextSelected:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_2b8

    :cond_2b6
    iget-object v1, v2, Lio/blueflower/stapel2d/gui/Skin;->cTextOrange:Lio/blueflower/stapel2d/drawing/Color;

    :goto_2b8
    invoke-virtual {v3, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 481
    :cond_2bb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Linfo/flowersoft/theotown/util/VersionFormatter;->INSTANCE:Linfo/flowersoft/theotown/util/VersionFormatter;

    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/util/VersionFormatter;->format(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v4, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->cursor:Linfo/flowersoft/theotown/util/Cursor;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/Cursor;->getX()F

    move-result v4

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->cursor:Linfo/flowersoft/theotown/util/Cursor;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/Cursor;->getY()F

    move-result v5

    const/high16 v6, 0x41400000    # 12.0f

    sub-float/2addr v5, v6

    move v6, v8

    const/high16 v8, 0x3f800000    # 1.0f

    move v7, v9

    const/4 v9, 0x0

    move-object/from16 v19, v3

    move-object v3, v1

    move-object/from16 v1, v19

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move-object v3, v1

    .line 485
    :cond_2f5
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getTargetHeight(Z)I
    .registers 3

    .line 490
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->minimap:Linfo/flowersoft/theotown/cityfile/MapPreviewRenderer;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_9

    const/16 p1, 0x40

    goto :goto_b

    :cond_9
    const/16 p1, 0x2a

    :goto_b
    add-int/lit8 p1, p1, 0xc

    return p1

    :cond_e
    const/16 p1, 0x32

    return p1
.end method

.method public onClick(II)V
    .registers 4

    .line 495
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$400(Linfo/flowersoft/theotown/stages/LoadCityStage;)Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;

    move-result-object p1

    if-ne p1, p0, :cond_19

    .line 496
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$600(Linfo/flowersoft/theotown/stages/LoadCityStage;)Linfo/flowersoft/theotown/city/LoadCityGuard;

    move-result-object p1

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->city:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$500(Linfo/flowersoft/theotown/stages/LoadCityStage;)Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Linfo/flowersoft/theotown/city/LoadCityGuard;->loadCityProtected(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/city/LoadCityGuard$Handler;)V

    .line 498
    :cond_19
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;->this$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {p1, p0}, Linfo/flowersoft/theotown/stages/LoadCityStage;->access$402(Linfo/flowersoft/theotown/stages/LoadCityStage;Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;)Linfo/flowersoft/theotown/stages/LoadCityStage$CityListItem;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadCityStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadCityStage;->$r8$lambda$Qerpl1n_Ug0SkqxfIh0UOqfTEGw(Linfo/flowersoft/theotown/stages/LoadCityStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadCityStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadCityStage;->$r8$lambda$d426ho-fDG7WUNzockqOucEFfNc(Linfo/flowersoft/theotown/stages/LoadCityStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadCityStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadCityStage;->$r8$lambda$yoCdceE3YXF2Z2BV4ucep8alNGQ(Linfo/flowersoft/theotown/stages/LoadCityStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadCityStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadCityStage;->$r8$lambda$FcIDfOfOZ80mZBnnKetznLjleV8(Linfo/flowersoft/theotown/stages/LoadCityStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda4 (info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadCityStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadCityStage;->$r8$lambda$xrav3JfLmGWpqkMnj2o_zlBd7KM(Linfo/flowersoft/theotown/stages/LoadCityStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda5 (info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadCityStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadCityStage;->$r8$lambda$YyxHGWaCKPCBcq3yX1EVAPDwgq4(Linfo/flowersoft/theotown/stages/LoadCityStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda6 (info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 2

    .line 0
    invoke-static {p1}, Linfo/flowersoft/theotown/stages/LoadCityStage;->$r8$lambda$IhQKCR6PqJ1PytEva48UYu5iwrI(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda7 (info.flowersoft.theotown.stages.LoadCityStage$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/LoadCityStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/LoadCityStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/LoadCityStage$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/stages/LoadCityStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/LoadCityStage;->$r8$lambda$Fjxxe4p7BWQCqDHua0nsaYLN-B4(Linfo/flowersoft/theotown/stages/LoadCityStage;)V

    return-void
.end method
