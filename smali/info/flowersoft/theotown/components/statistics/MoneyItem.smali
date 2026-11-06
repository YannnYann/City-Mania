###### Class info.flowersoft.theotown.components.statistics.MoneyItem (info.flowersoft.theotown.components.statistics.MoneyItem)
.class public Linfo/flowersoft/theotown/components/statistics/MoneyItem;
.super Linfo/flowersoft/theotown/components/statistics/AbstractBudgetItem;
.source "MoneyItem.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/statistics/AbstractBudgetItem;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate()I
    .registers 3

    .line 21
    iget-object v0, p0, Linfo/flowersoft/theotown/components/statistics/AbstractBudgetItem;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 22
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/Functions;->castToIntClamped(J)I

    move-result v0

    return v0
.end method

.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 32
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->MARINE_BLUE:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getNameId()I
    .registers 2

    .line 0
    const/16 v0, 0x9da

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 16
    const-string v0, "money"

    return-object v0
.end method
