###### Class info.flowersoft.theotown.components.management.attribute.TransportationHappiness (info.flowersoft.theotown.components.management.attribute.TransportationHappiness)
.class public Linfo/flowersoft/theotown/components/management/attribute/TransportationHappiness;
.super Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.source "TransportationHappiness.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x821

    .line 15
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRAFFIC:I

    const/4 v2, 0x1

    invoke-direct {p0, v2, v2, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZII)V

    return-void
.end method


# virtual methods
.method public evaluate(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 8

    .line 20
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsRoad:Z

    if-nez v0, :cond_d

    goto :goto_6d

    .line 22
    :cond_d
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v0

    iget-object v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 23
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildDay()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 24
    iget-object v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getCurrentPeople()I

    long-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, 0x45480000    # 3200.0f

    .line 25
    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->growingExpectation(FFF)F

    move-result v0

    .line 26
    iget-object v1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getReachability()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, v0

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    mul-float/2addr v0, v4

    .line 27
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v3, v0

    .line 29
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->PASSENGER_BUS:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    iget-object v1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v5, Linfo/flowersoft/theotown/city/components/InfluenceType;->PASSENGER_TRAIN:Linfo/flowersoft/theotown/city/components/InfluenceType;

    .line 30
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v1, v1, v5

    add-float/2addr v0, v1

    mul-float/2addr v0, v4

    add-float/2addr v3, v0

    .line 32
    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v0, Linfo/flowersoft/theotown/city/components/InfluenceType;->TRAFFIC:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    mul-float/2addr p1, v4

    sub-float p1, v2, p1

    mul-float/2addr v3, p1

    .line 34
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    :cond_6d
    :goto_6d
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method
