###### Class info.flowersoft.theotown.components.management.attribute.Attribute (info.flowersoft.theotown.components.management.attribute.Attribute)
.class public abstract Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"


# instance fields
.field public adjustRatioDown:F

.field public adjustRatioUp:F

.field public final happiness:Z

.field public final icon:I

.field public myIndex:I

.field public final nameId:I

.field public final visible:Z


# direct methods
.method public constructor <init>(ZZI)V
    .registers 5

    .line 31
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    invoke-direct {p0, p1, p2, p3, v0}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZII)V

    return-void
.end method

.method public constructor <init>(ZZII)V
    .registers 6

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->myIndex:I

    .line 35
    iput-boolean p1, p0, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->happiness:Z

    .line 36
    iput-boolean p2, p0, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->visible:Z

    .line 37
    iput p3, p0, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->nameId:I

    .line 38
    iput p4, p0, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->icon:I

    const p1, 0x3dcccccd    # 0.1f

    .line 40
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->setAdjustRatio(F)V

    return-void
.end method

.method public static growingExpectation(FFF)F
    .registers 5

    sub-float/2addr p0, p1

    const/4 v0, 0x0

    .line 111
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    neg-float p0, p0

    sub-float/2addr p2, p1

    div-float/2addr p0, p2

    float-to-double p0, p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 110
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    return p1
.end method

.method public static interpolate(FFF)F
    .registers 4

    .line 0
    mul-float v0, p0, p1

    sub-float/2addr p1, v0

    mul-float/2addr p0, p2

    add-float/2addr p1, p0

    return p1
.end method


# virtual methods
.method public evaluate(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 4

    .line 70
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ZoneDraft;->base:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v0, v1, :cond_11

    .line 71
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->evaluateResidential(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F

    move-result p1

    return p1

    .line 72
    :cond_11
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ZoneDraft;->base:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/city/Zones;->COMMERCIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v0, v1, :cond_22

    .line 73
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->evaluateCommercial(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F

    move-result p1

    return p1

    .line 74
    :cond_22
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ZoneDraft;->base:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/city/Zones;->INDUSTRIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v0, v1, :cond_33

    .line 75
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->evaluateIndustrial(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F

    move-result p1

    return p1

    :cond_33
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public evaluateCommercial(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 2

    .line 0
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public evaluateFirstTime(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 2

    .line 65
    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result p1

    if-eqz p1, :cond_b

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_b
    const/high16 p1, 0x3f000000    # 0.5f

    return p1
.end method

.method public evaluateIndustrial(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 2

    .line 0
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public evaluateResidential(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 2

    .line 0
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public getAdjustRatioDown()F
    .registers 2

    .line 61
    iget v0, p0, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->adjustRatioDown:F

    return v0
.end method

.method public getAdjustRatioUp()F
    .registers 2

    .line 57
    iget v0, p0, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->adjustRatioUp:F

    return v0
.end method

.method public final getIcon()I
    .registers 2

    .line 106
    iget v0, p0, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->icon:I

    return v0
.end method

.method public getIndex()I
    .registers 2

    .line 127
    iget v0, p0, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->myIndex:I

    return v0
.end method

.method public final getNameLocalizationId()I
    .registers 2

    .line 102
    iget v0, p0, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->nameId:I

    return v0
.end method

.method public final isHappiness()Z
    .registers 2

    .line 94
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->happiness:Z

    return v0
.end method

.method public final isVisible()Z
    .registers 2

    .line 98
    iget-boolean v0, p0, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->visible:Z

    return v0
.end method

.method public setAdjustRatio(F)V
    .registers 2

    .line 48
    invoke-virtual {p0, p1, p1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->setAdjustRatio(FF)V

    return-void
.end method

.method public setAdjustRatio(FF)V
    .registers 3

    .line 52
    iput p1, p0, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->adjustRatioUp:F

    .line 53
    iput p2, p0, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->adjustRatioDown:F

    return-void
.end method

.method public setIndex(I)V
    .registers 2

    .line 44
    iput p1, p0, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->myIndex:I

    return-void
.end method
