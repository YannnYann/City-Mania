###### Class info.flowersoft.theotown.stages.FilesStage (info.flowersoft.theotown.stages.FilesStage)
.class public Linfo/flowersoft/theotown/stages/FilesStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "FilesStage.java"


# instance fields
.field public RESTART_FRAME:I

.field public final alwaysHiddenFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public displayedPath:Ljava/lang/String;

.field public final hiddenFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final history:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public listBox:Lio/blueflower/stapel2d/gui/ListBox;

.field public modificationCounter:I

.field public final rootFile:Ljava/io/File;

.field public showHiddenFiles:Z

.field public final yScrolling:Lio/blueflower/stapel2d/util/IntList;


# direct methods
.method public static synthetic $r8$lambda$2wRZGYrwCog5Kqoyyw9uf61U4Qc(Ljava/io/File;)V
    .registers 2

    .line 553
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0, p0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showFile(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$32ZQLo0up-5uMYh_ARIgrzUd0Gg(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;)V
    .registers 2

    .line 353
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/FilesStage;->exportFile(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3J2F3YWzy8eN8fOKIldpVT6XsY0(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 3

    .line 676
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->history:Ljava/util/List;

    .line 676
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/FilesStage;->importFolder(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7PjrnM5UFh0dhouJZS3JSgkB-4A(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 3

    .line 639
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->city:Linfo/flowersoft/theotown/city/City;

    if-eqz v0, :cond_12

    .line 640
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getController()Linfo/flowersoft/theotown/city/CityController;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda24;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;)V

    const/4 p0, 0x1

    invoke-interface {v0, p0, v1}, Linfo/flowersoft/theotown/city/CityController;->save(ZLjava/lang/Runnable;)V

    return-void

    .line 642
    :cond_12
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->requestRestart()V

    return-void
.end method

.method public static synthetic $r8$lambda$9Ie45m8fyiUl446W2AzQY7jmPf8(Ljava/lang/String;)V
    .registers 2

    .line 585
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getClipboard()Lcom/badlogic/gdx/utils/Clipboard;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/utils/Clipboard;->setContents(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BAiQeBzZ1vTsk9zkNAfGQcM58kQ(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 198
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 201
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p2, 0xd8b

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x69f

    .line 202
    invoke-interface {p2, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 201
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/stages/FilesStage;->showError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 204
    :cond_3c
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_46

    .line 205
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_4c

    .line 207
    :cond_46
    invoke-static {p1, v0}, Linfo/flowersoft/theotown/util/Files;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 208
    invoke-static {p1}, Linfo/flowersoft/theotown/util/Files;->deleteFile(Ljava/io/File;)Z

    .line 210
    :goto_4c
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/FilesStage;->rebuildFolder()V

    .line 211
    iget p1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->modificationCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->modificationCounter:I

    :cond_55
    return-void
.end method

.method public static synthetic $r8$lambda$B_05WA5rBGnQRjIkhGW99f2LJsw(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/FilesStage;->showHelp()V

    return-void
.end method

.method public static synthetic $r8$lambda$CKgQYOCxtzokhUYVxT3OUnR934Q(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;Ljava/lang/String;)V
    .registers 8

    .line 346
    new-instance v0, Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 346
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    .line 346
    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/PopupBuilder;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 347
    sget v1, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->sourceX:I

    sget v2, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->sourceY:I

    sget v3, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->sourceW:I

    sget v4, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->sourceH:I

    invoke-virtual {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/PopupBuilder;->setSource(IIII)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 350
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->canImportAndExportFolder()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 351
    :cond_20
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_LEVEL_UP:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xa97

    .line 352
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda25;

    invoke-direct {v3, p0, p1}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda25;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;)V

    .line 351
    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 356
    :cond_32
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_EDIT:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x470

    .line 357
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda26;

    invoke-direct {v3, p0, p1}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda26;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;)V

    .line 356
    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 360
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x28e

    .line 361
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda27;

    invoke-direct {v3, p0, p1, p2}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda27;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 364
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->build()Lio/blueflower/stapel2d/gui/Panel;

    return-void
.end method

.method public static synthetic $r8$lambda$GNoKKuIr4wFAw42SFtAqaiXlp3Y(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 1

    .line 640
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 640
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->requestRestart()V

    return-void
.end method

.method public static synthetic $r8$lambda$GU6deDr2Mwh1UEKP2sIEUWEa-2o(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;)V
    .registers 2

    .line 358
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/FilesStage;->renameFile(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JgEGhWDrF4J9BD5CFTToGWMUmbg(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 3

    .line 674
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->history:Ljava/util/List;

    .line 674
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/FilesStage;->importFile(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MXlTIQ_Dgqg7AB_8yEGVkYULQkY(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 1

    .line 687
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    .line 687
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

.method public static synthetic $r8$lambda$NW5G6RxPkOaMVd8Rv3ml2OcR1Vg(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;)V
    .registers 2

    .line 399
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/FilesStage;->enterSubFolder(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PbdtTLjcdqJY1zo3bviqoxdFl4c(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 2

    const/4 v0, 0x1

    .line 163
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/FilesStage;->planRebuild(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$PvJFE9vsT1iFV3Ru7jvnY1hVEVw(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/FilesStage;->isValidFileName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Qs1ZiKrW4lp39tcft97lw88f9BM(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;Linfo/flowersoft/theotown/stages/FileType;)V
    .registers 3

    .line 415
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/stages/FilesStage;->openFile(Ljava/io/File;Linfo/flowersoft/theotown/stages/FileType;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SnKOZNR5L6auWyEy2tBd6NQq0BA(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/FilesStage;->rebuildFolder()V

    return-void
.end method

.method public static synthetic $r8$lambda$Uc3efA2U15yoqmJvoprnaJCFPsE(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 2

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/FilesStage;->planRebuild(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y9WI_4G3ODo_RLbZGY6dw0_8ed0(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/lang/String;)Z
    .registers 2

    .line 195
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/FilesStage;->isValidFileName(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_3I-ow3r_EyBcK7XgB90C4ZX11c(Ljava/lang/Runnable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 631
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method public static synthetic $r8$lambda$auNxOarE1NEL6hOapVRHjhFrN80(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 2

    .line 603
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->showHiddenFiles:Z

    xor-int/lit8 v0, v0, 0x1

    .line 603
    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->showHiddenFiles:Z

    .line 604
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/FilesStage;->rebuildFolder()V

    return-void
.end method

.method public static synthetic $r8$lambda$dYvwZXaKtwR85NR8Ihg2DRRbnp4(Linfo/flowersoft/theotown/stages/FilesStage;Lio/blueflower/stapel2d/drawing/Texture;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 3

    .line 557
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 557
    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->releaseTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    .line 558
    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    return-void
.end method

.method public static synthetic $r8$lambda$enrJ2U587Hs1c6_K-PTJ5Bi5LKM(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    invoke-static {p1}, Linfo/flowersoft/theotown/util/Files;->deleteFile(Ljava/io/File;)Z

    .line 228
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/FilesStage;->rebuildFolder()V

    .line 229
    iget p1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->modificationCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->modificationCounter:I

    return-void
.end method

.method public static synthetic $r8$lambda$gJbZ2XrIGwks8DZIWLIoKIoP_ME(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 1

    .line 706
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    .line 706
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

.method public static synthetic $r8$lambda$hSkNo946ujWN0kSp1vl6QhocVf8(Ljava/io/File;Ljava/io/File;)I
    .registers 6

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-string v2, "f"

    const-string v3, "d"

    if-eqz v1, :cond_11

    move-object v1, v3

    goto :goto_12

    :cond_11
    move-object v1, v2

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2c

    move-object v2, v3

    :cond_2c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$irko4v0aBrtOnC3Jzfybkr-pizM(Ljava/io/File;)V
    .registers 2

    .line 591
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0, p0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showFile(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nd-hPjkbhFE0kvWlMk570zL_58g(Linfo/flowersoft/theotown/stages/FilesStage;[Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 673
    new-instance v0, Linfo/flowersoft/theotown/ui/PopupBuilder;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/ui/PopupBuilder;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 674
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_COPY:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x7fb

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda15;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;)V

    invoke-virtual {v0, p1, v1, v2}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 675
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->canImportAndExportFolder()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 676
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_FOLDER:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x2d9

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda16;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;)V

    invoke-virtual {v0, p1, v1, v2}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 678
    :cond_37
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->build()Lio/blueflower/stapel2d/gui/Panel;

    return-void
.end method

.method public static synthetic $r8$lambda$rJrch4fHelGLG9ijSJUsh1LXdw0(Linfo/flowersoft/theotown/stages/FilesStage;[Linfo/flowersoft/theotown/ui/IconButton;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 682
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/FilesStage;->showSettingsMenu(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rQUNC_CPeXhUKLBFs1ZEIejajZc(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    .line 176
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/stages/FilesStage;->isValidFileName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 177
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 179
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v0, 0x891

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x27e

    .line 180
    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 179
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/stages/FilesStage;->showError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 182
    :cond_2d
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 183
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/FilesStage;->rebuildFolder()V

    :cond_33
    return-void
.end method

.method public static synthetic $r8$lambda$rmkMBcm1d3wCBr8V4umwato4mOo(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 2

    const/4 v0, 0x1

    .line 159
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/FilesStage;->planRebuild(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$sU1R0Z2FRwNp409FC44qOJ4y7N8(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    .line 362
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/stages/FilesStage;->removeFile(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wJs5uymEen1Ly6Z8ibn-7qDvQzc(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 3

    .line 669
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->history:Ljava/util/List;

    .line 669
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/FilesStage;->createFolder(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zfpX1xRZ2L0wCbtG_4b5rn2KY64(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/FilesStage;->goUp()V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V
    .registers 6

    .line 80
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->showHiddenFiles:Z

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->history:Ljava/util/List;

    .line 63
    new-instance p1, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {p1}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->yScrolling:Lio/blueflower/stapel2d/util/IntList;

    .line 65
    new-instance p1, Ljava/util/HashSet;

    const-string v0, "TheoTown/managed plugins"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->hiddenFiles:Ljava/util/Set;

    .line 68
    new-instance p1, Ljava/util/HashSet;

    const-string v0, "TheoTown/.pmodext"

    const-string v1, "TheoTown/.runtime"

    const-string v2, "TheoTown/.migrated.txt"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->alwaysHiddenFiles:Ljava/util/Set;

    .line 74
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_DIR:Ljava/io/File;

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->rootFile:Ljava/io/File;

    .line 81
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/FilesStage;->city:Linfo/flowersoft/theotown/city/City;

    .line 83
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/FilesStage;->navigateTo(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/io/File;Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 87
    invoke-direct {p0, p1, p3}, Linfo/flowersoft/theotown/stages/FilesStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V

    .line 89
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/stages/FilesStage;->navigateTo(Ljava/io/File;)V

    return-void
.end method

.method public static getIcon()I
    .registers 1

    .line 55
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_FOLDER:I

    return v0
.end method

.method private requiresRestart()Z
    .registers 2

    .line 651
    iget v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->modificationCounter:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private showRestartDialog(Ljava/lang/Runnable;)V
    .registers 9

    .line 625
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    iget v1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->RESTART_FRAME:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xae5

    .line 626
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x384

    .line 627
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 629
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x116

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
    new-instance v6, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda13;

    invoke-direct {v6, p1}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2, v5, v6}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 634
    iget p1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->RESTART_FRAME:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x809

    .line 636
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda14;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;)V

    .line 634
    invoke-virtual {v0, p1, v1, v3, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    .line 645
    invoke-virtual {p1, v4}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    const/16 v1, 0x42

    .line 646
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 647
    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public final buildDisplayedPath()V
    .registers 4

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 134
    :goto_6
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/FilesStage;->history:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    if-nez v1, :cond_16

    .line 136
    const-string v2, "TheoTown"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    .line 138
    :cond_16
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/FilesStage;->history:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :goto_25
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/FilesStage;->history:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_34

    .line 142
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 146
    :cond_37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->displayedPath:Ljava/lang/String;

    return-void
.end method

.method public final buildFileActions(Linfo/flowersoft/theotown/ui/listitem/ActionListItem;Ljava/io/File;Ljava/lang/String;)V
    .registers 7

    .line 343
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_HAMBURGER:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x88f

    .line 344
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, p2, p3}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda17;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1, v0, v1, v2}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final buildFileItem(Ljava/io/File;)Linfo/flowersoft/theotown/ui/listitem/ActionListItem;
    .registers 8

    .line 405
    new-instance v0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;-><init>(Lio/blueflower/stapel2d/gui/ListBox;)V

    .line 407
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-static {v1}, Linfo/flowersoft/theotown/stages/FileType;->resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/stages/FileType;

    move-result-object v2

    .line 410
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setTitle(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v2}, Linfo/flowersoft/theotown/stages/FileType;->getIcon()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Linfo/flowersoft/theotown/stages/FilesStage;->buildIcon(II)Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setIcon(Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Icon;)V

    .line 412
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xacc

    invoke-interface {v1, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 413
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Linfo/flowersoft/theotown/util/Localizer;->localizeFileSize(Lio/blueflower/stapel2d/gamestack/Translator;J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 412
    invoke-static {v1, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setSubTitle(Ljava/lang/String;)V

    .line 414
    new-instance v1, Lio/blueflower/stapel2d/util/StaticGetter;

    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, v3}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setSubTitleColor(Lio/blueflower/stapel2d/util/Getter;)V

    .line 415
    new-instance v1, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, v2}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda7;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;Linfo/flowersoft/theotown/stages/FileType;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setBackgroundAction(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final buildFolder()V
    .registers 7

    .line 276
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->removeAllItems()V

    .line 278
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/FilesStage;->collectCurrentFiles()Ljava/util/List;

    move-result-object v0

    .line 279
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/FilesStage;->buildHeaderItem(Ljava/util/List;)Linfo/flowersoft/theotown/ui/listitem/ActionListItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    const/4 v1, 0x0

    .line 281
    :goto_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_53

    .line 282
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 284
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 285
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/stages/FilesStage;->buildFolderItem(Ljava/io/File;)Linfo/flowersoft/theotown/ui/listitem/ActionListItem;

    move-result-object v3

    goto :goto_2e

    .line 287
    :cond_2a
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/stages/FilesStage;->buildFileItem(Ljava/io/File;)Linfo/flowersoft/theotown/ui/listitem/ActionListItem;

    move-result-object v3

    .line 289
    :goto_2e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/FilesStage;->displayedPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v2, v4}, Linfo/flowersoft/theotown/stages/FilesStage;->buildFileActions(Linfo/flowersoft/theotown/ui/listitem/ActionListItem;Ljava/io/File;Ljava/lang/String;)V

    .line 290
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/FilesStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 293
    :cond_53
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->yScrolling:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->setShiftY(F)V

    return-void
.end method

.method public final buildFolderItem(Ljava/io/File;)Linfo/flowersoft/theotown/ui/listitem/ActionListItem;
    .registers 6

    .line 369
    new-instance v0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;-><init>(Lio/blueflower/stapel2d/gui/ListBox;)V

    .line 372
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 374
    const-string v2, "/maps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_6f

    const-string v2, "/scenarios"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_6f

    .line 377
    :cond_1d
    const-string v2, "/regions"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6c

    const-string v2, ".*/regions/[^/]*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_6c

    .line 380
    :cond_2e
    const-string v2, "/music"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_69

    const-string v2, ".*/music/[^/]*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    goto :goto_69

    .line 383
    :cond_3f
    const-string v2, "/plugins"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    const-string v2, "/managed plugins"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    goto :goto_66

    .line 386
    :cond_50
    const-string v2, "/Screenshots"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_63

    const-string v2, "/pictures"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    goto :goto_63

    :cond_61
    move v1, v3

    goto :goto_71

    .line 387
    :cond_63
    :goto_63
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CAMERA:I

    goto :goto_71

    .line 384
    :cond_66
    :goto_66
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUGIN:I

    goto :goto_71

    .line 381
    :cond_69
    :goto_69
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_MUSIC:I

    goto :goto_71

    .line 378
    :cond_6c
    :goto_6c
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION:I

    goto :goto_71

    .line 375
    :cond_6f
    :goto_6f
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CITY:I

    .line 390
    :goto_71
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_78

    .line 391
    array-length v3, v2

    .line 393
    :cond_78
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setTitle(Ljava/lang/String;)V

    .line 394
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_FOLDER:I

    invoke-virtual {p0, v2, v1}, Linfo/flowersoft/theotown/stages/FilesStage;->buildIcon(II)Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setIcon(Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Icon;)V

    .line 395
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x7ab

    .line 396
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 397
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 395
    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setSubTitle(Ljava/lang/String;)V

    .line 398
    new-instance v1, Lio/blueflower/stapel2d/util/StaticGetter;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, v2}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setSubTitleColor(Lio/blueflower/stapel2d/util/Getter;)V

    .line 399
    new-instance v1, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda6;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setBackgroundAction(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public final buildHeaderItem(Ljava/util/List;)Linfo/flowersoft/theotown/ui/listitem/ActionListItem;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Linfo/flowersoft/theotown/ui/listitem/ActionListItem;"
        }
    .end annotation

    .line 322
    new-instance v0, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;-><init>(Lio/blueflower/stapel2d/gui/ListBox;)V

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/FilesStage;->displayedPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setTitle(Ljava/lang/String;)V

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x3cd

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xc22

    .line 326
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 325
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setSubTitle(Ljava/lang/String;)V

    .line 328
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    .line 329
    iget-object v1, p1, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->cBg:Lio/blueflower/stapel2d/drawing/Color;

    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v1, p1, v2}, Lio/blueflower/stapel2d/drawing/Color;->lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setBackground(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 331
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/FilesStage;->canGoUp()Z

    move-result p1

    if-eqz p1, :cond_8b

    .line 332
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_BACKWARD:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x970

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda8;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;)V

    invoke-virtual {v0, p1, v1, v2}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->addAction(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 333
    new-instance p1, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda8;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;)V

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/listitem/ActionListItem;->setBackgroundAction(Ljava/lang/Runnable;)V

    :cond_8b
    return-object v0
.end method

.method public final buildIcon(II)Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Icon;
    .registers 4

    .line 421
    new-instance v0, Linfo/flowersoft/theotown/stages/FilesStage$1;

    invoke-direct {v0, p0, p1, p2}, Linfo/flowersoft/theotown/stages/FilesStage$1;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;II)V

    return-object v0
.end method

.method public final canGoUp()Z
    .registers 3

    .line 318
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final collectCurrentFiles()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->history:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_99

    const/4 v2, 0x0

    .line 254
    :goto_1a
    array-length v3, v1

    if-ge v2, v3, :cond_99

    .line 255
    aget-object v3, v1, v2

    .line 256
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/FilesStage;->displayedPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 258
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_96

    const-string v7, ".."

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_96

    iget-boolean v7, p0, Linfo/flowersoft/theotown/stages/FilesStage;->showHiddenFiles:Z

    const-string v8, "*"

    if-nez v7, :cond_74

    .line 259
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_96

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/FilesStage;->hiddenFiles:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_96

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/FilesStage;->hiddenFiles:Ljava/util/Set;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_96

    :cond_74
    iget-object v6, p0, Linfo/flowersoft/theotown/stages/FilesStage;->alwaysHiddenFiles:Ljava/util/Set;

    .line 260
    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_96

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/FilesStage;->alwaysHiddenFiles:Ljava/util/Set;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_96

    .line 261
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 266
    :cond_99
    new-instance v1, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final createFolder(Ljava/io/File;)V
    .registers 6

    .line 173
    new-instance v0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;)V

    .line 174
    new-instance v1, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda11;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setFilter(Lio/blueflower/stapel2d/util/Predicate;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 175
    new-instance v1, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda12;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnOk(Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 187
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0xb57

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOkText(Ljava/lang/String;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 188
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_FOLDER:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xcee

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x201

    .line 189
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "New_Folder"

    .line 188
    invoke-virtual {v0, p1, v1, v2, v3}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 190
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public enter()V
    .registers 13

    .line 657
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 659
    const-string v0, "$anim_store_restart00"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->RESTART_FRAME:I

    .line 661
    new-instance v2, Linfo/flowersoft/theotown/ui/Page;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x8a6

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_FOLDER:I

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v2, v0, v3, v4, v5}, Linfo/flowersoft/theotown/ui/Page;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;ILio/blueflower/stapel2d/gui/Master;)V

    .line 663
    new-instance v6, Lio/blueflower/stapel2d/gui/ListBox;

    const/4 v10, 0x0

    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v11}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v6, p0, Linfo/flowersoft/theotown/stages/FilesStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    .line 664
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 666
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/FilesStage;->buildFolder()V

    .line 669
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUS:I

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xc49

    invoke-interface {v0, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    const/4 v0, 0x1

    .line 671
    new-array v8, v0, [Lio/blueflower/stapel2d/gui/Gadget;

    .line 672
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_LEVEL_DOWN:I

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x3b3

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, v8}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;[Lio/blueflower/stapel2d/gui/Gadget;)V

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v3

    aput-object v3, v8, v1

    .line 681
    new-array v0, v0, [Linfo/flowersoft/theotown/ui/IconButton;

    .line 682
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_MENU:I

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x913

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0, v0}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;[Linfo/flowersoft/theotown/ui/IconButton;)V

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v3

    aput-object v3, v0, v1

    .line 684
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_HELP:I

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x52c

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;)V

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 686
    new-instance v0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;)V

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/ui/Page;->setOnBackgroundClick(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final enterSubFolder(Ljava/io/File;)V
    .registers 5

    .line 302
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->yScrolling:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/FilesStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ListBox;->getShiftY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 303
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->yScrolling:Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 304
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->history:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/FilesStage;->buildDisplayedPath()V

    .line 306
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/FilesStage;->buildFolder()V

    return-void
.end method

.method public final exportFile(Ljava/io/File;)V
    .registers 5

    .line 155
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v1, Lcom/badlogic/gdx/files/FileHandle;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/io/File;)V

    new-instance p1, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda30;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda30;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->exportFile(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final goUp()V
    .registers 3

    .line 310
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->yScrolling:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->removeAt(I)I

    .line 313
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/FilesStage;->buildDisplayedPath()V

    .line 314
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/FilesStage;->buildFolder()V

    return-void
.end method

.method public final importFile(Ljava/io/File;)V
    .registers 5

    .line 159
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v1, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda20;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;)V

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->importFile(Ljava/io/File;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public final importFolder(Ljava/io/File;)V
    .registers 5

    .line 163
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v1, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda21;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;)V

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->importFile(Ljava/io/File;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public final isValidFileName(Ljava/lang/String;)Z
    .registers 4

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "\\"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, "."

    .line 168
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string v1, ".."

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "~"

    .line 169
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_46

    const/4 p1, 0x1

    return p1

    :cond_46
    const/4 p1, 0x0

    return p1
.end method

.method public leave()V
    .registers 4

    .line 693
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->leave()V

    .line 694
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->yScrolling:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 695
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->yScrolling:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/FilesStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ListBox;->getShiftY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    :cond_1d
    return-void
.end method

.method public final navigateTo(Ljava/io/File;)V
    .registers 9

    .line 98
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_a2

    .line 102
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 103
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 105
    :cond_e
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 107
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->history:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->yScrolling:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 109
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->history:Ljava/util/List;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->rootFile:Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->yScrolling:Lio/blueflower/stapel2d/util/IntList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 112
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->rootFile:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_38
    if-eqz p1, :cond_4e

    .line 115
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/FilesStage;->rootFile:Ljava/io/File;

    invoke-virtual {p1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 116
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    goto :goto_38

    :cond_4e
    if-eqz p1, :cond_7e

    .line 120
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_56
    if-ltz p1, :cond_7e

    .line 121
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/FilesStage;->history:Ljava/util/List;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/FilesStage;->history:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/FilesStage;->yScrolling:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_56

    .line 128
    :cond_7e
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/FilesStage;->buildDisplayedPath()V

    return-void

    .line 105
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :catch_a2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not resolve file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onBack()V
    .registers 2

    .line 701
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 702
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->onBack()V

    return-void

    .line 703
    :cond_a
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/FilesStage;->canGoUp()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 704
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/FilesStage;->goUp()V

    return-void

    .line 705
    :cond_14
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/FilesStage;->requiresRestart()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 706
    new-instance v0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda5;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;)V

    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/stages/FilesStage;->showRestartDialog(Ljava/lang/Runnable;)V

    return-void

    .line 708
    :cond_23
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->onBack()V

    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 714
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawBackground()V

    return-void
.end method

.method public final openFile(Ljava/io/File;Linfo/flowersoft/theotown/stages/FileType;)V
    .registers 4

    .line 443
    sget-object v0, Linfo/flowersoft/theotown/stages/FilesStage$3;->$SwitchMap$info$flowersoft$theotown$stages$FileType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_18

    const/4 v0, 0x2

    if-eq p2, v0, :cond_14

    .line 451
    sget-object p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {p2, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showFile(Ljava/io/File;)V

    return-void

    .line 448
    :cond_14
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/FilesStage;->showImageFile(Ljava/io/File;)V

    return-void

    .line 445
    :cond_18
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/FilesStage;->showTextFile(Ljava/io/File;)V

    return-void
.end method

.method public final planRebuild(Z)V
    .registers 2

    if-eqz p1, :cond_8

    .line 150
    iget p1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->modificationCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->modificationCounter:I

    .line 151
    :cond_8
    new-instance p1, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda28;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda28;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;)V

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final rebuildFolder()V
    .registers 4

    .line 297
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage;->yScrolling:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/FilesStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ListBox;->getShiftY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lio/blueflower/stapel2d/util/IntList;->set(II)V

    .line 298
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/FilesStage;->buildFolder()V

    return-void
.end method

.method public final removeFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 8

    .line 222
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x278

    .line 223
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x1ac

    .line 224
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v3, p2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, p2, v3}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 226
    sget p2, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x28e

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda29;

    invoke-direct {v2, p0, p1}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda29;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;)V

    invoke-virtual {v0, p2, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 231
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x5c5

    invoke-interface {p2, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 232
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    const/4 p1, 0x1

    .line 233
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final renameFile(Ljava/io/File;)V
    .registers 7

    .line 194
    new-instance v0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;)V

    .line 195
    new-instance v1, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda31;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda31;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setFilter(Lio/blueflower/stapel2d/util/Predicate;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 196
    new-instance v1, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda32;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnOk(Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 215
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_EDIT:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x470

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x62d

    .line 216
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 215
    invoke-virtual {v0, v1, v2, v3, p1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 218
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final showError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 239
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ALERT:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, p1, p2, v2}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 240
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x98f

    .line 242
    invoke-interface {p2, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 240
    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    const/4 p2, 0x1

    .line 244
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    const/16 v1, 0x42

    .line 245
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 246
    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final showHelp()V
    .registers 9

    .line 610
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_HELP:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/4 v7, 0x1

    invoke-interface {v2, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x12

    .line 611
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 612
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 614
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x98f

    .line 616
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 614
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    .line 618
    invoke-virtual {v1, v7}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    const/16 v2, 0x42

    .line 619
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 621
    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final showImageFile(Ljava/io/File;)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    .line 457
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x500000

    cmp-long v0, v2, v4

    if-lez v0, :cond_15

    .line 459
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0, v8}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showFile(Ljava/io/File;)V

    return-void

    .line 463
    :cond_15
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/PixmapUtil;->loadPAPixmap(Lcom/badlogic/gdx/files/FileHandle;I)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v9

    if-nez v9, :cond_2c

    .line 465
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0, v8}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showFile(Ljava/io/File;)V

    return-void

    .line 468
    :cond_2c
    new-instance v10, Lio/blueflower/stapel2d/drawing/Texture;

    new-instance v0, Lio/blueflower/stapel2d/drawing/StaticBitmapTextureSource;

    const/4 v2, 0x0

    invoke-direct {v0, v9, v2}, Lio/blueflower/stapel2d/drawing/StaticBitmapTextureSource;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Z)V

    invoke-direct {v10, v0}, Lio/blueflower/stapel2d/drawing/Texture;-><init>(Lio/blueflower/stapel2d/drawing/TextureSource;)V

    .line 469
    new-instance v7, Lio/blueflower/stapel2d/drawing/Image;

    invoke-direct {v7, v10}, Lio/blueflower/stapel2d/drawing/Image;-><init>(Lio/blueflower/stapel2d/drawing/Texture;)V

    .line 470
    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v7, v3, v3, v0, v2}, Lio/blueflower/stapel2d/drawing/Image;->addFrame(FFFF)I

    .line 472
    new-instance v11, Linfo/flowersoft/theotown/ui/Dialog;

    sget v12, Linfo/flowersoft/theotown/resources/Resources;->ICON_CAMERA:I

    .line 474
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x320

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v14, 0x0

    const/16 v15, 0x320

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v17}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 479
    new-instance v0, Linfo/flowersoft/theotown/stages/FilesStage$2;

    .line 481
    invoke-virtual {v11}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    .line 482
    invoke-virtual {v11}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    .line 483
    invoke-virtual {v11}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/FilesStage$2;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/drawing/Image;)V

    .line 539
    new-instance v12, Linfo/flowersoft/theotown/ui/ShadowedLabel;

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xa26

    .line 541
    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    .line 542
    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 543
    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 540
    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x14

    .line 545
    invoke-virtual {v11}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v18

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x64

    invoke-direct/range {v12 .. v18}, Linfo/flowersoft/theotown/ui/ShadowedLabel;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 546
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v12, v0}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 547
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v12, v0}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 549
    sget v12, Linfo/flowersoft/theotown/resources/Resources;->ICON_FORWARD:I

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x40f

    .line 551
    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v13

    new-instance v0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda18;

    invoke-direct {v0, v8}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda18;-><init>(Ljava/io/File;)V

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v17, v0

    .line 549
    invoke-virtual/range {v11 .. v17}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 555
    invoke-virtual {v11}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 556
    new-instance v0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda19;

    invoke-direct {v0, v1, v10, v9}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda19;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;Lio/blueflower/stapel2d/drawing/Texture;Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-virtual {v11, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setOnClose(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 561
    invoke-virtual {v11, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final showSettingsMenu(Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 5

    .line 599
    new-instance v0, Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/ui/PopupBuilder;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 600
    iget-boolean p1, p0, Linfo/flowersoft/theotown/stages/FilesStage;->showHiddenFiles:Z

    if-eqz p1, :cond_e

    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget p1, p1, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOn:I

    goto :goto_12

    :cond_e
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget p1, p1, Lio/blueflower/stapel2d/gui/Skin;->fCheckboxOff:I

    :goto_12
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x1b2

    .line 601
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda10;-><init>(Linfo/flowersoft/theotown/stages/FilesStage;)V

    .line 600
    invoke-virtual {v0, p1, v1, v2}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 606
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->build()Lio/blueflower/stapel2d/gui/Panel;

    return-void
.end method

.method public final showTextFile(Ljava/io/File;)V
    .registers 14

    .line 565
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x500000

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    .line 567
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showFile(Ljava/io/File;)V

    return-void

    .line 571
    :cond_11
    invoke-static {p1}, Linfo/flowersoft/theotown/util/Files;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 572
    new-instance v5, Linfo/flowersoft/theotown/ui/Dialog;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_NOTIFICATION:I

    .line 574
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x320

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    move-object v1, v5

    const/16 v5, 0x320

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 578
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getTextFrame()Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    move-result-object v0

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 579
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getTextFrame()Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setShowBorder(Z)V

    .line 581
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_COPY:I

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xd78

    .line 583
    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    new-instance v11, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda22;

    invoke-direct {v11, v4}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda22;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v1

    .line 581
    invoke-virtual/range {v5 .. v11}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 587
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_FORWARD:I

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x40f

    .line 589
    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    new-instance v11, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda23;

    invoke-direct {v11, p1}, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda23;-><init>(Ljava/io/File;)V

    const/4 v10, 0x1

    .line 587
    invoke-virtual/range {v5 .. v11}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 593
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 595
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 719
    const-string v0, "FileManagementStage"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.FilesStage.AnonymousClass1 (info.flowersoft.theotown.stages.FilesStage$1)
.class public Linfo/flowersoft/theotown/stages/FilesStage$1;
.super Ljava/lang/Object;
.source "FilesStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Icon;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/FilesStage;->buildIcon(II)Linfo/flowersoft/theotown/ui/listitem/ActionListItem$Icon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/FilesStage;

.field public final synthetic val$decoFrame:I

.field public final synthetic val$frame:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;II)V
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

    .line 421
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$1;->this$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iput p2, p0, Linfo/flowersoft/theotown/stages/FilesStage$1;->val$frame:I

    iput p3, p0, Linfo/flowersoft/theotown/stages/FilesStage$1;->val$decoFrame:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lio/blueflower/stapel2d/drawing/Engine;IIII)V
    .registers 16

    .line 430
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    int-to-float v5, p5

    iget v6, p0, Linfo/flowersoft/theotown/stages/FilesStage$1;->val$frame:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 431
    iget v9, p0, Linfo/flowersoft/theotown/stages/FilesStage$1;->val$decoFrame:I

    if-eqz v9, :cond_1f

    .line 432
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    int-to-float v5, p2

    int-to-float v7, p4

    div-int/lit8 p5, p5, 0x2

    int-to-float v8, p5

    move v6, v3

    move-object v3, v0

    invoke-virtual/range {v3 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    :cond_1f
    return-void
.end method

.method public getHeight()I
    .registers 2

    .line 0
    const/16 v0, 0x1a

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 0
    const/16 v0, 0x1a

    return v0
.end method

###### Class info.flowersoft.theotown.stages.FilesStage.AnonymousClass2 (info.flowersoft.theotown.stages.FilesStage$2)
.class public Linfo/flowersoft/theotown/stages/FilesStage$2;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "FilesStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/FilesStage;->showImageFile(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/FilesStage;

.field public final synthetic val$image:Lio/blueflower/stapel2d/drawing/Image;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/drawing/Image;)V
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

    .line 483
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$2;->this$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/FilesStage$2;->val$image:Lio/blueflower/stapel2d/drawing/Image;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 15

    .line 486
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 487
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 488
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v0, p1

    int-to-float v3, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v0, p2

    int-to-float v4, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, v0

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 494
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 495
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v0, v0

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/FilesStage$2;->val$image:Lio/blueflower/stapel2d/drawing/Image;

    .line 496
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Image;->getWidth()F

    move-result v2

    div-float/2addr v0, v2

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v2, v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/FilesStage$2;->val$image:Lio/blueflower/stapel2d/drawing/Image;

    .line 497
    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Image;->getHeight()F

    move-result v3

    div-float/2addr v2, v3

    .line 495
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 499
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/FilesStage$2;->val$image:Lio/blueflower/stapel2d/drawing/Image;

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v3, p1

    int-to-float v3, v3

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v4, v4

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    mul-float v9, v0, v8

    .line 501
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Image;->getWidth()F

    move-result v4

    mul-float/2addr v4, v9

    sub-float/2addr v3, v4

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v4, p2

    int-to-float v4, v4

    iget v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/FilesStage$2;->val$image:Lio/blueflower/stapel2d/drawing/Image;

    .line 502
    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Image;->getHeight()F

    move-result v5

    mul-float/2addr v5, v9

    sub-float/2addr v4, v5

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/FilesStage$2;->val$image:Lio/blueflower/stapel2d/drawing/Image;

    .line 503
    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Image;->getWidth()F

    move-result v5

    mul-float/2addr v5, v0

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/FilesStage$2;->val$image:Lio/blueflower/stapel2d/drawing/Image;

    .line 504
    invoke-virtual {v6}, Lio/blueflower/stapel2d/drawing/Image;->getHeight()F

    move-result v6

    mul-float/2addr v6, v0

    const/4 v7, 0x0

    .line 499
    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 507
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 508
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v3, p1

    int-to-float v3, v3

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/FilesStage$2;->val$image:Lio/blueflower/stapel2d/drawing/Image;

    .line 510
    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Image;->getWidth()F

    move-result v4

    mul-float/2addr v4, v9

    sub-float/2addr v3, v4

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v3, v10

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v4, p2

    int-to-float v4, v4

    iget v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/FilesStage$2;->val$image:Lio/blueflower/stapel2d/drawing/Image;

    .line 511
    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Image;->getHeight()F

    move-result v5

    mul-float/2addr v5, v9

    sub-float/2addr v4, v5

    sub-float/2addr v4, v10

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/FilesStage$2;->val$image:Lio/blueflower/stapel2d/drawing/Image;

    .line 512
    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Image;->getWidth()F

    move-result v5

    mul-float/2addr v5, v0

    const/high16 v11, 0x40000000    # 2.0f

    add-float/2addr v5, v11

    const/high16 v6, 0x3f800000    # 1.0f

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    .line 508
    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 515
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v3, p1

    int-to-float v3, v3

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/FilesStage$2;->val$image:Lio/blueflower/stapel2d/drawing/Image;

    .line 517
    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Image;->getWidth()F

    move-result v4

    mul-float/2addr v4, v9

    sub-float/2addr v3, v4

    sub-float/2addr v3, v10

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v4, p2

    int-to-float v4, v4

    iget v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/FilesStage$2;->val$image:Lio/blueflower/stapel2d/drawing/Image;

    .line 518
    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Image;->getHeight()F

    move-result v5

    mul-float/2addr v5, v9

    add-float/2addr v4, v5

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/FilesStage$2;->val$image:Lio/blueflower/stapel2d/drawing/Image;

    .line 519
    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Image;->getWidth()F

    move-result v5

    mul-float/2addr v5, v0

    add-float/2addr v5, v11

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    .line 515
    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 522
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v3, p1

    int-to-float v3, v3

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    add-float/2addr v3, v4

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/FilesStage$2;->val$image:Lio/blueflower/stapel2d/drawing/Image;

    .line 524
    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Image;->getWidth()F

    move-result v4

    mul-float/2addr v4, v9

    sub-float/2addr v3, v4

    sub-float/2addr v3, v10

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr v4, p2

    int-to-float v4, v4

    iget v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v5, v5

    mul-float/2addr v5, v8

    add-float/2addr v4, v5

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/FilesStage$2;->val$image:Lio/blueflower/stapel2d/drawing/Image;

    .line 525
    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Image;->getHeight()F

    move-result v5

    mul-float/2addr v5, v9

    sub-float/2addr v4, v5

    sub-float/2addr v4, v10

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/FilesStage$2;->val$image:Lio/blueflower/stapel2d/drawing/Image;

    .line 527
    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Image;->getHeight()F

    move-result v5

    mul-float/2addr v5, v0

    add-float v6, v5, v11

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/high16 v5, 0x3f800000    # 1.0f

    .line 522
    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 529
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr v3, p1

    int-to-float p1, v3

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v8

    add-float/2addr p1, v3

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/FilesStage$2;->val$image:Lio/blueflower/stapel2d/drawing/Image;

    .line 531
    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Image;->getWidth()F

    move-result v3

    mul-float/2addr v3, v9

    add-float/2addr v3, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float p2, p2

    mul-float/2addr p2, v8

    add-float/2addr p1, p2

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/FilesStage$2;->val$image:Lio/blueflower/stapel2d/drawing/Image;

    .line 532
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Image;->getHeight()F

    move-result p2

    mul-float/2addr v9, p2

    sub-float/2addr p1, v9

    sub-float v4, p1, v10

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$2;->val$image:Lio/blueflower/stapel2d/drawing/Image;

    .line 534
    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Image;->getHeight()F

    move-result p1

    mul-float/2addr v0, p1

    add-float v6, v0, v11

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    .line 529
    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage.AnonymousClass3 (info.flowersoft.theotown.stages.FilesStage$3)
.class public synthetic Linfo/flowersoft/theotown/stages/FilesStage$3;
.super Ljava/lang/Object;
.source "FilesStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/FilesStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$info$flowersoft$theotown$stages$FileType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 443
    invoke-static {}, Linfo/flowersoft/theotown/stages/FileType;->values()[Linfo/flowersoft/theotown/stages/FileType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Linfo/flowersoft/theotown/stages/FilesStage$3;->$SwitchMap$info$flowersoft$theotown$stages$FileType:[I

    :try_start_9
    sget-object v1, Linfo/flowersoft/theotown/stages/FileType;->TEXT:Linfo/flowersoft/theotown/stages/FileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Linfo/flowersoft/theotown/stages/FilesStage$3;->$SwitchMap$info$flowersoft$theotown$stages$FileType:[I

    sget-object v1, Linfo/flowersoft/theotown/stages/FileType;->IMAGE:Linfo/flowersoft/theotown/stages/FileType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$wJs5uymEen1Ly6Z8ibn-7qDvQzc(Linfo/flowersoft/theotown/stages/FilesStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;

.field public final synthetic f$1:[Lio/blueflower/stapel2d/gui/Gadget;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;[Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda1;->f$1:[Lio/blueflower/stapel2d/gui/Gadget;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda1;->f$1:[Lio/blueflower/stapel2d/gui/Gadget;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$nd-hPjkbhFE0kvWlMk570zL_58g(Linfo/flowersoft/theotown/stages/FilesStage;[Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda10 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda10)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$auNxOarE1NEL6hOapVRHjhFrN80(Linfo/flowersoft/theotown/stages/FilesStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda11 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda11)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Predicate;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda11;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda11;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$PvJFE9vsT1iFV3Ru7jvnY1hVEVw(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda12 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda12)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda12;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda12;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda12;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda12;->f$1:Ljava/io/File;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$rQUNC_CPeXhUKLBFs1ZEIejajZc(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda13 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda13)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda13;
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

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda13;->f$0:Ljava/lang/Runnable;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$_3I-ow3r_EyBcK7XgB90C4ZX11c(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda14 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda14)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda14;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda14;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$7PjrnM5UFh0dhouJZS3JSgkB-4A(Linfo/flowersoft/theotown/stages/FilesStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda15 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda15)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda15;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda15;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$JgEGhWDrF4J9BD5CFTToGWMUmbg(Linfo/flowersoft/theotown/stages/FilesStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda16 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda16)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda16;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda16;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$3J2F3YWzy8eN8fOKIldpVT6XsY0(Linfo/flowersoft/theotown/stages/FilesStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda17 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda17)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda17;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda17;->f$1:Ljava/io/File;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda17;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda17;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda17;->f$1:Ljava/io/File;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda17;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$CKgQYOCxtzokhUYVxT3OUnR934Q(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda18 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda18)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda18;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda18;->f$0:Ljava/io/File;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$2wRZGYrwCog5Kqoyyw9uf61U4Qc(Ljava/io/File;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda19 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda19)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;

.field public final synthetic f$1:Lio/blueflower/stapel2d/drawing/Texture;

.field public final synthetic f$2:Lcom/badlogic/gdx/graphics/Pixmap;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;Lio/blueflower/stapel2d/drawing/Texture;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda19;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda19;->f$1:Lio/blueflower/stapel2d/drawing/Texture;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda19;->f$2:Lcom/badlogic/gdx/graphics/Pixmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda19;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda19;->f$1:Lio/blueflower/stapel2d/drawing/Texture;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda19;->f$2:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$dYvwZXaKtwR85NR8Ihg2DRRbnp4(Linfo/flowersoft/theotown/stages/FilesStage;Lio/blueflower/stapel2d/drawing/Texture;Lcom/badlogic/gdx/graphics/Pixmap;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;

.field public final synthetic f$1:[Linfo/flowersoft/theotown/ui/IconButton;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;[Linfo/flowersoft/theotown/ui/IconButton;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda2;->f$1:[Linfo/flowersoft/theotown/ui/IconButton;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda2;->f$1:[Linfo/flowersoft/theotown/ui/IconButton;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$rJrch4fHelGLG9ijSJUsh1LXdw0(Linfo/flowersoft/theotown/stages/FilesStage;[Linfo/flowersoft/theotown/ui/IconButton;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda20 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda20)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda20;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda20;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$rmkMBcm1d3wCBr8V4umwato4mOo(Linfo/flowersoft/theotown/stages/FilesStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda21 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda21)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda21;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda21;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda21;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$PbdtTLjcdqJY1zo3bviqoxdFl4c(Linfo/flowersoft/theotown/stages/FilesStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda22 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda22)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda22;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda22;->f$0:Ljava/lang/String;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$9Ie45m8fyiUl446W2AzQY7jmPf8(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda23 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda23)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda23;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda23;->f$0:Ljava/io/File;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$irko4v0aBrtOnC3Jzfybkr-pizM(Ljava/io/File;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda24 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda24)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda24;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda24;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$GNoKKuIr4wFAw42SFtAqaiXlp3Y(Linfo/flowersoft/theotown/stages/FilesStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda25 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda25)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda25;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda25;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda25;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda25;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$32ZQLo0up-5uMYh_ARIgrzUd0Gg(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda26 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda26)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda26;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda26;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda26;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda26;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$GU6deDr2Mwh1UEKP2sIEUWEa-2o(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda27 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda27)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda27;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda27;->f$1:Ljava/io/File;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda27;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda27;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda27;->f$1:Ljava/io/File;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda27;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$sU1R0Z2FRwNp409FC44qOJ4y7N8(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda28 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda28)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda28;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda28;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$SnKOZNR5L6auWyEy2tBd6NQq0BA(Linfo/flowersoft/theotown/stages/FilesStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda29 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda29)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda29;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda29;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda29;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda29;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$enrJ2U587Hs1c6_K-PTJ5Bi5LKM(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$B_05WA5rBGnQRjIkhGW99f2LJsw(Linfo/flowersoft/theotown/stages/FilesStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda30 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda30)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda30;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda30;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$Uc3efA2U15yoqmJvoprnaJCFPsE(Linfo/flowersoft/theotown/stages/FilesStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda31 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda31)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Predicate;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda31;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda31;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$Y9WI_4G3ODo_RLbZGY6dw0_8ed0(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda32 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda32)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda32;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda32;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda32;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda32;->f$1:Ljava/io/File;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$BAiQeBzZ1vTsk9zkNAfGQcM58kQ(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda4 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$MXlTIQ_Dgqg7AB_8yEGVkYULQkY(Linfo/flowersoft/theotown/stages/FilesStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda5 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$gJbZ2XrIGwks8DZIWLIoKIoP_ME(Linfo/flowersoft/theotown/stages/FilesStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda6 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda6;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda6;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$NW5G6RxPkOaMVd8Rv3ml2OcR1Vg(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda7 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Linfo/flowersoft/theotown/stages/FileType;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;Linfo/flowersoft/theotown/stages/FileType;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda7;->f$1:Ljava/io/File;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda7;->f$2:Linfo/flowersoft/theotown/stages/FileType;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda7;->f$1:Ljava/io/File;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda7;->f$2:Linfo/flowersoft/theotown/stages/FileType;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$Qs1ZiKrW4lp39tcft97lw88f9BM(Linfo/flowersoft/theotown/stages/FilesStage;Ljava/io/File;Linfo/flowersoft/theotown/stages/FileType;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda8 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda8)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/FilesStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/FilesStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/stages/FilesStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$zfpX1xRZ2L0wCbtG_4b5rn2KY64(Linfo/flowersoft/theotown/stages/FilesStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda9 (info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda9)
.class public final synthetic Linfo/flowersoft/theotown/stages/FilesStage$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/stages/FilesStage;->$r8$lambda$hSkNo946ujWN0kSp1vl6QhocVf8(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
