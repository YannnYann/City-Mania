###### Class info.flowersoft.theotown.components.statistics.WaterProducedItem (info.flowersoft.theotown.components.statistics.WaterProducedItem)
.class public Linfo/flowersoft/theotown/components/statistics/WaterProducedItem;
.super Linfo/flowersoft/theotown/components/statistics/AbstractWaterItem;
.source "WaterProducedItem.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/statistics/AbstractWaterItem;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()I
    .registers 3

    .line 15
    iget-object v0, p0, Linfo/flowersoft/theotown/components/statistics/AbstractWaterItem;->water:Linfo/flowersoft/theotown/components/DefaultWater;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWater;->availableWater()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 25
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->DARK_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getNameId()I
    .registers 2

    .line 0
    const/16 v0, 0x8bc

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 10
    const-string v0, "water produced"

    return-object v0
.end method
