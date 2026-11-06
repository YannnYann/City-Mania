###### Class ads_mobile_sdk.i (ads_mobile_sdk.i)
.class abstract Lads_mobile_sdk/i;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/yh1$f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;",
        "Lads_mobile_sdk/yh1$f<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    .line 33
    invoke-direct {p0, v0}, Lads_mobile_sdk/i;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 71
    iput-boolean p1, p0, Lads_mobile_sdk/i;->a:Z

    return-void
.end method

.method private d()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 123
    iget-boolean v0, p0, Lads_mobile_sdk/i;->a:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lads_mobile_sdk/i;->a:Z

    :cond_7
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 106
    invoke-virtual {p0}, Lads_mobile_sdk/i;->c()V

    .line 107
    invoke-super {p0, p1, p2}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lads_mobile_sdk/i;->c()V

    .line 207
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public b()Z
    .registers 2

    .line 118
    iget-boolean v0, p0, Lads_mobile_sdk/i;->a:Z

    return v0
.end method

.method public final c()V
    .registers 2

    .line 173
    iget-boolean v0, p0, Lads_mobile_sdk/i;->a:Z

    if-nez v0, :cond_7

    .line 174
    invoke-direct {p0}, Lads_mobile_sdk/i;->d()V

    :cond_7
    return-void
.end method

.method public clear()V
    .registers 1

    .line 112
    invoke-virtual {p0}, Lads_mobile_sdk/i;->c()V

    .line 113
    invoke-super {p0}, Ljava/util/AbstractList;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 50
    :cond_4
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 56
    :cond_a
    instance-of v1, p1, Ljava/util/RandomAccess;

    if-nez v1, :cond_13

    .line 57
    invoke-super {p0, p1}, Ljava/util/AbstractList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 60
    :cond_13
    check-cast p1, Ljava/util/List;

    .line 61
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_20

    return v2

    :cond_20
    move v3, v2

    :goto_21
    if-ge v3, v1, :cond_35

    .line 66
    invoke-virtual {p0, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    return v2

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_35
    return v0
.end method

.method public abstract remove(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 138
    invoke-virtual {p0}, Lads_mobile_sdk/i;->c()V

    .line 139
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    const/4 p1, 0x0

    return p1

    .line 143
    :cond_c
    invoke-virtual {p0, p1}, Lads_mobile_sdk/i;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lads_mobile_sdk/i;->c()V

    .line 151
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lads_mobile_sdk/i;->c()V

    .line 158
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
