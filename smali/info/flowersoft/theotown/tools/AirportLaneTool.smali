###### Class info.flowersoft.theotown.tools.AirportLaneTool (info.flowersoft.theotown.tools.AirportLaneTool)
.class public Linfo/flowersoft/theotown/tools/AirportLaneTool;
.super Linfo/flowersoft/theotown/tools/BuildTool;
.source "AirportLaneTool.java"


# instance fields
.field public airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/BuildTool;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 29
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->bind(Linfo/flowersoft/theotown/city/City;)V

    const/16 v0, 0x13

    .line 31
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/AirportLaneTool;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    return-void
.end method

.method public drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 11

    .line 36
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 38
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/AirportLaneTool;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    iget-object v1, v1, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->laneRoadDrafts:Ljava/util/List;

    iget-object v0, v0, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 39
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 40
    iget-object v0, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    add-int v1, p1, p2

    .line 41
    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2a

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_2c

    :cond_2a
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    :goto_2c
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 43
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/AirportLaneTool;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->isTileInLanes(II)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 44
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_BLUE_DOTTED:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    goto :goto_59

    :cond_41
    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    .line 45
    iget-object p1, v1, Linfo/flowersoft/theotown/tools/AirportLaneTool;->airport:Linfo/flowersoft/theotown/components/airport/DefaultAirport;

    invoke-virtual {p1, v3, v4}, Linfo/flowersoft/theotown/components/airport/DefaultAirport;->isTileInVirtualLanes(II)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 46
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_GREEN_DOTTED:I

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    goto :goto_59

    .line 48
    :cond_53
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_RED_DOTTED:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 51
    :goto_59
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_5e
    return-void
.end method

.method public getIcon()I
    .registers 2

    .line 57
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_AIRPORT:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 24
    const-string v0, "AirportLane"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 62
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xb01

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
