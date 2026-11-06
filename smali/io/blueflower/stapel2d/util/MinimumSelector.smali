###### Class io.blueflower.stapel2d.util.MinimumSelector (io.blueflower.stapel2d.util.MinimumSelector)
.class public final Lio/blueflower/stapel2d/util/MinimumSelector;
.super Ljava/lang/Object;
.source "MinimumSelector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public assumptionCount:I

.field public minValue:F

.field public selectedItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/MinimumSelector;->clear()V

    return-void
.end method


# virtual methods
.method public assume(Ljava/lang/Object;F)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)Z"
        }
    .end annotation

    if-eqz p1, :cond_15

    .line 29
    iget v0, p0, Lio/blueflower/stapel2d/util/MinimumSelector;->assumptionCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/blueflower/stapel2d/util/MinimumSelector;->assumptionCount:I

    .line 31
    iget v0, p0, Lio/blueflower/stapel2d/util/MinimumSelector;->minValue:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_13

    .line 32
    iput p2, p0, Lio/blueflower/stapel2d/util/MinimumSelector;->minValue:F

    .line 33
    iput-object p1, p0, Lio/blueflower/stapel2d/util/MinimumSelector;->selectedItem:Ljava/lang/Object;

    return v1

    :cond_13
    const/4 p1, 0x0

    return p1

    .line 26
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Item may not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lio/blueflower/stapel2d/util/MinimumSelector;->selectedItem:Ljava/lang/Object;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 20
    iput v0, p0, Lio/blueflower/stapel2d/util/MinimumSelector;->minValue:F

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lio/blueflower/stapel2d/util/MinimumSelector;->assumptionCount:I

    return-void
.end method

.method public getMinimum()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lio/blueflower/stapel2d/util/MinimumSelector;->selectedItem:Ljava/lang/Object;

    if-eqz v0, :cond_5

    return-object v0

    .line 42
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No item assumed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMinimumValue()F
    .registers 2

    .line 49
    iget v0, p0, Lio/blueflower/stapel2d/util/MinimumSelector;->minValue:F

    return v0
.end method

.method public hasResult()Z
    .registers 2

    .line 53
    iget-object v0, p0, Lio/blueflower/stapel2d/util/MinimumSelector;->selectedItem:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
