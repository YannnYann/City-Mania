###### Class info.flowersoft.theotown.util.BuildingDraftList (info.flowersoft.theotown.util.BuildingDraftList)
.class public Linfo/flowersoft/theotown/util/BuildingDraftList;
.super Ljava/util/AbstractList;
.source "BuildingDraftList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Linfo/flowersoft/theotown/draft/BuildingDraft;",
        ">;"
    }
.end annotation


# instance fields
.field public final drafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public add(ILinfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 3

    .line 25
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/util/BuildingDraftList;->add(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 12
    check-cast p2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/BuildingDraftList;->add(ILinfo/flowersoft/theotown/draft/BuildingDraft;)V

    return-void
.end method

.method public add(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z
    .registers 5

    .line 30
    iget-object v0, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    iget v1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v2
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 12
    check-cast p1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/BuildingDraftList;->add(Linfo/flowersoft/theotown/draft/BuildingDraft;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .registers 3

    .line 36
    iget-object v0, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 37
    iget-object v0, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 38
    iget-object v0, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6

    .line 43
    iget-object v0, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2f

    iget-object v0, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    const/4 v3, 0x2

    .line 44
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_2f

    :cond_2e
    return v1

    :cond_2f
    :goto_2f
    return v2
.end method

.method public get(I)Linfo/flowersoft/theotown/draft/BuildingDraft;
    .registers 4

    const/4 v0, 0x0

    .line 50
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_22

    const/4 v1, 0x3

    if-ge v0, v1, :cond_22

    .line 51
    iget-object v1, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    :cond_22
    iget-object v1, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/BuildingDraftList;->get(I)Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    return-object p1
.end method

.method public getForLevel(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public isEmpty()Z
    .registers 5

    .line 63
    iget-object v0, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    return v2

    :cond_2e
    return v1
.end method

.method public remove(I)Linfo/flowersoft/theotown/draft/BuildingDraft;
    .registers 4

    const/4 v0, 0x0

    .line 69
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_22

    const/4 v1, 0x3

    if-ge v0, v1, :cond_22

    .line 70
    iget-object v1, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    :cond_22
    iget-object v1, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/util/BuildingDraftList;->remove(I)Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 6

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2f

    iget-object v0, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_2f

    :cond_2e
    return v1

    :cond_2f
    :goto_2f
    return v2
.end method

.method public set(ILinfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/draft/BuildingDraft;
    .registers 5

    const/4 v0, 0x0

    .line 84
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_22

    const/4 v1, 0x3

    if-ge v0, v1, :cond_22

    .line 85
    iget-object v1, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    :cond_22
    iget-object v1, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 12
    check-cast p2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/util/BuildingDraftList;->set(ILinfo/flowersoft/theotown/draft/BuildingDraft;)Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 4

    .line 93
    iget-object v0, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/util/BuildingDraftList;->drafts:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
