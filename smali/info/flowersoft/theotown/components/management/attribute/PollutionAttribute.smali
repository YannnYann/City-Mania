###### Class info.flowersoft.theotown.components.management.attribute.PollutionAttribute (info.flowersoft.theotown.components.management.attribute.PollutionAttribute)
.class public Linfo/flowersoft/theotown/components/management/attribute/PollutionAttribute;
.super Linfo/flowersoft/theotown/components/management/attribute/Attribute;
.source "PollutionAttribute.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/16 v1, 0xbf6

    .line 12
    invoke-direct {p0, v0, v0, v1}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;-><init>(ZZI)V

    return-void
.end method


# virtual methods
.method public evaluate(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 3

    .line 22
    iget-object p1, p1, Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;->influences:[F

    sget-object v0, Linfo/flowersoft/theotown/city/components/InfluenceType;->POLLUTION:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    return p1
.end method

.method public evaluateFirstTime(Linfo/flowersoft/theotown/components/management/attribute/HappinessContext;)F
    .registers 2

    .line 0
    const/4 p1, 0x0

    return p1
.end method
