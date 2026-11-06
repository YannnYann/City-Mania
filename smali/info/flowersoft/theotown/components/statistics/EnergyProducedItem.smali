###### Class info.flowersoft.theotown.components.statistics.EnergyProducedItem (info.flowersoft.theotown.components.statistics.EnergyProducedItem)
.class public Linfo/flowersoft/theotown/components/statistics/EnergyProducedItem;
.super Linfo/flowersoft/theotown/components/statistics/AbstractEnergyItem;
.source "EnergyProducedItem.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/statistics/AbstractEnergyItem;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()I
    .registers 2

    .line 15
    iget-object v0, p0, Linfo/flowersoft/theotown/components/statistics/AbstractEnergyItem;->power:Linfo/flowersoft/theotown/components/DefaultPower;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultPower;->availablePower()I

    move-result v0

    return v0
.end method

.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 25
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->DARK_YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getNameId()I
    .registers 2

    .line 0
    const/16 v0, 0x769

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 10
    const-string v0, "energy produced"

    return-object v0
.end method
