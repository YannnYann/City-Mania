###### Class info.flowersoft.theotown.components.statistics.RailsItem (info.flowersoft.theotown.components.statistics.RailsItem)
.class public Linfo/flowersoft/theotown/components/statistics/RailsItem;
.super Linfo/flowersoft/theotown/components/statistics/LocalizedStatisticsItem;
.source "RailsItem.java"


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/statistics/LocalizedStatisticsItem;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 23
    iput-object p1, p0, Linfo/flowersoft/theotown/components/statistics/RailsItem;->city:Linfo/flowersoft/theotown/city/City;

    return-void
.end method

.method public evaluate()I
    .registers 3

    .line 28
    iget-object v0, p0, Linfo/flowersoft/theotown/components/statistics/RailsItem;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getRails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/statistics/RailsItem;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getRoads()Linfo/flowersoft/theotown/city/RoadList;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/RoadList;->getRailRoads()Linfo/flowersoft/theotown/util/SortedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getColor()Lio/blueflower/stapel2d/drawing/Color;
    .registers 2

    .line 38
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->DARK_RED:Lio/blueflower/stapel2d/drawing/Color;

    return-object v0
.end method

.method public getNameId()I
    .registers 2

    .line 0
    const/16 v0, 0x5ca

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 18
    const-string v0, "rails"

    return-object v0
.end method
