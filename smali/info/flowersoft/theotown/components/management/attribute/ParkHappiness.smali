###### Class info.flowersoft.theotown.components.management.attribute.ParkHappiness (info.flowersoft.theotown.components.management.attribute.ParkHappiness)
.class public Linfo/flowersoft/theotown/components/management/attribute/ParkHappiness;
.super Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.source "ParkHappiness.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0xa65

    .line 13
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_PARK:I

    const/4 v2, 0x1

    invoke-direct {p0, v2, v2, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZII)V

    return-void
.end method


# virtual methods
.method public evaluateCommercial(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 6

    .line 35
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->PARK:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 37
    iget v1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->level:I

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v1, :cond_2d

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1a

    const/4 p1, 0x2

    if-eq v1, p1, :cond_19

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    :cond_19
    return v0

    .line 41
    :cond_1a
    iget p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->people:I

    int-to-float p1, p1

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {p1, v1, v3}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->growingExpectation(FFF)F

    move-result p1

    mul-float v1, v0, v2

    add-float/2addr v1, v2

    invoke-static {p1, v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->interpolate(FFF)F

    move-result p1

    return p1

    :cond_2d
    mul-float/2addr v0, v2

    add-float/2addr v0, v2

    return v0
.end method

.method public evaluateIndustrial(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 4

    .line 52
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->PARK:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 54
    iget p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->level:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1e

    const/4 v1, 0x2

    if-eq p1, v1, :cond_15

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    :cond_15
    const p1, 0x3f0ccccd    # 0.55f

    mul-float/2addr v0, p1

    const p1, 0x3ee66666    # 0.45f

    :goto_1c
    add-float/2addr v0, p1

    return v0

    :cond_1e
    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    goto :goto_1c
.end method

.method public evaluateResidential(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 5

    .line 18
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->PARK:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 20
    iget v1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->level:I

    if-eqz v1, :cond_30

    const/4 v2, 0x1

    if-eq v1, v2, :cond_18

    const/4 p1, 0x2

    if-eq v1, p1, :cond_17

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    :cond_17
    return v0

    .line 24
    :cond_18
    iget p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->people:I

    int-to-float p1, p1

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {p1, v1, v2}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->growingExpectation(FFF)F

    move-result p1

    const v1, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v0

    const v2, 0x3ecccccd    # 0.4f

    add-float/2addr v1, v2

    invoke-static {p1, v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->interpolate(FFF)F

    move-result p1

    return p1

    :cond_30
    const p1, 0x3f4ccccd    # 0.8f

    add-float/2addr v0, p1

    return v0
.end method
