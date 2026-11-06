###### Class info.flowersoft.theotown.stages.BaseStage (info.flowersoft.theotown.stages.BaseStage)
.class public abstract Linfo/flowersoft/theotown/stages/BaseStage;
.super Lio/blueflower/stapel2d/gamestack/Stage;
.source "BaseStage.java"


# static fields
.field public static staticBackgroundCity:Linfo/flowersoft/theotown/city/City;


# instance fields
.field public blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

.field public cityZoomDrawer:Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;

.field public context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public delimitedMS:I

.field public engine:Lio/blueflower/stapel2d/drawing/Engine;

.field public enteredTime:D

.field public gui:Lio/blueflower/stapel2d/gui/Master;

.field public lastRenderMS:J

.field public lastRenderTime:I

.field public final luaLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/scripting/LuaLibrary;",
            ">;"
        }
    .end annotation
.end field

.field public openDialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public overlayMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

.field public ownBackgroundCity:Linfo/flowersoft/theotown/city/City;

.field public ownWeather:Linfo/flowersoft/theotown/components/DefaultWeather;

.field public performanceLevel:I

.field public preferredCursor:Linfo/flowersoft/theotown/ui/CursorType;

.field public stillInputActiveCount:I

.field public tampered:Ljava/lang/reflect/Field;

.field public final tasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public translator:Lio/blueflower/stapel2d/gamestack/Translator;

.field public useBackground:Z


# direct methods
.method public static synthetic $r8$lambda$ZrtnGcuJSlZxuk2VnPMFBETBkZo(Linfo/flowersoft/theotown/stages/BaseStage;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "enterStage"

    .line 173
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 175
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lvm2/LuaValue;->valueOf(Ljava/lang/String;)Lvm2/LuaString;

    move-result-object p0

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(Lvm2/LuaValue;)Z

    :cond_1a
    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 6

    .line 108
    invoke-direct {p0}, Lio/blueflower/stapel2d/gamestack/Stage;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->cityZoomDrawer:Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;

    .line 81
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->preferredCursor:Linfo/flowersoft/theotown/ui/CursorType;

    const/4 v0, 0x1

    .line 87
    iput v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->performanceLevel:I

    .line 96
    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->useBackground:Z

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->luaLibraries:Ljava/util/List;

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->tasks:Ljava/util/List;

    .line 109
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 110
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 113
    :try_start_23
    new-instance p1, Ljava/lang/String;

    const-string v1, "VkVSRMOEQ0hUSUc="

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 114
    new-instance v1, Ljava/lang/String;

    const-string v3, "aW5mby5mbG93ZXJzb2Z0LnRoZW90b3duLnJlc291cmNlcy5Db25zdGFudHM="

    invoke-static {v3}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->tampered:Ljava/lang/reflect/Field;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_4d} :catch_4e

    return-void

    .line 117
    :catch_4e
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static createBGCity(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 16

    .line 660
    new-instance v0, Linfo/flowersoft/theotown/creation/CityCreator;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/creation/CityCreator;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 661
    sget-object v4, Linfo/flowersoft/theotown/city/GameMode;->SANDBOX:Linfo/flowersoft/theotown/city/GameMode;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    .line 664
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v11, Linfo/flowersoft/theotown/util/ProgressVariable;

    const/4 p0, 0x0

    invoke-direct {v11, p0}, Linfo/flowersoft/theotown/util/ProgressVariable;-><init>(F)V

    new-instance v12, Lio/blueflower/stapel2d/util/ValueProperty;

    invoke-direct {v12, v1}, Lio/blueflower/stapel2d/util/ValueProperty;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 668
    invoke-static {p0}, Linfo/flowersoft/theotown/creation/CityCreator;->collectAvailableBiomes(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    .line 661
    const-string v1, "bg"

    const/16 v2, 0x40

    const/16 v3, 0x40

    const-string v6, ""

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v14}, Linfo/flowersoft/theotown/creation/CityCreator;->generate(Ljava/lang/String;IILinfo/flowersoft/theotown/city/GameMode;Ljava/lang/String;Ljava/lang/String;ZZZILinfo/flowersoft/theotown/util/ProgressVariable;Lio/blueflower/stapel2d/util/Setter;Ljava/util/List;Linfo/flowersoft/theotown/creation/HeightMap;)Linfo/flowersoft/theotown/creation/CityCreator$CityData;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Linfo/flowersoft/theotown/creation/CityCreator$CityData;->city:Linfo/flowersoft/theotown/city/City;

    sput-object p0, Linfo/flowersoft/theotown/stages/BaseStage;->staticBackgroundCity:Linfo/flowersoft/theotown/city/City;

    .line 669
    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/creation/CityCreator;->prepareDummyCity(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

.method public static dispose()V
    .registers 1

    const/4 v0, 0x0

    .line 742
    sput-object v0, Linfo/flowersoft/theotown/stages/BaseStage;->staticBackgroundCity:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .registers 4

    .line 705
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->tasks:Ljava/util/List;

    monitor-enter v0

    .line 706
    :try_start_3
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->tasks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public allowTracking()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public callOverlayMethods()V
    .registers 2

    .line 132
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->overlayMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

    if-eqz v0, :cond_7

    .line 133
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke()V

    :cond_7
    return-void
.end method

.method public drawBackground()V
    .registers 13

    const/4 v0, 0x1

    .line 572
    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->useBackground:Z

    .line 575
    :try_start_3
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    if-nez v0, :cond_2a

    .line 576
    new-instance v0, Linfo/flowersoft/theotown/drawing/BlurScreen;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/drawing/BlurScreen;-><init>(Lio/blueflower/stapel2d/drawing/Engine;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    .line 577
    invoke-virtual {v0}, Linfo/flowersoft/theotown/drawing/BlurScreen;->prepare()V

    .line 578
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/drawing/BlurScreen;->beginFilling()V

    .line 579
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->clear(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 580
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawFancyBackground()V

    .line 581
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/drawing/BlurScreen;->endFilling()V

    goto :goto_2a

    :catch_28
    move-exception v0

    goto :goto_6b

    .line 583
    :cond_2a
    :goto_2a
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/drawing/BlurScreen;->iterate()V

    .line 585
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    .line 586
    sget-object v0, Linfo/flowersoft/theotown/resources/ShaderConfig;->UNCHANGED:Linfo/flowersoft/theotown/resources/ShaderConfig;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getShader()Lio/blueflower/stapel2d/drawing/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/ShaderConfig;->apply(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 587
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0xb4

    invoke-virtual {v0, v1, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 588
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/drawing/BlurScreen;->getImage()Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 589
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 590
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->flush()V

    .line 591
    sget-object v0, Linfo/flowersoft/theotown/resources/Settings;->shaderConfig:Linfo/flowersoft/theotown/resources/ShaderConfig;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getShader()Lio/blueflower/stapel2d/drawing/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/ShaderConfig;->apply(Lio/blueflower/stapel2d/drawing/Shader;)V
    :try_end_6a
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_6a} :catch_28

    goto :goto_7a

    .line 593
    :goto_6b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 594
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v2, "Flush"

    invoke-interface {v1, v2, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 595
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->removeFramebuffer()V

    .line 598
    :goto_7a
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->ownBackgroundCity:Linfo/flowersoft/theotown/city/City;

    if-nez v0, :cond_bb

    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/WinterManager;->isWinter()Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 599
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->ownWeather:Linfo/flowersoft/theotown/components/DefaultWeather;

    if-nez v0, :cond_93

    new-instance v0, Linfo/flowersoft/theotown/components/DefaultWeather;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/DefaultWeather;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->ownWeather:Linfo/flowersoft/theotown/components/DefaultWeather;

    .line 600
    :cond_93
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->ownWeather:Linfo/flowersoft/theotown/components/DefaultWeather;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    rem-long/2addr v3, v5

    long-to-int v3, v3

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 602
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v0

    int-to-float v10, v0

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v0

    int-to-float v11, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const v8, 0x3e4ccccd    # 0.2f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 600
    invoke-virtual/range {v1 .. v11}, Linfo/flowersoft/theotown/components/DefaultWeather;->drawDownfall(Lio/blueflower/stapel2d/drawing/Engine;IFFFFFFFF)Z

    :cond_bb
    return-void
.end method

.method public final drawFancyBackground()V
    .registers 4

    .line 639
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->ownBackgroundCity:Linfo/flowersoft/theotown/city/City;

    if-nez v0, :cond_f

    .line 640
    sget-object v0, Linfo/flowersoft/theotown/stages/BaseStage;->staticBackgroundCity:Linfo/flowersoft/theotown/city/City;

    if-nez v0, :cond_d

    .line 641
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/BaseStage;->createBGCity(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 644
    :cond_d
    sget-object v0, Linfo/flowersoft/theotown/stages/BaseStage;->staticBackgroundCity:Linfo/flowersoft/theotown/city/City;

    .line 649
    :cond_f
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/util/ScreenRect;->setWidth(F)V

    .line 650
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/util/ScreenRect;->setHeight(F)V

    .line 652
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->cityZoomDrawer:Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;

    if-nez v1, :cond_38

    .line 653
    new-instance v1, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    iput-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->cityZoomDrawer:Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;

    .line 656
    :cond_38
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->cityZoomDrawer:Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->draw(Linfo/flowersoft/theotown/city/City;Z)V

    return-void
.end method

.method public drawGui()V
    .registers 2

    .line 711
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Master;->draw()V

    return-void
.end method

.method public drawSimpleBackground(IIII)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    mul-int v3, v1, v1

    mul-int v4, v2, v2

    add-int/2addr v3, v4

    int-to-double v3, v3

    .line 612
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    move v6, v4

    :cond_13
    move v7, v3

    move v8, v5

    :cond_15
    add-int v9, v7, v8

    mul-int/lit8 v9, v9, 0x20

    .line 618
    div-int/lit8 v9, v9, 0x2

    rem-int/lit8 v10, p1, 0x20

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x20

    sub-int v10, v7, v8

    mul-int/lit8 v10, v10, 0x10

    .line 619
    div-int/lit8 v10, v10, 0x2

    rem-int/lit8 v11, p2, 0x10

    sub-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x10

    mul-int v11, v9, v9

    mul-int v12, v10, v10

    add-int/2addr v11, v12

    int-to-double v11, v11

    .line 620
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    .line 623
    iget-object v11, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v12, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v11, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 624
    iget-object v11, v0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v12, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v13, v9

    int-to-float v14, v10

    sget v15, Linfo/flowersoft/theotown/resources/Resources;->FRAME_BLANK_TILE:I

    invoke-virtual {v11, v12, v13, v14, v15}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    add-int/2addr v7, v4

    add-int/2addr v8, v4

    if-lt v9, v1, :cond_15

    if-eqz v6, :cond_4f

    add-int/lit8 v5, v5, -0x1

    goto :goto_51

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    :goto_51
    xor-int/lit8 v6, v6, 0x1

    if-lt v10, v2, :cond_13

    return-void
.end method

.method public final drawTouchPoints()V
    .registers 7

    .line 412
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 413
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 414
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/4 v0, 0x0

    .line 415
    :goto_16
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchMapper;->getActivePoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_58

    .line 416
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchMapper;->getActivePoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/touch/TouchPoint;

    .line 417
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 418
    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getX()F

    move-result v4

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Engine;->getWidthRatio()F

    move-result v5

    mul-float/2addr v4, v5

    .line 419
    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getY()F

    move-result v1

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Engine;->getHeightRatio()F

    move-result v5

    mul-float/2addr v1, v5

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOUCH_POINT:I

    .line 417
    invoke-virtual {v2, v3, v4, v1, v5}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 422
    :cond_58
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void
.end method

.method public drop()V
    .registers 2

    .line 539
    invoke-super {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->drop()V

    .line 540
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->cityZoomDrawer:Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;

    if-eqz v0, :cond_d

    .line 541
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->dispose()V

    const/4 v0, 0x0

    .line 542
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->cityZoomDrawer:Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;

    :cond_d
    return-void
.end method

.method public enter()V
    .registers 5

    .line 142
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorManager;->INSTANCE:Linfo/flowersoft/theotown/ui/CursorManager;

    sget-object v1, Linfo/flowersoft/theotown/ui/CursorType;->Normal:Linfo/flowersoft/theotown/ui/CursorType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/CursorManager;->setCursor(Linfo/flowersoft/theotown/ui/CursorType;Z)V

    const-wide/16 v0, 0x0

    .line 144
    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->enteredTime:D

    .line 146
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    invoke-interface {v0, p0}, Linfo/flowersoft/theotown/crossplatform/GamesService;->visitStage(Lio/blueflower/stapel2d/gamestack/Stage;)V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->openDialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 150
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->trackScreen()V

    .line 152
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 154
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->prepareShader()V

    .line 156
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->prepareResolution()V

    .line 158
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->prepareGUI()V

    .line 160
    invoke-static {}, Linfo/flowersoft/theotown/util/ScreenRecorder;->getInstance()Linfo/flowersoft/theotown/util/ScreenRecorder;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/ScreenRecorder;->setUp(Lio/blueflower/stapel2d/drawing/Engine;)V

    .line 162
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->luaLibraries:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/scripting/libraries/GUILibrary;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->luaLibraries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/scripting/LuaLibrary;

    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v2

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->loadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    goto :goto_45

    .line 166
    :cond_59
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getLibrary(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/libraries/RuntimeLibrary;->updateGui(Lio/blueflower/stapel2d/gui/Master;)V

    .line 168
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "overlay"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->overlayMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

    .line 170
    new-instance v0, Linfo/flowersoft/theotown/stages/BaseStage$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/BaseStage$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/BaseStage;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getTargetTotalFrameTime()I
    .registers 3

    .line 426
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->getInstance()Linfo/flowersoft/theotown/tutorial/Tutorial;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isActive()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_c

    return v1

    .line 431
    :cond_c
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->energySavingPlus:Z

    if-eqz v0, :cond_15

    .line 432
    iget v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->performanceLevel:I

    mul-int/lit8 v0, v0, 0x20

    return v0

    .line 433
    :cond_15
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->energySaving:Z

    if-eqz v0, :cond_1e

    .line 434
    iget v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->performanceLevel:I

    mul-int/lit8 v0, v0, 0x10

    return v0

    :cond_1e
    return v1
.end method

.method public final indicateCompromised()V
    .registers 11

    .line 450
    const-string v0, ""

    const-string v1, "0"

    :try_start_4
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->tampered:Ljava/lang/reflect/Field;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_a9

    .line 452
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gfsT0h0is v0er0sio0n "

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/badlogic/gdx/utils/Base64Coder;->encodeString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "69w0ha0s b0e0e0n ha0c0k0ed!"

    .line 453
    invoke-static {v4, v5}, Lcom/badlogic/gdx/utils/Base64Coder;->encodeString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 454
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/String;

    const/16 v7, 0x3b

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v8

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v8, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    .line 455
    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v6, v3, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 457
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v0, v3, v3}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 458
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 459
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 460
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a9} :catch_a9

    :catch_a9
    :cond_a9
    return-void
.end method

.method public final indicateDebugBuild()V
    .registers 5

    .line 476
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-nez v0, :cond_5

    return-void

    .line 480
    :cond_5
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 483
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 484
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 485
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v2, 0x1

    int-to-float v2, v2

    const-string v3, "Debug Build \u3113\u3128\u3125 \u3128\u3123\u02ca \u3117\u0372\u20ae"

    invoke-virtual {v1, v0, v3, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 486
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 487
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v2, 0x0

    int-to-float v2, v2

    invoke-virtual {v1, v0, v3, v2, v2}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 488
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 489
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method

.method public final indicateRecoveryMode()V
    .registers 8

    .line 493
    sget-object v0, Linfo/flowersoft/theotown/stages/RecoveryMode;->INSTANCE:Linfo/flowersoft/theotown/stages/RecoveryMode;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/RecoveryMode;->getActive()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 495
    :cond_9
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 497
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v1

    const-string v2, "Recovery Mode"

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v1, v3

    .line 500
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 501
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 502
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    add-int/lit8 v5, v1, 0x1

    int-to-float v5, v5

    const/4 v6, 0x1

    int-to-float v6, v6

    invoke-virtual {v3, v0, v2, v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 503
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 504
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    int-to-float v1, v1

    const/4 v5, 0x0

    int-to-float v5, v5

    invoke-virtual {v3, v0, v2, v1, v5}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 505
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method

.method public final indicateVersion()V
    .registers 11

    .line 468
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 469
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->VERSION_COLOR:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 470
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    int-to-float v5, v0

    int-to-float v7, v2

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/4 v6, 0x0

    move v8, v7

    invoke-virtual/range {v3 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 471
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 472
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method

.method public final isBackgroundFinished()Z
    .registers 2

    .line 568
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Linfo/flowersoft/theotown/drawing/BlurScreen;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isDialogOpen()Z
    .registers 5

    .line 681
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 683
    :cond_a
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->countChildren()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    .line 684
    instance-of v2, v0, Linfo/flowersoft/theotown/ui/Dialog$Background;

    if-eqz v2, :cond_22

    check-cast v0, Linfo/flowersoft/theotown/ui/Dialog$Background;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog$Background;->getDialog()Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->openDialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 685
    :cond_22
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->openDialog:Linfo/flowersoft/theotown/ui/Dialog;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2d

    return v3

    :cond_2d
    return v1
.end method

.method public final isInputActive()Z
    .registers 4

    .line 551
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchMapper;->getActivePoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_3c

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 552
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchMapper;->countActualActivePoints()I

    move-result v0

    if-gtz v0, :cond_3c

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 553
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/key/KeyMapper;->getActualActiveKeys()I

    move-result v0

    if-gtz v0, :cond_3c

    .line 554
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->isActive()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 555
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->shouldRenderFullspeed()Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_3c

    :cond_3a
    const/4 v0, 0x0

    goto :goto_3d

    :cond_3c
    :goto_3c
    move v0, v1

    :goto_3d
    if-eqz v0, :cond_46

    .line 558
    iput v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->performanceLevel:I

    const/16 v1, 0x1e

    .line 559
    iput v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->stillInputActiveCount:I

    return v0

    .line 560
    :cond_46
    iget v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->stillInputActiveCount:I

    if-lez v2, :cond_4b

    return v1

    :cond_4b
    return v0
.end method

.method public keyDown(Linfo/flowersoft/theotown/input/KeyAction;)Z
    .registers 8

    .line 715
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v0

    .line 716
    invoke-virtual {p1}, Linfo/flowersoft/theotown/input/KeyAction;->getKeys()[I

    move-result-object v1

    .line 717
    invoke-virtual {p1}, Linfo/flowersoft/theotown/input/KeyAction;->getModifiers()[I

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    .line 719
    :goto_10
    array-length v4, v1

    if-ge v3, v4, :cond_22

    .line 720
    aget v4, v1, v3

    aget v5, p1, v3

    invoke-virtual {v0, v4, v5}, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown(II)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 p1, 0x1

    return p1

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_22
    return v2
.end method

.method public keyHit(Linfo/flowersoft/theotown/input/KeyAction;)Z
    .registers 9

    .line 726
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v0

    .line 727
    invoke-virtual {p1}, Linfo/flowersoft/theotown/input/KeyAction;->getKeys()[I

    move-result-object v1

    .line 728
    invoke-virtual {p1}, Linfo/flowersoft/theotown/input/KeyAction;->getModifiers()[I

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 730
    :goto_10
    array-length v5, v1

    if-ge v4, v5, :cond_48

    .line 731
    aget v5, v1, v4

    aget v6, v2, v4

    invoke-virtual {v0, v5, v6}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(II)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 732
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->debugHotkeys:Z

    if-eqz v0, :cond_43

    .line 733
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Issued "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " via "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    :cond_43
    const/4 p1, 0x1

    return p1

    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_48
    return v3
.end method

.method public leave()V
    .registers 4

    .line 512
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    const-string v1, "leaveStage"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 514
    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke()V

    .line 517
    :cond_f
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->luaLibraries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/scripting/LuaLibrary;

    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v2

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->unloadLibrary(Linfo/flowersoft/theotown/scripting/LuaLibrary;)V

    goto :goto_15

    .line 518
    :cond_29
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->luaLibraries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 520
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->free()V

    :cond_35
    const/4 v0, 0x0

    .line 521
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->openDialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 523
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    if-eqz v1, :cond_41

    .line 524
    invoke-virtual {v1}, Linfo/flowersoft/theotown/drawing/BlurScreen;->release()V

    .line 525
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->blurScreen:Linfo/flowersoft/theotown/drawing/BlurScreen;

    .line 528
    :cond_41
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->cityZoomDrawer:Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;

    if-eqz v1, :cond_4a

    .line 529
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;->dispose()V

    .line 530
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->cityZoomDrawer:Linfo/flowersoft/theotown/city/SmoothCityZoomDrawer;

    .line 533
    :cond_4a
    invoke-static {}, Linfo/flowersoft/theotown/util/ScreenRecorder;->getInstance()Linfo/flowersoft/theotown/util/ScreenRecorder;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ScreenRecorder;->setDown()V

    .line 534
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorManager;->INSTANCE:Linfo/flowersoft/theotown/ui/CursorManager;

    sget-object v1, Linfo/flowersoft/theotown/ui/CursorType;->Normal:Linfo/flowersoft/theotown/ui/CursorType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/CursorManager;->setCursor(Linfo/flowersoft/theotown/ui/CursorType;Z)V

    return-void
.end method

.method public onBack()V
    .registers 2

    .line 441
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 442
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void

    .line 444
    :cond_e
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->openDialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->cancel()V

    return-void
.end method

.method public abstract onUpdate()V
.end method

.method public onUpdateWhileDialogIsOpen()V
    .registers 1

    .line 0
    return-void
.end method

.method public prepare()V
    .registers 1

    .line 0
    return-void
.end method

.method public final prepareGUI()V
    .registers 7

    .line 181
    sget-object v0, Linfo/flowersoft/theotown/util/ThemeManager;->INSTANCE:Linfo/flowersoft/theotown/util/ThemeManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ThemeManager;->update()V

    .line 182
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iput-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 185
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->uiSize:I

    rsub-int/lit8 v0, v0, 0x64

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    .line 186
    sget v1, Linfo/flowersoft/theotown/resources/Settings;->uiSize:I

    rsub-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    .line 188
    new-instance v2, Lio/blueflower/stapel2d/gui/Master;

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    invoke-direct {v2, v3, v0, v1}, Lio/blueflower/stapel2d/gui/Master;-><init>(Lio/blueflower/stapel2d/gui/Skin;II)V

    iput-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 189
    new-instance v0, Linfo/flowersoft/theotown/stages/BaseStage$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/BaseStage$1;-><init>(Linfo/flowersoft/theotown/stages/BaseStage;)V

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/gui/Master;->addClickListener(Lio/blueflower/stapel2d/gui/Master$ClickListener;)V

    .line 195
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->getInsetsTRBL()[F

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 197
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v2, 0x3

    aget v2, v0, v2

    .line 198
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Master;->getWidthRatio()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x0

    aget v3, v0, v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 199
    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Master;->getHeightRatio()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 200
    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Master;->getWidthRatio()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, 0x2

    aget v0, v0, v5

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 201
    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Master;->getHeightRatio()F

    move-result v5

    mul-float/2addr v0, v5

    float-to-int v0, v0

    .line 197
    invoke-virtual {v1, v2, v3, v4, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(IIII)V

    :cond_6b
    return-void
.end method

.method public final prepareResolution()V
    .registers 5

    .line 206
    new-instance v0, Linfo/flowersoft/theotown/resources/ResolutionManager;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getWidth()I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/resources/ResolutionManager;-><init>(II)V

    .line 208
    sget v1, Linfo/flowersoft/theotown/resources/Settings;->displayResolution:I

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/ResolutionManager;->getWidth(I)I

    move-result v1

    .line 209
    sget v2, Linfo/flowersoft/theotown/resources/Settings;->displayResolution:I

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/resources/ResolutionManager;->getHeight(I)I

    move-result v0

    .line 211
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2, v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setVirtualSize(II)V

    if-lez v1, :cond_39

    if-lez v0, :cond_39

    .line 213
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getWidth()I

    move-result v3

    div-int/2addr v3, v1

    mul-int/2addr v1, v3

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    mul-int/2addr v0, v3

    invoke-virtual {v2, v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->resize(II)V

    :cond_39
    return-void
.end method

.method public final prepareShader()V
    .registers 4

    .line 218
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->SHADER_BLITTING_DEFAULT:Lio/blueflower/stapel2d/drawing/Shader;

    if-nez v0, :cond_16

    .line 219
    invoke-static {}, Linfo/flowersoft/theotown/resources/ShaderRepository;->getInstance()Linfo/flowersoft/theotown/resources/ShaderRepository;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Settings;->shader:I

    sget-object v2, Linfo/flowersoft/theotown/resources/Settings;->shaderId:Ljava/lang/String;

    .line 220
    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/resources/ShaderRepository;->getShader(ILjava/lang/String;)Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;->build()Lio/blueflower/stapel2d/drawing/Shader;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/resources/Resources;->SHADER_BLITTING_DEFAULT:Lio/blueflower/stapel2d/drawing/Shader;

    .line 225
    :cond_16
    :try_start_16
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->SHADER_BLITTING_DEFAULT:Lio/blueflower/stapel2d/drawing/Shader;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->loadShader(Lio/blueflower/stapel2d/drawing/Shader;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_1e

    goto :goto_4f

    :catch_1e
    move-exception v0

    .line 227
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->addToast(Ljava/lang/String;)V

    .line 228
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {v1, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    .line 229
    sput v0, Linfo/flowersoft/theotown/resources/Settings;->shader:I

    const/4 v0, 0x0

    .line 230
    sput-object v0, Linfo/flowersoft/theotown/resources/Settings;->shaderId:Ljava/lang/String;

    .line 231
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->save()V

    .line 232
    invoke-static {}, Linfo/flowersoft/theotown/resources/ShaderRepository;->getInstance()Linfo/flowersoft/theotown/resources/ShaderRepository;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Settings;->shader:I

    sget-object v2, Linfo/flowersoft/theotown/resources/Settings;->shaderId:Ljava/lang/String;

    .line 233
    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/resources/ShaderRepository;->getShader(ILjava/lang/String;)Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ShaderRepository$ShaderCode;->build()Lio/blueflower/stapel2d/drawing/Shader;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/resources/Resources;->SHADER_BLITTING_DEFAULT:Lio/blueflower/stapel2d/drawing/Shader;

    .line 234
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->loadShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 237
    :goto_4f
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->SHADER_BLITTING_DEFAULT:Lio/blueflower/stapel2d/drawing/Shader;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Shader;->isUseable()Z

    move-result v0

    if-nez v0, :cond_73

    .line 238
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getDefaultShader()Lio/blueflower/stapel2d/drawing/Shader;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/resources/Resources;->SHADER_BLITTING_DEFAULT:Lio/blueflower/stapel2d/drawing/Shader;

    .line 239
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->loadShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 240
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Shader may not be compiled/linked!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 241
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {v1, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/Exception;)V

    .line 242
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 245
    :cond_73
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->SHADER_BLITTING_DEFAULT:Lio/blueflower/stapel2d/drawing/Shader;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 247
    sget-object v0, Linfo/flowersoft/theotown/resources/Settings;->shaderConfig:Linfo/flowersoft/theotown/resources/ShaderConfig;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getShader()Lio/blueflower/stapel2d/drawing/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/ShaderConfig;->apply(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 248
    sget-object v0, Linfo/flowersoft/theotown/resources/Settings;->shaderConfig:Linfo/flowersoft/theotown/resources/ShaderConfig;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->SHADER_FONT:Lio/blueflower/stapel2d/drawing/Shader;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/ShaderConfig;->apply(Lio/blueflower/stapel2d/drawing/Shader;)V

    return-void
.end method

.method public runPostponedTasks()V
    .registers 2

    .line 408
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->runPostponedTasks()V

    return-void
.end method

.method public setOwnBackgroundCity(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 699
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->ownBackgroundCity:Linfo/flowersoft/theotown/city/City;

    return-void
.end method

.method public setPreferredCursor(Linfo/flowersoft/theotown/ui/CursorType;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 128
    :cond_3
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->preferredCursor:Linfo/flowersoft/theotown/ui/CursorType;

    return-void
.end method

.method public shouldRenderFullspeed()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public showDialog(Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 3

    const/4 v0, 0x1

    .line 676
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 677
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->openDialog:Linfo/flowersoft/theotown/ui/Dialog;

    return-void
.end method

.method public final trackScreen()V
    .registers 2

    .line 693
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->allowTracking()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 694
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {v0, p0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logStage(Lio/blueflower/stapel2d/gamestack/Stage;)V

    :cond_b
    return-void
.end method

.method public final update()V
    .registers 10

    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->preferredCursor:Linfo/flowersoft/theotown/ui/CursorType;

    .line 255
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->tasks:Ljava/util/List;

    monitor-enter v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 258
    :goto_9
    :try_start_9
    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->tasks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_24

    add-int/lit8 v4, v4, 0x1

    .line 260
    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->tasks:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_21

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :catchall_21
    move-exception v0

    goto/16 :goto_244

    .line 263
    :cond_24
    :try_start_24
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->tasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v4, v3, :cond_35

    .line 264
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->tasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_3f

    :catchall_32
    move-exception v0

    goto/16 :goto_25c

    :cond_35
    :goto_35
    if-lez v4, :cond_3f

    .line 267
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->tasks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_35

    .line 272
    :cond_3f
    :goto_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_24 .. :try_end_40} :catchall_32

    .line 274
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->resetDrawCounter()V

    .line 275
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->resetBatchCounter()V

    .line 276
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->runPostponedTasks()V

    .line 279
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v1

    const/16 v3, 0x8d

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_74

    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->supportsFullscreen()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 280
    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->fullscreen:Z

    xor-int/2addr v1, v3

    sput-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->fullscreen:Z

    .line 281
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    sget-boolean v4, Linfo/flowersoft/theotown/resources/Settings;->fullscreen:Z

    sget v5, Linfo/flowersoft/theotown/resources/Settings;->fullscreenWidth:I

    sget v6, Linfo/flowersoft/theotown/resources/Settings;->fullscreenHeight:I

    invoke-interface {v1, v4, v5, v6}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->setFullscreen(ZII)V

    .line 285
    :cond_74
    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->experimentalFeatures:Z

    if-eqz v1, :cond_85

    sget-object v1, Linfo/flowersoft/theotown/input/KeyAction;->RESTART:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/BaseStage;->keyHit(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 286
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->requestRestart()V

    .line 290
    :cond_85
    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->experimentalFeatures:Z

    if-eqz v1, :cond_a3

    sget-object v1, Linfo/flowersoft/theotown/input/KeyAction;->TOGGLE_DARK_MODE:Linfo/flowersoft/theotown/input/KeyAction;

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/BaseStage;->keyHit(Linfo/flowersoft/theotown/input/KeyAction;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 291
    sget v1, Linfo/flowersoft/theotown/resources/Settings;->theme:I

    if-nez v1, :cond_97

    move v1, v3

    goto :goto_98

    :cond_97
    move v1, v2

    :goto_98
    sput v1, Linfo/flowersoft/theotown/resources/Settings;->theme:I

    .line 292
    sput-object v0, Linfo/flowersoft/theotown/resources/Settings;->themeId:Ljava/lang/String;

    .line 293
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->refreshCurrentStage()V

    .line 296
    :cond_a3
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchMapper;->getTouchUpdate()Lio/blueflower/stapel2d/touch/TouchUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;

    move-result-object v0

    .line 297
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/blueflower/stapel2d/gui/Gadget;->updateKeyInput(Lio/blueflower/stapel2d/key/KeyMapper;)V

    .line 299
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v1

    const/16 v4, 0x6f

    invoke-virtual {v1, v4}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(I)Z

    move-result v1

    const/4 v4, 0x4

    if-nez v1, :cond_d9

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v1

    invoke-virtual {v1, v4}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(I)Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 300
    :cond_d9
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->onBack()V

    .line 303
    :cond_dc
    invoke-static {}, Linfo/flowersoft/theotown/util/ScreenRecorder;->getInstance()Linfo/flowersoft/theotown/util/ScreenRecorder;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/ScreenRecorder;->processFrame()V

    .line 305
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v5}, Lio/blueflower/stapel2d/drawing/Engine;->clear(Lio/blueflower/stapel2d/drawing/Color;)V

    const/4 v1, 0x5

    .line 307
    invoke-static {v1}, Linfo/flowersoft/theotown/util/TimeLog;->log(I)V

    .line 309
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v1

    if-eqz v1, :cond_109

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->openDialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->needsBackground()Z

    move-result v1

    if-eqz v1, :cond_fd

    goto :goto_109

    .line 320
    :cond_fd
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->onUpdateWhileDialogIsOpen()V

    .line 322
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 323
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawGui()V

    goto :goto_130

    .line 310
    :cond_109
    :goto_109
    iget-boolean v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->useBackground:Z

    if-eqz v1, :cond_123

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v1

    if-eqz v1, :cond_123

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->isBackgroundFinished()Z

    move-result v1

    if-nez v1, :cond_123

    .line 311
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->openDialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v1, v2, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(ZZ)V

    .line 312
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->openDialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v1, v3, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(ZZ)V

    .line 314
    :cond_123
    iput-boolean v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->useBackground:Z

    .line 315
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->onUpdate()V

    .line 317
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 318
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawGui()V

    .line 326
    :goto_130
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 327
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v1

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v1, v5}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->draw(Lio/blueflower/stapel2d/drawing/Engine;)V

    .line 329
    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->showTouchPoints:Z

    if-eqz v1, :cond_145

    .line 330
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawTouchPoints()V

    .line 333
    :cond_145
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->callOverlayMethods()V

    .line 335
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->indicateCompromised()V

    .line 337
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->indicateVersion()V

    .line 338
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->indicateDebugBuild()V

    .line 339
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->indicateRecoveryMode()V

    .line 341
    invoke-static {}, Linfo/flowersoft/theotown/util/ScreenRecorder;->getInstance()Linfo/flowersoft/theotown/util/ScreenRecorder;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/ScreenRecorder;->takeFrame()V

    .line 342
    invoke-static {}, Linfo/flowersoft/theotown/resources/ConfigManager;->getInstance()Linfo/flowersoft/theotown/resources/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/resources/ConfigManager;->fetchOnline()V

    const/4 v1, 0x2

    .line 346
    invoke-static {v1}, Linfo/flowersoft/theotown/util/TimeLog;->log(I)V

    .line 348
    :try_start_166
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->endFrame()V
    :try_end_16b
    .catch Ljava/lang/RuntimeException; {:try_start_166 .. :try_end_16b} :catch_16c

    goto :goto_174

    :catch_16c
    move-exception v1

    .line 350
    sget-object v5, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v6, "EndFrame"

    invoke-interface {v5, v6, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_174
    const/4 v1, 0x3

    .line 352
    invoke-static {v1}, Linfo/flowersoft/theotown/util/TimeLog;->log(I)V

    .line 356
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v5

    iget-wide v7, p0, Linfo/flowersoft/theotown/stages/BaseStage;->lastRenderMS:J

    sub-long/2addr v5, v7

    long-to-int v1, v5

    .line 357
    iput v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->lastRenderTime:I

    .line 359
    sget-object v5, Linfo/flowersoft/theotown/ui/CursorManager;->INSTANCE:Linfo/flowersoft/theotown/ui/CursorManager;

    if-eqz v0, :cond_187

    goto :goto_18e

    :cond_187
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->preferredCursor:Linfo/flowersoft/theotown/ui/CursorType;

    if-eqz v0, :cond_18c

    goto :goto_18e

    :cond_18c
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Normal:Linfo/flowersoft/theotown/ui/CursorType;

    :goto_18e
    sget-object v6, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v6}, Lcom/badlogic/gdx/Input;->isTouched()Z

    move-result v6

    invoke-virtual {v5, v0, v6}, Linfo/flowersoft/theotown/ui/CursorManager;->setCursor(Linfo/flowersoft/theotown/ui/CursorType;Z)V

    .line 362
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->screenTaps:I

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object v5

    invoke-virtual {v5}, Lio/blueflower/stapel2d/touch/TouchMapper;->getTouchUpdate()Lio/blueflower/stapel2d/touch/TouchUpdate;

    move-result-object v5

    invoke-virtual {v5}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getAddedTouchPoint()Lio/blueflower/stapel2d/touch/TouchPoint;

    move-result-object v5

    if-eqz v5, :cond_1ab

    move v5, v3

    goto :goto_1ac

    :cond_1ab
    move v5, v2

    :goto_1ac
    add-int/2addr v0, v5

    sput v0, Linfo/flowersoft/theotown/resources/Settings;->screenTaps:I

    .line 364
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->isInputActive()Z

    .line 365
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->getTargetTotalFrameTime()I

    move-result v0

    if-gez v1, :cond_1b9

    move v1, v0

    .line 368
    :cond_1b9
    sget v5, Linfo/flowersoft/theotown/resources/Settings;->targetFps:I

    if-nez v5, :cond_210

    sub-int v5, v0, v1

    .line 370
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->delimitedMS:I

    :cond_1c5
    :goto_1c5
    add-int/lit8 v5, v0, -0x4

    if-ge v1, v5, :cond_1f5

    sub-int/2addr v0, v1

    sub-int/2addr v0, v4

    const/16 v1, 0x8

    .line 373
    :try_start_1cd
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d5
    .catch Ljava/lang/InterruptedException; {:try_start_1cd .. :try_end_1d5} :catch_1d6

    goto :goto_1e2

    :catch_1d6
    move-exception v0

    .line 375
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v5, "FPS DELIMITER"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v5, v0}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :goto_1e2
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iget-wide v5, p0, Linfo/flowersoft/theotown/stages/BaseStage;->lastRenderMS:J

    sub-long/2addr v0, v5

    long-to-int v1, v0

    .line 379
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->isInputActive()Z

    .line 380
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->getTargetTotalFrameTime()I

    move-result v0

    if-gez v1, :cond_1c5

    move v1, v0

    goto :goto_1c5

    .line 383
    :cond_1f5
    iget v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->stillInputActiveCount:I

    sub-int/2addr v0, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->stillInputActiveCount:I

    if-nez v0, :cond_229

    .line 384
    iget v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->performanceLevel:I

    if-ge v0, v4, :cond_229

    add-int/2addr v0, v3

    .line 385
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->performanceLevel:I

    const/16 v0, 0x1e

    .line 386
    iput v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->stillInputActiveCount:I

    goto :goto_229

    :cond_210
    const/16 v0, 0x3e8

    .line 389
    div-int/2addr v0, v5

    sub-int/2addr v0, v1

    .line 390
    iput v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->delimitedMS:I

    if-lez v0, :cond_229

    int-to-long v0, v0

    .line 393
    :try_start_219
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21c
    .catch Ljava/lang/InterruptedException; {:try_start_219 .. :try_end_21c} :catch_21d

    goto :goto_229

    :catch_21d
    move-exception v0

    .line 395
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "FPS DELIMITER"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_229
    :goto_229
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->lastRenderMS:J

    .line 401
    invoke-static {v4}, Linfo/flowersoft/theotown/util/TimeLog;->log(I)V

    .line 403
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->beginFrame()V

    .line 404
    iget-wide v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->enteredTime:D

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getDeltaTime()F

    move-result v2

    float-to-double v2, v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->enteredTime:D

    return-void

    .line 263
    :goto_244
    :try_start_244
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->tasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v4, v3, :cond_256

    :goto_24c
    if-lez v4, :cond_25b

    .line 267
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->tasks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_24c

    .line 264
    :cond_256
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->tasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 271
    :cond_25b
    throw v0

    .line 272
    :goto_25c
    monitor-exit v1
    :try_end_25d
    .catchall {:try_start_244 .. :try_end_25d} :catchall_32

    throw v0
.end method

###### Class info.flowersoft.theotown.stages.BaseStage.AnonymousClass1 (info.flowersoft.theotown.stages.BaseStage$1)
.class public Linfo/flowersoft/theotown/stages/BaseStage$1;
.super Ljava/lang/Object;
.source "BaseStage.java"

# interfaces
.implements Lio/blueflower/stapel2d/gui/Master$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/BaseStage;->prepareGUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/BaseStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/BaseStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 189
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/BaseStage$1;->this$0:Linfo/flowersoft/theotown/stages/BaseStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 4

    .line 192
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object p1

    sget v0, Linfo/flowersoft/theotown/resources/Resources;->SOUND_CLICK:I

    sget-object v1, Linfo/flowersoft/theotown/resources/SoundType;->UI:Linfo/flowersoft/theotown/resources/SoundType;

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/resources/SoundPlayer;->play(ILinfo/flowersoft/theotown/resources/SoundType;)Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.BaseStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.BaseStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/BaseStage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/BaseStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/BaseStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/BaseStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/BaseStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/BaseStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/BaseStage;->$r8$lambda$ZrtnGcuJSlZxuk2VnPMFBETBkZo(Linfo/flowersoft/theotown/stages/BaseStage;)V

    return-void
.end method
