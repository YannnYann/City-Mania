###### Class info.flowersoft.theotown.stages.gameuibuilder.collectors.RemoveCollector (info.flowersoft.theotown.stages.gameuibuilder.collectors.RemoveCollector)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/RemoveCollector;
.super Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;
.source "RemoveCollector.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 23
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

    .line 38
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRemover;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableRemover;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableZoneRemover;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableZoneRemover;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectablePipeRemover;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectablePipeRemover;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableTunnelRemover;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableTunnelRemover;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableUndergroundWireRemove;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableUndergroundWireRemove;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationRemover;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableRoadDecorationRemover;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableMetroRemover;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableMetroRemover;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableFenceRemover;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/collectors/SelectableCollector;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableFenceRemover;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getIconId()I
    .registers 2

    .line 33
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    return v0
.end method

.method public getNameId()I
    .registers 2

    .line 0
    const/16 v0, 0x53d

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 50
    const-string v0, "RemoveCollector"

    return-object v0
.end method
