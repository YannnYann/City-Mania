###### Class info.flowersoft.theotown.stages.gameuibuilder.collectors.RawBuildingCollector (info.flowersoft.theotown.stages.gameuibuilder.collectors.RawBuildingCollector)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;
.super Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;
.source "RawBuildingCollector.java"


# instance fields
.field public icon:I

.field public titleId:I

.field public type:Linfo/flowersoft/theotown/draft/BuildingType;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;ILinfo/flowersoft/theotown/draft/BuildingType;I)V
    .registers 5

    .line 28
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 29
    iput p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;->titleId:I

    .line 30
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;->type:Linfo/flowersoft/theotown/draft/BuildingType;

    .line 31
    iput p4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;->icon:I

    return-void
.end method


# virtual methods
.method public collect(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_5f

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-lez v0, :cond_13

    .line 50
    new-instance v2, Linfo/flowersoft/theotown/ui/selectable/Separator;

    invoke-direct {v2}, Linfo/flowersoft/theotown/ui/selectable/Separator;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_13
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->BUILDINGS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 54
    iget-object v4, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;->type:Linfo/flowersoft/theotown/draft/BuildingType;

    if-ne v4, v5, :cond_19

    iget v4, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    add-int/lit8 v4, v4, -0x1

    if-ne v4, v0, :cond_19

    .line 55
    iget-boolean v4, v3, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    if-nez v4, :cond_19

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 59
    :cond_39
    new-instance v2, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector$1;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 70
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 71
    new-instance v3, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v3, v4, v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_5f
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;->type:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->INDUSTRIAL:Linfo/flowersoft/theotown/draft/BuildingType;

    if-ne v0, v1, :cond_d8

    .line 76
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/Separator;

    invoke-direct {v0}, Linfo/flowersoft/theotown/ui/selectable/Separator;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->FARMS:Linfo/flowersoft/theotown/util/BuildingDraftList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_73
    :goto_73
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 79
    iget-boolean v2, v1, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    if-nez v2, :cond_73

    new-instance v2, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, v3, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_73

    .line 82
    :cond_8e
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/Separator;

    invoke-direct {v0}, Linfo/flowersoft/theotown/ui/selectable/Separator;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->HARBOR_PIERS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9c
    :goto_9c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 85
    iget-boolean v2, v1, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    if-nez v2, :cond_9c

    new-instance v2, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, v3, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 87
    :cond_b7
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->HARBORS:Linfo/flowersoft/theotown/util/BuildingDraftList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_bd
    :goto_bd
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 88
    iget-boolean v2, v1, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    if-nez v2, :cond_bd

    new-instance v2, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v2, v3, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableRawBuildingDraft;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    :cond_d8
    return-void
.end method

.method public getIconId()I
    .registers 2

    .line 41
    iget v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;->icon:I

    return v0
.end method

.method public getNameId()I
    .registers 2

    .line 36
    iget v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;->titleId:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 95
    const-string v0, "RawBuldingCollector"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.collectors.RawBuildingCollector.AnonymousClass1 (info.flowersoft.theotown.stages.gameuibuilder.collectors.RawBuildingCollector$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector$1;
.super Ljava/lang/Object;
.source "RawBuildingCollector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;->collect(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Linfo/flowersoft/theotown/draft/BuildingDraft;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 59
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Linfo/flowersoft/theotown/draft/BuildingDraft;Linfo/flowersoft/theotown/draft/BuildingDraft;)I
    .registers 5

    .line 62
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getArea()I

    move-result v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getArea()I

    move-result v1

    if-eq v0, v1, :cond_14

    .line 63
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getArea()I

    move-result p1

    invoke-virtual {p2}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getArea()I

    move-result p2

    sub-int/2addr p1, p2

    return p1

    .line 65
    :cond_14
    iget v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    iget p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    add-int/2addr v0, p1

    iget p1, p2, Linfo/flowersoft/theotown/draft/BuildingDraft;->habitants:I

    sub-int/2addr v0, p1

    iget p1, p2, Linfo/flowersoft/theotown/draft/BuildingDraft;->workers:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
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

    .line 59
    check-cast p1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    check-cast p2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RawBuildingCollector$1;->compare(Linfo/flowersoft/theotown/draft/BuildingDraft;Linfo/flowersoft/theotown/draft/BuildingDraft;)I

    move-result p1

    return p1
.end method
