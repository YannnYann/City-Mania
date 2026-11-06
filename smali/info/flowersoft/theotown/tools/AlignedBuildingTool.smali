###### Class info.flowersoft.theotown.tools.AlignedBuildingTool (info.flowersoft.theotown.tools.AlignedBuildingTool)
.class public Linfo/flowersoft/theotown/tools/AlignedBuildingTool;
.super Linfo/flowersoft/theotown/tools/TwoModesTool;
.source "AlignedBuildingTool.java"


# instance fields
.field public final buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public final frame:I

.field public price:J

.field public zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/BuildingDraft;I)V
    .registers 4

    .line 29
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;-><init>()V

    .line 31
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 35
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 36
    iget v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->setLineWidth(I)V

    .line 37
    iget-boolean p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->frameAlignmentArea:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/TwoModesTool;->setHasToBeLine(Z)V

    .line 38
    iput p2, p0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->frame:I

    .line 40
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->addUndoButton()V

    return-void

    .line 32
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only square buildings are supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static inArea(IIIIII)Z
    .registers 6

    .line 0
    if-gt p2, p0, :cond_a

    if-gt p0, p4, :cond_a

    if-gt p3, p1, :cond_a

    if-gt p1, p5, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final align(IIZ)V
    .registers 12

    .line 154
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 155
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 157
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-ne v1, v2, :cond_3c

    .line 158
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->getAlignMask(II)I

    move-result p1

    if-nez p3, :cond_24

    .line 159
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getFrame()I

    move-result p2

    if-eq p1, p2, :cond_3c

    .line 160
    :cond_24
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/city/objects/Building;->setFrame(I)V

    .line 161
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v2

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v4

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->callEventMethod(Linfo/flowersoft/theotown/draft/Draft;IIIILvm2/LuaValue;)V

    :cond_3c
    return-void
.end method

.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 55
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 56
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    return-void
.end method

.method public build(IIII)V
    .registers 30

    move-object/from16 v0, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    .line 61
    invoke-virtual/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIII)V

    sub-int v1, v5, v3

    sub-int v2, v6, v4

    .line 68
    iget-object v7, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-boolean v8, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildZone:Z

    if-eqz v8, :cond_2c

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget-boolean v8, v7, Linfo/flowersoft/theotown/draft/ZoneDraft;->placeable:Z

    if-eqz v8, :cond_2c

    .line 69
    iget-object v8, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-virtual {v8, v7}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->setZone(Linfo/flowersoft/theotown/draft/ZoneDraft;)V

    .line 70
    iget-object v7, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-virtual {v7, v3, v4, v5, v6}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->setArea(IIII)V

    .line 71
    iget-object v7, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->build()V

    .line 74
    :cond_2c
    iget-object v7, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v8, v7, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v8, v8

    const/16 v9, 0x10

    const/4 v10, 0x1

    if-lt v8, v9, :cond_3c

    iget-boolean v7, v7, Linfo/flowersoft/theotown/draft/BuildingDraft;->alignable:Z

    if-eqz v7, :cond_3c

    move v7, v10

    goto :goto_3d

    :cond_3c
    const/4 v7, 0x0

    :goto_3d
    const/4 v8, -0x1

    if-gez v1, :cond_42

    move v9, v8

    goto :goto_43

    :cond_42
    move v9, v10

    :goto_43
    if-gez v2, :cond_46

    goto :goto_47

    :cond_46
    move v8, v10

    .line 78
    :goto_47
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v12, v1, 0x1

    .line 79
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v13, v1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_56
    if-ge v15, v13, :cond_e8

    move/from16 v16, v1

    move-object/from16 v17, v2

    const/4 v1, 0x0

    :goto_5d
    if-ge v1, v12, :cond_d9

    mul-int v2, v1, v9

    add-int/2addr v2, v3

    mul-int v18, v15, v8

    move/from16 v24, v10

    add-int v10, v4, v18

    .line 84
    iget-object v11, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v14, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v11, v14, v2, v10}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;II)Z

    move-result v11

    if-eqz v11, :cond_d0

    move v11, v1

    move v1, v2

    move v2, v10

    if-eqz v7, :cond_7e

    .line 85
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->getVirtualAlignMask(IIIIII)I

    move-result v10

    :goto_7b
    move/from16 v22, v10

    goto :goto_81

    :cond_7e
    iget v10, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->frame:I

    goto :goto_7b

    .line 87
    :goto_81
    iget-object v10, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v14, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    const/16 v23, 0x0

    move/from16 v20, v1

    move/from16 v21, v2

    move-object/from16 v18, v10

    move-object/from16 v19, v14

    invoke-virtual/range {v18 .. v23}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/BuildingDraft;IIILvm2/LuaValue;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_cc

    .line 92
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_99
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Linfo/flowersoft/theotown/city/objects/Building;

    .line 94
    iget-object v14, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v14

    invoke-virtual {v14}, Linfo/flowersoft/theotown/city/GameMode;->buildImmediately()Z

    move-result v14

    if-eqz v14, :cond_ba

    .line 95
    iget-object v14, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move/from16 v18, v7

    const/4 v7, 0x0

    invoke-virtual {v14, v10, v7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->finishBuilding(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    goto :goto_bd

    :cond_ba
    move/from16 v18, v7

    const/4 v7, 0x0

    :goto_bd
    move-object/from16 v17, v10

    move/from16 v7, v18

    goto :goto_99

    :cond_c2
    move/from16 v18, v7

    const/4 v7, 0x0

    .line 97
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int v16, v16, v1

    goto :goto_d2

    :cond_cc
    :goto_cc
    move/from16 v18, v7

    const/4 v7, 0x0

    goto :goto_d2

    :cond_d0
    move v11, v1

    goto :goto_cc

    :goto_d2
    add-int/lit8 v1, v11, 0x1

    move/from16 v7, v18

    move/from16 v10, v24

    goto :goto_5d

    :cond_d9
    move/from16 v18, v7

    move/from16 v24, v10

    const/4 v7, 0x0

    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v7, v18

    goto/16 :goto_56

    :cond_e8
    move/from16 v18, v7

    move/from16 v24, v10

    .line 103
    iget-object v7, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v8, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v7, v8, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPrice(Linfo/flowersoft/theotown/draft/BuildingDraft;I)J

    move-result-wide v7

    iput-wide v7, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->price:J

    .line 104
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v9

    iget-wide v7, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->price:J

    long-to-double v10, v7

    int-to-float v12, v5

    int-to-float v13, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "build "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {v9 .. v14}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    if-eqz v18, :cond_164

    .line 107
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 108
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 109
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 110
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v1, v1, -0x1

    const/4 v5, 0x0

    .line 111
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v7, v7, -0x1

    .line 112
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v3, v3, 0x1

    .line 113
    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v4, v4, 0x1

    .line 114
    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_152
    if-gt v5, v4, :cond_164

    move v6, v1

    :goto_155
    if-gt v6, v3, :cond_15f

    move/from16 v7, v24

    .line 117
    invoke-virtual {v0, v6, v5, v7}, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->align(IIZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_155

    :cond_15f
    move/from16 v7, v24

    add-int/lit8 v5, v5, 0x1

    goto :goto_152

    :cond_164
    if-eqz v2, :cond_176

    .line 123
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->soundManager:Linfo/flowersoft/theotown/components/DefaultSoundManager;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->SOUND_BUILD:I

    sget-object v4, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v5, Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;

    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v5, v6, v2}, Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/objects/Building;)V

    invoke-virtual {v1, v3, v4, v5}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playOnce(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    .line 126
    :cond_176
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->issueMovement()V

    .line 128
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    return-void
.end method

.method public drawBuildingOpaque(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 3

    .line 50
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/BuildTool;->drawBuildingOpaque(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-ne p1, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    return p1

    :cond_11
    :goto_11
    const/4 p1, 0x1

    return p1
.end method

.method public drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 11

    .line 133
    invoke-virtual/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawHelperLines(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 134
    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v4

    .line 136
    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->mode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_13

    goto :goto_6a

    .line 140
    :cond_13
    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    if-ne v5, p1, :cond_3b

    iget v6, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    if-ne v6, p2, :cond_3b

    .line 141
    iget-boolean v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTarget:Z

    if-eqz v5, :cond_2a

    iget-boolean v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawnTargetValid:Z

    if-nez v5, :cond_2a

    iget-object v5, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 142
    :cond_2a
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_CHECKER:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 143
    iget-object v1, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void

    .line 144
    :cond_3b
    iget v4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    invoke-virtual {p0, v5, v4, p1, p2}, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->isValid(IIII)Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-virtual/range {p0 .. p2}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isTileInvolved(II)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 145
    iget v4, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedX:I

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->selectedY:I

    sub-int/2addr v5, p2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 146
    iget-boolean v5, p0, Linfo/flowersoft/theotown/tools/TwoModesTool;->hasToBeLine:Z

    if-nez v5, :cond_60

    const/4 v4, -0x1

    :cond_60
    move v5, v4

    .line 147
    sget v4, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_GREEN_DOTTED:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/TwoModesTool;->drawOverlay(Linfo/flowersoft/theotown/city/Drawer;IIII)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public final getAlignMask(II)I
    .registers 5

    add-int/lit8 v0, p1, 0x1

    .line 185
    invoke-virtual {p0, v0, p2}, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->isConnectable(II)I

    move-result v0

    add-int/lit8 v1, p2, 0x1

    .line 186
    invoke-virtual {p0, p1, v1}, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->isConnectable(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, -0x1

    .line 187
    invoke-virtual {p0, v1, p2}, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->isConnectable(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    add-int/lit8 p2, p2, -0x1

    .line 188
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->isConnectable(II)I

    move-result p1

    mul-int/lit8 p1, p1, 0x8

    add-int/2addr v0, p1

    return v0
.end method

.method public getIcon()I
    .registers 2

    .line 251
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getIcon()I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlignedBuilding:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVirtualAlignMask(IIIIII)I
    .registers 13

    .line 168
    invoke-static {p3, p5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 169
    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result p5

    .line 170
    invoke-static {p4, p6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 171
    invoke-static {p4, p6}, Ljava/lang/Math;->max(II)I

    move-result p6

    .line 172
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->getAlignMask(II)I

    move-result p3

    add-int/lit8 v0, p1, 0x1

    move v1, p2

    move v4, p5

    move v5, p6

    .line 173
    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->inArea(IIIIII)Z

    move-result p2

    move p4, v3

    or-int v0, p3, p2

    add-int/lit8 p2, v1, 0x1

    move p3, v2

    .line 174
    invoke-static/range {p1 .. p6}, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->inArea(IIIIII)Z

    move-result p2

    move v2, p1

    const/4 v3, 0x0

    if-eqz p2, :cond_2d

    const/4 p1, 0x2

    goto :goto_2e

    :cond_2d
    move p1, v3

    :goto_2e
    or-int/2addr v0, p1

    add-int/lit8 p1, v2, -0x1

    move p2, v1

    .line 175
    invoke-static/range {p1 .. p6}, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->inArea(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_3a

    const/4 p1, 0x4

    goto :goto_3b

    :cond_3a
    move p1, v3

    :goto_3b
    or-int/2addr v0, p1

    add-int/lit8 p2, v1, -0x1

    move p1, v2

    .line 176
    invoke-static/range {p1 .. p6}, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->inArea(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_47

    const/16 v3, 0x8

    :cond_47
    or-int p1, v0, v3

    return p1
.end method

.method public final isConnectable(II)I
    .registers 5

    .line 192
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 193
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 195
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    iget-object p2, p0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-ne p1, p2, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    return v1
.end method

.method public isValid(II)Z
    .registers 5

    .line 246
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, v1, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;II)Z

    move-result p1

    return p1
.end method

.method public isValid(IIII)Z
    .registers 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const-wide/16 v5, 0x0

    .line 203
    iput-wide v5, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->price:J

    .line 204
    invoke-super/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/TwoModesTool;->isValid(IIII)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_b1

    .line 205
    invoke-virtual/range {p0 .. p2}, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {v0, v3, v4}, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->isValid(II)Z

    move-result v5

    if-nez v5, :cond_25

    :cond_21
    move/from16 v16, v6

    goto/16 :goto_b0

    :cond_25
    sub-int v5, v3, v1

    sub-int v7, v4, v2

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-gez v5, :cond_2f

    move v10, v8

    goto :goto_30

    :cond_2f
    move v10, v9

    :goto_30
    if-gez v7, :cond_33

    goto :goto_34

    :cond_33
    move v8, v9

    .line 213
    :goto_34
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v5, v9

    .line 214
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v7, v9

    .line 215
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/16 v11, 0x10

    if-le v9, v11, :cond_47

    return v6

    :cond_47
    move v9, v6

    move v11, v9

    :goto_49
    if-ge v9, v7, :cond_6c

    move v12, v6

    :goto_4c
    if-ge v12, v5, :cond_67

    mul-int v13, v12, v10

    add-int/2addr v13, v1

    mul-int v14, v9, v8

    add-int/2addr v14, v2

    .line 221
    iget-object v15, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move/from16 v16, v6

    iget-object v6, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v15, v6, v13, v14}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;II)Z

    move-result v6

    if-eqz v6, :cond_62

    add-int/lit8 v11, v11, 0x1

    :cond_62
    add-int/lit8 v12, v12, 0x1

    move/from16 v6, v16

    goto :goto_4c

    :cond_67
    move/from16 v16, v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_49

    :cond_6c
    move/from16 v16, v6

    .line 227
    iget-object v5, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v6, v5, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 228
    iget-boolean v7, v6, Linfo/flowersoft/theotown/draft/ZoneDraft;->placeable:Z

    if-eqz v7, :cond_98

    iget-boolean v5, v5, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildZone:Z

    if-eqz v5, :cond_98

    .line 229
    iget-object v5, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->setZone(Linfo/flowersoft/theotown/draft/ZoneDraft;)V

    .line 230
    iget-object v5, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-virtual {v5, v1, v2, v3, v4}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->setArea(IIII)V

    .line 231
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->isBuildable()Z

    move-result v1

    if-nez v1, :cond_8d

    return v16

    .line 234
    :cond_8d
    iget-wide v1, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->price:J

    iget-object v3, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->getPrice()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->price:J

    .line 237
    :cond_98
    iget-wide v1, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->price:J

    iget-object v3, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v4, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->buildingDraft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v3, v4, v11}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPrice(Linfo/flowersoft/theotown/draft/BuildingDraft;I)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->price:J

    .line 238
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v1

    iget-wide v2, v0, Linfo/flowersoft/theotown/tools/AlignedBuildingTool;->price:J

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result v1

    return v1

    :goto_b0
    return v16

    :cond_b1
    move/from16 v16, v6

    return v16
.end method
