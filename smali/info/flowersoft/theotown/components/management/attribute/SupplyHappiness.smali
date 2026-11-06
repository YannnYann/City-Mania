###### Class info.flowersoft.theotown.components.management.attribute.SupplyHappiness (info.flowersoft.theotown.components.management.attribute.SupplyHappiness)
.class public Linfo/flowersoft/theotown/components/management/attribute/SupplyHappiness;
.super Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.source "SupplyHappiness.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x5b0

    const/4 v2, 0x1

    .line 12
    invoke-direct {p0, v2, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZI)V

    return-void
.end method


# virtual methods
.method public evaluate(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 6

    .line 22
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_46

    .line 24
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->hasNeededRoad()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    .line 26
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    iget-object v0, v0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->properties:[Linfo/flowersoft/theotown/city/components/BuildingProperty;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    iget-object v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/city/components/BuildingProperty;->assume(Linfo/flowersoft/theotown/city/objects/Building;F)Z

    move v0, v1

    goto :goto_1b

    :cond_19
    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    :goto_1b
    iget-object v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->hasPower()Z

    move-result v2

    if-nez v2, :cond_30

    mul-float/2addr v0, v1

    .line 30
    iget-object v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    iget-object v2, v2, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->properties:[Linfo/flowersoft/theotown/city/components/BuildingProperty;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2, v3, v1}, Linfo/flowersoft/theotown/city/components/BuildingProperty;->assume(Linfo/flowersoft/theotown/city/objects/Building;F)Z

    .line 32
    :cond_30
    iget-object v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->hasWater()Z

    move-result v2

    if-nez v2, :cond_45

    mul-float/2addr v0, v1

    .line 34
    iget-object v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    iget-object v2, v2, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->properties:[Linfo/flowersoft/theotown/city/components/BuildingProperty;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {v2, p1, v1}, Linfo/flowersoft/theotown/city/components/BuildingProperty;->assume(Linfo/flowersoft/theotown/city/objects/Building;F)Z

    :cond_45
    return v0

    :cond_46
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public evaluateFirstTime(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 2

    .line 0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method
