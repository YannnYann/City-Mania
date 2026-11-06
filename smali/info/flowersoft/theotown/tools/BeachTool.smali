###### Class info.flowersoft.theotown.tools.BeachTool (info.flowersoft.theotown.tools.BeachTool)
.class public Linfo/flowersoft/theotown/tools/BeachTool;
.super Linfo/flowersoft/theotown/tools/TwoModesTool;
.source "BeachTool.java"


# instance fields
.field public final beachDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public final beachGroundDraft:Linfo/flowersoft/theotown/draft/GroundDraft;

.field public final beachNearWaterDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public price:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 5

    .line 26
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;-><init>()V

    .line 27
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BeachTool;->beachDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 29
    iget-object p1, p1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "nearwater"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BeachTool;->beachNearWaterDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 33
    sget-object p1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v0, "$beach_gnd00"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/GroundDraft;

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BeachTool;->beachGroundDraft:Linfo/flowersoft/theotown/draft/GroundDraft;

    .line 35
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->addUndoButton()V

    return-void
.end method


# virtual methods
.method public build(IIII)V
    .registers 12

    .line 45
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIII)V

    .line 47
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v4, v0

    :goto_8
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gt v4, v0, :cond_5b

    .line 48
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v3, v0

    :goto_13
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-gt v3, v0, :cond_58

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->isGroundWater(II)Z

    move-result v0

    if-nez v0, :cond_55

    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/tools/BeachTool;->isNearWater(II)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BeachTool;->beachDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, v1, v3, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;II)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, v3, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getWaterMask(II)I

    move-result v0

    if-nez v0, :cond_46

    .line 51
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/BeachTool;->beachDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/BuildingDraft;IIILvm2/LuaValue;)Ljava/util/List;

    .line 53
    :cond_46
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BeachTool;->beachGroundDraft:Linfo/flowersoft/theotown/draft/GroundDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/Ground;->setDraft(Linfo/flowersoft/theotown/draft/GroundDraft;)V

    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 58
    :cond_5b
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p1

    iget-wide p2, p0, Linfo/flowersoft/theotown/tools/BeachTool;->price:J

    long-to-double p2, p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "build "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BeachTool;->beachDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DLjava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->issueMovement()V

    .line 61
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    return-void
.end method

.method public drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 11

    .line 129
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 131
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    if-eqz v0, :cond_52

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    goto :goto_61

    .line 138
    :cond_12
    iget v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    if-ne p1, v0, :cond_3a

    iget v1, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    if-ne p2, v1, :cond_3a

    .line 139
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetValid:Z

    if-nez v0, :cond_29

    iget-object v0, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 140
    :cond_29
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_CHECKER:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 141
    iget-object p1, v2, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void

    :cond_3a
    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    .line 143
    iget p1, v1, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    invoke-virtual {p0, v0, p1, v3, v4}, Linfo/flowersoft/theotown/tools/BeachTool;->isValid(IIII)Z

    move-result p1

    if-eqz p1, :cond_61

    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isTileInvolved(II)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 144
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_GREEN_DOTTED:I

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    return-void

    :cond_52
    move v3, p1

    move v4, p2

    move-object v2, p3

    .line 133
    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/tools/BeachTool;->isValid(II)Z

    move-result p1

    if-nez p1, :cond_61

    .line 134
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_RED_DOTTED:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    :cond_61
    :goto_61
    return-void
.end method

.method public getIcon()I
    .registers 2

    .line 153
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_PARK:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Beach:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BeachTool;->beachDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 158
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BeachTool;->beachDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isNearWater(II)Z
    .registers 10

    add-int/lit8 v0, p2, -0x4

    const/4 v1, 0x0

    .line 112
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_7
    add-int/lit8 v2, p2, 0x4

    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-gt v0, v2, :cond_68

    add-int/lit8 v2, p1, -0x4

    .line 113
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_1d
    add-int/lit8 v3, p1, 0x4

    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-gt v2, v3, :cond_65

    .line 114
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, v2, v0}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v3

    .line 115
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v2, v0}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v5

    .line 117
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v6

    if-nez v6, :cond_64

    .line 118
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Ground;->isBorder()Z

    move-result v3

    if-eqz v3, :cond_61

    iget-object v3, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v6, p0, Linfo/flowersoft/theotown/tools/BeachTool;->beachDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v3, v6, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;II)Z

    move-result v3

    if-nez v3, :cond_64

    if-eqz v5, :cond_61

    .line 119
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v3

    iget-object v6, p0, Linfo/flowersoft/theotown/tools/BeachTool;->beachDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eq v3, v6, :cond_64

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v3

    iget-object v5, p0, Linfo/flowersoft/theotown/tools/BeachTool;->beachNearWaterDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-ne v3, v5, :cond_61

    goto :goto_64

    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_64
    :goto_64
    return v4

    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_68
    return v1
.end method

.method public isValid(II)Z
    .registers 3

    .line 66
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/BeachTool;->isNearWater(II)Z

    move-result p1

    return p1
.end method

.method public isValid(IIII)Z
    .registers 13

    const-wide/16 v0, 0x0

    .line 71
    iput-wide v0, p0, Linfo/flowersoft/theotown/tools/BeachTool;->price:J

    sub-int v0, p3, p1

    .line 76
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p4, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lt v0, v1, :cond_20

    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->infiniteRange()Z

    move-result v0

    if-nez v0, :cond_20

    return v2

    .line 80
    :cond_20
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/BeachTool;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_9c

    invoke-virtual {p0, p3, p4}, Linfo/flowersoft/theotown/tools/BeachTool;->isValid(II)Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_9c

    .line 84
    :cond_2e
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v2

    move v3, v1

    :goto_34
    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-gt v0, v4, :cond_7f

    .line 85
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_3e
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-gt v4, v5, :cond_7c

    .line 86
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Linfo/flowersoft/theotown/city/Tiles;->isGroundWater(II)Z

    move-result v5

    if-nez v5, :cond_79

    invoke-virtual {p0, v4, v0}, Linfo/flowersoft/theotown/tools/BeachTool;->isNearWater(II)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 87
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 88
    iget-object v6, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v7, p0, Linfo/flowersoft/theotown/tools/BeachTool;->beachDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v6, v7, v4, v0}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;II)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 89
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Ground;->isBorder()Z

    add-int/lit8 v1, v1, 0x1

    .line 94
    :cond_6f
    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v5

    iget-object v6, p0, Linfo/flowersoft/theotown/tools/BeachTool;->beachGroundDraft:Linfo/flowersoft/theotown/draft/GroundDraft;

    if-eq v5, v6, :cond_79

    add-int/lit8 v3, v3, 0x1

    :cond_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 101
    :cond_7f
    iget-wide p1, p0, Linfo/flowersoft/theotown/tools/BeachTool;->price:J

    iget-object p3, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object p4, p0, Linfo/flowersoft/theotown/tools/BeachTool;->beachDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {p3, p4, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPrice(Linfo/flowersoft/theotown/draft/BuildingDraft;I)J

    move-result-wide p3

    add-long/2addr p1, p3

    iput-wide p1, p0, Linfo/flowersoft/theotown/tools/BeachTool;->price:J

    if-nez v1, :cond_91

    if-nez v3, :cond_91

    return v2

    .line 107
    :cond_91
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p1

    iget-wide p2, p0, Linfo/flowersoft/theotown/tools/BeachTool;->price:J

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result p1

    return p1

    :cond_9c
    :goto_9c
    return v2
.end method
