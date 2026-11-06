###### Class info.flowersoft.theotown.components.management.attribute.FreeTimeHappiness (info.flowersoft.theotown.components.management.attribute.FreeTimeHappiness)
.class public Linfo/flowersoft/theotown/components/management/attribute/FreeTimeHappiness;
.super Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.source "FreeTimeHappiness.java"


# instance fields
.field public parkIndex:I

.field public sportIndex:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0xaf3

    .line 16
    invoke-direct {p0, v0, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZI)V

    .line 17
    const-class v0, Linfo/flowersoft/theotown/components/management/attribute/ParkAttribute;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getIndex(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/management/attribute/FreeTimeHappiness;->parkIndex:I

    .line 18
    const-class v0, Linfo/flowersoft/theotown/components/management/attribute/SportAttribute;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getIndex(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/management/attribute/FreeTimeHappiness;->sportIndex:I

    return-void
.end method


# virtual methods
.method public evaluateCommercial(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 10

    .line 68
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_f

    .line 69
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->attributeContainer:Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/management/attribute/FreeTimeHappiness;->parkIndex:I

    aget v0, v0, v1

    goto :goto_19

    .line 71
    :cond_f
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->PARK:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 77
    :goto_19
    iget v1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->level:I

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_32

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2d

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v4, :cond_2a

    move v1, v5

    goto :goto_34

    :cond_2a
    move v1, v5

    move v5, v3

    goto :goto_34

    :cond_2d
    const/high16 v5, 0x3e800000    # 0.25f

    move v1, v5

    move v5, v2

    goto :goto_34

    :cond_32
    move v1, v2

    move v5, v1

    :goto_34
    mul-float v4, v5, v0

    add-float/2addr v4, v1

    .line 92
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 93
    iget v4, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->density:F

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v4, v6, v7}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->growingExpectation(FFF)F

    move-result v4

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    sub-float/2addr v1, v4

    .line 97
    iget-object v4, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v4, :cond_5e

    cmpg-float v2, v1, v2

    if-gez v2, :cond_5e

    .line 98
    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    iget-object p1, p1, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->properties:[Linfo/flowersoft/theotown/city/components/BuildingProperty;

    const/4 v2, 0x3

    aget-object p1, p1, v2

    sub-float v0, v3, v0

    mul-float/2addr v5, v0

    sub-float/2addr v3, v5

    invoke-virtual {p1, v4, v3}, Linfo/flowersoft/theotown/city/components/BuildingProperty;->assume(Linfo/flowersoft/theotown/city/objects/Building;F)Z

    :cond_5e
    return v1
.end method

.method public evaluateResidential(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 10

    .line 27
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_19

    .line 28
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->attributeContainer:Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/components/management/attribute/FreeTimeHappiness;->parkIndex:I

    aget v0, v0, v1

    .line 29
    iget-object v1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->attributeContainer:Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object v1

    iget v2, p0, Linfo/flowersoft/theotown/components/management/attribute/FreeTimeHappiness;->sportIndex:I

    aget v1, v1, v2

    goto :goto_2d

    .line 31
    :cond_19
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->PARK:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 32
    iget-object v1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v2, Linfo/flowersoft/theotown/city/components/InfluenceType;->SPORT:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    .line 40
    :goto_2d
    iget v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->level:I

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v2, :cond_4a

    const/4 v5, 0x1

    if-eq v2, v5, :cond_41

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3c

    move v2, v3

    goto :goto_4d

    .line 48
    :cond_3c
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_4d

    :cond_41
    mul-float v2, v0, v4

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    goto :goto_4d

    :cond_4a
    mul-float v2, v0, v4

    add-float/2addr v2, v4

    :goto_4d
    const/high16 v5, 0x3f800000    # 1.0f

    .line 52
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 54
    iget-object v6, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v6, :cond_7a

    cmpg-float v4, v2, v4

    if-gez v4, :cond_7a

    .line 55
    iget-object v4, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    iget-object v4, v4, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->properties:[Linfo/flowersoft/theotown/city/components/BuildingProperty;

    const/4 v7, 0x3

    aget-object v4, v4, v7

    sub-float v0, v5, v0

    mul-float/2addr v0, v3

    sub-float v0, v5, v0

    invoke-virtual {v4, v6, v0}, Linfo/flowersoft/theotown/city/components/BuildingProperty;->assume(Linfo/flowersoft/theotown/city/objects/Building;F)Z

    .line 57
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    iget-object v0, v0, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->properties:[Linfo/flowersoft/theotown/city/components/BuildingProperty;

    const/4 v4, 0x4

    aget-object v0, v0, v4

    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    sub-float v1, v5, v1

    mul-float/2addr v1, v3

    sub-float/2addr v5, v1

    invoke-virtual {v0, p1, v5}, Linfo/flowersoft/theotown/city/components/BuildingProperty;->assume(Linfo/flowersoft/theotown/city/objects/Building;F)Z

    :cond_7a
    return v2
.end method
