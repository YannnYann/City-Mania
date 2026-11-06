###### Class info.flowersoft.theotown.components.DefaultTransportation (info.flowersoft.theotown.components.DefaultTransportation)
.class public final Linfo/flowersoft/theotown/components/DefaultTransportation;
.super Linfo/flowersoft/theotown/city/components/CityComponent;
.source "DefaultTransportation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/DefaultTransportation$FoundWay;
    }
.end annotation


# static fields
.field public static final RUSH_HOUR_CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;


# instance fields
.field public carDrafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/CarDraft;",
            ">;>;"
        }
    .end annotation
.end field

.field public influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

.field public peopleEstimator:F

.field public reachabilityMap:Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;

.field public final tempList0:Lio/blueflower/stapel2d/util/IntList;

.field public final tempList1:Lio/blueflower/stapel2d/util/IntList;

.field public tsComponent:Linfo/flowersoft/theotown/components/DefaultTSComponent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    const-string v0, "rush hour"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/components/DefaultTransportation;->RUSH_HOUR_CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 49
    iput v0, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->peopleEstimator:F

    .line 57
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->tempList0:Lio/blueflower/stapel2d/util/IntList;

    .line 58
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->tempList1:Lio/blueflower/stapel2d/util/IntList;

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/json/JsonReader;Linfo/flowersoft/theotown/city/City;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;-><init>()V

    const/high16 p2, -0x40800000    # -1.0f

    .line 49
    iput p2, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->peopleEstimator:F

    .line 57
    new-instance p2, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {p2}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object p2, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->tempList0:Lio/blueflower/stapel2d/util/IntList;

    .line 58
    new-instance p2, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {p2}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object p2, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->tempList1:Lio/blueflower/stapel2d/util/IntList;

    .line 65
    :goto_15
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_26

    .line 66
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_15

    :cond_26
    return-void
.end method


# virtual methods
.method public addFoundWay(Linfo/flowersoft/theotown/draft/CarDraft;ILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;IIIILinfo/flowersoft/theotown/city/objects/Way;I)V
    .registers 13

    .line 123
    new-instance v0, Linfo/flowersoft/theotown/components/DefaultTransportation$FoundWay;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/components/DefaultTransportation$FoundWay;-><init>(Linfo/flowersoft/theotown/components/DefaultTransportation$1;)V

    .line 124
    iput-object p1, v0, Linfo/flowersoft/theotown/components/DefaultTransportation$FoundWay;->carDraft:Linfo/flowersoft/theotown/draft/CarDraft;

    .line 125
    iput p2, v0, Linfo/flowersoft/theotown/components/DefaultTransportation$FoundWay;->frame:I

    .line 126
    iput-object p3, v0, Linfo/flowersoft/theotown/components/DefaultTransportation$FoundWay;->start:Linfo/flowersoft/theotown/city/objects/Building;

    .line 127
    iput-object p4, v0, Linfo/flowersoft/theotown/components/DefaultTransportation$FoundWay;->target:Linfo/flowersoft/theotown/city/objects/Building;

    .line 128
    iput p5, v0, Linfo/flowersoft/theotown/components/DefaultTransportation$FoundWay;->startX:I

    .line 129
    iput p6, v0, Linfo/flowersoft/theotown/components/DefaultTransportation$FoundWay;->startY:I

    .line 130
    iput p7, v0, Linfo/flowersoft/theotown/components/DefaultTransportation$FoundWay;->targetX:I

    .line 131
    iput p8, v0, Linfo/flowersoft/theotown/components/DefaultTransportation$FoundWay;->targetY:I

    .line 132
    iput-object p9, v0, Linfo/flowersoft/theotown/components/DefaultTransportation$FoundWay;->way:Linfo/flowersoft/theotown/city/objects/Way;

    .line 133
    iput p10, v0, Linfo/flowersoft/theotown/components/DefaultTransportation$FoundWay;->wealthLevel:I

    return-void
.end method

.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 8

    .line 76
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->carDrafts:Ljava/util/List;

    const/4 v0, 0x0

    move v2, v0

    :goto_e
    if-ge v2, v1, :cond_19

    .line 79
    iget-object v3, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->carDrafts:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_19
    :goto_19
    const/4 v1, 0x3

    if-ge v0, v1, :cond_73

    .line 82
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->carDrafts:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "carres"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Linfo/flowersoft/theotown/draft/CarDraft;

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/resources/Drafts;->getDraftsWithTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->carDrafts:Ljava/util/List;

    add-int/lit8 v2, v0, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "carcom"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Linfo/flowersoft/theotown/resources/Drafts;->getDraftsWithTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->carDrafts:Ljava/util/List;

    add-int/lit8 v2, v0, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "carind"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Linfo/flowersoft/theotown/resources/Drafts;->getDraftsWithTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 87
    :cond_73
    new-instance v0, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;-><init>(II)V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->reachabilityMap:Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;

    return-void
.end method

.method public final connect(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;I)V
    .registers 4

    const p3, 0x3dcccccd    # 0.1f

    if-eqz p1, :cond_8

    .line 507
    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/city/objects/Building;->addReachability(F)V

    :cond_8
    if-eqz p2, :cond_d

    .line 508
    invoke-virtual {p2, p3}, Linfo/flowersoft/theotown/city/objects/Building;->addReachability(F)V

    :cond_d
    return-void
.end method

.method public final considerAirportSource(ILio/blueflower/stapel2d/util/ProbabilitySelector;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/blueflower/stapel2d/util/ProbabilitySelector<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;)V"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    .line 193
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getLanes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_90

    div-int/lit8 v1, p1, 0xa

    if-lez v1, :cond_90

    .line 194
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->getLanes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 197
    :goto_1f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_40

    .line 199
    :try_start_25
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/airport/Lane;

    .line 200
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/airport/Lane;->getAirplane()Linfo/flowersoft/theotown/components/airport/Airplane;

    move-result-object v4

    if-nez v4, :cond_32

    goto :goto_39

    .line 202
    :cond_32
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/airport/Airplane;->getDraft()Linfo/flowersoft/theotown/draft/FlyingObjectDraft;

    move-result-object v4

    iget v4, v4, Linfo/flowersoft/theotown/draft/FlyingObjectDraft;->capacity:I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_38} :catch_3c

    add-int/2addr v3, v4

    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :catch_3c
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 209
    :cond_40
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 p1, p1, 0xa

    if-lez p1, :cond_90

    .line 212
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v0

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->AIRPORT:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/city/BuildingList;->getBuildingsOfType(Linfo/flowersoft/theotown/draft/BuildingType;)Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v0

    move v2, v1

    move v3, v2

    .line 214
    :goto_56
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_70

    .line 215
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/city/objects/Building;

    if-nez v4, :cond_65

    goto :goto_70

    .line 217
    :cond_65
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->hasNeededRoad()Z

    move-result v4

    if-eqz v4, :cond_6d

    add-int/lit8 v3, v3, 0x1

    :cond_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    :cond_70
    :goto_70
    if-lez v3, :cond_90

    .line 220
    :goto_72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_90

    .line 221
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Building;

    if-nez v2, :cond_81

    goto :goto_90

    .line 223
    :cond_81
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->hasNeededRoad()Z

    move-result v4

    if-eqz v4, :cond_8d

    int-to-float v4, p1

    int-to-float v5, v3

    div-float/2addr v4, v5

    .line 224
    invoke-virtual {p2, v2, v4}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :cond_8d
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    :cond_90
    :goto_90
    return-void
.end method

.method public final estimatePeople(Ljava/util/List;Linfo/flowersoft/theotown/util/ListSampler;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;",
            "Linfo/flowersoft/theotown/util/ListSampler<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;)V"
        }
    .end annotation

    .line 237
    iget v0, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->peopleEstimator:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    const/16 v0, 0x64

    goto :goto_c

    :cond_a
    const/16 v0, 0xa

    :goto_c
    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v2, v0, :cond_2a

    .line 239
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {p2, v4}, Linfo/flowersoft/theotown/util/ListSampler;->sample(Ljava/util/Random;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v4, :cond_27

    .line 240
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 241
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v4

    iget v4, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->rciCars:I

    add-int/2addr v3, v4

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_2a
    int-to-float p2, v3

    .line 245
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p2, p1

    int-to-float p1, v0

    div-float/2addr p2, p1

    .line 247
    iget p1, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->peopleEstimator:F

    cmpg-float v0, p1, v1

    if-gez v0, :cond_3c

    .line 248
    iput p2, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->peopleEstimator:F

    return-void

    :cond_3c
    const v0, 0x3f666666    # 0.9f

    mul-float/2addr p1, v0

    const v0, 0x3dcccccd    # 0.1f

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    .line 250
    iput p1, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->peopleEstimator:F

    return-void
.end method

.method public final findSuitableStation(Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Linfo/flowersoft/theotown/city/objects/Building;ZLio/blueflower/stapel2d/util/IntList;)I
    .registers 13

    .line 530
    invoke-virtual {p1, p4}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationIds(Lio/blueflower/stapel2d/util/IntList;)Lio/blueflower/stapel2d/util/IntList;

    move-result-object p4

    .line 532
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getDraft()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getConfig()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;

    move-result-object v0

    iget v0, v0, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->stationRadius:I

    mul-int/2addr v0, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 537
    :goto_13
    invoke-virtual {p4}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v3

    if-ge v2, v3, :cond_85

    .line 538
    invoke-virtual {p4, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    .line 539
    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationById(I)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object v4

    if-nez v4, :cond_24

    goto :goto_82

    .line 545
    :cond_24
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->isCity()Z

    move-result v5

    if-eqz v5, :cond_2b

    goto :goto_82

    .line 547
    :cond_2b
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getCapacity()I

    move-result v5

    if-gtz v5, :cond_32

    goto :goto_82

    :cond_32
    if-nez p3, :cond_4d

    .line 554
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getWaiting()I

    move-result v6

    if-lt v6, v5, :cond_3b

    goto :goto_82

    .line 559
    :cond_3b
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getWaiting()I

    move-result v6

    int-to-float v6, v6

    int-to-float v5, v5

    div-float/2addr v6, v5

    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    cmpl-float v5, v6, v5

    if-lez v5, :cond_5f

    goto :goto_82

    .line 564
    :cond_4d
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getReaching()I

    move-result v6

    int-to-float v6, v6

    int-to-float v5, v5

    div-float/2addr v6, v5

    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    cmpl-float v5, v6, v5

    if-lez v5, :cond_5f

    goto :goto_82

    .line 569
    :cond_5f
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getTiles()Linfo/flowersoft/theotown/util/TileSet;

    move-result-object v4

    .line 570
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v5

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/util/TileSet;->distanceX(II)I

    move-result v5

    .line 571
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v6

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Linfo/flowersoft/theotown/util/TileSet;->distanceY(II)I

    move-result v4

    mul-int/2addr v5, v5

    mul-int/2addr v4, v4

    add-int/2addr v5, v4

    if-ge v5, v0, :cond_82

    move v1, v3

    move v0, v5

    :cond_82
    :goto_82
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_85
    return v1
.end method

.method public foundCarWay(IIII)V
    .registers 6

    .line 144
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->reachabilityMap:Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->foundWay(IIII)V

    return-void
.end method

.method public foundCarWayBuildings(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;I)V
    .registers 6

    .line 137
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultTransportation;->takeCar(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;I)V

    if-eqz p1, :cond_1c

    if-eqz p2, :cond_1c

    .line 139
    iget-object p3, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->reachabilityMap:Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result p1

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result p2

    invoke-virtual {p3, v0, p1, v1, p2}, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->foundWay(IIII)V

    :cond_1c
    return-void
.end method

.method public foundNoCarWay(IIII)V
    .registers 6

    .line 153
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->reachabilityMap:Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->foundNoWay(IIII)V

    return-void
.end method

.method public foundNoCarWayBuildings(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 4

    const v0, -0x42333333    # -0.1f

    .line 148
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->addReachability(F)V

    .line 149
    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/objects/Building;->addReachability(F)V

    return-void
.end method

.method public final getCarDrafts(Linfo/flowersoft/theotown/draft/BuildingType;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/draft/BuildingType;",
            "I)",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/CarDraft;",
            ">;"
        }
    .end annotation

    .line 95
    sget-object v0, Linfo/flowersoft/theotown/components/DefaultTransportation$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eq p1, v0, :cond_24

    if-ne p1, v1, :cond_1c

    .line 101
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->carDrafts:Ljava/util/List;

    add-int/lit8 p2, p2, 0x6

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 103
    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unreachable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 99
    :cond_24
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->carDrafts:Ljava/util/List;

    add-int/2addr p2, v1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 97
    :cond_2e
    iget-object p1, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->carDrafts:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getNextBusStop(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/city/objects/BusStop;
    .registers 11

    .line 640
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->PASSENGER_BUS:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluence(Linfo/flowersoft/theotown/city/objects/Building;I)F

    move-result v0

    .line 641
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    cmpl-float v0, v1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_18

    return-object v1

    .line 643
    :cond_18
    new-instance v0, Lio/blueflower/stapel2d/util/MinimumSelector;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/MinimumSelector;-><init>()V

    .line 645
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getBusStops()Linfo/flowersoft/theotown/city/BusStopList;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/BusStopList;->getSorted()Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v2

    .line 646
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    const/16 v4, 0xa

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/SortedList;->getIndexOfValue(I)I

    move-result v3

    .line 648
    :goto_32
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-ge v3, v5, :cond_78

    .line 649
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/city/objects/BusStop;

    if-eqz v5, :cond_75

    .line 651
    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getDistance()Linfo/flowersoft/theotown/util/Distance;

    move-result-object v6

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result v7

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/BusStop;->getY()I

    move-result v8

    invoke-virtual {v6, p1, v7, v8}, Linfo/flowersoft/theotown/util/Distance;->get(Linfo/flowersoft/theotown/city/objects/Building;II)I

    move-result v6

    if-gt v6, v4, :cond_64

    .line 652
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/BusStop;->getWaiting()I

    move-result v7

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/BusStop;->getDraft()Linfo/flowersoft/theotown/draft/BusStopDraft;

    move-result-object v8

    iget v8, v8, Linfo/flowersoft/theotown/draft/BusStopDraft;->capacity:I

    if-gt v7, v8, :cond_64

    int-to-float v6, v6

    .line 653
    invoke-virtual {v0, v5, v6}, Lio/blueflower/stapel2d/util/MinimumSelector;->assume(Ljava/lang/Object;F)Z

    .line 655
    :cond_64
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/BusStop;->getX()I

    move-result v5

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v5, v4, :cond_75

    goto :goto_78

    :cond_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 662
    :cond_78
    :goto_78
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/MinimumSelector;->hasResult()Z

    move-result p1

    if-eqz p1, :cond_85

    .line 663
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/MinimumSelector;->getMinimum()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/BusStop;

    return-object p1

    :cond_85
    return-object v1
.end method

.method public getReachabilityMask()Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;
    .registers 2

    .line 108
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->reachabilityMap:Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;

    return-object v0
.end method

.method public final getTrafficMultiplier()F
    .registers 13

    .line 157
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->carRatio:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 159
    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->rushHour:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_61

    .line 160
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getOriginalDaytime()F

    move-result v1

    .line 161
    sget-object v3, Linfo/flowersoft/theotown/components/DefaultTransportation;->RUSH_HOUR_CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "active factor"

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v4, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    double-to-float v4, v7

    .line 162
    const-string v7, "inactive factor"

    invoke-virtual {v3, v7, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 163
    const-string v6, "times"

    invoke-virtual {v3, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v3, :cond_5c

    .line 166
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_5c

    move v7, v6

    move v8, v7

    .line 167
    :goto_34
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v9

    sub-int/2addr v9, v2

    if-ge v7, v9, :cond_5b

    if-nez v8, :cond_5b

    .line 168
    invoke-virtual {v3, v7}, Linfo/flowersoft/theotown/util/json/JSONArray;->optDouble(I)D

    move-result-wide v8

    double-to-float v8, v8

    const/high16 v9, 0x41c00000    # 24.0f

    div-float/2addr v8, v9

    add-int/lit8 v10, v7, 0x1

    .line 169
    invoke-virtual {v3, v10}, Linfo/flowersoft/theotown/util/json/JSONArray;->optDouble(I)D

    move-result-wide v10

    double-to-float v10, v10

    div-float/2addr v10, v9

    cmpg-float v8, v8, v1

    if-gtz v8, :cond_57

    cmpg-float v8, v1, v10

    if-gtz v8, :cond_57

    move v8, v2

    goto :goto_58

    :cond_57
    move v8, v6

    :goto_58
    add-int/lit8 v7, v7, 0x2

    goto :goto_34

    :cond_5b
    move v6, v8

    :cond_5c
    if-eqz v6, :cond_60

    mul-float/2addr v0, v4

    goto :goto_61

    :cond_60
    mul-float/2addr v0, v5

    .line 181
    :cond_61
    :goto_61
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultDate;

    .line 182
    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v1

    const-wide/16 v3, 0x7

    rem-long/2addr v1, v3

    const-wide/16 v3, 0x5

    cmp-long v1, v1, v3

    if-ltz v1, :cond_79

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    :cond_79
    return v0
.end method

.method public getType()I
    .registers 2

    .line 0
    const/16 v0, 0x10

    return v0
.end method

.method public prepare()V
    .registers 3

    .line 115
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->prepare()V

    .line 117
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultInfluence;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    .line 118
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultTSComponent;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->tsComponent:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    return-void
.end method

.method public final sampleNeighborCity()Linfo/flowersoft/theotown/city/neighbors/NeighborCity;
    .registers 6

    .line 399
    new-instance v0, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    const/4 v1, 0x0

    .line 401
    :goto_8
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->countNeighbors()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 402
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/city/City;->getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 403
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getInhabitants()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    add-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 406
    :cond_26
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    return-object v0
.end method

.method public final sampleNeighborConnectionRoad(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;)Linfo/flowersoft/theotown/city/objects/Road;
    .registers 9

    .line 410
    new-instance v0, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    .line 412
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v1

    const/4 v2, 0x0

    .line 413
    :goto_e
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnectionSize()I

    move-result v3

    if-ge v2, v3, :cond_4f

    .line 415
    :try_start_14
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/AbstractConnectionList;->getConnection(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Road;

    if-eqz v3, :cond_4c

    .line 417
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v4

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getConnectionDir()I

    move-result v5

    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 418
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v5

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Road;->getConnectionDir()I

    move-result v6

    invoke-static {v6}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v6

    add-int/2addr v5, v6

    if-eqz p1, :cond_41

    .line 419
    invoke-virtual {p1, v4, v5}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_4c

    goto :goto_41

    :catch_3f
    move-exception v3

    goto :goto_49

    .line 420
    :cond_41
    :goto_41
    iget-object v4, v3, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v4, v4, Linfo/flowersoft/theotown/draft/RoadDraft;->speed:F

    invoke-virtual {v0, v3, v4}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V
    :try_end_48
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_14 .. :try_end_48} :catch_3f

    goto :goto_4c

    .line 424
    :goto_49
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4c
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 428
    :cond_4f
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Road;

    return-object p1
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final takeBus(Linfo/flowersoft/theotown/city/objects/BusStop;Linfo/flowersoft/theotown/city/objects/BusStop;Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 6

    const/4 v0, -0x1

    .line 491
    invoke-virtual {p0, p3, p4, v0}, Linfo/flowersoft/theotown/components/DefaultTransportation;->connect(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;I)V

    .line 492
    sget-object p3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const/4 p4, 0x4

    invoke-virtual {p3, p4}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    const/4 p4, 0x1

    add-int/2addr p3, p4

    .line 493
    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/city/objects/BusStop;->addWaiters(I)Z

    .line 494
    invoke-virtual {p2, p3}, Linfo/flowersoft/theotown/city/objects/BusStop;->addWaiters(I)Z

    return p4
.end method

.method public final takeCar(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;I)V
    .registers 4

    .line 487
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultTransportation;->connect(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;I)V

    return-void
.end method

.method public final tryToTakeLegacyBus(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 6

    .line 513
    invoke-static {}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 515
    :cond_8
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v2, 0x3f4ccccd    # 0.8f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_28

    .line 516
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/DefaultTransportation;->getNextBusStop(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 518
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/components/DefaultTransportation;->getNextBusStop(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/city/objects/BusStop;

    move-result-object v2

    if-eqz v2, :cond_28

    if-eq v0, v2, :cond_28

    .line 521
    invoke-virtual {p0, v0, v2, p1, p2}, Linfo/flowersoft/theotown/components/DefaultTransportation;->takeBus(Linfo/flowersoft/theotown/city/objects/BusStop;Linfo/flowersoft/theotown/city/objects/BusStop;Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result p1

    return p1

    :cond_28
    return v1
.end method

.method public tryToTakeTS(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;Z)Z
    .registers 13

    .line 583
    iget-object v0, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->tsComponent:Linfo/flowersoft/theotown/components/DefaultTSComponent;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->getSystems()Ljava/util/List;

    move-result-object v0

    .line 586
    iget-object v1, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->tempList0:Lio/blueflower/stapel2d/util/IntList;

    .line 587
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    const/4 v2, 0x0

    move v3, v2

    .line 588
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_19

    .line 589
    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_19
    move v3, v2

    .line 591
    :goto_1a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_30

    .line 592
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lio/blueflower/stapel2d/util/IntList;->swap(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_30
    move v3, v2

    .line 595
    :goto_31
    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v4

    if-ge v3, v4, :cond_86

    .line 596
    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    .line 597
    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getDraft()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;

    move-result-object v5

    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemDraft;->getConfig()Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;

    move-result-object v5

    if-eqz p3, :cond_4e

    .line 600
    iget v5, v5, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->passengerFactor:F

    goto :goto_50

    :cond_4e
    iget v5, v5, Linfo/flowersoft/theotown/components/transportationsystem/TSSystemConfig;->freightFactor:F

    .line 601
    :goto_50
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    cmpl-float v5, v6, v5

    if-lez v5, :cond_5b

    goto :goto_6e

    .line 605
    :cond_5b
    iget-object v5, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->tempList1:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p0, v4, p1, v2, v5}, Linfo/flowersoft/theotown/components/DefaultTransportation;->findSuitableStation(Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Linfo/flowersoft/theotown/city/objects/Building;ZLio/blueflower/stapel2d/util/IntList;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_65

    goto :goto_6e

    .line 607
    :cond_65
    iget-object v7, p0, Linfo/flowersoft/theotown/components/DefaultTransportation;->tempList1:Lio/blueflower/stapel2d/util/IntList;

    const/4 v8, 0x1

    invoke-virtual {p0, v4, p2, v8, v7}, Linfo/flowersoft/theotown/components/DefaultTransportation;->findSuitableStation(Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Linfo/flowersoft/theotown/city/objects/Building;ZLio/blueflower/stapel2d/util/IntList;)I

    move-result v7

    if-ne v7, v6, :cond_71

    :goto_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_71
    if-ne v5, v7, :cond_77

    .line 612
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/DefaultTransportation;->walk(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)V

    return v8

    .line 617
    :cond_77
    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationById(I)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object p1

    .line 618
    invoke-virtual {v4, v7}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationById(I)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object p2

    .line 619
    invoke-virtual {p1, v8}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->addWaiting(I)I

    .line 620
    invoke-virtual {p2, v8}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->addReaching(I)I

    return v8

    :cond_86
    return v2
.end method

.method public final tryToWalk(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 6

    .line 629
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getDistance()Linfo/flowersoft/theotown/util/Distance;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/util/Distance;->get(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v0

    int-to-float v0, v0

    .line 631
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v2, 0x41100000    # 9.0f

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1d

    .line 632
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/DefaultTransportation;->walk(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)V

    const/4 p1, 0x1

    return p1

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method public updateCars(ILinfo/flowersoft/theotown/components/traffic/carcontroller/BuildingCarSpawner;)V
    .registers 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 255
    iget-object v2, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/BuildingList;->getRciCarBuildings()Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v2

    .line 256
    new-instance v3, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {v3, v4}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    .line 257
    new-instance v4, Linfo/flowersoft/theotown/util/ListSampler;

    invoke-direct {v4, v2}, Linfo/flowersoft/theotown/util/ListSampler;-><init>(Ljava/util/List;)V

    .line 259
    invoke-virtual {v0, v2, v4}, Linfo/flowersoft/theotown/components/DefaultTransportation;->estimatePeople(Ljava/util/List;Linfo/flowersoft/theotown/util/ListSampler;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 263
    :goto_1f
    iget-object v7, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->countNeighbors()I

    move-result v7

    if-ge v5, v7, :cond_37

    .line 264
    iget-object v7, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7, v5}, Linfo/flowersoft/theotown/city/City;->getNeighbor(I)Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object v7

    if-eqz v7, :cond_34

    .line 265
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/neighbors/NeighborCity;->getInhabitants()I

    move-result v7

    add-int/2addr v6, v7

    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 267
    :cond_37
    iget v5, v0, Linfo/flowersoft/theotown/components/DefaultTransportation;->peopleEstimator:F

    float-to-int v7, v5

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    const/high16 v7, 0x41200000    # 10.0f

    div-float/2addr v5, v7

    .line 269
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-le v1, v5, :cond_48

    goto/16 :goto_252

    .line 275
    :cond_48
    iget v5, v0, Linfo/flowersoft/theotown/components/DefaultTransportation;->peopleEstimator:F

    float-to-double v8, v5

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    double-to-float v5, v8

    mul-float/2addr v5, v7

    .line 276
    new-instance v7, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v8, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {v7, v8}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    const/high16 v8, 0x42480000    # 50.0f

    mul-float/2addr v8, v5

    int-to-float v1, v1

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v8, v9

    div-float/2addr v1, v8

    sub-float v1, v9, v1

    mul-float/2addr v5, v1

    .line 281
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultTransportation;->getTrafficMultiplier()F

    move-result v1

    mul-float/2addr v5, v1

    :goto_71
    const/4 v1, 0x0

    cmpl-float v8, v5, v1

    if-lez v8, :cond_252

    .line 287
    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->clear()Ljava/lang/Object;

    const/4 v8, 0x0

    :goto_7a
    const/16 v10, 0x64

    if-ge v8, v10, :cond_9b

    .line 291
    sget-object v10, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v4, v10}, Linfo/flowersoft/theotown/util/ListSampler;->sample(Ljava/util/Random;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v10, :cond_98

    .line 292
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v11

    if-eqz v11, :cond_98

    .line 293
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v11

    iget v11, v11, Linfo/flowersoft/theotown/draft/BuildingDraft;->rciCars:I

    int-to-float v11, v11

    .line 294
    invoke-virtual {v3, v10, v11}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :cond_98
    add-int/lit8 v8, v8, 0x1

    goto :goto_7a

    .line 298
    :cond_9b
    iget v8, v0, Linfo/flowersoft/theotown/components/DefaultTransportation;->peopleEstimator:F

    float-to-int v8, v8

    invoke-virtual {v0, v8, v3}, Linfo/flowersoft/theotown/components/DefaultTransportation;->considerAirportSource(ILio/blueflower/stapel2d/util/ProbabilitySelector;)V

    .line 300
    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Linfo/flowersoft/theotown/city/objects/Building;

    if-nez v14, :cond_ac

    goto/16 :goto_252

    :cond_ac
    const/4 v8, 0x0

    :goto_ad
    cmpl-float v11, v5, v1

    if-lez v11, :cond_248

    const/4 v11, 0x5

    if-ge v8, v11, :cond_248

    const/4 v12, 0x1

    if-eqz v6, :cond_e9

    .line 309
    sget-object v13, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v13}, Ljava/util/Random;->nextBoolean()Z

    move-result v15

    if-nez v15, :cond_e9

    iget v15, v0, Linfo/flowersoft/theotown/components/DefaultTransportation;->peopleEstimator:F

    .line 310
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    div-int/lit8 v16, v6, 0xa

    add-int v15, v15, v16

    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-virtual {v13, v15}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    int-to-float v13, v13

    iget v15, v0, Linfo/flowersoft/theotown/components/DefaultTransportation;->peopleEstimator:F

    cmpg-float v13, v13, v15

    if-gez v13, :cond_d9

    goto :goto_e9

    .line 331
    :cond_d9
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultTransportation;->sampleNeighborCity()Linfo/flowersoft/theotown/city/neighbors/NeighborCity;

    move-result-object v13

    .line 332
    invoke-virtual {v0, v13}, Linfo/flowersoft/theotown/components/DefaultTransportation;->sampleNeighborConnectionRoad(Linfo/flowersoft/theotown/city/neighbors/NeighborCity;)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v13

    move-object/from16 v24, v3

    move/from16 v23, v9

    move-object v11, v13

    const/4 v15, 0x0

    goto/16 :goto_162

    .line 311
    :cond_e9
    :goto_e9
    invoke-virtual {v7}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->clear()Ljava/lang/Object;

    const/4 v13, 0x0

    :goto_ed
    if-ge v13, v10, :cond_156

    .line 314
    sget-object v15, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v4, v15}, Linfo/flowersoft/theotown/util/ListSampler;->sample(Ljava/util/Random;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v15, :cond_101

    .line 315
    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v16

    if-eqz v16, :cond_101

    if-ne v15, v14, :cond_106

    :cond_101
    move-object/from16 v24, v3

    move/from16 v23, v9

    goto :goto_14b

    .line 317
    :cond_106
    iget-object v1, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getDistance()Linfo/flowersoft/theotown/util/Distance;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Linfo/flowersoft/theotown/util/Distance;->get(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)I

    move-result v1

    .line 319
    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v2

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->rciCars:I

    add-int/lit8 v1, v1, -0x9

    .line 320
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v12

    move/from16 v23, v9

    .line 321
    iget-object v9, v0, Linfo/flowersoft/theotown/components/DefaultTransportation;->reachabilityMap:Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;

    .line 322
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v10

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v11

    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v12

    move-object/from16 v24, v3

    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v3

    .line 321
    invoke-virtual {v9, v10, v11, v12, v3}, Linfo/flowersoft/theotown/components/traffic/ReachabilityMap;->getTile(IIII)F

    move-result v3

    const v9, 0x3dcccccd    # 0.1f

    add-float/2addr v3, v9

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    mul-float/2addr v2, v3

    .line 323
    invoke-virtual {v7, v15, v2}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    .line 326
    invoke-virtual {v7}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->size()I

    move-result v1

    const/16 v2, 0x19

    if-lt v1, v2, :cond_14b

    goto :goto_15a

    :cond_14b
    :goto_14b
    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v23

    move-object/from16 v3, v24

    const/4 v1, 0x0

    const/16 v10, 0x64

    const/4 v12, 0x1

    goto :goto_ed

    :cond_156
    move-object/from16 v24, v3

    move/from16 v23, v9

    .line 329
    :goto_15a
    invoke-virtual {v7}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/Building;

    move-object v15, v1

    const/4 v11, 0x0

    :goto_162
    if-nez v15, :cond_166

    if-eqz v11, :cond_1b0

    .line 341
    :cond_166
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v1

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->RESIDENTIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    if-ne v1, v2, :cond_180

    .line 342
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getLevel()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/components/DefaultTransportation;->getCarDrafts(Linfo/flowersoft/theotown/draft/BuildingType;I)Ljava/util/List;

    move-result-object v1

    .line 343
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v2

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    :goto_17c
    move/from16 v22, v2

    const/4 v12, 0x1

    goto :goto_1aa

    :cond_180
    if-eqz v15, :cond_197

    .line 345
    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v1

    if-ne v1, v2, :cond_197

    .line 346
    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/objects/Building;->getLevel()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/components/DefaultTransportation;->getCarDrafts(Linfo/flowersoft/theotown/draft/BuildingType;I)Ljava/util/List;

    move-result-object v1

    .line 347
    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v2

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    goto :goto_17c

    .line 350
    :cond_197
    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->INDUSTRIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultTransportation;->getCarDrafts(Linfo/flowersoft/theotown/draft/BuildingType;I)Ljava/util/List;

    move-result-object v1

    .line 351
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v2

    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    move/from16 v22, v2

    const/4 v12, 0x0

    .line 356
    :goto_1aa
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b4

    :cond_1b0
    :goto_1b0
    sub-float v5, v5, v23

    goto/16 :goto_23d

    .line 361
    :cond_1b4
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/CarDraft;

    if-eqz v15, :cond_1f7

    .line 366
    invoke-virtual {v0, v14, v15}, Linfo/flowersoft/theotown/components/DefaultTransportation;->tryToWalk(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result v2

    if-nez v2, :cond_1b0

    .line 367
    invoke-virtual {v0, v14, v15, v12}, Linfo/flowersoft/theotown/components/DefaultTransportation;->tryToTakeTS(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;Z)Z

    move-result v2

    if-nez v2, :cond_1b0

    if-eqz v12, :cond_1db

    .line 368
    invoke-virtual {v0, v14, v15}, Linfo/flowersoft/theotown/components/DefaultTransportation;->tryToTakeLegacyBus(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result v2

    if-eqz v2, :cond_1db

    goto :goto_1b0

    .line 372
    :cond_1db
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v16

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v17

    .line 373
    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v19

    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v20

    const/16 v21, 0x0

    const/4 v13, -0x1

    const/16 v18, 0x0

    move-object/from16 v11, p2

    move-object v12, v1

    .line 371
    invoke-interface/range {v11 .. v22}, Linfo/flowersoft/theotown/components/traffic/carcontroller/BuildingCarSpawner;->spawn(Linfo/flowersoft/theotown/draft/CarDraft;ILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;IIIIIII)V

    goto :goto_1b0

    :cond_1f7
    move-object v12, v1

    .line 377
    invoke-virtual {v2}, Ljava/util/Random;->nextBoolean()Z

    move-result v1

    if-eqz v1, :cond_21e

    .line 383
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v16

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v17

    iget v1, v11, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    .line 384
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v19

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v20

    const/16 v21, 0x0

    const/4 v13, -0x1

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v11, p2

    move/from16 v18, v1

    .line 382
    invoke-interface/range {v11 .. v22}, Linfo/flowersoft/theotown/components/traffic/carcontroller/BuildingCarSpawner;->spawn(Linfo/flowersoft/theotown/draft/CarDraft;ILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;IIIIIII)V

    move-object v14, v15

    goto :goto_1b0

    .line 387
    :cond_21e
    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v16

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v17

    .line 388
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Road;->getX()I

    move-result v19

    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Road;->getY()I

    move-result v20

    iget v1, v11, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    const/4 v13, -0x1

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, p2

    move/from16 v21, v1

    .line 386
    invoke-interface/range {v11 .. v22}, Linfo/flowersoft/theotown/components/traffic/carcontroller/BuildingCarSpawner;->spawn(Linfo/flowersoft/theotown/draft/CarDraft;ILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;IIIIIII)V

    goto/16 :goto_1b0

    :goto_23d
    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v23

    move-object/from16 v3, v24

    const/4 v1, 0x0

    const/16 v10, 0x64

    goto/16 :goto_ad

    :cond_248
    move-object/from16 v24, v3

    move/from16 v23, v9

    move/from16 v9, v23

    move-object/from16 v3, v24

    goto/16 :goto_71

    :cond_252
    :goto_252
    return-void
.end method

.method public final walk(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 4

    const/4 v0, -0x1

    .line 483
    invoke-virtual {p0, p1, p2, v0}, Linfo/flowersoft/theotown/components/DefaultTransportation;->connect(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/Building;I)V

    return-void
.end method

###### Class info.flowersoft.theotown.components.DefaultTransportation.AnonymousClass1 (info.flowersoft.theotown.components.DefaultTransportation$1)
.class public synthetic Linfo/flowersoft/theotown/components/DefaultTransportation$1;
.super Ljava/lang/Object;
.source "DefaultTransportation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/DefaultTransportation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 95
    invoke-static {}, Linfo/flowersoft/theotown/draft/BuildingType;->values()[Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Linfo/flowersoft/theotown/components/DefaultTransportation$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    :try_start_9
    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->RESIDENTIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Linfo/flowersoft/theotown/components/DefaultTransportation$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->COMMERCIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Linfo/flowersoft/theotown/components/DefaultTransportation$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->INDUSTRIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class info.flowersoft.theotown.components.DefaultTransportation.FoundWay (info.flowersoft.theotown.components.DefaultTransportation$FoundWay)
.class public Linfo/flowersoft/theotown/components/DefaultTransportation$FoundWay;
.super Ljava/lang/Object;
.source "DefaultTransportation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/DefaultTransportation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FoundWay"
.end annotation


# instance fields
.field public carDraft:Linfo/flowersoft/theotown/draft/CarDraft;

.field public frame:I

.field public start:Linfo/flowersoft/theotown/city/objects/Building;

.field public startX:I

.field public startY:I

.field public target:Linfo/flowersoft/theotown/city/objects/Building;

.field public targetX:I

.field public targetY:I

.field public way:Linfo/flowersoft/theotown/city/objects/Way;

.field public wealthLevel:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/DefaultTransportation$1;)V
    .registers 2

    .line 669
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/DefaultTransportation$FoundWay;-><init>()V

    return-void
.end method
