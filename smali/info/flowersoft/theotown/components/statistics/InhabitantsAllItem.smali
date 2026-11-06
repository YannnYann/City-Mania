###### Class info.flowersoft.theotown.components.statistics.InhabitantsAllItem (info.flowersoft.theotown.components.statistics.InhabitantsAllItem)
.class public Linfo/flowersoft/theotown/components/statistics/InhabitantsAllItem;
.super Linfo/flowersoft/theotown/components/statistics/AbstractPopulationItem;
.source "InhabitantsAllItem.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/statistics/AbstractPopulationItem;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()I
    .registers 2

    .line 20
    iget-object v0, p0, Linfo/flowersoft/theotown/components/statistics/AbstractPopulationItem;->people:Linfo/flowersoft/theotown/city/components/People;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/People;->getPeople()I

    move-result v0

    return v0
.end method

.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 30
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getNameId()I
    .registers 2

    .line 0
    const/16 v0, 0x40c

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 15
    const-string v0, "inhabitants all"

    return-object v0
.end method
