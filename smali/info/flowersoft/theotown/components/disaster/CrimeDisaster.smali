###### Class info.flowersoft.theotown.components.disaster.CrimeDisaster (info.flowersoft.theotown.components.disaster.CrimeDisaster)
.class public Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;
.super Linfo/flowersoft/theotown/city/components/Disaster;
.source "CrimeDisaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;
    }
.end annotation


# instance fields
.field public final CRIME_PROBABILITY_FACTOR:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final crimeIndex:I

.field public final crimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            "Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;",
            ">;"
        }
    .end annotation
.end field

.field public final policeIndex:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Disaster;-><init>()V

    .line 35
    const-string v0, "game mode crime probability"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->CRIME_PROBABILITY_FACTOR:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 39
    const-class v0, Linfo/flowersoft/theotown/components/management/attribute/CrimeAttribute;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getIndex(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->crimeIndex:I

    .line 41
    const-class v0, Linfo/flowersoft/theotown/components/management/attribute/PoliceHappiness;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getIndex(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->policeIndex:I

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->crimes:Ljava/util/Map;

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/city/components/Disaster;->setSilent(Z)V

    return-void
.end method


# virtual methods
.method public declared-synchronized bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    monitor-enter p0

    .line 121
    :try_start_1
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/city/components/Disaster;->bind(Linfo/flowersoft/theotown/city/City;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 122
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw p1
.end method

.method public final crimeBuildingDown(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/CrimeType;)V
    .registers 6

    .line 154
    sget-object v0, Linfo/flowersoft/theotown/city/objects/CrimeType;->BURGLARY:Linfo/flowersoft/theotown/city/objects/CrimeType;

    if-eq p2, v0, :cond_8

    sget-object v0, Linfo/flowersoft/theotown/city/objects/CrimeType;->MURDER:Linfo/flowersoft/theotown/city/objects/CrimeType;

    if-ne p2, v0, :cond_10

    :cond_8
    const/4 v0, 0x1

    .line 155
    invoke-static {p2}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->forCrime(Linfo/flowersoft/theotown/city/objects/CrimeType;)Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Linfo/flowersoft/theotown/city/objects/Building;->setEmpty(ZLinfo/flowersoft/theotown/city/objects/EmptyBuildingCause;)V

    .line 158
    :cond_10
    new-instance p2, Linfo/flowersoft/theotown/city/BuildingSampler;

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    .line 159
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 160
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v2, p1

    const/16 p1, 0x14

    invoke-direct {p2, v0, p1, v1, v2}, Linfo/flowersoft/theotown/city/BuildingSampler;-><init>(Linfo/flowersoft/theotown/city/City;III)V

    const/16 p1, 0xa0

    .line 162
    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/city/BuildingSampler;->sample(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/city/objects/Building;

    .line 163
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->influenceBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V

    goto :goto_39

    :cond_49
    return-void
.end method

.method public getAutoProbability()F
    .registers 2

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public declared-synchronized getCrimeBuilding()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 2

    monitor-enter p0

    .line 251
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->crimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_1b

    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->crimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Building;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    :goto_1b
    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public declared-synchronized getCrimeBuildings()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 247
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->crimes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public final getCrimeProbability(Linfo/flowersoft/theotown/city/objects/Building;)F
    .registers 4

    .line 255
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 257
    :cond_8
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getAttributeContainer()Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    if-eqz v0, :cond_21

    .line 259
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    iget-boolean p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->destroyable:Z

    if-eqz p1, :cond_21

    .line 260
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object p1

    iget v0, p0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->crimeIndex:I

    aget p1, p1, v0

    return p1

    :cond_21
    return v1
.end method

.method public declared-synchronized getLocation()[I
    .registers 3

    monitor-enter p0

    .line 268
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->crimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 269
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->crimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Building;

    .line 270
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    filled-new-array {v1, v0}, [I

    move-result-object v0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    monitor-exit p0

    return-object v0

    :catchall_27
    move-exception v0

    goto :goto_2c

    .line 272
    :cond_29
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_2c
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_27

    throw v0
.end method

.method public declared-synchronized getType()Linfo/flowersoft/theotown/city/objects/CrimeType;
    .registers 3

    monitor-enter p0

    .line 188
    :try_start_1
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->getCrimeBuilding()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 190
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->crimes:Ljava/util/Map;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->getCrimeBuilding()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;

    iget-object v0, v0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;->type:Linfo/flowersoft/theotown/city/objects/CrimeType;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception v0

    goto :goto_1d

    .line 192
    :cond_19
    :try_start_19
    sget-object v0, Linfo/flowersoft/theotown/city/objects/CrimeType;->GRAFFITI:Linfo/flowersoft/theotown/city/objects/CrimeType;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_17

    monitor-exit p0

    return-object v0

    :goto_1d
    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_17

    throw v0
.end method

.method public final influenceBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 6

    if-eqz p1, :cond_39

    .line 169
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getAttributeContainer()Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    if-eqz v0, :cond_39

    .line 170
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 171
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object p1

    iget v1, p0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->policeIndex:I

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object v0

    iget v2, p0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->policeIndex:I

    aget v0, v0, v2

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    .line 172
    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const v3, 0x3f266666    # 0.65f

    mul-float/2addr v2, v3

    const v3, 0x3eb33333    # 0.35f

    add-float/2addr v2, v3

    mul-float/2addr v0, v2

    aput v0, p1, v1

    :cond_39
    return-void
.end method

.method public declared-synchronized isActive()Z
    .registers 2

    monitor-enter p0

    .line 184
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->crimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public isAutoEnabled()Z
    .registers 2

    .line 278
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public declared-synchronized issue()Z
    .registers 10

    monitor-enter p0

    .line 198
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/components/People;

    .line 199
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/People;->getPeople()I

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_58

    const/16 v1, 0x44c

    const/4 v2, 0x0

    if-ge v0, v1, :cond_16

    monitor-exit p0

    return v2

    .line 202
    :cond_16
    :try_start_16
    new-instance v0, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    .line 204
    new-instance v1, Linfo/flowersoft/theotown/util/SafeListAccessor;

    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/BuildingList;->getRciBuildings()Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v3

    invoke-direct {v1, v3}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    move v4, v3

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/city/objects/Building;

    .line 205
    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->getCrimeProbability(Linfo/flowersoft/theotown/city/objects/Building;)F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 206
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v8

    iget-boolean v8, v8, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsRoad:Z

    if-nez v8, :cond_51

    mul-float/2addr v6, v7

    :cond_51
    sub-float v7, v3, v6

    mul-float/2addr v4, v7

    .line 208
    invoke-virtual {v0, v5, v6}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    goto :goto_33

    :catchall_58
    move-exception v0

    goto :goto_8c

    :cond_5a
    sub-float v1, v3, v4

    .line 211
    iget-object v4, p0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->CRIME_PROBABILITY_FACTOR:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, v4, v3}, Linfo/flowersoft/theotown/city/components/Disaster;->getGameModeDependentValue(Linfo/flowersoft/theotown/util/json/JSONObject;F)F

    move-result v3

    mul-float/2addr v1, v3

    .line 212
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result v3

    if-eqz v3, :cond_8a

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    cmpg-float v1, v3, v1

    if-gez v1, :cond_8a

    .line 213
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->selectCrime(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/city/objects/CrimeType;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->issue(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/CrimeType;)Z

    move-result v0
    :try_end_87
    .catchall {:try_start_16 .. :try_end_87} :catchall_58

    if-eqz v0, :cond_8a

    const/4 v2, 0x1

    .line 212
    :cond_8a
    monitor-exit p0

    return v2

    :goto_8c
    :try_start_8c
    monitor-exit p0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_58

    throw v0
.end method

.method public declared-synchronized issue(II)Z
    .registers 5

    monitor-enter p0

    .line 226
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 227
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 228
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->getCrimeProbability(Linfo/flowersoft/theotown/city/objects/Building;)F

    move-result p2

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2d

    .line 229
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->selectCrime(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/city/objects/CrimeType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->issue(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/CrimeType;)Z

    move-result p1
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2b

    if-eqz p1, :cond_2d

    const/4 v1, 0x1

    goto :goto_2d

    :catchall_2b
    move-exception p1

    goto :goto_31

    .line 228
    :cond_2d
    :goto_2d
    monitor-exit p0

    return v1

    .line 231
    :cond_2f
    monitor-exit p0

    return v1

    :goto_31
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2b

    throw p1
.end method

.method public declared-synchronized issue(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/CrimeType;)Z
    .registers 7

    monitor-enter p0

    .line 235
    :try_start_1
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->getCrimeProbability(Linfo/flowersoft/theotown/city/objects/Building;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21

    .line 236
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v2

    .line 238
    invoke-virtual {p0, p1, v2, v3, p2}, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->registerCrime(Linfo/flowersoft/theotown/city/objects/Building;JLinfo/flowersoft/theotown/city/objects/CrimeType;)Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;

    .line 239
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/objects/Building;->setCrime(Linfo/flowersoft/theotown/city/objects/CrimeType;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 240
    monitor-exit p0

    return v1

    :catchall_1f
    move-exception p1

    goto :goto_24

    .line 242
    :cond_21
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_24
    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_1f

    throw p1
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 51
    :goto_1
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 52
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "buildings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 90
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_1

    .line 54
    :cond_1a
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 55
    :goto_1d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 56
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    move v4, v0

    move v5, v4

    .line 61
    :goto_2b
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8b

    .line 62
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_b6

    :goto_3f
    move v6, v0

    goto :goto_6c

    :sswitch_41
    const-string v7, "type"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4a

    goto :goto_3f

    :cond_4a
    const/4 v6, 0x3

    goto :goto_6c

    :sswitch_4c
    const-string v7, "day"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_55

    goto :goto_3f

    :cond_55
    const/4 v6, 0x2

    goto :goto_6c

    :sswitch_57
    const-string v7, "y"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_60

    goto :goto_3f

    :cond_60
    const/4 v6, 0x1

    goto :goto_6c

    :sswitch_62
    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6b

    goto :goto_3f

    :cond_6b
    const/4 v6, 0x0

    :goto_6c
    packed-switch v6, :pswitch_data_c8

    .line 76
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_2b

    .line 73
    :pswitch_73
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    invoke-static {v3}, Linfo/flowersoft/theotown/city/objects/CrimeType;->resolveId(I)Linfo/flowersoft/theotown/city/objects/CrimeType;

    move-result-object v3

    goto :goto_2b

    .line 70
    :pswitch_7c
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v1

    goto :goto_2b

    .line 67
    :pswitch_81
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v5

    goto :goto_2b

    .line 64
    :pswitch_86
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v4

    goto :goto_2b

    .line 79
    :cond_8b
    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v4, v5}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v6

    if-eqz v6, :cond_aa

    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-ltz v6, :cond_aa

    if-eqz v3, :cond_aa

    .line 80
    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v4

    if-eqz v4, :cond_aa

    .line 82
    invoke-virtual {p0, v4, v1, v2, v3}, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->registerCrime(Linfo/flowersoft/theotown/city/objects/Building;JLinfo/flowersoft/theotown/city/objects/CrimeType;)Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;

    .line 85
    :cond_aa
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    goto/16 :goto_1d

    .line 87
    :cond_af
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto/16 :goto_1

    :cond_b4
    return-void

    nop

    :sswitch_data_b6
    .sparse-switch
        0x78 -> :sswitch_62
        0x79 -> :sswitch_57
        0x1839c -> :sswitch_4c
        0x368f3a -> :sswitch_41
    .end sparse-switch

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_86
        :pswitch_81
        :pswitch_7c
        :pswitch_73
    .end packed-switch
.end method

.method public declared-synchronized prepare()V
    .registers 4

    monitor-enter p0

    .line 126
    :try_start_1
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Disaster;->prepare()V

    .line 128
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->crimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;

    .line 129
    iget-object v2, v1, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;->building:Linfo/flowersoft/theotown/city/objects/Building;

    iget-object v1, v1, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;->type:Linfo/flowersoft/theotown/city/objects/CrimeType;

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/city/objects/Building;->setCrime(Linfo/flowersoft/theotown/city/objects/CrimeType;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_22

    goto :goto_e

    :catchall_22
    move-exception v0

    goto :goto_26

    .line 131
    :cond_24
    monitor-exit p0

    return-void

    :goto_26
    :try_start_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_22

    throw v0
.end method

.method public final registerCrime(Linfo/flowersoft/theotown/city/objects/Building;JLinfo/flowersoft/theotown/city/objects/CrimeType;)Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;
    .registers 7

    .line 111
    new-instance v0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;-><init>(Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$1;)V

    .line 112
    iput-object p1, v0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 113
    iput-wide p2, v0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;->startDay:J

    .line 114
    iput-object p4, v0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;->type:Linfo/flowersoft/theotown/city/objects/CrimeType;

    .line 115
    iget-object p2, p0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->crimes:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized removeCrime(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 178
    :try_start_2
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->setCrime(Linfo/flowersoft/theotown/city/objects/CrimeType;)V

    .line 179
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->crimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    .line 180
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw p1
.end method

.method public declared-synchronized save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 97
    :try_start_1
    const-string v0, "buildings"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 98
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->crimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;

    .line 100
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 101
    const-string v2, "x"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    iget-object v3, v1, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 102
    const-string v2, "y"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    iget-object v3, v1, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v3

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 103
    const-string v2, "day"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    iget-wide v3, v1, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;->startDay:J

    invoke-interface {v2, v3, v4}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 104
    const-string v2, "type"

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v2

    iget-object v1, v1, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;->type:Linfo/flowersoft/theotown/city/objects/CrimeType;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/CrimeType;->getId()I

    move-result v1

    invoke-interface {v2, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 105
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    goto :goto_13

    :catchall_5e
    move-exception p1

    goto :goto_65

    .line 107
    :cond_60
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_5e

    .line 108
    monitor-exit p0

    return-void

    :goto_65
    :try_start_65
    monitor-exit p0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_5e

    throw p1
.end method

.method public final selectCrime(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/city/objects/CrimeType;
    .registers 4

    .line 217
    new-instance p1, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {p1, v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    .line 218
    sget-object v0, Linfo/flowersoft/theotown/city/objects/CrimeType;->GRAFFITI:Linfo/flowersoft/theotown/city/objects/CrimeType;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v0, v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    .line 219
    sget-object v0, Linfo/flowersoft/theotown/city/objects/CrimeType;->BURGLARY:Linfo/flowersoft/theotown/city/objects/CrimeType;

    const v1, 0x3e19999a    # 0.15f

    invoke-virtual {p1, v0, v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    .line 220
    sget-object v0, Linfo/flowersoft/theotown/city/objects/CrimeType;->MURDER:Linfo/flowersoft/theotown/city/objects/CrimeType;

    const v1, 0x3d4ccccd    # 0.05f

    invoke-virtual {p1, v0, v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    .line 221
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/CrimeType;

    return-object p1
.end method

.method public declared-synchronized update()V
    .registers 10

    monitor-enter p0

    .line 135
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    .line 137
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->crimes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 138
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 139
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;

    .line 140
    iget-object v4, v3, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 142
    iget-wide v5, v3, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;->startDay:J

    sub-long v5, v0, v5

    .line 144
    sget-object v7, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const/16 v8, 0x1e

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit8 v7, v7, 0xf

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_11

    .line 145
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    const/4 v5, 0x0

    .line 146
    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/city/objects/Building;->setCrime(Linfo/flowersoft/theotown/city/objects/CrimeType;)V

    .line 147
    iget-object v3, v3, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;->type:Linfo/flowersoft/theotown/city/objects/CrimeType;

    invoke-virtual {p0, v4, v3}, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;->crimeBuildingDown(Linfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/objects/CrimeType;)V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_3f

    goto :goto_11

    :catchall_3f
    move-exception v0

    goto :goto_43

    .line 151
    :cond_41
    monitor-exit p0

    return-void

    :goto_43
    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_3f

    throw v0
.end method

###### Class info.flowersoft.theotown.components.disaster.CrimeDisaster.AnonymousClass1 (info.flowersoft.theotown.components.disaster.CrimeDisaster$1)
.class public synthetic Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$1;
.super Ljava/lang/Object;
.source "CrimeDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class info.flowersoft.theotown.components.disaster.CrimeDisaster.CrimeBuilding (info.flowersoft.theotown.components.disaster.CrimeDisaster$CrimeBuilding)
.class public Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;
.super Ljava/lang/Object;
.source "CrimeDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/disaster/CrimeDisaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrimeBuilding"
.end annotation


# instance fields
.field public building:Linfo/flowersoft/theotown/city/objects/Building;

.field public startDay:J

.field public type:Linfo/flowersoft/theotown/city/objects/CrimeType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$1;)V
    .registers 2

    .line 286
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/disaster/CrimeDisaster$CrimeBuilding;-><init>()V

    return-void
.end method
