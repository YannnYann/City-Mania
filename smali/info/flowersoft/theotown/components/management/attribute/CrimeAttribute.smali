###### Class info.flowersoft.theotown.components.management.attribute.CrimeAttribute (info.flowersoft.theotown.components.management.attribute.CrimeAttribute)
.class public Linfo/flowersoft/theotown/components/management/attribute/CrimeAttribute;
.super Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.source "CrimeAttribute.java"


# instance fields
.field public educationHighIndex:I

.field public educationLowIndex:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0, v0, v0}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZI)V

    const v0, 0x3ca3d70a    # 0.02f

    .line 18
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->setAdjustRatio(F)V

    .line 20
    const-class v0, Linfo/flowersoft/theotown/components/management/attribute/EducationLowAttribute;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getIndex(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/management/attribute/CrimeAttribute;->educationLowIndex:I

    .line 21
    const-class v0, Linfo/flowersoft/theotown/components/management/attribute/EducationHighAttribute;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getIndex(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/management/attribute/CrimeAttribute;->educationHighIndex:I

    return-void
.end method


# virtual methods
.method public evaluate(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 9

    .line 31
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_d

    .line 32
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/management/attribute/CrimeAttribute;->isCrimeable(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result v0

    if-nez v0, :cond_d

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    .line 34
    :cond_d
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->POLICE:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 35
    iget-object v1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v2, Linfo/flowersoft/theotown/city/components/InfluenceType;->EDUCATION_LOW:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    iget-object v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->coverageCalculator:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    const/4 v3, 0x0

    .line 36
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getInRangeCoverage(I)F

    move-result v2

    mul-float/2addr v1, v2

    .line 37
    iget-object v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v3, Linfo/flowersoft/theotown/city/components/InfluenceType;->EDUCATION_HIGH:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    iget-object v3, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->coverageCalculator:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    const/4 v4, 0x1

    .line 38
    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getInRangeCoverage(I)F

    move-result v3

    mul-float/2addr v2, v3

    .line 40
    iget-object v3, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->attributeContainer:Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    const/4 v4, 0x0

    if-eqz v3, :cond_5a

    .line 41
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object v1

    iget v2, p0, Linfo/flowersoft/theotown/components/management/attribute/CrimeAttribute;->educationLowIndex:I

    aget v1, v1, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 42
    iget-object v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->attributeContainer:Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object v2

    iget v3, p0, Linfo/flowersoft/theotown/components/management/attribute/CrimeAttribute;->educationHighIndex:I

    aget v2, v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 45
    :cond_5a
    iget-object v3, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/ZoneDraft;->base:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v5

    iget-object v5, v5, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-eq v3, v5, :cond_68

    move v2, v4

    goto :goto_69

    :cond_68
    move v4, v1

    :goto_69
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    mul-float/2addr v0, v1

    mul-float/2addr v0, v0

    .line 53
    iget p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->people:I

    int-to-float p1, p1

    const v3, -0x457ced91    # -0.001f

    mul-float/2addr p1, v3

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    double-to-float p1, v5

    sub-float p1, v1, p1

    mul-float/2addr v0, p1

    const/high16 p1, 0x3e800000    # 0.25f

    add-float/2addr v4, v2

    mul-float/2addr v4, p1

    sub-float/2addr v1, v4

    mul-float/2addr v0, v1

    const p1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, p1

    return v0
.end method

.method public evaluateFirstTime(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public final isCrimeable(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 3

    .line 61
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->destroyable:Z

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getCurrentPeople()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_16

    return v0

    :cond_16
    const/4 p1, 0x0

    return p1
.end method
