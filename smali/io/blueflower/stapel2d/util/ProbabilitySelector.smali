###### Class io.blueflower.stapel2d.util.ProbabilitySelector (io.blueflower.stapel2d.util.ProbabilitySelector)
.class public final Lio/blueflower/stapel2d/util/ProbabilitySelector;
.super Ljava/lang/Object;
.source "ProbabilitySelector.java"


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
.field public final negProb:[F

.field public final objCount:[I

.field public final probSum:[F

.field public final random:Ljava/util/Random;

.field public final selected:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public final selectedProb:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .registers 3

    const/4 v0, 0x1

    .line 24
    invoke-direct {p0, p1, v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;I)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_1f

    .line 33
    iput-object p1, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->random:Ljava/util/Random;

    .line 34
    new-array p1, p2, [F

    iput-object p1, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->probSum:[F

    .line 35
    new-array p1, p2, [F

    iput-object p1, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->negProb:[F

    .line 36
    new-array p1, p2, [I

    iput-object p1, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->objCount:[I

    .line 37
    new-array p1, p2, [Ljava/lang/Object;

    iput-object p1, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->selected:[Ljava/lang/Object;

    .line 38
    new-array p1, p2, [F

    iput-object p1, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->selectedProb:[F

    .line 40
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->clear()Ljava/lang/Object;

    return-void

    .line 30
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "depth must be >= 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clear()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->probSum:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 88
    iget-object v1, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->negProb:[F

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 89
    iget-object v1, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->selected:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    iget-object v1, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->selectedProb:[F

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 91
    iget-object v1, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->objCount:[I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    return-object v0
.end method

.method public getDepth()I
    .registers 2

    .line 127
    iget-object v0, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->probSum:[F

    array-length v0, v0

    return v0
.end method

.method public getProbabilitySum()F
    .registers 3

    .line 101
    iget-object v0, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->probSum:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getResult()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->selected:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getResult(I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_2f

    .line 152
    iget-object v0, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->probSum:[F

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 154
    iget-object v0, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->selected:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    .line 152
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to access index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " on selector of depth "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getDepth()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index may not be nagative but is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResultCount()I
    .registers 4

    .line 116
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    move v0, v1

    .line 119
    :goto_9
    iget-object v2, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->probSum:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1a

    .line 120
    iget-object v2, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->objCount:[I

    aget v2, v2, v1

    if-nez v2, :cond_15

    goto :goto_1a

    :cond_15
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1a
    :goto_1a
    return v0
.end method

.method public hasResult()Z
    .registers 3

    .line 105
    iget-object v0, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->objCount:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-lez v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    return v1
.end method

.method public hasResult(I)Z
    .registers 5

    if-ltz p1, :cond_34

    .line 110
    iget-object v0, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->probSum:[F

    array-length v0, v0

    if-ge p1, v0, :cond_11

    .line 112
    iget-object v0, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->objCount:[I

    aget p1, v0, p1

    if-lez p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1

    .line 110
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to access index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " on selector of depth "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getDepth()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index may not be nagative but is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Ljava/lang/Object;F)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_6

    return-void

    .line 45
    :cond_6
    iget-object v0, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;FF)V

    return-void
.end method

.method public insert(Ljava/lang/Object;FF)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FF)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;FFI)V

    return-void
.end method

.method public final insert(Ljava/lang/Object;FFI)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FFI)V"
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-lez v1, :cond_4a

    .line 53
    iget-object v1, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->probSum:[F

    array-length v2, v1

    if-ge p4, v2, :cond_4a

    .line 54
    aget v2, v1, p4

    add-float/2addr v2, p2

    aput v2, v1, p4

    .line 55
    iget-object v1, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->negProb:[F

    aget v2, v1, p4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    aput v2, v1, p4

    .line 56
    iget-object v1, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->objCount:[I

    aget v2, v1, p4

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p4

    .line 61
    iget-object v1, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->probSum:[F

    aget v1, v1, p4

    mul-float/2addr p3, v1

    cmpg-float p3, p3, p2

    if-gtz p3, :cond_41

    .line 63
    iget-object p3, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->selected:[Ljava/lang/Object;

    aget-object v1, p3, p4

    .line 64
    iget-object v2, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->selectedProb:[F

    aget v3, v2, p4

    .line 66
    aput-object p1, p3, p4

    .line 67
    aput p2, v2, p4

    cmpg-float p1, v3, v0

    if-gtz p1, :cond_3f

    goto :goto_4a

    :cond_3f
    move-object p1, v1

    move p2, v3

    .line 79
    :cond_41
    iget-object p3, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->random:Ljava/util/Random;

    invoke-virtual {p3}, Ljava/util/Random;->nextFloat()F

    move-result p3

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_4a
    :goto_4a
    return-void
.end method

.method public size()I
    .registers 3

    .line 97
    iget-object v0, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->objCount:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Probability selector selected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_19
    const-string v1, "NOTHING"

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " out of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->objCount:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " objects. Probability sum is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/blueflower/stapel2d/util/ProbabilitySelector;->probSum:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
