###### Class info.flowersoft.theotown.ui.selectable.SelectableCategory (info.flowersoft.theotown.ui.selectable.SelectableCategory)
.class public Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;
.super Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;
.source "SelectableCategory.java"


# instance fields
.field public final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;"
        }
    .end annotation
.end field

.field public final draft:Linfo/flowersoft/theotown/draft/CategoryDraft;

.field public markNewChildren:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/CategoryDraft;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->children:Ljava/util/List;

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->markNewChildren:Z

    if-eqz p2, :cond_12

    .line 26
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->draft:Linfo/flowersoft/theotown/draft/CategoryDraft;

    return-void

    .line 25
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Category was not found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addChild(Linfo/flowersoft/theotown/ui/Selectable;)V
    .registers 3

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addChildren(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 34
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/ui/Selectable;

    .line 35
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->addChild(Linfo/flowersoft/theotown/ui/Selectable;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public getChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->children:Ljava/util/List;

    return-object v0
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/CategoryDraft;
    .registers 2

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->draft:Linfo/flowersoft/theotown/draft/CategoryDraft;

    return-object v0
.end method

.method public bridge synthetic getDraft()Linfo/flowersoft/theotown/draft/Draft;
    .registers 2

    .line 15
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->getDraft()Linfo/flowersoft/theotown/draft/CategoryDraft;

    move-result-object v0

    return-object v0
.end method

.method public getPrice()J
    .registers 3

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public markNewChildren()Z
    .registers 2

    .line 54
    iget-boolean v0, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->markNewChildren:Z

    return v0
.end method

.method public setMarkNewChildren(Z)V
    .registers 2

    .line 58
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/selectable/SelectableCategory;->markNewChildren:Z

    return-void
.end method
