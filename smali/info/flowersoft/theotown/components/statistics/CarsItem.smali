###### Class info.flowersoft.theotown.components.statistics.CarsItem (info.flowersoft.theotown.components.statistics.CarsItem)
.class public Linfo/flowersoft/theotown/components/statistics/CarsItem;
.super Linfo/flowersoft/theotown/components/statistics/LocalizedStatisticsItem;
.source "CarsItem.java"


# instance fields
.field public traffic:Linfo/flowersoft/theotown/components/DefaultTraffic;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/statistics/LocalizedStatisticsItem;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    const/4 v0, 0x7

    .line 25
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultTraffic;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/statistics/CarsItem;->traffic:Linfo/flowersoft/theotown/components/DefaultTraffic;

    return-void
.end method

.method public evaluate()I
    .registers 2

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/components/statistics/CarsItem;->traffic:Linfo/flowersoft/theotown/components/DefaultTraffic;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultTraffic;->countCars()I

    move-result v0

    return v0
.end method

.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 40
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getNameId()I
    .registers 2

    .line 0
    const/16 v0, 0x4b4

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 20
    const-string v0, "cars"

    return-object v0
.end method
