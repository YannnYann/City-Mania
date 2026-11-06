###### Class info.flowersoft.theotown.components.BudgetItem (info.flowersoft.theotown.components.BudgetItem)
.class public abstract Linfo/flowersoft/theotown/components/BudgetItem;
.super Ljava/lang/Object;
.source "BudgetItem.java"


# instance fields
.field public budget:Linfo/flowersoft/theotown/components/DefaultBudget;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/components/DefaultBudget;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Linfo/flowersoft/theotown/components/BudgetItem;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    return-void
.end method


# virtual methods
.method public decrementModifyable()V
    .registers 3

    .line 54
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/BudgetItem;->getModifyStep()I

    move-result v0

    .line 55
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/BudgetItem;->getModifyable()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/BudgetItem;->getMinModifyableValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/BudgetItem;->setModifyable(I)V

    return-void
.end method

.method public abstract getAmount()J
.end method

.method public getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;
    .registers 2

    .line 15
    iget-object v0, p0, Linfo/flowersoft/theotown/components/BudgetItem;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    return-object v0
.end method

.method public getExtra()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxModifyableValue()I
    .registers 2

    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getMinModifyableValue()I
    .registers 2

    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getModifyStep()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public getModifyable()I
    .registers 2

    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract getNameId()I
.end method

.method public abstract getNameRaw()Ljava/lang/String;
.end method

.method public incrementModifyable()V
    .registers 3

    .line 49
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/BudgetItem;->getModifyStep()I

    move-result v0

    .line 50
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/BudgetItem;->getModifyable()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/BudgetItem;->getMaxModifyableValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/components/BudgetItem;->setModifyable(I)V

    return-void
.end method

.method public isModifyable()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public setModifyable(I)V
    .registers 2

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
