###### Class info.flowersoft.theotown.components.statistics.InhabitantsLvl1Item (info.flowersoft.theotown.components.statistics.InhabitantsLvl1Item)
.class public Linfo/flowersoft/theotown/components/statistics/InhabitantsLvl1Item;
.super Linfo/flowersoft/theotown/components/statistics/AbstractPopulationItem;
.source "InhabitantsLvl1Item.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/statistics/AbstractPopulationItem;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()I
    .registers 3

    .line 19
    iget-object v0, p0, Linfo/flowersoft/theotown/components/statistics/AbstractPopulationItem;->people:Linfo/flowersoft/theotown/city/components/People;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/components/People;->getPeople(I)I

    move-result v0

    return v0
.end method

.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 29
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->COLOR_RES1:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getNameId()I
    .registers 2

    .line 0
    const/16 v0, 0x878

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 14
    const-string v0, "inhabitants1"

    return-object v0
.end method
