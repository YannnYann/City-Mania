###### Class info.flowersoft.theotown.components.notification.task.BudgetTask (info.flowersoft.theotown.components.notification.task.BudgetTask)
.class public Linfo/flowersoft/theotown/components/notification/task/BudgetTask;
.super Linfo/flowersoft/theotown/components/notification/task/DefaultTask;
.source "BudgetTask.java"


# instance fields
.field public amount:J

.field public budget:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public factor:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IJLinfo/flowersoft/theotown/city/City;)V
    .registers 7

    .line 20
    invoke-direct {p0, p1, p2, p6}, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;-><init>(ILjava/lang/String;Linfo/flowersoft/theotown/city/City;)V

    .line 21
    iput p3, p0, Linfo/flowersoft/theotown/components/notification/task/BudgetTask;->factor:I

    .line 22
    iput-wide p4, p0, Linfo/flowersoft/theotown/components/notification/task/BudgetTask;->amount:J

    const/4 p1, 0x0

    .line 24
    invoke-virtual {p6, p1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultBudget;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/notification/task/BudgetTask;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    return-void
.end method


# virtual methods
.method public getRawValue()J
    .registers 5

    .line 29
    iget v0, p0, Linfo/flowersoft/theotown/components/notification/task/BudgetTask;->factor:I

    int-to-double v0, v0

    iget-object v2, p0, Linfo/flowersoft/theotown/components/notification/task/BudgetTask;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTargetValue()J
    .registers 7

    .line 34
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/task/BudgetTask;->getRawValue()J

    move-result-wide v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/components/notification/task/BudgetTask;->amount:J

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/notification/task/DefaultTask;->getLevel()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method
