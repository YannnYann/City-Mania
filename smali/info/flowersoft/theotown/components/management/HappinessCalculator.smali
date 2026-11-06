###### Class info.flowersoft.theotown.components.management.HappinessCalculator (info.flowersoft.theotown.components.management.HappinessCalculator)
.class public Linfo/flowersoft/theotown/components/management/HappinessCalculator;
.super Ljava/lang/Object;
.source "HappinessCalculator.java"


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public date:Linfo/flowersoft/theotown/components/DefaultDate;

.field public happinessModifier:Linfo/flowersoft/theotown/components/management/IHappinessModifier;

.field public influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

.field public mgm:Linfo/flowersoft/theotown/components/management/DefaultManagement;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateHappiness(Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;Z)F
    .registers 11

    .line 193
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttributes()Ljava/util/List;

    move-result-object v0

    .line 194
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object p1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    .line 198
    :goto_d
    array-length v5, p1

    if-ge v1, v5, :cond_31

    .line 199
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    .line 200
    aget v6, p1, v1

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_2e

    .line 201
    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->isHappiness()Z

    move-result v7

    if-eqz v7, :cond_2e

    if-nez p2, :cond_2b

    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2e

    :cond_2b
    mul-float/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_31
    if-lez v3, :cond_3d

    float-to-double p1, v4

    int-to-float v0, v3

    div-float/2addr v2, v0

    float-to-double v0, v2

    .line 208
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    return p1

    :cond_3d
    const/high16 p1, 0x3f000000    # 0.5f

    return p1
.end method

.method public calculateHappinessImmediate(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;Lio/blueflower/stapel2d/util/MinimumSelector;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;",
            "Lio/blueflower/stapel2d/util/MinimumSelector<",
            "Linfo/flowersoft/theotown/components/management/attribute/Attribute;",
            ">;Z)V"
        }
    .end annotation

    .line 123
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttributes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 125
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 126
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    .line 127
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->isHappiness()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->isVisible()Z

    move-result v3

    if-nez v3, :cond_1f

    if-eqz p3, :cond_3c

    .line 128
    :cond_1f
    invoke-virtual {v2, p1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->evaluate(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F

    move-result v3

    .line 130
    iget-object v4, p0, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_33

    cmpl-float v4, v3, v5

    if-ltz v4, :cond_33

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    :cond_33
    cmpl-float v4, v3, v5

    if-ltz v4, :cond_3c

    if-eqz p2, :cond_3c

    .line 138
    invoke-virtual {p2, v2, v3}, Lio/blueflower/stapel2d/util/MinimumSelector;->assume(Ljava/lang/Object;F)Z

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3f
    return-void
.end method

.method public calculateHappinessToDestroyBuilding(Linfo/flowersoft/theotown/city/objects/Building;)F
    .registers 10

    .line 50
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7b

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isLocked()Z

    move-result v0

    if-nez v0, :cond_7b

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isUntouchable()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_7b

    .line 52
    :cond_14
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_7a

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    sget-object v3, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    if-ne v0, v3, :cond_25

    goto :goto_7a

    .line 55
    :cond_25
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {p1, v3, v4}, Linfo/flowersoft/theotown/city/objects/Building;->getDaysBuilt(D)D

    move-result-wide v3

    .line 56
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildTime:I

    .line 57
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getCurrentPeople()I

    .line 58
    iget-object v5, p0, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    sget-object v6, Linfo/flowersoft/theotown/city/components/InfluenceType;->SPORT:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {v5, p1, v6}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluence(Linfo/flowersoft/theotown/city/objects/Building;I)F

    move-result v5

    sub-float v6, v2, v5

    const v7, 0x3a83126f    # 0.001f

    mul-float/2addr v6, v7

    const v7, 0x3b03126f    # 0.002f

    mul-float/2addr v5, v7

    add-float/2addr v6, v5

    .line 63
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getAttributeContainer()Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    if-eqz p1, :cond_5c

    const/4 v5, 0x1

    .line 64
    invoke-virtual {p0, p1, v5}, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->calculateHappiness(Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;Z)F

    :cond_5c
    neg-float p1, v6

    float-to-double v5, p1

    mul-double/2addr v5, v3

    .line 67
    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    double-to-float p1, v3

    const v3, 0x3c23d70a    # 0.01f

    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    mul-float/2addr p1, v0

    sub-float p1, v2, p1

    const v0, 0x3dcccccd    # 0.1f

    sub-float/2addr p1, v0

    .line 66
    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1

    :cond_7a
    :goto_7a
    return v2

    :cond_7b
    :goto_7b
    return v1
.end method

.method public final evaluateAttributeFirstTimeWithMods(Linfo/flowersoft/theotown/components/management/attribute/Attribute;Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 4

    .line 114
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->evaluateFirstTime(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->modifyAttr(Linfo/flowersoft/theotown/components/management/attribute/Attribute;FLinfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F

    move-result p1

    return p1
.end method

.method public final evaluateAttributeWithMods(Linfo/flowersoft/theotown/components/management/attribute/Attribute;Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 4

    .line 117
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->evaluate(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->modifyAttr(Linfo/flowersoft/theotown/components/management/attribute/Attribute;FLinfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F

    move-result p1

    return p1
.end method

.method public getHappinessContext(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;Linfo/flowersoft/theotown/city/objects/Building;)Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;
    .registers 12

    .line 73
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getZone()Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v2

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getLevel()I

    move-result v3

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v4

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v5

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v6

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v7

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget v8, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->density:F

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->getHappinessContext(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;Linfo/flowersoft/theotown/draft/ZoneDraft;IIIIIF)Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;

    move-result-object p1

    .line 74
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->setBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V

    return-object p1
.end method

.method public getHappinessContext(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;Linfo/flowersoft/theotown/draft/ZoneDraft;IIIIIF)Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;
    .registers 20

    move/from16 v0, p8

    if-nez p1, :cond_28

    .line 81
    new-instance v1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;

    .line 82
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v2

    array-length v2, v2

    new-array v4, v2, [F

    .line 83
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v2

    array-length v2, v2

    new-array v5, v2, [F

    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->mgm:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 84
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v6

    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->mgm:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getCoverageCalculator()Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    move-result-object v7

    iget-object v8, p0, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->city:Linfo/flowersoft/theotown/city/City;

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v1 .. v8}, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;-><init>(Linfo/flowersoft/theotown/draft/ZoneDraft;I[F[FLinfo/flowersoft/theotown/city/components/BuildingSurvey;Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;Linfo/flowersoft/theotown/city/City;)V

    goto :goto_29

    :cond_28
    move-object v1, p1

    .line 87
    :goto_29
    iget-object v2, v1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    .line 88
    iget-object v3, v1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->generalInfluences:[F

    const/4 v4, 0x0

    move v10, v4

    .line 90
    :goto_2f
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v5

    array-length v5, v5

    if-ge v10, v5, :cond_53

    .line 91
    iget-object v5, p0, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v5 .. v10}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluence(IIIII)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    aput v5, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_2f

    .line 94
    :cond_53
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getGeneralInfluences([FI)V

    .line 96
    iput-object p2, v1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 97
    iput p3, v1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->level:I

    .line 98
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->mgm:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getBuildingSurvey()Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    move-result-object v2

    iput-object v2, v1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    .line 99
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->mgm:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getCoverageCalculator()Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    move-result-object v2

    iput-object v2, v1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->coverageCalculator:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    .line 100
    iget-object v2, p0, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->city:Linfo/flowersoft/theotown/city/City;

    iput-object v2, v1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->city:Linfo/flowersoft/theotown/city/City;

    .line 101
    iput v0, v1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->density:F

    move/from16 v8, p6

    int-to-float v2, v8

    mul-float/2addr v0, v2

    move/from16 v9, p7

    int-to-float v2, v9

    mul-float/2addr v0, v2

    .line 102
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->people:I

    return-object v1
.end method

.method public initAttributeContainer(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;)V
    .registers 8

    .line 146
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttributes()Ljava/util/List;

    move-result-object v0

    .line 147
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object v1

    .line 148
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getDeltas()[F

    move-result-object v2

    const/4 v3, 0x0

    .line 150
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_25

    .line 151
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    .line 152
    invoke-virtual {p0, v4, p1}, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->evaluateAttributeFirstTimeWithMods(Linfo/flowersoft/theotown/components/management/attribute/Attribute;Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F

    move-result v4

    aput v4, v1, v3

    const/4 v4, 0x0

    .line 153
    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 156
    :cond_25
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->calculateStats()V

    return-void
.end method

.method public final modifyAttr(Linfo/flowersoft/theotown/components/management/attribute/Attribute;FLinfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 6

    .line 107
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->happinessModifier:Linfo/flowersoft/theotown/components/management/IHappinessModifier;

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_e

    .line 108
    invoke-interface {v0, p1, p2, p3}, Linfo/flowersoft/theotown/components/management/IHappinessModifier;->modify(Linfo/flowersoft/theotown/components/management/attribute/Attribute;FLinfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F

    move-result p1

    return p1

    :cond_e
    return p2
.end method

.method public setCity(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 38
    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v0, 0x3

    .line 40
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->mgm:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    const/4 v0, 0x2

    .line 41
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultInfluence;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    return-void
.end method

.method public setHappinessModifier(Linfo/flowersoft/theotown/components/management/IHappinessModifier;)V
    .registers 2

    .line 46
    iput-object p1, p0, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->happinessModifier:Linfo/flowersoft/theotown/components/management/IHappinessModifier;

    return-void
.end method

.method public updateAttributeContainter(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;)V
    .registers 14

    .line 160
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttributes()Ljava/util/List;

    move-result-object v0

    .line 161
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object v1

    .line 162
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getDeltas()[F

    move-result-object v2

    .line 163
    iget-object v3, p0, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/GameMode;->peopleMayLeave()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1b

    move v3, v4

    goto :goto_1d

    :cond_1b
    const/high16 v3, 0x3e800000    # 0.25f

    :goto_1d
    const/4 v5, 0x0

    .line 165
    :goto_1e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_75

    .line 166
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    .line 167
    aget v7, v1, v5

    .line 168
    invoke-virtual {p0, v6, p1}, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->evaluateAttributeWithMods(Linfo/flowersoft/theotown/components/management/attribute/Attribute;Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F

    move-result v8

    cmpl-float v9, v8, v4

    const/high16 v10, 0x3f800000    # 1.0f

    if-ltz v9, :cond_49

    .line 169
    invoke-virtual {v6}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->isHappiness()Z

    move-result v9

    if-eqz v9, :cond_49

    .line 170
    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 171
    iget-object v9, p0, Linfo/flowersoft/theotown/components/management/HappinessCalculator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v9

    if-eqz v9, :cond_49

    move v8, v10

    :cond_49
    cmpl-float v9, v7, v4

    if-ltz v9, :cond_70

    cmpl-float v9, v8, v4

    if-ltz v9, :cond_69

    cmpl-float v9, v8, v7

    if-lez v9, :cond_5a

    .line 176
    invoke-virtual {v6}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->getAdjustRatioUp()F

    move-result v6

    goto :goto_5e

    :cond_5a
    invoke-virtual {v6}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->getAdjustRatioDown()F

    move-result v6

    :goto_5e
    mul-float/2addr v8, v6

    sub-float/2addr v10, v6

    mul-float/2addr v10, v7

    add-float/2addr v8, v10

    sub-float v6, v8, v7

    .line 178
    aput v6, v2, v5

    .line 179
    aput v8, v1, v5

    goto :goto_72

    :cond_69
    const/high16 v6, -0x40800000    # -1.0f

    .line 181
    aput v6, v1, v5

    .line 182
    aput v4, v2, v5

    goto :goto_72

    .line 185
    :cond_70
    aput v8, v1, v5

    :goto_72
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 189
    :cond_75
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->calculateStats()V

    return-void
.end method
