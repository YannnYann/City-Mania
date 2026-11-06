###### Class info.flowersoft.theotown.components.management.attribute.ZoneHappiness (info.flowersoft.theotown.components.management.attribute.ZoneHappiness)
.class public Linfo/flowersoft/theotown/components/management/attribute/ZoneHappiness;
.super Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.source "ZoneHappiness.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0xa4e

    const/4 v2, 0x1

    .line 12
    invoke-direct {p0, v2, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZI)V

    return-void
.end method


# virtual methods
.method public evaluateCommercial(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 6

    .line 28
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_7

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    .line 29
    :cond_7
    sget-object v0, Linfo/flowersoft/theotown/city/components/InfluenceType;->RESIDENTIAL:Linfo/flowersoft/theotown/city/components/InfluenceType;

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {p0, p1, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/ZoneHappiness;->evaluateZone(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;Linfo/flowersoft/theotown/city/components/InfluenceType;F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    sget-object v2, Linfo/flowersoft/theotown/city/components/InfluenceType;->COMMERCIAL:Linfo/flowersoft/theotown/city/components/InfluenceType;

    const v3, 0x3e4ccccd    # 0.2f

    .line 30
    invoke-virtual {p0, p1, v2, v3}, Linfo/flowersoft/theotown/components/management/attribute/ZoneHappiness;->evaluateZone(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;Linfo/flowersoft/theotown/city/components/InfluenceType;F)F

    move-result p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method public evaluateIndustrial(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 6

    .line 35
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_7

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    .line 36
    :cond_7
    sget-object v0, Linfo/flowersoft/theotown/city/components/InfluenceType;->COMMERCIAL:Linfo/flowersoft/theotown/city/components/InfluenceType;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {p0, p1, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/ZoneHappiness;->evaluateZone(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;Linfo/flowersoft/theotown/city/components/InfluenceType;F)F

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    sget-object v3, Linfo/flowersoft/theotown/city/components/InfluenceType;->INDUSTRIAL:Linfo/flowersoft/theotown/city/components/InfluenceType;

    .line 37
    invoke-virtual {p0, p1, v3, v1}, Linfo/flowersoft/theotown/components/management/attribute/ZoneHappiness;->evaluateZone(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;Linfo/flowersoft/theotown/city/components/InfluenceType;F)F

    move-result p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    return v0
.end method

.method public evaluateResidential(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 6

    .line 21
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_7

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    .line 22
    :cond_7
    sget-object v0, Linfo/flowersoft/theotown/city/components/InfluenceType;->RESIDENTIAL:Linfo/flowersoft/theotown/city/components/InfluenceType;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-virtual {p0, p1, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/ZoneHappiness;->evaluateZone(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;Linfo/flowersoft/theotown/city/components/InfluenceType;F)F

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    sget-object v3, Linfo/flowersoft/theotown/city/components/InfluenceType;->COMMERCIAL:Linfo/flowersoft/theotown/city/components/InfluenceType;

    .line 23
    invoke-virtual {p0, p1, v3, v1}, Linfo/flowersoft/theotown/components/management/attribute/ZoneHappiness;->evaluateZone(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;Linfo/flowersoft/theotown/city/components/InfluenceType;F)F

    move-result p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v2

    return v0
.end method

.method public evaluateZone(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;Linfo/flowersoft/theotown/city/components/InfluenceType;F)F
    .registers 4

    .line 16
    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    mul-float/2addr p1, p3

    const/high16 p2, 0x3f800000    # 1.0f

    add-float/2addr p1, p2

    sub-float/2addr p1, p3

    return p1
.end method
