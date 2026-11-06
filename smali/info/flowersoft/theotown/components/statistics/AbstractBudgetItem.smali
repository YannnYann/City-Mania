###### Class info.flowersoft.theotown.components.statistics.AbstractBudgetItem (info.flowersoft.theotown.components.statistics.AbstractBudgetItem)
.class public abstract Linfo/flowersoft/theotown/components/statistics/AbstractBudgetItem;
.super Linfo/flowersoft/theotown/components/statistics/LocalizedStatisticsItem;
.source "AbstractBudgetItem.java"


# instance fields
.field public budget:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Linfo/flowersoft/theotown/components/statistics/LocalizedStatisticsItem;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 19
    iput-object p1, p0, Linfo/flowersoft/theotown/components/statistics/AbstractBudgetItem;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultBudget;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/statistics/AbstractBudgetItem;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    return-void
.end method
