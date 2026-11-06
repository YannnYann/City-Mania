###### Class info.flowersoft.theotown.util.MultiList (info.flowersoft.theotown.util.MultiList)
.class public Linfo/flowersoft/theotown/util/MultiList;
.super Ljava/lang/Object;
.source "MultiList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/util/MultiList$SingleList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public activeLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/MultiList<",
            "TE;>.Single",
            "List;",
            ">;"
        }
    .end annotation
.end field

.field public inactiveLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/util/MultiList<",
            "TE;>.Single",
            "List;",
            ">;"
        }
    .end annotation
.end field

.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/MultiList;->list:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Linfo/flowersoft/theotown/util/SortedList;

    new-instance v1, Linfo/flowersoft/theotown/util/MultiList$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/util/MultiList$1;-><init>(Linfo/flowersoft/theotown/util/MultiList;)V

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SortedList;-><init>(Linfo/flowersoft/theotown/util/SortedList$Interpreter;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/MultiList;->activeLists:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/MultiList;->inactiveLists:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/util/MultiList;)Ljava/util/List;
    .registers 1

    .line 11
    iget-object p0, p0, Linfo/flowersoft/theotown/util/MultiList;->activeLists:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/util/MultiList;I)I
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/MultiList;->alloc(I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/util/MultiList;)Ljava/util/ArrayList;
    .registers 1

    .line 11
    iget-object p0, p0, Linfo/flowersoft/theotown/util/MultiList;->list:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/util/MultiList;)Ljava/util/List;
    .registers 1

    .line 11
    iget-object p0, p0, Linfo/flowersoft/theotown/util/MultiList;->inactiveLists:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final alloc(I)I
    .registers 7

    .line 41
    iget-object v0, p0, Linfo/flowersoft/theotown/util/MultiList;->activeLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    move v0, v1

    .line 42
    :goto_a
    iget-object v2, p0, Linfo/flowersoft/theotown/util/MultiList;->activeLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 43
    iget-object v2, p0, Linfo/flowersoft/theotown/util/MultiList;->activeLists:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/util/MultiList$SingleList;

    add-int v3, v0, p1

    .line 44
    invoke-static {v2}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->access$000(Linfo/flowersoft/theotown/util/MultiList$SingleList;)I

    move-result v4

    if-le v3, v4, :cond_26

    .line 45
    invoke-static {v2}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->access$100(Linfo/flowersoft/theotown/util/MultiList$SingleList;)I

    move-result v0

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_29
    move v1, v0

    .line 49
    :cond_2a
    :goto_2a
    iget-object v0, p0, Linfo/flowersoft/theotown/util/MultiList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int v2, v1, p1

    if-ge v0, v2, :cond_3b

    iget-object v0, p0, Linfo/flowersoft/theotown/util/MultiList;->list:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_3b
    return v1
.end method

.method public clear()V
    .registers 4

    .line 79
    iget-object v0, p0, Linfo/flowersoft/theotown/util/MultiList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 80
    :goto_6
    iget-object v1, p0, Linfo/flowersoft/theotown/util/MultiList;->activeLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    iget-object v1, p0, Linfo/flowersoft/theotown/util/MultiList;->inactiveLists:Ljava/util/List;

    iget-object v2, p0, Linfo/flowersoft/theotown/util/MultiList;->activeLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/util/MultiList$SingleList;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 81
    :cond_1e
    iget-object v0, p0, Linfo/flowersoft/theotown/util/MultiList;->activeLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public mix(Linfo/flowersoft/theotown/util/MultiList$SingleList;Linfo/flowersoft/theotown/util/MultiList$SingleList;)Linfo/flowersoft/theotown/util/MultiList$SingleList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/MultiList<",
            "TE;>.Single",
            "List;",
            "Linfo/flowersoft/theotown/util/MultiList<",
            "TE;>.Single",
            "List;",
            ")",
            "Linfo/flowersoft/theotown/util/MultiList<",
            "TE;>.Single",
            "List;"
        }
    .end annotation

    .line 54
    invoke-virtual {p2}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v1

    if-le v0, v1, :cond_d

    move-object v9, p2

    move-object p2, p1

    move-object p1, v9

    .line 60
    :cond_d
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v0

    .line 61
    invoke-virtual {p2}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v1

    const/4 v2, 0x0

    .line 62
    :goto_16
    invoke-virtual {p2}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 63
    invoke-virtual {p2, v2}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 65
    :cond_26
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v1, v3, :cond_42

    move v4, v0

    :goto_2e
    if-ge v4, v2, :cond_42

    sub-int v5, v4, v0

    int-to-long v5, v5

    add-int/lit8 v7, v2, -0x1

    int-to-long v7, v7

    mul-long/2addr v5, v7

    add-int/lit8 v7, v1, -0x1

    int-to-long v7, v7

    .line 69
    div-long/2addr v5, v7

    long-to-int v5, v5

    .line 70
    invoke-virtual {p1, v4, v5}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->swap(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 74
    :cond_42
    invoke-virtual {p2}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->free()V

    return-object p1
.end method

.method public newList()Linfo/flowersoft/theotown/util/MultiList$SingleList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Linfo/flowersoft/theotown/util/MultiList<",
            "TE;>.Single",
            "List;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Linfo/flowersoft/theotown/util/MultiList;->inactiveLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 27
    new-instance v0, Linfo/flowersoft/theotown/util/MultiList$SingleList;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/util/MultiList$SingleList;-><init>(Linfo/flowersoft/theotown/util/MultiList;)V

    goto :goto_1c

    .line 29
    :cond_e
    iget-object v0, p0, Linfo/flowersoft/theotown/util/MultiList;->inactiveLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/util/MultiList$SingleList;

    :goto_1c
    const/16 v1, 0x8

    .line 32
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/util/MultiList;->alloc(I)I

    move-result v2

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->access$002(Linfo/flowersoft/theotown/util/MultiList$SingleList;I)I

    .line 33
    invoke-static {v0}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->access$000(Linfo/flowersoft/theotown/util/MultiList$SingleList;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->access$102(Linfo/flowersoft/theotown/util/MultiList$SingleList;I)I

    const/4 v1, 0x0

    .line 34
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->access$202(Linfo/flowersoft/theotown/util/MultiList$SingleList;I)I

    .line 35
    iget-object v1, p0, Linfo/flowersoft/theotown/util/MultiList;->activeLists:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

###### Class info.flowersoft.theotown.util.MultiList.AnonymousClass1 (info.flowersoft.theotown.util.MultiList$1)
.class Linfo/flowersoft/theotown/util/MultiList$1;
.super Ljava/lang/Object;
.source "MultiList.java"

# interfaces
.implements Linfo/flowersoft/theotown/util/SortedList$Interpreter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/MultiList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Linfo/flowersoft/theotown/util/SortedList$Interpreter<",
        "Linfo/flowersoft/theotown/util/MultiList<",
        "TE;>.Single",
        "List;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/util/MultiList;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/MultiList;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 15
    iput-object p1, p0, Linfo/flowersoft/theotown/util/MultiList$1;->this$0:Linfo/flowersoft/theotown/util/MultiList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interprete(Linfo/flowersoft/theotown/util/MultiList$SingleList;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/util/MultiList<",
            "TE;>.Single",
            "List;",
            ")I"
        }
    .end annotation

    .line 18
    invoke-static {p1}, Linfo/flowersoft/theotown/util/MultiList$SingleList;->access$000(Linfo/flowersoft/theotown/util/MultiList$SingleList;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic interprete(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 15
    check-cast p1, Linfo/flowersoft/theotown/util/MultiList$SingleList;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/MultiList$1;->interprete(Linfo/flowersoft/theotown/util/MultiList$SingleList;)I

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.util.MultiList.SingleList (info.flowersoft.theotown.util.MultiList$SingleList)
.class public Linfo/flowersoft/theotown/util/MultiList$SingleList;
.super Ljava/lang/Object;
.source "MultiList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/util/MultiList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SingleList"
.end annotation


# instance fields
.field public end:I

.field public size:I

.field public start:I

.field public final synthetic this$0:Linfo/flowersoft/theotown/util/MultiList;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/util/MultiList;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 84
    iput-object p1, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->this$0:Linfo/flowersoft/theotown/util/MultiList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/util/MultiList$SingleList;)I
    .registers 1

    .line 84
    iget p0, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->start:I

    return p0
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/util/MultiList$SingleList;I)I
    .registers 2

    .line 84
    iput p1, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->start:I

    return p1
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/util/MultiList$SingleList;)I
    .registers 1

    .line 84
    iget p0, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->end:I

    return p0
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/util/MultiList$SingleList;I)I
    .registers 2

    .line 84
    iput p1, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->end:I

    return p1
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/util/MultiList$SingleList;I)I
    .registers 2

    .line 84
    iput p1, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size:I

    return p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 90
    iget v0, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->start:I

    iget v1, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size:I

    add-int/2addr v0, v1

    iget v1, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->end:I

    if-lt v0, v1, :cond_51

    .line 91
    iget-object v0, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->this$0:Linfo/flowersoft/theotown/util/MultiList;

    invoke-static {v0}, Linfo/flowersoft/theotown/util/MultiList;->access$300(Linfo/flowersoft/theotown/util/MultiList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 92
    iget v0, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->start:I

    .line 93
    iget-object v1, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->this$0:Linfo/flowersoft/theotown/util/MultiList;

    iget v2, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/MultiList;->access$400(Linfo/flowersoft/theotown/util/MultiList;I)I

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->start:I

    const/4 v1, 0x0

    .line 94
    :goto_21
    iget v2, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size:I

    if-ge v1, v2, :cond_41

    .line 95
    iget-object v2, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->this$0:Linfo/flowersoft/theotown/util/MultiList;

    invoke-static {v2}, Linfo/flowersoft/theotown/util/MultiList;->access$500(Linfo/flowersoft/theotown/util/MultiList;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->start:I

    add-int/2addr v3, v1

    iget-object v4, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->this$0:Linfo/flowersoft/theotown/util/MultiList;

    invoke-static {v4}, Linfo/flowersoft/theotown/util/MultiList;->access$500(Linfo/flowersoft/theotown/util/MultiList;)Ljava/util/ArrayList;

    move-result-object v4

    add-int v5, v0, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 97
    :cond_41
    iget v0, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->start:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->end:I

    .line 98
    iget-object v0, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->this$0:Linfo/flowersoft/theotown/util/MultiList;

    invoke-static {v0}, Linfo/flowersoft/theotown/util/MultiList;->access$300(Linfo/flowersoft/theotown/util/MultiList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_51
    iget-object v0, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->this$0:Linfo/flowersoft/theotown/util/MultiList;

    invoke-static {v0}, Linfo/flowersoft/theotown/util/MultiList;->access$500(Linfo/flowersoft/theotown/util/MultiList;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->start:I

    iget v2, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget p1, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 127
    :goto_2
    iget v2, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size:I

    if-ge v1, v2, :cond_1a

    .line 128
    iget-object v2, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->this$0:Linfo/flowersoft/theotown/util/MultiList;

    invoke-static {v2}, Linfo/flowersoft/theotown/util/MultiList;->access$500(Linfo/flowersoft/theotown/util/MultiList;)Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->start:I

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_17

    const/4 p1, 0x1

    return p1

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1a
    return v0
.end method

.method public free()V
    .registers 5

    .line 117
    iget-object v0, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->this$0:Linfo/flowersoft/theotown/util/MultiList;

    invoke-static {v0}, Linfo/flowersoft/theotown/util/MultiList;->access$300(Linfo/flowersoft/theotown/util/MultiList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 118
    :goto_a
    iget v1, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size:I

    if-ge v0, v1, :cond_1e

    iget-object v1, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->this$0:Linfo/flowersoft/theotown/util/MultiList;

    invoke-static {v1}, Linfo/flowersoft/theotown/util/MultiList;->access$500(Linfo/flowersoft/theotown/util/MultiList;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->start:I

    add-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 119
    :cond_1e
    iget-object v0, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->this$0:Linfo/flowersoft/theotown/util/MultiList;

    invoke-static {v0}, Linfo/flowersoft/theotown/util/MultiList;->access$600(Linfo/flowersoft/theotown/util/MultiList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->this$0:Linfo/flowersoft/theotown/util/MultiList;

    invoke-static {v0}, Linfo/flowersoft/theotown/util/MultiList;->access$500(Linfo/flowersoft/theotown/util/MultiList;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->start:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 109
    iget v0, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .registers 2

    .line 105
    iget v0, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->size:I

    return v0
.end method

.method public swap(II)V
    .registers 5

    .line 123
    iget-object v0, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->this$0:Linfo/flowersoft/theotown/util/MultiList;

    invoke-static {v0}, Linfo/flowersoft/theotown/util/MultiList;->access$500(Linfo/flowersoft/theotown/util/MultiList;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/util/MultiList$SingleList;->start:I

    add-int/2addr p1, v1

    add-int/2addr v1, p2

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    return-void
.end method
