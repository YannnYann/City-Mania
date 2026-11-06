###### Class info.flowersoft.theotown.tools.TerrainHillTool (info.flowersoft.theotown.tools.TerrainHillTool)
.class public Linfo/flowersoft/theotown/tools/TerrainHillTool;
.super Linfo/flowersoft/theotown/tools/BuildTool;
.source "TerrainHillTool.java"


# instance fields
.field public final TOOL_INCREASE:Linfo/flowersoft/theotown/draft/ToolDraft;

.field public final TOOL_LOWER:Linfo/flowersoft/theotown/draft/ToolDraft;

.field public final TOOL_PLATFORM:Linfo/flowersoft/theotown/draft/ToolDraft;

.field public final draft:Linfo/flowersoft/theotown/draft/ToolDraft;

.field public notBuildableBecauseOfPrice:Z

.field public price:J

.field public tx:I

.field public ty:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/ToolDraft;)V
    .registers 4

    .line 29
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/BuildTool;-><init>()V

    .line 16
    const-string v0, "$tool_terrain_increase00"

    const-class v1, Linfo/flowersoft/theotown/draft/ToolDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/ToolDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool;->TOOL_INCREASE:Linfo/flowersoft/theotown/draft/ToolDraft;

    .line 17
    const-string v0, "$tool_terrain_lower00"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/ToolDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool;->TOOL_LOWER:Linfo/flowersoft/theotown/draft/ToolDraft;

    .line 18
    const-string v0, "$tool_terrain_platform00"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/ToolDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool;->TOOL_PLATFORM:Linfo/flowersoft/theotown/draft/ToolDraft;

    .line 30
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool;->draft:Linfo/flowersoft/theotown/draft/ToolDraft;

    const/4 p1, 0x1

    const/16 v0, 0xa

    .line 32
    invoke-virtual {p0, p1, p1, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->addRadiusActionButtons(III)V

    .line 34
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->addUndoButton()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/tools/TerrainHillTool;II)V
    .registers 3

    .line 14
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/TerrainHillTool;->apply(II)V

    return-void
.end method

.method private isValid(II)Z
    .registers 8

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool;->notBuildableBecauseOfPrice:Z

    .line 94
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/TerrainHillTool;->prepareBuilder(II)Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->isBuildable()Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_24

    .line 97
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->getMovedEarth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    int-to-long v2, v2

    iput-wide v2, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool;->price:J

    .line 98
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v2

    iget-wide v3, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool;->price:J

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result v2

    xor-int/2addr v2, v1

    iput-boolean v2, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool;->notBuildableBecauseOfPrice:Z

    .line 100
    :cond_24
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->clear()V

    if-eqz p2, :cond_2e

    .line 101
    iget-boolean p1, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool;->notBuildableBecauseOfPrice:Z

    if-nez p1, :cond_2e

    return v1

    :cond_2e
    return v0
.end method


# virtual methods
.method public final apply(II)V
    .registers 13

    .line 121
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/TerrainHillTool;->prepareBuilder(II)Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->isBuildable()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 123
    iget v1, p0, Linfo/flowersoft/theotown/tools/BuildTool;->toolRadius:I

    add-int/lit8 v9, v1, 0xe

    move v5, p1

    move v6, p2

    move v7, p1

    move v8, p2

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v9}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIIIIII)V

    .line 125
    iget-object p1, v2, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->canAchieve()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 126
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string p2, "terraform"

    invoke-interface {p1, p2}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    .line 129
    :cond_27
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->getMovedEarth()I

    move-result p1

    mul-int/lit8 p1, p1, 0x64

    int-to-long p1, p1

    iput-wide p1, v2, Linfo/flowersoft/theotown/tools/TerrainHillTool;->price:J

    move p1, v3

    .line 130
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v3

    iget-wide v5, v2, Linfo/flowersoft/theotown/tools/TerrainHillTool;->price:J

    long-to-double v5, v5

    int-to-float p1, p1

    int-to-float v7, v4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "build terrain "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->getMovedEarth()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-wide v4, v5

    move v6, p1

    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->apply()V

    .line 133
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    return-void

    :cond_5b
    move-object v2, p0

    .line 135
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->clear()V

    return-void
.end method

.method public drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 16

    .line 44
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    add-int v0, p1, p2

    .line 45
    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    iget-object v0, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 46
    :cond_14
    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/tools/TerrainHillTool;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 47
    iget v9, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool;->tx:I

    if-ltz v9, :cond_39

    iget v10, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool;->ty:I

    iget v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->toolRadius:I

    add-int/lit8 v11, v0, -0x1

    move-object v6, p0

    move v7, p1

    move v8, p2

    invoke-virtual/range {v6 .. v11}, Linfo/flowersoft/theotown/tools/TerrainHillTool;->isInRadius(IIIII)Z

    move-result p1

    move v3, v7

    move v4, v8

    if-eqz p1, :cond_37

    .line 48
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_BLUE_DOTTED:I

    move-object v1, p0

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    goto :goto_50

    :cond_37
    :goto_37
    move-object v2, p3

    goto :goto_3c

    :cond_39
    move v3, p1

    move v4, p2

    goto :goto_37

    .line 50
    :goto_3c
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_GREEN_DOTTED:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    goto :goto_50

    :cond_43
    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    .line 52
    iget-boolean p1, v1, Linfo/flowersoft/theotown/tools/TerrainHillTool;->notBuildableBecauseOfPrice:Z

    if-eqz p1, :cond_50

    .line 53
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_YELLOW_DOTTED:I

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 55
    :cond_50
    :goto_50
    iget-object p1, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getIcon()I
    .registers 3

    .line 164
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool;->draft:Linfo/flowersoft/theotown/draft/ToolDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 39
    const-string v0, "TerrainHill"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool;->draft:Linfo/flowersoft/theotown/draft/ToolDraft;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Linfo/flowersoft/theotown/tools/BuildTool;->toolRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isInRadius(IIIII)Z
    .registers 6

    .line 0
    sub-int/2addr p1, p3

    sub-int/2addr p2, p4

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    mul-int/2addr p5, p5

    if-gt p1, p5, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public mouseMove(IIFFFFZ)V
    .registers 8

    .line 147
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    float-to-int p2, p5

    float-to-int p3, p6

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/City;->resolveScreenToTile(II)Linfo/flowersoft/theotown/city/City$ScreenToTileData;

    move-result-object p1

    .line 148
    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    iget p3, p1, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->originalX:I

    iget p4, p1, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->originalY:I

    invoke-virtual {p2, p3, p4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 149
    iget p2, p1, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->originalX:I

    iput p2, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool;->tx:I

    .line 150
    iget p1, p1, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->originalY:I

    iput p1, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool;->ty:I

    return-void

    :cond_1d
    const/4 p1, -0x1

    .line 152
    iput p1, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool;->tx:I

    .line 153
    iput p1, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool;->ty:I

    return-void
.end method

.method public onClick(IIFFII)V
    .registers 13

    .line 106
    invoke-super/range {p0 .. p6}, Linfo/flowersoft/theotown/tools/DefaultTool;->onClick(IIFFII)V

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 108
    invoke-direct {p0, p2, p3}, Linfo/flowersoft/theotown/tools/TerrainHillTool;->isValid(II)Z

    move-result p4

    if-eqz p4, :cond_10

    .line 109
    invoke-virtual {p0, p2, p3}, Linfo/flowersoft/theotown/tools/TerrainHillTool;->apply(II)V

    return-void

    .line 110
    :cond_10
    iget-boolean p4, p1, Linfo/flowersoft/theotown/tools/TerrainHillTool;->notBuildableBecauseOfPrice:Z

    if-eqz p4, :cond_23

    .line 111
    iget-object v0, p1, Linfo/flowersoft/theotown/city/components/Tool;->moneyNeededListener:Linfo/flowersoft/theotown/city/components/ResourceNeededListener;

    iget-wide v1, p1, Linfo/flowersoft/theotown/tools/TerrainHillTool;->price:J

    new-instance v3, Linfo/flowersoft/theotown/tools/TerrainHillTool$1;

    invoke-direct {v3, p0, p2, p3}, Linfo/flowersoft/theotown/tools/TerrainHillTool$1;-><init>(Linfo/flowersoft/theotown/tools/TerrainHillTool;II)V

    const-string v4, "terrainHillPrice"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Linfo/flowersoft/theotown/city/components/ResourceNeededListener;->beg(JLjava/lang/Runnable;Ljava/lang/String;Z)V

    :cond_23
    return-void
.end method

.method public final prepareBuilder(II)Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;
    .registers 11

    .line 59
    iget v0, p0, Linfo/flowersoft/theotown/tools/BuildTool;->toolRadius:I

    const/4 v1, 0x1

    add-int/lit8 v7, v0, -0x1

    .line 60
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getTerrainBuilder()Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;

    move-result-object v0

    .line 62
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool;->draft:Linfo/flowersoft/theotown/draft/ToolDraft;

    iget-object v3, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool;->TOOL_INCREASE:Linfo/flowersoft/theotown/draft/ToolDraft;

    if-ne v2, v3, :cond_47

    sub-int v2, p2, v7

    move v4, v2

    :goto_14
    add-int v2, p2, v7

    if-gt v4, v2, :cond_44

    sub-int v2, p1, v7

    move v3, v2

    :goto_1b
    add-int v2, p1, v7

    if-gt v3, v2, :cond_3d

    .line 65
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_35

    move-object v2, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/tools/TerrainHillTool;->isInRadius(IIIII)Z

    move-result p1

    move-object p2, v2

    if-eqz p1, :cond_38

    .line 66
    invoke-virtual {v0, v3, v4, v1}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->addTargetShifted(III)V

    goto :goto_38

    :cond_35
    move v5, p1

    move v6, p2

    move-object p2, p0

    :cond_38
    :goto_38
    add-int/lit8 v3, v3, 0x1

    move p1, v5

    move p2, v6

    goto :goto_1b

    :cond_3d
    move v5, p1

    move v6, p2

    move-object p2, p0

    add-int/lit8 v4, v4, 0x1

    move p2, v6

    goto :goto_14

    :cond_44
    move-object v2, p0

    goto/16 :goto_ad

    :cond_47
    move v5, p1

    move v6, p2

    move-object p2, p0

    .line 70
    iget-object p1, p2, Linfo/flowersoft/theotown/tools/TerrainHillTool;->TOOL_LOWER:Linfo/flowersoft/theotown/draft/ToolDraft;

    if-ne v2, p1, :cond_77

    sub-int p1, v6, v7

    move v4, p1

    :goto_51
    add-int p1, v6, v7

    if-gt v4, p1, :cond_75

    sub-int p1, v5, v7

    move v3, p1

    :goto_58
    add-int p1, v5, v7

    if-gt v3, p1, :cond_72

    .line 73
    iget-object p1, p2, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1, v3, v4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p1

    if-eqz p1, :cond_6f

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/tools/TerrainHillTool;->isInRadius(IIIII)Z

    move-result p1

    if-eqz p1, :cond_6f

    const/4 p1, -0x1

    .line 74
    invoke-virtual {v0, v3, v4, p1}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->addTargetShifted(III)V

    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    :cond_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    :cond_75
    move-object v2, p2

    goto :goto_ad

    .line 78
    :cond_77
    iget-object p1, p2, Linfo/flowersoft/theotown/tools/TerrainHillTool;->TOOL_PLATFORM:Linfo/flowersoft/theotown/draft/ToolDraft;

    if-ne v2, p1, :cond_75

    sub-int p1, v6, v7

    move v4, p1

    :goto_7e
    add-int p1, v6, v7

    if-gt v4, p1, :cond_75

    sub-int p1, v5, v7

    move v3, p1

    :goto_85
    add-int p1, v5, v7

    if-gt v3, p1, :cond_a9

    .line 81
    iget-object p1, p2, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1, v3, v4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p1

    move-object v2, p2

    if-eqz p1, :cond_a5

    invoke-virtual/range {v2 .. v7}, Linfo/flowersoft/theotown/tools/TerrainHillTool;->isInRadius(IIIII)Z

    move-result p1

    if-eqz p1, :cond_a5

    .line 82
    iget-object p1, v2, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, v5, v6}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainAvgHeight(II)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, v3, v4, p1}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->addTarget(III)V

    :cond_a5
    add-int/lit8 v3, v3, 0x1

    move-object p2, v2

    goto :goto_85

    :cond_a9
    move-object v2, p2

    add-int/lit8 v4, v4, 0x1

    goto :goto_7e

    .line 87
    :goto_ad
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/TerrainBuilder;->calculate()V

    return-object v0
.end method

###### Class info.flowersoft.theotown.tools.TerrainHillTool.AnonymousClass1 (info.flowersoft.theotown.tools.TerrainHillTool$1)
.class public Linfo/flowersoft/theotown/tools/TerrainHillTool$1;
.super Ljava/lang/Object;
.source "TerrainHillTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/TerrainHillTool;->onClick(IIFFII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/TerrainHillTool;

.field public final synthetic val$x:I

.field public final synthetic val$y:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/TerrainHillTool;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool$1;->this$0:Linfo/flowersoft/theotown/tools/TerrainHillTool;

    iput p2, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool$1;->val$x:I

    iput p3, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool$1;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 114
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool$1;->this$0:Linfo/flowersoft/theotown/tools/TerrainHillTool;

    iget v1, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool$1;->val$x:I

    iget v2, p0, Linfo/flowersoft/theotown/tools/TerrainHillTool$1;->val$y:I

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/tools/TerrainHillTool;->access$000(Linfo/flowersoft/theotown/tools/TerrainHillTool;II)V

    return-void
.end method
