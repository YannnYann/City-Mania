###### Class info.flowersoft.theotown.components.management.attribute.EnvironmentHappiness (info.flowersoft.theotown.components.management.attribute.EnvironmentHappiness)
.class public Linfo/flowersoft/theotown/components/management/attribute/EnvironmentHappiness;
.super Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.source "EnvironmentHappiness.java"


# instance fields
.field public pollutionIndex:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x139

    .line 16
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_TREE:I

    const/4 v2, 0x1

    invoke-direct {p0, v2, v2, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZII)V

    .line 17
    const-class v0, Linfo/flowersoft/theotown/components/management/attribute/PollutionAttribute;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getIndex(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/management/attribute/EnvironmentHappiness;->pollutionIndex:I

    return-void
.end method


# virtual methods
.method public evaluateResidential(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 10

    .line 23
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->NOISE:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 24
    iget-object v1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v2, Linfo/flowersoft/theotown/city/components/InfluenceType;->NATURE:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    iget-object v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v3, Linfo/flowersoft/theotown/city/components/InfluenceType;->PARK:Linfo/flowersoft/theotown/city/components/InfluenceType;

    .line 25
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    add-float/2addr v1, v2

    .line 27
    iget-object v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v2, :cond_2e

    .line 28
    iget-object v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->attributeContainer:Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object v2

    iget v3, p0, Linfo/flowersoft/theotown/components/management/attribute/EnvironmentHappiness;->pollutionIndex:I

    aget v2, v2, v3

    goto :goto_38

    .line 30
    :cond_2e
    iget-object v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v3, Linfo/flowersoft/theotown/city/components/InfluenceType;->POLLUTION:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    :goto_38
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    add-float/2addr v1, v3

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    const/high16 v5, 0x3f800000    # 1.0f

    if-ltz v4, :cond_46

    sub-float v6, v5, v2

    mul-float/2addr v1, v6

    :cond_46
    cmpl-float v3, v0, v3

    if-ltz v3, :cond_4d

    sub-float v6, v5, v0

    mul-float/2addr v1, v6

    .line 41
    :cond_4d
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 43
    iget-object v6, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v6, :cond_7a

    const/high16 v7, 0x3e800000    # 0.25f

    cmpg-float v7, v1, v7

    if-gtz v7, :cond_7a

    if-ltz v4, :cond_6a

    .line 45
    iget-object v4, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    iget-object v4, v4, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->properties:[Linfo/flowersoft/theotown/city/components/BuildingProperty;

    const/16 v7, 0x9

    aget-object v4, v4, v7

    sub-float v2, v5, v2

    invoke-virtual {v4, v6, v2}, Linfo/flowersoft/theotown/city/components/BuildingProperty;->assume(Linfo/flowersoft/theotown/city/objects/Building;F)Z

    :cond_6a
    if-ltz v3, :cond_7a

    .line 49
    iget-object v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    iget-object v2, v2, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->properties:[Linfo/flowersoft/theotown/city/components/BuildingProperty;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    sub-float/2addr v5, v0

    invoke-virtual {v2, p1, v5}, Linfo/flowersoft/theotown/city/components/BuildingProperty;->assume(Linfo/flowersoft/theotown/city/objects/Building;F)Z

    :cond_7a
    return v1
.end method
