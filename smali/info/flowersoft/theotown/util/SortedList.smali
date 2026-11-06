###### Class info.flowersoft.theotown.util.SortedList (info.flowersoft.theotown.util.SortedList)
.class public Linfo/flowersoft/theotown/util/SortedList;
.super Ljava/util/ArrayList;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/util/SortedList$Interpreter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final interpreter:Linfo/flowersoft/theotown/util/SortedList$Interpreter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Linfo/flowersoft/theotown/util/SortedList$Interpreter<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/SortedList$Interpreter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/SortedList$Interpreter<",
            "TE;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object p1, p0, Linfo/flowersoft/theotown/util/SortedList;->interpreter:Linfo/flowersoft/theotown/util/SortedList$Interpreter;

    return-void
.end method


# virtual methods
.method public absoluteContains(Ljava/lang/Object;)Z
    .registers 2

    .line 102
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/SortedList;->absoluteIndexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public absoluteIndexOf(Ljava/lang/Object;)I
    .registers 5

    const/4 v0, -0x1

    if-eqz p1, :cond_1f

    .line 116
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_1f

    :cond_a
    const/4 v1, 0x0

    .line 119
    :goto_b
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 120
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1f
    :goto_1f
    return v0
.end method

.method public absoluteRemove(Ljava/lang/Object;)Z
    .registers 2

    .line 106
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/SortedList;->absoluteIndexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_b

    .line 108
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-eqz p1, :cond_11

    .line 21
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SortedList;->interpreter:Linfo/flowersoft/theotown/util/SortedList$Interpreter;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/util/SortedList$Interpreter;->interprete(Ljava/lang/Object;)I

    move-result v0

    .line 22
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/util/SortedList;->getIndexOfValue(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    .line 19
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "May not add null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2

    .line 59
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 130
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public getIndexOfValue(I)I
    .registers 7

    .line 29
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_29

    add-int v2, v1, v0

    .line 32
    div-int/lit8 v2, v2, 0x2

    .line 34
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_16

    .line 36
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    goto :goto_5

    .line 40
    :cond_16
    iget-object v4, p0, Linfo/flowersoft/theotown/util/SortedList;->interpreter:Linfo/flowersoft/theotown/util/SortedList$Interpreter;

    invoke-interface {v4, v3}, Linfo/flowersoft/theotown/util/SortedList$Interpreter;->interprete(Ljava/lang/Object;)I

    move-result v3

    if-le v3, p1, :cond_20

    move v0, v2

    goto :goto_5

    :cond_20
    if-ge v3, p1, :cond_26

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_5

    :cond_26
    move v0, v2

    move v1, v0

    goto :goto_5

    :cond_29
    return v1
.end method

.method public getValue(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Linfo/flowersoft/theotown/util/SortedList;->interpreter:Linfo/flowersoft/theotown/util/SortedList$Interpreter;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/util/SortedList$Interpreter;->interprete(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 8

    const/4 v0, -0x1

    if-eqz p1, :cond_50

    .line 75
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_50

    .line 79
    :cond_a
    iget-object v1, p0, Linfo/flowersoft/theotown/util/SortedList;->interpreter:Linfo/flowersoft/theotown/util/SortedList$Interpreter;

    invoke-interface {v1, p1}, Linfo/flowersoft/theotown/util/SortedList$Interpreter;->interprete(Ljava/lang/Object;)I

    move-result v1

    .line 80
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/util/SortedList;->getIndexOfValue(I)I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_16
    if-ltz v3, :cond_31

    .line 82
    invoke-virtual {p0, v3}, Linfo/flowersoft/theotown/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_31

    .line 83
    iget-object v5, p0, Linfo/flowersoft/theotown/util/SortedList;->interpreter:Linfo/flowersoft/theotown/util/SortedList$Interpreter;

    invoke-interface {v5, v4}, Linfo/flowersoft/theotown/util/SortedList$Interpreter;->interprete(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v1, :cond_27

    goto :goto_31

    .line 85
    :cond_27
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    return v3

    :cond_2e
    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    .line 89
    :cond_31
    :goto_31
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v2, v3, :cond_50

    .line 90
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/util/SortedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_50

    .line 91
    iget-object v4, p0, Linfo/flowersoft/theotown/util/SortedList;->interpreter:Linfo/flowersoft/theotown/util/SortedList$Interpreter;

    invoke-interface {v4, v3}, Linfo/flowersoft/theotown/util/SortedList$Interpreter;->interprete(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v1, :cond_46

    goto :goto_50

    .line 93
    :cond_46
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    return v2

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_50
    :goto_50
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 2

    .line 64
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_b

    .line 66
    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

###### Class info.flowersoft.theotown.util.SortedList.Interpreter (info.flowersoft.theotown.util.SortedList$Interpreter)
.class public interface abstract Linfo/flowersoft/theotown/util/SortedList$Interpreter;
.super Ljava/lang/Object;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/SortedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Interpreter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract interprete(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation
.end method
