###### Class info.flowersoft.theotown.tools.AlertTool (info.flowersoft.theotown.tools.AlertTool)
.class public abstract Linfo/flowersoft/theotown/tools/AlertTool;
.super Linfo/flowersoft/theotown/tools/BuildTool;
.source "AlertTool.java"


# instance fields
.field public final type:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 19
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/BuildTool;-><init>()V

    .line 20
    iput p1, p0, Linfo/flowersoft/theotown/tools/AlertTool;->type:I

    return-void
.end method


# virtual methods
.method public drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 11

    .line 61
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetHover:Z

    if-eqz v0, :cond_3c

    iget v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetX:I

    if-ne v0, p1, :cond_3c

    iget v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetY:I

    if-ne v0, p2, :cond_3c

    .line 62
    iget-object v0, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->hasVisibleRoad(II)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_1f

    :cond_1d
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    :goto_1f
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 63
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_BLOB:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 64
    iget-object p1, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_3c
    return-void
.end method

.method public drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z
    .registers 6

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2, p4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p4

    if-nez p4, :cond_a

    const/4 p1, 0x0

    return p1

    .line 53
    :cond_a
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->isGroundWater(II)Z

    move-result v0

    invoke-virtual {p4, p3, v0}, Linfo/flowersoft/theotown/city/objects/Road;->draw(Linfo/flowersoft/theotown/city/Drawer;Z)V

    .line 54
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->traffic:Linfo/flowersoft/theotown/components/DefaultTraffic;

    invoke-virtual {v0, p1, p2, p4, p3}, Linfo/flowersoft/theotown/components/DefaultTraffic;->drawRoad(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 55
    invoke-virtual {p4, p3}, Linfo/flowersoft/theotown/city/objects/Road;->drawForeground(Linfo/flowersoft/theotown/city/Drawer;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getCursorType()Linfo/flowersoft/theotown/ui/CursorType;
    .registers 2

    .line 25
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Crosshair:Linfo/flowersoft/theotown/ui/CursorType;

    return-object v0
.end method

.method public mouseMove(IIFFFFZ)V
    .registers 8

    .line 35
    invoke-super/range {p0 .. p7}, Linfo/flowersoft/theotown/tools/DefaultTool;->mouseMove(IIFFFFZ)V

    return-void
.end method

.method public onClick(IIFFII)V
    .registers 7

    .line 40
    new-instance p3, Linfo/flowersoft/theotown/city/MapArea;

    invoke-direct {p3}, Linfo/flowersoft/theotown/city/MapArea;-><init>()V

    .line 41
    iget-object p4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result p4

    .line 42
    iget-object p5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p3, p5, p1, p2, p4}, Linfo/flowersoft/theotown/city/MapArea;->addObject(Linfo/flowersoft/theotown/city/Tiles;III)V

    .line 43
    iget-object p5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int/lit8 p4, p4, 0x1

    invoke-virtual {p3, p5, p1, p2, p4}, Linfo/flowersoft/theotown/city/MapArea;->addObject(Linfo/flowersoft/theotown/city/Tiles;III)V

    .line 44
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 p2, 0x7

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultTraffic;

    .line 45
    iget p2, p0, Linfo/flowersoft/theotown/tools/AlertTool;->type:I

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultTraffic;->addOrRemovePlaceOfAction(ILinfo/flowersoft/theotown/city/MapArea;)V

    return-void
.end method
