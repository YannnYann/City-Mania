###### Class kotlin.collections.AbstractIterator (kotlin.collections.AbstractIterator)
.class public abstract Lkotlin/collections/AbstractIterator;
.super Ljava/lang/Object;
.source "AbstractIterator.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field public nextValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public state:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract computeNext()V
.end method

.method public final done()V
    .registers 2

    const/4 v0, 0x2

    .line 83
    iput v0, p0, Lkotlin/collections/AbstractIterator;->state:I

    return-void
.end method

.method public hasNext()Z
    .registers 3

    .line 31
    iget v0, p0, Lkotlin/collections/AbstractIterator;->state:I

    if-eqz v0, :cond_15

    const/4 v1, 0x1

    if-eq v0, v1, :cond_14

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    return v0

    .line 35
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hasNext called when the iterator is in the FAILED state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    return v1

    .line 34
    :cond_15
    invoke-virtual {p0}, Lkotlin/collections/AbstractIterator;->tryToComputeNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 40
    iget v0, p0, Lkotlin/collections/AbstractIterator;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_b

    .line 41
    iput v2, p0, Lkotlin/collections/AbstractIterator;->state:I

    .line 43
    iget-object v0, p0, Lkotlin/collections/AbstractIterator;->nextValue:Ljava/lang/Object;

    return-object v0

    :cond_b
    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    .line 45
    invoke-virtual {p0}, Lkotlin/collections/AbstractIterator;->tryToComputeNext()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 48
    iput v2, p0, Lkotlin/collections/AbstractIterator;->state:I

    .line 50
    iget-object v0, p0, Lkotlin/collections/AbstractIterator;->nextValue:Ljava/lang/Object;

    return-object v0

    .line 46
    :cond_19
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lkotlin/collections/AbstractIterator;->nextValue:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 76
    iput p1, p0, Lkotlin/collections/AbstractIterator;->state:I

    return-void
.end method

.method public final tryToComputeNext()Z
    .registers 3

    const/4 v0, 0x3

    .line 54
    iput v0, p0, Lkotlin/collections/AbstractIterator;->state:I

    .line 55
    invoke-virtual {p0}, Lkotlin/collections/AbstractIterator;->computeNext()V

    .line 56
    iget v0, p0, Lkotlin/collections/AbstractIterator;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    return v1

    :cond_c
    const/4 v0, 0x0

    return v0
.end method
