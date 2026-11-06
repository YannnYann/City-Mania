###### Class info.flowersoft.theotown.components.statistics.AbstractEnergyItem (info.flowersoft.theotown.components.statistics.AbstractEnergyItem)
.class public abstract Linfo/flowersoft/theotown/components/statistics/AbstractEnergyItem;
.super Linfo/flowersoft/theotown/components/statistics/LocalizedStatisticsItem;
.source "AbstractEnergyItem.java"


# instance fields
.field public city:Linfo/flowersoft/theotown/city/City;

.field public power:Linfo/flowersoft/theotown/components/DefaultPower;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/statistics/LocalizedStatisticsItem;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 15
    iput-object p1, p0, Linfo/flowersoft/theotown/components/statistics/AbstractEnergyItem;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v0, 0x5

    .line 16
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultPower;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/statistics/AbstractEnergyItem;->power:Linfo/flowersoft/theotown/components/DefaultPower;

    return-void
.end method
