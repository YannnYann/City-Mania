###### Class info.flowersoft.theotown.components.disaster.IllnessDisaster (info.flowersoft.theotown.components.disaster.IllnessDisaster)
.class public Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;
.super Linfo/flowersoft/theotown/city/components/Disaster;
.source "IllnessDisaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;
    }
.end annotation


# instance fields
.field public final ILLNESS_PROBABILITY_FACTOR:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public date:Linfo/flowersoft/theotown/components/DefaultDate;

.field public final healthIndex:I

.field public final illBuildings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;",
            ">;"
        }
    .end annotation
.end field

.field public people:Linfo/flowersoft/theotown/components/DefaultPeople;

.field public startDay:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Disaster;-><init>()V

    .line 33
    const-string v0, "game mode illness probability"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->ILLNESS_PROBABILITY_FACTOR:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 40
    const-class v0, Linfo/flowersoft/theotown/components/management/attribute/HealthHappiness;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getIndex(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->healthIndex:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->illBuildings:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 31
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized addBuilding(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 7

    monitor-enter p0

    .line 101
    :try_start_1
    new-instance v0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;-><init>(Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$1;)V

    .line 102
    iput-object p1, v0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 103
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v1

    iput-wide v1, v0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->startDay:J

    const-wide/16 v3, 0x1e

    add-long/2addr v1, v3

    .line 104
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    const/16 v4, 0x3c

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->targetDay:J

    .line 105
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->people:Linfo/flowersoft/theotown/components/DefaultPeople;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/components/DefaultPeople;->countPeopleInBuilding(Linfo/flowersoft/theotown/city/objects/Building;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->population:I

    if-lez v1, :cond_41

    const/4 v1, 0x1

    .line 108
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/objects/Building;->setIll(Z)V

    .line 109
    iget-object v2, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Linfo/flowersoft/theotown/city/objects/Building;->setLastIllness(J)V

    .line 110
    iget-object p1, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->illBuildings:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_3f

    .line 111
    monitor-exit p0

    return v1

    :catchall_3f
    move-exception p1

    goto :goto_44

    .line 113
    :cond_41
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_44
    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_3f

    throw p1
.end method

.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 48
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/city/components/Disaster;->bind(Linfo/flowersoft/theotown/city/City;)V

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    const/16 v0, 0x9

    .line 50
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultPeople;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->people:Linfo/flowersoft/theotown/components/DefaultPeople;

    return-void
.end method

.method public getAutoProbability()F
    .registers 2

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public declared-synchronized getBuilding()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 3

    monitor-enter p0

    .line 157
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->illBuildings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    .line 158
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->illBuildings:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;

    iget-object v0, v0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->building:Linfo/flowersoft/theotown/city/objects/Building;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    goto :goto_1b

    .line 160
    :cond_18
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_1b
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_16

    throw v0
.end method

.method public declared-synchronized getLocation()[I
    .registers 3

    monitor-enter p0

    .line 269
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->illBuildings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    .line 270
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->illBuildings:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;

    iget-object v0, v0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 271
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    filled-new-array {v1, v0}, [I

    move-result-object v0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v0

    :catchall_22
    move-exception v0

    goto :goto_27

    .line 273
    :cond_24
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_27
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_22

    throw v0
.end method

.method public declared-synchronized infectBuilding(II)Z
    .registers 10

    monitor-enter p0

    .line 181
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 182
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    .line 183
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_7a

    .line 185
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object p2

    sget-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->RESIDENTIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    if-ne p2, v0, :cond_7a

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result p2

    if-eqz p2, :cond_7a

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isIll()Z

    move-result p2

    if-nez p2, :cond_7a

    .line 186
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getLastIllness()J

    move-result-wide v0

    .line 187
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getAttributeContainer()Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p2, :cond_42

    .line 190
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object p2

    iget v3, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->healthIndex:I

    aget p2, p2, v3

    goto :goto_43

    :catchall_40
    move-exception p1

    goto :goto_7d

    :cond_42
    move p2, v2

    :goto_43
    const-wide/16 v3, 0x168

    add-long/2addr v3, v0

    .line 192
    iget-object v5, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gez v3, :cond_7a

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr p2, v3

    sub-float p2, v2, p2

    const v3, 0x3e99999a    # 0.3f

    mul-float/2addr p2, v3

    .line 193
    iget-object v3, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v3

    sub-long/2addr v3, v0

    long-to-float v0, v3

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    div-float v0, v2, v0

    sub-float/2addr v2, v0

    mul-float/2addr p2, v2

    .line 194
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    cmpg-float p2, v0, p2

    if-gez p2, :cond_7a

    .line 195
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->issueChecked(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result p1
    :try_end_78
    .catchall {:try_start_1 .. :try_end_78} :catchall_40

    monitor-exit p0

    return p1

    .line 200
    :cond_7a
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_7d
    :try_start_7d
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_40

    throw p1
.end method

.method public final infectNeighbors(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 6

    .line 165
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->startDay:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    goto/16 :goto_8d

    .line 166
    :cond_11
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    :goto_15
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_4f

    .line 167
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->infectBuilding(II)Z

    .line 168
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->infectBuilding(II)Z

    .line 169
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->infectBuilding(II)Z

    .line 170
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->infectBuilding(II)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 172
    :cond_4f
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    :goto_53
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_8d

    .line 173
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->infectBuilding(II)Z

    .line 174
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->infectBuilding(II)Z

    .line 175
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->infectBuilding(II)Z

    .line 176
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->infectBuilding(II)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :cond_8d
    :goto_8d
    return-void
.end method

.method public declared-synchronized isActive()Z
    .registers 2

    monitor-enter p0

    .line 205
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->illBuildings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

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

    .line 279
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->disasterIllness:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public issue()Z
    .registers 11

    .line 210
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->people:Linfo/flowersoft/theotown/components/DefaultPeople;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/People;->getPeople()I

    move-result v0

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_c

    return v2

    .line 212
    :cond_c
    new-instance v0, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    .line 214
    const-class v1, Linfo/flowersoft/theotown/components/management/attribute/HealthHappiness;

    invoke-static {v1}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getIndex(Ljava/lang/Class;)I

    move-result v1

    .line 216
    new-instance v3, Linfo/flowersoft/theotown/util/SafeListAccessor;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/BuildingList;->getRciBuildings()Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v4

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    move v5, v4

    :cond_2f
    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/city/objects/Building;

    .line 218
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getAttributeContainer()Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    if-eqz v7, :cond_4a

    .line 219
    invoke-virtual {v7}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object v7

    aget v7, v7, v1

    goto :goto_4b

    :cond_4a
    move v7, v4

    :goto_4b
    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v7, v8

    sub-float v7, v4, v7

    const/4 v8, 0x0

    .line 220
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 221
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v8

    iget-boolean v8, v8, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsRoad:Z

    if-eqz v8, :cond_2f

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v8

    sget-object v9, Linfo/flowersoft/theotown/draft/BuildingType;->RESIDENTIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    if-ne v8, v9, :cond_2f

    .line 222
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v8

    if-eqz v8, :cond_2f

    sub-float v8, v4, v7

    mul-float/2addr v5, v8

    .line 224
    invoke-virtual {v0, v6, v7}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    goto :goto_2f

    :cond_72
    sub-float v1, v4, v5

    .line 228
    iget-object v3, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->ILLNESS_PROBABILITY_FACTOR:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/city/components/Disaster;->getGameModeDependentValue(Linfo/flowersoft/theotown/util/json/JSONObject;F)F

    move-result v3

    mul-float/2addr v1, v3

    .line 229
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result v3

    if-eqz v3, :cond_af

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    cmpg-float v1, v3, v1

    if-gez v1, :cond_af

    .line 230
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->infectBuilding(II)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 231
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->startDay:J

    const/4 v0, 0x1

    return v0

    :cond_af
    return v2
.end method

.method public declared-synchronized issue(II)Z
    .registers 4

    monitor-enter p0

    .line 240
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 241
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 243
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->issue(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result p1
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return p1

    :catchall_1b
    move-exception p1

    goto :goto_20

    .line 246
    :cond_1d
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_20
    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1b

    throw p1
.end method

.method public declared-synchronized issue(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 4

    monitor-enter p0

    .line 250
    :try_start_1
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->issueChecked(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 251
    iget-object p1, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->startDay:J
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    .line 252
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_12
    move-exception p1

    goto :goto_17

    .line 254
    :cond_14
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_12

    throw p1
.end method

.method public final declared-synchronized issueChecked(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 4

    monitor-enter p0

    .line 259
    :try_start_1
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isIll()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->RESIDENTIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    if-ne v0, v1, :cond_2d

    .line 260
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 261
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->addBuilding(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result p1
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    monitor-exit p0

    return p1

    :catchall_2b
    move-exception p1

    goto :goto_30

    .line 263
    :cond_2d
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_30
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2b

    throw p1
.end method

.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    :goto_0
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 56
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "start day"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    const-string v1, "ill buildings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 76
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_0

    .line 58
    :cond_21
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginArray()V

    .line 59
    :cond_24
    :goto_24
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 60
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->beginObject()V

    .line 61
    new-instance v0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;-><init>(Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$1;)V

    .line 62
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->load(Lio/blueflower/stapel2d/util/json/JsonReader;)V

    .line 63
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endObject()V

    .line 65
    iget-object v1, v0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v1, :cond_24

    .line 66
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->illBuildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, v0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->building:Linfo/flowersoft/theotown/city/objects/Building;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/Building;->setIll(Z)V

    goto :goto_24

    .line 70
    :cond_49
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->endArray()V

    goto :goto_0

    .line 73
    :cond_4d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->startDay:J

    goto :goto_0

    :cond_54
    return-void
.end method

.method public prepare()V
    .registers 1

    .line 97
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/Disaster;->prepare()V

    return-void
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const-string v0, "ill buildings"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 85
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    const/4 v0, 0x0

    .line 86
    :goto_9
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->illBuildings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 87
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->beginObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 88
    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->illBuildings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V

    .line 89
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endObject()Lio/blueflower/stapel2d/util/json/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 91
    :cond_25
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->endArray()Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 92
    const-string v0, "start day"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget-wide v0, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->startDay:J

    invoke-interface {p1, v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method

.method public declared-synchronized update()V
    .registers 14

    monitor-enter p0

    .line 119
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->illBuildings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_3c

    if-eqz v0, :cond_b

    .line 120
    monitor-exit p0

    return-void

    .line 123
    :cond_b
    :try_start_b
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Disaster;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 125
    :goto_13
    iget-object v3, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->illBuildings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b5

    .line 126
    iget-object v3, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->illBuildings:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;

    .line 127
    iget-object v4, v3, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 128
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v5

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v5

    const/4 v6, 0x1

    if-ne v5, v4, :cond_3f

    .line 129
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->isIll()Z

    move-result v5

    if-eqz v5, :cond_3f

    move v5, v6

    goto :goto_40

    :catchall_3c
    move-exception v0

    goto/16 :goto_b7

    :cond_3f
    move v5, v1

    :goto_40
    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v5, :cond_83

    .line 131
    iget-object v8, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v8

    iget-wide v10, v3, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->targetDay:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_83

    iget v8, v3, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->population:I

    if-nez v8, :cond_55

    goto :goto_83

    :cond_55
    if-lez v8, :cond_70

    .line 145
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    cmpg-float v5, v5, v7

    if-gez v5, :cond_70

    .line 146
    iget v5, v3, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->population:I

    sub-int/2addr v5, v6

    iput v5, v3, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->population:I

    .line 147
    iget-object v5, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->people:Linfo/flowersoft/theotown/components/DefaultPeople;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getLevel()I

    move-result v7

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Linfo/flowersoft/theotown/components/DefaultPeople;->addPeople(II)V

    .line 149
    :cond_70
    iget-object v5, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v7

    iget-wide v9, v3, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->startDay:J

    const-wide/16 v11, 0x7

    add-long/2addr v9, v11

    cmp-long v3, v7, v9

    if-ltz v3, :cond_b2

    .line 150
    invoke-virtual {p0, v4}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->infectNeighbors(Linfo/flowersoft/theotown/city/objects/Building;)V

    goto :goto_b2

    .line 132
    :cond_83
    :goto_83
    invoke-virtual {v4, v1}, Linfo/flowersoft/theotown/city/objects/Building;->setIll(Z)V

    if-eqz v5, :cond_ab

    .line 134
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    cmpg-float v5, v5, v7

    if-gez v5, :cond_a0

    .line 135
    iget-object v5, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->people:Linfo/flowersoft/theotown/components/DefaultPeople;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getLevel()I

    move-result v7

    iget v8, v3, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->population:I

    neg-int v8, v8

    invoke-virtual {v5, v7, v8}, Linfo/flowersoft/theotown/components/DefaultPeople;->addPeople(II)V

    .line 136
    iput v1, v3, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->population:I

    .line 138
    :cond_a0
    iget v3, v3, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->population:I

    if-nez v3, :cond_ab

    .line 139
    invoke-static {}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->forIllness()Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Linfo/flowersoft/theotown/city/objects/Building;->setEmpty(ZLinfo/flowersoft/theotown/city/objects/EmptyBuildingCause;)V

    .line 142
    :cond_ab
    iget-object v3, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->illBuildings:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_b0
    .catchall {:try_start_b .. :try_end_b0} :catchall_3c

    add-int/lit8 v2, v2, -0x1

    :cond_b2
    :goto_b2
    add-int/2addr v2, v6

    goto/16 :goto_13

    .line 154
    :cond_b5
    monitor-exit p0

    return-void

    :goto_b7
    :try_start_b7
    monitor-exit p0
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_3c

    throw v0
.end method

###### Class info.flowersoft.theotown.components.disaster.IllnessDisaster.AnonymousClass1 (info.flowersoft.theotown.components.disaster.IllnessDisaster$1)
.class public synthetic Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$1;
.super Ljava/lang/Object;
.source "IllnessDisaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class info.flowersoft.theotown.components.disaster.IllnessDisaster.IllBuilding (info.flowersoft.theotown.components.disaster.IllnessDisaster$IllBuilding)
.class Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;
.super Ljava/lang/Object;
.source "IllnessDisaster.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/Saveable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IllBuilding"
.end annotation


# instance fields
.field public building:Linfo/flowersoft/theotown/city/objects/Building;

.field public population:I

.field public startDay:J

.field public targetDay:J

.field public final synthetic this$0:Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 287
    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->this$0:Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$1;)V
    .registers 3

    .line 287
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;-><init>(Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;)V

    return-void
.end method


# virtual methods
.method public load(Lio/blueflower/stapel2d/util/json/JsonReader;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    move v1, v0

    move v2, v1

    .line 297
    :goto_3
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 298
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_a8

    :goto_17
    move v3, v0

    goto :goto_4f

    :sswitch_19
    const-string v4, "target day"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_17

    :cond_22
    const/4 v3, 0x4

    goto :goto_4f

    :sswitch_24
    const-string v4, "pop"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_17

    :cond_2d
    const/4 v3, 0x3

    goto :goto_4f

    :sswitch_2f
    const-string v4, "y"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    goto :goto_17

    :cond_38
    const/4 v3, 0x2

    goto :goto_4f

    :sswitch_3a
    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    goto :goto_17

    :cond_43
    const/4 v3, 0x1

    goto :goto_4f

    :sswitch_45
    const-string v4, "start day"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4e

    goto :goto_17

    :cond_4e
    const/4 v3, 0x0

    :goto_4f
    packed-switch v3, :pswitch_data_be

    .line 315
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->skipValue()V

    goto :goto_3

    .line 309
    :pswitch_56
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v3

    iput-wide v3, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->targetDay:J

    goto :goto_3

    .line 312
    :pswitch_5d
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v3

    iput v3, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->population:I

    goto :goto_3

    .line 303
    :pswitch_64
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v2

    goto :goto_3

    .line 300
    :pswitch_69
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextInt()I

    move-result v1

    goto :goto_3

    .line 306
    :pswitch_6e
    invoke-interface {p1}, Lio/blueflower/stapel2d/util/json/JsonReader;->nextLong()J

    move-result-wide v3

    iput-wide v3, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->startDay:J

    goto :goto_3

    :cond_75
    if-ltz v1, :cond_a6

    if-ltz v2, :cond_a6

    .line 319
    iget-object p1, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->this$0:Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;

    invoke-static {p1}, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;->access$100(Linfo/flowersoft/theotown/components/disaster/IllnessDisaster;)Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz p1, :cond_a6

    .line 320
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result p1

    if-ne p1, v1, :cond_a3

    iget-object p1, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result p1

    if-ne p1, v2, :cond_a3

    iget-object p1, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object p1

    sget-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->RESIDENTIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq p1, v0, :cond_a6

    :cond_a3
    const/4 p1, 0x0

    .line 321
    iput-object p1, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->building:Linfo/flowersoft/theotown/city/objects/Building;

    :cond_a6
    return-void

    nop

    :sswitch_data_a8
    .sparse-switch
        -0x7f022d22 -> :sswitch_45
        0x78 -> :sswitch_3a
        0x79 -> :sswitch_2f
        0x1b251 -> :sswitch_24
        0x1ce9508d -> :sswitch_19
    .end sparse-switch

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_69
        :pswitch_64
        :pswitch_5d
        :pswitch_56
    .end packed-switch
.end method

.method public save(Lio/blueflower/stapel2d/util/json/JsonWriter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    const-string v0, "x"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 329
    const-string v0, "y"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 330
    const-string v0, "start day"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->startDay:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 331
    const-string v0, "target day"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->targetDay:J

    invoke-interface {v0, v1, v2}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(J)Lio/blueflower/stapel2d/util/json/JsonWriter;

    .line 332
    const-string v0, "pop"

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->name(Ljava/lang/String;)Lio/blueflower/stapel2d/util/json/JsonWriter;

    move-result-object p1

    iget v0, p0, Linfo/flowersoft/theotown/components/disaster/IllnessDisaster$IllBuilding;->population:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/util/json/JsonWriter;->value(I)Lio/blueflower/stapel2d/util/json/JsonWriter;

    return-void
.end method
