###### Class info.flowersoft.theotown.components.management.attribute.SportHappiness (info.flowersoft.theotown.components.management.attribute.SportHappiness)
.class public Linfo/flowersoft/theotown/components/management/attribute/SportHappiness;
.super Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.source "SportHappiness.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x92

    .line 13
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_SPORTS:I

    const/4 v2, 0x1

    invoke-direct {p0, v2, v2, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZII)V

    return-void
.end method


# virtual methods
.method public evaluateCommercial(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 4

    .line 35
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->SPORT:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 37
    iget p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->level:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_12

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    :cond_12
    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    add-float/2addr v0, p1

    return v0
.end method

.method public evaluateResidential(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 6

    .line 18
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->SPORT:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 20
    iget v1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->level:I

    if-eqz v1, :cond_2f

    const/4 v2, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    if-eq v1, v2, :cond_2c

    const/4 v2, 0x2

    if-eq v1, v2, :cond_19

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    .line 26
    :cond_19
    iget p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->people:I

    int-to-float p1, p1

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {p1, v1, v2}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->growingExpectation(FFF)F

    move-result p1

    mul-float v1, v0, v3

    add-float/2addr v1, v3

    invoke-static {p1, v1, v0}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->interpolate(FFF)F

    move-result p1

    return p1

    :cond_2c
    mul-float/2addr v0, v3

    add-float/2addr v0, v3

    return v0

    :cond_2f
    const p1, 0x3f4ccccd    # 0.8f

    add-float/2addr v0, p1

    return v0
.end method
