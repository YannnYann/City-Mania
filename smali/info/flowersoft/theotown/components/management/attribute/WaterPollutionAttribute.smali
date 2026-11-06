###### Class info.flowersoft.theotown.components.management.attribute.WaterPollutionAttribute (info.flowersoft.theotown.components.management.attribute.WaterPollutionAttribute)
.class public Linfo/flowersoft/theotown/components/management/attribute/WaterPollutionAttribute;
.super Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.source "WaterPollutionAttribute.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0, v0, v0}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZI)V

    return-void
.end method


# virtual methods
.method public evaluate(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 3

    .line 14
    iget-object v0, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->hasWater()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 15
    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->building:Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWaterWaste()F

    move-result p1

    return p1

    :cond_11
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method
