###### Class info.flowersoft.theotown.components.management.attribute.EducationLowAttribute (info.flowersoft.theotown.components.management.attribute.EducationLowAttribute)
.class public Linfo/flowersoft/theotown/components/management/attribute/EducationLowAttribute;
.super Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.source "EducationLowAttribute.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0, v0, v0}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZI)V

    const v0, 0x3ca3d70a    # 0.02f

    .line 13
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->setAdjustRatio(F)V

    return-void
.end method


# virtual methods
.method public evaluateResidential(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 4

    .line 18
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->EDUCATION_LOW:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->coverageCalculator:Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getInRangeCoverage(I)F

    move-result p1

    mul-float/2addr v0, p1

    return v0
.end method
