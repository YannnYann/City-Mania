###### Class info.flowersoft.theotown.components.management.attribute.EducationHappiness (info.flowersoft.theotown.components.management.attribute.EducationHappiness)
.class public Linfo/flowersoft/theotown/components/management/attribute/EducationHappiness;
.super Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.source "EducationHappiness.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x1fd

    .line 14
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_EDUCATION:I

    const/4 v2, 0x1

    invoke-direct {p0, v2, v2, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZII)V

    return-void
.end method


# virtual methods
.method public evaluateResidential(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 7

    .line 19
    iget v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->people:I

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_7

    return v1

    .line 23
    :cond_7
    iget v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->level:I

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v0, :cond_5f

    const/4 v4, 0x1

    if-eq v0, v4, :cond_39

    const/4 v3, 0x2

    if-eq v0, v3, :cond_15

    return v1

    .line 35
    :cond_15
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->EDUCATION_LOW:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    iget-object v1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->coverageCalculator:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    .line 36
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getInRangeCoverage(I)F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v2, Linfo/flowersoft/theotown/city/components/InfluenceType;->EDUCATION_HIGH:Linfo/flowersoft/theotown/city/components/InfluenceType;

    .line 37
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    mul-float/2addr v0, v1

    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->coverageCalculator:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    .line 38
    invoke-virtual {p1, v4}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getInRangeCoverage(I)F

    move-result p1

    mul-float/2addr v0, p1

    return v0

    .line 29
    :cond_39
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->EDUCATION_LOW:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    mul-float/2addr v0, v3

    iget-object v1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->coverageCalculator:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    .line 30
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getInRangeCoverage(I)F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v2, Linfo/flowersoft/theotown/city/components/InfluenceType;->EDUCATION_HIGH:Linfo/flowersoft/theotown/city/components/InfluenceType;

    .line 31
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    mul-float/2addr v1, v3

    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->coverageCalculator:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    .line 32
    invoke-virtual {p1, v4}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getInRangeCoverage(I)F

    move-result p1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0

    .line 25
    :cond_5f
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->EDUCATION_LOW:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    mul-float/2addr v0, v3

    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->coverageCalculator:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    .line 26
    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getInRangeCoverage(I)F

    move-result p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    return v0
.end method
