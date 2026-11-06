###### Class info.flowersoft.theotown.components.management.attribute.FireDangerAttribute (info.flowersoft.theotown.components.management.attribute.FireDangerAttribute)
.class public Linfo/flowersoft/theotown/components/management/attribute/FireDangerAttribute;
.super Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.source "FireDangerAttribute.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0xb49

    .line 13
    invoke-direct {p0, v0, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZI)V

    return-void
.end method


# virtual methods
.method public evaluate(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 6

    .line 23
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_d

    .line 24
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/management/attribute/FireDangerAttribute;->isBurnable(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result v0

    if-nez v0, :cond_d

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    .line 27
    :cond_d
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->FIREDEPARTMENT:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    mul-float/2addr v0, v1

    mul-float/2addr v0, v0

    .line 31
    iget p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->people:I

    int-to-float p1, p1

    const v2, -0x46ae48e9    # -2.0E-4f

    mul-float/2addr p1, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float p1, v2

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    const p1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, p1

    return v0
.end method

.method public evaluateFirstTime(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public final isBurnable(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 3

    .line 38
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->destroyable:Z

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getCurrentPeople()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_16

    return v0

    :cond_16
    const/4 p1, 0x0

    return p1
.end method
