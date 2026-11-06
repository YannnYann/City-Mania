###### Class info.flowersoft.theotown.tools.EyeDropperTool (info.flowersoft.theotown.tools.EyeDropperTool)
.class public Linfo/flowersoft/theotown/tools/EyeDropperTool;
.super Linfo/flowersoft/theotown/tools/BuildTool;
.source "EyeDropperTool.java"


# instance fields
.field public final onSelect:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/BuildTool;-><init>()V

    .line 24
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/EyeDropperTool;->onSelect:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method


# virtual methods
.method public drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 11

    .line 57
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetHover:Z

    if-eqz v0, :cond_4e

    iget v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetX:I

    if-ne v0, p1, :cond_4e

    iget v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetY:I

    if-ne v0, p2, :cond_4e

    .line 58
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 59
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    .line 60
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v1

    .line 62
    iget-object v2, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-eqz v0, :cond_2e

    .line 63
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->pickable:Z

    if-nez v0, :cond_36

    :cond_2e
    if-eqz v1, :cond_39

    iget-object v0, v1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->pickable:Z

    if-eqz v0, :cond_39

    .line 65
    :cond_36
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_3b

    :cond_39
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    .line 62
    :goto_3b
    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 66
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_BLOB:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 67
    iget-object p1, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_4e
    return-void
.end method

.method public getIcon()I
    .registers 2

    .line 73
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE_DROPPER:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 29
    const-string v0, "EyeDropper"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x885

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final notifySelect(Linfo/flowersoft/theotown/draft/Draft;)V
    .registers 5

    .line 47
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/EyeDropperTool;->onSelect:Lio/blueflower/stapel2d/util/Setter;

    if-eqz v0, :cond_18

    .line 48
    new-instance v0, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Linfo/flowersoft/theotown/ui/selectable/SelectableResolver;->resolve(Linfo/flowersoft/theotown/draft/Draft;ZLio/blueflower/stapel2d/drawing/Color;)Linfo/flowersoft/theotown/ui/selectable/SelectableDraft;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/EyeDropperTool;->onSelect:Lio/blueflower/stapel2d/util/Setter;

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method public onClick(IIFFII)V
    .registers 7

    .line 34
    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p3

    .line 35
    iget-object p4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p4, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p3, :cond_36

    .line 37
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p2

    iget-boolean p2, p2, Linfo/flowersoft/theotown/draft/BuildingDraft;->pickable:Z

    if-eqz p2, :cond_36

    .line 38
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/EyeDropperTool;->notifySelect(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 39
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    new-instance p2, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object p4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p2, p4}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p4

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Building;->getFrame()I

    move-result p3

    invoke-virtual {p2, p4, p3}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/draft/BuildingDraft;I)Linfo/flowersoft/theotown/tools/BuildTool;

    move-result-object p2

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void

    :cond_36
    if-eqz p1, :cond_53

    .line 40
    iget-object p2, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean p3, p2, Linfo/flowersoft/theotown/draft/RoadDraft;->pickable:Z

    if-eqz p3, :cond_53

    .line 41
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/tools/EyeDropperTool;->notifySelect(Linfo/flowersoft/theotown/draft/Draft;)V

    .line 42
    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    new-instance p3, Linfo/flowersoft/theotown/tools/ToolResolver;

    iget-object p4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p3, p4}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-virtual {p3, p1}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/draft/RoadDraft;)Linfo/flowersoft/theotown/tools/RoadTool;

    move-result-object p1

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    :cond_53
    return-void
.end method
