###### Class info.flowersoft.theotown.components.statistics.EnergyNeedItem (info.flowersoft.theotown.components.statistics.EnergyNeedItem)
.class public Linfo/flowersoft/theotown/components/statistics/EnergyNeedItem;
.super Linfo/flowersoft/theotown/components/statistics/AbstractEnergyItem;
.source "EnergyNeedItem.java"


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

    .line 16
    iget-object v0, p0, Linfo/flowersoft/theotown/components/statistics/AbstractEnergyItem;->power:Linfo/flowersoft/theotown/components/DefaultPower;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultPower;->consumedPower()I

    move-result v0

    return v0
.end method

.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 26
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getNameId()I
    .registers 2

    .line 0
    const/16 v0, 0xba2

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 11
    const-string v0, "energy need"

    return-object v0
.end method
