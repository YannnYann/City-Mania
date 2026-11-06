###### Class info.flowersoft.theotown.components.management.attribute.FireBrigadeHappiness (info.flowersoft.theotown.components.management.attribute.FireBrigadeHappiness)
.class public Linfo/flowersoft/theotown/components/management/attribute/FireBrigadeHappiness;
.super Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.source "FireBrigadeHappiness.java"


# instance fields
.field public fireIndex:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x801

    .line 15
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_FIREDEPARTMENT:I

    const/4 v2, 0x1

    invoke-direct {p0, v2, v2, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZII)V

    .line 12
    const-class v0, Linfo/flowersoft/theotown/components/management/attribute/FireDangerAttribute;

    invoke-static {v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getIndex(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/components/management/attribute/FireBrigadeHappiness;->fireIndex:I

    const v0, 0x3dcccccd    # 0.1f

    .line 16
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->setAdjustRatio(F)V

    return-void
.end method


# virtual methods
.method public evaluate(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 6

    .line 21
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_7

    return v1

    .line 22
    :cond_7
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v2, Linfo/flowersoft/theotown/city/components/InfluenceType;->FIREDEPARTMENT:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    .line 24
    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->attributeContainer:Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz p1, :cond_32

    .line 25
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object p1

    iget v3, p0, Linfo/flowersoft/theotown/components/management/attribute/FireBrigadeHappiness;->fireIndex:I

    aget p1, p1, v3

    const/4 v3, 0x0

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_31

    mul-float/2addr v0, v2

    add-float/2addr v0, v2

    .line 27
    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    :cond_31
    return v1

    :cond_32
    mul-float/2addr v0, v2

    add-float/2addr v0, v2

    return v0
.end method
