###### Class info.flowersoft.theotown.components.statistics.AbstractPopulationItem (info.flowersoft.theotown.components.statistics.AbstractPopulationItem)
.class public abstract Linfo/flowersoft/theotown/components/statistics/AbstractPopulationItem;
.super Linfo/flowersoft/theotown/components/statistics/LocalizedStatisticsItem;
.source "AbstractPopulationItem.java"


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

.field public people:Linfo/flowersoft/theotown/city/components/People;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/statistics/LocalizedStatisticsItem;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 22
    iput-object p1, p0, Linfo/flowersoft/theotown/components/statistics/AbstractPopulationItem;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v0, 0x3

    .line 23
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    iput-object v0, p0, Linfo/flowersoft/theotown/components/statistics/AbstractPopulationItem;->management:Linfo/flowersoft/theotown/components/management/DefaultManagement;

    const/16 v0, 0x9

    .line 24
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/components/People;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/statistics/AbstractPopulationItem;->people:Linfo/flowersoft/theotown/city/components/People;

    return-void
.end method
