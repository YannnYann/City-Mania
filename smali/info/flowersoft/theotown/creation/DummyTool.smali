###### Class info.flowersoft.theotown.creation.DummyTool (info.flowersoft.theotown.creation.DummyTool)
.class public final Linfo/flowersoft/theotown/creation/DummyTool;
.super Linfo/flowersoft/theotown/city/components/Tool;
.source "DummyTool.java"


# instance fields
.field public final groundNeighborhood:Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Tool;-><init>()V

    .line 24
    new-instance v0, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;-><init>(I)V

    iput-object v0, p0, Linfo/flowersoft/theotown/creation/DummyTool;->groundNeighborhood:Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;

    return-void
.end method


# virtual methods
.method public cancelMouse()V
    .registers 1

    .line 0
    return-void
.end method

.method public draw(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 6

    .line 33
    iget-object v0, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/creation/DummyTool;->drawGround(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 37
    iget-object v0, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 39
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 41
    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/city/objects/Tree;->draw(Linfo/flowersoft/theotown/city/Drawer;)V

    :cond_1e
    return-void
.end method

.method public drawEdge(IILinfo/flowersoft/theotown/city/Drawer;I)V
    .registers 6

    .line 146
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Linfo/flowersoft/theotown/city/objects/Ground;->drawEdge(Linfo/flowersoft/theotown/city/Drawer;I)V

    return-void
.end method

.method public drawGround(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 14

    .line 72
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v1

    .line 73
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    .line 74
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_1b

    .line 75
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v4

    goto :goto_1c

    :cond_1b
    move-object v4, v3

    .line 76
    :goto_1c
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/creation/DummyTool;->updateGroundNeighborhood(II)V

    if-eqz v0, :cond_41

    .line 78
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v5

    if-nez v5, :cond_41

    iget-boolean v5, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsSlope:Z

    if-nez v5, :cond_41

    iget-boolean v5, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawWaterBorders:Z

    if-eqz v5, :cond_41

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->isBorder()Z

    move-result v5

    if-eqz v5, :cond_39

    iget-boolean v4, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsTerrain:Z

    if-eqz v4, :cond_41

    .line 79
    :cond_39
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getMaxTerrainLevel()I

    move-result p1

    invoke-virtual {v1, p3, p1}, Linfo/flowersoft/theotown/city/objects/Ground;->drawFlat(Linfo/flowersoft/theotown/city/Drawer;I)V

    return-void

    :cond_41
    if-eqz v2, :cond_57

    .line 80
    iget v0, v2, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v0, :cond_57

    iget v0, p3, Linfo/flowersoft/theotown/city/Drawer;->upDirs:I

    if-nez v0, :cond_57

    iget-object v0, v2, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->drawWaterBorders:Z

    if-eqz v0, :cond_57

    .line 81
    iget p1, v2, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    invoke-virtual {v1, p3, p1}, Linfo/flowersoft/theotown/city/objects/Ground;->drawFlat(Linfo/flowersoft/theotown/city/Drawer;I)V

    return-void

    .line 83
    :cond_57
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->hasLowPartialFlatPart()Z

    move-result v0

    const/16 v2, 0x8

    const/4 v4, 0x1

    if-eqz v0, :cond_b7

    .line 85
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v0

    :goto_64
    if-gt v4, v2, :cond_a2

    .line 87
    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v5

    add-int/2addr v5, p1

    .line 88
    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v6

    add-int/2addr v6, p2

    .line 89
    iget-object v7, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7, v5, v6}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v7

    if-eqz v7, :cond_9f

    .line 90
    iget-object v7, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 91
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v6

    if-nez v6, :cond_9f

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v6

    if-eqz v6, :cond_9f

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v6

    if-ne v6, v0, :cond_9f

    .line 92
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v3

    .line 93
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v5

    if-ne v3, v5, :cond_9f

    goto :goto_a2

    :cond_9f
    shl-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 97
    :cond_a2
    :goto_a2
    iget-object v6, p0, Linfo/flowersoft/theotown/creation/DummyTool;->groundNeighborhood:Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 99
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGroundDraft2(II)Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v7

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGroundFrame2(II)I

    move-result v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p3

    .line 97
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/city/objects/Ground;->draw(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;Linfo/flowersoft/theotown/draft/GroundDraft;I)V

    return-void

    :cond_b7
    move v9, v2

    move-object v2, p3

    move p3, v9

    .line 100
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->hasHighPartialFlatPart()Z

    move-result v0

    if-eqz v0, :cond_11a

    .line 102
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v0

    move v5, v4

    :goto_c5
    if-gt v5, p3, :cond_101

    .line 104
    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v6

    add-int/2addr v6, p1

    .line 105
    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v7

    add-int/2addr v7, p2

    .line 106
    iget-object v8, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8, v6, v7}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v8

    if-eqz v8, :cond_103

    .line 107
    iget-object v8, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v6

    .line 108
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v7

    if-nez v7, :cond_103

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v7

    if-eqz v7, :cond_103

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v7

    add-int/lit8 v8, v0, 0x1

    if-ne v7, v8, :cond_103

    .line 109
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v3

    .line 110
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v6

    if-ne v3, v6, :cond_103

    :cond_101
    move-object v4, v3

    goto :goto_106

    :cond_103
    shl-int/lit8 v5, v5, 0x1

    goto :goto_c5

    .line 114
    :goto_106
    iget-object v6, p0, Linfo/flowersoft/theotown/creation/DummyTool;->groundNeighborhood:Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;

    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 116
    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGroundDraft2(II)Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v7

    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGroundFrame2(II)I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 114
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/city/objects/Ground;->draw(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;Linfo/flowersoft/theotown/draft/GroundDraft;I)V

    return-void

    .line 118
    :cond_11a
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->isBorder()Z

    move-result v0

    if-eqz v0, :cond_161

    :goto_120
    if-gt v4, p3, :cond_148

    .line 121
    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 122
    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v5

    add-int/2addr v5, p2

    .line 123
    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v0, v5}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v6

    if-eqz v6, :cond_14a

    .line 124
    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v6

    invoke-virtual {v6, v0, v5}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v5

    if-eqz v5, :cond_14a

    .line 126
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v3

    :cond_148
    move-object v5, v3

    goto :goto_14d

    :cond_14a
    shl-int/lit8 v4, v4, 0x1

    goto :goto_120

    .line 131
    :goto_14d
    iget-object v6, p0, Linfo/flowersoft/theotown/creation/DummyTool;->groundNeighborhood:Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;

    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 133
    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGroundDraft2(II)Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v7

    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGroundFrame2(II)I

    move-result v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 131
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/city/objects/Ground;->draw(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;Linfo/flowersoft/theotown/draft/GroundDraft;I)V

    return-void

    .line 136
    :cond_161
    iget-object v6, p0, Linfo/flowersoft/theotown/creation/DummyTool;->groundNeighborhood:Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;

    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 138
    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGroundDraft2(II)Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v7

    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGroundFrame2(II)I

    move-result v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 136
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/city/objects/Ground;->draw(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;Linfo/flowersoft/theotown/draft/GroundDraft;I)V

    return-void
.end method

.method public getIcon()I
    .registers 2

    .line 171
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_BUILD:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 28
    const-string v0, "Dummy"

    return-object v0
.end method

.method public getMiniatureColor(Lio/blueflower/stapel2d/drawing/Color;Linfo/flowersoft/theotown/city/Tiles;IIIZ)V
    .registers 7

    .line 0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 166
    const-string v0, "DummyTool"

    return-object v0
.end method

.method public mouseMove(IIFFFFZ)V
    .registers 8

    .line 0
    return-void
.end method

.method public onClick(IIFFII)V
    .registers 7

    .line 0
    return-void
.end method

.method public update()V
    .registers 1

    .line 0
    return-void
.end method

.method public final updateGroundNeighborhood(II)V
    .registers 9

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v0

    .line 50
    iget-object v1, p0, Linfo/flowersoft/theotown/creation/DummyTool;->groundNeighborhood:Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->reset(Linfo/flowersoft/theotown/city/objects/Ground;)V

    .line 51
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v0

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/GroundDraft;->blending:Z

    if-eqz v0, :cond_6a

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->groundBlending:Z

    if-nez v0, :cond_1c

    goto :goto_6a

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    const/16 v1, 0x8

    if-gt v0, v1, :cond_6a

    .line 54
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v1

    add-int/2addr v1, p1

    .line 55
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v2

    add-int/2addr v2, p2

    .line 56
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 57
    iget-object v3, p0, Linfo/flowersoft/theotown/creation/DummyTool;->groundNeighborhood:Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->addGround(Linfo/flowersoft/theotown/city/objects/Ground;F)V

    .line 60
    :cond_44
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 61
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 62
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 63
    iget-object v3, p0, Linfo/flowersoft/theotown/creation/DummyTool;->groundNeighborhood:Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->addGround(Linfo/flowersoft/theotown/city/objects/Ground;F)V

    :cond_67
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_6a
    :goto_6a
    return-void
.end method
