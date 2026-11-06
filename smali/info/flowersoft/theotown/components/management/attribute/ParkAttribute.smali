###### Class info.flowersoft.theotown.components.management.attribute.ParkAttribute (info.flowersoft.theotown.components.management.attribute.ParkAttribute)
.class public Linfo/flowersoft/theotown/components/management/attribute/ParkAttribute;
.super Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.source "ParkAttribute.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0xa65

    .line 12
    invoke-direct {p0, v0, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZI)V

    return-void
.end method


# virtual methods
.method public evaluateCommercial(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 3

    .line 22
    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v0, Linfo/flowersoft/theotown/city/components/InfluenceType;->PARK:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    return p1
.end method

.method public evaluateResidential(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 3

    .line 17
    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v0, Linfo/flowersoft/theotown/city/components/InfluenceType;->PARK:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    return p1
.end method
