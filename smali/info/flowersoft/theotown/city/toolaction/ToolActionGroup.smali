###### Class info.flowersoft.theotown.city.toolaction.ToolActionGroup (info.flowersoft.theotown.city.toolaction.ToolActionGroup)
.class public Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;
.super Ljava/lang/Object;
.source "ToolActionGroup.java"


# instance fields
.field public actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/toolaction/ToolAction;",
            ">;"
        }
    .end annotation
.end field

.field public groupedActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/toolaction/ToolAction;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->actions:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->groupedActions:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(ILinfo/flowersoft/theotown/city/toolaction/ToolAction;)V
    .registers 6

    .line 26
    iget-object v0, p0, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_34

    iget-object v0, p0, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_34

    :cond_11
    const/4 v0, 0x0

    move v1, v0

    :goto_13
    if-ge v0, p1, :cond_25

    .line 32
    iget-object v2, p0, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->groupedActions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 36
    :cond_25
    iget-object p1, p0, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->actions:Ljava/util/List;

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 37
    iget-object p1, p0, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->groupedActions:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    .line 27
    :cond_34
    :goto_34
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    return-void
.end method

.method public add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V
    .registers 3

    .line 17
    iget-object v0, p0, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->actions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->groupedActions:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V
    .registers 3

    .line 22
    filled-new-array {p1, p2}, [Linfo/flowersoft/theotown/city/toolaction/ToolAction;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Ljava/util/List;)V

    return-void
.end method

.method public add(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/toolaction/ToolAction;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 43
    iget-object v0, p0, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->actions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    iget-object v0, p0, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->groupedActions:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    return-void
.end method

.method public clear()V
    .registers 2

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    iget-object v0, p0, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->groupedActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public get(I)Linfo/flowersoft/theotown/city/toolaction/ToolAction;
    .registers 3

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->actions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/toolaction/ToolAction;

    return-object p1
.end method

.method public get(II)Linfo/flowersoft/theotown/city/toolaction/ToolAction;
    .registers 7

    const/4 v0, 0x0

    if-ltz p1, :cond_38

    .line 71
    iget-object v1, p0, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->groupedActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_c

    goto :goto_38

    .line 72
    :cond_c
    iget-object v1, p0, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->groupedActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    .line 74
    :goto_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_38

    .line 75
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/toolaction/ToolAction;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2a

    add-int/lit8 v2, v2, 0x1

    :cond_2a
    add-int/lit8 v3, p2, 0x1

    if-ne v2, v3, :cond_35

    .line 77
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/toolaction/ToolAction;

    return-object p1

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_38
    :goto_38
    return-object v0
.end method

.method public groupSize(I)I
    .registers 5

    const/4 v0, 0x0

    if-ltz p1, :cond_2d

    .line 57
    iget-object v1, p0, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->groupedActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_c

    goto :goto_2d

    .line 59
    :cond_c
    iget-object v1, p0, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->groupedActions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    move v1, v0

    .line 60
    :goto_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 61
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/toolaction/ToolAction;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_29

    add-int/lit8 v1, v1, 0x1

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2c
    return v1

    :cond_2d
    :goto_2d
    return v0
.end method

.method public groups()I
    .registers 2

    .line 53
    iget-object v0, p0, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->groupedActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->actions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
