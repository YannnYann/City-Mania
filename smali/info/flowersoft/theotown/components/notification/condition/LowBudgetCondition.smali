###### Class info.flowersoft.theotown.components.notification.condition.LowBudgetCondition (info.flowersoft.theotown.components.notification.condition.LowBudgetCondition)
.class public Linfo/flowersoft/theotown/components/notification/condition/LowBudgetCondition;
.super Linfo/flowersoft/theotown/components/notification/condition/Condition;
.source "LowBudgetCondition.java"


# instance fields
.field public thresold:I


# direct methods
.method public constructor <init>(ILinfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 15
    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/notification/condition/Condition;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 16
    iput p1, p0, Linfo/flowersoft/theotown/components/notification/condition/LowBudgetCondition;->thresold:I

    return-void
.end method


# virtual methods
.method public evaluate()Z
    .registers 7

    .line 21
    iget-object v0, p0, Linfo/flowersoft/theotown/components/notification/condition/Condition;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 22
    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/condition/Condition;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v2

    iget v4, p0, Linfo/flowersoft/theotown/components/notification/condition/LowBudgetCondition;->thresold:I

    int-to-double v4, v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2c

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getMonthlyIncome()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_2c

    const/4 v0, 0x1

    return v0

    :cond_2c
    return v1
.end method
