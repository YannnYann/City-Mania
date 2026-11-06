###### Class info.flowersoft.theotown.tools.DefaultTool (info.flowersoft.theotown.tools.DefaultTool)
.class public Linfo/flowersoft/theotown/tools/DefaultTool;
.super Linfo/flowersoft/theotown/city/components/Tool;
.source "DefaultTool.java"


# instance fields
.field public final buildIndicators:Lio/blueflower/stapel2d/util/IntList;

.field public colorBuf:Lio/blueflower/stapel2d/drawing/Color;

.field public coloring:Linfo/flowersoft/theotown/city/miniatureview/MiniatureViewColoring;

.field public drawUnderground:Z

.field public drawnTargetHover:Z

.field public drawnTargetX:I

.field public drawnTargetY:I

.field public final groundBorders:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final groundNeighborhood:Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;

.field public final groundSnowOverlay:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

.field public lod:Linfo/flowersoft/theotown/city/components/LODController;

.field public modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

.field public final roadSnowOverlay:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public soundManager:Linfo/flowersoft/theotown/components/DefaultSoundManager;

.field public traffic:Linfo/flowersoft/theotown/components/DefaultTraffic;

.field public useZoneSetting:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 94
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/components/Tool;-><init>()V

    .line 60
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Color;->copy()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->colorBuf:Lio/blueflower/stapel2d/drawing/Color;

    .line 73
    const-string v0, "$groundborder"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 72
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->groundBorders:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 75
    const-string v0, "$anim_road_snow_overlay00"

    .line 76
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 75
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->roadSnowOverlay:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 78
    const-string v0, "$anim_ground_snow_overlay00"

    .line 79
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 78
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->groundSnowOverlay:Linfo/flowersoft/theotown/draft/AnimationDraft;

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->useZoneSetting:Z

    .line 90
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->buildIndicators:Lio/blueflower/stapel2d/util/IntList;

    .line 92
    new-instance v0, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;-><init>(I)V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->groundNeighborhood:Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;

    .line 95
    new-instance v0, Linfo/flowersoft/theotown/city/miniatureview/DefaultMiniatureViewColoring;

    invoke-direct {v0}, Linfo/flowersoft/theotown/city/miniatureview/DefaultMiniatureViewColoring;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->coloring:Linfo/flowersoft/theotown/city/miniatureview/MiniatureViewColoring;

    return-void
.end method


# virtual methods
.method public final addIndicator(IIIIII)V
    .registers 8

    .line 905
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->buildIndicators:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p3}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 906
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->buildIndicators:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p3, p4}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 907
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->buildIndicators:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p3, p5}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 908
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->buildIndicators:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p3, p6}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 909
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->buildIndicators:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p3, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 910
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->buildIndicators:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    return-void
.end method

.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 129
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/city/components/CityComponent;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 130
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;-><init>(Linfo/flowersoft/theotown/city/City;Z)V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v0, 0x7

    .line 131
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultTraffic;

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->traffic:Linfo/flowersoft/theotown/components/DefaultTraffic;

    const/4 v0, 0x2

    .line 132
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultInfluence;

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    const/16 v0, 0xf

    .line 133
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultSoundManager;

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->soundManager:Linfo/flowersoft/theotown/components/DefaultSoundManager;

    .line 134
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getLod()Linfo/flowersoft/theotown/city/components/LODController;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->lod:Linfo/flowersoft/theotown/city/components/LODController;

    return-void
.end method

.method public calculatePollutionColor(II)V
    .registers 8

    .line 1074
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->renderPollution:Z

    const/16 v1, 0xff

    if-eqz v0, :cond_59

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v0

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/GroundDraft;->pollution:Z

    if-eqz v0, :cond_59

    .line 1075
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    sget-object v2, Linfo/flowersoft/theotown/city/components/InfluenceType;->POLLUTION:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, p1, p2, v2}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluence(III)F

    move-result v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1076
    iget-object v3, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    sget-object v4, Linfo/flowersoft/theotown/city/components/InfluenceType;->RADIOACTIVITY:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v3, p1, p2, v4}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluence(III)F

    move-result p1

    mul-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 1078
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->colorBuf:Lio/blueflower/stapel2d/drawing/Color;

    mul-int/lit8 v2, v0, 0x20

    mul-int/lit8 p1, p1, 0x8

    add-int/2addr v2, p1

    const/16 p1, 0xc80

    .line 1080
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x50

    rsub-int p1, p1, 0xff

    mul-int/lit8 v0, v0, 0x30

    div-int/lit8 v0, v0, 0x50

    rsub-int v0, v0, 0xff

    div-int/lit8 v2, v2, 0x50

    .line 1078
    invoke-virtual {p2, v1, p1, v0, v2}, Lio/blueflower/stapel2d/drawing/Color;->setTo(IIII)Lio/blueflower/stapel2d/drawing/Color;

    return-void

    .line 1084
    :cond_59
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->colorBuf:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v1, v1, v1, v1}, Lio/blueflower/stapel2d/drawing/Color;->setTo(IIII)Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public cancelMouse()V
    .registers 2

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetHover:Z

    return-void
.end method

.method public draw(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 154
    iget-object v4, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v4

    .line 155
    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v5

    .line 156
    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_29

    .line 157
    iget-object v9, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v9, v1, v2, v7}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v9

    goto :goto_2a

    :cond_29
    move-object v9, v8

    :goto_2a
    if-eqz v9, :cond_39

    .line 158
    iget v10, v9, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-eqz v10, :cond_38

    iget v11, v3, Linfo/flowersoft/theotown/city/Drawer;->upDirs:I

    invoke-static {v10, v11}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v10

    if-eqz v10, :cond_39

    :cond_38
    move-object v9, v8

    :cond_39
    const/4 v10, 0x0

    if-eqz v6, :cond_43

    .line 159
    iget-object v11, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v11, v1, v2, v10}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v11

    goto :goto_44

    :cond_43
    move-object v11, v8

    :goto_44
    const/4 v12, 0x1

    if-eqz v6, :cond_4e

    .line 160
    iget-object v13, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v13, v1, v2, v12}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v13

    goto :goto_4f

    :cond_4e
    move-object v13, v8

    :goto_4f
    const/4 v14, 0x2

    if-eqz v6, :cond_58

    .line 161
    iget-object v8, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v8, v1, v2, v14}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v8

    .line 162
    :cond_58
    iget-object v15, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v15, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v15

    .line 163
    iget-object v14, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v14, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getShip(II)Linfo/flowersoft/theotown/city/objects/Ship;

    move-result-object v14

    move/from16 v16, v12

    .line 164
    iget-object v12, v3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 166
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/Drawer;->isTileVisible()Z

    move-result v17

    if-eqz v5, :cond_79

    .line 167
    iget v10, v3, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v5, v1, v2, v10}, Linfo/flowersoft/theotown/city/objects/Building;->isPivot(III)Z

    move-result v10

    if-eqz v10, :cond_79

    move/from16 v10, v16

    goto :goto_7a

    :cond_79
    const/4 v10, 0x0

    :goto_7a
    if-eqz v10, :cond_85

    .line 168
    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/city/Drawer;->isBuildingVisible(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result v18

    if-eqz v18, :cond_85

    move/from16 v18, v16

    goto :goto_87

    :cond_85
    const/16 v18, 0x0

    :goto_87
    if-nez v5, :cond_133

    if-eqz v17, :cond_133

    .line 171
    iget-object v7, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v7, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->hasFence(II)Z

    move-result v7

    if-eqz v7, :cond_96

    .line 172
    invoke-virtual {v0, v3, v1, v2, v4}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawFenceBG(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;)V

    :cond_96
    if-eqz v9, :cond_9e

    const/4 v7, -0x1

    .line 176
    invoke-virtual {v0, v1, v2, v3, v7}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z

    move-result v7

    goto :goto_9f

    :cond_9e
    const/4 v7, 0x0

    :goto_9f
    if-nez v7, :cond_d6

    if-eqz v11, :cond_b1

    .line 178
    iget v7, v11, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v7, :cond_b1

    iget-object v7, v11, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v7, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->drawGround:Z

    if-nez v7, :cond_b1

    iget v7, v3, Linfo/flowersoft/theotown/city/Drawer;->upDirs:I

    if-eqz v7, :cond_d6

    .line 179
    :cond_b1
    invoke-virtual/range {p0 .. p2}, Linfo/flowersoft/theotown/tools/DefaultTool;->calculatePollutionColor(II)V

    .line 181
    iget-object v7, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->colorBuf:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v12, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 182
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawGround(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 183
    sget-object v7, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v12, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 185
    iget-object v7, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v7, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v7

    if-eqz v7, :cond_d6

    const/16 v7, 0x40

    .line 187
    invoke-virtual {v12, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 188
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawZone(IILinfo/flowersoft/theotown/city/Drawer;)V

    const/16 v7, 0xff

    .line 189
    invoke-virtual {v12, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    :cond_d6
    if-eqz v11, :cond_f9

    .line 193
    sget-object v7, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v12, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 194
    iget-object v7, v11, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v9, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->drawWaterGround:Z

    if-eqz v9, :cond_e6

    .line 195
    invoke-virtual {v0, v1, v2, v7, v3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawRoadWaterGround(IILinfo/flowersoft/theotown/draft/RoadDraft;Linfo/flowersoft/theotown/city/Drawer;)V

    :cond_e6
    const/4 v7, 0x0

    .line 197
    invoke-virtual {v0, v1, v2, v3, v7}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z

    .line 198
    iget-object v7, v11, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v9, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->drawGround:Z

    if-eqz v9, :cond_fb

    iget v9, v11, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v9, :cond_fb

    iget-boolean v7, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->drawWaterBorders:Z

    if-eqz v7, :cond_f9

    goto :goto_fb

    :cond_f9
    const/4 v9, 0x0

    goto :goto_111

    .line 199
    :cond_fb
    :goto_fb
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTerrainBorders(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 200
    iget-object v7, v11, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->waterBorderFrames:[I

    const/4 v9, 0x0

    if-eqz v7, :cond_108

    aget v7, v7, v9

    goto :goto_10e

    :cond_108
    iget-object v7, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->groundBorders:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v7, v7, v9

    .line 201
    :goto_10e
    invoke-virtual {v0, v1, v2, v3, v7}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawWaterGroundBorders(IILinfo/flowersoft/theotown/city/Drawer;I)V

    .line 205
    :goto_111
    iget-object v7, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v7, v1, v2, v9}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v7

    if-eqz v7, :cond_11c

    .line 207
    invoke-virtual {v0, v1, v2, v7, v3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawWire(IILinfo/flowersoft/theotown/city/objects/Wire;Linfo/flowersoft/theotown/city/Drawer;)V

    :cond_11c
    if-eqz v14, :cond_123

    .line 210
    iget-object v7, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->traffic:Linfo/flowersoft/theotown/components/DefaultTraffic;

    invoke-virtual {v7, v1, v2, v14, v3}, Linfo/flowersoft/theotown/components/DefaultTraffic;->drawShip(IILinfo/flowersoft/theotown/city/objects/Ship;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 212
    :cond_123
    iget-object v7, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v7, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->hasFence(II)Z

    move-result v7

    if-eqz v7, :cond_12e

    .line 213
    invoke-virtual {v0, v3, v1, v2, v4}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawFenceFG(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;)V

    :cond_12e
    move-object/from16 v20, v8

    const/4 v9, 0x0

    goto/16 :goto_237

    :cond_133
    if-eqz v18, :cond_12e

    .line 216
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v4

    .line 217
    invoke-virtual {v0, v1, v2, v5, v3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuildingFenceBG(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 218
    iget-boolean v7, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawGround:Z

    if-eqz v7, :cond_1e0

    .line 219
    iget-boolean v7, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsSlope:Z

    if-nez v7, :cond_156

    .line 220
    iget-boolean v7, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawWaterBorders:Z

    if-eqz v7, :cond_153

    iget-boolean v7, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsWater:Z

    if-nez v7, :cond_153

    iget-boolean v4, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->needsLand:Z

    if-eqz v4, :cond_153

    .line 221
    invoke-virtual {v0, v1, v2, v5, v3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuildingWaterGroundBorders(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 223
    :cond_153
    invoke-virtual {v0, v1, v2, v5, v3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuildingTerrainGroundBorders(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 225
    :cond_156
    iget-object v4, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v1, v2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v4

    .line 226
    iget-object v7, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7, v1, v2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result v7

    .line 227
    iget v9, v3, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v5, v9}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualWidth(I)I

    move-result v9

    .line 228
    iget v11, v3, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v5, v11}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualHeight(I)I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    :goto_170
    if-ltz v11, :cond_1da

    const/4 v14, 0x0

    :goto_173
    if-ge v14, v9, :cond_1cb

    move/from16 v18, v4

    .line 232
    iget-object v4, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    move/from16 v19, v7

    add-int v7, v14, v18

    move-object/from16 v20, v8

    add-int v8, v11, v19

    invoke-virtual {v4, v7, v8}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v4

    move/from16 v21, v9

    .line 233
    iget-object v9, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v9, v7, v8}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v7

    .line 234
    invoke-virtual {v3, v4, v7}, Linfo/flowersoft/theotown/city/Drawer;->setRealTile(II)V

    .line 237
    invoke-virtual {v0, v4, v7}, Linfo/flowersoft/theotown/tools/DefaultTool;->calculatePollutionColor(II)V

    .line 239
    iget-object v8, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->colorBuf:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v12, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 240
    invoke-virtual {v0, v4, v7, v3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawGround(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 241
    sget-object v8, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v12, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 243
    iget-object v8, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v8, v4, v7}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v8

    if-eqz v8, :cond_1be

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v8

    iget-boolean v8, v8, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawZone:Z

    if-eqz v8, :cond_1be

    const/16 v8, 0x40

    .line 244
    invoke-virtual {v12, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 245
    invoke-virtual {v0, v4, v7, v3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawZone(IILinfo/flowersoft/theotown/city/Drawer;)V

    const/16 v7, 0xff

    .line 246
    invoke-virtual {v12, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    goto :goto_1c0

    :cond_1be
    const/16 v8, 0x40

    :goto_1c0
    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v18

    move/from16 v7, v19

    move-object/from16 v8, v20

    move/from16 v9, v21

    goto :goto_173

    :cond_1cb
    move/from16 v18, v4

    move/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v9

    const/16 v8, 0x40

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v8, v20

    goto :goto_170

    :cond_1da
    move-object/from16 v20, v8

    .line 250
    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/city/Drawer;->setRealTile(II)V

    goto :goto_1ef

    :cond_1e0
    move-object/from16 v20, v8

    .line 252
    iget-boolean v4, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawWaterGround:Z

    if-eqz v4, :cond_1e9

    invoke-virtual {v0, v1, v2, v5, v3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuildingWaterGround(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 253
    :cond_1e9
    invoke-virtual {v0, v1, v2, v5, v3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuildingWaterGroundBorders(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 254
    invoke-virtual {v0, v1, v2, v5, v3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuildingTerrainGroundBorders(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 257
    :goto_1ef
    invoke-virtual/range {p0 .. p2}, Linfo/flowersoft/theotown/tools/DefaultTool;->calculatePollutionColor(II)V

    .line 258
    iget-object v4, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->colorBuf:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v12, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 261
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuilding(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 262
    iget-boolean v4, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetHover:Z

    if-eqz v4, :cond_233

    sget-boolean v4, Linfo/flowersoft/theotown/resources/Settings;->highlightHoveredBuilding:Z

    if-eqz v4, :cond_233

    sget-object v4, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 263
    invoke-interface {v4}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v4

    sget-object v7, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v4, v7, :cond_233

    iget v4, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetX:I

    iget v7, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetY:I

    .line 264
    invoke-virtual {v5, v4, v7}, Linfo/flowersoft/theotown/city/objects/Building;->containsTile(II)Z

    move-result v4

    if-eqz v4, :cond_233

    const/16 v7, 0xff

    .line 266
    invoke-virtual {v12, v7, v7, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    const/16 v4, 0x28

    .line 267
    invoke-virtual {v12, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 268
    invoke-virtual {v12, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 269
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuilding(IILinfo/flowersoft/theotown/city/Drawer;)V

    const/4 v9, 0x0

    .line 270
    invoke-virtual {v12, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 271
    invoke-virtual {v12, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 272
    iget-object v4, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->colorBuf:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v12, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_234

    :cond_233
    const/4 v9, 0x0

    .line 275
    :goto_234
    invoke-virtual {v0, v1, v2, v5, v3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuildingFenceFG(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V

    :goto_237
    if-eqz v15, :cond_246

    .line 279
    iget-object v4, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->colorBuf:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v12, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 280
    invoke-virtual {v0, v1, v2, v15, v3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTree(IILinfo/flowersoft/theotown/city/objects/Tree;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 281
    sget-object v4, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v12, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_246
    if-eqz v13, :cond_24d

    move/from16 v4, v16

    .line 285
    invoke-virtual {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z

    :cond_24d
    if-nez v5, :cond_25a

    .line 288
    iget-object v4, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object v4

    if-eqz v4, :cond_25a

    .line 289
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawRail(IILinfo/flowersoft/theotown/city/Drawer;)V

    :cond_25a
    if-eqz v20, :cond_260

    const/4 v4, 0x2

    .line 293
    invoke-virtual {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z

    .line 296
    :cond_260
    iget-object v4, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v7, 0x1

    invoke-virtual {v4, v1, v2, v7}, Linfo/flowersoft/theotown/city/Tiles;->getWire(III)Linfo/flowersoft/theotown/city/objects/Wire;

    move-result-object v4

    if-eqz v4, :cond_26c

    .line 298
    invoke-virtual {v0, v1, v2, v4, v3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawWire(IILinfo/flowersoft/theotown/city/objects/Wire;Linfo/flowersoft/theotown/city/Drawer;)V

    :cond_26c
    if-eqz v6, :cond_282

    const/4 v4, 0x3

    .line 302
    :goto_26f
    iget v7, v6, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    if-gt v4, v7, :cond_282

    .line 303
    iget-object v7, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v7, v1, v2, v4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v7

    if-nez v7, :cond_27c

    goto :goto_27f

    .line 306
    :cond_27c
    invoke-virtual {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z

    :goto_27f
    add-int/lit8 v4, v4, 0x1

    goto :goto_26f

    :cond_282
    if-eqz v10, :cond_2ce

    .line 311
    iget-object v4, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v1, v2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v4

    .line 312
    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v1, v2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result v1

    .line 313
    iget v2, v3, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v5, v2}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualWidth(I)I

    move-result v2

    .line 314
    iget v6, v3, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualHeight(I)I

    move-result v5

    const/16 v16, 0x1

    add-int/lit8 v5, v5, -0x1

    :goto_2a0
    if-ltz v5, :cond_2d9

    move v7, v9

    :goto_2a3
    if-ge v7, v2, :cond_2cb

    .line 318
    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    add-int v8, v7, v4

    add-int v10, v5, v1

    invoke-virtual {v6, v8, v10}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v6

    .line 319
    iget-object v11, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v11, v8, v10}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v8

    .line 321
    iget-object v10, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v10, v6, v8}, Linfo/flowersoft/theotown/city/Tiles;->getFlyingObject(II)Linfo/flowersoft/theotown/city/objects/FlyingObject;

    move-result-object v10

    if-eqz v10, :cond_2c8

    int-to-float v10, v7

    int-to-float v11, v5

    .line 323
    invoke-virtual {v3, v10, v11}, Linfo/flowersoft/theotown/city/Drawer;->addShiftToTile(FF)V

    .line 324
    invoke-virtual {v0, v6, v8, v3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawHelicopter(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 325
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/Drawer;->resetShift()V

    :cond_2c8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a3

    :cond_2cb
    add-int/lit8 v5, v5, -0x1

    goto :goto_2a0

    .line 330
    :cond_2ce
    iget-object v4, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, v1, v2}, Linfo/flowersoft/theotown/city/Tiles;->getFlyingObject(II)Linfo/flowersoft/theotown/city/objects/FlyingObject;

    move-result-object v4

    if-eqz v4, :cond_2d9

    .line 332
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawHelicopter(IILinfo/flowersoft/theotown/city/Drawer;)V

    :cond_2d9
    return-void
.end method

.method public drawAfter(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 4

    .line 1105
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultSigns;

    .line 1107
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->lod:Linfo/flowersoft/theotown/city/components/LODController;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/components/LODController;->drawSigns()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1108
    iget-object p1, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Linfo/flowersoft/theotown/components/DefaultSigns;->drawSigns(Lio/blueflower/stapel2d/drawing/Engine;Z)V

    :cond_18
    return-void
.end method

.method public drawBefore(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 2

    .line 1100
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->buildIndicators:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    return-void
.end method

.method public drawBuilding(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 11

    .line 935
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_73

    .line 940
    :cond_9
    invoke-virtual {v0, p3}, Linfo/flowersoft/theotown/city/objects/Building;->draw(Linfo/flowersoft/theotown/city/Drawer;)V

    .line 942
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v1

    if-eqz v1, :cond_28

    :cond_18
    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->ringBuildIndicator:Z

    if-eqz v1, :cond_28

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v1

    if-nez v1, :cond_28

    .line 943
    invoke-virtual {p0, p3, v0}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawConstructionProgress(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/city/objects/Building;)V

    goto :goto_39

    .line 944
    :cond_28
    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Building;->_IDLE_ID:I

    if-eqz v1, :cond_39

    .line 945
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/components/DefaultIdleGame;

    invoke-virtual {v1, p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->drawBuilding(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 948
    :cond_39
    :goto_39
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    .line 949
    iget-object v2, v1, Linfo/flowersoft/theotown/draft/Draft;->drawMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

    if-eqz v2, :cond_73

    .line 950
    iget-object v2, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 951
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v3

    .line 952
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v4

    .line 953
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getMaxTerrainLevel()I

    move-result v5

    mul-int/lit8 v5, v5, -0xc

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {p3, v6, v5}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 954
    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->drawMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

    const/4 v5, 0x0

    invoke-virtual {v1, p1, p2, v5}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(III)Z

    .line 955
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getMaxTerrainLevel()I

    move-result p1

    mul-int/lit8 p1, p1, 0xc

    int-to-float p1, p1

    invoke-virtual {p3, v6, p1}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 956
    invoke-virtual {v2, v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 957
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 p1, 0xff

    .line 958
    invoke-virtual {v2, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    :cond_73
    :goto_73
    return-void
.end method

.method public drawBuildingFenceBG(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 13

    .line 338
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v0

    .line 339
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result p1

    .line 341
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 342
    iget-boolean p2, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawUnderground:Z

    if-eqz p2, :cond_1a

    iget-object p2, p4, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0x64

    invoke-virtual {p2, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 344
    :cond_1a
    iget p2, p4, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {p3, p2}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualWidth(I)I

    move-result p2

    .line 345
    iget v1, p4, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {p3, v1}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualHeight(I)I

    move-result p3

    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_2c
    if-ge v3, v1, :cond_68

    add-int/lit8 v4, v3, 0x1

    if-lt v4, p2, :cond_3a

    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v5, p3, -0x1

    sub-int v6, v4, p2

    sub-int/2addr v5, v6

    goto :goto_3b

    :cond_3a
    move v5, v2

    :goto_3b
    int-to-float v6, v3

    int-to-float v7, v5

    .line 356
    invoke-virtual {p4, v6, v7}, Linfo/flowersoft/theotown/city/Drawer;->addShiftToTile(FF)V

    add-int/2addr v3, v0

    add-int/2addr v5, p1

    .line 359
    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v3, v5}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v6

    .line 360
    iget-object v7, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7, v3, v5}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v3

    .line 361
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v6, v3}, Linfo/flowersoft/theotown/city/Tiles;->hasFence(II)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 362
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v5

    invoke-virtual {v5, v6, v3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 363
    invoke-virtual {p0, p4, v6, v3, v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawFenceBG(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;)V

    .line 365
    :cond_63
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/Drawer;->resetShift()V

    move v3, v4

    goto :goto_2c

    .line 367
    :cond_68
    iget-object p1, p4, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method

.method public drawBuildingFenceFG(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 13

    .line 371
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v0

    .line 372
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result p1

    .line 374
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 375
    iget-boolean p2, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawUnderground:Z

    if-eqz p2, :cond_1a

    iget-object p2, p4, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0x64

    invoke-virtual {p2, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 377
    :cond_1a
    iget p2, p4, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {p3, p2}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualWidth(I)I

    move-result p2

    .line 378
    iget v1, p4, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {p3, v1}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualHeight(I)I

    move-result p3

    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_2c
    if-ge v3, v1, :cond_68

    add-int/lit8 v4, v3, 0x1

    if-lt v4, p2, :cond_3a

    add-int/lit8 v3, p2, -0x1

    add-int/lit8 v5, p3, -0x1

    sub-int v6, v4, p2

    sub-int/2addr v5, v6

    goto :goto_3b

    :cond_3a
    move v5, v2

    :goto_3b
    int-to-float v6, v3

    int-to-float v7, v5

    .line 389
    invoke-virtual {p4, v6, v7}, Linfo/flowersoft/theotown/city/Drawer;->addShiftToTile(FF)V

    add-int/2addr v3, v0

    add-int/2addr v5, p1

    .line 392
    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v3, v5}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v6

    .line 393
    iget-object v7, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7, v3, v5}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v3

    .line 394
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v6, v3}, Linfo/flowersoft/theotown/city/Tiles;->hasFence(II)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 395
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v5

    invoke-virtual {v5, v6, v3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 396
    invoke-virtual {p0, p4, v6, v3, v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawFenceFG(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;)V

    .line 398
    :cond_63
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/Drawer;->resetShift()V

    move v3, v4

    goto :goto_2c

    .line 400
    :cond_68
    iget-object p1, p4, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method

.method public drawBuildingTerrainGroundBorders(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 568
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getMaxTerrainLevel()I

    move-result v5

    .line 569
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getMinTerrainLevel()I

    move-result v6

    if-lt v6, v5, :cond_15

    return-void

    .line 573
    :cond_15
    iget-object v6, v4, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 574
    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v1, v2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v6

    .line 575
    iget-object v8, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8, v1, v2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result v1

    .line 576
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v2

    .line 577
    iget-boolean v8, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawUnderground:Z

    if-eqz v8, :cond_37

    iget-object v8, v4, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 578
    :cond_37
    iget-object v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->groundFrames:[I

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_40

    aget v2, v2, v8

    goto :goto_46

    :cond_40
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->groundBorders:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v2, v2, v9

    .line 579
    :goto_46
    iget v10, v4, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v3, v10}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualWidth(I)I

    move-result v10

    .line 580
    iget v11, v4, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v3, v11}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualHeight(I)I

    move-result v3

    add-int v11, v10, v3

    sub-int/2addr v11, v9

    move v12, v8

    :goto_56
    if-ge v12, v11, :cond_a0

    add-int/lit8 v13, v12, 0x1

    if-lt v13, v10, :cond_64

    add-int/lit8 v12, v10, -0x1

    add-int/lit8 v14, v3, -0x1

    sub-int v15, v13, v10

    sub-int/2addr v14, v15

    goto :goto_65

    :cond_64
    move v14, v8

    :goto_65
    int-to-float v15, v12

    move/from16 v16, v7

    int-to-float v7, v14

    .line 591
    invoke-virtual {v4, v15, v7}, Linfo/flowersoft/theotown/city/Drawer;->addShiftToTile(FF)V

    add-int/2addr v12, v6

    add-int/2addr v14, v1

    .line 594
    iget-object v7, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7, v12, v14}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v7

    .line 595
    iget-object v15, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v15, v12, v14}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v12

    .line 596
    iget-object v14, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v14

    invoke-virtual {v14, v7, v12}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v7

    .line 597
    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v7

    if-ge v7, v5, :cond_99

    :goto_8a
    if-ge v7, v5, :cond_99

    .line 600
    sget-object v12, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    neg-int v14, v7

    mul-int/lit8 v14, v14, 0xc

    int-to-float v14, v14

    const/4 v15, 0x0

    invoke-virtual {v4, v12, v15, v14, v2}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_8a

    .line 603
    :cond_99
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/Drawer;->resetShift()V

    move v12, v13

    move/from16 v7, v16

    goto :goto_56

    .line 605
    :cond_a0
    iget-object v1, v4, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method

.method public drawBuildingWaterGround(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 14

    .line 513
    iget v0, p4, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {p3, v0}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualWidth(I)I

    move-result v0

    .line 514
    iget v1, p4, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {p3, v1}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualHeight(I)I

    move-result v1

    .line 515
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v2

    .line 516
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, p1, p2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result v3

    .line 517
    iget-object v4, p4, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    add-int/lit8 v1, v1, -0x1

    :goto_21
    if-ltz v1, :cond_58

    const/4 v4, 0x0

    :goto_24
    if-ge v4, v0, :cond_55

    .line 521
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    add-int v6, v4, v2

    add-int v7, v1, v3

    invoke-virtual {v5, v6, v7}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v5

    .line 522
    iget-object v8, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8, v6, v7}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v6

    .line 524
    invoke-virtual {p4, v5, v6}, Linfo/flowersoft/theotown/city/Drawer;->setRealTile(II)V

    .line 525
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/Drawer;->isTileVisible()Z

    move-result v7

    if-eqz v7, :cond_52

    .line 526
    iget-object v7, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 527
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v6

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawWaterGroundDraft:Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-virtual {v5, p4, v6}, Linfo/flowersoft/theotown/city/objects/Ground;->drawWater(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/GroundDraft;)V

    :cond_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_55
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 531
    :cond_58
    invoke-virtual {p4, p1, p2}, Linfo/flowersoft/theotown/city/Drawer;->setRealTile(II)V

    return-void
.end method

.method public drawBuildingWaterGroundBorders(IILinfo/flowersoft/theotown/city/objects/Building;Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 14

    .line 539
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    .line 540
    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawWaterBorders:Z

    if-nez v1, :cond_9

    goto :goto_65

    .line 541
    :cond_9
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v1

    .line 542
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result p1

    .line 543
    iget p2, p4, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {p3, p2}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualWidth(I)I

    move-result p2

    .line 544
    iget v2, p4, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {p3, v2}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualHeight(I)I

    move-result p3

    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x1

    .line 546
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->waterBorderFrames:[I

    const/4 v3, 0x0

    if-eqz v0, :cond_2d

    aget v0, v0, v3

    goto :goto_33

    :cond_2d
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->groundBorders:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v0, v0, v3

    .line 547
    :goto_33
    iget-object v4, p4, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    move v4, v3

    :goto_3b
    if-ge v4, v2, :cond_65

    add-int/lit8 v5, v4, 0x1

    if-lt v5, p2, :cond_49

    add-int/lit8 v4, p2, -0x1

    add-int/lit8 v6, p3, -0x1

    sub-int v7, v5, p2

    sub-int/2addr v6, v7

    goto :goto_4a

    :cond_49
    move v6, v3

    :goto_4a
    int-to-float v7, v4

    int-to-float v8, v6

    .line 557
    invoke-virtual {p4, v7, v8}, Linfo/flowersoft/theotown/city/Drawer;->addShiftToTile(FF)V

    add-int/2addr v4, v1

    add-int/2addr v6, p1

    .line 560
    iget-object v7, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7, v4, v6}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v7

    .line 561
    iget-object v8, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8, v4, v6}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v4

    .line 562
    invoke-virtual {p0, v7, v4, p4, v0}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawWaterGroundBorders(IILinfo/flowersoft/theotown/city/Drawer;I)V

    .line 563
    invoke-virtual {p4}, Linfo/flowersoft/theotown/city/Drawer;->resetShift()V

    move v4, v5

    goto :goto_3b

    :cond_65
    :goto_65
    return-void
.end method

.method public final drawConstructionProgress(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 25

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 976
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v2

    .line 977
    iget-object v3, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v3

    if-nez v3, :cond_17d

    .line 978
    iget-boolean v3, v0, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    const/4 v4, 0x0

    .line 979
    iput-boolean v4, v0, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 980
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_24

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v5

    if-nez v5, :cond_24

    move v5, v6

    goto :goto_25

    :cond_24
    move v5, v4

    .line 983
    :goto_25
    iget v7, v0, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v1, v7}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualWidth(I)I

    move-result v7

    .line 984
    iget v8, v0, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v1, v8}, Linfo/flowersoft/theotown/city/objects/Building;->getVisualHeight(I)I

    move-result v8

    if-eqz v5, :cond_42

    .line 987
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getPendingUpgrade()Linfo/flowersoft/theotown/draft/UpgradeDraft;

    move-result-object v9

    iget-wide v9, v9, Linfo/flowersoft/theotown/draft/UpgradeDraft;->buildTime:J

    long-to-double v11, v9

    .line 988
    iget-wide v13, v0, Linfo/flowersoft/theotown/city/Drawer;->day:D

    invoke-virtual {v1, v13, v14}, Linfo/flowersoft/theotown/city/objects/Building;->getPendingUpgradeDaysLeft(D)D

    move-result-wide v13

    sub-double/2addr v11, v13

    goto :goto_52

    .line 990
    :cond_42
    iget v9, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildTime:I

    iget v10, v0, Linfo/flowersoft/theotown/city/Drawer;->shortBuildTimeFactor:I

    div-int/2addr v9, v10

    int-to-long v9, v9

    .line 991
    iget-wide v11, v0, Linfo/flowersoft/theotown/city/Drawer;->day:D

    invoke-virtual {v1, v11, v12}, Linfo/flowersoft/theotown/city/objects/Building;->getDaysBuilt(D)D

    move-result-wide v11

    iget v13, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildTime:I

    int-to-double v13, v13

    add-double/2addr v11, v13

    :goto_52
    const-wide/16 v13, 0x1

    .line 994
    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    long-to-double v9, v9

    div-double/2addr v11, v9

    double-to-float v9, v11

    const/high16 v10, 0x3f800000    # 1.0f

    .line 995
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 996
    iget-object v11, v0, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 998
    invoke-virtual {v11}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result v21

    add-int/2addr v7, v8

    const/16 v12, 0x8

    mul-int/2addr v7, v12

    int-to-float v7, v7

    mul-int/2addr v8, v12

    sub-int/2addr v8, v12

    .line 999
    iget v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    sub-int/2addr v2, v6

    .line 1000
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    .line 999
    invoke-virtual {v0, v7, v2}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 1003
    invoke-virtual {v11}, Lio/blueflower/stapel2d/drawing/Engine;->getTransparency()I

    move-result v2

    .line 1004
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getMaxTerrainLevel()I

    move-result v6

    neg-int v6, v6

    mul-int/lit8 v6, v6, 0xc

    int-to-float v6, v6

    invoke-virtual {v0, v10, v6}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 1006
    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v11, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    mul-int/lit8 v6, v2, 0x50

    const/16 v7, 0xff

    .line 1007
    div-int/2addr v6, v7

    invoke-virtual {v11, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move-object/from16 v20, v11

    .line 1008
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v11

    .line 1009
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/Drawer;->getDrawingX()F

    move-result v12

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/Drawer;->getDrawingY()F

    move-result v13

    const/high16 v8, 0x41200000    # 10.0f

    mul-float v15, v21, v8

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/16 v16, 0x0

    const v17, 0x40c90fdb

    .line 1008
    invoke-virtual/range {v11 .. v20}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move-object/from16 v8, v20

    mul-int/lit16 v10, v2, 0xa0

    .line 1015
    div-int/2addr v10, v7

    invoke-virtual {v8, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 1016
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v11

    .line 1017
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/Drawer;->getDrawingX()F

    move-result v12

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/Drawer;->getDrawingY()F

    move-result v13

    const/high16 v10, 0x41300000    # 11.0f

    mul-float v14, v21, v10

    const/high16 v10, 0x41700000    # 15.0f

    mul-float v15, v21, v10

    .line 1016
    invoke-virtual/range {v11 .. v20}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 1022
    sget-object v10, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1023
    invoke-virtual {v8, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 1024
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v11

    .line 1025
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/Drawer;->getDrawingX()F

    move-result v12

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/Drawer;->getDrawingY()F

    move-result v13

    const/high16 v6, 0x41400000    # 12.0f

    mul-float v14, v21, v6

    const/high16 v6, 0x41600000    # 14.0f

    mul-float v15, v21, v6

    const v16, 0x3fdd2b0b

    const v17, 0x40f64d06

    .line 1024
    invoke-virtual/range {v11 .. v20}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 1031
    invoke-virtual {v8, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v6, v9

    float-to-int v6, v6

    rsub-int v6, v6, 0xff

    .line 1032
    invoke-virtual {v8, v6, v7, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 1033
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v11

    .line 1034
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/Drawer;->getDrawingX()F

    move-result v12

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/Drawer;->getDrawingY()F

    move-result v13

    const v4, 0x3ff33333    # 1.9f

    mul-float/2addr v9, v4

    const v4, 0x3f0ccccd    # 0.55f

    add-float/2addr v9, v4

    const v4, 0x40490fdb    # (float)Math.PI

    mul-float v17, v9, v4

    .line 1033
    invoke-virtual/range {v11 .. v20}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    .line 1040
    invoke-virtual {v8, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 1041
    iget v6, v0, Linfo/flowersoft/theotown/city/Drawer;->time:I

    rem-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    mul-float/2addr v6, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v6, v4

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v4, v6

    .line 1042
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/high16 v7, -0x3eb00000    # -13.0f

    sub-float v4, v7, v4

    if-eqz v5, :cond_14d

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_UPGRADE:I

    goto :goto_14f

    :cond_14d
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_BUILD:I

    :goto_14f
    invoke-virtual {v0, v6, v7, v4, v5}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 1045
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v10

    .line 1046
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v11

    const/high16 v1, -0x3e900000    # -15.0f

    .line 1047
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/Drawer;->getDrawingX(F)F

    move-result v4

    float-to-int v12, v4

    .line 1048
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/Drawer;->getDrawingY(F)F

    move-result v1

    float-to-int v13, v1

    iget v1, v0, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v1, v4

    float-to-int v14, v1

    iget v1, v0, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    mul-float/2addr v1, v4

    float-to-int v15, v1

    move-object/from16 v9, p0

    .line 1044
    invoke-virtual/range {v9 .. v15}, Linfo/flowersoft/theotown/tools/DefaultTool;->addIndicator(IIIIII)V

    .line 1052
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/Drawer;->resetShift()V

    .line 1054
    invoke-virtual {v8, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 1055
    iput-boolean v3, v0, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    :cond_17d
    return-void
.end method

.method public drawEdge(IILinfo/flowersoft/theotown/city/Drawer;I)V
    .registers 6

    .line 610
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v0

    .line 612
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/DefaultTool;->calculatePollutionColor(II)V

    .line 614
    iget-object p1, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 615
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->colorBuf:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 616
    invoke-virtual {v0, p3, p4}, Linfo/flowersoft/theotown/city/objects/Ground;->drawEdge(Linfo/flowersoft/theotown/city/Drawer;I)V

    .line 617
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public drawFenceBG(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;)V
    .registers 19

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 404
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v6

    .line 405
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    iget v7, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    add-int/lit8 v7, v7, 0x1

    rem-int/lit8 v7, v7, 0x4

    invoke-virtual {v5, v2, v3, v7}, Linfo/flowersoft/theotown/city/Tiles;->getFence(III)Linfo/flowersoft/theotown/draft/FenceDraft;

    move-result-object v5

    .line 406
    iget-object v7, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    iget v8, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    add-int/lit8 v8, v8, 0x2

    rem-int/lit8 v8, v8, 0x4

    invoke-virtual {v7, v2, v3, v8}, Linfo/flowersoft/theotown/city/Tiles;->getFence(III)Linfo/flowersoft/theotown/draft/FenceDraft;

    move-result-object v7

    .line 407
    iget v2, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainHeight(I)B

    move-result v8

    .line 408
    iget v2, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainHeight(I)B

    move-result v9

    .line 409
    iget v2, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainHeight(I)B

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    if-eqz v5, :cond_81

    if-nez v6, :cond_4a

    .line 412
    iget-object v2, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v2, v2

    if-ge v2, v12, :cond_47

    goto :goto_4a

    :cond_47
    sub-int v2, v10, v9

    goto :goto_4b

    :cond_4a
    :goto_4a
    move v2, v11

    .line 415
    :goto_4b
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/lit8 v3, v3, -0xc

    int-to-float v3, v3

    invoke-virtual {p1, v13, v3}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    if-lez v2, :cond_63

    const/16 v4, -0x9

    move-object v2, v5

    const/4 v5, 0x2

    const/16 v3, 0xf

    move-object v0, p0

    move-object v1, p1

    .line 420
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawFencePart(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/FenceDraft;III)V

    goto :goto_77

    :cond_63
    move v0, v2

    move-object v2, v5

    const/16 v3, 0x10

    const/4 v4, -0x8

    if-gez v0, :cond_71

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    .line 422
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawFencePart(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/FenceDraft;III)V

    goto :goto_77

    :cond_71
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 424
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawFencePart(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/FenceDraft;III)V

    .line 427
    :goto_77
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    int-to-float v0, v0

    invoke-virtual {p1, v13, v0}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    :cond_81
    if-eqz v7, :cond_c1

    if-nez v6, :cond_8d

    .line 431
    iget-object v0, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v0, v0

    if-ge v0, v12, :cond_8b

    goto :goto_8d

    :cond_8b
    sub-int v11, v9, v8

    .line 434
    :cond_8d
    :goto_8d
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, -0xc

    int-to-float v0, v0

    invoke-virtual {p1, v13, v0}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    const/4 v4, -0x8

    if-lez v11, :cond_a3

    const/4 v3, -0x2

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    .line 438
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawFencePart(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/FenceDraft;III)V

    goto :goto_b7

    :cond_a3
    move-object v2, v7

    if-gez v11, :cond_b0

    const/16 v4, -0x9

    const/4 v5, 0x5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 440
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawFencePart(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/FenceDraft;III)V

    goto :goto_b7

    :cond_b0
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 442
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawFencePart(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/FenceDraft;III)V

    .line 445
    :goto_b7
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    int-to-float v0, v0

    invoke-virtual {p1, v13, v0}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    :cond_c1
    return-void
.end method

.method public drawFenceFG(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;)V
    .registers 19

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 450
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v6

    .line 451
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    iget v7, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    rem-int/lit8 v7, v7, 0x4

    invoke-virtual {v5, v2, v3, v7}, Linfo/flowersoft/theotown/city/Tiles;->getFence(III)Linfo/flowersoft/theotown/draft/FenceDraft;

    move-result-object v5

    .line 452
    iget-object v7, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    iget v8, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    add-int/lit8 v8, v8, 0x3

    rem-int/lit8 v8, v8, 0x4

    invoke-virtual {v7, v2, v3, v8}, Linfo/flowersoft/theotown/city/Tiles;->getFence(III)Linfo/flowersoft/theotown/draft/FenceDraft;

    move-result-object v7

    .line 453
    iget v2, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainHeight(I)B

    move-result v8

    .line 454
    iget v2, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainHeight(I)B

    move-result v9

    .line 455
    iget v2, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/city/objects/Ground;->getTerrainHeight(I)B

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    if-eqz v5, :cond_7d

    if-nez v6, :cond_46

    .line 458
    iget-object v2, v5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v2, v2

    if-ge v2, v12, :cond_43

    goto :goto_46

    :cond_43
    sub-int v2, v10, v9

    goto :goto_47

    :cond_46
    :goto_46
    move v2, v11

    .line 461
    :goto_47
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/lit8 v3, v3, -0xc

    int-to-float v3, v3

    invoke-virtual {p1, v13, v3}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    if-lez v2, :cond_5e

    const/4 v4, 0x0

    move-object v2, v5

    const/4 v5, 0x3

    const/16 v3, 0xe

    move-object v0, p0

    move-object v1, p1

    .line 465
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawFencePart(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/FenceDraft;III)V

    goto :goto_73

    :cond_5e
    move v0, v2

    move-object v2, v5

    const/16 v3, 0x10

    if-gez v0, :cond_6c

    const/4 v4, -0x1

    const/4 v5, 0x5

    move-object v0, p0

    move-object v1, p1

    .line 467
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawFencePart(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/FenceDraft;III)V

    goto :goto_73

    :cond_6c
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 469
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawFencePart(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/FenceDraft;III)V

    .line 472
    :goto_73
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    int-to-float v0, v0

    invoke-virtual {p1, v13, v0}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    :cond_7d
    if-eqz v7, :cond_bd

    if-nez v6, :cond_89

    .line 476
    iget-object v0, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v0, v0

    if-ge v0, v12, :cond_87

    goto :goto_89

    :cond_87
    sub-int v11, v9, v8

    .line 479
    :cond_89
    :goto_89
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, -0xc

    int-to-float v0, v0

    invoke-virtual {p1, v13, v0}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    if-lez v11, :cond_9f

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    .line 482
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawFencePart(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/FenceDraft;III)V

    goto :goto_b3

    :cond_9f
    move-object v2, v7

    if-gez v11, :cond_ab

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 484
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawFencePart(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/FenceDraft;III)V

    goto :goto_b3

    :cond_ab
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 486
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawFencePart(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/FenceDraft;III)V

    .line 489
    :goto_b3
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    int-to-float v0, v0

    invoke-virtual {p1, v13, v0}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    :cond_bd
    return-void
.end method

.method public final drawFencePart(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/FenceDraft;III)V
    .registers 16

    move v9, p4

    .line 494
    iget-object v2, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 495
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v3, p3

    int-to-float v4, v9

    iget-object v5, p2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v5, v5, p5

    invoke-virtual {p1, v2, v3, v4, v5}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    const/16 v2, 0x4d2

    .line 497
    invoke-virtual {p0, p1, v2}, Linfo/flowersoft/theotown/tools/DefaultTool;->lightsOn(Linfo/flowersoft/theotown/city/Drawer;I)Z

    move-result v8

    .line 498
    iget-object v2, p2, Linfo/flowersoft/theotown/draft/FenceDraft;->animationSpots:Ljava/util/List;

    if-eqz v2, :cond_42

    .line 499
    iget v2, p1, Linfo/flowersoft/theotown/city/Drawer;->time:I

    int-to-float v2, v2

    const/high16 v5, 0x43480000    # 200.0f

    div-float v6, v2, v5

    .line 500
    invoke-virtual {p1, v3, v4}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 501
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v2

    move-object v3, v2

    iget-object v2, p2, Linfo/flowersoft/theotown/draft/FenceDraft;->animationSpots:Ljava/util/List;

    iget-object v0, p2, Linfo/flowersoft/theotown/draft/FenceDraft;->animationSpotIndices:[[I

    iget v7, p1, Linfo/flowersoft/theotown/city/Drawer;->animationSpotFlags:I

    move v5, p5

    move-object v1, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, p1

    move v4, p5

    invoke-virtual/range {v0 .. v8}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFIZ)V

    neg-int v0, p3

    int-to-float v0, v0

    neg-int v2, v9

    int-to-float v2, v2

    .line 503
    invoke-virtual {p1, v0, v2}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    :cond_42
    return-void
.end method

.method public drawGround(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 13

    .line 700
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v1

    .line 701
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    .line 702
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_1b

    .line 703
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v4

    goto :goto_1c

    :cond_1b
    move-object v4, v3

    .line 704
    :goto_1c
    iget-object v5, p3, Linfo/flowersoft/theotown/city/Drawer;->lod:Linfo/flowersoft/theotown/city/components/LODController;

    invoke-virtual {p0, p1, p2, v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->updateGroundNeighborhood(IILinfo/flowersoft/theotown/city/components/LODController;)V

    if-eqz v0, :cond_49

    .line 706
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v5

    if-nez v5, :cond_49

    iget-boolean v5, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsSlope:Z

    if-nez v5, :cond_49

    iget-boolean v5, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawUnderground:Z

    if-nez v5, :cond_49

    iget-boolean v5, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->drawWaterBorders:Z

    if-eqz v5, :cond_49

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->isBorder()Z

    move-result v5

    if-eqz v5, :cond_3f

    iget-boolean v4, v4, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsTerrain:Z

    if-eqz v4, :cond_49

    .line 707
    :cond_3f
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getMaxTerrainLevel()I

    move-result v0

    invoke-virtual {v1, p3, v0}, Linfo/flowersoft/theotown/city/objects/Ground;->drawFlat(Linfo/flowersoft/theotown/city/Drawer;I)V

    :goto_46
    move-object v2, p3

    goto/16 :goto_17e

    :cond_49
    if-eqz v2, :cond_5f

    .line 708
    iget v0, v2, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez v0, :cond_5f

    iget v0, p3, Linfo/flowersoft/theotown/city/Drawer;->upDirs:I

    if-nez v0, :cond_5f

    iget-object v0, v2, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->drawWaterBorders:Z

    if-eqz v0, :cond_5f

    .line 709
    iget v0, v2, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    invoke-virtual {v1, p3, v0}, Linfo/flowersoft/theotown/city/objects/Ground;->drawFlat(Linfo/flowersoft/theotown/city/Drawer;I)V

    goto :goto_46

    .line 711
    :cond_5f
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->hasLowPartialFlatPart()Z

    move-result v0

    const/16 v2, 0x8

    const/4 v4, 0x1

    if-eqz v0, :cond_c0

    .line 713
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v0

    :goto_6c
    if-gt v4, v2, :cond_aa

    .line 715
    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v5

    add-int/2addr v5, p1

    .line 716
    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v6

    add-int/2addr v6, p2

    .line 717
    iget-object v7, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7, v5, v6}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v7

    if-eqz v7, :cond_a7

    .line 718
    iget-object v7, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 719
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v6

    if-nez v6, :cond_a7

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v6

    if-eqz v6, :cond_a7

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v6

    if-ne v6, v0, :cond_a7

    .line 720
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v3

    .line 721
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v5

    if-ne v3, v5, :cond_a7

    goto :goto_aa

    :cond_a7
    shl-int/lit8 v4, v4, 0x1

    goto :goto_6c

    .line 725
    :cond_aa
    :goto_aa
    iget-object v6, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->groundNeighborhood:Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 727
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGroundDraft2(II)Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v7

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGroundFrame2(II)I

    move-result v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p3

    .line 725
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/city/objects/Ground;->draw(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;Linfo/flowersoft/theotown/draft/GroundDraft;I)V

    goto/16 :goto_17e

    .line 728
    :cond_c0
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->hasHighPartialFlatPart()Z

    move-result v0

    if-eqz v0, :cond_121

    .line 730
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v0

    move v5, v4

    :goto_cb
    if-gt v5, v2, :cond_107

    .line 732
    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v6

    add-int/2addr v6, p1

    .line 733
    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v7

    add-int/2addr v7, p2

    .line 734
    iget-object v8, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8, v6, v7}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v8

    if-eqz v8, :cond_109

    .line 735
    iget-object v8, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v6

    .line 736
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v7

    if-nez v7, :cond_109

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Ground;->isFlat()Z

    move-result v7

    if-eqz v7, :cond_109

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Ground;->getBaseTerrainHeight()I

    move-result v7

    add-int/lit8 v8, v0, 0x1

    if-ne v7, v8, :cond_109

    .line 737
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v3

    .line 738
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v6

    if-ne v3, v6, :cond_109

    :cond_107
    move-object v4, v3

    goto :goto_10c

    :cond_109
    shl-int/lit8 v5, v5, 0x1

    goto :goto_cb

    .line 742
    :goto_10c
    iget-object v6, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->groundNeighborhood:Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 744
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGroundDraft2(II)Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v7

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGroundFrame2(II)I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p3

    .line 742
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/city/objects/Ground;->draw(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;Linfo/flowersoft/theotown/draft/GroundDraft;I)V

    goto :goto_17e

    .line 746
    :cond_121
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->isBorder()Z

    move-result v0

    if-eqz v0, :cond_169

    :goto_127
    if-gt v4, v2, :cond_14f

    .line 749
    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v0

    add-int/2addr v0, p1

    .line 750
    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v5

    add-int/2addr v5, p2

    .line 751
    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v0, v5}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v6

    if-eqz v6, :cond_151

    .line 752
    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v6

    invoke-virtual {v6, v0, v5}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v0

    .line 753
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v5

    if-eqz v5, :cond_151

    .line 754
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v3

    :cond_14f
    move-object v5, v3

    goto :goto_154

    :cond_151
    shl-int/lit8 v4, v4, 0x1

    goto :goto_127

    .line 759
    :goto_154
    iget-object v6, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->groundNeighborhood:Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 761
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGroundDraft2(II)Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v7

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGroundFrame2(II)I

    move-result v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p3

    .line 759
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/city/objects/Ground;->draw(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;Linfo/flowersoft/theotown/draft/GroundDraft;I)V

    goto :goto_17e

    :cond_169
    move-object v2, p3

    .line 764
    iget-object v6, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->groundNeighborhood:Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;

    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 766
    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGroundDraft2(II)Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v7

    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGroundFrame2(II)I

    move-result v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 764
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/city/objects/Ground;->draw(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/draft/GroundDraft;Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;Linfo/flowersoft/theotown/draft/GroundDraft;I)V

    .line 769
    :goto_17e
    invoke-virtual {p0, p1, p2, v2}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTerrainBorders(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 771
    iget-boolean p3, v2, Linfo/flowersoft/theotown/city/Drawer;->winter:Z

    if-eqz p3, :cond_194

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object p3

    iget-boolean p3, p3, Linfo/flowersoft/theotown/draft/GroundDraft;->snowOverlay:Z

    if-eqz p3, :cond_194

    sget-boolean p3, Linfo/flowersoft/theotown/resources/Settings;->groundSnowOverlay:Z

    if-eqz p3, :cond_194

    .line 772
    invoke-virtual {p0, v2, p1, p2, v1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawGroundSnow(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;)V

    :cond_194
    return-void
.end method

.method public final drawGroundSnow(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;)V
    .registers 13

    .line 816
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->groundSnowOverlay:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v1, 0x0

    aget v7, v0, v1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    return-void
.end method

.method public drawHelicopter(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 5

    .line 1070
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->traffic:Linfo/flowersoft/theotown/components/DefaultTraffic;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultTraffic;->drawFlyingObject(IILinfo/flowersoft/theotown/city/Drawer;)V

    return-void
.end method

.method public drawRail(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 5

    .line 1064
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object p1

    .line 1065
    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/city/objects/Rail;->draw(Linfo/flowersoft/theotown/city/Drawer;)V

    .line 1066
    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/city/objects/Rail;->drawForeground(Linfo/flowersoft/theotown/city/Drawer;)V

    return-void
.end method

.method public drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z
    .registers 14

    .line 843
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v0

    .line 844
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, p1, p2, p4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    return v2

    .line 847
    :cond_14
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v0

    invoke-virtual {v1, p3, v0}, Linfo/flowersoft/theotown/city/objects/Road;->draw(Linfo/flowersoft/theotown/city/Drawer;Z)V

    .line 849
    iget-boolean v0, p3, Linfo/flowersoft/theotown/city/Drawer;->winter:Z

    if-eqz v0, :cond_26

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->roadSnowOverlay:Z

    if-eqz v0, :cond_26

    .line 850
    invoke-virtual {p0, p3, v1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawRoadSnow(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/city/objects/Road;)V

    .line 853
    :cond_26
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->lod:Linfo/flowersoft/theotown/city/components/LODController;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/LODController;->drawCars()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 854
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->traffic:Linfo/flowersoft/theotown/components/DefaultTraffic;

    invoke-virtual {v0, p1, p2, v1, p3}, Linfo/flowersoft/theotown/components/DefaultTraffic;->drawRoad(IILinfo/flowersoft/theotown/city/objects/Road;Linfo/flowersoft/theotown/city/Drawer;)V

    .line 855
    iget v0, p3, Linfo/flowersoft/theotown/city/Drawer;->upDirs:I

    if-nez v0, :cond_7c

    const/4 v0, 0x2

    move v4, v0

    move v3, v2

    :goto_3a
    if-ge v3, v0, :cond_79

    .line 858
    iget v5, p3, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/city/Direction;->rotateCCW(II)I

    move-result v5

    .line 859
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v6

    invoke-static {v5, v6}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v6

    if-eqz v6, :cond_72

    .line 860
    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v6

    add-int/2addr v6, p1

    .line 861
    invoke-static {v5}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v5

    add-int/2addr v5, p2

    .line 862
    iget-object v7, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7, v6, v5}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v7

    if-eqz v7, :cond_72

    .line 863
    iget-object v7, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v7

    iget v8, v1, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    invoke-virtual {v7, v6, v5, v8}, Linfo/flowersoft/theotown/city/Tiles;->getAbsoluteRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v7

    if-eqz v7, :cond_72

    .line 865
    invoke-virtual {p3, v6, v5}, Linfo/flowersoft/theotown/city/Drawer;->setRealTile(II)V

    .line 866
    invoke-virtual {v7, p3}, Linfo/flowersoft/theotown/city/objects/Road;->drawForegroundTrafficLights(Linfo/flowersoft/theotown/city/Drawer;)V

    .line 870
    :cond_72
    invoke-static {v4}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 872
    :cond_79
    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/Drawer;->setRealTile(II)V

    .line 876
    :cond_7c
    iget-object v0, v1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    .line 877
    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->drawMethods:Linfo/flowersoft/theotown/scripting/MethodCluster;

    if-eqz v0, :cond_85

    .line 878
    invoke-virtual {v0, p1, p2, p4}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(III)Z

    .line 881
    :cond_85
    iget-object v0, v1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/RoadDraft;->drawInFront:Z

    if-eqz v0, :cond_94

    .line 882
    iget-object v0, p3, Linfo/flowersoft/theotown/city/Drawer;->ground:Linfo/flowersoft/theotown/city/objects/Ground;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v0

    invoke-virtual {v1, p3, v0}, Linfo/flowersoft/theotown/city/objects/Road;->draw(Linfo/flowersoft/theotown/city/Drawer;Z)V

    .line 884
    :cond_94
    invoke-virtual {v1, p3}, Linfo/flowersoft/theotown/city/objects/Road;->drawForeground(Linfo/flowersoft/theotown/city/Drawer;)V

    if-nez p4, :cond_dc

    .line 887
    iget-object p4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p4, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object p4

    if-eqz p4, :cond_dc

    .line 890
    iget-object v0, p4, Linfo/flowersoft/theotown/draft/ZoneDraft;->roadBorderFrames:[I

    if-eqz v0, :cond_dc

    .line 892
    iget-object v3, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v3, p1, p2, p4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getZoneMask(IILinfo/flowersoft/theotown/draft/ZoneDraft;)I

    move-result p4

    if-eqz p4, :cond_dc

    .line 894
    iget-object p4, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->traffic:Linfo/flowersoft/theotown/components/DefaultTraffic;

    const-class v3, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    invoke-virtual {p4, v3}, Linfo/flowersoft/theotown/components/DefaultTraffic;->getTrafficHandler(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/traffic/TrafficHandler;

    move-result-object p4

    check-cast p4, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    iget v3, v1, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    invoke-virtual {p4, p1, p2, v3}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->countCars(III)I

    move-result p1

    .line 895
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result p2

    const/16 p4, 0x10

    rem-int/2addr p2, p4

    iget v1, p3, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {p2, v1}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result p2

    if-lez p1, :cond_cd

    move v2, p4

    :cond_cd
    add-int/2addr p2, v2

    .line 896
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget p4, p3, Linfo/flowersoft/theotown/city/Drawer;->terrainHeight:F

    neg-float p4, p4

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr p4, v1

    aget p2, v0, p2

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p4, p2}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_dc
    const/4 p1, 0x1

    return p1
.end method

.method public final drawRoadSnow(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/city/objects/Road;)V
    .registers 9

    .line 820
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->getSnow()I

    move-result v0

    if-lez v0, :cond_54

    .line 823
    iget v1, p1, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    iget v2, p2, Linfo/flowersoft/theotown/city/objects/Road;->level:I

    add-int/2addr v1, v2

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0xc

    int-to-float v2, v1

    const/4 v3, 0x0

    .line 824
    invoke-virtual {p1, v3, v2}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 825
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Road;->getAlign()I

    move-result v2

    iget v4, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {v2, v4}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v2

    .line 826
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->roadSnowOverlay:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v2, v4, v2

    .line 828
    iget-object v4, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Engine;->getTransparency()I

    move-result v4

    .line 829
    iget-object v5, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    mul-int/2addr v0, v4

    div-int/lit16 v0, v0, 0xff

    invoke-virtual {v5, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 830
    iget p2, p2, Linfo/flowersoft/theotown/city/objects/Road;->dLevel:I

    if-nez p2, :cond_3b

    .line 831
    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p1, p2, v3, v3, v2}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    goto :goto_4a

    .line 833
    :cond_3b
    invoke-static {p2}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result v0

    or-int/2addr p2, v0

    invoke-static {p2}, Linfo/flowersoft/theotown/city/Direction;->turnCCW(I)I

    move-result p2

    .line 834
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/4 v5, 0x0

    invoke-static {p1, v0, v5, p2, v2}, Linfo/flowersoft/theotown/city/objects/Ground;->drawFrameOnCustomSlope(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;III)V

    :goto_4a
    neg-int p2, v1

    int-to-float p2, p2

    .line 837
    invoke-virtual {p1, v3, p2}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 838
    iget-object p1, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {p1, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    :cond_54
    return-void
.end method

.method public drawRoadWaterGround(IILinfo/flowersoft/theotown/draft/RoadDraft;Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 6

    .line 535
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    iget-object p2, p3, Linfo/flowersoft/theotown/draft/RoadDraft;->drawWaterGroundDraft:Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-virtual {p1, p4, p2}, Linfo/flowersoft/theotown/city/objects/Ground;->drawWater(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/GroundDraft;)V

    return-void
.end method

.method public drawTerrainBorders(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 4

    .line 0
    return-void
.end method

.method public drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V
    .registers 7

    .line 803
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p2

    if-eqz p2, :cond_22

    .line 804
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p3

    iget-boolean p3, p3, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsSlope:Z

    if-nez p3, :cond_22

    iget-boolean p3, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawUnderground:Z

    if-nez p3, :cond_22

    .line 805
    sget-object p3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/objects/Building;->getMaxTerrainLevel()I

    move-result p2

    mul-int/lit8 p2, p2, -0xc

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4, p2, p5}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    return-void

    .line 807
    :cond_22
    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p4, p1, p2, p5}, Linfo/flowersoft/theotown/city/objects/Ground;->drawFrameOnSlope(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;I)V

    return-void
.end method

.method public drawTree(IILinfo/flowersoft/theotown/city/objects/Tree;Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 5

    .line 812
    invoke-virtual {p3, p4}, Linfo/flowersoft/theotown/city/objects/Tree;->draw(Linfo/flowersoft/theotown/city/Drawer;)V

    return-void
.end method

.method public drawWaterGroundBorders(IILinfo/flowersoft/theotown/city/Drawer;I)V
    .registers 6

    .line 636
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    .line 637
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->isBorder()Z

    move-result p2

    if-nez p2, :cond_18

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result p1

    if-eqz p1, :cond_17

    goto :goto_18

    :cond_17
    return-void

    .line 638
    :cond_18
    :goto_18
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget p2, p3, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    neg-int p2, p2

    mul-int/lit8 p2, p2, 0xc

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, p2, p4}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    return-void
.end method

.method public drawWire(IILinfo/flowersoft/theotown/city/objects/Wire;Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 5

    .line 1060
    invoke-virtual {p3, p4}, Linfo/flowersoft/theotown/city/objects/Wire;->draw(Linfo/flowersoft/theotown/city/Drawer;)V

    return-void
.end method

.method public drawZone(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 13

    .line 777
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v0

    .line 778
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    if-eqz v1, :cond_14

    if-nez v0, :cond_14

    .line 781
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getZone()Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v0

    :cond_14
    if-eqz v0, :cond_72

    .line 785
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v7

    .line 786
    iget-object v2, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v3, 0x0

    aget v8, v2, v3

    if-eqz v8, :cond_34

    .line 787
    iget-boolean v2, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->useZoneSetting:Z

    if-eqz v2, :cond_2f

    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->drawZones:Z

    if-eqz v2, :cond_34

    :cond_2f
    move-object v3, p0

    move v5, p1

    move v6, p2

    move-object v4, p3

    goto :goto_39

    :cond_34
    move-object v3, p0

    move v5, p1

    move v6, p2

    move-object v4, p3

    goto :goto_3c

    .line 788
    :goto_39
    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 791
    :goto_3c
    iget-object p1, v0, Linfo/flowersoft/theotown/draft/ZoneDraft;->borderFrames:[I

    if-eqz p1, :cond_73

    if-nez v1, :cond_73

    iget-object p1, v3, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, v5, v6}, Linfo/flowersoft/theotown/city/Tiles;->hasVisibleRoad(II)Z

    move-result p1

    if-nez p1, :cond_73

    .line 792
    iget-object p1, v3, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {p1, v5, v6, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getZoneMask(IILinfo/flowersoft/theotown/draft/ZoneDraft;)I

    move-result p1

    const/16 p2, 0xf

    if-eq p1, p2, :cond_73

    .line 794
    iget-object p2, v4, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 p3, 0xff

    invoke-virtual {p2, p3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 795
    iget p2, v4, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result p1

    .line 796
    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget p3, v4, Linfo/flowersoft/theotown/city/Drawer;->terrainHeight:F

    neg-float p3, p3

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr p3, v1

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ZoneDraft;->borderFrames:[I

    aget p1, v0, p1

    const/4 v0, 0x0

    invoke-virtual {v4, p2, v0, p3, p1}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    return-void

    :cond_72
    move-object v3, p0

    :cond_73
    return-void
.end method

.method public getIcon()I
    .registers 2

    .line 1095
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_BUILD:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 627
    const-string v0, "Default"

    return-object v0
.end method

.method public getIndicatorPtr(II)I
    .registers 9

    .line 914
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->buildIndicators:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    :goto_8
    if-ltz v0, :cond_36

    .line 915
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->buildIndicators:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    .line 916
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->buildIndicators:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    .line 917
    iget-object v3, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->buildIndicators:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    .line 918
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->buildIndicators:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 v5, v0, 0x3

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    if-gt v1, p1, :cond_33

    add-int/2addr v1, v3

    if-gt p1, v1, :cond_33

    if-gt v2, p2, :cond_33

    add-int/2addr v2, v4

    if-gt p2, v2, :cond_33

    return v0

    :cond_33
    add-int/lit8 v0, v0, -0x6

    goto :goto_8

    :cond_36
    const/4 p1, -0x1

    return p1
.end method

.method public getIndicatorTileX(I)I
    .registers 3

    .line 927
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->buildIndicators:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public getIndicatorTileY(I)I
    .registers 3

    .line 931
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->buildIndicators:Lio/blueflower/stapel2d/util/IntList;

    add-int/lit8 p1, p1, 0x5

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p1

    return p1
.end method

.method public getMiniatureColor(Lio/blueflower/stapel2d/drawing/Color;Linfo/flowersoft/theotown/city/Tiles;IIIZ)V
    .registers 14

    .line 632
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->coloring:Linfo/flowersoft/theotown/city/miniatureview/MiniatureViewColoring;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Linfo/flowersoft/theotown/city/miniatureview/MiniatureViewColoring;->getMiniatureColor(Lio/blueflower/stapel2d/drawing/Color;Linfo/flowersoft/theotown/city/Tiles;IIIZ)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1090
    const-string v0, "Default"

    return-object v0
.end method

.method public final lightsOn(Linfo/flowersoft/theotown/city/Drawer;I)Z
    .registers 7

    .line 507
    iget-wide v0, p1, Linfo/flowersoft/theotown/city/Drawer;->daytimeDay:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0xbab

    mul-long/2addr v0, v2

    .line 508
    iget p1, p1, Linfo/flowersoft/theotown/city/Drawer;->daytime:F

    const p2, 0x3d4ccccd    # 0.05f

    add-float/2addr p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xa

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x5

    sub-long/2addr v0, v2

    long-to-float p2, v0

    const/high16 v0, 0x43480000    # 200.0f

    div-float/2addr p2, v0

    add-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    rem-float/2addr p1, p2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    sub-float p1, p2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr p2, p1

    const p1, 0x3ecccccd    # 0.4f

    cmpg-float p1, p2, p1

    if-gez p1, :cond_38

    const/4 p1, 0x1

    return p1

    :cond_38
    const/4 p1, 0x0

    return p1
.end method

.method public mouseMove(IIFFFFZ)V
    .registers 8

    xor-int/lit8 p3, p7, 0x1

    .line 142
    iput-boolean p3, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetHover:Z

    .line 143
    iput p1, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetX:I

    .line 144
    iput p2, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->drawnTargetY:I

    return-void
.end method

.method public onClick(IIFFII)V
    .registers 7

    .line 0
    return-void
.end method

.method public playSound(IIIII)V
    .registers 15

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->soundManager:Linfo/flowersoft/theotown/components/DefaultSoundManager;

    sget-object v1, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v2, Linfo/flowersoft/theotown/tools/DefaultTool$1;

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    move-object v3, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Linfo/flowersoft/theotown/tools/DefaultTool$1;-><init>(Linfo/flowersoft/theotown/tools/DefaultTool;Linfo/flowersoft/theotown/city/City;IIII)V

    invoke-virtual {v0, p1, v1, v2}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playOnce(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    return-void
.end method

.method public update()V
    .registers 1

    .line 0
    return-void
.end method

.method public updateGroundNeighborhood(IILinfo/flowersoft/theotown/city/components/LODController;)V
    .registers 9

    .line 670
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v0

    .line 671
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->groundNeighborhood:Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->reset(Linfo/flowersoft/theotown/city/objects/Ground;)V

    .line 673
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v0

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/GroundDraft;->blending:Z

    if-eqz v0, :cond_7b

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->groundBlending:Z

    if-nez v0, :cond_1c

    goto :goto_7b

    .line 677
    :cond_1c
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/components/LODController;->getScale()I

    move-result p3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ge p3, v0, :cond_2e

    sget-boolean p3, Linfo/flowersoft/theotown/resources/Settings;->adaptiveGroundBlending:Z

    if-eqz p3, :cond_2e

    add-int p3, p1, p2

    and-int/2addr p3, v1

    if-nez p3, :cond_2e

    goto :goto_7b

    :cond_2e
    :goto_2e
    const/16 p3, 0x8

    if-gt v1, p3, :cond_7b

    .line 685
    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result p3

    add-int/2addr p3, p1

    .line 686
    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v0

    add-int/2addr v0, p2

    .line 687
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, p3, v0}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 688
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->groundNeighborhood:Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;

    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v3

    invoke-virtual {v3, p3, v0}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->addGround(Linfo/flowersoft/theotown/city/objects/Ground;F)V

    .line 691
    :cond_55
    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v2

    add-int/2addr p3, v2

    .line 692
    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 693
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, p3, v0}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 694
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->groundNeighborhood:Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;

    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v3

    invoke-virtual {v3, p3, v0}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p3

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {v2, p3, v0}, Linfo/flowersoft/theotown/city/objects/GroundNeighborhood;->addGround(Linfo/flowersoft/theotown/city/objects/Ground;F)V

    :cond_78
    shl-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_7b
    :goto_7b
    return-void
.end method

###### Class info.flowersoft.theotown.tools.DefaultTool.AnonymousClass1 (info.flowersoft.theotown.tools.DefaultTool$1)
.class public Linfo/flowersoft/theotown/tools/DefaultTool$1;
.super Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;
.source "DefaultTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/DefaultTool;->playSound(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/DefaultTool;

.field public final synthetic val$h:I

.field public final synthetic val$w:I

.field public final synthetic val$x:I

.field public final synthetic val$y:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/DefaultTool;Linfo/flowersoft/theotown/city/City;IIII)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 99
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/DefaultTool$1;->this$0:Linfo/flowersoft/theotown/tools/DefaultTool;

    iput p3, p0, Linfo/flowersoft/theotown/tools/DefaultTool$1;->val$x:I

    iput p4, p0, Linfo/flowersoft/theotown/tools/DefaultTool$1;->val$y:I

    iput p5, p0, Linfo/flowersoft/theotown/tools/DefaultTool$1;->val$w:I

    iput p6, p0, Linfo/flowersoft/theotown/tools/DefaultTool$1;->val$h:I

    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/components/soundsource/AbstractTileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method


# virtual methods
.method public getTileHeight()I
    .registers 2

    .line 117
    iget v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool$1;->val$h:I

    return v0
.end method

.method public getTileWidth()I
    .registers 2

    .line 112
    iget v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool$1;->val$w:I

    return v0
.end method

.method public getTileX()F
    .registers 2

    .line 102
    iget v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool$1;->val$x:I

    int-to-float v0, v0

    return v0
.end method

.method public getTileY()F
    .registers 2

    .line 107
    iget v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool$1;->val$y:I

    int-to-float v0, v0

    return v0
.end method

.method public isValid()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method
