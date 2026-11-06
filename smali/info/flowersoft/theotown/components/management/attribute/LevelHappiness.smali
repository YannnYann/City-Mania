###### Class info.flowersoft.theotown.components.management.attribute.LevelHappiness (info.flowersoft.theotown.components.management.attribute.LevelHappiness)
.class public Linfo/flowersoft/theotown/components/management/attribute/LevelHappiness;
.super Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.source "LevelHappiness.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const/16 v1, 0x929

    const/4 v2, 0x1

    .line 12
    invoke-direct {p0, v2, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZI)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->setAdjustRatio(F)V

    return-void
.end method


# virtual methods
.method public evaluate(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 8

    .line 18
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->LEVEL_LOW:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 19
    iget-object v1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v2, Linfo/flowersoft/theotown/city/components/InfluenceType;->LEVEL_MIDDLE:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    .line 20
    iget-object v2, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v3, Linfo/flowersoft/theotown/city/components/InfluenceType;->LEVEL_HIGH:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    .line 24
    iget-object v3, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v3, :cond_3f

    .line 26
    iget p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->level:I

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v5, 0x3e800000    # 0.25f

    if-eqz p1, :cond_3b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_36

    const/4 v0, 0x2

    if-eq p1, v0, :cond_33

    goto :goto_3f

    :cond_33
    mul-float/2addr v2, v5

    add-float/2addr v2, v3

    goto :goto_40

    :cond_36
    mul-float/2addr v1, v5

    add-float/2addr v1, v3

    mul-float/2addr v2, v5

    add-float/2addr v2, v1

    goto :goto_40

    :cond_3b
    mul-float/2addr v0, v5

    add-float v2, v0, v3

    goto :goto_40

    :cond_3f
    :goto_3f
    move v2, v4

    .line 39
    :goto_40
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method
