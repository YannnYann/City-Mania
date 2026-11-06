###### Class info.flowersoft.theotown.ui.RegionCityPanel (info.flowersoft.theotown.ui.RegionCityPanel)
.class public Linfo/flowersoft/theotown/ui/RegionCityPanel;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "RegionCityPanel.java"


# instance fields
.field public builtMap:Linfo/flowersoft/theotown/region/RegionMap;

.field public builtWaiting:Z

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

.field public final gui:Lio/blueflower/stapel2d/gui/Master;

.field public mapX:I

.field public mapY:I

.field public final noUnlockNeeded:Z

.field public final region:Linfo/flowersoft/theotown/region/Region;

.field public final regionStage:Linfo/flowersoft/theotown/stages/RegionStage;

.field public final translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public static synthetic $r8$lambda$Mi8Leu9NJlw_fQzh9sjFvED5d14(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/region/RegionMap;Ljava/lang/Runnable;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
    .registers 6

    .line 755
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->regionStage:Linfo/flowersoft/theotown/stages/RegionStage;

    .line 755
    new-instance v1, Linfo/flowersoft/theotown/ui/RegionCityPanel$23;

    invoke-direct {v1, p0, p3, p2}, Linfo/flowersoft/theotown/ui/RegionCityPanel$23;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;Ljava/lang/Runnable;)V

    new-instance p2, Linfo/flowersoft/theotown/ui/RegionCityPanel$24;

    invoke-direct {p2, p0, p3}, Linfo/flowersoft/theotown/ui/RegionCityPanel$24;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V

    invoke-virtual {v0, p1, v1, p2}, Linfo/flowersoft/theotown/stages/RegionStage;->acquireMap(Linfo/flowersoft/theotown/region/RegionMap;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nD-5ijiIbmKFLuDtTMiBlrMP0dw(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 4

    .line 585
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    .line 585
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object p0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-static {v0, v1, p0, p1}, Linfo/flowersoft/theotown/online/DownloadUtil;->downloadCity(Lio/blueflower/stapel2d/gamestack/GameStack;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/region/Region;Linfo/flowersoft/theotown/region/RegionMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tsa4EPzwZ00TMyHJ7wKnRN_bTQs(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)Ljava/lang/String;
    .registers 3

    .line 279
    invoke-virtual {p0}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->timeUntilUnlockInMS()I

    move-result p0

    if-gez p0, :cond_7

    const/4 p0, 0x0

    :cond_7
    int-to-long v0, p0

    .line 282
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/RegionStage;Linfo/flowersoft/theotown/region/Region;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;Z)V
    .registers 13

    const/16 v3, 0x8c

    const/16 v4, 0x28

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v5, p3

    .line 75
    invoke-direct/range {v0 .. v5}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 p3, 0x2

    .line 65
    invoke-virtual {p0, p3}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    .line 76
    iput-object p1, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->regionStage:Linfo/flowersoft/theotown/stages/RegionStage;

    .line 77
    iput-object p2, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->region:Linfo/flowersoft/theotown/region/Region;

    .line 78
    iput-object p4, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 79
    invoke-virtual {p4}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p1

    iput-object p1, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 80
    iput-object p5, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    .line 81
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p1

    check-cast p1, Lio/blueflower/stapel2d/gui/Master;

    iput-object p1, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 82
    iput-boolean p6, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->noUnlockNeeded:Z

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Linfo/flowersoft/theotown/cityloader/LightCityInfo;)V
    .registers 5

    .line 48
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->showOnlineMenu(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Linfo/flowersoft/theotown/cityloader/LightCityInfo;)V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;
    .registers 1

    .line 48
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-object p0
.end method

.method public static synthetic access$1000(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 3

    .line 48
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->showCityTransferOwnershipDialog(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    return-void
.end method

.method public static synthetic access$1100(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 3

    .line 48
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->showRemoveOwnerDialog(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    return-void
.end method

.method public static synthetic access$1200(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/region/Region;
    .registers 1

    .line 48
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->region:Linfo/flowersoft/theotown/region/Region;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/GameStack;
    .registers 1

    .line 48
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/ui/RegionCityPanel;Ljava/lang/Runnable;)V
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->showResetCityDialog(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/stages/RegionStage;
    .registers 1

    .line 48
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->regionStage:Linfo/flowersoft/theotown/stages/RegionStage;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gui/Master;
    .registers 1

    .line 48
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->gui:Lio/blueflower/stapel2d/gui/Master;

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Z
    .registers 1

    .line 48
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->isLoggedIn()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->acquireMap(Linfo/flowersoft/theotown/region/RegionMap;)V

    return-void
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/ui/RegionCityPanel;)V
    .registers 1

    .line 48
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->showAcquireCityAccountNeededDialog()V

    return-void
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Translator;
    .registers 1

    .line 48
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    return-object p0
.end method

.method private rebuild()V
    .registers 25

    move-object/from16 v1, p0

    .line 86
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->removeAllChildren()V

    const/16 v0, 0x8c

    const/16 v8, 0x3c

    .line 87
    invoke-virtual {v1, v0, v8}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    .line 89
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getSelectedMap()Linfo/flowersoft/theotown/region/RegionMap;

    move-result-object v9

    .line 90
    invoke-virtual {v9}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v10

    .line 91
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v0

    .line 92
    invoke-virtual {v9}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getCityInformation(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    move-result-object v11

    .line 93
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getMapDirectory()Linfo/flowersoft/theotown/cityfile/MapDirectory;

    move-result-object v12

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    .line 99
    new-instance v0, Lio/blueflower/stapel2d/gui/ElementLine;

    .line 100
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    const/16 v16, 0x1e

    add-int/lit8 v4, v3, -0x1e

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    const/16 v6, 0x1e

    const/4 v1, 0x0

    move-object v3, v2

    const/4 v2, 0x1

    move-object v7, v3

    const/4 v3, 0x0

    const/16 v17, 0x0

    move-object v14, v7

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    if-eqz v11, :cond_b5

    .line 102
    invoke-virtual {v12}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_b5

    move-object v1, v12

    move-object v12, v10

    move-object v10, v9

    .line 103
    move-object v9, v1

    check-cast v9, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    move-object v2, v0

    .line 105
    new-instance v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$1;

    move-object v3, v2

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_MENU:I

    const/16 v7, 0x1e

    move v4, v8

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    move-object v5, v3

    const-string v3, ""

    move v6, v4

    const/4 v4, 0x0

    move-object/from16 v18, v5

    const/4 v5, 0x0

    move/from16 v19, v6

    const/4 v6, 0x0

    const/16 v20, 0x1

    move/from16 v15, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v12}, Linfo/flowersoft/theotown/ui/RegionCityPanel$1;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Linfo/flowersoft/theotown/cityloader/LightCityInfo;)V

    move-object/from16 v23, v10

    move-object v10, v9

    move-object/from16 v9, v23

    .line 113
    new-instance v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$2;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_NOTIFICATION:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v3

    invoke-virtual {v10, v3}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getCityComments(Linfo/flowersoft/theotown/cityloader/CityKeeper;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    move-object v1, v11

    move-object v11, v9

    const/4 v9, 0x0

    move-object v13, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v11}, Linfo/flowersoft/theotown/ui/RegionCityPanel$2;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;ZLinfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;)V

    move-object v9, v11

    goto :goto_c0

    :cond_b5
    const/16 v20, 0x1

    move-object/from16 v1, p0

    move-object/from16 v19, v0

    move v15, v8

    move-object v13, v11

    move-object/from16 v18, v12

    move-object v12, v10

    .line 123
    :goto_c0
    invoke-virtual/range {v18 .. v18}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isOnline()Z

    move-result v0

    if-nez v0, :cond_e6

    if-eqz v12, :cond_e6

    .line 124
    invoke-virtual {v12}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getLastModified()J

    move-result-wide v2

    const-wide v4, 0x15ceabfa686L

    cmp-long v0, v2, v4

    if-nez v0, :cond_e6

    if-eqz v13, :cond_e6

    .line 125
    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isAcquired()Z

    move-result v0

    if-eqz v0, :cond_e6

    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_e6

    move/from16 v21, v20

    goto :goto_e8

    :cond_e6
    move/from16 v21, v17

    :goto_e8
    const/16 v11, 0x42

    const/16 v10, 0xa

    const/16 v22, 0x0

    if-eqz v13, :cond_39d

    .line 127
    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_fa

    iget-boolean v0, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->noUnlockNeeded:Z

    if-eqz v0, :cond_39d

    .line 128
    :cond_fa
    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isCreated()Z

    move-result v0

    if-nez v0, :cond_18e

    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isCanBeAcquired()Z

    move-result v0

    if-nez v0, :cond_10e

    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isAcquired()Z

    move-result v0

    if-nez v0, :cond_10e

    goto/16 :goto_18e

    .line 226
    :cond_10e
    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isAcquired()Z

    move-result v0

    if-eqz v0, :cond_13d

    .line 227
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x543

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    new-instance v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$7;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_CITY:I

    iget-object v3, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x101

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x1e

    .line 229
    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/RegionCityPanel$7;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/region/RegionMap;)V

    .line 236
    invoke-virtual {v0, v11}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    goto/16 :goto_4b2

    .line 237
    :cond_13d
    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isCanBeAcquired()Z

    move-result v0

    if-eqz v0, :cond_4b2

    .line 238
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->regionStage:Linfo/flowersoft/theotown/stages/RegionStage;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->getRemainingRegionUnlockTime()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v2, v4

    const-wide/16 v4, 0x0

    if-nez v0, :cond_155

    move-wide v2, v4

    :cond_155
    cmp-long v0, v2, v4

    if-lez v0, :cond_165

    .line 241
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x5e5

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_170

    .line 243
    :cond_165
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x2f5

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :goto_170
    new-instance v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$8;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUS:I

    iget-object v3, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x53f

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x1e

    .line 246
    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/RegionCityPanel$8;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/region/RegionMap;)V

    .line 274
    invoke-virtual {v0, v11}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    goto/16 :goto_4b2

    .line 129
    :cond_18e
    :goto_18e
    new-instance v15, Lio/blueflower/stapel2d/util/StaticGetter;

    invoke-virtual {v12}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    .line 131
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->debugMode:Z

    if-eqz v0, :cond_1cc

    .line 132
    const-string v0, "("

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual/range {v18 .. v18}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_1c9

    move-object/from16 v0, v18

    check-cast v0, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getCityId(Linfo/flowersoft/theotown/cityloader/CityKeeper;)I

    move-result v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    :cond_1c9
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    :cond_1cc
    invoke-virtual/range {v18 .. v18}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_1ec

    .line 137
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x97

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->getAuthor()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    :cond_1ec
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xa0e

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getHabitants()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x49e

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    .line 142
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-virtual {v12}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/GameMode;->getLocalizationId()I

    move-result v2

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {v12}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->isUber()Z

    move-result v2

    if-eqz v2, :cond_24c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x4c3

    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_24c
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_27b

    .line 149
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x52e

    .line 150
    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-virtual {v12}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object v2

    iget-wide v2, v2, Linfo/flowersoft/theotown/city/CityInfo;->playtimeSeconds:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 150
    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    :cond_27b
    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_2d9

    .line 158
    invoke-virtual {v12}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getLastModified()J

    move-result-wide v2

    const-wide v4, 0x164850d808dL

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2b5

    .line 159
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v2

    invoke-virtual {v12}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getLastModified()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 160
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xd2

    .line 161
    invoke-interface {v0, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v2, v3}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 161
    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    :cond_2b5
    invoke-virtual/range {v18 .. v18}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_2d9

    .line 167
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x304

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->getDownloads()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    :cond_2d9
    invoke-virtual {v9}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v0

    move-object/from16 v2, v18

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->canReset(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Z

    move-result v0

    if-eqz v0, :cond_330

    instance-of v0, v2, Linfo/flowersoft/theotown/cityfile/LocalMapDirectory;

    if-eqz v0, :cond_330

    .line 173
    new-instance v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$3;

    move-object/from16 v18, v2

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRASH:I

    const/16 v7, 0x1e

    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    move-object/from16 v10, v18

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/RegionCityPanel$3;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/region/RegionMap;)V

    move-object/from16 v22, v0

    if-nez v21, :cond_32c

    .line 181
    sget-object v0, Linfo/flowersoft/theotown/ui/RestoreCityDialog;->INSTANCE:Linfo/flowersoft/theotown/ui/RestoreCityDialog;

    .line 182
    invoke-virtual {v9}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v1

    .line 181
    invoke-virtual {v0, v10, v1}, Linfo/flowersoft/theotown/ui/RestoreCityDialog;->supportsRestore(Linfo/flowersoft/theotown/cityfile/MapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)Z

    move-result v0

    if-eqz v0, :cond_32c

    .line 183
    new-instance v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$4;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_MEDIC:I

    const/16 v7, 0x1e

    .line 186
    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    move-object v1, v10

    move-object v10, v9

    move-object v9, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/ui/RegionCityPanel$4;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/cityfile/MapDirectory;Linfo/flowersoft/theotown/region/RegionMap;)V

    move-object v1, v9

    move-object/from16 v18, v10

    goto :goto_333

    :cond_32c
    move-object/from16 v18, v9

    move-object v1, v10

    goto :goto_333

    :cond_330
    move-object v1, v2

    move-object/from16 v18, v9

    .line 199
    :goto_333
    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_393

    .line 200
    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_366

    .line 201
    invoke-virtual {v12}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getFilteredUsedPlugins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_360

    .line 203
    new-instance v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$5;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUGIN:I

    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v9, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    move-object/from16 v1, p0

    move-object v10, v12

    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/ui/RegionCityPanel$5;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;ZLinfo/flowersoft/theotown/cityloader/LightCityInfo;)V

    goto :goto_362

    :cond_360
    move-object/from16 v1, p0

    .line 212
    :goto_362
    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isAcquired()Z

    goto :goto_368

    :cond_366
    move-object/from16 v1, p0

    .line 217
    :goto_368
    new-instance v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$6;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAY:I

    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isAcquired()Z

    move-result v3

    if-eqz v3, :cond_37b

    iget-object v3, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xa13

    :goto_376
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_380

    :cond_37b
    iget-object v3, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xa59

    goto :goto_376

    :goto_380
    const/16 v7, 0x1e

    .line 218
    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    move-object/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/RegionCityPanel$6;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/region/RegionMap;)V

    .line 224
    invoke-virtual {v0, v11}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    goto :goto_397

    :cond_393
    move-object/from16 v1, p0

    move-object/from16 v9, v18

    :goto_397
    move-object/from16 v0, v22

    move-object/from16 v22, v15

    goto/16 :goto_4b4

    .line 277
    :cond_39d
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0, v9}, Linfo/flowersoft/theotown/region/Region;->isWaitingToUnlock(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v0

    if-eqz v0, :cond_3d7

    .line 278
    new-instance v10, Linfo/flowersoft/theotown/ui/RegionCityPanel$$ExternalSyntheticLambda0;

    invoke-direct {v10, v13}, Linfo/flowersoft/theotown/ui/RegionCityPanel$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)V

    .line 284
    new-instance v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$9;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAYFAST:I

    iget-object v3, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xc1b

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x1e

    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/RegionCityPanel$9;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/region/RegionMap;)V

    .line 301
    invoke-virtual {v0, v11}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 302
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x49d

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v22

    move-object/from16 v22, v10

    goto/16 :goto_4b4

    .line 303
    :cond_3d7
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0, v9}, Linfo/flowersoft/theotown/region/Region;->isUnlockable(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v0

    if-eqz v0, :cond_4b2

    .line 304
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->regionInhabitantsNeededToUnlock()I

    move-result v0

    .line 305
    iget-object v2, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/Region;->getUnlockedOrWaitingMaps()I

    move-result v2

    .line 306
    iget-object v3, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/region/Region;->getUnlockedMaps()I

    move-result v3

    int-to-long v4, v0

    .line 308
    iget-object v6, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/region/Region;->getInhabitants()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_404

    sub-int v4, v2, v3

    iget-object v5, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->regionStage:Linfo/flowersoft/theotown/stages/RegionStage;

    iget v5, v5, Linfo/flowersoft/theotown/stages/RegionStage;->MAX_CONCURRENT_WAITING:I

    if-lt v4, v5, :cond_406

    :cond_404
    if-nez v2, :cond_409

    :cond_406
    move/from16 v12, v20

    goto :goto_40b

    :cond_409
    move/from16 v12, v17

    :goto_40b
    if-eqz v12, :cond_42a

    .line 313
    new-instance v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$10;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_UNLOCK:I

    iget-object v3, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x6c0

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x1e

    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/RegionCityPanel$10;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/region/RegionMap;)V

    .line 320
    invoke-virtual {v0, v11}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    goto :goto_494

    :cond_42a
    sub-int/2addr v2, v3

    .line 322
    iget-object v3, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->regionStage:Linfo/flowersoft/theotown/stages/RegionStage;

    iget v3, v3, Linfo/flowersoft/theotown/stages/RegionStage;->MAX_CONCURRENT_WAITING:I

    if-lt v2, v3, :cond_44d

    .line 323
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x9a6

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->regionStage:Linfo/flowersoft/theotown/stages/RegionStage;

    iget v2, v2, Linfo/flowersoft/theotown/stages/RegionStage;->MAX_CONCURRENT_WAITING:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_464

    .line 325
    :cond_44d
    iget-object v2, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xfe

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :goto_464
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v0, :cond_46f

    .line 329
    sget v0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->FLAG_REGION_COIN:I

    invoke-static {v15, v0}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->combinePriceAndFlags(II)J

    move-result-wide v2

    goto :goto_471

    :cond_46f
    const-wide/16 v2, 0x3c

    .line 333
    :goto_471
    new-instance v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$11;

    move-object/from16 v18, v9

    move-wide v9, v2

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_UNLOCK:I

    iget-object v3, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xd2e

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x1e

    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    move v15, v11

    move-object/from16 v11, v18

    invoke-direct/range {v0 .. v11}, Linfo/flowersoft/theotown/ui/RegionCityPanel$11;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;JLinfo/flowersoft/theotown/region/RegionMap;)V

    move-object v9, v11

    .line 351
    invoke-virtual {v0, v15}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 354
    :goto_494
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-eqz v0, :cond_4b0

    if-nez v12, :cond_4b0

    .line 355
    new-instance v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$12;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_WIZARD:I

    const/16 v7, 0x1e

    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/ui/RegionCityPanel$12;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    goto :goto_4b2

    :cond_4b0
    move-object/from16 v1, p0

    :cond_4b2
    :goto_4b2
    move-object/from16 v0, v22

    :goto_4b4
    if-eqz v21, :cond_4d4

    .line 369
    new-instance v2, Lio/blueflower/stapel2d/util/StaticGetter;

    iget-object v3, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x303

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_4d1

    .line 371
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v4

    invoke-virtual {v4, v0}, Lio/blueflower/stapel2d/gui/Gadget;->removeChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    :cond_4d1
    move-object v8, v2

    move-object v14, v3

    goto :goto_4d6

    :cond_4d4
    move-object/from16 v8, v22

    .line 377
    :goto_4d6
    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v0

    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/gui/ElementLine;->getSecondPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v3

    const/4 v4, 0x3

    new-array v5, v4, [Lio/blueflower/stapel2d/gui/Gadget;

    aput-object v0, v5, v17

    aput-object v2, v5, v20

    const/4 v0, 0x2

    aput-object v3, v5, v0

    move/from16 v0, v17

    move v2, v0

    :goto_4ef
    if-ge v0, v4, :cond_50c

    aget-object v3, v5, v0

    move/from16 v6, v17

    .line 378
    :goto_4f5
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v7

    if-ge v6, v7, :cond_509

    .line 379
    invoke-virtual {v3, v6}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v7

    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_4f5

    :cond_509
    add-int/lit8 v0, v0, 0x1

    goto :goto_4ef

    :cond_50c
    add-int/lit8 v2, v2, -0x1

    .line 383
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingRight()I

    move-result v3

    add-int/2addr v0, v3

    add-int/2addr v2, v0

    .line 384
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    if-le v2, v0, :cond_52b

    .line 385
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    .line 386
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    move-object/from16 v10, v19

    invoke-virtual {v10, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    goto :goto_55e

    :cond_52b
    move-object/from16 v10, v19

    .line 387
    invoke-virtual {v10}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v0

    if-nez v0, :cond_55e

    .line 388
    invoke-virtual {v10}, Lio/blueflower/stapel2d/gui/ElementLine;->getSecondPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v0

    if-nez v0, :cond_55e

    .line 389
    invoke-virtual {v10}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v0

    move/from16 v2, v20

    if-ne v0, v2, :cond_55e

    .line 391
    invoke-virtual {v10}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v0

    move/from16 v2, v17

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    :cond_55e
    :goto_55e
    if-eqz v8, :cond_585

    .line 397
    new-instance v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$13;

    invoke-interface {v8}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/ui/RegionCityPanel$13;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Getter;)V

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    .line 404
    invoke-virtual {v0, v2, v3}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 405
    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v2, 0xc

    move v3, v2

    goto :goto_586

    :cond_585
    const/4 v3, 0x0

    .line 409
    :goto_586
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5a6

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v20, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_5a8

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_5a8

    :cond_5a6
    const/16 v20, 0x1

    .line 410
    :cond_5a8
    :goto_5a8
    new-instance v0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 411
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v10}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v6

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v6

    invoke-virtual {v10}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v7

    invoke-virtual {v7}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v7

    add-int/2addr v6, v7

    if-nez v6, :cond_5cc

    const/16 v16, 0x0

    :cond_5cc
    sub-int v5, v5, v16

    move-object v1, v2

    const/4 v2, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v1, v6

    const/4 v2, 0x0

    .line 412
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setShowBorder(Z)V

    .line 413
    iget-object v3, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 414
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->getTextFrame()Lio/blueflower/stapel2d/gui/TextFrame;

    move-result-object v3

    iget-object v4, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, v4, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 416
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->getTextHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v4

    if-eq v3, v4, :cond_61b

    .line 417
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->getTextHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 418
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    .line 419
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    .line 420
    invoke-virtual {v10}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {v10, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setY(I)V

    .line 423
    :cond_61b
    iput-object v9, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->builtMap:Linfo/flowersoft/theotown/region/RegionMap;

    if-eqz v13, :cond_628

    .line 424
    invoke-virtual {v13}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isWaitingToUnlock()Z

    move-result v0

    if-eqz v0, :cond_628

    move/from16 v14, v20

    goto :goto_629

    :cond_628
    move v14, v2

    :goto_629
    iput-boolean v14, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->builtWaiting:Z

    .line 426
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->onUpdate()V

    return-void
.end method


# virtual methods
.method public final acquireMap(Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 742
    new-instance v2, Linfo/flowersoft/theotown/ui/RegionCityPanel$22;

    invoke-direct {v2, v0}, Linfo/flowersoft/theotown/ui/RegionCityPanel$22;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;)V

    .line 750
    sget-boolean v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    const/4 v4, 0x1

    const/16 v5, 0x21c

    const/16 v6, 0x8d

    if-eqz v3, :cond_48

    .line 751
    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/RegionMap;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0xf

    .line 752
    new-instance v7, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUS:I

    iget-object v9, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 753
    invoke-interface {v9, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v9

    iget-object v6, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 754
    invoke-interface {v6, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->gui:Lio/blueflower/stapel2d/gui/Master;

    sget v5, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->FLAG_REGION_COIN:I

    .line 755
    invoke-static {v3, v5}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->combinePriceAndFlags(II)J

    move-result-wide v12

    new-instance v14, Linfo/flowersoft/theotown/ui/RegionCityPanel$$ExternalSyntheticLambda1;

    invoke-direct {v14, v0, v1, v2}, Linfo/flowersoft/theotown/ui/RegionCityPanel$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/region/RegionMap;Ljava/lang/Runnable;)V

    iget-object v15, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    iget-object v1, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v17, "acquire map"

    move-object/from16 v16, v1

    invoke-direct/range {v7 .. v19}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLinfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 766
    invoke-virtual {v7, v4}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void

    .line 768
    :cond_48
    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/RegionMap;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0xf

    .line 769
    new-instance v7, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUS:I

    iget-object v9, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 770
    invoke-interface {v9, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v9

    iget-object v6, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 771
    invoke-interface {v6, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->gui:Lio/blueflower/stapel2d/gui/Master;

    int-to-long v12, v3

    new-instance v14, Linfo/flowersoft/theotown/ui/RegionCityPanel$25;

    invoke-direct {v14, v0, v1, v2}, Linfo/flowersoft/theotown/ui/RegionCityPanel$25;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/region/RegionMap;Ljava/lang/Runnable;)V

    iget-object v15, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->gameStack:Lio/blueflower/stapel2d/gamestack/GameStack;

    iget-object v1, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v17, "acquire map"

    move-object/from16 v16, v1

    invoke-direct/range {v7 .. v19}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLinfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 788
    invoke-virtual {v7, v4}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public draw(II)V
    .registers 11

    .line 672
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v7, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 673
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v0, p2

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->mapX:I

    int-to-float v4, v0

    iget v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->mapY:I

    add-int/lit8 v0, v0, -0x8

    int-to-float v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    const/16 v0, 0xff

    .line 676
    invoke-virtual {v7, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    add-int/lit8 v2, p1, -0x8

    add-int/lit8 v3, p2, -0x8

    .line 677
    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int/lit8 v4, v1, 0x10

    iget v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    add-int/lit8 v5, v1, 0x10

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v6, v1, Lio/blueflower/stapel2d/gui/Skin;->npRectShadow:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(IIIII)V

    .line 678
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v7, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v3, 0xf0

    .line 679
    invoke-virtual {v7, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 680
    iget-object v3, v1, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v3, v3, Lio/blueflower/stapel2d/gui/Skin;->npPanel:I

    invoke-virtual {p0, p1, p2, v3}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 682
    invoke-virtual {v7, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 683
    invoke-virtual {v7, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 690
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public final isLoggedIn()Z
    .registers 2

    .line 667
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isForumConnected()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .registers 3

    .line 722
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getSelectedMap()Linfo/flowersoft/theotown/region/RegionMap;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 723
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->regionStage:Linfo/flowersoft/theotown/stages/RegionStage;

    .line 724
    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/RegionStage;->waitingToLoadSelectedCity()Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->region:Linfo/flowersoft/theotown/region/Region;

    .line 725
    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/Region;->isBoardCreated()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->region:Linfo/flowersoft/theotown/region/Region;

    .line 726
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/region/Region;->isLocked(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/region/Region;->isUnlockable(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/region/Region;->isWaitingToUnlock(Linfo/flowersoft/theotown/region/RegionMap;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_30
    const/4 v0, 0x1

    return v0

    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdate()V
    .registers 8

    .line 695
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 697
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/Region;->getSelectedMap()Linfo/flowersoft/theotown/region/RegionMap;

    move-result-object v0

    .line 698
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/Region;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v1

    .line 699
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->region:Linfo/flowersoft/theotown/region/Region;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/Region;->getIso()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v2

    .line 701
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 702
    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/RegionMap;->getX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/RegionMap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 703
    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/RegionMap;->getY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/RegionMap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    .line 704
    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(FF)F

    move-result v5

    iget-object v6, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Master;->getVirtualWidthRatio()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->mapX:I

    .line 705
    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(FF)F

    move-result v2

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->master:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Master;->getVirtualHeightRatio()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->mapY:I

    .line 707
    iget v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->mapX:I

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->mapY:I

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1e

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 708
    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 707
    invoke-virtual {p0, v2, v3}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->setPosition(II)V

    .line 710
    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getCityInformation(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    move-result-object v1

    .line 712
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->builtMap:Linfo/flowersoft/theotown/region/RegionMap;

    if-ne v0, v2, :cond_88

    if-eqz v1, :cond_87

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isWaitingToUnlock()Z

    move-result v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->builtWaiting:Z

    if-eq v0, v1, :cond_87

    goto :goto_88

    :cond_87
    return-void

    .line 713
    :cond_88
    :goto_88
    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->rebuild()V

    return-void

    .line 716
    :cond_8c
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    neg-int v0, v0

    add-int/lit16 v0, v0, -0x3e8

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->setPosition(II)V

    return-void
.end method

.method public setPosition(II)V
    .registers 6

    .line 731
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 732
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 733
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 736
    :cond_31
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    return-void
.end method

.method public final showAcquireCityAccountNeededDialog()V
    .registers 6

    .line 793
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ACCOUNT:I

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xd59

    .line 795
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xee

    .line 796
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 798
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x5c5

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 799
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x98f

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/ui/RegionCityPanel$26;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/ui/RegionCityPanel$26;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    const/4 v2, 0x1

    .line 804
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 805
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final showCityTransferOwnershipDialog(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 6

    .line 430
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getCityOwnerId(Linfo/flowersoft/theotown/cityloader/CityKeeper;)I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 433
    :cond_7
    new-instance v1, Linfo/flowersoft/theotown/ui/SelectUserDialog;

    new-instance v2, Linfo/flowersoft/theotown/ui/RegionCityPanel$14;

    invoke-direct {v2, p0, p2, p1, v0}, Linfo/flowersoft/theotown/ui/RegionCityPanel$14;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;I)V

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v1, v2, v0, p1, p2}, Linfo/flowersoft/theotown/ui/SelectUserDialog;-><init>(Linfo/flowersoft/theotown/ui/SelectUserDialog$UserReceiver;ILio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V

    const/4 p1, 0x1

    .line 474
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final showOnlineMenu(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Linfo/flowersoft/theotown/cityloader/LightCityInfo;)V
    .registers 14

    .line 479
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getAdmin()I

    move-result v1

    if-eqz v1, :cond_18

    move v1, v3

    goto :goto_19

    :cond_18
    move v1, v2

    .line 481
    :goto_19
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {p2}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v4

    invoke-virtual {p1, v4}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getCityOwnerId(Linfo/flowersoft/theotown/cityloader/CityKeeper;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_32

    move v4, v3

    goto :goto_33

    :cond_32
    move v4, v2

    .line 482
    :goto_33
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getOwnerId()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-nez v0, :cond_47

    move v2, v3

    .line 483
    :cond_47
    new-instance v0, Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/ui/PopupBuilder;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    if-eqz v1, :cond_6c

    .line 486
    invoke-virtual {p2}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v3

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->isCityProtected(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 487
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_UNLOCK:I

    goto :goto_5d

    :cond_5b
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCKED:I

    :goto_5d
    if-eqz v3, :cond_62

    .line 488
    const-string v6, "Remove protection"

    goto :goto_64

    :cond_62
    const-string v6, "Protect this city"

    :goto_64
    new-instance v7, Linfo/flowersoft/theotown/ui/RegionCityPanel$15;

    invoke-direct {v7, p0, p1, p2, v3}, Linfo/flowersoft/theotown/ui/RegionCityPanel$15;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;Z)V

    .line 487
    invoke-virtual {v0, v5, v6, v7}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    :cond_6c
    if-eqz v1, :cond_87

    .line 507
    invoke-virtual {p2}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v3

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getCityReports(Linfo/flowersoft/theotown/cityloader/CityKeeper;)I

    move-result v3

    if-lez v3, :cond_87

    .line 508
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    new-instance v5, Linfo/flowersoft/theotown/ui/RegionCityPanel$16;

    invoke-direct {v5, p0, p1, p2}, Linfo/flowersoft/theotown/ui/RegionCityPanel$16;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;)V

    const-string v6, "Clear reports"

    invoke-virtual {v0, v3, v6, v5}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 525
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addSeparator()Linfo/flowersoft/theotown/ui/PopupBuilder;

    :cond_87
    if-nez v4, :cond_9b

    .line 529
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_REPORT:I

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x137

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Linfo/flowersoft/theotown/ui/RegionCityPanel$17;

    invoke-direct {v6, p0, p4, p1, p2}, Linfo/flowersoft/theotown/ui/RegionCityPanel$17;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/cityloader/LightCityInfo;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;)V

    invoke-virtual {v0, v3, v5, v6}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 553
    :cond_9b
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addSeparator()Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 555
    invoke-virtual {p3}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isCreated()Z

    move-result p4

    if-eqz p4, :cond_ce

    if-nez v1, :cond_aa

    if-nez v4, :cond_aa

    if-eqz v2, :cond_ce

    .line 556
    :cond_aa
    sget p4, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xa6

    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Linfo/flowersoft/theotown/ui/RegionCityPanel$18;

    invoke-direct {v5, p0, p1, p2, v4}, Linfo/flowersoft/theotown/ui/RegionCityPanel$18;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;Z)V

    invoke-virtual {v0, p4, v3, v5}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 584
    sget p4, Linfo/flowersoft/theotown/resources/Resources;->ICON_DOWNLOAD:I

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x3ed

    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Linfo/flowersoft/theotown/ui/RegionCityPanel$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, p2}, Linfo/flowersoft/theotown/ui/RegionCityPanel$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/region/RegionMap;)V

    invoke-virtual {v0, p4, v3, v5}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 593
    :cond_ce
    invoke-virtual {p3}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isCanBeAcquired()Z

    move-result p4

    if-nez p4, :cond_ea

    if-nez v1, :cond_d8

    if-eqz v4, :cond_ea

    .line 594
    :cond_d8
    sget p4, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEXT:I

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x2e3

    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Linfo/flowersoft/theotown/ui/RegionCityPanel$19;

    invoke-direct {v5, p0, p1, p2}, Linfo/flowersoft/theotown/ui/RegionCityPanel$19;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;)V

    invoke-virtual {v0, p4, v3, v5}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 602
    :cond_ea
    invoke-virtual {p3}, Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;->isCanBeAcquired()Z

    move-result p3

    if-nez p3, :cond_108

    if-nez v1, :cond_f6

    if-nez v2, :cond_f6

    if-eqz v4, :cond_108

    .line 603
    :cond_f6
    sget p3, Linfo/flowersoft/theotown/resources/Resources;->ICON_ACCOUNT:I

    iget-object p4, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x893

    invoke-interface {p4, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p4

    new-instance v1, Linfo/flowersoft/theotown/ui/RegionCityPanel$20;

    invoke-direct {v1, p0, p1, p2}, Linfo/flowersoft/theotown/ui/RegionCityPanel$20;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;)V

    invoke-virtual {v0, p3, p4, v1}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 610
    :cond_108
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->build()Lio/blueflower/stapel2d/gui/Panel;

    return-void
.end method

.method public final showRemoveOwnerDialog(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 8

    .line 614
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getCityOwnerId(Linfo/flowersoft/theotown/cityloader/CityKeeper;)I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 617
    :cond_7
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->regionStage:Linfo/flowersoft/theotown/stages/RegionStage;

    new-instance v2, Linfo/flowersoft/theotown/ui/RegionCityPanel$21;

    invoke-direct {v2, p0, p1, p2}, Linfo/flowersoft/theotown/ui/RegionCityPanel$21;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    int-to-long p1, v0

    .line 648
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v3

    cmp-long p1, p1, v3

    if-eqz p1, :cond_21

    const/4 p1, 0x1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    .line 617
    :goto_22
    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->enterReasonDialog(Lio/blueflower/stapel2d/util/Setter;Z)V

    return-void
.end method

.method public final showResetCityDialog(Ljava/lang/Runnable;)V
    .registers 7

    .line 652
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_LAWYER:I

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xa6

    .line 653
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xd34

    .line 654
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 656
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x5c5

    .line 657
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 656
    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    const/4 v2, 0x1

    .line 657
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 658
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x6a7

    .line 659
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 658
    invoke-virtual {v0, v1, v3, v4, p1}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 662
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 663
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass1 (info.flowersoft.theotown.ui.RegionCityPanel$1)
.class public Linfo/flowersoft/theotown/ui/RegionCityPanel$1;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "RegionCityPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->rebuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

.field public final synthetic val$meta:Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

.field public final synthetic val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Linfo/flowersoft/theotown/cityloader/LightCityInfo;)V
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

    .line 105
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$1;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$1;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput-object p10, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$1;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    iput-object p11, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$1;->val$meta:Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    iput-object p12, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$1;->val$info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 6

    .line 108
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 109
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$1;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$1;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$1;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$1;->val$meta:Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$1;->val$info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-static {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$000(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Linfo/flowersoft/theotown/cityloader/LightCityInfo;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass10 (info.flowersoft.theotown.ui.RegionCityPanel$10)
.class public Linfo/flowersoft/theotown/ui/RegionCityPanel$10;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "RegionCityPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->rebuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 10
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
            null
        }
    .end annotation

    .line 313
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$10;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$10;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 316
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 317
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$10;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$400(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$10;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->unlockMap(Linfo/flowersoft/theotown/region/RegionMap;)V

    .line 318
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$10;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    const/4 v1, 0x0

    iput-object v1, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->builtMap:Linfo/flowersoft/theotown/region/RegionMap;

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass11 (info.flowersoft.theotown.ui.RegionCityPanel$11)
.class public Linfo/flowersoft/theotown/ui/RegionCityPanel$11;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "RegionCityPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->rebuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

.field public final synthetic val$unlockImPrice:J


# direct methods
.method public static synthetic $r8$lambda$R3YRRQpXKN5pWnmgnqfdZ-MMSjM(Linfo/flowersoft/theotown/ui/RegionCityPanel$11;Linfo/flowersoft/theotown/region/RegionMap;)Ljava/lang/Boolean;
    .registers 3

    .line 343
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$11;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 343
    invoke-static {v0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$400(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->fastForwardMapUnlock(Linfo/flowersoft/theotown/region/RegionMap;)V

    .line 344
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$11;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    const/4 p1, 0x1

    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->builtWaiting:Z

    .line 345
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic $r8$lambda$nbgsJUFpGw8xAs-eTAHZbWTBE8A(Linfo/flowersoft/theotown/ui/RegionCityPanel$11;Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 2

    .line 346
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$11;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 346
    invoke-static {p0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$400(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object p0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;JLinfo/flowersoft/theotown/region/RegionMap;)V
    .registers 12
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
            null
        }
    .end annotation

    .line 333
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$11;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-wide p9, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$11;->val$unlockImPrice:J

    iput-object p11, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$11;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 14

    .line 336
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 338
    new-instance v0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_UNLOCK:I

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$11;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 339
    invoke-static {v2}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$900(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    const/16 v3, 0x359

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$11;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 340
    invoke-static {v3}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$900(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v3

    const/16 v4, 0x986

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$11;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 341
    invoke-static {v4}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$500(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v4

    iget-wide v5, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$11;->val$unlockImPrice:J

    iget-object v7, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$11;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    move-object v8, v7

    new-instance v7, Linfo/flowersoft/theotown/ui/RegionCityPanel$11$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v8}, Linfo/flowersoft/theotown/ui/RegionCityPanel$11$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$11;Linfo/flowersoft/theotown/region/RegionMap;)V

    new-instance v8, Linfo/flowersoft/theotown/ui/RegionCityPanel$11$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0}, Linfo/flowersoft/theotown/ui/RegionCityPanel$11$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$11;)V

    iget-object v9, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$11;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 346
    invoke-static {v9}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$100(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v9

    const-string v11, "Region_Unlock_Immediately"

    const/4 v12, 0x0

    const-string v10, "unlock city immediately"

    invoke-direct/range {v0 .. v12}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    .line 349
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel$11$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.RegionCityPanel$11$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/RegionCityPanel$11$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel$11;

.field public final synthetic f$1:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$11;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$11$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel$11;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$11$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/region/RegionMap;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$11$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel$11;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$11$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/RegionCityPanel$11;->$r8$lambda$R3YRRQpXKN5pWnmgnqfdZ-MMSjM(Linfo/flowersoft/theotown/ui/RegionCityPanel$11;Linfo/flowersoft/theotown/region/RegionMap;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel$11$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.RegionCityPanel$11$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/RegionCityPanel$11$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel$11;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$11;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$11$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel$11;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$11$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel$11;

    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/ui/RegionCityPanel$11;->$r8$lambda$nbgsJUFpGw8xAs-eTAHZbWTBE8A(Linfo/flowersoft/theotown/ui/RegionCityPanel$11;Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass12 (info.flowersoft.theotown.ui.RegionCityPanel$12)
.class public Linfo/flowersoft/theotown/ui/RegionCityPanel$12;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "RegionCityPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->rebuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 355
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$12;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 358
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 359
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$12;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$400(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$12;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iget-object v1, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel;->builtMap:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->unlockMapImmediately(Linfo/flowersoft/theotown/region/RegionMap;)V

    .line 360
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$12;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    const/4 v1, 0x0

    iput-object v1, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel;->builtMap:Linfo/flowersoft/theotown/region/RegionMap;

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass13 (info.flowersoft.theotown.ui.RegionCityPanel$13)
.class public Linfo/flowersoft/theotown/ui/RegionCityPanel$13;
.super Lio/blueflower/stapel2d/gui/Label;
.source "RegionCityPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->rebuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$title0:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/util/Getter;)V
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

    .line 397
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$13;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p8, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$13;->val$title0:Lio/blueflower/stapel2d/util/Getter;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 2

    .line 400
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onUpdate()V

    .line 401
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$13;->val$title0:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass14 (info.flowersoft.theotown.ui.RegionCityPanel$14)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$14;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/SelectUserDialog$UserReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->showCityTransferOwnershipDialog(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$keeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public final synthetic val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic val$ownerId:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 433
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14;->val$keeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput p4, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14;->val$ownerId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canceled()V
    .registers 1

    .line 0
    return-void
.end method

.method public select(Linfo/flowersoft/theotown/ui/SelectUserDialog$User;)V
    .registers 8

    .line 436
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$400(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$14;Linfo/flowersoft/theotown/ui/SelectUserDialog$User;)V

    iget p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14;->val$ownerId:I

    int-to-long v2, p1

    .line 467
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    .line 436
    :goto_21
    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->enterReasonDialog(Lio/blueflower/stapel2d/util/Setter;Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass14.AnonymousClass1 (info.flowersoft.theotown.ui.RegionCityPanel$14$1)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel$14;->select(Linfo/flowersoft/theotown/ui/SelectUserDialog$User;)V
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
.field public final synthetic this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$14;

.field public final synthetic val$user:Linfo/flowersoft/theotown/ui/SelectUserDialog$User;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$14;Linfo/flowersoft/theotown/ui/SelectUserDialog$User;)V
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

    .line 436
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$14;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;->val$user:Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 436
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .registers 8

    .line 439
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEXT:I

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$14;

    iget-object v2, v2, Linfo/flowersoft/theotown/ui/RegionCityPanel$14;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 440
    invoke-static {v2}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$900(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    const/16 v3, 0x2e3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$14;

    iget-object v3, v3, Linfo/flowersoft/theotown/ui/RegionCityPanel$14;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 441
    invoke-static {v3}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$900(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v3

    const/16 v4, 0x457

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$14;

    iget-object v4, v4, Linfo/flowersoft/theotown/ui/RegionCityPanel$14;->val$keeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;->val$user:Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    iget-object v5, v5, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->name:Ljava/lang/String;

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$14;

    iget-object v4, v4, Linfo/flowersoft/theotown/ui/RegionCityPanel$14;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 442
    invoke-static {v4}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$500(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 443
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$14;

    iget-object v2, v2, Linfo/flowersoft/theotown/ui/RegionCityPanel$14;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 444
    invoke-static {v2}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$900(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    const/16 v3, 0x5c5

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 443
    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    const/4 v2, 0x1

    .line 444
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 445
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEXT:I

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$14;

    iget-object v3, v3, Linfo/flowersoft/theotown/ui/RegionCityPanel$14;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 446
    invoke-static {v3}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$900(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v3

    const/16 v4, 0x273

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1$1;

    invoke-direct {v4, p0, p1}, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1$1;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 445
    invoke-virtual {v0, v1, v3, p1, v4}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 465
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass14.AnonymousClass1.RunnableC10911 (info.flowersoft.theotown.ui.RegionCityPanel$14$1$1)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1$1;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;->set(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;

.field public final synthetic val$reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;Ljava/lang/String;)V
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

    .line 447
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1$1;->this$2:Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1$1;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 450
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1$1;->this$2:Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;

    iget-object v1, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$14;

    iget-object v2, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel$14;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v1, v1, Linfo/flowersoft/theotown/ui/RegionCityPanel$14;->val$keeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;->val$user:Linfo/flowersoft/theotown/ui/SelectUserDialog$User;

    iget-wide v3, v0, Linfo/flowersoft/theotown/ui/SelectUserDialog$User;->id:J

    long-to-int v0, v3

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1$1;->val$reason:Ljava/lang/String;

    new-instance v4, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1$1$1;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1$1$1;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1$1;)V

    invoke-virtual {v2, v1, v0, v3, v4}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->transferCityOwnership(Linfo/flowersoft/theotown/cityloader/CityKeeper;ILjava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass14.AnonymousClass1.RunnableC10911.C10921 (info.flowersoft.theotown.ui.RegionCityPanel$14$1$1$1)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1$1$1;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$3:Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1$1;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1$1;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1$1$1;->this$3:Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 6

    .line 459
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "status"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hint"

    invoke-virtual {p1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 453
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1$1$1;->this$3:Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1$1;->this$2:Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$14;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14;->val$keeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    const-string v2, "transfer city"

    invoke-interface {p1, v1, v2, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1$1$1;->this$3:Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1$1;

    iget-object p1, p1, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1$1;->this$2:Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;

    iget-object p1, p1, Linfo/flowersoft/theotown/ui/RegionCityPanel$14$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$14;

    iget-object p1, p1, Linfo/flowersoft/theotown/ui/RegionCityPanel$14;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {p1}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$400(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/RegionStage;->addReloadTask()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass15 (info.flowersoft.theotown.ui.RegionCityPanel$15)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$15;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->showOnlineMenu(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Linfo/flowersoft/theotown/cityloader/LightCityInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$isProtected:Z

.field public final synthetic val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 489
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$15;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$15;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$15;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    iput-boolean p4, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$15;->val$isProtected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 492
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$15;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$15;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v1

    iget-boolean v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$15;->val$isProtected:Z

    xor-int/lit8 v2, v2, 0x1

    new-instance v3, Linfo/flowersoft/theotown/ui/RegionCityPanel$15$1;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/ui/RegionCityPanel$15$1;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$15;)V

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->setCityProtection(Linfo/flowersoft/theotown/cityloader/CityKeeper;ZLinfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass15.AnonymousClass1 (info.flowersoft.theotown.ui.RegionCityPanel$15$1)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$15$1;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$15;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$15;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 492
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$15$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 500
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    const-string v1, "hint"

    const-string v2, "Error"

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 495
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$15$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$15;

    iget-object p1, p1, Linfo/flowersoft/theotown/ui/RegionCityPanel$15;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {p1}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$400(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/RegionStage;->addReloadTask()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass16 (info.flowersoft.theotown.ui.RegionCityPanel$16)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$16;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->showOnlineMenu(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Linfo/flowersoft/theotown/cityloader/LightCityInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 508
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$16;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$16;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$16;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 511
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$16;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$16;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/ui/RegionCityPanel$16$1;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/ui/RegionCityPanel$16$1;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$16;)V

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->clearReports(Linfo/flowersoft/theotown/cityloader/CityKeeper;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass16.AnonymousClass1 (info.flowersoft.theotown.ui.RegionCityPanel$16$1)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$16$1;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$16;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$16;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 511
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$16$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 520
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    const-string v1, "hint"

    const-string v2, "Error"

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 514
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    const-string v0, "Success"

    invoke-interface {p1, v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    .line 515
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$16$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$16;

    iget-object p1, p1, Linfo/flowersoft/theotown/ui/RegionCityPanel$16;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {p1}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$400(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/RegionStage;->addReloadTask()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass17 (info.flowersoft.theotown.ui.RegionCityPanel$17)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$17;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->showOnlineMenu(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Linfo/flowersoft/theotown/cityloader/LightCityInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

.field public final synthetic val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/cityloader/LightCityInfo;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 529
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$17;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$17;->val$info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$17;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput-object p4, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$17;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 532
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$17;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$100(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$17;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v1}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$500(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$17;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v2}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$900(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    const/16 v3, 0x4a9

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$17;->val$info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/ui/RegionCityPanel$17$1;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/ui/RegionCityPanel$17$1;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$17;)V

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/ReportDialog;->show(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/String;Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;)Linfo/flowersoft/theotown/ui/Dialog;

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass17.AnonymousClass1 (info.flowersoft.theotown.ui.RegionCityPanel$17$1)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$17$1;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$17;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$17;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$17$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 535
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$17$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$17;

    iget-object v1, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$17;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$17;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v0

    new-instance v2, Linfo/flowersoft/theotown/ui/RegionCityPanel$17$1$1;

    invoke-direct {v2, p0, p2, p3}, Linfo/flowersoft/theotown/ui/RegionCityPanel$17$1$1;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$17$1;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {v1, v0, p1, v2}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->reportCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass17.AnonymousClass1.C10931 (info.flowersoft.theotown.ui.RegionCityPanel$17$1$1)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$17$1$1;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel$17$1;->report(Ljava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Linfo/flowersoft/theotown/ui/RegionCityPanel$17$1;

.field public final synthetic val$onError:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic val$onSuccess:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$17$1;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 535
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$17$1$1;->this$2:Linfo/flowersoft/theotown/ui/RegionCityPanel$17$1;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$17$1$1;->val$onSuccess:Ljava/lang/Runnable;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$17$1$1;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4

    .line 544
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$17$1$1;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    const-string v1, "hint"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 538
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$17$1$1;->this$2:Linfo/flowersoft/theotown/ui/RegionCityPanel$17$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$17$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$17;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$17;->val$info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    const-string v2, "report city"

    invoke-interface {p1, v1, v2, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$17$1$1;->val$onSuccess:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass18 (info.flowersoft.theotown.ui.RegionCityPanel$18)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$18;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->showOnlineMenu(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Linfo/flowersoft/theotown/cityloader/LightCityInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$isOwner:Z

.field public final synthetic val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 556
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$18;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$18;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$18;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    iput-boolean p4, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$18;->val$isOwner:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 559
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$18;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$400(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$18;)V

    iget-boolean v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$18;->val$isOwner:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/stages/RegionStage;->enterReasonDialog(Lio/blueflower/stapel2d/util/Setter;Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass18.AnonymousClass1 (info.flowersoft.theotown.ui.RegionCityPanel$18$1)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel$18;->run()V
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
.field public final synthetic this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$18;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$18;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 559
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 559
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .registers 4

    .line 562
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$18;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$18;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    new-instance v1, Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1$1;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1$1;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1;Ljava/lang/String;)V

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$300(Linfo/flowersoft/theotown/ui/RegionCityPanel;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass18.AnonymousClass1.RunnableC10941 (info.flowersoft.theotown.ui.RegionCityPanel$18$1$1)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1$1;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1;->set(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1;

.field public final synthetic val$reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1;Ljava/lang/String;)V
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

    .line 562
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1$1;->this$2:Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1$1;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 565
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1$1;->this$2:Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$18;

    iget-object v1, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$18;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$18;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1$1;->val$reason:Ljava/lang/String;

    new-instance v3, Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1$1$1;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1$1$1;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1$1;)V

    invoke-virtual {v1, v0, v2, v3}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->resetCity(Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass18.AnonymousClass1.RunnableC10941.C10951 (info.flowersoft.theotown.ui.RegionCityPanel$18$1$1$1)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1$1$1;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$3:Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1$1;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 565
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1$1$1;->this$3:Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 6

    .line 574
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "status"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hint"

    invoke-virtual {p1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 568
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1$1$1;->this$3:Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1$1;->this$2:Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$18;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$18;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    const-string v2, "reset city"

    invoke-interface {p1, v1, v2, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1$1$1;->this$3:Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1$1;

    iget-object p1, p1, Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1$1;->this$2:Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1;

    iget-object p1, p1, Linfo/flowersoft/theotown/ui/RegionCityPanel$18$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$18;

    iget-object p1, p1, Linfo/flowersoft/theotown/ui/RegionCityPanel$18;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {p1}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$400(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/RegionStage;->addReloadTask()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass19 (info.flowersoft.theotown.ui.RegionCityPanel$19)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$19;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->showOnlineMenu(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Linfo/flowersoft/theotown/cityloader/LightCityInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 594
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$19;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$19;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$19;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 597
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$19;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$19;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$19;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v2

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$1000(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass2 (info.flowersoft.theotown.ui.RegionCityPanel$2)
.class public Linfo/flowersoft/theotown/ui/RegionCityPanel$2;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "RegionCityPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->rebuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;ZLinfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 12
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
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 113
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$2;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p10, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$2;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput-object p11, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$2;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Z)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 6

    .line 116
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 117
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$2;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$200(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/stages/CityCommentStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$2;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v2}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$100(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$2;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$2;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Linfo/flowersoft/theotown/stages/CityCommentStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass20 (info.flowersoft.theotown.ui.RegionCityPanel$20)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$20;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->showOnlineMenu(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;Linfo/flowersoft/theotown/cityloader/LightCityInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

.field public final synthetic val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 603
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$20;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$20;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$20;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 606
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$20;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$20;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$20;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v2

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$1100(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass21 (info.flowersoft.theotown.ui.RegionCityPanel$21)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$21;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->showRemoveOwnerDialog(Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$keeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public final synthetic val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 617
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$21;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$21;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$21;->val$keeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 617
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/RegionCityPanel$21;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .registers 8

    .line 620
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_LAWYER:I

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$21;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 621
    invoke-static {v2}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$900(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    const/16 v3, 0x893

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$21;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 622
    invoke-static {v3}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$900(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v3

    const/16 v4, 0x2b9

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$21;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$21;->val$keeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->getCityAuthor(Linfo/flowersoft/theotown/cityloader/CityKeeper;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$21;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 623
    invoke-static {v4}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$500(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 624
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$21;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 625
    invoke-static {v2}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$900(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    const/16 v3, 0x5c5

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 624
    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    const/4 v2, 0x1

    .line 625
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 626
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ACCOUNT:I

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$21;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 627
    invoke-static {v3}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$900(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v3

    const/16 v4, 0x9a0

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/ui/RegionCityPanel$21$1;

    invoke-direct {v4, p0, p1}, Linfo/flowersoft/theotown/ui/RegionCityPanel$21$1;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$21;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 626
    invoke-virtual {v0, v1, v3, p1, v4}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 646
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass21.AnonymousClass1 (info.flowersoft.theotown.ui.RegionCityPanel$21$1)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$21$1;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel$21;->set(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$21;

.field public final synthetic val$reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$21;Ljava/lang/String;)V
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

    .line 628
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$21$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$21;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$21$1;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 631
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$21$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$21;

    iget-object v1, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$21;->val$omd:Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$21;->val$keeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$21$1;->val$reason:Ljava/lang/String;

    new-instance v3, Linfo/flowersoft/theotown/ui/RegionCityPanel$21$1$1;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/ui/RegionCityPanel$21$1$1;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$21$1;)V

    invoke-virtual {v1, v0, v2, v3}, Linfo/flowersoft/theotown/cityfile/OnlineMapDirectory;->removeOwner(Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass21.AnonymousClass1.C10961 (info.flowersoft.theotown.ui.RegionCityPanel$21$1$1)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$21$1$1;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel$21$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Linfo/flowersoft/theotown/ui/RegionCityPanel$21$1;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$21$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 631
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$21$1$1;->this$2:Linfo/flowersoft/theotown/ui/RegionCityPanel$21$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 6

    .line 640
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "status"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hint"

    invoke-virtual {p1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 634
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$21$1$1;->this$2:Linfo/flowersoft/theotown/ui/RegionCityPanel$21$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$21$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$21;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$21;->val$keeper:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    const-string v2, "remove city owner"

    invoke-interface {p1, v1, v2, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$21$1$1;->this$2:Linfo/flowersoft/theotown/ui/RegionCityPanel$21$1;

    iget-object p1, p1, Linfo/flowersoft/theotown/ui/RegionCityPanel$21$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$21;

    iget-object p1, p1, Linfo/flowersoft/theotown/ui/RegionCityPanel$21;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {p1}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$400(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/RegionStage;->addReloadTask()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass22 (info.flowersoft.theotown.ui.RegionCityPanel$22)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$22;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->acquireMap(Linfo/flowersoft/theotown/region/RegionMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 742
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$22;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 745
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$22;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v1}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$1200(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/region/Region;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/region/Region;->getRegionInformation()Linfo/flowersoft/theotown/cityfile/RegionInformation;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityfile/RegionInformation;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "online"

    const-string v3, "acquire plot"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string v1, "online_city_acquire"

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass23 (info.flowersoft.theotown.ui.RegionCityPanel$23)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$23;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->acquireMap(Linfo/flowersoft/theotown/region/RegionMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$reporter:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;

.field public final synthetic val$success:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 755
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$23;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$23;->val$reporter:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$23;->val$success:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 758
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$23;->val$reporter:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;->report(Z)V

    .line 759
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$23;->val$success:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass24 (info.flowersoft.theotown.ui.RegionCityPanel$24)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$24;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->acquireMap(Linfo/flowersoft/theotown/region/RegionMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$reporter:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
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

    .line 761
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$24;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$24;->val$reporter:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 764
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$24;->val$reporter:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;->report(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass25 (info.flowersoft.theotown.ui.RegionCityPanel$25)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$25;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->acquireMap(Linfo/flowersoft/theotown/region/RegionMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$map:Linfo/flowersoft/theotown/region/RegionMap;

.field public final synthetic val$success:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/region/RegionMap;Ljava/lang/Runnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 772
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$25;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$25;->val$map:Linfo/flowersoft/theotown/region/RegionMap;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$25;->val$success:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
    .registers 6

    .line 775
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$25;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$400(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$25;->val$map:Linfo/flowersoft/theotown/region/RegionMap;

    new-instance v2, Linfo/flowersoft/theotown/ui/RegionCityPanel$25$1;

    invoke-direct {v2, p0, p1}, Linfo/flowersoft/theotown/ui/RegionCityPanel$25$1;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$25;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V

    new-instance v3, Linfo/flowersoft/theotown/ui/RegionCityPanel$25$2;

    invoke-direct {v3, p0, p1}, Linfo/flowersoft/theotown/ui/RegionCityPanel$25$2;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$25;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/stages/RegionStage;->acquireMap(Linfo/flowersoft/theotown/region/RegionMap;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass25.AnonymousClass1 (info.flowersoft.theotown.ui.RegionCityPanel$25$1)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$25$1;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel$25;->handle(Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$25;

.field public final synthetic val$reporter:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$25;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
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

    .line 775
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$25$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$25;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$25$1;->val$reporter:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 778
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$25$1;->val$reporter:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;->report(Z)V

    .line 779
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$25$1;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$25;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/RegionCityPanel$25;->val$success:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass25.AnonymousClass2 (info.flowersoft.theotown.ui.RegionCityPanel$25$2)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$25$2;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel$25;->handle(Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$25;

.field public final synthetic val$reporter:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$25;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
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

    .line 781
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$25$2;->this$1:Linfo/flowersoft/theotown/ui/RegionCityPanel$25;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$25$2;->val$reporter:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 784
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$25$2;->val$reporter:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;->report(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass26 (info.flowersoft.theotown.ui.RegionCityPanel$26)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$26;
.super Ljava/lang/Object;
.source "RegionCityPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->showAcquireCityAccountNeededDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 799
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$26;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 802
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$26;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$200(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$26;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v2}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$100(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/stages/AccountStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass3 (info.flowersoft.theotown.ui.RegionCityPanel$3)
.class public Linfo/flowersoft/theotown/ui/RegionCityPanel$3;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "RegionCityPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->rebuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public static synthetic $r8$lambda$0VhW6FTYmttyLDeoIccGQHCULz0(Linfo/flowersoft/theotown/ui/RegionCityPanel$3;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 2

    .line 177
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$3;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 177
    invoke-static {p0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$400(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object p0

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->resetMap(Linfo/flowersoft/theotown/region/RegionMap;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 10
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
            null
        }
    .end annotation

    .line 173
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$3;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$3;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 4

    .line 176
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 177
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$3;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$3;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    new-instance v2, Linfo/flowersoft/theotown/ui/RegionCityPanel$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Linfo/flowersoft/theotown/ui/RegionCityPanel$3$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$3;Linfo/flowersoft/theotown/region/RegionMap;)V

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$300(Linfo/flowersoft/theotown/ui/RegionCityPanel;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel$3$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.RegionCityPanel$3$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/RegionCityPanel$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel$3;

.field public final synthetic f$1:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$3;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$3$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel$3;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$3$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/region/RegionMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$3$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel$3;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$3$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/RegionCityPanel$3;->$r8$lambda$0VhW6FTYmttyLDeoIccGQHCULz0(Linfo/flowersoft/theotown/ui/RegionCityPanel$3;Linfo/flowersoft/theotown/region/RegionMap;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass4 (info.flowersoft.theotown.ui.RegionCityPanel$4)
.class public Linfo/flowersoft/theotown/ui/RegionCityPanel$4;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "RegionCityPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->rebuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

.field public final synthetic val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public static synthetic $r8$lambda$c1mFiylotuc_tbmThBZp53UcYmo(Linfo/flowersoft/theotown/ui/RegionCityPanel$4;)V
    .registers 1

    .line 192
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$4;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 192
    invoke-static {p0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$400(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object p0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/RegionStage;->reload()V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/cityfile/MapDirectory;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 11
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
            null
        }
    .end annotation

    .line 186
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$4;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$4;->val$mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    iput-object p10, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$4;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 7

    .line 189
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 190
    sget-object v0, Linfo/flowersoft/theotown/ui/RestoreCityDialog;->INSTANCE:Linfo/flowersoft/theotown/ui/RestoreCityDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$4;->val$mapDirectory:Linfo/flowersoft/theotown/cityfile/MapDirectory;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$4;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    .line 191
    invoke-virtual {v2}, Linfo/flowersoft/theotown/region/RegionMap;->getKeeper()Linfo/flowersoft/theotown/cityloader/CityKeeper;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/ui/RegionCityPanel$4$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/ui/RegionCityPanel$4$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$4;)V

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$4;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 193
    invoke-static {v4}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$100(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$4;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v5}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$500(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v5

    .line 190
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/RestoreCityDialog;->show(Linfo/flowersoft/theotown/cityfile/MapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/Runnable;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel$4$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.RegionCityPanel$4$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/RegionCityPanel$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel$4;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$4;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$4$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel$4;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$4$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel$4;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/RegionCityPanel$4;->$r8$lambda$c1mFiylotuc_tbmThBZp53UcYmo(Linfo/flowersoft/theotown/ui/RegionCityPanel$4;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass5 (info.flowersoft.theotown.ui.RegionCityPanel$5)
.class public Linfo/flowersoft/theotown/ui/RegionCityPanel$5;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "RegionCityPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->rebuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;ZLinfo/flowersoft/theotown/cityloader/LightCityInfo;)V
    .registers 11
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
            null,
            null,
            null
        }
    .end annotation

    .line 203
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$5;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p10, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$5;->val$info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-object p1, p0

    invoke-direct/range {p1 .. p9}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Z)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 5

    .line 206
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 207
    new-instance v0, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$5;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v1}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$500(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$5;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v2}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$100(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$5;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v3}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$200(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$5;->val$info:Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    .line 208
    invoke-virtual {v1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->getFilteredUsedPlugins()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/MissingPluginsDialogBuilder;->showPluginsWindow(Ljava/util/List;Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass6 (info.flowersoft.theotown.ui.RegionCityPanel$6)
.class public Linfo/flowersoft/theotown/ui/RegionCityPanel$6;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "RegionCityPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->rebuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 10
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
            null
        }
    .end annotation

    .line 218
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$6;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$6;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 221
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 222
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$6;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$400(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$6;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->doMapAction(Linfo/flowersoft/theotown/region/RegionMap;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass7 (info.flowersoft.theotown.ui.RegionCityPanel$7)
.class public Linfo/flowersoft/theotown/ui/RegionCityPanel$7;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "RegionCityPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->rebuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 10
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
            null
        }
    .end annotation

    .line 229
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$7;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$7;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 232
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 233
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$7;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$400(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$7;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/RegionStage;->doMapAction(Linfo/flowersoft/theotown/region/RegionMap;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass8 (info.flowersoft.theotown.ui.RegionCityPanel$8)
.class Linfo/flowersoft/theotown/ui/RegionCityPanel$8;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "RegionCityPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->rebuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 10
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
            null
        }
    .end annotation

    .line 246
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$8;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$8;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 5

    .line 261
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$8;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$400(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->getRemainingRegionUnlockTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$8;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$600(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    return v0

    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 249
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/RegionCityPanel$8;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 250
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 251
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$8;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$600(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 252
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$8;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$8;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$700(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/region/RegionMap;)V

    return-void

    .line 254
    :cond_19
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$8;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$800(Linfo/flowersoft/theotown/ui/RegionCityPanel;)V

    :cond_1e
    return-void
.end method

.method public onUpdate()V
    .registers 5

    .line 266
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 267
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$8;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$400(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/RegionStage;->getRemainingRegionUnlockTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_23

    .line 268
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$8;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v2}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$600(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 269
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/IconButton;->setText(Ljava/lang/String;)V

    return-void

    .line 271
    :cond_23
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$8;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$900(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x53f

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/IconButton;->setText(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel.AnonymousClass9 (info.flowersoft.theotown.ui.RegionCityPanel$9)
.class public Linfo/flowersoft/theotown/ui/RegionCityPanel$9;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "RegionCityPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RegionCityPanel;->rebuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public static synthetic $r8$lambda$Lqxurxd2evuYan_xN6Mef9kjkUY(Linfo/flowersoft/theotown/ui/RegionCityPanel$9;Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 2

    .line 296
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$9;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 296
    invoke-static {p0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$400(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object p0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QBwzgEmvWZcUYb9xapU7cqNGtoI(Linfo/flowersoft/theotown/ui/RegionCityPanel$9;Linfo/flowersoft/theotown/region/RegionMap;)Ljava/lang/Boolean;
    .registers 2

    .line 294
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$9;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 294
    invoke-static {p0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$400(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Linfo/flowersoft/theotown/stages/RegionStage;

    move-result-object p0

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/RegionStage;->fastForwardMapUnlock(Linfo/flowersoft/theotown/region/RegionMap;)V

    .line 295
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 10
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
            null
        }
    .end annotation

    .line 284
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$9;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$9;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 14

    .line 287
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 289
    new-instance v0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAYFAST:I

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$9;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 290
    invoke-static {v2}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$900(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    const/16 v3, 0xaba

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$9;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 291
    invoke-static {v3}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$900(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v3

    const/16 v4, 0xb9f

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$9;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 292
    invoke-static {v4}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$500(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$9;->val$selectedMap:Linfo/flowersoft/theotown/region/RegionMap;

    new-instance v7, Linfo/flowersoft/theotown/ui/RegionCityPanel$9$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v5}, Linfo/flowersoft/theotown/ui/RegionCityPanel$9$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$9;Linfo/flowersoft/theotown/region/RegionMap;)V

    new-instance v8, Linfo/flowersoft/theotown/ui/RegionCityPanel$9$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0}, Linfo/flowersoft/theotown/ui/RegionCityPanel$9$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$9;)V

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$9;->this$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    .line 296
    invoke-static {v5}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->access$100(Linfo/flowersoft/theotown/ui/RegionCityPanel;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v9

    const-string v11, "Region_Unlock_Time"

    const/4 v12, 0x0

    const-wide/16 v5, 0x1e

    const-string v10, "shorten unlock city time"

    invoke-direct/range {v0 .. v12}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    .line 299
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel$9$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.RegionCityPanel$9$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/RegionCityPanel$9$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel$9;

.field public final synthetic f$1:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$9;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$9$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel$9;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$9$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/region/RegionMap;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$9$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel$9;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$9$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/RegionCityPanel$9;->$r8$lambda$QBwzgEmvWZcUYb9xapU7cqNGtoI(Linfo/flowersoft/theotown/ui/RegionCityPanel$9;Linfo/flowersoft/theotown/region/RegionMap;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel$9$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.RegionCityPanel$9$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/RegionCityPanel$9$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel$9;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel$9;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$9$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel$9;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$9$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel$9;

    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/ui/RegionCityPanel$9;->$r8$lambda$Lqxurxd2evuYan_xN6Mef9kjkUY(Linfo/flowersoft/theotown/ui/RegionCityPanel$9;Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.RegionCityPanel$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/RegionCityPanel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->$r8$lambda$tsa4EPzwZ00TMyHJ7wKnRN_bTQs(Linfo/flowersoft/theotown/cityfile/RegionInformation$CityInformation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.RegionCityPanel$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/RegionCityPanel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic f$1:Linfo/flowersoft/theotown/region/RegionMap;

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/region/RegionMap;Ljava/lang/Runnable;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/region/RegionMap;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final handle(Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
    .registers 5

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/region/RegionMap;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p1}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->$r8$lambda$Mi8Leu9NJlw_fQzh9sjFvED5d14(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/region/RegionMap;Ljava/lang/Runnable;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RegionCityPanel$$ExternalSyntheticLambda2 (info.flowersoft.theotown.ui.RegionCityPanel$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/ui/RegionCityPanel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

.field public final synthetic f$1:Linfo/flowersoft/theotown/region/RegionMap;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/region/RegionMap;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/region/RegionMap;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/ui/RegionCityPanel;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RegionCityPanel$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/region/RegionMap;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/RegionCityPanel;->$r8$lambda$nD-5ijiIbmKFLuDtTMiBlrMP0dw(Linfo/flowersoft/theotown/ui/RegionCityPanel;Linfo/flowersoft/theotown/region/RegionMap;)V

    return-void
.end method
