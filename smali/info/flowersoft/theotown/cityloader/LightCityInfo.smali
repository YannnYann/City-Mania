###### Class info.flowersoft.theotown.cityloader.LightCityInfo (info.flowersoft.theotown.cityloader.LightCityInfo)
.class public Linfo/flowersoft/theotown/cityloader/LightCityInfo;
.super Ljava/lang/Object;
.source "LightCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;
    }
.end annotation


# instance fields
.field public author:Ljava/lang/String;

.field public binary:Z

.field public buildingSurvey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

.field public final cityInfo:Linfo/flowersoft/theotown/city/CityInfo;

.field public compressedMinimap:Z

.field public connections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;",
            ">;"
        }
    .end annotation
.end field

.field public detailedHabitants:[I

.field public gameMode:Linfo/flowersoft/theotown/city/GameMode;

.field public habitants:I

.field public hasMinimap:Z

.field public hasPreview:Z

.field public height:I

.field public id:Ljava/lang/String;

.field public income:D

.field public lastModified:J

.field public leftSideTraffic:Z

.field public level:I

.field public minimapData:[I

.field public money:D

.field public name:Ljava/lang/String;

.field public premium:Z

.field public previewData:[I

.field public previewHeight:I

.field public previewWidth:I

.field public producedBodyDisposal:I

.field public producedPower:J

.field public producedWasteDisposal:I

.field public producedWater:J

.field public rank:Linfo/flowersoft/theotown/draft/RankDraft;

.field public saveCounter:I

.field public scenario:Z

.field public scenarioAuthor:Ljava/lang/String;

.field public scenarioId:Ljava/lang/String;

.field public scenarioMinVersion:I

.field public final scenarioRequiredPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field public scenarioText:Ljava/lang/String;

.field public scenarioTitle:Ljava/lang/String;

.field public seed:Ljava/lang/String;

.field public size:J

.field public final tempStringBuilder:Ljava/lang/StringBuilder;

.field public tradingRelations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/TradingRelation;",
            ">;"
        }
    .end annotation
.end field

.field public uber:Z

.field public usedBodyDisposal:I

.field public usedIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final usedLocalPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;",
            ">;"
        }
    .end annotation
.end field

.field public final usedPlugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field public usedPower:J

.field public usedWasteDisposal:I

.field public usedWater:J

.field public version:I

.field public width:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;IZZZ)V
    .registers 11

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->previewWidth:I

    .line 86
    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->previewHeight:I

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->connections:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->tradingRelations:Ljava/util/List;

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenario:Z

    .line 127
    const-string v1, ""

    iput-object v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioId:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioTitle:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioText:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioAuthor:Ljava/lang/String;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioRequiredPlugins:Ljava/util/List;

    .line 132
    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioMinVersion:I

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedPlugins:Ljava/util/List;

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedLocalPlugins:Ljava/util/List;

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->tempStringBuilder:Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->name:Ljava/lang/String;

    .line 389
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getAuthor()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->author:Ljava/lang/String;

    .line 390
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getSeed()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->seed:Ljava/lang/String;

    .line 391
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->width:I

    .line 392
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v2

    iput v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->height:I

    .line 393
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->lastModified:J

    .line 394
    iput p2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->version:I

    .line 395
    iput-boolean p3, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->premium:Z

    const/16 p2, 0x9

    .line 396
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/city/components/People;

    .line 397
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/components/People;->getPeople()I

    move-result p3

    iput p3, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->habitants:I

    .line 398
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result p3

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {p2, v4}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result p2

    filled-new-array {p3, v3, p2}, [I

    move-result-object p2

    iput-object p2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->detailedHabitants:[I

    .line 399
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object p2

    iput-object p2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->gameMode:Linfo/flowersoft/theotown/city/GameMode;

    .line 400
    iput-boolean v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasMinimap:Z

    const/4 p2, 0x3

    .line 402
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p3

    check-cast p3, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 403
    invoke-virtual {p3}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v3

    iput-object v3, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->buildingSurvey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    .line 404
    iput-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasPreview:Z

    .line 405
    iput-boolean p4, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->binary:Z

    .line 406
    iput-boolean p5, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->compressedMinimap:Z

    .line 407
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getRank()Linfo/flowersoft/theotown/draft/RankDraft;

    move-result-object p4

    iput-object p4, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->rank:Linfo/flowersoft/theotown/draft/RankDraft;

    .line 408
    iget p4, p4, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    iput p4, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->level:I

    .line 409
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getId()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->id:Ljava/lang/String;

    .line 410
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;

    move-result-object p4

    iput-object p4, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->cityInfo:Linfo/flowersoft/theotown/city/CityInfo;

    .line 411
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result p4

    iput-boolean p4, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->uber:Z

    .line 412
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->isLeftSideTraffic()Z

    move-result p4

    iput-boolean p4, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->leftSideTraffic:Z

    .line 414
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getScenarioInfo()Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object p4

    if-eqz p4, :cond_d3

    goto :goto_d4

    :cond_d3
    move v2, v0

    .line 415
    :goto_d4
    iput-boolean v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenario:Z

    if-eqz p4, :cond_100

    .line 417
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getId()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioId:Ljava/lang/String;

    .line 418
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getTitle()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioTitle:Ljava/lang/String;

    .line 419
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getText()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioText:Ljava/lang/String;

    .line 420
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getAuthor()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioAuthor:Ljava/lang/String;

    .line 421
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 422
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getRequiredStorePlugins()Ljava/util/List;

    move-result-object p5

    invoke-interface {v1, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 423
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getMinVersion()I

    move-result p4

    iput p4, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioMinVersion:I

    .line 426
    :cond_100
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p4

    check-cast p4, Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 427
    invoke-virtual {p4}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v1

    iput-wide v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->money:D

    .line 428
    invoke-virtual {p4}, Linfo/flowersoft/theotown/components/DefaultBudget;->getMonthlyIncome()D

    move-result-wide p4

    iput-wide p4, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->income:D

    .line 430
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object p4

    move p5, v0

    .line 431
    :goto_117
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnectionSize()I

    move-result v1

    if-ge p5, v1, :cond_130

    .line 432
    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->connections:Ljava/util/List;

    new-instance v2, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;

    invoke-virtual {p4, p5}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnection(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Road;

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;-><init>(Linfo/flowersoft/theotown/city/objects/Road;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_117

    .line 435
    :cond_130
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getWires()Linfo/flowersoft/theotown/city/WireList;

    move-result-object p4

    move p5, v0

    .line 436
    :goto_135
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnectionSize()I

    move-result v1

    if-ge p5, v1, :cond_14e

    .line 437
    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->connections:Ljava/util/List;

    new-instance v2, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;

    invoke-virtual {p4, p5}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnection(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Wire;

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;-><init>(Linfo/flowersoft/theotown/city/objects/Wire;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_135

    .line 440
    :cond_14e
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getPipes()Linfo/flowersoft/theotown/city/PipeList;

    move-result-object p4

    move p5, v0

    .line 441
    :goto_153
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnectionSize()I

    move-result v1

    if-ge p5, v1, :cond_16c

    .line 442
    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->connections:Ljava/util/List;

    new-instance v2, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;

    invoke-virtual {p4, p5}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnection(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Pipe;

    invoke-direct {v2, v3}, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;-><init>(Linfo/flowersoft/theotown/city/objects/Pipe;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_153

    :cond_16c
    move p4, v0

    .line 445
    :goto_16d
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->countNeighbors()I

    move-result p5

    if-ge p4, p5, :cond_185

    .line 446
    invoke-virtual {p1, p4}, Linfo/flowersoft/theotown/city/City;->getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object p5

    if-eqz p5, :cond_182

    .line 447
    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->tradingRelations:Ljava/util/List;

    invoke-virtual {p5}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getTradingRelation()Linfo/flowersoft/theotown/city/TradingRelation;

    move-result-object p5

    invoke-interface {v1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_182
    add-int/lit8 p4, p4, 0x1

    goto :goto_16d

    :cond_185
    const/4 p4, 0x5

    .line 450
    invoke-virtual {p1, p4}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p4

    check-cast p4, Linfo/flowersoft/theotown/components/DefaultPower;

    .line 451
    invoke-virtual {p4}, Linfo/flowersoft/theotown/components/DefaultPower;->nativeAvailablePower()I

    move-result p5

    int-to-long v1, p5

    iput-wide v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->producedPower:J

    .line 452
    invoke-virtual {p4}, Linfo/flowersoft/theotown/components/DefaultPower;->nativeConsumedPower()I

    move-result p4

    int-to-long p4, p4

    iput-wide p4, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedPower:J

    const/16 p4, 0x8

    .line 454
    invoke-virtual {p1, p4}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p4

    check-cast p4, Linfo/flowersoft/theotown/components/DefaultWater;

    .line 455
    invoke-virtual {p4}, Linfo/flowersoft/theotown/components/DefaultWater;->nativeAvailableWater()J

    move-result-wide v1

    long-to-int p5, v1

    int-to-long v1, p5

    iput-wide v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->producedWater:J

    .line 456
    invoke-virtual {p4}, Linfo/flowersoft/theotown/components/DefaultWater;->nativeConsumedWater()J

    move-result-wide p4

    long-to-int p4, p4

    int-to-long p4, p4

    iput-wide p4, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedWater:J

    .line 458
    invoke-virtual {p3}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getCoverageCalculator()Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    move-result-object p3

    .line 460
    invoke-virtual {p3, p2}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getNativeProvidedAmount(I)I

    move-result p4

    iput p4, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->producedWasteDisposal:I

    .line 461
    invoke-virtual {p3, p2}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getNativeNeededAmount(I)I

    move-result p2

    iput p2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedWasteDisposal:I

    const/4 p2, 0x4

    .line 462
    invoke-virtual {p3, p2}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getNativeProvidedAmount(I)I

    move-result p4

    iput p4, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->producedBodyDisposal:I

    .line 463
    invoke-virtual {p3, p2}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getNativeNeededAmount(I)I

    move-result p2

    iput p2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedBodyDisposal:I

    .line 466
    invoke-static {p1}, Linfo/flowersoft/theotown/store/CityPluginsExtractor;->collectUsedPlugins(Linfo/flowersoft/theotown/city/City;)Linfo/flowersoft/theotown/store/CityPluginsExtractor$Result;

    move-result-object p1

    .line 468
    iget-object p2, p1, Linfo/flowersoft/theotown/store/CityPluginsExtractor$Result;->pluginIdsAndOccurrences:Lio/blueflower/stapel2d/util/IntList;

    .line 469
    iget-object p3, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedPlugins:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 470
    :goto_1da
    invoke-virtual {p2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result p3

    if-ge v0, p3, :cond_212

    .line 471
    invoke-virtual {p2, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p3

    add-int/lit8 p4, v0, 0x1

    .line 472
    invoke-virtual {p2, p4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p4

    .line 473
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object p5

    invoke-virtual {p5, p3}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getManagedPluginFile(I)Linfo/flowersoft/theotown/store/ManagedPluginFile;

    move-result-object p3

    if-eqz p3, :cond_20f

    .line 474
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object p5

    invoke-virtual {p3}, Linfo/flowersoft/theotown/store/ManagedPluginFile;->getPluginId()I

    move-result v1

    invoke-virtual {p5, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isPermanent(I)Z

    move-result p5

    if-nez p5, :cond_20f

    .line 475
    new-instance p5, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    invoke-direct {p5, p3}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;-><init>(Linfo/flowersoft/theotown/store/ManagedPluginFile;)V

    .line 476
    invoke-virtual {p5, p4}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->setOccurrences(I)V

    .line 477
    iget-object p3, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedPlugins:Ljava/util/List;

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20f
    add-int/lit8 v0, v0, 0x2

    goto :goto_1da

    .line 481
    :cond_212
    iget-object p2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedLocalPlugins:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 482
    iget-object p2, p1, Linfo/flowersoft/theotown/store/CityPluginsExtractor$Result;->localPluginOccurrences:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_221
    :goto_221
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_252

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 483
    sget-object p4, Linfo/flowersoft/theotown/resources/Drafts;->ID_TO_PLUGIN_MANIFEST:Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    if-eqz p4, :cond_221

    .line 484
    invoke-virtual {p4}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->isPermanent()Z

    move-result p5

    if-nez p5, :cond_221

    .line 485
    iget-object p5, p1, Linfo/flowersoft/theotown/store/CityPluginsExtractor$Result;->localPluginOccurrences:Ljava/util/Map;

    invoke-interface {p5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p4, p3}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->setOccurrences(I)V

    .line 486
    iget-object p3, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedLocalPlugins:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_221

    .line 490
    :cond_252
    iget-object p1, p1, Linfo/flowersoft/theotown/store/CityPluginsExtractor$Result;->ids:Ljava/util/List;

    iput-object p1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedIds:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/16 v1, 0xc

    const/4 v2, 0x1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, -0x1

    .line 84
    iput v3, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->previewWidth:I

    .line 86
    iput v3, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->previewHeight:I

    .line 105
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->connections:Ljava/util/List;

    .line 107
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->tradingRelations:Ljava/util/List;

    const/4 v4, 0x0

    .line 126
    iput-boolean v4, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenario:Z

    .line 127
    const-string v5, ""

    iput-object v5, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioId:Ljava/lang/String;

    .line 128
    iput-object v5, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioTitle:Ljava/lang/String;

    .line 129
    iput-object v5, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioText:Ljava/lang/String;

    .line 130
    iput-object v5, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioAuthor:Ljava/lang/String;

    .line 131
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioRequiredPlugins:Ljava/util/List;

    .line 132
    iput v4, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioMinVersion:I

    .line 134
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedPlugins:Ljava/util/List;

    .line 135
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedLocalPlugins:Ljava/util/List;

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->tempStringBuilder:Ljava/lang/StringBuilder;

    .line 145
    iput v3, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->habitants:I

    .line 146
    sget-object v6, Linfo/flowersoft/theotown/city/GameMode;->MIDDLE:Linfo/flowersoft/theotown/city/GameMode;

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->gameMode:Linfo/flowersoft/theotown/city/GameMode;

    .line 147
    iput-object v5, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->author:Ljava/lang/String;

    .line 148
    iput-boolean v4, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->premium:Z

    .line 149
    iput-boolean v4, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->binary:Z

    .line 150
    iput-boolean v4, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->compressedMinimap:Z

    const/4 v5, 0x3

    .line 151
    new-array v6, v5, [I

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->detailedHabitants:[I

    .line 152
    new-instance v6, Linfo/flowersoft/theotown/city/CityInfo;

    invoke-direct {v6}, Linfo/flowersoft/theotown/city/CityInfo;-><init>()V

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->cityInfo:Linfo/flowersoft/theotown/city/CityInfo;

    .line 154
    :cond_5f
    :goto_5f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_53e

    .line 155
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_540

    :goto_73
    move v6, v3

    goto/16 :goto_299

    :sswitch_76
    const-string v7, "scenario author"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7f

    goto :goto_73

    :cond_7f
    const/16 v6, 0x28

    goto/16 :goto_299

    :sswitch_83
    const-string v7, "detailed habitants"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8c

    goto :goto_73

    :cond_8c
    const/16 v6, 0x27

    goto/16 :goto_299

    :sswitch_90
    const-string v7, "connections"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_99

    goto :goto_73

    :cond_99
    const/16 v6, 0x26

    goto/16 :goto_299

    :sswitch_9d
    const-string v7, "scenario id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a6

    goto :goto_73

    :cond_a6
    const/16 v6, 0x25

    goto/16 :goto_299

    :sswitch_aa
    const-string v7, "scenario req plugins"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b3

    goto :goto_73

    :cond_b3
    const/16 v6, 0x24

    goto/16 :goto_299

    :sswitch_b7
    const-string v7, "waste disposal"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c0

    goto :goto_73

    :cond_c0
    const/16 v6, 0x23

    goto/16 :goto_299

    :sswitch_c4
    const-string v7, "minimap"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_cd

    goto :goto_73

    :cond_cd
    const/16 v6, 0x22

    goto/16 :goto_299

    :sswitch_d1
    const-string v7, "save counter"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_da

    goto :goto_73

    :cond_da
    const/16 v6, 0x21

    goto/16 :goto_299

    :sswitch_de
    const-string v7, "left side traffic"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e7

    goto :goto_73

    :cond_e7
    const/16 v6, 0x20

    goto/16 :goto_299

    :sswitch_eb
    const-string v7, "scenario title"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f5

    goto/16 :goto_73

    :cond_f5
    const/16 v6, 0x1f

    goto/16 :goto_299

    :sswitch_f9
    const-string v7, "version"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_103

    goto/16 :goto_73

    :cond_103
    const/16 v6, 0x1e

    goto/16 :goto_299

    :sswitch_107
    const-string v7, "rank lvl"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_111

    goto/16 :goto_73

    :cond_111
    const/16 v6, 0x1d

    goto/16 :goto_299

    :sswitch_115
    const-string v7, "width"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11f

    goto/16 :goto_73

    :cond_11f
    const/16 v6, 0x1c

    goto/16 :goto_299

    :sswitch_123
    const-string v7, "water"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12d

    goto/16 :goto_73

    :cond_12d
    const/16 v6, 0x1b

    goto/16 :goto_299

    :sswitch_131
    const-string v7, "power"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13b

    goto/16 :goto_73

    :cond_13b
    const/16 v6, 0x1a

    goto/16 :goto_299

    :sswitch_13f
    const-string v7, "money"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_149

    goto/16 :goto_73

    :cond_149
    const/16 v6, 0x19

    goto/16 :goto_299

    :sswitch_14d
    const-string v7, "uber"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_157

    goto/16 :goto_73

    :cond_157
    const/16 v6, 0x18

    goto/16 :goto_299

    :sswitch_15b
    const-string v7, "seed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_165

    goto/16 :goto_73

    :cond_165
    const/16 v6, 0x17

    goto/16 :goto_299

    :sswitch_169
    const-string v7, "rank"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_173

    goto/16 :goto_73

    :cond_173
    const/16 v6, 0x16

    goto/16 :goto_299

    :sswitch_177
    const-string v7, "name"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_181

    goto/16 :goto_73

    :cond_181
    const/16 v6, 0x15

    goto/16 :goto_299

    :sswitch_185
    const-string v7, "info"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18f

    goto/16 :goto_73

    :cond_18f
    const/16 v6, 0x14

    goto/16 :goto_299

    :sswitch_193
    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19d

    goto/16 :goto_73

    :cond_19d
    const/16 v6, 0x13

    goto/16 :goto_299

    :sswitch_1a1
    const-string v7, "used ids"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1ab

    goto/16 :goto_73

    :cond_1ab
    const/16 v6, 0x12

    goto/16 :goto_299

    :sswitch_1af
    const-string v7, "used local plugins"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b9

    goto/16 :goto_73

    :cond_1b9
    const/16 v6, 0x11

    goto/16 :goto_299

    :sswitch_1bd
    const-string v7, "preview"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c7

    goto/16 :goto_73

    :cond_1c7
    const/16 v6, 0x10

    goto/16 :goto_299

    :sswitch_1cb
    const-string v7, "premium"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d5

    goto/16 :goto_73

    :cond_1d5
    const/16 v6, 0xf

    goto/16 :goto_299

    :sswitch_1d9
    const-string v7, "compressed minimap"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e3

    goto/16 :goto_73

    :cond_1e3
    const/16 v6, 0xe

    goto/16 :goto_299

    :sswitch_1e7
    const-string v7, "body disposal"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f1

    goto/16 :goto_73

    :cond_1f1
    const/16 v6, 0xd

    goto/16 :goto_299

    :sswitch_1f5
    const-string v7, "scenminv"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1ff

    goto/16 :goto_73

    :cond_1ff
    move v6, v1

    goto/16 :goto_299

    :sswitch_202
    const-string v7, "scenario"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20c

    goto/16 :goto_73

    :cond_20c
    const/16 v6, 0xb

    goto/16 :goto_299

    :sswitch_210
    const-string v7, "survey"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21a

    goto/16 :goto_73

    :cond_21a
    const/16 v6, 0xa

    goto/16 :goto_299

    :sswitch_21e
    const-string v7, "trading"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_228

    goto/16 :goto_73

    :cond_228
    const/16 v6, 0x9

    goto/16 :goto_299

    :sswitch_22c
    const-string v7, "income"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_236

    goto/16 :goto_73

    :cond_236
    const/16 v6, 0x8

    goto/16 :goto_299

    :sswitch_23a
    const-string v7, "height"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_244

    goto/16 :goto_73

    :cond_244
    const/4 v6, 0x7

    goto :goto_299

    :sswitch_246
    const-string v7, "scenario text"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_250

    goto/16 :goto_73

    :cond_250
    const/4 v6, 0x6

    goto :goto_299

    :sswitch_252
    const-string v7, "binary"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25c

    goto/16 :goto_73

    :cond_25c
    const/4 v6, 0x5

    goto :goto_299

    :sswitch_25e
    const-string v7, "author"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_268

    goto/16 :goto_73

    :cond_268
    const/4 v6, 0x4

    goto :goto_299

    :sswitch_26a
    const-string v7, "gamemode"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_274

    goto/16 :goto_73

    :cond_274
    move v6, v5

    goto :goto_299

    :sswitch_276
    const-string v7, "used plugins"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_280

    goto/16 :goto_73

    :cond_280
    move v6, v0

    goto :goto_299

    :sswitch_282
    const-string v7, "habitants"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_28c

    goto/16 :goto_73

    :cond_28c
    move v6, v2

    goto :goto_299

    :sswitch_28e
    const-string v7, "last modified"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_298

    goto/16 :goto_73

    :cond_298
    move v6, v4

    :goto_299
    packed-switch v6, :pswitch_data_5e6

    .line 360
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto/16 :goto_5f

    .line 345
    :pswitch_2a1
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioAuthor:Ljava/lang/String;

    goto/16 :goto_5f

    .line 192
    :pswitch_2a9
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 193
    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->detailedHabitants:[I

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v7

    aput v7, v6, v4

    .line 194
    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->detailedHabitants:[I

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v7

    aput v7, v6, v2

    .line 195
    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->detailedHabitants:[I

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v7

    aput v7, v6, v0

    .line 196
    :goto_2c4
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2ce

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_2c4

    .line 197
    :cond_2ce
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_5f

    .line 244
    :pswitch_2d3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 245
    :goto_2d6
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f0

    .line 246
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 247
    new-instance v6, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;

    invoke-direct {v6}, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;-><init>()V

    .line 248
    invoke-virtual {v6, p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 249
    iget-object v7, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->connections:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_2d6

    .line 252
    :cond_2f0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_5f

    .line 336
    :pswitch_2f5
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioId:Ljava/lang/String;

    goto/16 :goto_5f

    .line 348
    :pswitch_2fd
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 349
    :goto_300
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_317

    .line 350
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 351
    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioRequiredPlugins:Ljava/util/List;

    new-instance v7, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    invoke-direct {v7, p1}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_300

    .line 354
    :cond_317
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_5f

    .line 278
    :pswitch_31c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 279
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->producedWasteDisposal:I

    .line 280
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedWasteDisposal:I

    .line 281
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_5f

    .line 203
    :pswitch_330
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v6

    iput-boolean v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasMinimap:Z

    goto/16 :goto_5f

    .line 241
    :pswitch_338
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->saveCounter:I

    goto/16 :goto_5f

    .line 330
    :pswitch_340
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v6

    iput-boolean v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->leftSideTraffic:Z

    goto/16 :goto_5f

    .line 339
    :pswitch_348
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioTitle:Ljava/lang/String;

    goto/16 :goto_5f

    .line 183
    :pswitch_350
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->version:I

    goto/16 :goto_5f

    .line 226
    :pswitch_358
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->level:I

    .line 227
    sget-object v6, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_381

    .line 228
    sget-object v6, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    iget v7, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->level:I

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    sget-object v8, Linfo/flowersoft/theotown/resources/Drafts;->RANKS:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/RankDraft;

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->rank:Linfo/flowersoft/theotown/draft/RankDraft;

    .line 230
    :cond_381
    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->rank:Linfo/flowersoft/theotown/draft/RankDraft;

    if-eqz v6, :cond_5f

    iget v6, v6, Linfo/flowersoft/theotown/draft/Draft;->ordinal:I

    iput v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->level:I

    goto/16 :goto_5f

    .line 174
    :pswitch_38b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->width:I

    goto/16 :goto_5f

    .line 272
    :pswitch_393
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 273
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->producedWater:J

    .line 274
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedWater:J

    .line 275
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_5f

    .line 266
    :pswitch_3a7
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 267
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->producedPower:J

    .line 268
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedPower:J

    .line 269
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_5f

    .line 295
    :pswitch_3bb
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextDouble()D

    move-result-wide v6

    iput-wide v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->money:D

    goto/16 :goto_5f

    .line 327
    :pswitch_3c3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v6

    iput-boolean v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->uber:Z

    goto/16 :goto_5f

    .line 167
    :pswitch_3cb
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->peek()I

    move-result v6

    if-ne v6, v1, :cond_3d6

    .line 168
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextNull()V

    goto/16 :goto_5f

    .line 170
    :cond_3d6
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->seed:Ljava/lang/String;

    goto/16 :goto_5f

    .line 220
    :pswitch_3de
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    .line 221
    sget-object v7, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 222
    sget-object v7, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/draft/RankDraft;

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->rank:Linfo/flowersoft/theotown/draft/RankDraft;

    goto/16 :goto_5f

    .line 157
    :pswitch_3f6
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->name:Ljava/lang/String;

    goto/16 :goto_5f

    .line 290
    :pswitch_3fe
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 291
    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->cityInfo:Linfo/flowersoft/theotown/city/CityInfo;

    invoke-virtual {v6, p1}, Linfo/flowersoft/theotown/city/CityInfo;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 292
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto/16 :goto_5f

    .line 233
    :pswitch_40b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->peek()I

    move-result v6

    if-ne v6, v1, :cond_419

    .line 234
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextNull()V

    const/4 v6, 0x0

    .line 235
    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->id:Ljava/lang/String;

    goto/16 :goto_5f

    .line 237
    :cond_419
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->id:Ljava/lang/String;

    goto/16 :goto_5f

    .line 319
    :pswitch_421
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 320
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedIds:Ljava/util/List;

    .line 321
    :goto_42b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_43f

    .line 322
    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedIds:Ljava/util/List;

    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->readId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42b

    .line 324
    :cond_43f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_5f

    .line 310
    :pswitch_444
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 311
    :goto_447
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45e

    .line 312
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 313
    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedLocalPlugins:Ljava/util/List;

    new-instance v7, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    invoke-direct {v7, p1}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_447

    .line 316
    :cond_45e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_5f

    .line 211
    :pswitch_463
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v6

    iput-boolean v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasPreview:Z

    goto/16 :goto_5f

    .line 186
    :pswitch_46b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v6

    iput-boolean v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->premium:Z

    goto/16 :goto_5f

    .line 217
    :pswitch_473
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v6

    iput-boolean v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->compressedMinimap:Z

    goto/16 :goto_5f

    .line 284
    :pswitch_47b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 285
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->producedBodyDisposal:I

    .line 286
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedBodyDisposal:I

    .line 287
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_5f

    .line 357
    :pswitch_48f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioMinVersion:I

    goto/16 :goto_5f

    .line 333
    :pswitch_497
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v6

    iput-boolean v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenario:Z

    goto/16 :goto_5f

    .line 206
    :pswitch_49f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 207
    new-instance v6, Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    invoke-direct {v6, p1}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->buildingSurvey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    .line 208
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto/16 :goto_5f

    .line 255
    :pswitch_4ae
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 256
    :goto_4b1
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4cb

    .line 257
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 258
    new-instance v6, Linfo/flowersoft/theotown/city/TradingRelation;

    invoke-direct {v6}, Linfo/flowersoft/theotown/city/TradingRelation;-><init>()V

    .line 259
    invoke-virtual {v6, p1}, Linfo/flowersoft/theotown/city/TradingRelation;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 260
    iget-object v7, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->tradingRelations:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_4b1

    .line 263
    :cond_4cb
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_5f

    .line 298
    :pswitch_4d0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextDouble()D

    move-result-wide v6

    iput-wide v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->income:D

    goto/16 :goto_5f

    .line 177
    :pswitch_4d8
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->height:I

    goto/16 :goto_5f

    .line 342
    :pswitch_4e0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioText:Ljava/lang/String;

    goto/16 :goto_5f

    .line 214
    :pswitch_4e8
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextBoolean()Z

    move-result v6

    iput-boolean v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->binary:Z

    goto/16 :goto_5f

    .line 160
    :pswitch_4f0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->peek()I

    move-result v6

    if-ne v6, v1, :cond_4fb

    .line 161
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextNull()V

    goto/16 :goto_5f

    .line 163
    :cond_4fb
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->author:Ljava/lang/String;

    goto/16 :goto_5f

    .line 200
    :pswitch_503
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Linfo/flowersoft/theotown/city/GameMode;->valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v6

    iput-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->gameMode:Linfo/flowersoft/theotown/city/GameMode;

    goto/16 :goto_5f

    .line 301
    :pswitch_50f
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 302
    :goto_512
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_529

    .line 303
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 304
    iget-object v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedPlugins:Ljava/util/List;

    new-instance v7, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    invoke-direct {v7, p1}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;-><init>(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto :goto_512

    .line 307
    :cond_529
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_5f

    .line 189
    :pswitch_52e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v6

    iput v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->habitants:I

    goto/16 :goto_5f

    .line 180
    :pswitch_536
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->lastModified:J

    goto/16 :goto_5f

    :cond_53e
    return-void

    nop

    :sswitch_data_540
    .sparse-switch
        -0x7e8826ed -> :sswitch_28e
        -0x6e00f520 -> :sswitch_282
        -0x6d920dc3 -> :sswitch_276
        -0x6967c36b -> :sswitch_26a
        -0x53d2de75 -> :sswitch_25e
        -0x52c9f3ff -> :sswitch_252
        -0x49a28443 -> :sswitch_246
        -0x48c76ed9 -> :sswitch_23a
        -0x46965e57 -> :sswitch_22c
        -0x3f9ebadf -> :sswitch_21e
        -0x351c58a6 -> :sswitch_210
        -0x2e3a8c70 -> :sswitch_202
        -0x2e353923 -> :sswitch_1f5
        -0x22370591 -> :sswitch_1e7
        -0x19873ffa -> :sswitch_1d9
        -0x12fb31a9 -> :sswitch_1cb
        -0x12f71c38 -> :sswitch_1bd
        -0x12cc5738 -> :sswitch_1af
        -0x10bf182b -> :sswitch_1a1
        0xd1b -> :sswitch_193
        0x3164ae -> :sswitch_185
        0x337a8b -> :sswitch_177
        0x354c2c -> :sswitch_169
        0x35ce71 -> :sswitch_15b
        0x36abfa -> :sswitch_14d
        0x63420c0 -> :sswitch_13f
        0x65e8905 -> :sswitch_131
        0x6bac517 -> :sswitch_123
        0x6be2dc6 -> :sswitch_115
        0xf2b862e -> :sswitch_107
        0x14f51cd8 -> :sswitch_f9
        0x1553bdc8 -> :sswitch_eb
        0x2b5507ad -> :sswitch_de
        0x2d8be659 -> :sswitch_d1
        0x3f738da5 -> :sswitch_c4
        0x44b397f7 -> :sswitch_b7
        0x4eeb958e -> :sswitch_aa
        0x50a3a7ab -> :sswitch_9d
        0x66cb5d55 -> :sswitch_90
        0x6f146770 -> :sswitch_83
        0x7560f41b -> :sswitch_76
    .end sparse-switch

    :pswitch_data_5e6
    .packed-switch 0x0
        :pswitch_536
        :pswitch_52e
        :pswitch_50f
        :pswitch_503
        :pswitch_4f0
        :pswitch_4e8
        :pswitch_4e0
        :pswitch_4d8
        :pswitch_4d0
        :pswitch_4ae
        :pswitch_49f
        :pswitch_497
        :pswitch_48f
        :pswitch_47b
        :pswitch_473
        :pswitch_46b
        :pswitch_463
        :pswitch_444
        :pswitch_421
        :pswitch_40b
        :pswitch_3fe
        :pswitch_3f6
        :pswitch_3de
        :pswitch_3cb
        :pswitch_3c3
        :pswitch_3bb
        :pswitch_3a7
        :pswitch_393
        :pswitch_38b
        :pswitch_358
        :pswitch_350
        :pswitch_348
        :pswitch_340
        :pswitch_338
        :pswitch_330
        :pswitch_31c
        :pswitch_2fd
        :pswitch_2f5
        :pswitch_2d3
        :pswitch_2a9
        :pswitch_2a1
    .end packed-switch
.end method


# virtual methods
.method public applyConnections(Linfo/flowersoft/theotown/city/City;II)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 977
    iget-object v2, v0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->connections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    goto/16 :goto_170

    .line 979
    :cond_e
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v2

    .line 980
    new-instance v3, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v9, 0x0

    invoke-direct {v3, v1, v9}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    .line 981
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getRoadBuilder()Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    move-result-object v10

    .line 983
    iget-object v4, v0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->connections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_22
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_170

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;

    .line 984
    invoke-static {v4}, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->access$000(Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;)Ljava/lang/String;

    move-result-object v5

    .line 985
    invoke-static {v4}, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->access$100(Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;)I

    move-result v6

    .line 986
    invoke-static {v4}, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->access$200(Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;)I

    move-result v7

    .line 987
    invoke-static {v4}, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->access$200(Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;)I

    move-result v8

    invoke-static {v8}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v12

    .line 988
    invoke-static {v4}, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->access$300(Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;)I

    move-result v8

    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v13

    add-int/2addr v8, v13

    sub-int v8, v8, p2

    .line 989
    invoke-static {v4}, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->access$400(Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;)I

    move-result v13

    invoke-static {v7}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v7

    add-int/2addr v13, v7

    sub-int v13, v13, p3

    .line 990
    invoke-static {v4}, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->access$500(Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;)I

    move-result v4

    .line 992
    invoke-virtual {v1, v8, v13}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v7

    if-nez v7, :cond_63

    goto :goto_22

    :cond_63
    if-eqz v6, :cond_f3

    const/4 v4, 0x1

    if-eq v6, v4, :cond_a8

    const/4 v4, 0x2

    if-eq v6, v4, :cond_6e

    :cond_6b
    :goto_6b
    move v15, v9

    goto/16 :goto_16d

    .line 1042
    :cond_6e
    const-class v4, Linfo/flowersoft/theotown/draft/PipeDraft;

    invoke-static {v5, v4}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/PipeDraft;

    .line 1043
    invoke-virtual {v2, v8, v13}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object v5

    if-eqz v4, :cond_8a

    if-nez v5, :cond_8a

    move v7, v8

    move v5, v8

    move v8, v13

    move v6, v13

    .line 1045
    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/PipeDraft;IIII)Ljava/util/List;

    move v8, v5

    .line 1046
    invoke-virtual {v2, v8, v6}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object v5

    :cond_8a
    if-eqz v5, :cond_6b

    .line 1048
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Pipe;->getConnectionDir()I

    move-result v4

    invoke-static {v12, v4}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 1049
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getPipes()Linfo/flowersoft/theotown/city/PipeList;

    move-result-object v4

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->remove(Ljava/lang/Object;)Z

    .line 1050
    invoke-virtual {v5, v12}, Linfo/flowersoft/theotown/city/objects/Pipe;->setConnection(I)V

    .line 1051
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getPipes()Linfo/flowersoft/theotown/city/PipeList;

    move-result-object v4

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    :cond_a8
    move v6, v13

    .line 1026
    const-class v7, Linfo/flowersoft/theotown/draft/WireDraft;

    invoke-static {v5, v7}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/WireDraft;

    if-nez v5, :cond_b4

    goto :goto_b6

    .line 1027
    :cond_b4
    iget v4, v5, Linfo/flowersoft/theotown/draft/WireDraft;->level:I

    :goto_b6
    invoke-virtual {v2, v8, v6, v4}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v13

    if-eqz v5, :cond_d4

    if-nez v13, :cond_d4

    move v7, v8

    move-object v4, v5

    move v5, v8

    move v8, v6

    .line 1029
    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/WireDraft;IIII)Z

    move-result v7

    if-eqz v7, :cond_d4

    move v7, v5

    move v8, v6

    .line 1030
    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/WireDraft;IIII)Ljava/util/List;

    move v8, v5

    .line 1031
    iget v4, v4, Linfo/flowersoft/theotown/draft/WireDraft;->level:I

    invoke-virtual {v2, v8, v6, v4}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v13

    :cond_d4
    if-eqz v13, :cond_6b

    .line 1034
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Wire;->getConnectionDir()I

    move-result v4

    invoke-static {v12, v4}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 1035
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getWires()Linfo/flowersoft/theotown/city/WireList;

    move-result-object v4

    invoke-virtual {v4, v13}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->remove(Ljava/lang/Object;)Z

    .line 1036
    invoke-virtual {v13, v12}, Linfo/flowersoft/theotown/city/objects/Wire;->setConnection(I)V

    .line 1037
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getWires()Linfo/flowersoft/theotown/city/WireList;

    move-result-object v4

    invoke-virtual {v4, v13}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6b

    :cond_f3
    move v6, v13

    .line 996
    const-class v7, Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-static {v5, v7}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 997
    invoke-virtual {v2, v8, v6, v4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v13

    .line 998
    invoke-virtual {v2, v8, v6}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v14

    if-eqz v7, :cond_14f

    if-eqz v14, :cond_11a

    .line 1001
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v15

    sget-object v9, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq v15, v9, :cond_11a

    .line 1002
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v9

    sget-object v15, Linfo/flowersoft/theotown/draft/BuildingType;->DESTROYED:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq v9, v15, :cond_11a

    const/4 v15, 0x0

    goto :goto_16d

    :cond_11a
    const/4 v9, 0x0

    if-nez v4, :cond_127

    .line 1006
    invoke-virtual {v3, v8, v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isWater(II)Z

    move-result v15

    if-eqz v15, :cond_127

    const/4 v15, 0x0

    invoke-virtual {v3, v15, v8, v6, v9}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildTerrain(ZIILvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/Ground;

    :cond_127
    if-ltz v4, :cond_12e

    if-eqz v14, :cond_12e

    .line 1007
    invoke-virtual {v3, v8, v6, v9}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(IILvm2/LuaValue;)V

    :cond_12e
    if-eqz v13, :cond_13d

    .line 1008
    iget-object v14, v13, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v14, v14, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13b

    goto :goto_13d

    :cond_13b
    const/4 v15, 0x0

    goto :goto_150

    .line 1009
    :cond_13d
    :goto_13d
    invoke-virtual {v10, v7, v9}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    .line 1010
    invoke-virtual {v10, v8, v6, v8, v6}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    const/4 v15, 0x0

    .line 1011
    invoke-virtual {v10, v4, v15}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setRelativeLevel(II)V

    .line 1012
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->build()V

    .line 1013
    invoke-virtual {v2, v8, v6, v4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v13

    goto :goto_150

    :cond_14f
    move v15, v9

    :goto_150
    if-eqz v13, :cond_16d

    .line 1018
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Road;->getConnectionDir()I

    move-result v4

    invoke-static {v12, v4}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v4

    if-nez v4, :cond_16d

    .line 1019
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v4

    invoke-virtual {v4, v13}, Linfo/flowersoft/theotown/city/RoadList;->remove(Ljava/lang/Object;)Z

    .line 1020
    invoke-virtual {v13, v12}, Linfo/flowersoft/theotown/city/objects/Road;->setConnection(I)V

    .line 1021
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v4

    invoke-virtual {v4, v13}, Linfo/flowersoft/theotown/city/RoadList;->add(Linfo/flowersoft/theotown/city/objects/Road;)Z

    :cond_16d
    :goto_16d
    move v9, v15

    goto/16 :goto_22

    :cond_170
    :goto_170
    return-void
.end method

.method public clearPreviewData()V
    .registers 2

    const/4 v0, -0x1

    .line 943
    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->previewWidth:I

    .line 944
    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->previewHeight:I

    const/4 v0, 0x0

    .line 945
    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->previewData:[I

    return-void
.end method

.method public getAuthor()Ljava/lang/String;
    .registers 2

    .line 837
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyDisposal()I
    .registers 2

    .line 825
    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->producedBodyDisposal:I

    return v0
.end method

.method public getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;
    .registers 2

    .line 949
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->buildingSurvey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    return-object v0
.end method

.method public getCityInfo()Linfo/flowersoft/theotown/city/CityInfo;
    .registers 2

    .line 608
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->cityInfo:Linfo/flowersoft/theotown/city/CityInfo;

    return-object v0
.end method

.method public getDetailedHabitants()[I
    .registers 3

    .line 888
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->detailedHabitants:[I

    const/4 v1, 0x3

    if-eqz v0, :cond_a

    .line 889
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0

    .line 891
    :cond_a
    new-array v0, v1, [I

    return-object v0
.end method

.method public getFilteredUsedPlugins()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;",
            ">;"
        }
    .end annotation

    .line 739
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 740
    :goto_6
    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedPlugins:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 741
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedPlugins:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->isPermanent(I)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 742
    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedPlugins:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_32
    return-object v0
.end method

.method public getGameMode()Linfo/flowersoft/theotown/city/GameMode;
    .registers 2

    .line 896
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->gameMode:Linfo/flowersoft/theotown/city/GameMode;

    return-object v0
.end method

.method public getHabitants()I
    .registers 2

    .line 884
    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->habitants:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 860
    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->height:I

    return v0
.end method

.method public getLastModified()J
    .registers 3

    .line 872
    iget-wide v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->lastModified:J

    return-wide v0
.end method

.method public getMinimapData()[I
    .registers 2

    .line 916
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->minimapData:[I

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 829
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewData()[I
    .registers 2

    .line 932
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->previewData:[I

    return-object v0
.end method

.method public getPreviewHeight()I
    .registers 2

    .line 928
    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->previewHeight:I

    return v0
.end method

.method public getPreviewWidth()I
    .registers 2

    .line 924
    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->previewWidth:I

    return v0
.end method

.method public getProducedPower()J
    .registers 3

    .line 797
    iget-wide v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->producedPower:J

    return-wide v0
.end method

.method public getProducedWater()J
    .registers 3

    .line 805
    iget-wide v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->producedWater:J

    return-wide v0
.end method

.method public getRank()Linfo/flowersoft/theotown/draft/RankDraft;
    .registers 2

    .line 864
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->rank:Linfo/flowersoft/theotown/draft/RankDraft;

    return-object v0
.end method

.method public getSaveCounter()I
    .registers 2

    .line 969
    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->saveCounter:I

    return v0
.end method

.method public getScenarioAuthor()Ljava/lang/String;
    .registers 2

    .line 785
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getScenarioId()Ljava/lang/String;
    .registers 2

    .line 773
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioId:Ljava/lang/String;

    return-object v0
.end method

.method public getScenarioMinVersion()I
    .registers 2

    .line 793
    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioMinVersion:I

    return v0
.end method

.method public getScenarioRequiredPlugins()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;",
            ">;"
        }
    .end annotation

    .line 789
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioRequiredPlugins:Ljava/util/List;

    return-object v0
.end method

.method public getScenarioTitle()Ljava/lang/String;
    .registers 2

    .line 777
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSeed()Ljava/lang/String;
    .registers 2

    .line 841
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->seed:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .line 953
    iget-wide v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->size:J

    return-wide v0
.end method

.method public getTradingRelation(Ljava/lang/String;)Linfo/flowersoft/theotown/city/TradingRelation;
    .registers 5

    .line 845
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->tradingRelations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/TradingRelation;

    .line 846
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/TradingRelation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_1d
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTradingRelations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/TradingRelation;",
            ">;"
        }
    .end annotation

    .line 852
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->tradingRelations:Ljava/util/List;

    return-object v0
.end method

.method public getUsedBodyDisposal()I
    .registers 2

    .line 821
    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedBodyDisposal:I

    return v0
.end method

.method public getUsedLocalPlugins()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;",
            ">;"
        }
    .end annotation

    .line 749
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedLocalPlugins:Ljava/util/List;

    return-object v0
.end method

.method public getUsedPlugins()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;",
            ">;"
        }
    .end annotation

    .line 732
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedPlugins:Ljava/util/List;

    return-object v0
.end method

.method public getUsedPower()J
    .registers 3

    .line 801
    iget-wide v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedPower:J

    return-wide v0
.end method

.method public getUsedWasteDisposal()I
    .registers 2

    .line 813
    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedWasteDisposal:I

    return v0
.end method

.method public getUsedWater()J
    .registers 3

    .line 809
    iget-wide v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedWater:J

    return-wide v0
.end method

.method public getVersion()I
    .registers 2

    .line 876
    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->version:I

    return v0
.end method

.method public getWasteDisposal()I
    .registers 2

    .line 817
    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->producedWasteDisposal:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 856
    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->width:I

    return v0
.end method

.method public hasCompressedMinimap()Z
    .registers 2

    .line 965
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->compressedMinimap:Z

    return v0
.end method

.method public hasMinimap()Z
    .registers 2

    .line 908
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasMinimap:Z

    return v0
.end method

.method public hasPreview()Z
    .registers 2

    .line 912
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasPreview:Z

    return v0
.end method

.method public isBinaryFormat()Z
    .registers 2

    .line 961
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->binary:Z

    return v0
.end method

.method public isScenario()Z
    .registers 2

    .line 769
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenario:Z

    return v0
.end method

.method public isUber()Z
    .registers 2

    .line 761
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->uber:Z

    return v0
.end method

.method public final readId(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 367
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->tempStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 368
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_1c

    .line 369
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v2, v1, 0x7

    xor-int/2addr v0, v2

    int-to-char v0, v0

    .line 371
    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->tempStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 373
    :cond_1c
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->tempStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 494
    const-string v0, "name"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 495
    const-string v0, "author"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->author:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 496
    const-string v0, "seed"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->seed:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 497
    const-string v0, "width"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->width:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 498
    const-string v0, "height"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->height:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 499
    const-string v0, "last modified"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->lastModified:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 500
    const-string v0, "version"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->version:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 501
    const-string v0, "premium"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->premium:Z

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 502
    const-string v0, "habitants"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->habitants:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 503
    const-string v0, "detailed habitants"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 504
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->detailedHabitants:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->detailedHabitants:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->detailedHabitants:[I

    const/4 v4, 0x2

    aget v2, v2, v4

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 505
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 506
    const-string v0, "gamemode"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->gameMode:Linfo/flowersoft/theotown/city/GameMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 507
    const-string v0, "minimap"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasMinimap:Z

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 508
    const-string v0, "preview"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasPreview:Z

    if-eqz v2, :cond_b2

    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->previewData:[I

    if-eqz v2, :cond_b2

    goto :goto_b3

    :cond_b2
    move v3, v1

    :goto_b3
    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 509
    const-string v0, "binary"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->binary:Z

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 510
    const-string v0, "compressed minimap"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->compressedMinimap:Z

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 511
    const-string v0, "rank lvl"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->level:I

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 512
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->id:Ljava/lang/String;

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 513
    const-string v0, "save counter"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->saveCounter:I

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 514
    const-string v0, "info"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 515
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->cityInfo:Linfo/flowersoft/theotown/city/CityInfo;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/CityInfo;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 516
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 518
    const-string v0, "connections"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 519
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->connections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_123

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;

    .line 520
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 521
    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 522
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_10d

    .line 524
    :cond_123
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 526
    const-string v0, "trading"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 527
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->tradingRelations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_135
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/TradingRelation;

    .line 528
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 529
    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/city/TradingRelation;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 530
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_135

    .line 532
    :cond_14b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 534
    const-string v0, "power"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 535
    iget-wide v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->producedPower:J

    invoke-interface {p1, v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 536
    iget-wide v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedPower:J

    invoke-interface {p1, v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 537
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 539
    const-string v0, "water"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 540
    iget-wide v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->producedWater:J

    invoke-interface {p1, v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 541
    iget-wide v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedWater:J

    invoke-interface {p1, v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 542
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 544
    const-string v0, "waste disposal"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 545
    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->producedWasteDisposal:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 546
    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedWasteDisposal:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 547
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 549
    const-string v0, "body disposal"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 550
    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->producedBodyDisposal:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 551
    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedBodyDisposal:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 552
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 554
    const-string v0, "survey"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 555
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 556
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->buildingSurvey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 557
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 559
    const-string v0, "money"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->money:D

    invoke-interface {v0, v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(D)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 560
    const-string v0, "income"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->income:D

    invoke-interface {v0, v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(D)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 561
    const-string v0, "uber"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->uber:Z

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 562
    const-string v0, "left side traffic"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->leftSideTraffic:Z

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 564
    iget-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenario:Z

    if-eqz v0, :cond_258

    .line 565
    const-string v0, "scenario"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-boolean v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenario:Z

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Z)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 566
    const-string v0, "scenario id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 567
    const-string v0, "scenario title"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioTitle:Ljava/lang/String;

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 568
    const-string v0, "scenario text"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioText:Ljava/lang/String;

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 569
    const-string v0, "scenario author"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioAuthor:Ljava/lang/String;

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 570
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioRequiredPlugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24d

    .line 571
    const-string v0, "scenario req plugins"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 572
    :goto_22e
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioRequiredPlugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_24a

    .line 573
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 574
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioRequiredPlugins:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 575
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_22e

    .line 577
    :cond_24a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 579
    :cond_24d
    const-string v0, "scenminv"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->scenarioMinVersion:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 582
    :cond_258
    const-string v0, "used plugins"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 583
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedPlugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_267
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;

    .line 584
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 585
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/cityloader/LightManagedPluginInfo;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 586
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_267

    .line 588
    :cond_27d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 590
    const-string v0, "used local plugins"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 591
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedLocalPlugins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;

    .line 592
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 593
    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/cityloader/LocalPluginManifest;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 594
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_28f

    .line 596
    :cond_2a5
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 598
    const-string v0, "used ids"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 599
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->usedIds:Ljava/util/List;

    if-eqz v0, :cond_2cd

    .line 600
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2cd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 601
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->writeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_2b9

    .line 604
    :cond_2cd
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public setGameMode(Linfo/flowersoft/theotown/city/GameMode;)V
    .registers 2

    .line 652
    iput-object p1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->gameMode:Linfo/flowersoft/theotown/city/GameMode;

    return-void
.end method

.method public setMinimapData([I)V
    .registers 2

    .line 920
    iput-object p1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->minimapData:[I

    return-void
.end method

.method public setPreviewData([III)V
    .registers 5

    const/4 v0, 0x1

    .line 936
    iput-boolean v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->hasPreview:Z

    .line 937
    iput p2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->previewWidth:I

    .line 938
    iput p3, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->previewHeight:I

    .line 939
    iput-object p1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->previewData:[I

    return-void
.end method

.method public setSaveCounter(I)V
    .registers 2

    .line 973
    iput p1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->saveCounter:I

    return-void
.end method

.method public setSize(J)V
    .registers 3

    .line 957
    iput-wide p1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->size:J

    return-void
.end method

.method public final writeId(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 377
    iget-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->tempStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 378
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_1c

    .line 379
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v2, v1, 0x7

    xor-int/2addr v0, v2

    int-to-char v0, v0

    .line 381
    iget-object v2, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->tempStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 383
    :cond_1c
    iget-object p1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo;->tempStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.cityloader.LightCityInfo.Connection (info.flowersoft.theotown.cityloader.LightCityInfo$Connection)
.class public Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;
.super Ljava/lang/Object;
.source "LightCityInfo.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/cityloader/LightCityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Connection"
.end annotation


# instance fields
.field public dir:I

.field public id:Ljava/lang/String;

.field public level:I

.field public type:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/objects/Pipe;)V
    .registers 3

    .line 1096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 1097
    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->type:I

    .line 1098
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Pipe;->getDraft()Linfo/flowersoft/theotown/draft/PipeDraft;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->id:Ljava/lang/String;

    .line 1099
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Pipe;->getX()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->x:I

    .line 1100
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Pipe;->getY()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->y:I

    .line 1101
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Pipe;->getConnectionDir()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->dir:I

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/objects/Road;)V
    .registers 3

    .line 1079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1080
    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->type:I

    .line 1081
    iget-object v0, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->id:Ljava/lang/String;

    .line 1082
    iget v0, p1, Linfo/flowersoft/theotown/city/objects/Road;->x:I

    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->x:I

    .line 1083
    iget v0, p1, Linfo/flowersoft/theotown/city/objects/Road;->y:I

    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->y:I

    .line 1084
    iget v0, p1, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->level:I

    .line 1085
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->getConnectionDir()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->dir:I

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/objects/Wire;)V
    .registers 3

    .line 1088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 1089
    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->type:I

    .line 1090
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Wire;->getDraft()Linfo/flowersoft/theotown/draft/WireDraft;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->id:Ljava/lang/String;

    .line 1091
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Wire;->getX()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->x:I

    .line 1092
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Wire;->getY()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->y:I

    .line 1093
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Wire;->getConnectionDir()I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->dir:I

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;)Ljava/lang/String;
    .registers 1

    .line 1062
    iget-object p0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->id:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;)I
    .registers 1

    .line 1062
    iget p0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->type:I

    return p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;)I
    .registers 1

    .line 1062
    iget p0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->dir:I

    return p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;)I
    .registers 1

    .line 1062
    iget p0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->x:I

    return p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;)I
    .registers 1

    .line 1062
    iget p0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->y:I

    return p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;)I
    .registers 1

    .line 1062
    iget p0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->level:I

    return p0
.end method


# virtual methods
.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1116
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 1117
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_8c

    goto :goto_57

    :sswitch_16
    const-string v2, "level"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_57

    :cond_1f
    const/4 v1, 0x5

    goto :goto_57

    :sswitch_21
    const-string v2, "type"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_57

    :cond_2a
    const/4 v1, 0x4

    goto :goto_57

    :sswitch_2c
    const-string v2, "dir"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto :goto_57

    :cond_35
    const/4 v1, 0x3

    goto :goto_57

    :sswitch_37
    const-string v2, "id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_57

    :cond_40
    const/4 v1, 0x2

    goto :goto_57

    :sswitch_42
    const-string v2, "y"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_57

    :cond_4b
    const/4 v1, 0x1

    goto :goto_57

    :sswitch_4d
    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    goto :goto_57

    :cond_56
    const/4 v1, 0x0

    :goto_57
    packed-switch v1, :pswitch_data_a6

    .line 1137
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 1131
    :pswitch_5e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->level:I

    goto :goto_0

    .line 1119
    :pswitch_65
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->type:I

    goto :goto_0

    .line 1134
    :pswitch_6c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->dir:I

    goto :goto_0

    .line 1122
    :pswitch_73
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->id:Ljava/lang/String;

    goto :goto_0

    .line 1128
    :pswitch_7a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->y:I

    goto/16 :goto_0

    .line 1125
    :pswitch_82
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->x:I

    goto/16 :goto_0

    :cond_8a
    return-void

    nop

    :sswitch_data_8c
    .sparse-switch
        0x78 -> :sswitch_4d
        0x79 -> :sswitch_42
        0xd1b -> :sswitch_37
        0x1848d -> :sswitch_2c
        0x368f3a -> :sswitch_21
        0x6219b84 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_82
        :pswitch_7a
        :pswitch_73
        :pswitch_6c
        :pswitch_65
        :pswitch_5e
    .end packed-switch
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1145
    const-string v0, "type"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->type:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 1146
    const-string v0, "id"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 1147
    const-string v0, "x"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->x:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 1148
    const-string v0, "y"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->y:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 1149
    const-string v0, "level"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->level:I

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 1150
    const-string v0, "dir"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget v0, p0, Linfo/flowersoft/theotown/cityloader/LightCityInfo$Connection;->dir:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
