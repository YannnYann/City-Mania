###### Class info.flowersoft.theotown.stages.CreateCityStageExt (info.flowersoft.theotown.stages.CreateCityStageExt)
.class public Linfo/flowersoft/theotown/stages/CreateCityStageExt;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "CreateCityStageExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/stages/CreateCityStageExt$MapSizeRepr;
    }
.end annotation


# instance fields
.field public cmdForward:Linfo/flowersoft/theotown/ui/GoldButton;

.field public final generator:Linfo/flowersoft/theotown/util/CityGenerator;

.field public lastGenerated:Linfo/flowersoft/theotown/util/CityGenerator;

.field public mapPreview:Linfo/flowersoft/theotown/ui/MapPreview;

.field public final origin:Linfo/flowersoft/theotown/util/CityGenerator;

.field public final region:Z

.field public sizeButton:Linfo/flowersoft/theotown/ui/ComboButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/ui/ComboButton<",
            "Linfo/flowersoft/theotown/city/MapSize;",
            ">;"
        }
    .end annotation
.end field

.field public tfSeed:Linfo/flowersoft/theotown/ui/TextField;


# direct methods
.method public static synthetic $r8$lambda$DW8FJQPFXlpK1E-sph6TSEHbzoE(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V
    .registers 3

    .line 162
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 162
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getRegionLayout()Linfo/flowersoft/theotown/util/RegionLayout;

    move-result-object v0

    .line 164
    :try_start_6
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/CityGenerator;->getSize()Linfo/flowersoft/theotown/city/MapSize;

    move-result-object p0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/MapSize;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x40

    const/16 v1, 0x8

    if-ge p0, v1, :cond_21

    .line 165
    new-instance p0, Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "{\"xyde\":[0,0,4,0,1,0,4,1,0,1,4,1,2,0,4,1,3,0,4,0,3,1,4,1,0,2,4,1,0,3,4,0,1,3,4,1,3,2,4,1,2,3,4,1,3,3,4,0,1,1,2,1],\"max divisor\":4,\"stride\":4,\"max allowed divisor\":6}"

    invoke-direct {p0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/util/RegionLayout;->fromJSON(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void

    .line 167
    :cond_21
    new-instance p0, Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "{\"xyde\":[2,0,8,0,2,1,8,1,5,0,8,0,5,1,8,1,6,2,8,1,7,2,8,0,6,5,8,1,7,5,8,0,5,6,8,1,5,7,8,0,2,6,8,1,2,7,8,0,0,5,8,0,1,5,8,1,0,2,8,0,1,2,8,1,3,0,4,1,0,3,4,1,3,6,4,1,6,3,4,1,2,2,2,1,0,0,8,0,1,0,8,0,0,1,8,0,1,1,8,1,6,0,8,0,7,0,8,0,6,1,8,1,7,1,8,0,6,6,8,1,7,6,8,0,6,7,8,0,7,7,8,0,0,6,8,0,1,6,8,1,0,7,8,0,1,7,8,0],\"max divisor\":8,\"stride\":4,\"max allowed divisor\":8}"

    invoke-direct {p0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Linfo/flowersoft/theotown/util/RegionLayout;->fromJSON(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    :try_end_2b
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_6 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p0

    .line 170
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic $r8$lambda$I51ARaXhIRhxZO8p3K3NoqM7eFg(Linfo/flowersoft/theotown/stages/CreateCityStageExt;Linfo/flowersoft/theotown/city/MapSize;)V
    .registers 3

    .line 127
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 127
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/CityGenerator;->setSize(Linfo/flowersoft/theotown/city/MapSize;)V

    .line 128
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generateMinimap()V

    return-void
.end method

.method public static synthetic $r8$lambda$IB7ZYOVLDO-xUpB-WrnBP47l4Xo(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V
    .registers 3

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->origin:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 239
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/CityGenerator;->setTo(Linfo/flowersoft/theotown/util/CityGenerator;)V

    .line 240
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

.method public static synthetic $r8$lambda$M9dbaamg39vHimjDXTNdmywjmTg(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V
    .registers 2

    .line 234
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 235
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

.method public static synthetic $r8$lambda$QbfsR6b_1rLRhsLLHnlOh5cl-yY(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V
    .registers 3

    .line 97
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 97
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->setRandomSeed()V

    .line 98
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->tfSeed:Linfo/flowersoft/theotown/ui/TextField;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/CityGenerator;->getSeed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/TextField;->setText(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generateMinimap()V

    return-void
.end method

.method public static synthetic $r8$lambda$U3eh5-jkcR8pOhtMqGdeWZue5Qo(Linfo/flowersoft/theotown/stages/CreateCityStageExt;Linfo/flowersoft/theotown/util/CityGenerator;)Linfo/flowersoft/theotown/city/City;
    .registers 3

    .line 268
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->mapPreview:Linfo/flowersoft/theotown/ui/MapPreview;

    .line 268
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/MapPreview;->getProgress()Linfo/flowersoft/theotown/util/ProgressVariable;

    move-result-object v0

    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->mapPreview:Linfo/flowersoft/theotown/ui/MapPreview;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/MapPreview;->getStatus()Lio/blueflower/stapel2d/util/Setter;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Linfo/flowersoft/theotown/util/CityGenerator;->generate(Linfo/flowersoft/theotown/util/ProgressVariable;Lio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/creation/CityCreator$CityData;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 269
    iget-object p0, p0, Linfo/flowersoft/theotown/creation/CityCreator$CityData;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XNkvZDjIvoTHQkL6HYUsSWJwtT0(Linfo/flowersoft/theotown/stages/CreateCityStageExt;Ljava/io/File;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    new-instance v0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda11;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f4qF6ln4_4Su03-Lnh2SSAM8Z1k(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APP_CACHE_DIR:Ljava/io/File;

    new-instance v2, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda10;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->importImageFile(Ljava/io/File;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fD5M0Mij2SvpXdMIXYvBENnVYxA(Linfo/flowersoft/theotown/stages/CreateCityStageExt;Ljava/io/File;)V
    .registers 4

    .line 114
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 114
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/CityGenerator;->setSeed(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->tfSeed:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/TextField;->setText(Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generateMinimap()V

    return-void
.end method

.method public static synthetic $r8$lambda$nLbyMA0Yki4VMyY-iu0eLsRPzzg(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V
    .registers 7

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 102
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 103
    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/CityGenerator;->getHeightMapManager()Linfo/flowersoft/theotown/resources/HeightMapManager;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/CityGenerator;->getSeed()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda8;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    .line 108
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v5

    .line 102
    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs;->showSeedDialog(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/resources/HeightMapManager;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/String;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$odYyQxAdWgLkyurZcx8YqkNK1EI(Linfo/flowersoft/theotown/stages/CreateCityStageExt;Ljava/lang/String;)V
    .registers 4

    .line 104
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/CityGenerator;->setSeed(Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/CityGenerator;->setRandomSeed()V

    .line 106
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->tfSeed:Linfo/flowersoft/theotown/ui/TextField;

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getSeed()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/ui/TextField;->setText(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generateMinimap()V

    return-void
.end method

.method public static synthetic $r8$lambda$xndiNr9_hMtpIF657AN7cL2qNYg(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V
    .registers 3

    .line 157
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 157
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/CityGenerator;->getRegionLayout()Linfo/flowersoft/theotown/util/RegionLayout;

    move-result-object p0

    .line 158
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/RegionLayout;->reset()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 159
    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/util/RegionLayout;->divide(II)I

    return-void
.end method

.method public static synthetic $r8$lambda$zSmdgaz1oRoKY3JJ-Tgk7SX9shE(Linfo/flowersoft/theotown/stages/CreateCityStageExt;Ljava/io/File;)V
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_16

    .line 111
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 112
    invoke-virtual {p1}, Ljava/io/File;->deleteOnExit()V

    .line 113
    new-instance v0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda12;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;Ljava/io/File;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->addTask(Ljava/lang/Runnable;)V

    :cond_16
    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/util/CityGenerator;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Z)V
    .registers 5

    .line 55
    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 57
    iput-boolean p3, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->region:Z

    .line 58
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->origin:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 60
    new-instance v0, Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-direct {v0, p2, p3}, Linfo/flowersoft/theotown/util/CityGenerator;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Z)V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 61
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/CityGenerator;->setTo(Linfo/flowersoft/theotown/util/CityGenerator;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)Linfo/flowersoft/theotown/util/CityGenerator;
    .registers 1

    .line 39
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generateMinimap()V

    return-void
.end method

.method private generateMinimap()V
    .registers 6

    .line 264
    new-instance v0, Linfo/flowersoft/theotown/util/CityGenerator;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/CityGenerator;-><init>(Linfo/flowersoft/theotown/util/CityGenerator;)V

    .line 265
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->lastGenerated:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/CityGenerator;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 266
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->lastGenerated:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 267
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->mapPreview:Linfo/flowersoft/theotown/ui/MapPreview;

    new-instance v2, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda9;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;Linfo/flowersoft/theotown/util/CityGenerator;)V

    .line 270
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getEffectiveSize()I

    move-result v3

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getEffectiveGridSize()I

    move-result v4

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getRegionLayout()Linfo/flowersoft/theotown/util/RegionLayout;

    move-result-object v0

    .line 267
    invoke-virtual {v1, v2, v3, v4, v0}, Linfo/flowersoft/theotown/ui/MapPreview;->issueMinimapRendering(Lio/blueflower/stapel2d/util/Getter;IILinfo/flowersoft/theotown/util/RegionLayout;)V

    :cond_27
    return-void
.end method


# virtual methods
.method public drop()V
    .registers 2

    .line 291
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->mapPreview:Linfo/flowersoft/theotown/ui/MapPreview;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/MapPreview;->stopRendering()V

    .line 292
    :cond_7
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drop()V

    return-void
.end method

.method public enter()V
    .registers 19

    move-object/from16 v1, p0

    .line 66
    invoke-super {v1}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 69
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->getInstance()Linfo/flowersoft/theotown/resources/WinterManager;

    move-result-object v0

    sget v2, Linfo/flowersoft/theotown/resources/Settings;->winter:I

    invoke-static {v2}, Linfo/flowersoft/theotown/resources/WinterManager;->shouldItBeWinter(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/resources/WinterManager;->setWinter(Z)V

    .line 71
    new-instance v9, Linfo/flowersoft/theotown/ui/Page;

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-boolean v3, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->region:Z

    if-eqz v3, :cond_1f

    const/16 v3, 0x567

    goto :goto_21

    :cond_1f
    const/16 v3, 0x101

    :goto_21
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_CITY:I

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v9, v0, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Page;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;ILio/blueflower/stapel2d/gui/Master;)V

    .line 72
    invoke-virtual {v9}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v15

    .line 74
    new-instance v7, Linfo/flowersoft/theotown/util/LineLayoutFiller;

    const/16 v0, 0x1e

    const/4 v8, 0x1

    invoke-direct {v7, v0, v8, v15}, Linfo/flowersoft/theotown/util/LineLayoutFiller;-><init>(IILio/blueflower/stapel2d/gui/Gadget;)V

    const/16 v2, 0x50

    const/4 v3, 0x0

    .line 75
    invoke-virtual {v7, v3, v2}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    const/4 v2, 0x0

    .line 77
    iput-object v2, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->lastGenerated:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 78
    new-instance v10, Linfo/flowersoft/theotown/ui/MapPreview;

    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    add-int/lit16 v11, v4, -0x82

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v17, 0x1

    const/4 v12, 0x0

    const/16 v13, 0x82

    const/16 v14, 0x82

    move-object/from16 v16, v4

    invoke-direct/range {v10 .. v17}, Linfo/flowersoft/theotown/ui/MapPreview;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;Z)V

    iput-object v10, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->mapPreview:Linfo/flowersoft/theotown/ui/MapPreview;

    .line 79
    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->mapPreview:Linfo/flowersoft/theotown/ui/MapPreview;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v10, 0x2

    sub-int/2addr v4, v10

    invoke-virtual {v7, v4}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setLineWidth(I)V

    .line 81
    invoke-virtual {v7, v10, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    const/4 v11, 0x3

    .line 82
    invoke-virtual {v7, v11, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    const/4 v4, 0x4

    .line 83
    invoke-virtual {v7, v4, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    .line 84
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xc1a

    invoke-interface {v0, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addLabel(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Label;

    .line 85
    new-instance v0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$1;

    const/4 v4, 0x0

    invoke-virtual {v7}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->getLineHeight()I

    move-result v5

    move-object v6, v2

    const/4 v2, 0x0

    move v12, v3

    move-object v13, v6

    move-object v6, v15

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$1;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->tfSeed:Linfo/flowersoft/theotown/ui/TextField;

    .line 92
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/CityGenerator;->getSeed()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/TextField;->setText(Ljava/lang/String;)V

    .line 93
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->tfSeed:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/TextField;->setActive()V

    .line 94
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->tfSeed:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v7, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 96
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_RANDOM:I

    new-instance v2, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    const-string v3, ""

    invoke-virtual {v7, v0, v3, v2}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/IconButton;

    .line 102
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_MAP:I

    new-instance v2, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    invoke-virtual {v7, v0, v3, v2}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/IconButton;

    .line 110
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_FOLDER:I

    new-instance v2, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    invoke-virtual {v7, v0, v3, v2}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/IconButton;

    .line 121
    invoke-virtual {v7}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    .line 122
    invoke-virtual {v7, v10, v12}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    .line 123
    invoke-virtual {v7, v11, v12}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    .line 125
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xd8a

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addLabel(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Label;

    .line 126
    new-instance v10, Linfo/flowersoft/theotown/ui/ComboButton;

    new-instance v0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$MapSizeRepr;

    invoke-direct {v0, v1, v13}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$MapSizeRepr;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;Linfo/flowersoft/theotown/stages/CreateCityStageExt$1;)V

    new-instance v2, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    const/4 v11, 0x0

    move v3, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move v0, v3

    invoke-direct/range {v10 .. v17}, Linfo/flowersoft/theotown/ui/ComboButton;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/ComboButton$ButtonRepr;Lio/blueflower/stapel2d/util/Setter;)V

    iput-object v10, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->sizeButton:Linfo/flowersoft/theotown/ui/ComboButton;

    .line 131
    iget-boolean v2, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->region:Z

    if-nez v2, :cond_109

    .line 132
    sget-object v2, Linfo/flowersoft/theotown/city/MapSize;->SMALL:Linfo/flowersoft/theotown/city/MapSize;

    invoke-virtual {v10, v2}, Linfo/flowersoft/theotown/ui/ComboButton;->addItem(Ljava/lang/Object;)V

    .line 133
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->sizeButton:Linfo/flowersoft/theotown/ui/ComboButton;

    sget-object v3, Linfo/flowersoft/theotown/city/MapSize;->MIDDLE:Linfo/flowersoft/theotown/city/MapSize;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/ui/ComboButton;->addItem(Ljava/lang/Object;)V

    .line 134
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->sizeButton:Linfo/flowersoft/theotown/ui/ComboButton;

    sget-object v3, Linfo/flowersoft/theotown/city/MapSize;->BIG:Linfo/flowersoft/theotown/city/MapSize;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/ui/ComboButton;->addItem(Ljava/lang/Object;)V

    .line 136
    :cond_109
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->sizeButton:Linfo/flowersoft/theotown/ui/ComboButton;

    sget-object v3, Linfo/flowersoft/theotown/city/MapSize;->BIG2:Linfo/flowersoft/theotown/city/MapSize;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/ui/ComboButton;->addItem(Ljava/lang/Object;)V

    .line 137
    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->debugMode:Z

    if-nez v2, :cond_122

    iget-boolean v2, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->region:Z

    if-nez v2, :cond_122

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v2

    sget-object v4, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v2, v4, :cond_155

    .line 138
    :cond_122
    iget-boolean v2, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->region:Z

    if-nez v2, :cond_12d

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->sizeButton:Linfo/flowersoft/theotown/ui/ComboButton;

    sget-object v4, Linfo/flowersoft/theotown/city/MapSize;->BIG3:Linfo/flowersoft/theotown/city/MapSize;

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/ui/ComboButton;->addItem(Ljava/lang/Object;)V

    .line 139
    :cond_12d
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->sizeButton:Linfo/flowersoft/theotown/ui/ComboButton;

    sget-object v4, Linfo/flowersoft/theotown/city/MapSize;->BIG4:Linfo/flowersoft/theotown/city/MapSize;

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/ui/ComboButton;->addItem(Ljava/lang/Object;)V

    .line 140
    iget-boolean v2, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->region:Z

    if-eqz v2, :cond_155

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    const-wide/16 v10, 0x400

    div-long/2addr v4, v10

    div-long/2addr v4, v10

    const-wide/16 v10, 0x200

    cmp-long v2, v4, v10

    if-gez v2, :cond_14e

    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->experimentalFeatures:Z

    if-eqz v2, :cond_155

    .line 141
    :cond_14e
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->sizeButton:Linfo/flowersoft/theotown/ui/ComboButton;

    sget-object v4, Linfo/flowersoft/theotown/city/MapSize;->BIG8:Linfo/flowersoft/theotown/city/MapSize;

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/ui/ComboButton;->addItem(Ljava/lang/Object;)V

    .line 144
    :cond_155
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->sizeButton:Linfo/flowersoft/theotown/ui/ComboButton;

    invoke-virtual {v7, v2}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 145
    invoke-virtual {v7}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    .line 147
    iget-boolean v2, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->region:Z

    if-eqz v2, :cond_1c8

    .line 148
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/CityGenerator;->getSize()Linfo/flowersoft/theotown/city/MapSize;

    move-result-object v2

    if-eq v2, v3, :cond_196

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 149
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/CityGenerator;->getSize()Linfo/flowersoft/theotown/city/MapSize;

    move-result-object v2

    sget-object v4, Linfo/flowersoft/theotown/city/MapSize;->BIG3:Linfo/flowersoft/theotown/city/MapSize;

    if-eq v2, v4, :cond_196

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 150
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/CityGenerator;->getSize()Linfo/flowersoft/theotown/city/MapSize;

    move-result-object v2

    sget-object v4, Linfo/flowersoft/theotown/city/MapSize;->BIG4:Linfo/flowersoft/theotown/city/MapSize;

    if-eq v2, v4, :cond_196

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    .line 151
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/CityGenerator;->getSize()Linfo/flowersoft/theotown/city/MapSize;

    move-result-object v2

    sget-object v4, Linfo/flowersoft/theotown/city/MapSize;->BIG8:Linfo/flowersoft/theotown/city/MapSize;

    if-ne v2, v4, :cond_191

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v2

    sget-object v4, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v2, v4, :cond_196

    .line 152
    :cond_191
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/CityGenerator;->setSize(Linfo/flowersoft/theotown/city/MapSize;)V

    .line 155
    :cond_196
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xae8

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addLabel(Ljava/lang/String;)Lio/blueflower/stapel2d/gui/Label;

    .line 156
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION_SPLIT:I

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x31c

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda4;

    invoke-direct {v4, v1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    invoke-virtual {v7, v2, v3, v4}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/IconButton;

    .line 161
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION_CIRCLE:I

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xd83

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda5;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    invoke-virtual {v7, v2, v3, v4}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/IconButton;

    .line 173
    invoke-virtual {v7}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    .line 177
    :cond_1c8
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->sizeButton:Linfo/flowersoft/theotown/ui/ComboButton;

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/CityGenerator;->getSize()Linfo/flowersoft/theotown/city/MapSize;

    move-result-object v3

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/ui/ComboButton;->select(Ljava/lang/Object;)V

    .line 179
    invoke-virtual {v7, v0, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->setTargetSize(II)V

    .line 181
    new-instance v2, Linfo/flowersoft/theotown/stages/CreateCityStageExt$2;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_TREE:I

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x587

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4, v15}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$2;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;ILjava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;)V

    invoke-virtual {v7, v2}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 195
    new-instance v2, Linfo/flowersoft/theotown/stages/CreateCityStageExt$3;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_DECORATION:I

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x9c7

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4, v15}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$3;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;ILjava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;)V

    invoke-virtual {v7, v2}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V

    move v12, v0

    .line 209
    new-instance v0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$4;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_HILLS:I

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xd17

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object v4, v7

    const/4 v7, 0x0

    move-object v5, v4

    const/4 v4, 0x0

    move-object v10, v5

    const/4 v5, 0x0

    move v11, v8

    move-object v8, v15

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$4;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    invoke-virtual {v10, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 220
    new-instance v0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$5;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_DESERT:I

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xc9a

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$5;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    invoke-virtual {v10, v0}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->addGadget(Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 231
    invoke-virtual {v10}, Linfo/flowersoft/theotown/util/LineLayoutFiller;->finalizeLine()V

    .line 233
    new-instance v0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda6;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda6;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    invoke-virtual {v9, v0}, Linfo/flowersoft/theotown/ui/Page;->setOnBackgroundClick(Ljava/lang/Runnable;)V

    .line 238
    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_FORWARD:I

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x705

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda7;

    invoke-direct {v8, v1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda7;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    const/4 v7, 0x1

    move-object v3, v9

    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    iput-object v0, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->cmdForward:Linfo/flowersoft/theotown/ui/GoldButton;

    .line 242
    invoke-virtual {v0, v11}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 243
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->cmdForward:Linfo/flowersoft/theotown/ui/GoldButton;

    const/16 v2, 0x42

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 245
    iget-boolean v0, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->region:Z

    if-eqz v0, :cond_271

    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->hasAccessToStorage()Z

    move-result v0

    if-nez v0, :cond_271

    .line 246
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->tfSeed:Linfo/flowersoft/theotown/ui/TextField;

    if-eqz v0, :cond_266

    invoke-virtual {v0, v12}, Linfo/flowersoft/theotown/ui/TextField;->setVisible(Z)V

    .line 247
    :cond_266
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v3

    invoke-static {v0, v2, v3}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs;->showNoPermissionsDialog(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    .line 250
    :cond_271
    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generateMinimap()V

    return-void
.end method

.method public final hasAccessToStorage()Z
    .registers 4

    .line 254
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2b

    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->region:Z

    if-eqz v0, :cond_2b

    .line 255
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getRegionsDir()Ljava/io/File;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 257
    :cond_1c
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_29

    return v2

    :cond_29
    const/4 v0, 0x0

    return v0

    :cond_2b
    return v2
.end method

.method public onBack()V
    .registers 2

    .line 297
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v0

    .line 298
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->onBack()V

    if-nez v0, :cond_10

    .line 300
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    :cond_10
    return-void
.end method

.method public onUpdate()V
    .registers 4

    .line 276
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawBackground()V

    .line 278
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->region:Z

    if-eqz v0, :cond_25

    .line 279
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getRegionLayout()Linfo/flowersoft/theotown/util/RegionLayout;

    move-result-object v0

    .line 280
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->generator:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/CityGenerator;->getSize()Linfo/flowersoft/theotown/city/MapSize;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/MapSize;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x40

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/RegionLayout;->setMaxAllowedDivisor(I)V

    .line 281
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->cmdForward:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/RegionLayout;->isValid()Z

    move-result v0

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setEnabled(Z)V

    .line 284
    :cond_25
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->tfSeed:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/TextField;->usesNativeTextField()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 285
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->tfSeed:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v1

    if-nez v1, :cond_49

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->sizeButton:Linfo/flowersoft/theotown/ui/ComboButton;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/ComboButton;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_49

    :cond_47
    const/4 v1, 0x1

    goto :goto_4a

    :cond_49
    const/4 v1, 0x0

    :goto_4a
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/TextField;->setVisible(Z)V

    :cond_4d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreateCityStage1;region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->region:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStageExt.AnonymousClass1 (info.flowersoft.theotown.stages.CreateCityStageExt$1)
.class public Linfo/flowersoft/theotown/stages/CreateCityStageExt$1;
.super Linfo/flowersoft/theotown/ui/TextField;
.source "CreateCityStageExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CreateCityStageExt;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 85
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$1;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Linfo/flowersoft/theotown/ui/TextField;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onTextChange(Ljava/lang/String;)V
    .registers 3

    .line 88
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$1;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->access$000(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)Linfo/flowersoft/theotown/util/CityGenerator;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/CityGenerator;->setSeed(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$1;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->access$100(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStageExt.AnonymousClass2 (info.flowersoft.theotown.stages.CreateCityStageExt$2)
.class public Linfo/flowersoft/theotown/stages/CreateCityStageExt$2;
.super Linfo/flowersoft/theotown/ui/IconRadioButton;
.source "CreateCityStageExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CreateCityStageExt;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;ILjava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 181
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$2;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    invoke-direct {p0, p2, p3, p4}, Linfo/flowersoft/theotown/ui/IconRadioButton;-><init>(ILjava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isPressed()Z
    .registers 2

    .line 191
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$2;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->access$000(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)Linfo/flowersoft/theotown/util/CityGenerator;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->isTrees()Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 184
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/IconRadioButton;->onClick()V

    .line 185
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$2;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->access$000(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)Linfo/flowersoft/theotown/util/CityGenerator;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$2;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->access$000(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)Linfo/flowersoft/theotown/util/CityGenerator;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/CityGenerator;->isTrees()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/CityGenerator;->setTrees(Z)V

    .line 186
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$2;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->access$100(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStageExt.AnonymousClass3 (info.flowersoft.theotown.stages.CreateCityStageExt$3)
.class public Linfo/flowersoft/theotown/stages/CreateCityStageExt$3;
.super Linfo/flowersoft/theotown/ui/IconRadioButton;
.source "CreateCityStageExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CreateCityStageExt;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;ILjava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 195
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$3;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    invoke-direct {p0, p2, p3, p4}, Linfo/flowersoft/theotown/ui/IconRadioButton;-><init>(ILjava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isPressed()Z
    .registers 2

    .line 205
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$3;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->access$000(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)Linfo/flowersoft/theotown/util/CityGenerator;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->isDecos()Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 198
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/IconRadioButton;->onClick()V

    .line 199
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$3;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->access$000(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)Linfo/flowersoft/theotown/util/CityGenerator;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$3;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->access$000(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)Linfo/flowersoft/theotown/util/CityGenerator;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/CityGenerator;->isDecos()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/CityGenerator;->setDecos(Z)V

    .line 200
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$3;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->access$100(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStageExt.AnonymousClass4 (info.flowersoft.theotown.stages.CreateCityStageExt$4)
.class public Linfo/flowersoft/theotown/stages/CreateCityStageExt$4;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "CreateCityStageExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CreateCityStageExt;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;


# direct methods
.method public static synthetic $r8$lambda$l9LESskoFnF4crzYQdGEVpI3Nzg(Linfo/flowersoft/theotown/stages/CreateCityStageExt$4;Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;)V
    .registers 3

    .line 214
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$4;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    .line 214
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->access$000(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)Linfo/flowersoft/theotown/util/CityGenerator;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;->apply(Linfo/flowersoft/theotown/util/CityGenerator;)V

    .line 215
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$4;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    invoke-static {p0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->access$100(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 209
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$4;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 5

    .line 212
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 213
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$4;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v2, v0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    new-instance v3, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->access$000(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)Linfo/flowersoft/theotown/util/CityGenerator;

    move-result-object v0

    invoke-direct {v3, v0}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;-><init>(Linfo/flowersoft/theotown/util/CityGenerator;)V

    new-instance v0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$4$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt$4;)V

    invoke-static {v1, v2, v3, v0}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs;->showTerrainDialog(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStageExt$4$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.CreateCityStageExt$4$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStageExt$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt$4;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt$4;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$4$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt$4;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$4$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt$4;

    check-cast p1, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$4;->$r8$lambda$l9LESskoFnF4crzYQdGEVpI3Nzg(Linfo/flowersoft/theotown/stages/CreateCityStageExt$4;Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs$TerrainSettings;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStageExt.AnonymousClass5 (info.flowersoft.theotown.stages.CreateCityStageExt$5)
.class public Linfo/flowersoft/theotown/stages/CreateCityStageExt$5;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "CreateCityStageExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CreateCityStageExt;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;


# direct methods
.method public static synthetic $r8$lambda$7gtbogZ87jK2b_XFTdwB63rr8Y0(Linfo/flowersoft/theotown/stages/CreateCityStageExt$5;Ljava/util/List;)V
    .registers 3

    .line 225
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$5;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    .line 225
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->access$000(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)Linfo/flowersoft/theotown/util/CityGenerator;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/CityGenerator;->setDisabledBiomeIds(Ljava/util/List;)V

    .line 226
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$5;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    invoke-static {p0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->access$100(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 220
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$5;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 5

    .line 223
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 224
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$5;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v2, v0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->access$000(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)Linfo/flowersoft/theotown/util/CityGenerator;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/CityGenerator;->getDisabledBiomeIds()Ljava/util/List;

    move-result-object v0

    new-instance v3, Linfo/flowersoft/theotown/stages/CreateCityStageExt$5$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$5$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt$5;)V

    invoke-static {v1, v2, v0, v3}, Linfo/flowersoft/theotown/stages/createcity/CreateCityDialogs;->showBiomeSelectionDialog(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Ljava/util/List;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStageExt$5$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.CreateCityStageExt$5$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStageExt$5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt$5;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt$5;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$5$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt$5;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$5$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt$5;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$5;->$r8$lambda$7gtbogZ87jK2b_XFTdwB63rr8Y0(Linfo/flowersoft/theotown/stages/CreateCityStageExt$5;Ljava/util/List;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStageExt.MapSizeRepr (info.flowersoft.theotown.stages.CreateCityStageExt$MapSizeRepr)
.class public Linfo/flowersoft/theotown/stages/CreateCityStageExt$MapSizeRepr;
.super Ljava/lang/Object;
.source "CreateCityStageExt.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/ComboButton$ButtonRepr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/CreateCityStageExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MapSizeRepr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/ui/ComboButton$ButtonRepr<",
        "Linfo/flowersoft/theotown/city/MapSize;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 309
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$MapSizeRepr;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;Linfo/flowersoft/theotown/stages/CreateCityStageExt$1;)V
    .registers 3

    .line 309
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$MapSizeRepr;-><init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    return-void
.end method


# virtual methods
.method public getIcon(Linfo/flowersoft/theotown/city/MapSize;)I
    .registers 2

    .line 312
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/MapSize;->getIcon()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getIcon(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 309
    check-cast p1, Linfo/flowersoft/theotown/city/MapSize;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$MapSizeRepr;->getIcon(Linfo/flowersoft/theotown/city/MapSize;)I

    move-result p1

    return p1
.end method

.method public getText(Linfo/flowersoft/theotown/city/MapSize;)Ljava/lang/String;
    .registers 5

    .line 317
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/MapSize;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    .line 318
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/MapSize;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    mul-int/2addr v0, v1

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$MapSizeRepr;->this$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/MapSize;->getLocalizationId()I

    move-result p1

    invoke-interface {v2, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$MapSizeRepr;->localizeArea(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getText(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 309
    check-cast p1, Linfo/flowersoft/theotown/city/MapSize;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt$MapSizeRepr;->getText(Linfo/flowersoft/theotown/city/MapSize;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final localizeArea(I)Ljava/lang/String;
    .registers 3

    int-to-float p1, p1

    const v0, 0x49742400    # 1000000.0f

    div-float/2addr p1, v0

    .line 326
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->getEffectiveUnits()Linfo/flowersoft/theotown/util/UnitsSetting;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/UnitsSetting;->localizeArea(F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->$r8$lambda$QbfsR6b_1rLRhsLLHnlOh5cl-yY(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->$r8$lambda$nLbyMA0Yki4VMyY-iu0eLsRPzzg(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda8 (info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda8)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda8;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->$r8$lambda$odYyQxAdWgLkyurZcx8YqkNK1EI(Linfo/flowersoft/theotown/stages/CreateCityStageExt;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda10 (info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda10)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda10;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    check-cast p1, Ljava/io/File;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->$r8$lambda$XNkvZDjIvoTHQkL6HYUsSWJwtT0(Linfo/flowersoft/theotown/stages/CreateCityStageExt;Ljava/io/File;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda11 (info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda11)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;Ljava/io/File;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda11;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda11;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda11;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda11;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->$r8$lambda$zSmdgaz1oRoKY3JJ-Tgk7SX9shE(Linfo/flowersoft/theotown/stages/CreateCityStageExt;Ljava/io/File;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda12 (info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda12)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;Ljava/io/File;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda12;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda12;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda12;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda12;->f$1:Ljava/io/File;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->$r8$lambda$fD5M0Mij2SvpXdMIXYvBENnVYxA(Linfo/flowersoft/theotown/stages/CreateCityStageExt;Ljava/io/File;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->$r8$lambda$f4qF6ln4_4Su03-Lnh2SSAM8Z1k(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    check-cast p1, Linfo/flowersoft/theotown/city/MapSize;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->$r8$lambda$I51ARaXhIRhxZO8p3K3NoqM7eFg(Linfo/flowersoft/theotown/stages/CreateCityStageExt;Linfo/flowersoft/theotown/city/MapSize;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda4 (info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->$r8$lambda$xndiNr9_hMtpIF657AN7cL2qNYg(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda5 (info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->$r8$lambda$DW8FJQPFXlpK1E-sph6TSEHbzoE(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda6 (info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda6;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->$r8$lambda$M9dbaamg39vHimjDXTNdmywjmTg(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda7 (info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda7;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->$r8$lambda$IB7ZYOVLDO-xUpB-WrnBP47l4Xo(Linfo/flowersoft/theotown/stages/CreateCityStageExt;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda9 (info.flowersoft.theotown.stages.CreateCityStageExt$$ExternalSyntheticLambda9)
.class public final synthetic Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

.field public final synthetic f$1:Linfo/flowersoft/theotown/util/CityGenerator;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/CreateCityStageExt;Linfo/flowersoft/theotown/util/CityGenerator;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda9;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda9;->f$1:Linfo/flowersoft/theotown/util/CityGenerator;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda9;->f$0:Linfo/flowersoft/theotown/stages/CreateCityStageExt;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CreateCityStageExt$$ExternalSyntheticLambda9;->f$1:Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/CreateCityStageExt;->$r8$lambda$U3eh5-jkcR8pOhtMqGdeWZue5Qo(Linfo/flowersoft/theotown/stages/CreateCityStageExt;Linfo/flowersoft/theotown/util/CityGenerator;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    return-object v0
.end method
