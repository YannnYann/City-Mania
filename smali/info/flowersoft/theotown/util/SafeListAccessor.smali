###### Class info.flowersoft.theotown.util.SafeListAccessor (info.flowersoft.theotown.util.SafeListAccessor)
.class public Linfo/flowersoft/theotown/util/SafeListAccessor;
.super Ljava/lang/Object;
.source "SafeListAccessor.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public i:I

.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Linfo/flowersoft/theotown/util/SafeListAccessor;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 23
    :try_start_0
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SafeListAccessor;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSize()I
    .registers 2

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SafeListAccessor;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .registers 5

    .line 35
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SafeListAccessor;->next:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_26

    .line 36
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SafeListAccessor;->list:Ljava/util/List;

    if-nez v0, :cond_b

    return v2

    .line 37
    :cond_b
    iget v3, p0, Linfo/flowersoft/theotown/util/SafeListAccessor;->i:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_26

    .line 39
    :try_start_13
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SafeListAccessor;->list:Ljava/util/List;

    iget v3, p0, Linfo/flowersoft/theotown/util/SafeListAccessor;->i:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/util/SafeListAccessor;->next:Ljava/lang/Object;

    .line 40
    iget v0, p0, Linfo/flowersoft/theotown/util/SafeListAccessor;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/util/SafeListAccessor;->i:I
    :try_end_22
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_13 .. :try_end_22} :catch_23

    goto :goto_26

    :catch_23
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Linfo/flowersoft/theotown/util/SafeListAccessor;->next:Ljava/lang/Object;

    .line 46
    :cond_26
    :goto_26
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SafeListAccessor;->next:Ljava/lang/Object;

    if-eqz v0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    :goto_2c
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Linfo/flowersoft/theotown/util/SafeListAccessor;->reset()V

    return-object p0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SafeListAccessor;->next:Ljava/lang/Object;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Linfo/flowersoft/theotown/util/SafeListAccessor;->next:Ljava/lang/Object;

    return-object v0

    .line 52
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "hasNext() has to be called first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Linfo/flowersoft/theotown/util/SafeListAccessor;->i:I

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Linfo/flowersoft/theotown/util/SafeListAccessor;->next:Ljava/lang/Object;

    return-void
.end method
