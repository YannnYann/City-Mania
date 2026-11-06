###### Class io.blueflower.stapel2d.util.IntQueue (io.blueflower.stapel2d.util.IntQueue)
.class public final Lio/blueflower/stapel2d/util/IntQueue;
.super Ljava/lang/Object;
.source "IntQueue.java"


# instance fields
.field public array:[I

.field public i:I

.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0x20

    .line 14
    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/util/IntQueue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-array p1, p1, [I

    iput-object p1, p0, Lio/blueflower/stapel2d/util/IntQueue;->array:[I

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lio/blueflower/stapel2d/util/IntQueue;->size:I

    .line 20
    iput p1, p0, Lio/blueflower/stapel2d/util/IntQueue;->i:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .registers 7

    .line 24
    iget v0, p0, Lio/blueflower/stapel2d/util/IntQueue;->size:I

    iget-object v1, p0, Lio/blueflower/stapel2d/util/IntQueue;->array:[I

    array-length v2, v1

    if-lt v0, v2, :cond_29

    .line 25
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    add-int/lit8 v0, v0, -0x1

    :goto_e
    if-ltz v0, :cond_23

    .line 27
    iget v2, p0, Lio/blueflower/stapel2d/util/IntQueue;->i:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lio/blueflower/stapel2d/util/IntQueue;->array:[I

    array-length v4, v3

    add-int/2addr v2, v4

    array-length v4, v3

    rem-int/2addr v2, v4

    iput v2, p0, Lio/blueflower/stapel2d/util/IntQueue;->i:I

    .line 28
    aget v2, v3, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 30
    :cond_23
    iget v0, p0, Lio/blueflower/stapel2d/util/IntQueue;->size:I

    iput v0, p0, Lio/blueflower/stapel2d/util/IntQueue;->i:I

    .line 31
    iput-object v1, p0, Lio/blueflower/stapel2d/util/IntQueue;->array:[I

    .line 33
    :cond_29
    iget-object v0, p0, Lio/blueflower/stapel2d/util/IntQueue;->array:[I

    iget v1, p0, Lio/blueflower/stapel2d/util/IntQueue;->i:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 34
    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, Lio/blueflower/stapel2d/util/IntQueue;->i:I

    .line 35
    iget p1, p0, Lio/blueflower/stapel2d/util/IntQueue;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/blueflower/stapel2d/util/IntQueue;->size:I

    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lio/blueflower/stapel2d/util/IntQueue;->size:I

    .line 46
    iput v0, p0, Lio/blueflower/stapel2d/util/IntQueue;->i:I

    return-void
.end method

.method public isEmpty()Z
    .registers 2

    .line 50
    iget v0, p0, Lio/blueflower/stapel2d/util/IntQueue;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public remove()I
    .registers 5

    .line 39
    iget v0, p0, Lio/blueflower/stapel2d/util/IntQueue;->i:I

    iget v1, p0, Lio/blueflower/stapel2d/util/IntQueue;->size:I

    sub-int/2addr v0, v1

    iget-object v2, p0, Lio/blueflower/stapel2d/util/IntQueue;->array:[I

    array-length v3, v2

    add-int/2addr v0, v3

    array-length v3, v2

    rem-int/2addr v0, v3

    add-int/lit8 v1, v1, -0x1

    .line 40
    iput v1, p0, Lio/blueflower/stapel2d/util/IntQueue;->size:I

    .line 41
    aget v0, v2, v0

    return v0
.end method
