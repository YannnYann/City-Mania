###### Class info.flowersoft.theotown.components.management.attribute.HealthHappiness (info.flowersoft.theotown.components.management.attribute.HealthHappiness)
.class public Linfo/flowersoft/theotown/components/management/attribute/HealthHappiness;
.super Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.source "HealthHappiness.java"


# instance fields
.field public final medic:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public final waterPollutionIndex:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x2bf

    .line 21
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_MEDIC:I

    const/4 v2, 0x1

    invoke-direct {p0, v2, v2, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZII)V

    .line 18
    const-string v0, "$medic00"

    const-class v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/management/attribute/HealthHappiness;->medic:Linfo/flowersoft/theotown/draft/BuildingDraft;

    const v0, 0x3dcccccd    # 0.1f

    const v1, 0x3ca3d70a    # 0.02f

    .line 22
    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->setAdjustRatio(FF)V

    .line 24
    const-class v0, Linfo/flowersoft/theotown/components/management/attribute/WaterPollutionAttribute;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getIndex(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/management/attribute/HealthHappiness;->waterPollutionIndex:I

    return-void
.end method


# virtual methods
.method public evaluateResidential(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 14

    .line 29
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-nez v0, :cond_7

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    .line 30
    :cond_7
    iget-object v0, p0, Linfo/flowersoft/theotown/components/management/attribute/HealthHappiness;->medic:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/Draft;->isUnlocked()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_12

    return v1

    .line 32
    :cond_12
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->coverageCalculator:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getInRangeCoverage(I)F

    move-result v0

    .line 33
    iget-object v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v3, Linfo/flowersoft/theotown/city/components/InfluenceType;->HEALTH:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    mul-float/2addr v0, v2

    .line 34
    iget-object v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v3, Linfo/flowersoft/theotown/city/components/InfluenceType;->POLLUTION:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    .line 36
    iget-object v3, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v4, Linfo/flowersoft/theotown/city/components/InfluenceType;->SPORT:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    .line 38
    iget-object v4, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v4

    iget v4, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->density:F

    const/high16 v5, 0x41000000    # 8.0f

    const/high16 v6, 0x42000000    # 32.0f

    invoke-static {v4, v5, v6}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->growingExpectation(FFF)F

    move-result v4

    sub-float v4, v1, v4

    .line 42
    iget-object v5, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    if-eqz v5, :cond_8e

    .line 43
    iget-object v5, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->attributeContainer:Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object v5

    iget v8, p0, Linfo/flowersoft/theotown/components/management/attribute/HealthHappiness;->waterPollutionIndex:I

    aget v5, v5, v8

    cmpl-float v8, v5, v7

    if-ltz v8, :cond_73

    cmpl-float v8, v5, v6

    if-ltz v8, :cond_74

    .line 46
    iget-object v8, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    iget-object v8, v8, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->properties:[Linfo/flowersoft/theotown/city/components/BuildingProperty;

    const/16 v9, 0xb

    aget-object v8, v8, v9

    iget-object v9, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    sub-float v10, v1, v5

    invoke-virtual {v8, v9, v10}, Linfo/flowersoft/theotown/city/components/BuildingProperty;->assume(Linfo/flowersoft/theotown/city/objects/Building;F)Z

    goto :goto_74

    :cond_73
    move v5, v7

    .line 52
    :cond_74
    :goto_74
    iget-object v8, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->isFullOfWaste()Z

    move-result v8

    if-eqz v8, :cond_7e

    move v8, v1

    goto :goto_7f

    :cond_7e
    move v8, v7

    .line 53
    :goto_7f
    iget-object v9, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v9}, Linfo/flowersoft/theotown/city/objects/Building;->isFullOfDeadPeople()Z

    move-result v9

    if-eqz v9, :cond_8a

    move v7, v5

    move v5, v1

    goto :goto_90

    :cond_8a
    move v11, v7

    move v7, v5

    move v5, v11

    goto :goto_90

    :cond_8e
    move v5, v7

    move v8, v5

    :goto_90
    mul-float/2addr v4, v6

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v9

    sub-float v2, v1, v2

    mul-float/2addr v4, v2

    mul-float/2addr v7, v6

    sub-float v2, v1, v7

    mul-float/2addr v4, v2

    mul-float/2addr v0, v9

    add-float/2addr v4, v0

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v0

    add-float/2addr v4, v3

    const v0, 0x3f7d70a4    # 0.99f

    mul-float/2addr v8, v0

    sub-float v2, v1, v8

    mul-float/2addr v4, v2

    mul-float/2addr v5, v0

    sub-float v0, v1, v5

    mul-float/2addr v4, v0

    float-to-double v2, v4

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v2, v5

    if-gez v0, :cond_c4

    .line 64
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_c4

    .line 65
    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    iget-object p1, p1, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->properties:[Linfo/flowersoft/theotown/city/components/BuildingProperty;

    const/16 v2, 0xc

    aget-object p1, p1, v2

    invoke-virtual {p1, v0, v4}, Linfo/flowersoft/theotown/city/components/BuildingProperty;->assume(Linfo/flowersoft/theotown/city/objects/Building;F)Z

    .line 68
    :cond_c4
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method
