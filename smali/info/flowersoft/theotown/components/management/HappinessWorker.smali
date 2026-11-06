###### Class info.flowersoft.theotown.components.management.HappinessWorker (info.flowersoft.theotown.components.management.HappinessWorker)
.class public Linfo/flowersoft/theotown/components/management/HappinessWorker;
.super Ljava/lang/Object;
.source "HappinessWorker.java"


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public commercial:[I

.field public commercialHappiness:[F

.field public counts:[F

.field public date:Linfo/flowersoft/theotown/components/DefaultDate;

.field public defaultPeople:Linfo/flowersoft/theotown/components/DefaultPeople;

.field public globalHappinessSelector:Lio/blueflower/stapel2d/util/MinimumSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/MinimumSelector<",
            "Linfo/flowersoft/theotown/components/management/attribute/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public happinessCalculator:Linfo/flowersoft/theotown/components/management/HappinessCalculator;

.field public happinessContext:Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;

.field public industrial:[I

.field public industrialHappiness:[F

.field public localHappinessSelector:Lio/blueflower/stapel2d/util/MinimumSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/MinimumSelector<",
            "Linfo/flowersoft/theotown/components/management/attribute/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public lowHappinessBuilding:Linfo/flowersoft/theotown/city/objects/Building;

.field public lowestHappiness:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

.field public lowestHappinessBuilding:Linfo/flowersoft/theotown/city/objects/Building;

.field public lowestHappinessValue:F

.field public means:[F

.field public newBuildingContext:Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;

.field public residential:[I

.field public residentialHappiness:[F

.field public variances:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    .line 41
    new-array v1, v0, [I

    iput-object v1, p0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->residential:[I

    .line 42
    new-array v1, v0, [I

    iput-object v1, p0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->commercial:[I

    .line 43
    new-array v0, v0, [I

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->industrial:[I

    const/4 v0, 0x3

    .line 44
    new-array v1, v0, [F

    iput-object v1, p0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->residentialHappiness:[F

    .line 45
    new-array v1, v0, [F

    iput-object v1, p0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->commercialHappiness:[F

    .line 46
    new-array v0, v0, [F

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->industrialHappiness:[F

    .line 47
    new-instance v0, Lio/blueflower/stapel2d/util/MinimumSelector;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/MinimumSelector;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->globalHappinessSelector:Lio/blueflower/stapel2d/util/MinimumSelector;

    .line 48
    new-instance v0, Lio/blueflower/stapel2d/util/MinimumSelector;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/MinimumSelector;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->localHappinessSelector:Lio/blueflower/stapel2d/util/MinimumSelector;

    .line 50
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->happinessContext:Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;

    .line 51
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->newBuildingContext:Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;

    .line 54
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->countAttributes()I

    move-result v0

    new-array v0, v0, [F

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->variances:[F

    .line 55
    array-length v1, v0

    new-array v1, v1, [F

    iput-object v1, p0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->means:[F

    .line 56
    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->counts:[F

    const/high16 v0, -0x40800000    # -1.0f

    .line 58
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method


# virtual methods
.method public final registerNewBuilding(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;
    .registers 5

    .line 234
    new-instance v0, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    invoke-direct {v0}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;-><init>()V

    .line 235
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->happinessCalculator:Linfo/flowersoft/theotown/components/management/HappinessCalculator;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->newBuildingContext:Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;

    invoke-virtual {v1, v2, p1}, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->getHappinessContext(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;

    .line 236
    iget-object v1, p0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->happinessCalculator:Linfo/flowersoft/theotown/components/management/HappinessCalculator;

    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->newBuildingContext:Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;

    invoke-virtual {v1, v2, v0}, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->initAttributeContainer(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;)V

    .line 237
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->setAttributeContainer(Linfo/flowersoft/theotown/city/objects/AttributeContainer;)V

    return-object v0
.end method

.method public setCity(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/HappinessCalculator;)V
    .registers 3

    .line 62
    iput-object p2, p0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->happinessCalculator:Linfo/flowersoft/theotown/components/management/HappinessCalculator;

    .line 63
    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->city:Linfo/flowersoft/theotown/city/City;

    const/16 p2, 0x9

    .line 64
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/DefaultPeople;

    iput-object p2, p0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->defaultPeople:Linfo/flowersoft/theotown/components/DefaultPeople;

    const/4 p2, 0x1

    .line 65
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    return-void
.end method

.method public work(Linfo/flowersoft/theotown/city/components/BuildingSurvey;)Linfo/flowersoft/theotown/city/components/BuildingSurvey;
    .registers 30

    move-object/from16 v0, p0

    .line 69
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->means:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 70
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->variances:[F

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 71
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->counts:[F

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 73
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->residential:[I

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([II)V

    .line 74
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->commercial:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([II)V

    .line 75
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->industrial:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([II)V

    .line 76
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->residentialHappiness:[F

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([FF)V

    .line 77
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->commercialHappiness:[F

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([FF)V

    .line 78
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->industrialHappiness:[F

    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([FF)V

    .line 79
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->globalHappinessSelector:Lio/blueflower/stapel2d/util/MinimumSelector;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/MinimumSelector;->clear()V

    .line 80
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->localHappinessSelector:Lio/blueflower/stapel2d/util/MinimumSelector;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/MinimumSelector;->clear()V

    const/4 v1, 0x0

    .line 81
    iput-object v1, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->lowHappinessBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    .line 87
    new-instance v5, Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-object/from16 v6, p1

    invoke-direct {v5, v6}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;-><init>(Linfo/flowersoft/theotown/city/components/BuildingSurvey;)V

    .line 89
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttributes()Ljava/util/List;

    move-result-object v7

    .line 91
    iget-object v8, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v8

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/BuildingList;->getRciBuildings()Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v8

    .line 93
    new-instance v9, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-direct {v9, v8}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v9}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v2

    move v11, v10

    :goto_60
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_213

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Linfo/flowersoft/theotown/city/objects/Building;

    .line 94
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Building;->getAttributeContainer()Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    move-result-object v13

    check-cast v13, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    if-nez v13, :cond_90

    .line 95
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v14

    invoke-virtual {v14}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v14

    if-eqz v14, :cond_90

    .line 96
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v14

    sget-object v15, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq v14, v15, :cond_90

    .line 97
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_90

    .line 98
    invoke-virtual {v0, v12}, Linfo/flowersoft/theotown/components/management/HappinessWorker;->registerNewBuilding(Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    move-result-object v13

    .line 100
    :cond_90
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_98

    if-nez v13, :cond_9f

    :cond_98
    move/from16 v17, v2

    move-object v2, v9

    move/from16 v19, v10

    goto/16 :goto_20d

    .line 102
    :cond_9f
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Building;->getLevel()I

    move-result v14

    .line 103
    iget-object v15, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->defaultPeople:Linfo/flowersoft/theotown/components/DefaultPeople;

    invoke-virtual {v15, v12}, Linfo/flowersoft/theotown/components/DefaultPeople;->countPeopleInBuilding(Linfo/flowersoft/theotown/city/objects/Building;)F

    move-result v15

    .line 104
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v16

    move/from16 v17, v2

    if-nez v16, :cond_170

    .line 108
    iget-object v3, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->happinessCalculator:Linfo/flowersoft/theotown/components/management/HappinessCalculator;

    iget-object v4, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->happinessContext:Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;

    invoke-virtual {v3, v4, v12}, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->getHappinessContext(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;

    .line 109
    iget-object v3, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->happinessContext:Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;

    iput-object v5, v3, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    .line 110
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v3, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->people:I

    .line 112
    iget-object v3, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->happinessCalculator:Linfo/flowersoft/theotown/components/management/HappinessCalculator;

    iget-object v4, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->happinessContext:Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;

    invoke-virtual {v3, v4, v13}, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->updateAttributeContainter(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;)V

    .line 114
    invoke-virtual {v13}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getHappiness()F

    move-result v3

    .line 115
    invoke-virtual {v13}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getMinHappinessValue()F

    move-result v4

    .line 116
    invoke-virtual {v13}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getMinHappinessIndex()I

    move-result v18

    .line 117
    invoke-static/range {v18 .. v18}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttribute(I)Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    move-result-object v1

    .line 119
    iget-object v2, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/GameMode;->peopleMayLeave()Z

    move-result v2

    if-eqz v2, :cond_122

    move-object v2, v9

    move/from16 v19, v10

    float-to-double v9, v3

    const-wide v20, 0x3fc999999999999aL    # 0.2

    cmpg-double v9, v9, v20

    if-gez v9, :cond_125

    iget-object v9, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    .line 121
    invoke-virtual {v9}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v9

    long-to-double v9, v9

    invoke-virtual {v12, v9, v10}, Linfo/flowersoft/theotown/city/objects/Building;->getDaysBuilt(D)D

    move-result-wide v9

    const-wide/high16 v20, 0x401c000000000000L    # 7.0

    cmpl-double v9, v9, v20

    if-ltz v9, :cond_125

    .line 122
    sget-object v9, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    mul-float/2addr v9, v9

    mul-float/2addr v9, v9

    mul-float/2addr v9, v9

    const/high16 v10, 0x40a00000    # 5.0f

    mul-float/2addr v10, v3

    const v20, 0x3c23d70a    # 0.01f

    add-float v10, v10, v20

    cmpg-float v9, v10, v9

    if-gez v9, :cond_125

    .line 129
    invoke-static {v1, v4}, Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;->forHappiness(Linfo/flowersoft/theotown/components/management/attribute/Attribute;F)Linfo/flowersoft/theotown/city/objects/EmptyBuildingCause;

    move-result-object v1

    const/4 v3, 0x1

    .line 127
    invoke-virtual {v12, v3, v1}, Linfo/flowersoft/theotown/city/objects/Building;->setEmpty(ZLinfo/flowersoft/theotown/city/objects/EmptyBuildingCause;)V

    goto/16 :goto_20d

    :cond_122
    move-object v2, v9

    move/from16 v19, v10

    :cond_125
    mul-float v1, v15, v3

    add-float/2addr v11, v1

    .line 136
    invoke-virtual {v13}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object v1

    const/4 v4, 0x0

    .line 137
    :goto_12d
    array-length v9, v1

    if-ge v4, v9, :cond_175

    .line 138
    aget v9, v1, v4

    cmpl-float v9, v9, v17

    if-ltz v9, :cond_16d

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->isHappiness()Z

    move-result v9

    if-eqz v9, :cond_16d

    aget v9, v1, v4

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_16d

    .line 139
    iget-object v9, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->globalHappinessSelector:Lio/blueflower/stapel2d/util/MinimumSelector;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    aget v13, v1, v4

    invoke-virtual {v9, v10, v13}, Lio/blueflower/stapel2d/util/MinimumSelector;->assume(Ljava/lang/Object;F)Z

    move-result v9

    if-eqz v9, :cond_15c

    .line 140
    iput-object v12, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->lowHappinessBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    .line 142
    :cond_15c
    iget-object v9, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->means:[F

    aget v10, v9, v4

    aget v13, v1, v4

    mul-float/2addr v13, v15

    add-float/2addr v10, v13

    aput v10, v9, v4

    .line 143
    iget-object v9, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->counts:[F

    aget v10, v9, v4

    add-float/2addr v10, v15

    aput v10, v9, v4

    :cond_16d
    add-int/lit8 v4, v4, 0x1

    goto :goto_12d

    :cond_170
    move-object v2, v9

    move/from16 v19, v10

    move/from16 v3, v17

    .line 148
    :cond_175
    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    iget v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v4

    iget v4, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    add-int/2addr v1, v4

    .line 149
    sget-object v4, Linfo/flowersoft/theotown/components/management/HappinessWorker$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    invoke-virtual {v12}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v9

    invoke-virtual {v9}, Linfo/flowersoft/theotown/draft/BuildingType;->getBaseType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v4, v4, v9

    const/4 v9, 0x6

    const/4 v10, 0x1

    if-eq v4, v10, :cond_1e1

    const/4 v10, 0x2

    if-eq v4, v10, :cond_1bf

    const/4 v10, 0x3

    if-eq v4, v10, :cond_19d

    goto :goto_202

    .line 165
    :cond_19d
    iget-object v4, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->industrial:[I

    if-eqz v16, :cond_1a2

    goto :goto_1a3

    :cond_1a2
    const/4 v9, 0x0

    :goto_1a3
    add-int/2addr v9, v14

    aget v10, v4, v9

    add-int/2addr v10, v1

    aput v10, v4, v9

    if-nez v16, :cond_202

    add-int/lit8 v9, v14, 0x3

    .line 167
    aget v10, v4, v9

    const/16 v18, 0x1

    add-int/lit8 v10, v10, 0x1

    aput v10, v4, v9

    .line 168
    iget-object v4, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->industrialHappiness:[F

    aget v9, v4, v14

    int-to-float v1, v1

    mul-float/2addr v3, v1

    add-float/2addr v9, v3

    aput v9, v4, v14

    goto :goto_202

    .line 158
    :cond_1bf
    iget-object v4, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->commercial:[I

    if-eqz v16, :cond_1c4

    goto :goto_1c5

    :cond_1c4
    const/4 v9, 0x0

    :goto_1c5
    add-int/2addr v9, v14

    aget v10, v4, v9

    add-int/2addr v10, v1

    aput v10, v4, v9

    if-nez v16, :cond_202

    add-int/lit8 v9, v14, 0x3

    .line 160
    aget v10, v4, v9

    const/16 v18, 0x1

    add-int/lit8 v10, v10, 0x1

    aput v10, v4, v9

    .line 161
    iget-object v4, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->commercialHappiness:[F

    aget v9, v4, v14

    int-to-float v1, v1

    mul-float/2addr v3, v1

    add-float/2addr v9, v3

    aput v9, v4, v14

    goto :goto_202

    .line 151
    :cond_1e1
    iget-object v4, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->residential:[I

    if-eqz v16, :cond_1e6

    goto :goto_1e7

    :cond_1e6
    const/4 v9, 0x0

    :goto_1e7
    add-int/2addr v9, v14

    aget v10, v4, v9

    add-int/2addr v10, v1

    aput v10, v4, v9

    if-nez v16, :cond_202

    add-int/lit8 v9, v14, 0x3

    .line 153
    aget v10, v4, v9

    const/16 v18, 0x1

    add-int/lit8 v10, v10, 0x1

    aput v10, v4, v9

    .line 154
    iget-object v4, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->residentialHappiness:[F

    aget v9, v4, v14

    int-to-float v1, v1

    mul-float/2addr v3, v1

    add-float/2addr v9, v3

    aput v9, v4, v14

    :cond_202
    :goto_202
    add-float v10, v19, v15

    move-object v9, v2

    move/from16 v2, v17

    :goto_207
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    goto/16 :goto_60

    :goto_20d
    move-object v9, v2

    move/from16 v2, v17

    move/from16 v10, v19

    goto :goto_207

    :cond_213
    move/from16 v17, v2

    move/from16 v19, v10

    cmpl-float v1, v19, v17

    if-lez v1, :cond_228

    div-float v4, v11, v19

    .line 178
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->getRatingValue()F

    move-result v1

    sub-float v1, v4, v1

    move/from16 v27, v1

    move/from16 v26, v4

    goto :goto_22c

    :cond_228
    move/from16 v27, v17

    const/high16 v26, 0x3f000000    # 0.5f

    :goto_22c
    const/4 v1, 0x0

    .line 184
    :goto_22d
    iget-object v2, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->means:[F

    array-length v3, v2

    if-ge v1, v3, :cond_247

    .line 185
    iget-object v3, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->counts:[F

    aget v3, v3, v1

    cmpl-float v4, v3, v17

    if-lez v4, :cond_240

    .line 186
    aget v4, v2, v1

    div-float/2addr v4, v3

    aput v4, v2, v1

    goto :goto_244

    :cond_240
    const/high16 v3, -0x40800000    # -1.0f

    .line 188
    aput v3, v2, v1

    :goto_244
    add-int/lit8 v1, v1, 0x1

    goto :goto_22d

    .line 192
    :cond_247
    new-instance v1, Linfo/flowersoft/theotown/util/SafeListAccessor;

    invoke-direct {v1, v8}, Linfo/flowersoft/theotown/util/SafeListAccessor;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SafeListAccessor;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_250
    :goto_250
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Building;

    .line 193
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getAttributeContainer()Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    .line 194
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_250

    if-nez v3, :cond_26b

    goto :goto_250

    .line 196
    :cond_26b
    iget-object v4, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->defaultPeople:Linfo/flowersoft/theotown/components/DefaultPeople;

    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/components/DefaultPeople;->countPeopleInBuilding(Linfo/flowersoft/theotown/city/objects/Building;)F

    move-result v2

    .line 198
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object v3

    const/4 v4, 0x0

    .line 199
    :goto_276
    array-length v6, v3

    if-ge v4, v6, :cond_250

    .line 200
    aget v6, v3, v4

    iget-object v7, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->means:[F

    aget v7, v7, v4

    sub-float/2addr v6, v7

    .line 201
    iget-object v7, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->variances:[F

    aget v8, v7, v4

    mul-float/2addr v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v8, v6

    aput v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_276

    :cond_28c
    const/4 v3, 0x0

    .line 205
    :goto_28d
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->means:[F

    array-length v1, v1

    if-ge v3, v1, :cond_2a0

    .line 206
    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->variances:[F

    aget v2, v1, v3

    iget-object v4, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->counts:[F

    aget v4, v4, v3

    div-float/2addr v2, v4

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_28d

    .line 209
    :cond_2a0
    new-instance v19, Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    iget-object v1, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->residential:[I

    iget-object v2, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->commercial:[I

    iget-object v3, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->industrial:[I

    iget-object v4, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->residentialHappiness:[F

    iget-object v6, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->commercialHappiness:[F

    iget-object v7, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->industrialHappiness:[F

    move-object/from16 v20, v1

    move-object/from16 v21, v2

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    invoke-direct/range {v19 .. v27}, Linfo/flowersoft/theotown/city/components/BuildingSurvey;-><init>([I[I[I[F[F[FFF)V

    move-object/from16 v1, v19

    .line 212
    iget-object v2, v5, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->properties:[Linfo/flowersoft/theotown/city/components/BuildingProperty;

    iput-object v2, v1, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->properties:[Linfo/flowersoft/theotown/city/components/BuildingProperty;

    .line 214
    iget-object v2, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultPeople;

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/components/DefaultPeople;->calculate(Linfo/flowersoft/theotown/city/components/BuildingSurvey;)V

    .line 215
    iget-object v2, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultDemand;

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/components/DefaultDemand;->calculate(Linfo/flowersoft/theotown/city/components/BuildingSurvey;)V

    .line 217
    iget-object v2, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->globalHappinessSelector:Lio/blueflower/stapel2d/util/MinimumSelector;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/MinimumSelector;->hasResult()Z

    move-result v2

    if-eqz v2, :cond_2fc

    .line 218
    iget-object v2, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->globalHappinessSelector:Lio/blueflower/stapel2d/util/MinimumSelector;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/MinimumSelector;->getMinimum()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    .line 219
    iget-object v3, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->globalHappinessSelector:Lio/blueflower/stapel2d/util/MinimumSelector;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/MinimumSelector;->getMinimumValue()F

    move-result v3

    .line 220
    iget-object v4, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->lowHappinessBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    .line 222
    iput-object v2, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->lowestHappiness:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    .line 223
    iput v3, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->lowestHappinessValue:F

    .line 224
    iput-object v4, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->lowestHappinessBuilding:Linfo/flowersoft/theotown/city/objects/Building;

    return-object v1

    :cond_2fc
    const/4 v2, 0x0

    .line 227
    iput-object v2, v0, Linfo/flowersoft/theotown/components/management/HappinessWorker;->lowestHappiness:Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    return-object v1
.end method

###### Class info.flowersoft.theotown.components.management.HappinessWorker.AnonymousClass1 (info.flowersoft.theotown.components.management.HappinessWorker$1)
.class public synthetic Linfo/flowersoft/theotown/components/management/HappinessWorker$1;
.super Ljava/lang/Object;
.source "HappinessWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/components/management/HappinessWorker;
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

    .line 149
    invoke-static {}, Linfo/flowersoft/theotown/draft/BuildingType;->values()[Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Linfo/flowersoft/theotown/components/management/HappinessWorker$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

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
    sget-object v0, Linfo/flowersoft/theotown/components/management/HappinessWorker$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->COMMERCIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Linfo/flowersoft/theotown/components/management/HappinessWorker$1;->$SwitchMap$info$flowersoft$theotown$draft$BuildingType:[I

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
