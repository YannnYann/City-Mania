###### Class info.flowersoft.theotown.util.CompoundLinkedList (info.flowersoft.theotown.util.CompoundLinkedList)
.class public Linfo/flowersoft/theotown/util/CompoundLinkedList;
.super Ljava/util/AbstractList;
.source "CompoundLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public lists:[Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/LinkedList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 5

    .line 17
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    if-lez p1, :cond_19

    .line 21
    new-array v0, p1, [Ljava/util/LinkedList;

    iput-object v0, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList;->lists:[Ljava/util/LinkedList;

    const/4 v0, 0x0

    :goto_a
    if-ge v0, p1, :cond_18

    .line 23
    iget-object v1, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList;->lists:[Ljava/util/LinkedList;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_18
    return-void

    .line 19
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number of parts must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/util/CompoundLinkedList;)[Ljava/util/LinkedList;
    .registers 1

    .line 13
    iget-object p0, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList;->lists:[Ljava/util/LinkedList;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList;->lists:[Ljava/util/LinkedList;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    .line 30
    :goto_6
    iget-object v2, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList;->lists:[Ljava/util/LinkedList;

    array-length v3, v2

    if-ge v1, v3, :cond_1e

    .line 31
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1b

    iget-object v0, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList;->lists:[Ljava/util/LinkedList;

    aget-object v0, v0, v1

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 33
    :cond_1e
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList;->lists:[Ljava/util/LinkedList;

    array-length v2, v1

    if-ge v0, v2, :cond_23

    .line 39
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, p1, :cond_1a

    .line 40
    iget-object v1, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList;->lists:[Ljava/util/LinkedList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    :cond_1a
    iget-object v1, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList;->lists:[Ljava/util/LinkedList;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_23
    const/4 p1, 0x0

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Linfo/flowersoft/theotown/util/CompoundLinkedList$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/util/CompoundLinkedList$1;-><init>(Linfo/flowersoft/theotown/util/CompoundLinkedList;)V

    return-object v0
.end method

.method public iterator(I)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList;->lists:[Ljava/util/LinkedList;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public parts()I
    .registers 2

    .line 58
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList;->lists:[Ljava/util/LinkedList;

    array-length v0, v0

    return v0
.end method

.method public size()I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 51
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList;->lists:[Ljava/util/LinkedList;

    array-length v3, v2

    if-ge v0, v3, :cond_c

    .line 52
    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    return v1
.end method

###### Class info.flowersoft.theotown.util.CompoundLinkedList.AnonymousClass1 (info.flowersoft.theotown.util.CompoundLinkedList$1)
.class Linfo/flowersoft/theotown/util/CompoundLinkedList$1;
.super Ljava/lang/Object;
.source "CompoundLinkedList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/util/CompoundLinkedList;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field public its:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Iterator<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Linfo/flowersoft/theotown/util/CompoundLinkedList;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/CompoundLinkedList;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 63
    iput-object p1, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList$1;->this$0:Linfo/flowersoft/theotown/util/CompoundLinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList$1;->its:Ljava/util/List;

    .line 67
    invoke-static {p1}, Linfo/flowersoft/theotown/util/CompoundLinkedList;->access$000(Linfo/flowersoft/theotown/util/CompoundLinkedList;)[Ljava/util/LinkedList;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList$1;->it:Ljava/util/Iterator;

    const/4 p1, 0x1

    .line 68
    :goto_1a
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList$1;->this$0:Linfo/flowersoft/theotown/util/CompoundLinkedList;

    invoke-static {v0}, Linfo/flowersoft/theotown/util/CompoundLinkedList;->access$000(Linfo/flowersoft/theotown/util/CompoundLinkedList;)[Ljava/util/LinkedList;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_37

    .line 69
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList$1;->its:Ljava/util/List;

    iget-object v1, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList$1;->this$0:Linfo/flowersoft/theotown/util/CompoundLinkedList;

    invoke-static {v1}, Linfo/flowersoft/theotown/util/CompoundLinkedList;->access$000(Linfo/flowersoft/theotown/util/CompoundLinkedList;)[Ljava/util/LinkedList;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1a

    .line 71
    :cond_37
    iget-object p1, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList$1;->its:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    .line 76
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList$1;->it:Ljava/util/Iterator;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 79
    :cond_c
    :goto_c
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList$1;->it:Ljava/util/Iterator;

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_22

    .line 80
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList$1;->its:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList$1;->it:Ljava/util/Iterator;

    goto :goto_c

    .line 82
    :cond_22
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList$1;->it:Ljava/util/Iterator;

    if-eqz v0, :cond_27

    return v1

    :cond_27
    return v2
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList$1;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .line 93
    iget-object v0, p0, Linfo/flowersoft/theotown/util/CompoundLinkedList$1;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
