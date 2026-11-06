###### Class info.flowersoft.theotown.store.StoreStage (info.flowersoft.theotown.store.StoreStage)
.class public Linfo/flowersoft/theotown/store/StoreStage;
.super Linfo/flowersoft/theotown/stages/AbstractStoreStage;
.source "StoreStage.java"


# static fields
.field public static lastEnterTime:J


# instance fields
.field public final ACTIVE_FRAME:I

.field public final CHUNK_SIZE:I

.field public final DOWNLOAD_FRAME:I

.field public final INACTIVE_FRAME:I

.field public final JSON_HANDLER:Linfo/flowersoft/theotown/backend/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/backend/ResponseHandler<",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public final RESTART_FRAME:I

.field public final authorVisitor:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/store/StorePlugin;",
            ">;"
        }
    .end annotation
.end field

.field public final categoryVisitor:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/store/StoreCategory;",
            ">;"
        }
    .end annotation
.end field

.field public city:Linfo/flowersoft/theotown/city/City;

.field public final config:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public currentAuthor:Linfo/flowersoft/theotown/store/StorePlugin;

.field public currentCategory:Linfo/flowersoft/theotown/store/StoreCategory;

.field public currentCategoryId:I

.field public currentMode:Linfo/flowersoft/theotown/store/StoreMode;

.field public currentSearch:Ljava/lang/String;

.field public fetchedPluginIds:Lcom/badlogic/gdx/utils/IntSet;

.field public fetchedPlugins:Linfo/flowersoft/theotown/util/json/JSONArray;

.field public isFetching:Z

.field public lastCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/StoreCategory;",
            ">;"
        }
    .end annotation
.end field

.field public lastPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/StorePlugin;",
            ">;"
        }
    .end annotation
.end field

.field public final lsq:Linfo/flowersoft/theotown/store/LightStoreQuery;

.field public maxLoadedChunk:I

.field public missingPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field public missingPluginsHint:Ljava/lang/String;

.field public final mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

.field public final postponedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public reachedEnd:Z

.field public final remainingPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/PluginWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public requestedDownloadAll:Z

.field public final stageVisitor:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;"
        }
    .end annotation
.end field

.field public targetLoadChunk:I

.field public final updateRunner:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$-Mh46LUc_mp5CEw_3v66QQ-L5cs(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 3

    .line 92
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    .line 92
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->getShiftY()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->lastShiftY:F

    .line 93
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->setLimitYScrolling(Z)V

    .line 94
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->clear()V

    .line 95
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->fetch()V

    return-void
.end method

.method public static synthetic $r8$lambda$-iVU3EJzr3KEnesCxgItT_3Njc4(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 1

    .line 448
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 448
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->requestRestart()V

    return-void
.end method

.method public static synthetic $r8$lambda$-nSvO-WB46w0yzwhm3rl9f2r2no(Linfo/flowersoft/theotown/store/StoreStage;Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 2

    .line 89
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    .line 89
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0Uk44QM1DP7hR-2jKfp4CBHMMBU(Linfo/flowersoft/theotown/store/StoreStage;)Ljava/lang/String;
    .registers 4

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x908

    .line 217
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->countAcquiredPlugins()I

    move-result v1

    iget-object p0, p0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->countDownloadedPlugins()I

    move-result p0

    sub-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, " (%d)"

    invoke-static {v1, p0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1OpILAD6XXb1H4_wmMwHTmx1x-A(Ljava/lang/Runnable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 436
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method public static synthetic $r8$lambda$3joIu7WgIz8Nz11Rk2MhCZzzedY(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 3

    .line 447
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->city:Linfo/flowersoft/theotown/city/City;

    .line 447
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getController()Linfo/flowersoft/theotown/city/CityController;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda28;-><init>(Linfo/flowersoft/theotown/store/StoreStage;)V

    const/4 p0, 0x1

    invoke-interface {v0, p0, v1}, Linfo/flowersoft/theotown/city/CityController;->save(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7udQnh_Cey77PBGWz5wMWoOy4I4(Linfo/flowersoft/theotown/store/StoreStage;Ljava/util/List;)V
    .registers 6

    .line 537
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->remainingPlugins:Ljava/util/List;

    .line 537
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 538
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->removeAllItems()V

    if-eqz p1, :cond_26

    const/4 v0, 0x0

    .line 541
    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 542
    iget-object v1, p0, Linfo/flowersoft/theotown/store/StoreStage;->remainingPlugins:Ljava/util/List;

    new-instance v2, Linfo/flowersoft/theotown/store/LocalPluginWrapper;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    invoke-direct {v2, v0, v3}, Linfo/flowersoft/theotown/store/LocalPluginWrapper;-><init>(ILinfo/flowersoft/theotown/cityloader/LocalPluginManifest;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 546
    :cond_26
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->expandList()V

    return-void
.end method

.method public static synthetic $r8$lambda$D5ZNcdNvLCqBobhFGkRSPYTJKA4(Linfo/flowersoft/theotown/store/StoreStage;Ljava/util/List;Ljava/util/List;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 555
    iget-object v3, v0, Linfo/flowersoft/theotown/store/StoreStage;->remainingPlugins:Ljava/util/List;

    .line 555
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 556
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/ListBox;->removeAllItems()V

    .line 557
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/ListBox;->removeAllChildren()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_85

    .line 559
    iget-object v5, v0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    sget-object v6, Linfo/flowersoft/theotown/store/StoreMode;->CATEGORY:Linfo/flowersoft/theotown/store/StoreMode;

    if-ne v5, v6, :cond_85

    iget v5, v0, Linfo/flowersoft/theotown/store/StoreStage;->currentCategoryId:I

    if-nez v5, :cond_85

    .line 560
    iget-object v5, v0, Linfo/flowersoft/theotown/store/StoreStage;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v6, "hide empty categories"

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    move v6, v4

    .line 561
    :goto_2c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_85

    .line 562
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/store/StoreCategory;

    .line 563
    invoke-virtual {v7}, Linfo/flowersoft/theotown/store/StoreCategory;->getCount()I

    move-result v8

    if-gtz v8, :cond_40

    if-nez v5, :cond_82

    .line 564
    :cond_40
    new-instance v9, Linfo/flowersoft/theotown/store/CategoryEntry;

    iget-object v10, v0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    .line 566
    invoke-virtual {v7}, Linfo/flowersoft/theotown/store/StoreCategory;->getTitle()Ljava/lang/String;

    move-result-object v11

    iget-object v8, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v12, 0xc00

    .line 568
    invoke-interface {v8, v12}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    .line 569
    invoke-virtual {v7}, Linfo/flowersoft/theotown/store/StoreCategory;->getCount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    .line 568
    invoke-static {v8, v12}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 570
    invoke-virtual {v7}, Linfo/flowersoft/theotown/store/StoreCategory;->getIcon()I

    move-result v13

    sget v14, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEXT:I

    iget-object v15, v0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    new-instance v8, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda21;

    invoke-direct {v8, v0, v7}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda21;-><init>(Linfo/flowersoft/theotown/store/StoreStage;Linfo/flowersoft/theotown/store/StoreCategory;)V

    move-object/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Linfo/flowersoft/theotown/store/CategoryEntry;-><init>(Lio/blueflower/stapel2d/gui/Gadget;Ljava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/Runnable;)V

    .line 575
    new-instance v7, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;

    invoke-direct {v7, v9}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 576
    invoke-virtual {v7, v3}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->setDrawBackground(Z)V

    .line 577
    invoke-virtual {v7, v4}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->setCanBeSelected(Z)V

    .line 578
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v8, v7}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    :cond_82
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    :cond_85
    if-eqz v2, :cond_10a

    .line 583
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10a

    move v1, v4

    move v5, v1

    .line 585
    :goto_8f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_c5

    .line 586
    iget-object v6, v0, Linfo/flowersoft/theotown/store/StoreStage;->lsq:Linfo/flowersoft/theotown/store/LightStoreQuery;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/store/StorePlugin;

    iget-object v8, v0, Linfo/flowersoft/theotown/store/StoreStage;->authorVisitor:Lio/blueflower/stapel2d/util/Setter;

    invoke-virtual {v6, v1, v7, v8}, Linfo/flowersoft/theotown/store/LightStoreQuery;->wrap(ILinfo/flowersoft/theotown/store/StorePlugin;Lio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/store/StorePluginWrapper;

    move-result-object v6

    .line 587
    iget-object v7, v0, Linfo/flowersoft/theotown/store/StoreStage;->remainingPlugins:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    invoke-virtual {v6}, Linfo/flowersoft/theotown/store/StorePluginWrapper;->isActive()Z

    move-result v7

    if-eqz v7, :cond_c0

    invoke-virtual {v6}, Linfo/flowersoft/theotown/store/StorePluginWrapper;->isDownloaded()Z

    move-result v7

    if-nez v7, :cond_c2

    invoke-virtual {v6}, Linfo/flowersoft/theotown/store/StorePluginWrapper;->isDownloading()Z

    move-result v7

    if-nez v7, :cond_c2

    invoke-virtual {v6}, Linfo/flowersoft/theotown/store/StorePluginWrapper;->isAvailableInStore()Z

    move-result v6

    if-eqz v6, :cond_c2

    :cond_c0
    add-int/lit8 v5, v5, 0x1

    :cond_c2
    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    .line 591
    :cond_c5
    sget-boolean v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v1, :cond_10a

    iget-object v1, v0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    sget-object v6, Linfo/flowersoft/theotown/store/StoreMode;->MISSING:Linfo/flowersoft/theotown/store/StoreMode;

    if-ne v1, v6, :cond_10a

    if-lez v5, :cond_10a

    iget-boolean v1, v0, Linfo/flowersoft/theotown/store/StoreStage;->requestedDownloadAll:Z

    if-nez v1, :cond_10a

    .line 592
    new-instance v1, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;

    new-instance v5, Linfo/flowersoft/theotown/store/CategoryEntry;

    iget-object v6, v0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    iget-object v7, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x592

    .line 594
    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v9, 0xb4

    .line 595
    invoke-interface {v8, v9}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    sget v10, Linfo/flowersoft/theotown/resources/Resources;->ICON_DOWNLOAD:I

    iget-object v11, v0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    new-instance v12, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda22;

    invoke-direct {v12, v0, v2}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda22;-><init>(Linfo/flowersoft/theotown/store/StoreStage;Ljava/util/List;)V

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v12}, Linfo/flowersoft/theotown/store/CategoryEntry;-><init>(Lio/blueflower/stapel2d/gui/Gadget;Ljava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/Runnable;)V

    .line 611
    invoke-virtual {v5, v4}, Linfo/flowersoft/theotown/store/CategoryEntry;->setClickOnWholeThing(Z)Linfo/flowersoft/theotown/store/CategoryEntry;

    move-result-object v2

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 612
    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->setDrawBackground(Z)V

    .line 613
    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->setCanBeSelected(Z)V

    .line 614
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 618
    :cond_10a
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StoreStage;->expandList()V

    return-void
.end method

.method public static synthetic $r8$lambda$EZqHl016p2ttBpi-j69z-TDKZWk(Linfo/flowersoft/theotown/store/StoreStage;)Ljava/lang/String;
    .registers 3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x7e7

    .line 222
    invoke-interface {p0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Linfo/flowersoft/theotown/resources/Drafts;->LOCAL_PLUGIN_MANIFESTS:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, " (%d)"

    invoke-static {v1, p0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ISHmvhmKRmYkfWi_eYrUHNdUy-k(Linfo/flowersoft/theotown/store/StoreStage;Linfo/flowersoft/theotown/store/StorePlugin;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/StoreStage;->visitAuthor(Linfo/flowersoft/theotown/store/StorePlugin;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M0ApFTyWK-WeQhy1j4aQQUayYpA(Linfo/flowersoft/theotown/store/StoreStage;)Ljava/lang/String;
    .registers 4

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xc93

    .line 214
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->collectErroneousDownloadedPlugins()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, " (%d)"

    invoke-static {v1, p0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NxRRab_Cvc-102fByyfRRYbo1Xc(Linfo/flowersoft/theotown/store/StoreStage;)Ljava/lang/String;
    .registers 4

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x20f

    .line 210
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->countDownloadedPlugins()I

    move-result v1

    iget-object p0, p0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->countInternalPlugins()I

    move-result p0

    sub-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, " (%d)"

    invoke-static {v1, p0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OjO5hCdEbJCiJrUrq7lSWN7nLvs(Lcom/badlogic/gdx/utils/IntMap;Linfo/flowersoft/theotown/store/StorePlugin;Linfo/flowersoft/theotown/store/StorePlugin;)I
    .registers 5

    .line 354
    invoke-virtual {p2}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getFirstDownloaded()J

    move-result-wide v0

    .line 355
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getFirstDownloaded()J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-float p0, v0

    .line 354
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static synthetic $r8$lambda$QL2EGxRMv9y4BZOpDfQTikv1jT8(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_f

    .line 422
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$Wp4ajYqTrTput-07RW11B580K2c(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 8

    .line 444
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->city:Linfo/flowersoft/theotown/city/City;

    if-eqz v0, :cond_23

    .line 445
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getController()Linfo/flowersoft/theotown/city/CityController;

    move-result-object v0

    invoke-interface {v0}, Linfo/flowersoft/theotown/city/CityController;->isSavable()Z

    move-result v3

    new-instance v4, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda25;

    invoke-direct {v4}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda25;-><init>()V

    new-instance v5, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda26;

    invoke-direct {v5, p0}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda26;-><init>(Linfo/flowersoft/theotown/store/StoreStage;)V

    new-instance v6, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda27;

    invoke-direct {v6, p0}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda27;-><init>(Linfo/flowersoft/theotown/store/StoreStage;)V

    invoke-static/range {v1 .. v6}, Linfo/flowersoft/theotown/stages/CityStage;->showSaveDialog(Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Master;ZLio/blueflower/stapel2d/util/Setter;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    .line 450
    :cond_23
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->requestRestart()V

    return-void
.end method

.method public static synthetic $r8$lambda$YqItHqdGRZ8vNu16gIH0sEYjR8k(Linfo/flowersoft/theotown/store/StoreStage;)Ljava/lang/String;
    .registers 4

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x84c

    .line 212
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->collectEnabledDownloadedPlugins()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, " (%d)"

    invoke-static {v1, p0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bE2ETjUhzp715SdfQIgt96YybPs(Linfo/flowersoft/theotown/store/StoreStage;Linfo/flowersoft/theotown/store/StoreMode;)V
    .registers 2

    .line 474
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/StoreStage;->changeMode(Linfo/flowersoft/theotown/store/StoreMode;)V

    return-void
.end method

.method public static synthetic $r8$lambda$btGrxZ65Ya0HYBNi1rRBjijsri8(Linfo/flowersoft/theotown/store/StoreStage;Linfo/flowersoft/theotown/store/StoreCategory;)V
    .registers 2

    .line 573
    iget-object p0, p0, Linfo/flowersoft/theotown/store/StoreStage;->categoryVisitor:Lio/blueflower/stapel2d/util/Setter;

    .line 573
    invoke-interface {p0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ef-YzzLVTUtDZpMo0IC1dyLhZts(Linfo/flowersoft/theotown/store/StoreStage;)Ljava/lang/String;
    .registers 4

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xba0

    .line 213
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->collectDisabledDownloadedPlugins()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, " (%d)"

    invoke-static {v1, p0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fBixrlYeDVqshyQZT-KVn0tCfMc(Linfo/flowersoft/theotown/store/StoreStage;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->requiresRestart()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fTZ3QhT9Xi_YxumyKUs36MBWQpU(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 1

    .line 447
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 447
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->requestRestart()V

    return-void
.end method

.method public static synthetic $r8$lambda$f_XLX-59LE01i2zBMhP20VSe1SM(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 1

    .line 459
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    .line 459
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

.method public static synthetic $r8$lambda$hYAEabIZSDSymTFtZo2OCZAeRsY(Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 2

    const/4 v0, 0x1

    .line 446
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$mGe5I3nGXTVD-PhXGkIw_FdVQnQ(Linfo/flowersoft/theotown/store/StoreStage;Linfo/flowersoft/theotown/store/StoreCategory;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/StoreStage;->visitCategory(Linfo/flowersoft/theotown/store/StoreCategory;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oNopvgP0s-WfwF6pj1ED5tPyKzI(Linfo/flowersoft/theotown/store/StoreStage;Ljava/lang/String;)V
    .registers 2

    .line 421
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/store/StoreStage;->visitSearch(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qJal9AcTkIRpNEDCDZY0JEhheW4(Linfo/flowersoft/theotown/store/StoreStage;Linfo/flowersoft/theotown/store/StoreMode;)Ljava/lang/Boolean;
    .registers 3

    .line 474
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    if-ne v0, p1, :cond_a

    .line 474
    iget-object p0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentCategory:Linfo/flowersoft/theotown/store/StoreCategory;

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qk1FCsjfvskqk4E48frnMrFaVeY(Linfo/flowersoft/theotown/store/StoreStage;Ljava/util/List;)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 600
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2f

    .line 601
    iget-object v1, p0, Linfo/flowersoft/theotown/store/StoreStage;->lsq:Linfo/flowersoft/theotown/store/LightStoreQuery;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/store/StorePlugin;

    iget-object v4, p0, Linfo/flowersoft/theotown/store/StoreStage;->authorVisitor:Lio/blueflower/stapel2d/util/Setter;

    invoke-virtual {v1, v0, v3, v4}, Linfo/flowersoft/theotown/store/LightStoreQuery;->wrap(ILinfo/flowersoft/theotown/store/StorePlugin;Lio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/store/StorePluginWrapper;

    move-result-object v1

    .line 602
    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePluginWrapper;->isDownloaded()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 603
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/store/StorePluginWrapper;->setActive(Z)V

    goto :goto_2c

    .line 604
    :cond_23
    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePluginWrapper;->isAvailableInStore()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 605
    invoke-virtual {v1}, Linfo/flowersoft/theotown/store/StorePluginWrapper;->acquireAndDownload()V

    :cond_2c
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 608
    :cond_2f
    iput-boolean v2, p0, Linfo/flowersoft/theotown/store/StoreStage;->requestedDownloadAll:Z

    .line 609
    iget-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage;->lastPlugins:Ljava/util/List;

    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->lastCategories:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/store/StoreStage;->rebuild(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xivPJ9XN3pf9P7t3bRGQnJv63pI(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 2

    .line 299
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->requiresRestart()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 299
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/store/StoreStage;->showRestartDialog(Ljava/lang/Runnable;)V

    :cond_a
    return-void
.end method

.method public static synthetic $r8$lambda$yzyaVjtLSLEI31Z9FpCTTSOhB54(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 1

    .line 249
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    .line 249
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, v0}, Linfo/flowersoft/theotown/store/StoreStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V
    .registers 6

    .line 126
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 62
    const-string v0, "$anim_store_restart00"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    iput v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->RESTART_FRAME:I

    .line 63
    const-string v0, "$anim_store_download00"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v0, v0, v2

    iput v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->DOWNLOAD_FRAME:I

    .line 64
    const-string v0, "$anim_store_active00"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v0, v0, v2

    iput v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->ACTIVE_FRAME:I

    .line 65
    const-string v0, "$anim_store_inactive00"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v0, v0, v2

    iput v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->INACTIVE_FRAME:I

    const/16 v0, 0x14

    .line 67
    iput v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->CHUNK_SIZE:I

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->maxLoadedChunk:I

    .line 70
    iput-boolean v2, p0, Linfo/flowersoft/theotown/store/StoreStage;->reachedEnd:Z

    .line 77
    new-instance v0, Linfo/flowersoft/theotown/store/StoreStage$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/store/StoreStage$1;-><init>(Linfo/flowersoft/theotown/store/StoreStage;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->JSON_HANDLER:Linfo/flowersoft/theotown/backend/ResponseHandler;

    .line 89
    new-instance v0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/store/StoreStage;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    .line 90
    new-instance v0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/store/StoreStage;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->categoryVisitor:Lio/blueflower/stapel2d/util/Setter;

    .line 91
    new-instance v0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/store/StoreStage;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->updateRunner:Ljava/lang/Runnable;

    .line 97
    new-instance v0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/store/StoreStage;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->authorVisitor:Lio/blueflower/stapel2d/util/Setter;

    .line 99
    const-string v0, "store"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 107
    iput-boolean v2, p0, Linfo/flowersoft/theotown/store/StoreStage;->requestedDownloadAll:Z

    .line 108
    sget-object v0, Linfo/flowersoft/theotown/store/StoreMode;->EXPLORE:Linfo/flowersoft/theotown/store/StoreMode;

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    .line 110
    iput v2, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentCategoryId:I

    .line 112
    sget-object v0, Linfo/flowersoft/theotown/resources/Settings;->storeSearchTerm:Ljava/lang/String;

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentSearch:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->remainingPlugins:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->postponedTasks:Ljava/util/List;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->missingPluginsHint:Ljava/lang/String;

    .line 128
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    .line 129
    new-instance v0, Linfo/flowersoft/theotown/store/LightStoreQuery;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/store/LightStoreQuery;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->lsq:Linfo/flowersoft/theotown/store/LightStoreQuery;

    .line 131
    iput-object p2, p0, Linfo/flowersoft/theotown/store/StoreStage;->city:Linfo/flowersoft/theotown/city/City;

    .line 132
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object p1

    iget-object p1, p1, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_OPEN_STORE:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    const-wide/32 v0, 0x3f480

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->completeForSeconds(J)V

    return-void
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/store/StoreStage;I)I
    .registers 2

    .line 54
    iput p1, p0, Linfo/flowersoft/theotown/store/StoreStage;->maxLoadedChunk:I

    return p1
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/store/StoreStage;)I
    .registers 1

    .line 54
    iget p0, p0, Linfo/flowersoft/theotown/store/StoreStage;->targetLoadChunk:I

    return p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/store/StoreStage;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 54
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/StoreStage;->fetchResult(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/store/StoreStage;Ljava/lang/Exception;)V
    .registers 2

    .line 54
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/StoreStage;->fetchError(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/store/StoreStage;)Lio/blueflower/stapel2d/drawing/Engine;
    .registers 1

    .line 54
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/store/StoreStage;)Lio/blueflower/stapel2d/drawing/Engine;
    .registers 1

    .line 54
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/store/StoreStage;Linfo/flowersoft/theotown/util/json/JSONObject;Lio/blueflower/stapel2d/util/IntList;Ljava/util/List;)V
    .registers 4

    .line 54
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/store/StoreStage;->fetchResultMerge(Linfo/flowersoft/theotown/util/json/JSONObject;Lio/blueflower/stapel2d/util/IntList;Ljava/util/List;)V

    return-void
.end method

.method public static getIcon()I
    .registers 2

    .line 57
    const-string v0, "$anim_store_icon00"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private declared-synchronized visitSearch(Ljava/lang/String;)V
    .registers 3

    monitor-enter p0

    .line 686
    :try_start_1
    sput-object p1, Linfo/flowersoft/theotown/resources/Settings;->storeSearchTerm:Ljava/lang/String;

    .line 687
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->save()V

    .line 688
    sget-object v0, Linfo/flowersoft/theotown/store/StoreMode;->SEARCH:Linfo/flowersoft/theotown/store/StoreMode;

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    .line 689
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentSearch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 690
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->clear()V

    goto :goto_18

    :catchall_16
    move-exception p1

    goto :goto_1f

    .line 692
    :cond_18
    :goto_18
    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentSearch:Ljava/lang/String;

    .line 693
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->fetch()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_16

    .line 694
    monitor-exit p0

    return-void

    :goto_1f
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_16

    throw p1
.end method


# virtual methods
.method public final addStoreTabButton(ILio/blueflower/stapel2d/util/Getter;Linfo/flowersoft/theotown/store/StoreMode;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;",
            "Linfo/flowersoft/theotown/store/StoreMode;",
            ")V"
        }
    .end annotation

    .line 474
    new-instance v3, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda23;

    invoke-direct {v3, p0, p3}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda23;-><init>(Linfo/flowersoft/theotown/store/StoreStage;Linfo/flowersoft/theotown/store/StoreMode;)V

    new-instance v4, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda24;

    invoke-direct {v4, p0, p3}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda24;-><init>(Linfo/flowersoft/theotown/store/StoreStage;Linfo/flowersoft/theotown/store/StoreMode;)V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->addTabButton(ILio/blueflower/stapel2d/util/Getter;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;)Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;

    .line 475
    sget-object p1, Linfo/flowersoft/theotown/store/StoreMode;->INSTALLED:Linfo/flowersoft/theotown/store/StoreMode;

    if-ne p3, p1, :cond_1e

    .line 476
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object p1

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p3}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->setPlacement(III)V

    :cond_1e
    return-void
.end method

.method public final addStoreTabButton(ILjava/lang/String;Linfo/flowersoft/theotown/store/StoreMode;)V
    .registers 5

    .line 470
    new-instance v0, Lio/blueflower/stapel2d/util/StaticGetter;

    invoke-direct {v0, p2}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0, p3}, Linfo/flowersoft/theotown/store/StoreStage;->addStoreTabButton(ILio/blueflower/stapel2d/util/Getter;Linfo/flowersoft/theotown/store/StoreMode;)V

    return-void
.end method

.method public final appendFetchedPlugins(Linfo/flowersoft/theotown/util/json/JSONArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 868
    iget v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->maxLoadedChunk:I

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->fetchedPlugins:Linfo/flowersoft/theotown/util/json/JSONArray;

    if-nez v0, :cond_19

    .line 869
    :cond_9
    iput-boolean v1, p0, Linfo/flowersoft/theotown/store/StoreStage;->reachedEnd:Z

    .line 870
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->fetchedPlugins:Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 871
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->fetchedPluginIds:Lcom/badlogic/gdx/utils/IntSet;

    .line 873
    :cond_19
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_23

    const/4 p1, 0x1

    .line 874
    iput-boolean p1, p0, Linfo/flowersoft/theotown/store/StoreStage;->reachedEnd:Z

    return-void

    .line 876
    :cond_23
    :goto_23
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_4c

    .line 877
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    const-string v2, "plugin_id"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 878
    iget-object v2, p0, Linfo/flowersoft/theotown/store/StoreStage;->fetchedPluginIds:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v2

    if-nez v2, :cond_49

    .line 879
    iget-object v2, p0, Linfo/flowersoft/theotown/store/StoreStage;->fetchedPlugins:Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 880
    iget-object v2, p0, Linfo/flowersoft/theotown/store/StoreStage;->fetchedPluginIds:Lcom/badlogic/gdx/utils/IntSet;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_4c
    return-void
.end method

.method public bind(Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 3

    .line 167
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gamestack/Stage;->bind(Lio/blueflower/stapel2d/gamestack/GameStack;)V

    .line 169
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->city:Linfo/flowersoft/theotown/city/City;

    if-nez v0, :cond_17

    .line 170
    const-class v0, Linfo/flowersoft/theotown/stages/CityStage;

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->getStageByType(Ljava/lang/Class;)Lio/blueflower/stapel2d/gamestack/Stage;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/stages/CityStage;

    if-eqz p1, :cond_17

    .line 171
    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/CityStage;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage;->city:Linfo/flowersoft/theotown/city/City;

    :cond_17
    return-void
.end method

.method public buildHeaderButtons(Lio/blueflower/stapel2d/gui/LineLayout;)V
    .registers 5

    .line 298
    iget p1, p0, Linfo/flowersoft/theotown/store/StoreStage;->RESTART_FRAME:I

    new-instance v0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda17;-><init>(Linfo/flowersoft/theotown/store/StoreStage;)V

    new-instance v1, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda18;-><init>(Linfo/flowersoft/theotown/store/StoreStage;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v2, v0, v1}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->addActionButton(IFLjava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Lio/blueflower/stapel2d/gui/Button;

    return-void
.end method

.method public final buildPluginEntry(Linfo/flowersoft/theotown/store/PluginWrapper;)V
    .registers 8

    .line 623
    new-instance v0, Linfo/flowersoft/theotown/store/PluginEntry;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v4, p0, Linfo/flowersoft/theotown/store/StoreStage;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    iget-object v5, p0, Linfo/flowersoft/theotown/store/StoreStage;->updateRunner:Ljava/lang/Runnable;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/store/PluginEntry;-><init>(Lio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/store/PluginWrapper;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;Ljava/lang/Runnable;)V

    .line 626
    new-instance p1, Linfo/flowersoft/theotown/store/StoreStage$2;

    invoke-direct {p1, p0, v0, v0}, Linfo/flowersoft/theotown/store/StoreStage$2;-><init>(Linfo/flowersoft/theotown/store/StoreStage;Lio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/store/PluginEntry;)V

    const/4 v0, 0x1

    .line 634
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->setDrawBackground(Z)V

    const/4 v0, 0x0

    .line 635
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->setCanBeSelected(Z)V

    .line 637
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v1, Linfo/flowersoft/theotown/store/StoreStage$3;

    const-string v2, ""

    invoke-direct {v1, p0, v2, p1}, Linfo/flowersoft/theotown/store/StoreStage$3;-><init>(Linfo/flowersoft/theotown/store/StoreStage;Ljava/lang/String;Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    return-void
.end method

.method public final declared-synchronized changeMode(Linfo/flowersoft/theotown/store/StoreMode;)V
    .registers 3

    monitor-enter p0

    .line 717
    :try_start_1
    iget v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentCategoryId:I

    if-nez v0, :cond_10

    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentAuthor:Linfo/flowersoft/theotown/store/StorePlugin;

    if-eqz v0, :cond_15

    goto :goto_10

    :catchall_e
    move-exception p1

    goto :goto_2a

    .line 718
    :cond_10
    :goto_10
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->clear()V

    .line 719
    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    :cond_15
    const/4 p1, 0x0

    .line 721
    iput p1, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentCategoryId:I

    const/4 p1, 0x0

    .line 722
    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentCategory:Linfo/flowersoft/theotown/store/StoreCategory;

    .line 723
    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentAuthor:Linfo/flowersoft/theotown/store/StorePlugin;

    const/4 p1, 0x0

    .line 724
    iput p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->lastShiftY:F

    .line 725
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/ListBox;->setShiftY(F)V

    .line 726
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->fetch()V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_e

    .line 727
    monitor-exit p0

    return-void

    :goto_2a
    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_e

    throw p1
.end method

.method public final declared-synchronized clear()V
    .registers 3

    monitor-enter p0

    .line 529
    :try_start_1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/store/StoreStage;->rebuild(Ljava/util/List;Ljava/util/List;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 530
    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public close()V
    .registers 1

    .line 335
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->showRestartDialogOrExit()V

    return-void
.end method

.method public final collectDisabledDownloadedPlugins()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/StorePlugin;",
            ">;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getDownloadedPlugins()Ljava/util/List;

    move-result-object v0

    .line 375
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 376
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 377
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    .line 378
    iget-object v4, p0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v5

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isPermanent(I)Z

    move-result v4

    if-nez v4, :cond_32

    invoke-virtual {v3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isActive()Z

    move-result v4

    if-nez v4, :cond_32

    .line 379
    new-instance v4, Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-direct {v4, v3}, Linfo/flowersoft/theotown/store/StorePlugin;-><init>(Linfo/flowersoft/theotown/store/ManagedPluginFile;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 383
    :cond_35
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/store/StoreStage;->sortDownloadedPluginsByDownloadTime(Ljava/util/List;)V

    return-object v1
.end method

.method public final collectDownloadedPlugins()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/StorePlugin;",
            ">;"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getDownloadedPlugins()Ljava/util/List;

    move-result-object v0

    .line 360
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 361
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 362
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    .line 363
    iget-object v4, p0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v5

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isPermanent(I)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 364
    new-instance v4, Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-direct {v4, v3}, Linfo/flowersoft/theotown/store/StorePlugin;-><init>(Linfo/flowersoft/theotown/store/ManagedPluginFile;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 368
    :cond_2f
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/store/StoreStage;->sortDownloadedPluginsByDownloadTime(Ljava/util/List;)V

    return-object v1
.end method

.method public final collectEnabledDownloadedPlugins()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/StorePlugin;",
            ">;"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getDownloadedPlugins()Ljava/util/List;

    move-result-object v0

    .line 390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 391
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 392
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    .line 393
    iget-object v4, p0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v5

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isPermanent(I)Z

    move-result v4

    if-nez v4, :cond_32

    invoke-virtual {v3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->isActive()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 394
    new-instance v4, Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-direct {v4, v3}, Linfo/flowersoft/theotown/store/StorePlugin;-><init>(Linfo/flowersoft/theotown/store/ManagedPluginFile;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 398
    :cond_35
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/store/StoreStage;->sortDownloadedPluginsByDownloadTime(Ljava/util/List;)V

    return-object v1
.end method

.method public final collectErroneousDownloadedPlugins()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/StorePlugin;",
            ">;"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getDownloadedPlugins()Ljava/util/List;

    move-result-object v0

    .line 405
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 406
    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 407
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    .line 408
    iget-object v4, p0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v5

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isPermanent(I)Z

    move-result v4

    if-nez v4, :cond_32

    invoke-virtual {v3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getError()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 409
    new-instance v4, Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-direct {v4, v3}, Linfo/flowersoft/theotown/store/StorePlugin;-><init>(Linfo/flowersoft/theotown/store/ManagedPluginFile;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 413
    :cond_35
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/store/StoreStage;->sortDownloadedPluginsByDownloadTime(Ljava/util/List;)V

    return-object v1
.end method

.method public configureCategory(Linfo/flowersoft/theotown/store/StoreCategory$Builtins;)V
    .registers 3

    .line 150
    sget-object v0, Linfo/flowersoft/theotown/store/StoreMode;->CATEGORY:Linfo/flowersoft/theotown/store/StoreMode;

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    .line 151
    iget v0, p1, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->id:I

    iput v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentCategoryId:I

    .line 152
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/store/StoreCategory$Builtins;->toCategory(Lio/blueflower/stapel2d/gamestack/Translator;)Linfo/flowersoft/theotown/store/StoreCategory;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentCategory:Linfo/flowersoft/theotown/store/StoreCategory;

    return-void
.end method

.method public configureLoaded(Linfo/flowersoft/theotown/store/StorePluginWrapper;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/store/StorePluginWrapper;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/StorePluginWrapper;",
            ">;)V"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->lastPlugins:Ljava/util/List;

    const/4 v0, 0x0

    .line 157
    :goto_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 158
    iget-object v1, p0, Linfo/flowersoft/theotown/store/StoreStage;->lastPlugins:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/store/StorePluginWrapper;

    iget-object v2, v2, Linfo/flowersoft/theotown/store/StorePluginWrapper;->plugin:Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_2c

    neg-int v1, v0

    .line 160
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-static {v2}, Linfo/flowersoft/theotown/store/PluginEntry;->getDefaultHeight(Lio/blueflower/stapel2d/gui/Gadget;)I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->lastShiftY:F

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_2f
    return-void
.end method

.method public configureMode(Linfo/flowersoft/theotown/store/StoreMode;)V
    .registers 2

    .line 146
    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    return-void
.end method

.method public declared-synchronized drop()V
    .registers 2

    monitor-enter p0

    .line 520
    :try_start_1
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drop()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 521
    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public declared-synchronized enter()V
    .registers 8

    monitor-enter p0

    .line 185
    :try_start_1
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->enter()V

    .line 186
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    sput-wide v0, Linfo/flowersoft/theotown/store/StoreStage;->lastEnterTime:J

    .line 187
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    .line 189
    invoke-static {}, Linfo/flowersoft/theotown/ui/LimitedAccessOfflineModeDialog;->isOffline()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_b6

    .line 192
    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION:I

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0xb93

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Linfo/flowersoft/theotown/store/StoreMode;->EXPLORE:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {p0, v4, v5, v6}, Linfo/flowersoft/theotown/store/StoreStage;->addStoreTabButton(ILjava/lang/String;Linfo/flowersoft/theotown/store/StoreMode;)V

    .line 193
    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_RANK:I

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x4c0

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Linfo/flowersoft/theotown/store/StoreMode;->FEATURED:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {p0, v4, v5, v6}, Linfo/flowersoft/theotown/store/StoreStage;->addStoreTabButton(ILjava/lang/String;Linfo/flowersoft/theotown/store/StoreMode;)V

    .line 195
    iget-object v4, p0, Linfo/flowersoft/theotown/store/StoreStage;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v5, "mode best rated"

    invoke-virtual {v4, v5, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 196
    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_STAR:I

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0xbf

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Linfo/flowersoft/theotown/store/StoreMode;->BEST_RATED:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {p0, v4, v5, v6}, Linfo/flowersoft/theotown/store/StoreStage;->addStoreTabButton(ILjava/lang/String;Linfo/flowersoft/theotown/store/StoreMode;)V

    goto :goto_55

    :catchall_52
    move-exception v0

    goto/16 :goto_17e

    .line 198
    :cond_55
    :goto_55
    iget-object v4, p0, Linfo/flowersoft/theotown/store/StoreStage;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v5, "mode certified creators"

    invoke-virtual {v4, v5, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 199
    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_HEART:I

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x18f

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Linfo/flowersoft/theotown/store/StoreMode;->CERTIFIED_CREATORS:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {p0, v4, v5, v6}, Linfo/flowersoft/theotown/store/StoreStage;->addStoreTabButton(ILjava/lang/String;Linfo/flowersoft/theotown/store/StoreMode;)V

    .line 201
    :cond_6e
    const-string v4, "$anim_ui_new00"

    const-class v5, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v4, v4, v2

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0xce8

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Linfo/flowersoft/theotown/store/StoreMode;->NEW:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {p0, v4, v5, v6}, Linfo/flowersoft/theotown/store/StoreStage;->addStoreTabButton(ILjava/lang/String;Linfo/flowersoft/theotown/store/StoreMode;)V

    .line 202
    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_CATEGORY:I

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0xb6d

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Linfo/flowersoft/theotown/store/StoreMode;->CATEGORY:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {p0, v4, v5, v6}, Linfo/flowersoft/theotown/store/StoreStage;->addStoreTabButton(ILjava/lang/String;Linfo/flowersoft/theotown/store/StoreMode;)V

    .line 203
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v4

    if-eqz v4, :cond_b3

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isForumConnected()Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 204
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_NOTIFICATION:I

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x2d1

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Linfo/flowersoft/theotown/store/StoreMode;->COMMENTED:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {p0, v0, v4, v5}, Linfo/flowersoft/theotown/store/StoreStage;->addStoreTabButton(ILjava/lang/String;Linfo/flowersoft/theotown/store/StoreMode;)V

    .line 207
    :cond_b3
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->addTabSeparator()V

    .line 210
    :cond_b6
    iget v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->DOWNLOAD_FRAME:I

    new-instance v4, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda7;-><init>(Linfo/flowersoft/theotown/store/StoreStage;)V

    sget-object v5, Linfo/flowersoft/theotown/store/StoreMode;->INSTALLED:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {p0, v0, v4, v5}, Linfo/flowersoft/theotown/store/StoreStage;->addStoreTabButton(ILio/blueflower/stapel2d/util/Getter;Linfo/flowersoft/theotown/store/StoreMode;)V

    .line 212
    iget v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->ACTIVE_FRAME:I

    new-instance v4, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda8;-><init>(Linfo/flowersoft/theotown/store/StoreStage;)V

    sget-object v6, Linfo/flowersoft/theotown/store/StoreMode;->ACTIVE:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {p0, v0, v4, v6}, Linfo/flowersoft/theotown/store/StoreStage;->addStoreTabButton(ILio/blueflower/stapel2d/util/Getter;Linfo/flowersoft/theotown/store/StoreMode;)V

    .line 213
    iget v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->INACTIVE_FRAME:I

    new-instance v4, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda9;-><init>(Linfo/flowersoft/theotown/store/StoreStage;)V

    sget-object v6, Linfo/flowersoft/theotown/store/StoreMode;->INACTIVE:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {p0, v0, v4, v6}, Linfo/flowersoft/theotown/store/StoreStage;->addStoreTabButton(ILio/blueflower/stapel2d/util/Getter;Linfo/flowersoft/theotown/store/StoreMode;)V

    .line 214
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ALERT:I

    new-instance v4, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda10;-><init>(Linfo/flowersoft/theotown/store/StoreStage;)V

    sget-object v6, Linfo/flowersoft/theotown/store/StoreMode;->ERROR:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {p0, v0, v4, v6}, Linfo/flowersoft/theotown/store/StoreStage;->addStoreTabButton(ILio/blueflower/stapel2d/util/Getter;Linfo/flowersoft/theotown/store/StoreMode;)V

    if-nez v1, :cond_100

    .line 217
    const-string v0, "$cat_wastedisposal00"

    const-class v4, Linfo/flowersoft/theotown/draft/CategoryDraft;

    invoke-static {v0, v4}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/CategoryDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v0, v0, v2

    new-instance v4, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda11;-><init>(Linfo/flowersoft/theotown/store/StoreStage;)V

    sget-object v6, Linfo/flowersoft/theotown/store/StoreMode;->PREV_INSTALLED:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {p0, v0, v4, v6}, Linfo/flowersoft/theotown/store/StoreStage;->addStoreTabButton(ILio/blueflower/stapel2d/util/Getter;Linfo/flowersoft/theotown/store/StoreMode;)V

    .line 220
    :cond_100
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->addTabSeparator()V

    .line 222
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUGIN:I

    new-instance v4, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda12;-><init>(Linfo/flowersoft/theotown/store/StoreStage;)V

    sget-object v6, Linfo/flowersoft/theotown/store/StoreMode;->LOCAL:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {p0, v0, v4, v6}, Linfo/flowersoft/theotown/store/StoreStage;->addStoreTabButton(ILio/blueflower/stapel2d/util/Getter;Linfo/flowersoft/theotown/store/StoreMode;)V

    .line 224
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->lastPlugins:Ljava/util/List;

    .line 225
    iget-object v4, p0, Linfo/flowersoft/theotown/store/StoreStage;->lastCategories:Ljava/util/List;

    if-eqz v1, :cond_11e

    .line 228
    iput-object v5, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    .line 229
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-static {v1, v5}, Linfo/flowersoft/theotown/ui/LimitedAccessOfflineModeDialog;->show(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)Linfo/flowersoft/theotown/ui/Dialog;

    .line 232
    :cond_11e
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_14e

    if-eqz v0, :cond_12c

    .line 233
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_12e

    :cond_12c
    if-eqz v4, :cond_139

    .line 234
    :cond_12e
    invoke-virtual {p0, v0, v4}, Linfo/flowersoft/theotown/store/StoreStage;->rebuild(Ljava/util/List;Ljava/util/List;)V

    .line 235
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    iget v1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->lastShiftY:F

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->setShiftY(F)V

    goto :goto_13c

    .line 237
    :cond_139
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->clear()V

    .line 240
    :goto_13c
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 243
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v2

    iget-object v2, v2, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_STORE_DISCLAIMER:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    const/16 v3, 0xd27

    const/16 v4, 0x195

    .line 240
    invoke-static {v3, v4, v0, v1, v2}, Linfo/flowersoft/theotown/ui/TaskCompletionDialogShower;->showDialog(IILio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/resources/TaskManager$Task;)V

    goto :goto_17c

    .line 245
    :cond_14e
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ALERT:I

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x330

    .line 246
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x49a

    .line 247
    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v4, v5, v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 249
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x76b

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda13;

    invoke-direct {v5, p0}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda13;-><init>(Linfo/flowersoft/theotown/store/StoreStage;)V

    invoke-virtual {v0, v1, v4, v2, v5}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 250
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V
    :try_end_17c
    .catchall {:try_start_1 .. :try_end_17c} :catchall_52

    .line 252
    :goto_17c
    monitor-exit p0

    return-void

    :goto_17e
    :try_start_17e
    monitor-exit p0
    :try_end_17f
    .catchall {:try_start_17e .. :try_end_17f} :catchall_52

    throw v0
.end method

.method public final declared-synchronized expandList()V
    .registers 4

    monitor-enter p0

    .line 499
    :goto_1
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->remainingPlugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->getShiftY()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ListBox;->getContentHeight()I

    move-result v1

    add-int/lit16 v1, v1, -0xc8

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_34

    .line 500
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->remainingPlugins:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/store/PluginWrapper;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/store/StoreStage;->buildPluginEntry(Linfo/flowersoft/theotown/store/PluginWrapper;)V

    goto :goto_1

    :catchall_32
    move-exception v0

    goto :goto_6e

    .line 503
    :cond_34
    iget-boolean v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->isFetching:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5f

    iget-boolean v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->reachedEnd:Z

    if-nez v0, :cond_5f

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->getShiftY()F

    move-result v0

    neg-float v0, v0

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ListBox;->getContentHeight()I

    move-result v2

    add-int/lit16 v2, v2, -0xc8

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_5f

    .line 504
    iget v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->maxLoadedChunk:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/store/StoreStage;->fetch(I)V

    .line 507
    :cond_5f
    iget-boolean v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->isFetching:Z

    if-eqz v0, :cond_67

    iget-boolean v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->reachedEnd:Z

    if-eqz v0, :cond_6c

    .line 508
    :cond_67
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->setLimitYScrolling(Z)V
    :try_end_6c
    .catchall {:try_start_1 .. :try_end_6c} :catchall_32

    .line 510
    :cond_6c
    monitor-exit p0

    return-void

    :goto_6e
    :try_start_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_32

    throw v0
.end method

.method public final fetch()V
    .registers 2

    const/4 v0, 0x0

    .line 730
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/store/StoreStage;->fetch(I)V

    return-void
.end method

.method public final fetch(I)V
    .registers 3

    .line 734
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->getShiftY()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->lastShiftY:F

    if-nez p1, :cond_d

    const/4 v0, 0x0

    .line 735
    iput-boolean v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->reachedEnd:Z

    .line 736
    :cond_d
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 737
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StoreMode;->getTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 738
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->fetchLocal()V

    return-void

    .line 740
    :cond_1f
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/StoreStage;->fetchOnline(I)V

    :cond_22
    return-void
.end method

.method public final declared-synchronized fetchError(Ljava/lang/Exception;)V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 1031
    :try_start_2
    iput-boolean v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->isFetching:Z

    const/4 v0, 0x1

    .line 1032
    iput-boolean v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->reachedEnd:Z

    .line 1033
    invoke-static {}, Linfo/flowersoft/theotown/ui/LimitedAccessOfflineModeDialog;->isOffline()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1034
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    .line 1035
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    goto :goto_4d

    .line 1037
    :cond_14
    :try_start_14
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/Exception;)V

    .line 1038
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-nez v0, :cond_4b

    .line 1039
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    sget-boolean v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-eqz v1, :cond_28

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_48

    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x32a

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_48
    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_14 .. :try_end_4b} :catchall_12

    .line 1041
    :cond_4b
    monitor-exit p0

    return-void

    :goto_4d
    :try_start_4d
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_12

    throw p1
.end method

.method public final fetchLocal()V
    .registers 4

    const/4 v0, 0x0

    .line 746
    iput-boolean v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->isFetching:Z

    const/4 v0, 0x1

    .line 747
    iput-boolean v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->reachedEnd:Z

    .line 749
    sget-object v1, Linfo/flowersoft/theotown/store/StoreStage$5;->$SwitchMap$info$flowersoft$theotown$store$StoreMode:[I

    iget-object v2, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_13

    return-void

    .line 751
    :cond_13
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->LOCAL_PLUGIN_MANIFESTS:Ljava/util/List;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/store/StoreStage;->rebuild(Ljava/util/List;)V

    return-void
.end method

.method public final fetchOnline(I)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 788
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StoreStage;->collectDownloadedPlugins()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    .line 789
    iput-boolean v3, v0, Linfo/flowersoft/theotown/store/StoreStage;->isFetching:Z

    add-int/lit8 v4, v1, -0x1

    .line 790
    iput v4, v0, Linfo/flowersoft/theotown/store/StoreStage;->maxLoadedChunk:I

    .line 791
    iput v1, v0, Linfo/flowersoft/theotown/store/StoreStage;->targetLoadChunk:I

    .line 793
    iget-object v4, v0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->fetchRatings()V

    .line 795
    sget-object v4, Linfo/flowersoft/theotown/store/StoreStage$5;->$SwitchMap$info$flowersoft$theotown$store$StoreMode:[I

    iget-object v5, v0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_130

    return-void

    .line 858
    :pswitch_26
    new-instance v2, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v2}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 859
    :goto_2b
    iget-object v3, v0, Linfo/flowersoft/theotown/store/StoreStage;->missingPlugins:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_45

    .line 860
    iget-object v3, v0, Linfo/flowersoft/theotown/store/StoreStage;->missingPlugins:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 862
    :cond_45
    invoke-virtual {v0, v2, v1, v5}, Linfo/flowersoft/theotown/store/StoreStage;->showPluginsById(Lio/blueflower/stapel2d/util/IntList;ILjava/util/List;)V

    return-void

    .line 845
    :pswitch_49
    iget-object v2, v0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getAcquiredPluginIds()Lio/blueflower/stapel2d/util/IntList;

    move-result-object v2

    .line 846
    :goto_4f
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v4

    if-ge v6, v4, :cond_70

    .line 847
    invoke-virtual {v2, v6}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    .line 848
    iget-object v7, v0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {v7, v4}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isDownloading(I)Z

    move-result v7

    if-nez v7, :cond_69

    iget-object v7, v0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {v7, v4}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isDownloaded(I)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 849
    :cond_69
    invoke-virtual {v2, v6}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    add-int/lit8 v6, v6, -0x1

    :cond_6e
    add-int/2addr v6, v3

    goto :goto_4f

    .line 853
    :cond_70
    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->reverse()V

    .line 854
    invoke-virtual {v0, v2, v1, v5}, Linfo/flowersoft/theotown/store/StoreStage;->showPluginsById(Lio/blueflower/stapel2d/util/IntList;ILjava/util/List;)V

    return-void

    .line 841
    :pswitch_77
    iget-object v7, v0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v8, v0, Linfo/flowersoft/theotown/store/StoreStage;->JSON_HANDLER:Linfo/flowersoft/theotown/backend/ResponseHandler;

    iget-object v9, v0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getAcquiredPluginIds()Lio/blueflower/stapel2d/util/IntList;

    move-result-object v10

    iget-object v11, v0, Linfo/flowersoft/theotown/store/StoreStage;->currentSearch:Ljava/lang/String;

    mul-int/lit8 v13, v1, 0x14

    const/16 v14, 0x14

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v14}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->fetchStore(Linfo/flowersoft/theotown/backend/ResponseHandler;Linfo/flowersoft/theotown/store/StoreMode;Lio/blueflower/stapel2d/util/IntList;Ljava/lang/String;ZII)V

    return-void

    .line 835
    :pswitch_8c
    new-instance v2, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v2}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 836
    iget-object v3, v0, Linfo/flowersoft/theotown/store/StoreStage;->currentAuthor:Linfo/flowersoft/theotown/store/StorePlugin;

    if-eqz v3, :cond_99

    invoke-virtual {v3}, Linfo/flowersoft/theotown/store/StorePlugin;->getAuthorId()I

    move-result v6

    :cond_99
    invoke-virtual {v2, v6}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 837
    iget-object v15, v0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v3, v0, Linfo/flowersoft/theotown/store/StoreStage;->JSON_HANDLER:Linfo/flowersoft/theotown/backend/ResponseHandler;

    iget-object v4, v0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    mul-int/lit8 v21, v1, 0x14

    const/16 v22, 0x14

    const-string v19, ""

    const/16 v20, 0x1

    move-object/from16 v18, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-virtual/range {v15 .. v22}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->fetchStore(Linfo/flowersoft/theotown/backend/ResponseHandler;Linfo/flowersoft/theotown/store/StoreMode;Lio/blueflower/stapel2d/util/IntList;Ljava/lang/String;ZII)V

    return-void

    .line 829
    :pswitch_b4
    new-instance v8, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v8}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 830
    iget v2, v0, Linfo/flowersoft/theotown/store/StoreStage;->currentCategoryId:I

    invoke-virtual {v8, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 831
    iget-object v5, v0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v6, v0, Linfo/flowersoft/theotown/store/StoreStage;->JSON_HANDLER:Linfo/flowersoft/theotown/backend/ResponseHandler;

    iget-object v7, v0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    mul-int/lit8 v11, v1, 0x14

    const/16 v12, 0x14

    const-string v9, ""

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v12}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->fetchStore(Linfo/flowersoft/theotown/backend/ResponseHandler;Linfo/flowersoft/theotown/store/StoreMode;Lio/blueflower/stapel2d/util/IntList;Ljava/lang/String;ZII)V

    return-void

    .line 821
    :pswitch_cf
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v2

    .line 822
    new-instance v6, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v6}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 823
    invoke-virtual {v2}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v6, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 824
    invoke-virtual {v2}, Linfo/flowersoft/theotown/backend/User;->getForumId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v6, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 825
    iget-object v3, v0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v4, v0, Linfo/flowersoft/theotown/store/StoreStage;->JSON_HANDLER:Linfo/flowersoft/theotown/backend/ResponseHandler;

    iget-object v5, v0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    mul-int/lit8 v9, v1, 0x14

    const/16 v10, 0x14

    const-string v7, ""

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->fetchStore(Linfo/flowersoft/theotown/backend/ResponseHandler;Linfo/flowersoft/theotown/store/StoreMode;Lio/blueflower/stapel2d/util/IntList;Ljava/lang/String;ZII)V

    return-void

    .line 817
    :pswitch_fd
    iget-object v11, v0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    iget-object v12, v0, Linfo/flowersoft/theotown/store/StoreStage;->JSON_HANDLER:Linfo/flowersoft/theotown/backend/ResponseHandler;

    iget-object v13, v0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v11}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getAcquiredPluginIds()Lio/blueflower/stapel2d/util/IntList;

    move-result-object v14

    mul-int/lit8 v17, v1, 0x14

    const/16 v18, 0x14

    const-string v15, ""

    const/16 v16, 0x1

    invoke-virtual/range {v11 .. v18}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->fetchStore(Linfo/flowersoft/theotown/backend/ResponseHandler;Linfo/flowersoft/theotown/store/StoreMode;Lio/blueflower/stapel2d/util/IntList;Ljava/lang/String;ZII)V

    return-void

    .line 808
    :pswitch_113
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StoreStage;->collectErroneousDownloadedPlugins()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/store/StoreStage;->showPluginsByInfo(Ljava/util/List;I)V

    return-void

    .line 804
    :pswitch_11b
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StoreStage;->collectDisabledDownloadedPlugins()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/store/StoreStage;->showPluginsByInfo(Ljava/util/List;I)V

    return-void

    .line 800
    :pswitch_123
    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StoreStage;->collectEnabledDownloadedPlugins()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/store/StoreStage;->showPluginsByInfo(Ljava/util/List;I)V

    return-void

    .line 797
    :pswitch_12b
    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/store/StoreStage;->showPluginsByInfo(Ljava/util/List;I)V

    return-void

    nop

    :pswitch_data_130
    .packed-switch 0x2
        :pswitch_12b
        :pswitch_123
        :pswitch_11b
        :pswitch_113
        :pswitch_fd
        :pswitch_fd
        :pswitch_fd
        :pswitch_fd
        :pswitch_fd
        :pswitch_cf
        :pswitch_b4
        :pswitch_8c
        :pswitch_77
        :pswitch_49
        :pswitch_26
    .end packed-switch
.end method

.method public final declared-synchronized fetchResult(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 9

    monitor-enter p0

    const/4 v0, 0x0

    .line 887
    :try_start_2
    iput-boolean v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->isFetching:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_35

    .line 889
    :try_start_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 890
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 892
    const-string v3, "plugins"

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 894
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/store/StoreStage;->appendFetchedPlugins(Linfo/flowersoft/theotown/util/json/JSONArray;)V

    move v3, v0

    .line 896
    :goto_1a
    iget-object v4, p0, Linfo/flowersoft/theotown/store/StoreStage;->fetchedPlugins:Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_39

    .line 897
    iget-object v4, p0, Linfo/flowersoft/theotown/store/StoreStage;->fetchedPlugins:Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-virtual {v4, v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v4

    .line 898
    new-instance v5, Linfo/flowersoft/theotown/store/StorePlugin;

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-direct {v5, v4, v6}, Linfo/flowersoft/theotown/store/StorePlugin;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;Lio/blueflower/stapel2d/gamestack/Translator;)V

    .line 899
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :catchall_35
    move-exception p1

    goto :goto_64

    :catch_37
    move-exception p1

    goto :goto_5f

    .line 903
    :cond_39
    const-string v3, "categories"

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_5b

    const/4 v3, 0x1

    .line 905
    iput-boolean v3, p0, Linfo/flowersoft/theotown/store/StoreStage;->reachedEnd:Z

    .line 906
    :goto_44
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_5b

    .line 907
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    .line 908
    new-instance v4, Linfo/flowersoft/theotown/store/StoreCategory;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-direct {v4, v3, v5}, Linfo/flowersoft/theotown/store/StoreCategory;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;Lio/blueflower/stapel2d/gamestack/Translator;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 912
    :cond_5b
    invoke-virtual {p0, v1, v2}, Linfo/flowersoft/theotown/store/StoreStage;->rebuild(Ljava/util/List;Ljava/util/List;)V
    :try_end_5e
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_4 .. :try_end_5e} :catch_37
    .catchall {:try_start_4 .. :try_end_5e} :catchall_35

    goto :goto_62

    .line 914
    :goto_5f
    :try_start_5f
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/StoreStage;->fetchError(Ljava/lang/Exception;)V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_35

    .line 916
    :goto_62
    monitor-exit p0

    return-void

    :goto_64
    :try_start_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_35

    throw p1
.end method

.method public final declared-synchronized fetchResultMerge(Linfo/flowersoft/theotown/util/json/JSONObject;Lio/blueflower/stapel2d/util/IntList;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            "Lio/blueflower/stapel2d/util/IntList;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/StorePlugin;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 971
    :try_start_2
    iput-boolean v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->isFetching:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_34

    .line 973
    :try_start_4
    new-instance v1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    .line 974
    const-string v2, "plugins"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 976
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/StoreStage;->appendFetchedPlugins(Linfo/flowersoft/theotown/util/json/JSONArray;)V

    move p1, v0

    .line 978
    :goto_15
    iget-object v2, p0, Linfo/flowersoft/theotown/store/StoreStage;->fetchedPlugins:Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_38

    .line 979
    iget-object v2, p0, Linfo/flowersoft/theotown/store/StoreStage;->fetchedPlugins:Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    .line 980
    new-instance v3, Linfo/flowersoft/theotown/store/StorePlugin;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-direct {v3, v2, v4}, Linfo/flowersoft/theotown/store/StorePlugin;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;Lio/blueflower/stapel2d/gamestack/Translator;)V

    .line 981
    invoke-virtual {v3}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_15

    :catchall_34
    move-exception p1

    goto :goto_82

    :catch_36
    move-exception p1

    goto :goto_7d

    :cond_38
    if-eqz p3, :cond_5b

    move p1, v0

    .line 986
    :goto_3b
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_5b

    .line 987
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/store/StorePlugin;

    .line 988
    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v3

    if-nez v3, :cond_58

    .line 989
    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_58
    add-int/lit8 p1, p1, 0x1

    goto :goto_3b

    .line 994
    :cond_5b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 995
    :goto_60
    invoke-virtual {p2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p3

    if-ge v0, p3, :cond_78

    .line 996
    invoke-virtual {p2, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p3

    .line 997
    invoke-virtual {v1, p3}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Linfo/flowersoft/theotown/store/StorePlugin;

    if-eqz p3, :cond_75

    .line 998
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_75
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    :cond_78
    const/4 p2, 0x0

    .line 1000
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/store/StoreStage;->rebuild(Ljava/util/List;Ljava/util/List;)V
    :try_end_7c
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_4 .. :try_end_7c} :catch_36
    .catchall {:try_start_4 .. :try_end_7c} :catchall_34

    goto :goto_80

    .line 1002
    :goto_7d
    :try_start_7d
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/StoreStage;->fetchError(Ljava/lang/Exception;)V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_34

    .line 1004
    :goto_80
    monitor-exit p0

    return-void

    :goto_82
    :try_start_82
    monitor-exit p0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_34

    throw p1
.end method

.method public getFallbackIcon()I
    .registers 3

    .line 268
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->USER:Linfo/flowersoft/theotown/store/StoreMode;

    if-ne v0, v1, :cond_9

    .line 269
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ACCOUNT:I

    return v0

    .line 270
    :cond_9
    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->SEARCH:Linfo/flowersoft/theotown/store/StoreMode;

    if-ne v0, v1, :cond_10

    .line 271
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->FRAME_SEARCH_BUTTON:I

    return v0

    .line 272
    :cond_10
    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->CATEGORY:Linfo/flowersoft/theotown/store/StoreMode;

    if-ne v0, v1, :cond_1b

    .line 273
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentCategory:Linfo/flowersoft/theotown/store/StoreCategory;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StoreCategory;->getIcon()I

    move-result v0

    return v0

    .line 274
    :cond_1b
    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->MISSING:Linfo/flowersoft/theotown/store/StoreMode;

    if-ne v0, v1, :cond_22

    .line 275
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUGIN:I

    return v0

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public getFallbackTitle()Ljava/lang/String;
    .registers 3

    .line 283
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->USER:Linfo/flowersoft/theotown/store/StoreMode;

    if-ne v0, v1, :cond_12

    .line 284
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentAuthor:Linfo/flowersoft/theotown/store/StorePlugin;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->getAuthor()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    const-string v0, "User"

    return-object v0

    .line 285
    :cond_12
    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->SEARCH:Linfo/flowersoft/theotown/store/StoreMode;

    if-ne v0, v1, :cond_19

    .line 286
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentSearch:Ljava/lang/String;

    return-object v0

    .line 287
    :cond_19
    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->CATEGORY:Linfo/flowersoft/theotown/store/StoreMode;

    if-ne v0, v1, :cond_24

    .line 288
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentCategory:Linfo/flowersoft/theotown/store/StoreCategory;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StoreCategory;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 289
    :cond_24
    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->MISSING:Linfo/flowersoft/theotown/store/StoreMode;

    if-ne v0, v1, :cond_2b

    .line 290
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->missingPluginsHint:Ljava/lang/String;

    return-object v0

    .line 292
    :cond_2b
    const-string v0, ""

    return-object v0
.end method

.method public help()V
    .registers 8

    .line 310
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_INFO:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xb8c

    .line 312
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xab5

    .line 313
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x12c

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/16 v4, 0x12c

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 325
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x76b

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    .line 326
    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    const/16 v2, 0x42

    .line 327
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 330
    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public isLoading()Z
    .registers 2

    .line 340
    iget-boolean v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->isFetching:Z

    return v0
.end method

.method public final isSupported()Z
    .registers 4

    .line 136
    sget v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StoreStage;->config:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "min version"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized leave()V
    .registers 2

    monitor-enter p0

    .line 514
    :try_start_1
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->leave()V

    .line 515
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->lsq:Linfo/flowersoft/theotown/store/LightStoreQuery;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/LightStoreQuery;->clearTextureCache()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 516
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public onBack()V
    .registers 2

    .line 674
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 675
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->onBack()V

    return-void

    .line 676
    :cond_a
    iget v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentCategoryId:I

    if-eqz v0, :cond_14

    .line 677
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/store/StoreStage;->changeMode(Linfo/flowersoft/theotown/store/StoreMode;)V

    return-void

    .line 678
    :cond_14
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentAuthor:Linfo/flowersoft/theotown/store/StorePlugin;

    if-eqz v0, :cond_1e

    .line 679
    sget-object v0, Linfo/flowersoft/theotown/store/StoreMode;->EXPLORE:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/store/StoreStage;->changeMode(Linfo/flowersoft/theotown/store/StoreMode;)V

    return-void

    .line 681
    :cond_1e
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->showRestartDialogOrExit()V

    return-void
.end method

.method public declared-synchronized onUpdate()V
    .registers 10

    monitor-enter p0

    .line 482
    :try_start_1
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawBackground()V

    .line 484
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 485
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0x28

    invoke-virtual {v0, v1, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 486
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v0

    int-to-float v7, v0

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 487
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 488
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 490
    :goto_37
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->postponedTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4e

    .line 491
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->postponedTasks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_37

    :catchall_4c
    move-exception v0

    goto :goto_58

    .line 493
    :cond_4e
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->expandList()V

    .line 495
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->header:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V
    :try_end_56
    .catchall {:try_start_1 .. :try_end_56} :catchall_4c

    .line 496
    monitor-exit p0

    return-void

    :goto_58
    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_4c

    throw v0
.end method

.method public planToShowMissingPlugins(Ljava/util/List;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage;->missingPlugins:Ljava/util/List;

    .line 141
    iput-object p2, p0, Linfo/flowersoft/theotown/store/StoreStage;->missingPluginsHint:Ljava/lang/String;

    .line 142
    sget-object p1, Linfo/flowersoft/theotown/store/StoreMode;->MISSING:Linfo/flowersoft/theotown/store/StoreMode;

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    return-void
.end method

.method public declared-synchronized prepare()V
    .registers 3

    monitor-enter p0

    .line 177
    :try_start_1
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->prepare()V

    .line 179
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getInstance()Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->getLuaStorage()Lvm2/LuaTable;

    move-result-object v0

    const-string v1, "dOrFeEgVFK71f54k"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->optboolean(Z)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 180
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    goto :goto_23

    :catchall_21
    move-exception v0

    goto :goto_25

    .line 181
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_21

    throw v0
.end method

.method public final declared-synchronized rebuild(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 533
    :try_start_2
    iput-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->lastPlugins:Ljava/util/List;

    .line 534
    iput-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->lastCategories:Ljava/util/List;

    .line 536
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->postponedTasks:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda5;-><init>(Linfo/flowersoft/theotown/store/StoreStage;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    .line 548
    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public final declared-synchronized rebuild(Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/StorePlugin;",
            ">;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/StoreCategory;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 551
    :try_start_1
    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage;->lastPlugins:Ljava/util/List;

    .line 552
    iput-object p2, p0, Linfo/flowersoft/theotown/store/StoreStage;->lastCategories:Ljava/util/List;

    .line 554
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->postponedTasks:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p2, p1}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda14;-><init>(Linfo/flowersoft/theotown/store/StoreStage;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 620
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public final requiresRestart()Z
    .registers 2

    .line 466
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->requiresRestart()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {}, Linfo/flowersoft/theotown/store/PluginUnloader;->getInstance()Linfo/flowersoft/theotown/store/PluginUnloader;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/PluginUnloader;->requiresRestart()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    return v0

    :cond_15
    :goto_15
    const/4 v0, 0x1

    return v0
.end method

.method public search()V
    .registers 1

    .line 305
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->showSearchDialog()V

    return-void
.end method

.method public final showPluginsById(Lio/blueflower/stapel2d/util/IntList;ILjava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/IntList;",
            "I",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/StorePlugin;",
            ">;)V"
        }
    .end annotation

    .line 762
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    new-instance v1, Linfo/flowersoft/theotown/store/StoreStage$4;

    invoke-direct {v1, p0, p2, p1, p3}, Linfo/flowersoft/theotown/store/StoreStage$4;-><init>(Linfo/flowersoft/theotown/store/StoreStage;ILio/blueflower/stapel2d/util/IntList;Ljava/util/List;)V

    iget-object v2, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    mul-int/lit8 v6, p2, 0x14

    const/16 v7, 0x14

    const-string v4, ""

    const/4 v5, 0x1

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->fetchStore(Linfo/flowersoft/theotown/backend/ResponseHandler;Linfo/flowersoft/theotown/store/StoreMode;Lio/blueflower/stapel2d/util/IntList;Ljava/lang/String;ZII)V

    return-void
.end method

.method public final showPluginsByInfo(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/StorePlugin;",
            ">;I)V"
        }
    .end annotation

    .line 780
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    const/4 v1, 0x0

    .line 781
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/store/StorePlugin;->getPluginId()I

    move-result v2

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    const/4 v1, 0x0

    .line 783
    invoke-virtual {p0, p1, v1}, Linfo/flowersoft/theotown/store/StoreStage;->rebuild(Ljava/util/List;Ljava/util/List;)V

    .line 784
    invoke-virtual {p0, v0, p2, p1}, Linfo/flowersoft/theotown/store/StoreStage;->showPluginsById(Lio/blueflower/stapel2d/util/IntList;ILjava/util/List;)V

    return-void
.end method

.method public final showRestartDialog(Ljava/lang/Runnable;)V
    .registers 9

    .line 430
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    iget v1, p0, Linfo/flowersoft/theotown/store/StoreStage;->RESTART_FRAME:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x393

    .line 431
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x384

    .line 432
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 434
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x372

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_29

    move v5, v4

    goto :goto_2a

    :cond_29
    move v5, v3

    :goto_2a
    new-instance v6, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda15;

    invoke-direct {v6, p1}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda15;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2, v5, v6}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 439
    iget p1, p0, Linfo/flowersoft/theotown/store/StoreStage;->RESTART_FRAME:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x72c

    .line 441
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda16;-><init>(Linfo/flowersoft/theotown/store/StoreStage;)V

    .line 439
    invoke-virtual {v0, p1, v1, v3, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    .line 452
    invoke-virtual {p1, v4}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 453
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 454
    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final showRestartDialogOrExit()V
    .registers 2

    .line 458
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->requiresRestart()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 459
    new-instance v0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/store/StoreStage;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/store/StoreStage;->showRestartDialog(Ljava/lang/Runnable;)V

    return-void

    .line 461
    :cond_f
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

.method public final showSearchDialog()V
    .registers 6

    .line 419
    new-instance v0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;)V

    .line 420
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x1c1

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOkText(Ljava/lang/String;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 421
    new-instance v1, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda19;-><init>(Linfo/flowersoft/theotown/store/StoreStage;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnOk(Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 422
    new-instance v1, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda20;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setFilter(Lio/blueflower/stapel2d/util/Predicate;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 423
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xb8e

    .line 424
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x56b

    .line 425
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentSearch:Ljava/lang/String;

    .line 423
    invoke-virtual {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 426
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final sortDownloadedPluginsByDownloadTime(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/store/StorePlugin;",
            ">;)V"
        }
    .end annotation

    .line 344
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    return-void

    .line 346
    :cond_8
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->mpc:Linfo/flowersoft/theotown/store/ManagedPluginsController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getDownloadedPlugins()Ljava/util/List;

    move-result-object v0

    .line 347
    new-instance v1, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    const/4 v2, 0x0

    .line 349
    :goto_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 350
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/store/ManagedPluginFile;

    .line 351
    invoke-virtual {v3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v4

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 354
    :cond_2a
    new-instance v0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda6;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda6;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 525
    const-string v0, "Store"

    return-object v0
.end method

.method public final declared-synchronized visitAuthor(Linfo/flowersoft/theotown/store/StorePlugin;)V
    .registers 4

    monitor-enter p0

    .line 708
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentAuthor:Linfo/flowersoft/theotown/store/StorePlugin;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/StorePlugin;->getAuthorId()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/StorePlugin;->getAuthorId()I

    move-result v1

    if-eq v0, v1, :cond_15

    goto :goto_12

    :catchall_10
    move-exception p1

    goto :goto_20

    .line 709
    :cond_12
    :goto_12
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->clear()V

    .line 711
    :cond_15
    sget-object v0, Linfo/flowersoft/theotown/store/StoreMode;->USER:Linfo/flowersoft/theotown/store/StoreMode;

    iput-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    .line 712
    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentAuthor:Linfo/flowersoft/theotown/store/StorePlugin;

    .line 713
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->fetch()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_10

    .line 714
    monitor-exit p0

    return-void

    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_10

    throw p1
.end method

.method public final declared-synchronized visitCategory(Linfo/flowersoft/theotown/store/StoreCategory;)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_a

    .line 697
    :try_start_3
    invoke-virtual {p1}, Linfo/flowersoft/theotown/store/StoreCategory;->getCategoryId()I

    move-result v0

    goto :goto_b

    :catchall_8
    move-exception p1

    goto :goto_1f

    :cond_a
    const/4 v0, 0x0

    .line 698
    :goto_b
    iget v1, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentCategoryId:I

    if-eq v0, v1, :cond_12

    .line 699
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->clear()V

    .line 701
    :cond_12
    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->CATEGORY:Linfo/flowersoft/theotown/store/StoreMode;

    iput-object v1, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentMode:Linfo/flowersoft/theotown/store/StoreMode;

    .line 702
    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentCategory:Linfo/flowersoft/theotown/store/StoreCategory;

    .line 703
    iput v0, p0, Linfo/flowersoft/theotown/store/StoreStage;->currentCategoryId:I

    .line 704
    invoke-virtual {p0}, Linfo/flowersoft/theotown/store/StoreStage;->fetch()V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_8

    .line 705
    monitor-exit p0

    return-void

    :goto_1f
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_8

    throw p1
.end method

###### Class info.flowersoft.theotown.store.StoreStage.AnonymousClass1 (info.flowersoft.theotown.store.StoreStage$1)
.class public Linfo/flowersoft/theotown/store/StoreStage$1;
.super Ljava/lang/Object;
.source "StoreStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/store/StoreStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/backend/ResponseHandler<",
        "Linfo/flowersoft/theotown/util/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/StoreStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$1;->this$0:Linfo/flowersoft/theotown/store/StoreStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 3

    .line 85
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$1;->this$0:Linfo/flowersoft/theotown/store/StoreStage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/store/StoreStage;->access$300(Linfo/flowersoft/theotown/store/StoreStage;Ljava/lang/Exception;)V

    return-void
.end method

.method public handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4

    .line 80
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$1;->this$0:Linfo/flowersoft/theotown/store/StoreStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/StoreStage;->access$100(Linfo/flowersoft/theotown/store/StoreStage;)I

    move-result v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/store/StoreStage;->access$002(Linfo/flowersoft/theotown/store/StoreStage;I)I

    .line 81
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$1;->this$0:Linfo/flowersoft/theotown/store/StoreStage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/store/StoreStage;->access$200(Linfo/flowersoft/theotown/store/StoreStage;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 77
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/StoreStage$1;->handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage.AnonymousClass2 (info.flowersoft.theotown.store.StoreStage$2)
.class public Linfo/flowersoft/theotown/store/StoreStage$2;
.super Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;
.source "StoreStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/StoreStage;->buildPluginEntry(Linfo/flowersoft/theotown/store/PluginWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/StoreStage;

.field public final synthetic val$pluginEntry:Linfo/flowersoft/theotown/store/PluginEntry;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;Lio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/store/PluginEntry;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 626
    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$2;->this$0:Linfo/flowersoft/theotown/store/StoreStage;

    iput-object p3, p0, Linfo/flowersoft/theotown/store/StoreStage$2;->val$pluginEntry:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public getHeight(Z)I
    .registers 3

    .line 629
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$2;->val$pluginEntry:Linfo/flowersoft/theotown/store/PluginEntry;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/store/PluginEntry;->setSelected(Z)V

    .line 630
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->getHeight(Z)I

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.store.StoreStage.AnonymousClass3 (info.flowersoft.theotown.store.StoreStage$3)
.class public Linfo/flowersoft/theotown/store/StoreStage$3;
.super Linfo/flowersoft/theotown/ui/listitem/SmoothHeightListItem;
.source "StoreStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/StoreStage;->buildPluginEntry(Linfo/flowersoft/theotown/store/PluginWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/StoreStage;

.field public final synthetic val$gli:Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;Ljava/lang/String;Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 637
    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$3;->this$0:Linfo/flowersoft/theotown/store/StoreStage;

    iput-object p3, p0, Linfo/flowersoft/theotown/store/StoreStage$3;->val$gli:Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/ui/listitem/SmoothHeightListItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 19

    .line 645
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$3;->this$0:Linfo/flowersoft/theotown/store/StoreStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/StoreStage;->access$400(Linfo/flowersoft/theotown/store/StoreStage;)Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-virtual {v0, v2, v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 646
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$3;->val$gli:Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->isVisible()Z

    move-result v0

    move-object/from16 v10, p7

    if-eqz v0, :cond_1d

    .line 647
    iget-object v0, v10, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 651
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 653
    :cond_1d
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$3;->this$0:Linfo/flowersoft/theotown/store/StoreStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/StoreStage;->access$500(Linfo/flowersoft/theotown/store/StoreStage;)Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 655
    iget-object v3, p0, Linfo/flowersoft/theotown/store/StoreStage$3;->val$gli:Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    return-void
.end method

.method public getTargetHeight(Z)I
    .registers 3

    .line 640
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$3;->val$gli:Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->getHeight(Z)I

    move-result p1

    return p1
.end method

.method public isVisible()Z
    .registers 2

    .line 663
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$3;->val$gli:Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onClick(II)V
    .registers 4

    .line 659
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$3;->val$gli:Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->onClick(II)V

    return-void
.end method

.method public setVisible(Z)V
    .registers 3

    .line 667
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$3;->val$gli:Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/gui/ListItem;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage.AnonymousClass4 (info.flowersoft.theotown.store.StoreStage$4)
.class public Linfo/flowersoft/theotown/store/StoreStage$4;
.super Ljava/lang/Object;
.source "StoreStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/store/StoreStage;->showPluginsById(Lio/blueflower/stapel2d/util/IntList;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/backend/ResponseHandler<",
        "Linfo/flowersoft/theotown/util/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/store/StoreStage;

.field public final synthetic val$chunk:I

.field public final synthetic val$existingPlugins:Ljava/util/List;

.field public final synthetic val$ids:Lio/blueflower/stapel2d/util/IntList;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;ILio/blueflower/stapel2d/util/IntList;Ljava/util/List;)V
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

    .line 762
    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$4;->this$0:Linfo/flowersoft/theotown/store/StoreStage;

    iput p2, p0, Linfo/flowersoft/theotown/store/StoreStage$4;->val$chunk:I

    iput-object p3, p0, Linfo/flowersoft/theotown/store/StoreStage$4;->val$ids:Lio/blueflower/stapel2d/util/IntList;

    iput-object p4, p0, Linfo/flowersoft/theotown/store/StoreStage$4;->val$existingPlugins:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .registers 3

    .line 770
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$4;->this$0:Linfo/flowersoft/theotown/store/StoreStage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/store/StoreStage;->access$300(Linfo/flowersoft/theotown/store/StoreStage;Ljava/lang/Exception;)V

    return-void
.end method

.method public handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 765
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$4;->this$0:Linfo/flowersoft/theotown/store/StoreStage;

    iget v1, p0, Linfo/flowersoft/theotown/store/StoreStage$4;->val$chunk:I

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/store/StoreStage;->access$002(Linfo/flowersoft/theotown/store/StoreStage;I)I

    .line 766
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$4;->this$0:Linfo/flowersoft/theotown/store/StoreStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StoreStage$4;->val$ids:Lio/blueflower/stapel2d/util/IntList;

    iget-object v2, p0, Linfo/flowersoft/theotown/store/StoreStage$4;->val$existingPlugins:Ljava/util/List;

    invoke-static {v0, p1, v1, v2}, Linfo/flowersoft/theotown/store/StoreStage;->access$600(Linfo/flowersoft/theotown/store/StoreStage;Linfo/flowersoft/theotown/util/json/JSONObject;Lio/blueflower/stapel2d/util/IntList;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic handle(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 762
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/store/StoreStage$4;->handle(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage.AnonymousClass5 (info.flowersoft.theotown.store.StoreStage$5)
.class public synthetic Linfo/flowersoft/theotown/store/StoreStage$5;
.super Ljava/lang/Object;
.source "StoreStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/store/StoreStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$info$flowersoft$theotown$store$StoreMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 749
    invoke-static {}, Linfo/flowersoft/theotown/store/StoreMode;->values()[Linfo/flowersoft/theotown/store/StoreMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Linfo/flowersoft/theotown/store/StoreStage$5;->$SwitchMap$info$flowersoft$theotown$store$StoreMode:[I

    :try_start_9
    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->LOCAL:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Linfo/flowersoft/theotown/store/StoreStage$5;->$SwitchMap$info$flowersoft$theotown$store$StoreMode:[I

    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->INSTALLED:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Linfo/flowersoft/theotown/store/StoreStage$5;->$SwitchMap$info$flowersoft$theotown$store$StoreMode:[I

    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->ACTIVE:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Linfo/flowersoft/theotown/store/StoreStage$5;->$SwitchMap$info$flowersoft$theotown$store$StoreMode:[I

    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->INACTIVE:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Linfo/flowersoft/theotown/store/StoreStage$5;->$SwitchMap$info$flowersoft$theotown$store$StoreMode:[I

    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->ERROR:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Linfo/flowersoft/theotown/store/StoreStage$5;->$SwitchMap$info$flowersoft$theotown$store$StoreMode:[I

    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->EXPLORE:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Linfo/flowersoft/theotown/store/StoreStage$5;->$SwitchMap$info$flowersoft$theotown$store$StoreMode:[I

    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->FEATURED:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Linfo/flowersoft/theotown/store/StoreStage$5;->$SwitchMap$info$flowersoft$theotown$store$StoreMode:[I

    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->BEST_RATED:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Linfo/flowersoft/theotown/store/StoreStage$5;->$SwitchMap$info$flowersoft$theotown$store$StoreMode:[I

    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->CERTIFIED_CREATORS:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Linfo/flowersoft/theotown/store/StoreStage$5;->$SwitchMap$info$flowersoft$theotown$store$StoreMode:[I

    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->NEW:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Linfo/flowersoft/theotown/store/StoreStage$5;->$SwitchMap$info$flowersoft$theotown$store$StoreMode:[I

    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->COMMENTED:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Linfo/flowersoft/theotown/store/StoreStage$5;->$SwitchMap$info$flowersoft$theotown$store$StoreMode:[I

    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->CATEGORY:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v0, Linfo/flowersoft/theotown/store/StoreStage$5;->$SwitchMap$info$flowersoft$theotown$store$StoreMode:[I

    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->USER:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v0, Linfo/flowersoft/theotown/store/StoreStage$5;->$SwitchMap$info$flowersoft$theotown$store$StoreMode:[I

    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->SEARCH:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v0, Linfo/flowersoft/theotown/store/StoreStage$5;->$SwitchMap$info$flowersoft$theotown$store$StoreMode:[I

    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->PREV_INSTALLED:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b4
    sget-object v0, Linfo/flowersoft/theotown/store/StoreStage$5;->$SwitchMap$info$flowersoft$theotown$store$StoreMode:[I

    sget-object v1, Linfo/flowersoft/theotown/store/StoreMode;->MISSING:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    :catch_c0
    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$-nSvO-WB46w0yzwhm3rl9f2r2no(Linfo/flowersoft/theotown/store/StoreStage;Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda1 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    check-cast p1, Linfo/flowersoft/theotown/store/StoreCategory;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$mGe5I3nGXTVD-PhXGkIw_FdVQnQ(Linfo/flowersoft/theotown/store/StoreStage;Linfo/flowersoft/theotown/store/StoreCategory;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda10 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda10)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$M0ApFTyWK-WeQhy1j4aQQUayYpA(Linfo/flowersoft/theotown/store/StoreStage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda11 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda11)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda11;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda11;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$0Uk44QM1DP7hR-2jKfp4CBHMMBU(Linfo/flowersoft/theotown/store/StoreStage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda12 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda12)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda12;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda12;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$EZqHl016p2ttBpi-j69z-TDKZWk(Linfo/flowersoft/theotown/store/StoreStage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda13 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda13)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda13;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda13;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$yzyaVjtLSLEI31Z9FpCTTSOhB54(Linfo/flowersoft/theotown/store/StoreStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda14 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda14)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;Ljava/util/List;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda14;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda14;->f$1:Ljava/util/List;

    iput-object p3, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda14;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda14;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda14;->f$1:Ljava/util/List;

    iget-object v2, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda14;->f$2:Ljava/util/List;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$D5ZNcdNvLCqBobhFGkRSPYTJKA4(Linfo/flowersoft/theotown/store/StoreStage;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda15 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda15)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Runnable;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$1OpILAD6XXb1H4_wmMwHTmx1x-A(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda16 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda16)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda16;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda16;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$Wp4ajYqTrTput-07RW11B580K2c(Linfo/flowersoft/theotown/store/StoreStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda17 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda17)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda17;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda17;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$xivPJ9XN3pf9P7t3bRGQnJv63pI(Linfo/flowersoft/theotown/store/StoreStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda18 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda18)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda18;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda18;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$fBixrlYeDVqshyQZT-KVn0tCfMc(Linfo/flowersoft/theotown/store/StoreStage;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda19 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda19)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda19;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda19;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$oNopvgP0s-WfwF6pj1ED5tPyKzI(Linfo/flowersoft/theotown/store/StoreStage;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda2 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$-Mh46LUc_mp5CEw_3v66QQ-L5cs(Linfo/flowersoft/theotown/store/StoreStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda20 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda20)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$QL2EGxRMv9y4BZOpDfQTikv1jT8(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda21 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda21)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/store/StoreCategory;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;Linfo/flowersoft/theotown/store/StoreCategory;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda21;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda21;->f$1:Linfo/flowersoft/theotown/store/StoreCategory;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda21;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda21;->f$1:Linfo/flowersoft/theotown/store/StoreCategory;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$btGrxZ65Ya0HYBNi1rRBjijsri8(Linfo/flowersoft/theotown/store/StoreStage;Linfo/flowersoft/theotown/store/StoreCategory;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda22 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda22)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda22;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda22;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda22;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda22;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$qk1FCsjfvskqk4E48frnMrFaVeY(Linfo/flowersoft/theotown/store/StoreStage;Ljava/util/List;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda23 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda23)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/store/StoreMode;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;Linfo/flowersoft/theotown/store/StoreMode;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda23;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda23;->f$1:Linfo/flowersoft/theotown/store/StoreMode;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda23;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda23;->f$1:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$bE2ETjUhzp715SdfQIgt96YybPs(Linfo/flowersoft/theotown/store/StoreStage;Linfo/flowersoft/theotown/store/StoreMode;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda24 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda24)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/store/StoreMode;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;Linfo/flowersoft/theotown/store/StoreMode;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda24;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda24;->f$1:Linfo/flowersoft/theotown/store/StoreMode;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda24;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda24;->f$1:Linfo/flowersoft/theotown/store/StoreMode;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$qJal9AcTkIRpNEDCDZY0JEhheW4(Linfo/flowersoft/theotown/store/StoreStage;Linfo/flowersoft/theotown/store/StoreMode;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda25 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda25)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Linfo/flowersoft/theotown/ui/Dialog;

    invoke-static {p1}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$hYAEabIZSDSymTFtZo2OCZAeRsY(Linfo/flowersoft/theotown/ui/Dialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda26 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda26)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda26;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda26;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$3joIu7WgIz8Nz11Rk2MhCZzzedY(Linfo/flowersoft/theotown/store/StoreStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda28 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda28)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda28;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda28;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$fTZ3QhT9Xi_YxumyKUs36MBWQpU(Linfo/flowersoft/theotown/store/StoreStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda27 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda27)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda27;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda27;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$-iVU3EJzr3KEnesCxgItT_3Njc4(Linfo/flowersoft/theotown/store/StoreStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda3 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    check-cast p1, Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$ISHmvhmKRmYkfWi_eYrUHNdUy-k(Linfo/flowersoft/theotown/store/StoreStage;Linfo/flowersoft/theotown/store/StorePlugin;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda4 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$f_XLX-59LE01i2zBMhP20VSe1SM(Linfo/flowersoft/theotown/store/StoreStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda5 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda5;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda5;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$7udQnh_Cey77PBGWz5wMWoOy4I4(Linfo/flowersoft/theotown/store/StoreStage;Ljava/util/List;)V

    return-void
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda6 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lcom/badlogic/gdx/utils/IntMap;


# direct methods
.method public synthetic constructor <init>(Lcom/badlogic/gdx/utils/IntMap;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda6;->f$0:Lcom/badlogic/gdx/utils/IntMap;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda6;->f$0:Lcom/badlogic/gdx/utils/IntMap;

    check-cast p1, Linfo/flowersoft/theotown/store/StorePlugin;

    check-cast p2, Linfo/flowersoft/theotown/store/StorePlugin;

    invoke-static {v0, p1, p2}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$OjO5hCdEbJCiJrUrq7lSWN7nLvs(Lcom/badlogic/gdx/utils/IntMap;Linfo/flowersoft/theotown/store/StorePlugin;Linfo/flowersoft/theotown/store/StorePlugin;)I

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda7 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$NxRRab_Cvc-102fByyfRRYbo1Xc(Linfo/flowersoft/theotown/store/StoreStage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda8 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda8)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$YqItHqdGRZ8vNu16gIH0sEYjR8k(Linfo/flowersoft/theotown/store/StoreStage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda9 (info.flowersoft.theotown.store.StoreStage$$ExternalSyntheticLambda9)
.class public final synthetic Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/store/StoreStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/store/StoreStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda9;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/store/StoreStage$$ExternalSyntheticLambda9;->f$0:Linfo/flowersoft/theotown/store/StoreStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/store/StoreStage;->$r8$lambda$ef-YzzLVTUtDZpMo0IC1dyLhZts(Linfo/flowersoft/theotown/store/StoreStage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
