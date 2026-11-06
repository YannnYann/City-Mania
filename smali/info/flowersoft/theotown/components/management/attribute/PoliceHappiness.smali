###### Class info.flowersoft.theotown.components.management.attribute.PoliceHappiness (info.flowersoft.theotown.components.management.attribute.PoliceHappiness)
.class public Linfo/flowersoft/theotown/components/management/attribute/PoliceHappiness;
.super Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.source "PoliceHappiness.java"


# instance fields
.field public crimeIndex:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0xa44

    .line 16
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_POLICE:I

    const/4 v2, 0x1

    invoke-direct {p0, v2, v2, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZII)V

    .line 13
    const-class v0, Linfo/flowersoft/theotown/components/management/attribute/CrimeAttribute;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getIndex(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/management/attribute/PoliceHappiness;->crimeIndex:I

    const v0, 0x3dcccccd    # 0.1f

    .line 17
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->setAdjustRatio(F)V

    return-void
.end method


# virtual methods
.method public evaluate(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 9

    .line 22
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_7

    return v1

    .line 23
    :cond_7
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v2, Linfo/flowersoft/theotown/city/components/InfluenceType;->POLICE:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    .line 25
    iget-object v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->attributeContainer:Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v2, :cond_51

    .line 26
    iget-object v4, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    const/4 v5, 0x0

    if-eqz v4, :cond_35

    .line 27
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object v2

    iget v4, p0, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->myIndex:I

    aget v2, v2, v4

    cmpl-float v4, v2, v5

    if-ltz v4, :cond_35

    .line 29
    iget-object v4, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->survey:Linfo/flowersoft/theotown/city/components/BuildingSurvey;

    iget-object v4, v4, Linfo/flowersoft/theotown/city/components/BuildingSurvey;->properties:[Linfo/flowersoft/theotown/city/components/BuildingProperty;

    const/16 v6, 0xd

    aget-object v4, v4, v6

    iget-object v6, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    .line 30
    invoke-virtual {v4, v6, v2}, Linfo/flowersoft/theotown/city/components/BuildingProperty;->assume(Linfo/flowersoft/theotown/city/objects/Building;F)Z

    .line 34
    :cond_35
    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->attributeContainer:Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object p1

    iget v2, p0, Linfo/flowersoft/theotown/components/management/attribute/PoliceHappiness;->crimeIndex:I

    aget p1, p1, v2

    cmpl-float p1, p1, v5

    if-ltz p1, :cond_50

    mul-float/2addr v0, v3

    add-float/2addr v0, v3

    const/high16 p1, 0x3f800000    # 1.0f

    .line 36
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, v5}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1

    :cond_50
    return v1

    :cond_51
    mul-float/2addr v0, v3

    add-float/2addr v0, v3

    return v0
.end method
