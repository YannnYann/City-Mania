###### Class info.flowersoft.theotown.components.management.attribute.CultureHappiness (info.flowersoft.theotown.components.management.attribute.CultureHappiness)
.class public Linfo/flowersoft/theotown/components/management/attribute/CultureHappiness;
.super Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.source "CultureHappiness.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0xd77

    .line 11
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CULTURE:I

    const/4 v2, 0x1

    invoke-direct {p0, v2, v2, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZII)V

    const v0, 0x3dcccccd    # 0.1f

    .line 12
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->setAdjustRatio(F)V

    return-void
.end method


# virtual methods
.method public evaluateFirstTime(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 3

    .line 17
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v0

    if-eqz v0, :cond_b

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    .line 18
    :cond_b
    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ZoneDraft;->base:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/city/Zones;->RESIDENTIAL0:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne p1, v0, :cond_1a

    const/high16 p1, 0x3f000000    # 0.5f

    return p1

    :cond_1a
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public evaluateResidential(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 3

    .line 27
    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v0, Linfo/flowersoft/theotown/city/components/InfluenceType;->CULTURE:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    add-float/2addr p1, v0

    return p1
.end method
