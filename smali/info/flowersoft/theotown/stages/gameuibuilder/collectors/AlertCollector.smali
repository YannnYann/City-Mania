###### Class info.flowersoft.theotown.stages.gameuibuilder.collectors.AlertCollector (info.flowersoft.theotown.stages.gameuibuilder.collectors.AlertCollector)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/AlertCollector;
.super Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;
.source "AlertCollector.java"


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public collect(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/ui/Selectable;",
            ">;)V"
        }
    .end annotation

    .line 39
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectablePoliceAlert;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectablePoliceAlert;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableFireAlert;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableFireAlert;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableMedicAlert;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableMedicAlert;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableSWATAlert;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableSWATAlert;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableGarbageAlert;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableGarbageAlert;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRocketTool;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableRocketTool;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/AlertCollector;->list:Ljava/util/List;

    return-void
.end method

.method public getIconId()I
    .registers 2

    .line 34
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ALERT:I

    return v0
.end method

.method public getNameId()I
    .registers 2

    .line 0
    const/16 v0, 0x4f4

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 51
    const-string v0, "AlertCollector"

    return-object v0
.end method

.method public isVisible()Z
    .registers 4

    .line 56
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/AlertCollector;->list:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    move v0, v1

    .line 57
    :goto_6
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/AlertCollector;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 58
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/AlertCollector;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/ui/Selectable;

    .line 59
    invoke-interface {v2}, Linfo/flowersoft/theotown/ui/Selectable;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_21
    return v1
.end method
