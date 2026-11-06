###### Class info.flowersoft.theotown.components.management.attribute.WasteHappiness (info.flowersoft.theotown.components.management.attribute.WasteHappiness)
.class public Linfo/flowersoft/theotown/components/management/attribute/WasteHappiness;
.super Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.source "WasteHappiness.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x615

    .line 9
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_WASTE_DISPOSAL:I

    const/4 v2, 0x1

    invoke-direct {p0, v2, v2, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZII)V

    const v0, 0x3dcccccd    # 0.1f

    const v1, 0x3ca3d70a    # 0.02f

    .line 11
    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->setAdjustRatio(FF)V

    return-void
.end method


# virtual methods
.method public evaluate(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 6

    .line 16
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_25

    .line 17
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isUber()Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_11

    return v2

    .line 18
    :cond_11
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/objects/Building;->getNeededAmount(I)I

    move-result v0

    if-lez v0, :cond_25

    .line 20
    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isFullOfWaste()Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x0

    return p1

    :cond_24
    return v2

    :cond_25
    return v1
.end method
