###### Class info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder (info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;
.super Lio/blueflower/stapel2d/util/Builder;
.source "ScreenshotProcessorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/blueflower/stapel2d/util/Builder<",
        "Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;",
        ">;"
    }
.end annotation


# static fields
.field public static lastSavedFile:Ljava/io/File;


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public gameStageContext:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;


# direct methods
.method public static synthetic $r8$lambda$sTQk5EX7THbAt0cRzgoo4Aq-HpA(Linfo/flowersoft/theotown/util/ScreenshotUploader;)V
    .registers 2

    .line 168
    const-string v0, "user"

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->abort(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 3

    .line 61
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/util/Builder;-><init>(Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 63
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 64
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->gameStageContext:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 1

    .line 50
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->getScreenshotBitmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 50
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;
    .registers 1

    .line 50
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)Ljava/lang/Object;
    .registers 1

    .line 50
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;
    .registers 1

    .line 50
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->getScreenshotWholeMapBitmap()Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)Ljava/lang/Object;
    .registers 1

    .line 50
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)Ljava/lang/Object;
    .registers 1

    .line 50
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getSaveFile(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    .line 195
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yy-MM-dd_HH.mm.ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 196
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".png"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 199
    new-instance v0, Ljava/io/File;

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getScreenshotDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSavedImageDialog(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)Linfo/flowersoft/theotown/ui/Dialog;
    .registers 16

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    if-eqz v2, :cond_10

    .line 204
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_e
    move-object v11, v0

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    .line 205
    :goto_12
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p1

    if-eqz v11, :cond_25

    .line 209
    :try_start_18
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    :catch_23
    move-exception v0

    goto :goto_52

    :cond_25
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "name"

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_30
    if-eqz v2, :cond_41

    const/16 v3, 0x88e

    .line 212
    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_55

    :cond_41
    const/16 v0, 0x9f4

    .line 214
    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "image"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_51} :catch_23

    goto :goto_55

    .line 217
    :goto_52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 220
    :goto_55
    new-instance v12, Linfo/flowersoft/theotown/ui/Dialog;

    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_CAMERA:I

    const/16 v3, 0x36b

    .line 221
    invoke-interface {p1, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v12, v0, v3, p0, p2}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    if-eqz v2, :cond_92

    .line 225
    sget-object p0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {p0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object p0

    sget-object p2, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq p0, p2, :cond_92

    .line 226
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$5;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    const/16 p0, 0xb54

    invoke-interface {p1, p0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object p0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object p0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v9

    .line 227
    invoke-virtual {v12}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object p0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v11}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$5;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/io/File;)V

    :cond_92
    if-eqz v2, :cond_c4

    .line 236
    sget-object p0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {p0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->supportsShareImage()Z

    move-result p0

    if-eqz p0, :cond_c4

    .line 237
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$6;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_ACCOUNT:I

    const/16 p0, 0x5f9

    invoke-interface {p1, p0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    .line 238
    invoke-virtual {v12}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object p0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object p0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v9

    .line 239
    invoke-virtual {v12}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object p0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v12}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$6;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/io/File;Linfo/flowersoft/theotown/ui/Dialog;)V

    .line 247
    invoke-virtual {v12}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    goto :goto_cf

    .line 249
    :cond_c4
    sget p0, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 p2, 0x3a7

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v12, p0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 252
    :goto_cf
    invoke-virtual {v12}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 253
    invoke-virtual {v12, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-object v12
.end method

.method public static save(Ljava/io/File;Lcom/badlogic/gdx/graphics/Pixmap;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 258
    sput-object v0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->lastSavedFile:Ljava/io/File;

    .line 260
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->saveImageToGallery(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    return-object v1

    :cond_18
    if-eqz p1, :cond_45

    .line 264
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 266
    :cond_2e
    :try_start_2e
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->saveImage(Ljava/io/File;Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 267
    sput-object p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->lastSavedFile:Ljava/io/File;

    .line 269
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {p1, p0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->informAboutNewImage(Ljava/io/File;)V

    .line 271
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3c} :catch_3d

    return-object p0

    :catch_3d
    move-exception p0

    .line 273
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "Save image"

    invoke-interface {p1, v1, p0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_45
    return-object v0
.end method

.method public static saveImage(Ljava/io/File;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    new-instance v0, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;-><init>()V

    const/4 v1, 0x0

    .line 281
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->setFlipY(Z)V

    const/16 v1, 0x9

    .line 282
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->setCompression(I)V

    .line 283
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 284
    :try_start_13
    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->write(Ljava/io/OutputStream;Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 285
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_39

    .line 286
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 287
    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saved screen in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Screenshot"

    invoke-interface {p1, v0, p0}, Lcom/badlogic/gdx/Application;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_39
    move-exception p0

    .line 283
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_42

    :catchall_3e
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_42
    throw p0
.end method

.method public static showWaitForUploadDialog(Linfo/flowersoft/theotown/util/ScreenshotUploader;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
    .registers 17

    .line 161
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v6

    .line 163
    new-instance v7, Linfo/flowersoft/theotown/ui/Dialog;

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_UPGRADE:I

    const/16 p1, 0x28a

    .line 164
    invoke-interface {v6, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v9

    const/16 p1, 0xbfb

    .line 165
    invoke-interface {v6, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xc8

    const/16 v12, 0x6a

    move-object/from16 v13, p2

    invoke-direct/range {v7 .. v13}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    const/4 p1, 0x0

    .line 167
    invoke-virtual {v7, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setCanCloseViaBackground(Z)V

    .line 168
    new-instance p1, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/util/ScreenshotUploader;)V

    invoke-virtual {v7, p1}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton(Ljava/lang/Runnable;)Lio/blueflower/stapel2d/gui/Button;

    .line 170
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$4;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result p1

    add-int/lit8 v3, p1, -0x6

    invoke-virtual {v7}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v4

    const/4 v1, 0x2

    const/4 v2, 0x0

    move-object v5, p0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$4;-><init>(IIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/util/ScreenshotUploader;Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/ui/Dialog;)V

    const/4 p0, 0x1

    .line 191
    invoke-virtual {v7, p0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public build()V
    .registers 3

    .line 73
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)V

    iput-object v1, v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->screenshot:Linfo/flowersoft/theotown/util/ScreenshotProcessor;

    .line 84
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->screenshot:Linfo/flowersoft/theotown/util/ScreenshotProcessor;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->addPostProcessor(Ljava/lang/Runnable;)V

    .line 86
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)V

    iput-object v1, v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->mapScreenshot:Linfo/flowersoft/theotown/util/ScreenshotProcessor;

    .line 145
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->mapScreenshot:Linfo/flowersoft/theotown/util/ScreenshotProcessor;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->addPostProcessor(Ljava/lang/Runnable;)V

    .line 147
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$3;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$3;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)V

    iput-object v1, v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->onlineScreenshot:Linfo/flowersoft/theotown/util/ScreenshotProcessor;

    .line 157
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->onlineScreenshot:Linfo/flowersoft/theotown/util/ScreenshotProcessor;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->addPostProcessor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getScreenshotBitmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .registers 14

    .line 291
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getWidth()I

    move-result v1

    .line 293
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v2

    .line 295
    sget v3, Linfo/flowersoft/theotown/resources/Constants;->VERDÄCHTIG:I

    const/4 v4, 0x0

    if-eqz v3, :cond_44

    .line 297
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    .line 298
    const-string v5, "h4ck0rz "

    invoke-virtual {v3, v5}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    .line 299
    invoke-virtual {v3, v5}, Lio/blueflower/stapel2d/drawing/Font;->getHeight(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    .line 301
    sget-object v8, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/high16 v8, 0x3f800000    # 1.0f

    .line 302
    invoke-virtual {v0, v8, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    move v9, v4

    :goto_2e
    if-ge v9, v2, :cond_3c

    move v10, v4

    :goto_31
    if-ge v10, v1, :cond_3a

    int-to-float v11, v10

    int-to-float v12, v9

    .line 307
    invoke-virtual {v0, v3, v5, v11, v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    add-int/2addr v10, v6

    goto :goto_31

    :cond_3a
    add-int/2addr v9, v7

    goto :goto_2e

    .line 312
    :cond_3c
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 313
    invoke-virtual {v0, v8, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    :cond_44
    const/4 v3, 0x0

    .line 316
    invoke-virtual {v0, v3}, Lio/blueflower/stapel2d/drawing/Engine;->getPixels([I)[I

    move-result-object v0

    .line 317
    :goto_49
    array-length v3, v0

    div-int/lit8 v3, v3, 0x2

    if-ge v4, v3, :cond_63

    .line 318
    rem-int v3, v4, v1

    .line 319
    div-int v5, v4, v1

    sub-int v5, v2, v5

    add-int/lit8 v5, v5, -0x1

    .line 321
    aget v6, v0, v4

    mul-int/2addr v5, v1

    add-int/2addr v3, v5

    .line 322
    aget v5, v0, v3

    aput v5, v0, v4

    .line 323
    aput v6, v0, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    :cond_63
    mul-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    .line 325
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->VERSION_COLOR:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Color;->toARGB()I

    move-result v4

    aput v4, v0, v3

    .line 327
    new-instance v3, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v4, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v3, v1, v2, v4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    .line 328
    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 329
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 330
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 331
    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    return-object v3
.end method

.method public final getScreenshotWholeMapBitmap()Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask<",
            "Lcom/badlogic/gdx/graphics/Pixmap;",
            ">;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->city:Linfo/flowersoft/theotown/city/City;

    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->lowResMapScreenshot:Z

    if-eqz v1, :cond_9

    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_b

    :cond_9
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_b
    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->mapRenderingNoBackground:Z

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2, v3}, Linfo/flowersoft/theotown/city/PreviewCreator;->generate(Linfo/flowersoft/theotown/city/City;FZZZ)Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder.AnonymousClass1 (info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$1;
.super Linfo/flowersoft/theotown/util/ScreenshotProcessor;
.source "ScreenshotProcessorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 73
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;

    invoke-direct {p0}, Linfo/flowersoft/theotown/util/ScreenshotProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public onTakePhoto()V
    .registers 5

    .line 76
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    .line 77
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->getSaveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 78
    invoke-static {v1, v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->save(Ljava/io/File;Lcom/badlogic/gdx/graphics/Pixmap;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1d

    .line 79
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 81
    :cond_1d
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->gameStageContext:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGUI()Lio/blueflower/stapel2d/gui/Master;

    move-result-object v3

    invoke-static {v1, v2, v3}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->getSavedImageDialog(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->showDialog(Linfo/flowersoft/theotown/ui/Dialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder.AnonymousClass2 (info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder$2)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2;
.super Linfo/flowersoft/theotown/util/ScreenshotProcessor;
.source "ScreenshotProcessorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 86
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;

    invoke-direct {p0}, Linfo/flowersoft/theotown/util/ScreenshotProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public onTakePhoto()V
    .registers 3

    .line 89
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->gameStageContext:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->saveForScreenshot(Lio/blueflower/stapel2d/util/Getter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder.AnonymousClass2.AnonymousClass1 (info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder$2$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1;
.super Ljava/lang/Object;
.source "ScreenshotProcessorBuilder.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2;->onTakePhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 89
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 93
    aget-object v0, v2, v3

    if-nez v0, :cond_14

    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_14
    invoke-interface {v0}, Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;->remainingSteps()I

    move-result v0

    add-int/2addr v0, v1

    .line 97
    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;

    invoke-direct {v1, p0, v0, v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1;I[Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 89
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1;->get()Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder.AnonymousClass2.AnonymousClass1.C10851 (info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder$2$1$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;
.super Ljava/lang/Object;
.source "ScreenshotProcessorBuilder.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1;->get()Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public processedSteps:I

.field public final synthetic this$2:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1;

.field public final synthetic val$bmpGenerator:[Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

.field public final synthetic val$totalSteps:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1;I[Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;)V
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

    .line 97
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;->this$2:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1;

    iput p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;->val$totalSteps:I

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;->val$bmpGenerator:[Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 98
    iput p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;->processedSteps:I

    return-void
.end method


# virtual methods
.method public bridge synthetic getResult()Ljava/lang/Object;
    .registers 2

    .line 97
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;->getResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Ljava/lang/Void;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public remainingSteps()I
    .registers 3

    .line 102
    iget v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;->val$totalSteps:I

    iget v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;->processedSteps:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public run()V
    .registers 6

    .line 108
    const-string v0, "Save picture"

    :try_start_2
    iget v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;->processedSteps:I

    iget v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;->val$totalSteps:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_15

    .line 109
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;->val$bmpGenerator:[Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    aget-object v0, v0, v3

    invoke-interface {v0}, Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;->run()V

    goto :goto_5c

    :catchall_13
    move-exception v0

    goto :goto_63

    .line 111
    :cond_15
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;->val$bmpGenerator:[Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    aget-object v1, v1, v3

    invoke-interface {v1}, Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Pixmap;

    .line 114
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;->val$bmpGenerator:[Linfo/flowersoft/theotown/city/PreviewCreator$SteppedTask;

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 115
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 117
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;->this$2:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->getSaveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 118
    invoke-static {v0}, Linfo/flowersoft/theotown/util/StopWatch;->start(Ljava/lang/String;)V

    .line 119
    invoke-static {v2, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->save(Ljava/io/File;Lcom/badlogic/gdx/graphics/Pixmap;)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {v0}, Linfo/flowersoft/theotown/util/StopWatch;->stop(Ljava/lang/String;)V

    if-eqz v1, :cond_48

    .line 121
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 123
    :cond_48
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;->this$2:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->access$600(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1$1;

    invoke-direct {v1, p0, v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->handleRunnable(Ljava/lang/Runnable;)V
    :try_end_5c
    .catchall {:try_start_2 .. :try_end_5c} :catchall_13

    .line 132
    :goto_5c
    iget v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;->processedSteps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;->processedSteps:I

    return-void

    :goto_63
    iget v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;->processedSteps:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;->processedSteps:I

    .line 133
    throw v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder.AnonymousClass2.AnonymousClass1.C10851.RunnableC10861 (info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder$2$1$1$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1$1;
.super Ljava/lang/Object;
.source "ScreenshotProcessorBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$3:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;

.field public final synthetic val$path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;Ljava/lang/String;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1$1;->this$3:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 126
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1$1;->this$3:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;->this$2:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->access$500(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1$1;->val$path:Ljava/lang/String;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1$1;->this$3:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;->this$2:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1$1;->this$3:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1$1;->this$2:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2$1;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;

    iget-object v3, v3, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->gameStageContext:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGUI()Lio/blueflower/stapel2d/gui/Master;

    move-result-object v3

    invoke-static {v1, v2, v3}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->getSavedImageDialog(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->showDialog(Linfo/flowersoft/theotown/ui/Dialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder.AnonymousClass3 (info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder$3)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$3;
.super Linfo/flowersoft/theotown/util/ScreenshotProcessor;
.source "ScreenshotProcessorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 147
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;

    invoke-direct {p0}, Linfo/flowersoft/theotown/util/ScreenshotProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public onTakePhoto()V
    .registers 5

    .line 150
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    .line 151
    new-instance v1, Linfo/flowersoft/theotown/util/ScreenshotUploader;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;

    invoke-static {v3}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/util/ScreenshotUploader;-><init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 152
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->upload(Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 153
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 154
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->gameStageContext:Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGUI()Lio/blueflower/stapel2d/gui/Master;

    move-result-object v2

    invoke-static {v1, v0, v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->showWaitForUploadDialog(Linfo/flowersoft/theotown/util/ScreenshotUploader;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder.AnonymousClass4 (info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder$4)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$4;
.super Linfo/flowersoft/theotown/ui/ProgressBar;
.source "ScreenshotProcessorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->showWaitForUploadDialog(Linfo/flowersoft/theotown/util/ScreenshotUploader;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic val$scu:Linfo/flowersoft/theotown/util/ScreenshotUploader;

.field public final synthetic val$translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(IIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/util/ScreenshotUploader;Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 8

    .line 170
    iput-object p5, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$4;->val$scu:Linfo/flowersoft/theotown/util/ScreenshotUploader;

    iput-object p6, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$4;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$4;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-direct {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/ui/ProgressBar;-><init>(IIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 5

    .line 173
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onUpdate()V

    .line 174
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$4;->val$scu:Linfo/flowersoft/theotown/util/ScreenshotUploader;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->getProgress()F

    move-result v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/ProgressBar;->setProgress(F)V

    .line 175
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$4;->val$scu:Linfo/flowersoft/theotown/util/ScreenshotUploader;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->isRunning()Z

    move-result v0

    if-nez v0, :cond_72

    .line 176
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$4;->val$scu:Linfo/flowersoft/theotown/util/ScreenshotUploader;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 177
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$4;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x333

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    .line 178
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string v1, "gallery_upload"

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    goto :goto_6c

    .line 180
    :cond_31
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$4;->val$scu:Linfo/flowersoft/theotown/util/ScreenshotUploader;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->isAborted()Z

    move-result v0

    const/16 v1, 0x6aa

    if-eqz v0, :cond_61

    .line 181
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$4;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-interface {v3, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$4;->val$scu:Linfo/flowersoft/theotown/util/ScreenshotUploader;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/ScreenshotUploader;->getAbortReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    goto :goto_6c

    .line 183
    :cond_61
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$4;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-interface {v2, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    .line 186
    :goto_6c
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$4;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    :cond_72
    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder.AnonymousClass5 (info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder$5)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$5;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "ScreenshotProcessorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->getSavedImageDialog(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)Linfo/flowersoft/theotown/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$file:Ljava/io/File;


# direct methods
.method public constructor <init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/io/File;)V
    .registers 9

    .line 227
    iput-object p8, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$5;->val$file:Ljava/io/File;

    invoke-direct/range {p0 .. p7}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 230
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 231
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$5;->val$file:Ljava/io/File;

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showImage(Ljava/io/File;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder.AnonymousClass6 (info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder$6)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$6;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "ScreenshotProcessorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->getSavedImageDialog(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)Linfo/flowersoft/theotown/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic val$file:Ljava/io/File;


# direct methods
.method public constructor <init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Ljava/io/File;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 10

    .line 239
    iput-object p8, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$6;->val$file:Ljava/io/File;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$6;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-direct/range {p0 .. p7}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 242
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 243
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$6;->val$file:Ljava/io/File;

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->shareImage(Ljava/io/File;)V

    .line 244
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$6;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.gameuibuilder.ScreenshotProcessorBuilder$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/util/ScreenshotUploader;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/util/ScreenshotUploader;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/util/ScreenshotUploader;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/util/ScreenshotUploader;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/ScreenshotProcessorBuilder;->$r8$lambda$sTQk5EX7THbAt0cRzgoo4Aq-HpA(Linfo/flowersoft/theotown/util/ScreenshotUploader;)V

    return-void
.end method
