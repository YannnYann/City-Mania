###### Class info.flowersoft.theotown.tools.BuildingTool (info.flowersoft.theotown.tools.BuildingTool)
.class public Linfo/flowersoft/theotown/tools/BuildingTool;
.super Linfo/flowersoft/theotown/tools/BuildTool;
.source "BuildingTool.java"


# instance fields
.field public absOffsetX:F

.field public absOffsetY:F

.field public afterDrawing:Linfo/flowersoft/theotown/scripting/MethodCluster;

.field public beforeDrawing:Linfo/flowersoft/theotown/scripting/MethodCluster;

.field public buildable:Z

.field public cursorType:Linfo/flowersoft/theotown/ui/CursorType;

.field public draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

.field public frame:I

.field public mouseMovedMS:J

.field public notBuildableBecauseOfPrice:Z

.field public notBuildableReason:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

.field public postponedCharger:Linfo/flowersoft/theotown/tools/PostponedCharger;

.field public price:J

.field public rotation:I

.field public selectedX:I

.field public selectedY:I

.field public zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 3

    const/4 v0, -0x1

    .line 92
    invoke-direct {p0, p1, v0}, Linfo/flowersoft/theotown/tools/BuildingTool;-><init>(Linfo/flowersoft/theotown/draft/BuildingDraft;I)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/draft/BuildingDraft;I)V
    .registers 4

    .line 100
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/BuildTool;-><init>()V

    .line 101
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/BuildingTool;->setDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    if-eqz p1, :cond_11

    .line 102
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->randomFrame:Z

    if-nez v0, :cond_11

    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 103
    :cond_11
    iput p2, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->frame:I

    .line 105
    new-instance p2, Linfo/flowersoft/theotown/tools/BuildingTool$1;

    invoke-direct {p2, p0, p1}, Linfo/flowersoft/theotown/tools/BuildingTool$1;-><init>(Linfo/flowersoft/theotown/tools/BuildingTool;Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    .line 182
    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v0, Linfo/flowersoft/theotown/tools/BuildingTool$2;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/tools/BuildingTool$2;-><init>(Linfo/flowersoft/theotown/tools/BuildingTool;)V

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    .line 219
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->hasFrames()Z

    move-result p2

    if-nez p2, :cond_2f

    if-nez p1, :cond_2e

    goto :goto_2f

    :cond_2e
    return-void

    .line 220
    :cond_2f
    :goto_2f
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance p2, Linfo/flowersoft/theotown/tools/BuildingTool$3;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/tools/BuildingTool$3;-><init>(Linfo/flowersoft/theotown/tools/BuildingTool;)V

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    .line 252
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance p2, Linfo/flowersoft/theotown/tools/BuildingTool$4;

    invoke-direct {p2, p0}, Linfo/flowersoft/theotown/tools/BuildingTool$4;-><init>(Linfo/flowersoft/theotown/tools/BuildingTool;)V

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/tools/BuildingTool;)Linfo/flowersoft/theotown/city/Tiles;
    .registers 1

    .line 64
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/tools/BuildingTool;)Linfo/flowersoft/theotown/draft/BuildingDraft;
    .registers 1

    .line 64
    iget-object p0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/tools/BuildingTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 64
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/tools/BuildingTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 64
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/tools/BuildingTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 64
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/tools/BuildingTool;ZZ)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 3

    .line 64
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/BuildingTool;->finallyBuild(ZZ)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public afterBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final afterDrawBuilding(I)V
    .registers 9

    .line 380
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->afterDrawing:Linfo/flowersoft/theotown/scripting/MethodCluster;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 381
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->afterDrawing:Linfo/flowersoft/theotown/scripting/MethodCluster;

    iget v2, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    iget v3, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    iget-boolean v5, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->buildable:Z

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v6, v0, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(IIIZLvm2/LuaValue;)Z

    :cond_1a
    return-void
.end method

.method public beforeBuilding()V
    .registers 1

    .line 0
    return-void
.end method

.method public final beforeDrawBuilding(I)V
    .registers 9

    .line 369
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->beforeDrawing:Linfo/flowersoft/theotown/scripting/MethodCluster;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/MethodCluster;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 370
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->beforeDrawing:Linfo/flowersoft/theotown/scripting/MethodCluster;

    iget v2, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    iget v3, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    iget-boolean v5, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->buildable:Z

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v6, v0, Linfo/flowersoft/theotown/draft/Draft;->luaRepr:Lvm2/LuaValue;

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/scripting/MethodCluster;->invoke(IIIZLvm2/LuaValue;)Z

    :cond_1a
    return-void
.end method

.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 319
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 320
    new-instance v0, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    return-void
.end method

.method public final buildRail(Linfo/flowersoft/theotown/draft/RailDraft;II)V
    .registers 23

    move-object/from16 v0, p0

    .line 1079
    rem-int/lit8 v1, p2, 0x4

    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result v1

    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->axis(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    .line 1080
    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v2

    .line 1081
    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v3

    .line 1083
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingWidth()I

    move-result v4

    .line 1084
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingHeight()I

    move-result v5

    const/4 v6, 0x1

    if-ne v1, v6, :cond_2d

    .line 1087
    iget v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    .line 1088
    iget v7, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    div-int/lit8 v8, v5, 0x2

    add-int/2addr v7, v8

    add-int v7, v7, p3

    :goto_2a
    move v10, v1

    move v11, v7

    goto :goto_37

    .line 1090
    :cond_2d
    iget v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v1, v7

    add-int v1, v1, p3

    .line 1091
    iget v7, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    goto :goto_2a

    :goto_37
    sub-int/2addr v4, v6

    mul-int/2addr v4, v2

    add-int v12, v10, v4

    sub-int/2addr v5, v6

    mul-int/2addr v5, v3

    add-int v13, v11, v5

    .line 1097
    iget-object v8, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v14, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v14}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/RailDraft;IIIILvm2/LuaValue;)Ljava/util/List;

    .line 1099
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    sub-int v14, v10, v2

    sub-int v15, v11, v3

    move/from16 v16, v12

    move/from16 v17, v13

    move-object/from16 v13, p1

    move-object v12, v1

    invoke-virtual/range {v12 .. v17}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/RailDraft;IIII)Z

    move-result v1

    move/from16 v12, v16

    move/from16 v13, v17

    if-eqz v1, :cond_5f

    goto :goto_61

    :cond_5f
    move v14, v10

    move v15, v11

    .line 1104
    :goto_61
    iget-object v4, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    add-int v8, v12, v2

    add-int v9, v13, v3

    move-object/from16 v5, p1

    move v6, v14

    move v7, v15

    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/RailDraft;IIII)Z

    move-result v1

    if-eqz v1, :cond_76

    move/from16 v16, v8

    move/from16 v17, v9

    goto :goto_7a

    :cond_76
    move/from16 v16, v12

    move/from16 v17, v13

    .line 1110
    :goto_7a
    iget-object v12, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/16 v18, 0x0

    move-object/from16 v13, p1

    invoke-virtual/range {v12 .. v18}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/RailDraft;IIIILvm2/LuaValue;)Ljava/util/List;

    return-void
.end method

.method public final buildRoad(Linfo/flowersoft/theotown/draft/RoadDraft;IIZII)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 1020
    iget-object v3, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getRoadBuilder()Linfo/flowersoft/theotown/city/modifier/RoadBuilder;

    move-result-object v3

    .line 1021
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingWidth()I

    move-result v4

    .line 1022
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingHeight()I

    move-result v5

    move/from16 v6, p2

    move/from16 v7, p5

    :goto_18
    if-eqz v7, :cond_ba

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_ae

    .line 1026
    rem-int/lit8 v8, v6, 0x4

    invoke-static {v8}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result v8

    invoke-static {v8}, Linfo/flowersoft/theotown/city/Direction;->axis(I)I

    move-result v8

    and-int/lit8 v8, v8, 0x3

    .line 1027
    invoke-static {v8}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v9

    .line 1028
    invoke-static {v8}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v10

    const/4 v11, 0x0

    :goto_33
    if-ge v11, v4, :cond_ae

    .line 1031
    iget v12, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    .line 1032
    iget v13, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    const/4 v14, 0x1

    if-ne v8, v14, :cond_46

    if-eqz p4, :cond_40

    add-int/2addr v13, v11

    goto :goto_4f

    .line 1035
    :cond_40
    div-int/lit8 v14, v5, 0x2

    add-int/2addr v13, v14

    add-int v13, v13, p6

    goto :goto_4f

    :cond_46
    if-eqz p4, :cond_4a

    add-int/2addr v12, v11

    goto :goto_4f

    .line 1037
    :cond_4a
    div-int/lit8 v14, v4, 0x2

    add-int/2addr v12, v14

    add-int v12, v12, p6

    :goto_4f
    add-int/lit8 v14, v4, -0x1

    mul-int/2addr v14, v9

    add-int/2addr v14, v12

    add-int/lit8 v15, v5, -0x1

    mul-int/2addr v15, v10

    add-int/2addr v15, v13

    .line 1043
    invoke-virtual {v3, v12, v13, v14, v15}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    .line 1044
    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLevels(I)V

    const/4 v0, 0x0

    .line 1045
    invoke-virtual {v3, v1, v0}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    .line 1046
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->build()V

    sub-int v0, v12, v9

    move/from16 v16, v4

    sub-int v4, v13, v10

    .line 1048
    invoke-virtual {v3, v0, v4, v14, v15}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    .line 1049
    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLevels(I)V

    move/from16 p5, v0

    const/4 v0, 0x0

    .line 1050
    invoke-virtual {v3, v1, v0}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    .line 1051
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->isBuildable()Z

    move-result v17

    if-eqz v17, :cond_7f

    move/from16 v12, p5

    move v13, v4

    :cond_7f
    add-int v4, v14, v9

    add-int v0, v15, v10

    .line 1056
    invoke-virtual {v3, v12, v13, v4, v0}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    .line 1057
    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLevels(I)V

    move/from16 p5, v0

    const/4 v0, 0x0

    .line 1058
    invoke-virtual {v3, v1, v0}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    .line 1059
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->isBuildable()Z

    move-result v17

    if-eqz v17, :cond_98

    move/from16 v15, p5

    move v14, v4

    .line 1064
    :cond_98
    invoke-virtual {v3, v12, v13, v14, v15}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLine(IIII)V

    .line 1065
    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->setLevels(I)V

    .line 1066
    invoke-virtual {v3, v1, v0}, Linfo/flowersoft/theotown/city/modifier/RoadBuilder;->setDraft(Linfo/flowersoft/theotown/draft/RoadDraft;Lvm2/LuaValue;)V

    .line 1067
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/modifier/LineBuilder;->build()V

    if-nez p4, :cond_a7

    goto :goto_b0

    :cond_a7
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v4, v16

    goto :goto_33

    :cond_ae
    move/from16 v16, v4

    :goto_b0
    add-int/lit8 v6, v6, 0x1

    .line 1074
    div-int/lit8 v7, v7, 0x2

    move-object/from16 v0, p0

    move/from16 v4, v16

    goto/16 :goto_18

    :cond_ba
    return-void
.end method

.method public canBeginMove(FFIIFF)Z
    .registers 7

    .line 1219
    sget-boolean p3, Linfo/flowersoft/theotown/resources/Settings;->buildingToolOld:Z

    if-eqz p3, :cond_6

    const/4 p1, 0x0

    return p1

    .line 1221
    :cond_6
    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object p3

    float-to-int p1, p1

    float-to-int p2, p2

    .line 1222
    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoX(II)I

    move-result p4

    .line 1223
    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoY(II)I

    move-result p3

    .line 1224
    iget-object p5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p5, p4, p3}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result p5

    .line 1225
    iget-object p6, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p6, p4, p3}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result p3

    .line 1226
    invoke-virtual {p0, p5, p3, p1, p2}, Linfo/flowersoft/theotown/tools/BuildingTool;->isWithinBuilding(IIII)Z

    move-result p1

    return p1
.end method

.method public draw(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 35

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v1, p3

    .line 387
    iget v4, v1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    iput v4, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->rotation:I

    .line 388
    iget v4, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->frame:I

    const/4 v10, 0x0

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 389
    rem-int/lit8 v11, v9, 0x4

    neg-int v4, v11

    add-int/lit8 v4, v4, 0x4

    rem-int/lit8 v14, v4, 0x4

    .line 390
    iget v4, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->rotation:I

    add-int/2addr v4, v9

    rem-int/lit8 v6, v4, 0x4

    .line 391
    iget-boolean v12, v1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 393
    invoke-super/range {p0 .. p3}, Linfo/flowersoft/theotown/tools/BuildTool;->draw(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 395
    iget-object v4, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v4, :cond_2e2

    .line 396
    invoke-virtual {v0, v6}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingWidth(I)I

    move-result v4

    .line 397
    invoke-virtual {v0, v6}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingHeight(I)I

    move-result v5

    .line 398
    iput-boolean v10, v1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    .line 399
    iget v7, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    if-lt v2, v7, :cond_4f

    iget v8, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    if-lt v3, v8, :cond_4f

    add-int/2addr v7, v4

    if-ge v2, v7, :cond_4f

    add-int/2addr v8, v5

    if-ge v3, v8, :cond_4f

    .line 400
    iget-object v4, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v4

    .line 401
    sget v5, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_GREEN_DOTTED:I

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    :cond_4f
    move-object v13, v0

    move-object v15, v1

    .line 404
    invoke-virtual {v13, v14}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingWidth(I)I

    move-result v16

    .line 405
    iget v2, v13, Linfo/flowersoft/theotown/tools/BuildingTool;->rotation:I

    iget-object v3, v13, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v5, v13, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    move v4, v6

    iget v6, v13, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    add-int/lit8 v7, v16, -0x1

    const/4 v8, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static/range {v0 .. v8}, Linfo/flowersoft/theotown/city/objects/Building;->isPivot(IIILinfo/flowersoft/theotown/draft/BuildingDraft;IIIII)Z

    move-result v2

    if-eqz v2, :cond_2e0

    rsub-int/lit8 v0, v16, 0x1

    int-to-float v0, v0

    const/4 v6, 0x0

    .line 406
    invoke-virtual {v15, v0, v6}, Linfo/flowersoft/theotown/city/Drawer;->addShiftToTile(FF)V

    .line 407
    iget-object v0, v13, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v1, v13, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    iget v2, v13, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    invoke-virtual {v13, v0, v1, v2, v14}, Linfo/flowersoft/theotown/tools/BuildingTool;->getMaxTerrainHeight(Linfo/flowersoft/theotown/draft/BuildingDraft;III)F

    move-result v0

    neg-float v0, v0

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    invoke-virtual {v15, v6, v0}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 408
    iget v7, v15, Linfo/flowersoft/theotown/city/Drawer;->x:F

    .line 409
    iget v8, v15, Linfo/flowersoft/theotown/city/Drawer;->y:F

    .line 410
    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/Drawer;->getShiftX()F

    move-result v0

    .line 411
    invoke-virtual {v15}, Linfo/flowersoft/theotown/city/Drawer;->getShiftY()F

    move-result v1

    .line 413
    invoke-virtual {v13, v9}, Linfo/flowersoft/theotown/tools/BuildingTool;->beforeDrawBuilding(I)V

    .line 414
    iput v7, v15, Linfo/flowersoft/theotown/city/Drawer;->x:F

    .line 415
    iput v8, v15, Linfo/flowersoft/theotown/city/Drawer;->y:F

    .line 416
    invoke-virtual {v15, v0, v1}, Linfo/flowersoft/theotown/city/Drawer;->setShift(FF)V

    move v2, v1

    .line 418
    iget-object v1, v13, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    if-nez v3, :cond_b7

    move/from16 v3, p2

    move v5, v9

    move-object v4, v15

    move v9, v0

    move-object v0, v13

    move v13, v2

    move/from16 v2, p1

    .line 420
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/BuildingTool;->drawBuilding(Linfo/flowersoft/theotown/draft/BuildingDraft;IILinfo/flowersoft/theotown/city/Drawer;I)V

    move-object v1, v4

    move v2, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 p1, v12

    move v12, v5

    goto/16 :goto_2c5

    :cond_b7
    move v5, v9

    move-object v1, v15

    move v9, v0

    move-object v15, v3

    move-object v0, v13

    move/from16 v3, p2

    move v13, v2

    move/from16 v2, p1

    .line 422
    sget-object v21, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 423
    invoke-virtual {v15, v14}, Linfo/flowersoft/theotown/draft/Composition;->listXY(I)[I

    move-result-object v4

    .line 424
    iget-object v10, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v10, v2, v3}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    sub-int v10, v10, v16

    .line 425
    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v2, v3}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result v22

    const/4 v6, 0x0

    .line 427
    :goto_d8
    array-length v2, v4

    if-ge v6, v2, :cond_2bd

    move v2, v12

    .line 428
    aget v12, v4, v6

    add-int/lit8 v3, v6, 0x1

    .line 429
    aget v3, v4, v3

    move/from16 v23, v10

    .line 430
    invoke-virtual {v15, v12, v3, v14}, Linfo/flowersoft/theotown/draft/Composition;->toVisualX(III)I

    move-result v10

    move/from16 v24, v11

    .line 431
    invoke-virtual {v15, v12, v3, v14}, Linfo/flowersoft/theotown/draft/Composition;->toVisualY(III)I

    move-result v11

    move/from16 p1, v2

    .line 432
    iget-object v2, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    move-object/from16 v25, v4

    add-int v4, v23, v10

    move/from16 v26, v5

    add-int v5, v22, v11

    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result v2

    move/from16 p2, v6

    .line 433
    iget-object v6, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v4, v5}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result v4

    .line 435
    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, v2, v4}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v5

    if-eqz v5, :cond_297

    int-to-float v5, v10

    int-to-float v6, v11

    .line 436
    invoke-virtual {v1, v5, v6}, Linfo/flowersoft/theotown/city/Drawer;->addShiftToTile(FF)V

    .line 437
    invoke-virtual {v15, v12, v3}, Linfo/flowersoft/theotown/draft/Composition;->getBuilding(II)Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;

    move-result-object v5

    if-eqz v5, :cond_17d

    move-object v6, v15

    .line 439
    iget-object v15, v5, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-boolean v0, v15, Linfo/flowersoft/theotown/draft/BuildingDraft;->rotationAware:Z

    move/from16 v16, v0

    if-eqz v0, :cond_125

    iget v0, v5, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->frame:I

    goto :goto_126

    :cond_125
    const/4 v0, 0x0

    :goto_126
    if-eqz v16, :cond_138

    move/from16 v16, v0

    .line 440
    iget v0, v5, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->frame:I

    add-int v0, v24, v0

    move/from16 v17, v0

    iget-object v0, v15, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v0, v0

    rem-int v0, v17, v0

    :goto_135
    move/from16 v27, v0

    goto :goto_13d

    :cond_138
    move/from16 v16, v0

    iget v0, v5, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->frame:I

    goto :goto_135

    .line 441
    :goto_13d
    iget v0, v5, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->x:I

    move/from16 v17, v0

    iget v0, v5, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->y:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v18, v0

    move v0, v13

    move v13, v3

    move-object v3, v6

    move/from16 v6, p1

    invoke-static/range {v12 .. v20}, Linfo/flowersoft/theotown/city/objects/Building;->isPivot(IIILinfo/flowersoft/theotown/draft/BuildingDraft;IIIII)Z

    move-result v12

    if-eqz v12, :cond_166

    .line 442
    iget-object v5, v5, Linfo/flowersoft/theotown/draft/Composition$CompositeBuilding;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    move v13, v0

    move-object v15, v3

    move v3, v4

    move/from16 v12, v26

    move-object/from16 v0, p0

    move-object v4, v1

    move-object v1, v5

    move/from16 v5, v27

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/BuildingTool;->drawBuilding(Linfo/flowersoft/theotown/draft/BuildingDraft;IILinfo/flowersoft/theotown/city/Drawer;I)V

    move-object v1, v4

    goto :goto_16c

    :cond_166
    move v13, v0

    move-object v15, v3

    move/from16 v12, v26

    move-object/from16 v0, p0

    :goto_16c
    move/from16 v16, p2

    move/from16 p1, v6

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v18, v14

    move-object/from16 v3, v21

    :cond_17a
    const/4 v14, 0x0

    goto/16 :goto_28f

    :cond_17d
    move/from16 v6, p1

    move v5, v3

    move v4, v12

    move/from16 v12, v26

    .line 445
    invoke-virtual {v15, v4, v5}, Linfo/flowersoft/theotown/draft/Composition;->hasRoad(II)Z

    move-result v2

    if-eqz v2, :cond_260

    .line 446
    invoke-virtual {v15, v4, v5}, Linfo/flowersoft/theotown/draft/Composition;->getMinRoadLevel(II)I

    move-result v2

    .line 447
    invoke-virtual {v15, v4, v5}, Linfo/flowersoft/theotown/draft/Composition;->getMaxRoadLevel(II)I

    move-result v3

    :goto_191
    if-gt v2, v3, :cond_260

    move/from16 v16, v7

    .line 449
    invoke-virtual {v15, v4, v5, v2}, Linfo/flowersoft/theotown/draft/Composition;->getRoad(III)Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;

    move-result-object v7

    if-eqz v7, :cond_23b

    move/from16 p1, v3

    .line 451
    iget-object v3, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/tools/BuildingTool;->setBuildingPreviewColor(Lio/blueflower/stapel2d/drawing/Engine;)V

    .line 452
    invoke-virtual {v15, v4, v5, v2}, Linfo/flowersoft/theotown/draft/Composition;->getRoadAlignment(III)I

    move-result v3

    move/from16 v17, v9

    .line 453
    invoke-virtual {v15, v4, v5, v2}, Linfo/flowersoft/theotown/draft/Composition;->getRoadDirectionIndex(III)I

    move-result v9

    .line 454
    invoke-static {v3, v14}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v3

    neg-int v0, v2

    mul-int/lit8 v0, v0, 0xc

    int-to-float v0, v0

    move/from16 v18, v3

    const/4 v3, 0x0

    .line 455
    invoke-virtual {v1, v3, v0}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 456
    invoke-virtual {v15, v4, v5, v2}, Linfo/flowersoft/theotown/draft/Composition;->getRoadUpDir(III)I

    move-result v19

    if-nez v19, :cond_1db

    move-object/from16 v0, p0

    move/from16 v29, v8

    move/from16 v28, v16

    move/from16 v30, v17

    move/from16 v8, v18

    move/from16 v17, p1

    move/from16 v16, p2

    move/from16 p1, v6

    move v6, v2

    move v2, v14

    move v14, v3

    move-object/from16 v3, v21

    .line 459
    invoke-virtual/range {v0 .. v9}, Linfo/flowersoft/theotown/tools/BuildingTool;->drawFlatCompositionRoad(Linfo/flowersoft/theotown/city/Drawer;ILio/blueflower/stapel2d/drawing/Image;IIILinfo/flowersoft/theotown/draft/Composition$CompositeRoad;II)V

    move/from16 v18, v2

    goto :goto_22d

    :cond_1db
    move-object/from16 v0, p0

    move/from16 v29, v8

    move/from16 v28, v16

    move/from16 v30, v17

    move/from16 v17, p1

    move/from16 v16, p2

    move/from16 p1, v6

    move v6, v2

    move v2, v14

    move v14, v3

    move-object/from16 v3, v21

    if-lez v19, :cond_1f3

    .line 461
    iget v8, v7, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->dir:I

    goto :goto_1fd

    :cond_1f3
    if-gez v19, :cond_1fc

    iget v8, v7, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->dir:I

    invoke-static {v8}, Linfo/flowersoft/theotown/city/Direction;->opposite(I)I

    move-result v8

    goto :goto_1fd

    :cond_1fc
    const/4 v8, 0x0

    .line 462
    :goto_1fd
    invoke-static {v8, v2}, Linfo/flowersoft/theotown/city/Direction;->rotateCW(II)I

    move-result v8

    .line 463
    iget-object v9, v7, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v9, v9, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgeFrames:[I

    invoke-static {v8}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result v18

    aget v9, v9, v18

    if-nez v6, :cond_228

    .line 464
    iget-object v7, v7, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget v14, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->framesPerBridge:I

    move/from16 v18, v2

    const/16 v2, 0x10

    if-lt v14, v2, :cond_226

    .line 465
    iget-object v2, v7, Linfo/flowersoft/theotown/draft/RoadDraft;->bridgeFrames:[I

    invoke-static {v8}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result v7

    add-int/lit8 v7, v7, 0xc

    aget v2, v2, v7

    const/4 v14, 0x0

    .line 466
    invoke-virtual {v1, v3, v14, v14, v2}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    goto :goto_22a

    :cond_226
    const/4 v14, 0x0

    goto :goto_22a

    :cond_228
    move/from16 v18, v2

    .line 468
    :goto_22a
    invoke-virtual {v1, v3, v14, v14, v9}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 471
    :goto_22d
    iget-object v2, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v7, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    mul-int/lit8 v2, v6, 0xc

    int-to-float v2, v2

    .line 472
    invoke-virtual {v1, v14, v2}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    goto :goto_24c

    :cond_23b
    move/from16 v17, v3

    move/from16 p1, v6

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v18, v14

    move/from16 v28, v16

    move-object/from16 v3, v21

    move/from16 v16, p2

    move v6, v2

    :goto_24c
    add-int/lit8 v2, v6, 0x1

    move/from16 v6, p1

    move-object/from16 v21, v3

    move/from16 p2, v16

    move/from16 v3, v17

    move/from16 v14, v18

    move/from16 v7, v28

    move/from16 v8, v29

    move/from16 v9, v30

    goto/16 :goto_191

    :cond_260
    move/from16 v16, p2

    move/from16 p1, v6

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v18, v14

    move-object/from16 v3, v21

    .line 476
    invoke-virtual {v15, v4, v5}, Linfo/flowersoft/theotown/draft/Composition;->getTree(II)Linfo/flowersoft/theotown/draft/Composition$CompositeTree;

    move-result-object v2

    if-eqz v2, :cond_17a

    .line 478
    iget-object v4, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/tools/BuildingTool;->setBuildingPreviewColor(Lio/blueflower/stapel2d/drawing/Engine;)V

    .line 479
    iget-object v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->draft:Linfo/flowersoft/theotown/draft/TreeDraft;

    iget-object v5, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    iget v2, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeTree;->frame:I

    iget v4, v4, Linfo/flowersoft/theotown/draft/TreeDraft;->framesPerTree:I

    mul-int/2addr v2, v4

    aget v2, v5, v2

    const/4 v14, 0x0

    invoke-virtual {v1, v3, v14, v14, v2}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 480
    iget-object v2, v1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v4, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :goto_28f
    neg-int v2, v10

    int-to-float v2, v2

    neg-int v4, v11

    int-to-float v4, v4

    .line 483
    invoke-virtual {v1, v2, v4}, Linfo/flowersoft/theotown/city/Drawer;->addShiftToTile(FF)V

    goto :goto_2a6

    :cond_297
    move/from16 v16, p2

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v18, v14

    move-object/from16 v3, v21

    move/from16 v12, v26

    const/4 v14, 0x0

    :goto_2a6
    add-int/lit8 v6, v16, 0x2

    move-object/from16 v21, v3

    move v5, v12

    move/from16 v14, v18

    move/from16 v10, v23

    move/from16 v11, v24

    move-object/from16 v4, v25

    move/from16 v7, v28

    move/from16 v8, v29

    move/from16 v9, v30

    move/from16 v12, p1

    goto/16 :goto_d8

    :cond_2bd
    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 p1, v12

    move v12, v5

    move v2, v7

    .line 488
    :goto_2c5
    iput v2, v1, Linfo/flowersoft/theotown/city/Drawer;->x:F

    move/from16 v3, v29

    .line 489
    iput v3, v1, Linfo/flowersoft/theotown/city/Drawer;->y:F

    move/from16 v9, v30

    .line 490
    invoke-virtual {v1, v9, v13}, Linfo/flowersoft/theotown/city/Drawer;->setShift(FF)V

    .line 491
    invoke-virtual {v0, v12}, Linfo/flowersoft/theotown/tools/BuildingTool;->afterDrawBuilding(I)V

    .line 492
    iput v2, v1, Linfo/flowersoft/theotown/city/Drawer;->x:F

    .line 493
    iput v3, v1, Linfo/flowersoft/theotown/city/Drawer;->y:F

    .line 494
    invoke-virtual {v1, v9, v13}, Linfo/flowersoft/theotown/city/Drawer;->setShift(FF)V

    .line 496
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/Drawer;->resetShift()V

    move/from16 v2, p1

    goto :goto_2e3

    :cond_2e0
    move-object v0, v13

    move-object v1, v15

    :cond_2e2
    move v2, v12

    .line 500
    :goto_2e3
    iput-boolean v2, v1, Linfo/flowersoft/theotown/city/Drawer;->useShading:Z

    return-void
.end method

.method public drawAfter(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 4

    .line 741
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultInfluence;

    .line 742
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultInfluence;->clearTempInfluence()V

    .line 744
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/BuildingTool;->drawTextOverlay(Linfo/flowersoft/theotown/city/Drawer;)V

    return-void
.end method

.method public final drawAnimationSpot(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;Linfo/flowersoft/theotown/draft/AnimationSpot;IIZ)V
    .registers 9

    .line 719
    iget p5, p3, Linfo/flowersoft/theotown/draft/AnimationSpot;->flags:I

    if-nez p5, :cond_2d

    .line 720
    iget-object p5, p3, Linfo/flowersoft/theotown/draft/AnimationSpot;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget p5, p5, Linfo/flowersoft/theotown/draft/AnimationDraft;->speed:F

    int-to-float p4, p4

    mul-float/2addr p5, p4

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p4

    iget-object p5, p3, Linfo/flowersoft/theotown/draft/AnimationSpot;->draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v0, p5, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v0

    rem-int/2addr p4, v1

    .line 721
    iget-boolean p5, p5, Linfo/flowersoft/theotown/draft/AnimationDraft;->rotationAware:Z

    if-eqz p5, :cond_22

    if-eqz p6, :cond_22

    .line 722
    array-length p4, v0

    div-int/lit8 p4, p4, 0x4

    iget p5, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->frame:I

    rem-int/lit8 p5, p5, 0x4

    mul-int/2addr p4, p5

    .line 724
    :cond_22
    iget p5, p3, Linfo/flowersoft/theotown/draft/AnimationSpot;->x:I

    int-to-float p5, p5

    iget p3, p3, Linfo/flowersoft/theotown/draft/AnimationSpot;->y:I

    int-to-float p3, p3

    aget p4, v0, p4

    invoke-virtual {p1, p2, p5, p3, p4}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_2d
    return-void
.end method

.method public drawAnimationSpots(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[ILjava/util/List;[[IIIZ)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/Drawer;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/AnimationSpot;",
            ">;[[I",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/AnimationSpot;",
            ">;[[IIIZ)V"
        }
    .end annotation

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    .line 690
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const/4 v10, 0x0

    const/4 v7, 0x0

    if-eqz p2, :cond_48

    if-nez p3, :cond_28

    move v0, v10

    .line 694
    :goto_d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_48

    .line 695
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Linfo/flowersoft/theotown/draft/AnimationSpot;

    move-object v3, p0

    move/from16 v8, p7

    move/from16 v9, p8

    move-object v5, v4

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Linfo/flowersoft/theotown/tools/BuildingTool;->drawAnimationSpot(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;Linfo/flowersoft/theotown/draft/AnimationSpot;IIZ)V

    move-object v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 698
    :cond_28
    array-length v3, p3

    rem-int v3, p6, v3

    aget-object v0, p3, v3

    move v11, v10

    .line 699
    :goto_2e
    array-length v3, v0

    if-ge v11, v3, :cond_48

    .line 700
    aget v3, v0, v11

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Linfo/flowersoft/theotown/draft/AnimationSpot;

    move-object v3, p0

    move/from16 v8, p7

    move/from16 v9, p8

    move-object v5, v4

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Linfo/flowersoft/theotown/tools/BuildingTool;->drawAnimationSpot(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;Linfo/flowersoft/theotown/draft/AnimationSpot;IIZ)V

    move-object v4, v5

    add-int/lit8 v11, v11, 0x1

    goto :goto_2e

    :cond_48
    if-eqz v1, :cond_86

    if-nez v2, :cond_67

    .line 706
    :goto_4c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v10, p2, :cond_86

    .line 707
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Linfo/flowersoft/theotown/draft/AnimationSpot;

    move-object v2, p0

    move-object v3, p1

    move/from16 v8, p8

    move v6, v7

    move/from16 v7, p7

    invoke-virtual/range {v2 .. v8}, Linfo/flowersoft/theotown/tools/BuildingTool;->drawAnimationSpot(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;Linfo/flowersoft/theotown/draft/AnimationSpot;IIZ)V

    move v7, v6

    add-int/lit8 v10, v10, 0x1

    goto :goto_4c

    .line 710
    :cond_67
    array-length p2, v2

    rem-int p2, p6, p2

    aget-object p2, v2, p2

    .line 711
    :goto_6c
    array-length v0, p2

    if-ge v10, v0, :cond_86

    .line 712
    aget v0, p2, v10

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Linfo/flowersoft/theotown/draft/AnimationSpot;

    move-object v2, p0

    move-object v3, p1

    move/from16 v8, p8

    move v6, v7

    move/from16 v7, p7

    invoke-virtual/range {v2 .. v8}, Linfo/flowersoft/theotown/tools/BuildingTool;->drawAnimationSpot(Linfo/flowersoft/theotown/city/Drawer;Lio/blueflower/stapel2d/drawing/Image;Linfo/flowersoft/theotown/draft/AnimationSpot;IIZ)V

    move v7, v6

    add-int/lit8 v10, v10, 0x1

    goto :goto_6c

    :cond_86
    return-void
.end method

.method public drawBefore(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 8

    .line 730
    iget-boolean p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->buildable:Z

    if-eqz p1, :cond_29

    iget-object p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz p1, :cond_29

    iget-object p1, p0, Linfo/flowersoft/theotown/tools/BuildTool;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    if-eqz p1, :cond_29

    .line 732
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultInfluence;

    .line 735
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->influenceInduceVector:[I

    iget v2, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    iget v3, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingWidth()I

    move-result v4

    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/components/DefaultInfluence;->setTempInfluence([IIIII)V

    :cond_29
    return-void
.end method

.method public drawBuilding(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/BuildingDraft;FFI)V
    .registers 16

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    div-float/2addr p4, v0

    const/4 v0, 0x0

    .line 660
    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 662
    iget-boolean p5, p2, Linfo/flowersoft/theotown/draft/BuildingDraft;->rotationAware:Z

    if-eqz p5, :cond_1d

    .line 663
    iget-object p5, p2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length p5, p5

    div-int/lit8 p5, p5, 0x4

    if-lez p5, :cond_1d

    .line 665
    div-int p5, v6, p5

    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    add-int/2addr p5, v0

    rem-int/lit8 p5, p5, 0x4

    move v5, p5

    goto :goto_1e

    :cond_1d
    move v5, v6

    .line 669
    :goto_1e
    invoke-virtual {p1, p3, p4}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    .line 670
    sget-object p5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v0, p2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v0, v0, v6

    invoke-virtual {p1, p5, p3, p4, v0}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 674
    iget-object p5, p2, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    if-eqz p5, :cond_3e

    .line 675
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    iget-object v3, p2, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpots:Ljava/util/List;

    iget-object v4, p2, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationSpotIndices:[[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFIZ)V

    goto :goto_3f

    :cond_3e
    move-object v2, p1

    .line 679
    :goto_3f
    iget-object p1, p2, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationFGSpots:Ljava/util/List;

    if-eqz p1, :cond_51

    .line 680
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    iget-object v3, p2, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationFGSpots:Ljava/util/List;

    iget-object v4, p2, Linfo/flowersoft/theotown/draft/BuildingDraft;->animationFGSpotIndices:[[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v9}, Linfo/flowersoft/theotown/drawing/Drawing;->drawAnimations(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[IIIFIZ)V

    :cond_51
    neg-float p1, p3

    neg-float p2, p4

    .line 684
    invoke-virtual {v2, p1, p2}, Linfo/flowersoft/theotown/city/Drawer;->addShift(FF)V

    return-void
.end method

.method public final drawBuilding(Linfo/flowersoft/theotown/draft/BuildingDraft;IILinfo/flowersoft/theotown/city/Drawer;I)V
    .registers 13

    .line 613
    iget-object v6, p4, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v0, 0xc

    .line 614
    invoke-virtual {v6, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setType(I)V

    .line 616
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v6, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v1, p4

    move v5, p5

    .line 617
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/BuildingTool;->drawBuilding(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/BuildingDraft;FFI)V

    const/high16 v4, -0x40000000    # -2.0f

    .line 618
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/BuildingTool;->drawBuilding(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/BuildingDraft;FFI)V

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    .line 619
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/BuildingTool;->drawBuilding(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/BuildingDraft;FFI)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 620
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/BuildingTool;->drawBuilding(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/BuildingDraft;FFI)V

    .line 622
    invoke-virtual {p0, v6}, Linfo/flowersoft/theotown/tools/BuildingTool;->setBuildingPreviewColor(Lio/blueflower/stapel2d/drawing/Engine;)V

    const/4 v3, 0x0

    .line 623
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/BuildingTool;->drawBuilding(Linfo/flowersoft/theotown/city/Drawer;Linfo/flowersoft/theotown/draft/BuildingDraft;FFI)V

    .line 626
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v6, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 627
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->buildingToolOld:Z

    if-nez v0, :cond_5e

    const/16 v0, 0xc8

    .line 628
    invoke-virtual {v6, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 629
    invoke-virtual {p1, p5}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v0

    .line 630
    invoke-virtual {p1, p5}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result v2

    .line 631
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int v4, v0, v2

    add-int/lit8 v4, v4, -0x2

    mul-int/lit8 v4, v4, 0x20

    div-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    sub-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x10

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK:I

    invoke-virtual {p4, v3, v4, v0, v2}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    const/16 v0, 0xff

    .line 635
    invoke-virtual {v6, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    :cond_5e
    return-void
.end method

.method public drawBuildingOpaque(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 3

    .line 310
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/BuildTool;->drawBuildingOpaque(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

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

.method public final drawFlatCompositionRoad(Linfo/flowersoft/theotown/city/Drawer;ILio/blueflower/stapel2d/drawing/Image;IIILinfo/flowersoft/theotown/draft/Composition$CompositeRoad;II)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v2, p7

    move/from16 v12, p8

    const/4 v13, 0x4

    add-int/lit8 v3, p9, 0x4

    sub-int v3, v3, p2

    .line 569
    rem-int/2addr v3, v13

    mul-int/lit8 v4, v3, 0x10

    add-int v6, v12, v4

    .line 571
    iget-object v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v5, v4

    rem-int v5, v6, v5

    aget v4, v4, v5

    const/4 v14, 0x0

    move-object/from16 v5, p3

    invoke-virtual {v1, v5, v14, v14, v4}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 572
    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoad;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-boolean v4, v2, Linfo/flowersoft/theotown/draft/RoadDraft;->oneWay:Z

    if-eqz v4, :cond_38

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/RoadDraft;->oneWayFrames:[I

    if-eqz v2, :cond_38

    .line 573
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    aget v2, v2, v3

    invoke-virtual {v1, v4, v14, v14, v2}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 576
    :cond_38
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v2, v9, v10, v11}, Linfo/flowersoft/theotown/draft/Composition;->getRoadDecoration(III)Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 578
    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeRoadDecoration;->draft:Linfo/flowersoft/theotown/draft/RoadDecorationDraft;

    iget-object v3, v2, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationSpots:Ljava/util/List;

    move-object v4, v3

    iget-object v3, v2, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationSpotIndices:[[I

    move-object v5, v4

    iget-object v4, v2, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationFGSpots:Ljava/util/List;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/RoadDecorationDraft;->animationFGSpotIndices:[[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v15, v5

    move-object v5, v2

    move-object v2, v15

    invoke-virtual/range {v0 .. v8}, Linfo/flowersoft/theotown/tools/BuildingTool;->drawAnimationSpots(Linfo/flowersoft/theotown/city/Drawer;Ljava/util/List;[[ILjava/util/List;[[IIIZ)V

    .line 583
    :cond_56
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    invoke-virtual {v2, v9, v10, v11}, Linfo/flowersoft/theotown/draft/Composition;->getBusStop(III)Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;

    move-result-object v2

    if-eqz v2, :cond_aa

    const/4 v3, 0x2

    .line 585
    invoke-static {v3, v12}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_73

    .line 586
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v6, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v6, v6, v5

    invoke-virtual {v1, v4, v14, v14, v6}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 587
    :cond_73
    invoke-static {v13, v12}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v4

    if-nez v4, :cond_84

    .line 588
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v6, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v3, v6, v3

    invoke-virtual {v1, v4, v14, v14, v3}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 589
    :cond_84
    invoke-static {v5, v12}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v3

    if-nez v3, :cond_96

    .line 590
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v4, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v1, v3, v14, v14, v4}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_96
    const/16 v3, 0x8

    .line 591
    invoke-static {v3, v12}, Linfo/flowersoft/theotown/city/Direction;->isIn(II)Z

    move-result v3

    if-nez v3, :cond_aa

    .line 592
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Composition$CompositeBusStop;->draft:Linfo/flowersoft/theotown/draft/BusStopDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v4, 0x3

    aget v2, v2, v4

    invoke-virtual {v1, v3, v14, v14, v2}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_aa
    return-void
.end method

.method public drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 11

    .line 641
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/tools/BuildTool;->drawOnTop(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 643
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v0, :cond_6b

    iget-boolean v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildZone:Z

    if-eqz v1, :cond_6b

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/ZoneDraft;->radius:I

    if-lez v0, :cond_6b

    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->useZoneRadius:Z

    if-eqz v0, :cond_6b

    .line 644
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingWidth()I

    move-result v0

    .line 645
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingWidth()I

    move-result v1

    .line 646
    iget v2, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    sub-int v3, v2, p1

    sub-int v2, p1, v2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    sub-int v3, v2, p2

    sub-int v2, p2, v2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 647
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    iget v1, v1, Linfo/flowersoft/theotown/draft/ZoneDraft;->radius:I

    if-ne v0, v1, :cond_6b

    .line 648
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v5

    .line 649
    iget-object v0, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    add-int v1, p1, p2

    .line 650
    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_58

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_5a

    :cond_58
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    :goto_5a
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 651
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_YELLOW_DOTTED:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawTileOverlayFrame(Linfo/flowersoft/theotown/city/Drawer;IILinfo/flowersoft/theotown/city/objects/Ground;I)V

    .line 652
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_6b
    return-void
.end method

.method public final drawTextOverlay(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 14

    .line 504
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-nez v0, :cond_5

    return-void

    .line 506
    :cond_5
    iget v0, p1, Linfo/flowersoft/theotown/city/Drawer;->rotation:I

    iput v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->rotation:I

    .line 507
    iget v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->frame:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 508
    rem-int/lit8 v0, v0, 0x4

    neg-int v0, v0

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    .line 509
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingWidth(I)I

    .line 510
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingHeight(I)I

    move-result v0

    .line 511
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingWidth()I

    move-result v2

    .line 512
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingHeight()I

    move-result v3

    .line 514
    iget v4, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    iget v5, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->rotation:I

    .line 515
    invoke-static {v4, v2, v5, v1, v1}, Linfo/flowersoft/theotown/city/objects/Building;->getPivotX(IIIII)I

    move-result v2

    iget v4, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    iget v5, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->rotation:I

    .line 516
    invoke-static {v4, v3, v5, v1, v1}, Linfo/flowersoft/theotown/city/objects/Building;->getPivotY(IIIII)I

    move-result v1

    .line 514
    invoke-virtual {p1, v2, v1}, Linfo/flowersoft/theotown/city/Drawer;->setRealTile(II)V

    .line 517
    iget-object v9, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 518
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->width:I

    iget v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->height:I

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x20

    int-to-float v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/city/Drawer;->getDrawingX(F)F

    move-result v5

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x41800000    # 16.0f

    sub-float/2addr v0, v2

    .line 519
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/Drawer;->getDrawingY(F)F

    move-result v6

    .line 521
    invoke-virtual {v9}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 522
    invoke-virtual {v9, p1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 524
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->isBuildable()Z

    move-result p1

    if-nez p1, :cond_95

    iget-boolean p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->notBuildableBecauseOfPrice:Z

    if-eqz p1, :cond_6d

    goto :goto_95

    .line 555
    :cond_6d
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->notBuildableReason:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    if-eqz p1, :cond_12c

    .line 557
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v7, p1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 559
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v9, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 560
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v3

    iget-object p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->notBuildableReason:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    .line 561
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->localize(Lio/blueflower/stapel2d/gamestack/Translator;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f800000    # 1.0f

    .line 560
    invoke-virtual/range {v3 .. v11}, Linfo/flowersoft/theotown/drawing/Drawing;->drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V

    goto/16 :goto_12c

    .line 525
    :cond_95
    :goto_95
    iget p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    iget v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getPrice(II)J

    move-result-wide v2

    .line 526
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result p1

    int-to-long v7, p1

    .line 527
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->postponedCharger:Linfo/flowersoft/theotown/tools/PostponedCharger;

    const-wide/16 v10, 0x0

    if-nez p1, :cond_ad

    move-wide v7, v10

    :cond_ad
    cmp-long p1, v7, v10

    if-lez p1, :cond_b2

    move-wide v2, v7

    :cond_b2
    if-gtz p1, :cond_c0

    .line 529
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-nez v0, :cond_12c

    .line 530
    :cond_c0
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->notBuildableBecauseOfPrice:Z

    if-eqz v0, :cond_ca

    .line 531
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v9, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_d7

    :cond_ca
    if-lez p1, :cond_d2

    .line 533
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v9, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_d7

    .line 535
    :cond_d2
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v9, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :goto_d7
    if-lez p1, :cond_df

    .line 538
    invoke-static {v7, v8}, Linfo/flowersoft/theotown/util/Localizer;->localizeDiamonds(J)Ljava/lang/String;

    move-result-object v0

    :goto_dd
    move-object v4, v0

    goto :goto_e5

    :cond_df
    long-to-double v2, v2

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_dd

    .line 539
    :goto_e5
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v7, v0, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 541
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v3

    sget-object v8, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v11}, Linfo/flowersoft/theotown/drawing/Drawing;->drawOutlinedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V

    .line 544
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v9, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    if-lez p1, :cond_101

    .line 545
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    :goto_ff
    move v11, p1

    goto :goto_104

    :cond_101
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_MONEY:I

    goto :goto_ff

    .line 546
    :goto_104
    invoke-virtual {v9}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleX()F

    move-result p1

    .line 547
    invoke-virtual {v9}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v3, p1, v2

    mul-float/2addr v2, v0

    .line 548
    invoke-virtual {v9, v3, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    move-object v2, v4

    .line 549
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 550
    invoke-virtual {v7, v2}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v1

    mul-float/2addr v2, p1

    sub-float/2addr v5, v2

    move-object v3, v9

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 549
    invoke-virtual/range {v3 .. v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    move-object v9, v3

    .line 553
    invoke-virtual {v9, p1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 565
    :cond_12c
    :goto_12c
    invoke-virtual {v9}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    return-void
.end method

.method public ensureValidPosition()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public final ensureWaterMask(Linfo/flowersoft/theotown/util/json/JSONArray;)V
    .registers 14

    .line 793
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingWidth()I

    move-result v0

    .line 794
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingHeight()I

    move-result v1

    if-eqz p1, :cond_8d

    .line 795
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v2

    mul-int v3, v0, v1

    if-ge v2, v3, :cond_14

    goto/16 :goto_8d

    .line 797
    :cond_14
    new-array v2, v3, [Z

    const/4 v4, 0x0

    move v5, v4

    :goto_18
    if-ge v5, v3, :cond_54

    .line 800
    iget v6, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->frame:I

    iget v7, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->rotation:I

    add-int/2addr v6, v7

    rem-int/lit8 v6, v6, 0x4

    if-lez v6, :cond_4a

    .line 802
    rem-int v7, v5, v0

    .line 803
    div-int v8, v5, v0

    const/4 v9, 0x1

    if-eq v6, v9, :cond_41

    const/4 v10, 0x2

    if-eq v6, v10, :cond_39

    const/4 v10, 0x3

    if-eq v6, v10, :cond_32

    move v6, v8

    goto :goto_47

    :cond_32
    sub-int v6, v1, v7

    add-int/lit8 v7, v6, -0x1

    move v6, v7

    move v7, v8

    goto :goto_47

    :cond_39
    sub-int v6, v0, v7

    add-int/lit8 v7, v6, -0x1

    sub-int v6, v1, v8

    sub-int/2addr v6, v9

    goto :goto_47

    :cond_41
    sub-int v6, v0, v8

    sub-int/2addr v6, v9

    move v11, v7

    move v7, v6

    move v6, v11

    :goto_47
    mul-int/2addr v6, v0

    add-int/2addr v7, v6

    goto :goto_4b

    :cond_4a
    move v7, v5

    .line 822
    :goto_4b
    invoke-virtual {p1, v7}, Linfo/flowersoft/theotown/util/json/JSONArray;->optBoolean(I)Z

    move-result v6

    aput-boolean v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_54
    :goto_54
    if-ge v4, v3, :cond_8d

    .line 826
    rem-int p1, v4, v0

    .line 827
    div-int v1, v4, v0

    .line 828
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v5

    iget v6, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    add-int/2addr v6, p1

    iget v7, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    add-int/2addr v7, v1

    invoke-virtual {v5, v6, v7}, Linfo/flowersoft/theotown/city/Tiles;->isGroundWater(II)Z

    move-result v5

    aget-boolean v6, v2, v4

    if-eq v5, v6, :cond_8a

    iget-object v5, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget v7, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    add-int/2addr v7, p1

    iget v8, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    add-int/2addr v8, v1

    .line 829
    invoke-virtual {v5, v6, v7, v8}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isTerrainBuildable(ZII)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 830
    iget-object v5, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    aget-boolean v6, v2, v4

    iget v7, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    add-int/2addr v7, p1

    iget p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    add-int/2addr p1, v1

    const/4 v1, 0x0

    invoke-virtual {v5, v6, v7, p1, v1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->buildTerrain(ZIILvm2/LuaValue;)Linfo/flowersoft/theotown/city/objects/Ground;

    :cond_8a
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    :cond_8d
    :goto_8d
    return-void
.end method

.method public final finallyBuild(ZZ)Linfo/flowersoft/theotown/city/objects/Building;
    .registers 28

    move-object/from16 v0, p0

    .line 867
    iget-boolean v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->buildable:Z

    const/4 v7, 0x0

    if-nez v1, :cond_c

    iget-boolean v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->notBuildableBecauseOfPrice:Z

    if-nez v1, :cond_c

    return-object v7

    .line 868
    :cond_c
    iget-boolean v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->notBuildableBecauseOfPrice:Z

    const-wide/16 v8, 0x0

    if-eqz v1, :cond_3c

    if-nez p1, :cond_3c

    iget-wide v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->price:J

    cmp-long v3, v1, v8

    if-lez v3, :cond_3c

    .line 869
    iget-object v10, v0, Linfo/flowersoft/theotown/city/components/Tool;->moneyNeededListener:Linfo/flowersoft/theotown/city/components/ResourceNeededListener;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    sub-long v11, v1, v3

    new-instance v13, Linfo/flowersoft/theotown/tools/BuildingTool$7;

    invoke-direct {v13, v0}, Linfo/flowersoft/theotown/tools/BuildingTool$7;-><init>(Linfo/flowersoft/theotown/tools/BuildingTool;)V

    iget-object v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v14, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-interface/range {v10 .. v15}, Linfo/flowersoft/theotown/city/components/ResourceNeededListener;->beg(JLjava/lang/Runnable;Ljava/lang/String;Z)V

    return-object v7

    .line 880
    :cond_3c
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 881
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingWidth()I

    move-result v14

    .line 882
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingHeight()I

    move-result v15

    .line 884
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-boolean v2, v2, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildZone:Z

    const/4 v10, 0x1

    if-eqz v2, :cond_74

    iget-boolean v2, v1, Linfo/flowersoft/theotown/draft/ZoneDraft;->placeable:Z

    if-eqz v2, :cond_74

    .line 885
    iget-object v2, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->setZone(Linfo/flowersoft/theotown/draft/ZoneDraft;)V

    .line 886
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    iget v2, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    iget v3, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    add-int v4, v2, v14

    sub-int/2addr v4, v10

    add-int v5, v3, v15

    sub-int/2addr v5, v10

    invoke-virtual {v1, v2, v3, v4, v5}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->setArea(IIII)V

    .line 887
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->isBuildable()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 888
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->build()V

    .line 892
    :cond_74
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->meta:Linfo/flowersoft/theotown/util/json/JSONObject;

    if-eqz v1, :cond_8d

    const-string v2, "water mask"

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 893
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->meta:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/tools/BuildingTool;->ensureWaterMask(Linfo/flowersoft/theotown/util/json/JSONArray;)V

    .line 896
    :cond_8d
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->beforeBuilding()V

    .line 897
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v16

    iget-wide v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->price:J

    long-to-double v1, v1

    iget v3, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    int-to-float v3, v3

    int-to-float v4, v14

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v19, v3, v4

    iget v3, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    int-to-float v3, v3

    int-to-float v6, v15

    div-float/2addr v6, v5

    add-float/2addr v3, v6

    sub-float v20, v3, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "build "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v4, v4, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-wide/from16 v17, v1

    invoke-virtual/range {v16 .. v21}, Linfo/flowersoft/theotown/components/DefaultBudget;->spend(DFFLjava/lang/String;)V

    .line 899
    iget v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->frame:I

    rem-int/lit8 v2, v1, 0x4

    iget v3, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->rotation:I

    add-int/2addr v2, v3

    rem-int/lit8 v2, v2, 0x4

    div-int/lit8 v3, v1, 0x4

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    .line 900
    iget-object v3, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-boolean v4, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->rotationAware:Z

    if-eqz v4, :cond_dc

    move/from16 v20, v2

    goto :goto_de

    :cond_dc
    move/from16 v20, v1

    .line 902
    :goto_de
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget v4, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    iget v5, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    const/16 v21, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    invoke-virtual/range {v16 .. v21}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/BuildingDraft;IIILvm2/LuaValue;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_103

    .line 903
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_103

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/Building;

    move-object v13, v1

    goto :goto_104

    :cond_103
    move-object v13, v7

    .line 905
    :goto_104
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v3, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    if-nez v3, :cond_11c

    if-eqz v13, :cond_11c

    .line 906
    iget-boolean v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->rotationAware:Z

    if-eqz v1, :cond_118

    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Building;->getFrame()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    move v2, v1

    goto :goto_119

    :cond_118
    move v2, v12

    .line 907
    :goto_119
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Building;->getFrame()I

    .line 910
    :cond_11c
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    const-string v3, "build rail"

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1b6

    .line 912
    const-string v3, "id"

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b6

    .line 914
    new-instance v4, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v4}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    .line 915
    invoke-virtual {v4, v12}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 916
    const-string v5, "offsets"

    invoke-virtual {v1, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15a

    .line 917
    invoke-virtual {v1, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_15a

    .line 919
    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    move-wide/from16 v16, v8

    move v6, v12

    .line 920
    :goto_14a
    invoke-virtual {v5}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_15c

    .line 921
    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/util/json/JSONArray;->optInt(I)I

    move-result v8

    invoke-virtual {v4, v8}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_14a

    :cond_15a
    move-wide/from16 v16, v8

    .line 926
    :cond_15c
    sget-object v5, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/Draft;

    .line 927
    instance-of v5, v3, Linfo/flowersoft/theotown/draft/RailDraft;

    if-eqz v5, :cond_17b

    .line 928
    check-cast v3, Linfo/flowersoft/theotown/draft/RailDraft;

    move v1, v12

    .line 929
    :goto_16b
    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1b8

    .line 930
    invoke-virtual {v4, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v5

    invoke-virtual {v0, v3, v2, v5}, Linfo/flowersoft/theotown/tools/BuildingTool;->buildRail(Linfo/flowersoft/theotown/draft/RailDraft;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16b

    .line 932
    :cond_17b
    instance-of v5, v3, Linfo/flowersoft/theotown/draft/RoadDraft;

    if-eqz v5, :cond_1b8

    .line 933
    const-string v5, "level"

    invoke-virtual {v1, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    .line 934
    const-string v6, "all"

    invoke-virtual {v1, v6, v12}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 935
    const-string v8, "dir"

    invoke-virtual {v1, v8, v10}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 936
    check-cast v3, Linfo/flowersoft/theotown/draft/RoadDraft;

    move v8, v12

    .line 937
    :goto_194
    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v9

    if-ge v8, v9, :cond_1b8

    move v9, v6

    .line 938
    invoke-virtual {v4, v8}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v6

    move/from16 v24, v5

    move v5, v1

    move-object v1, v3

    move/from16 v3, v24

    move/from16 v24, v9

    move-object v9, v4

    move/from16 v4, v24

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/tools/BuildingTool;->buildRoad(Linfo/flowersoft/theotown/draft/RoadDraft;IIZII)V

    add-int/lit8 v8, v8, 0x1

    move v6, v3

    move-object v3, v1

    move v1, v5

    move v5, v6

    move v6, v4

    move-object v4, v9

    goto :goto_194

    :cond_1b6
    move-wide/from16 v16, v8

    :cond_1b8
    if-eqz v13, :cond_1cc

    .line 947
    iget-wide v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->price:J

    const-wide/32 v20, -0x80000000

    const-wide/32 v22, 0x7ffffffe

    move-wide/from16 v18, v1

    .line 948
    invoke-static/range {v18 .. v23}, Lcom/badlogic/gdx/math/MathUtils;->clamp(JJJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 947
    invoke-virtual {v13, v1}, Linfo/flowersoft/theotown/city/objects/Building;->setSpentMoney(I)V

    :cond_1cc
    if-eqz v11, :cond_1f0

    .line 952
    iget-object v1, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/GameMode;->buildImmediately()Z

    move-result v1

    if-eqz v1, :cond_1f0

    .line 953
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1de
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Building;

    .line 954
    iget-object v3, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v3, v2, v7}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->finishBuilding(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    goto :goto_1de

    :cond_1f0
    if-eqz v13, :cond_20d

    .line 959
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->composition:Linfo/flowersoft/theotown/draft/Composition;

    if-nez v1, :cond_20d

    .line 960
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->soundManager:Linfo/flowersoft/theotown/components/DefaultSoundManager;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->SOUND_BUILD:I

    sget-object v3, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v4, Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;

    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v4, v5, v13}, Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/objects/Building;)V

    invoke-virtual {v1, v2, v3, v4}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playOnce(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    move v4, v10

    move-object v5, v11

    move v6, v12

    move-object v7, v13

    goto :goto_225

    .line 963
    :cond_20d
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->soundManager:Linfo/flowersoft/theotown/components/DefaultSoundManager;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->SOUND_BUILD:I

    sget-object v3, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    move v4, v10

    new-instance v10, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;

    move-object v5, v11

    iget-object v11, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    move v6, v12

    iget v12, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    move-object v7, v13

    iget v13, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    invoke-direct/range {v10 .. v15}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;IIII)V

    invoke-virtual {v1, v2, v3, v10}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playOnce(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    .line 968
    :goto_225
    sget-boolean v1, Linfo/flowersoft/theotown/resources/Settings;->autoUntouchable:Z

    if-eqz v1, :cond_24b

    if-eqz v5, :cond_24b

    .line 969
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22f
    :goto_22f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Building;

    .line 970
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v3

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v3

    if-eqz v3, :cond_22f

    .line 971
    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/city/objects/Building;->setUntouchable(Z)V

    goto :goto_22f

    :cond_24b
    if-eqz v5, :cond_261

    .line 978
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_251
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_261

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Building;

    .line 979
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/objects/Building;->markAsNewlyBuilt()V

    goto :goto_251

    .line 983
    :cond_261
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->issueMovement()V

    .line 986
    iget-object v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-wide v2, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->water:J

    cmp-long v2, v2, v16

    if-gtz v2, :cond_273

    iget v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->waterWaste:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2b2

    .line 987
    :cond_273
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->PIPES:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Linfo/flowersoft/theotown/draft/PipeDraft;

    .line 988
    iget v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    move v10, v1

    :goto_27f
    iget v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    add-int/2addr v1, v14

    if-ge v10, v1, :cond_2b2

    .line 989
    iget v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    move v11, v1

    :goto_287
    iget v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    add-int v2, v1, v15

    if-ge v11, v2, :cond_2af

    .line 990
    iget v2, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    if-eq v10, v2, :cond_29b

    if-eq v11, v1, :cond_29b

    add-int/2addr v2, v14

    sub-int/2addr v2, v4

    if-eq v10, v2, :cond_29b

    add-int/2addr v1, v15

    sub-int/2addr v1, v4

    if-ne v11, v1, :cond_2ac

    .line 991
    :cond_29b
    iget-object v8, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move v12, v10

    move v13, v11

    invoke-virtual/range {v8 .. v13}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/PipeDraft;IIII)Z

    move-result v1

    if-eqz v1, :cond_2ac

    .line 992
    iget-object v8, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    move v12, v10

    move v13, v11

    invoke-virtual/range {v8 .. v13}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/PipeDraft;IIII)Ljava/util/List;

    :cond_2ac
    add-int/lit8 v11, v11, 0x1

    goto :goto_287

    :cond_2af
    add-int/lit8 v10, v10, 0x1

    goto :goto_27f

    .line 999
    :cond_2b2
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v2, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    const-string v3, "building"

    const-string v4, "build"

    invoke-interface {v1, v3, v4, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_2c4

    .line 1002
    invoke-virtual {v0, v7}, Linfo/flowersoft/theotown/tools/BuildingTool;->afterBuilding(Linfo/flowersoft/theotown/city/objects/Building;)V

    .line 1009
    :cond_2c4
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->recalculate()V

    return-object v7
.end method

.method public final getBuildingHeight()I
    .registers 4

    .line 352
    iget v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->rotation:I

    iget v1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->frame:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingHeight(I)I

    move-result v0

    return v0
.end method

.method public final getBuildingHeight(I)I
    .registers 3

    .line 360
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result p1

    return p1
.end method

.method public final getBuildingWidth()I
    .registers 4

    .line 348
    iget v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->rotation:I

    iget v1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->frame:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingWidth(I)I

    move-result v0

    return v0
.end method

.method public final getBuildingWidth(I)I
    .registers 3

    .line 356
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result p1

    return p1
.end method

.method public getCursorType()Linfo/flowersoft/theotown/ui/CursorType;
    .registers 2

    .line 1176
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->cursorType:Linfo/flowersoft/theotown/ui/CursorType;

    return-object v0
.end method

.method public getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;
    .registers 2

    .line 305
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    return-object v0
.end method

.method public getIcon()I
    .registers 2

    .line 1257
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getIcon()I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Building:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    return-object v0

    :cond_1a
    const-string v0, ""

    return-object v0
.end method

.method public final getMaxTerrainHeight(Linfo/flowersoft/theotown/draft/BuildingDraft;III)F
    .registers 7

    .line 597
    iget-boolean v0, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->supportsSlope:Z

    if-eqz v0, :cond_19

    .line 598
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainAvgHeight(II)F

    move-result p1

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1

    .line 600
    :cond_19
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {p1, p4}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v1

    invoke-virtual {p1, p4}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result p1

    invoke-virtual {v0, p2, p3, v1, p1}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getMaxTerrainLevel(IIII)I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .line 1262
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    .line 1263
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->hasFrames()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->frame:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v2, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, " %1$,d/%2$,d"

    invoke-static {v2, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3d
    return-object v0
.end method

.method public getPrice(II)J
    .registers 10

    .line 1180
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->getPrice(Linfo/flowersoft/theotown/draft/BuildingDraft;I)J

    move-result-wide v0

    .line 1181
    iget-object v3, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v4, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 1183
    iget-boolean v5, v4, Linfo/flowersoft/theotown/draft/ZoneDraft;->placeable:Z

    if-eqz v5, :cond_3a

    iget-boolean v3, v3, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildZone:Z

    if-eqz v3, :cond_3a

    .line 1184
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingWidth()I

    move-result v3

    .line 1185
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingHeight()I

    move-result v5

    .line 1186
    iget-object v6, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-virtual {v6, v4}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->setZone(Linfo/flowersoft/theotown/draft/ZoneDraft;)V

    .line 1187
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    add-int/2addr v3, p1

    sub-int/2addr v3, v2

    add-int/2addr v5, p2

    sub-int/2addr v5, v2

    invoke-virtual {v4, p1, p2, v3, v5}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->setArea(IIII)V

    .line 1188
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->isBuildable()Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 1189
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->getPrice()J

    move-result-wide p1

    add-long/2addr v0, p1

    :cond_3a
    return-wide v0
.end method

.method public hasFrames()Z
    .registers 4

    .line 330
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v0, :cond_13

    iget-object v1, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_13

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->selectableFrames:Z

    if-eqz v0, :cond_13

    iget v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->frame:I

    if-ltz v0, :cond_13

    return v2

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public final inferPosition()V
    .registers 7

    .line 1118
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v0

    .line 1119
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->absOffsetX:F

    float-to-int v3, v3

    add-int/2addr v1, v3

    .line 1120
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->absOffsetY:F

    float-to-int v2, v2

    add-int/2addr v0, v2

    .line 1122
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, v1, v0}, Linfo/flowersoft/theotown/city/City;->resolveScreenToTile(II)Linfo/flowersoft/theotown/city/City$ScreenToTileData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6c

    .line 1123
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v2, :cond_6c

    .line 1124
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1125
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 1126
    iget v4, v0, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->originalX:I

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v4, v5

    iput v4, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    .line 1127
    iget v0, v0, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->originalY:I

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v0, v5

    iput v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    .line 1128
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v4, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    .line 1129
    iget v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    return-void

    :cond_6c
    if-eqz v0, :cond_9c

    .line 1131
    iget v2, v0, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->originalX:I

    iput v2, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    .line 1132
    iget v0, v0, Linfo/flowersoft/theotown/city/City$ScreenToTileData;->originalY:I

    iput v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    .line 1133
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    .line 1134
    iget v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    :cond_9c
    return-void
.end method

.method public isBuildable()Z
    .registers 2

    .line 344
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->buildable:Z

    return v0
.end method

.method public isBuildable(II)Z
    .registers 15

    .line 1197
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    .line 1198
    iget v2, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->frame:I

    rem-int/lit8 v3, v2, 0x4

    iget v4, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->rotation:I

    add-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0x4

    div-int/lit8 v4, v2, 0x4

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    .line 1199
    iget-boolean v4, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->rotationAware:Z

    if-eqz v4, :cond_18

    move v11, v3

    goto :goto_19

    :cond_18
    move v11, v2

    :goto_19
    const/4 v2, 0x0

    .line 1200
    iput-object v2, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->notBuildableReason:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    .line 1202
    iget-boolean v2, v1, Linfo/flowersoft/theotown/draft/ZoneDraft;->placeable:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_49

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildZone:Z

    if-eqz v0, :cond_49

    .line 1203
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingWidth()I

    move-result v0

    .line 1204
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingHeight()I

    move-result v2

    .line 1205
    iget-object v5, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-virtual {v5, v1}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->setZone(Linfo/flowersoft/theotown/draft/ZoneDraft;)V

    .line 1206
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    add-int/2addr v0, p1

    sub-int/2addr v0, v4

    add-int/2addr v2, p2

    sub-int/2addr v2, v4

    invoke-virtual {v1, p1, p2, v0, v2}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->setArea(IIII)V

    .line 1207
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->zoneBuilder:Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/modifier/ZoneBuilder;->isBuildable()Z

    move-result v0

    if-nez v0, :cond_49

    .line 1208
    sget-object p1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Zone:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->notBuildableReason:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return v3

    .line 1213
    :cond_49
    iget-object v5, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v6, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    const/4 v9, 0x0

    const/4 v10, 0x1

    move v7, p1

    move v8, p2

    invoke-virtual/range {v5 .. v11}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;IIZZI)Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->notBuildableReason:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    if-nez p1, :cond_5a

    return v4

    :cond_5a
    return v3
.end method

.method public final isWithinBuilding(IIII)Z
    .registers 14

    .line 762
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v0

    .line 763
    iget v1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->frame:I

    neg-int v1, v1

    add-int/lit8 v1, v1, 0x4

    rem-int/lit8 v1, v1, 0x4

    int-to-float p4, p4

    .line 764
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v3, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    iget v4, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    invoke-virtual {p0, v2, v3, v4, v1}, Linfo/flowersoft/theotown/tools/BuildingTool;->getMaxTerrainHeight(Linfo/flowersoft/theotown/draft/BuildingDraft;III)F

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr p4, v1

    float-to-int p4, p4

    .line 765
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingWidth()I

    move-result v1

    .line 766
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->getBuildingHeight()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 768
    :goto_2c
    iget-object v5, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v5, v5, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    if-gt v4, v5, :cond_67

    .line 769
    iget v5, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    sub-int v5, p1, v5

    .line 770
    iget v7, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    sub-int v7, p2, v7

    if-ltz v5, :cond_46

    if-ge v5, v1, :cond_46

    if-ltz v7, :cond_46

    if-ge v7, v2, :cond_46

    return v6

    .line 772
    :cond_46
    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5, p1, p2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result v5

    .line 773
    iget-object v7, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7, p1, p2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result p1

    add-int/2addr v5, v6

    add-int/lit8 p1, p1, -0x1

    .line 776
    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p2, v5, p1}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(II)I

    move-result p2

    .line 777
    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6, v5, p1}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(II)I

    move-result p1

    add-int/lit8 v4, v4, 0x1

    move v8, p2

    move p2, p1

    move p1, v8

    goto :goto_2c

    .line 780
    :cond_67
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    iget p2, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    iget v2, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    invoke-virtual {p1, p2, v2}, Linfo/flowersoft/theotown/city/City;->originalToRotatedX(II)I

    move-result p1

    .line 781
    iget-object p2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    iget v2, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    iget v4, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    invoke-virtual {p2, v2, v4}, Linfo/flowersoft/theotown/city/City;->originalToRotatedY(II)I

    move-result p2

    .line 782
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsX(II)I

    move-result v2

    .line 783
    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/IsoConverter;->isoToAbsY(II)I

    move-result p1

    add-int/lit8 p2, v2, -0x20

    if-lt p3, p2, :cond_b7

    int-to-float p2, p3

    int-to-float p3, v2

    .line 787
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleX()F

    move-result v2

    const/high16 v4, 0x42000000    # 32.0f

    mul-float/2addr v2, v4

    int-to-float v1, v1

    mul-float/2addr v2, v1

    add-float/2addr p3, v2

    const/16 v1, 0x20

    int-to-float v1, v1

    add-float/2addr p3, v1

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_b7

    add-int/lit8 p2, p1, 0x10

    if-gt p4, p2, :cond_b7

    int-to-float p2, p4

    int-to-float p1, p1

    iget-object p3, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget p3, p3, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildHeight:I

    mul-int/lit8 p3, p3, 0x8

    int-to-float p3, p3

    .line 789
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsScaleY()F

    move-result p4

    mul-float/2addr p3, p4

    sub-float/2addr p1, p3

    const/16 p3, 0x10

    int-to-float p3, p3

    sub-float/2addr p1, p3

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_b7

    return v6

    :cond_b7
    return v3
.end method

.method public mouseMove(IIFFFFZ)V
    .registers 8

    .line 1244
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object p1

    .line 1245
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    sub-float/2addr p5, p2

    iput p5, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->absOffsetX:F

    .line 1246
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result p1

    div-float/2addr p1, p3

    sub-float/2addr p6, p1

    iput p6, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->absOffsetY:F

    .line 1247
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide p1

    iput-wide p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->mouseMovedMS:J

    return-void
.end method

.method public moveImmediate()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public nextFrame()V
    .registers 3

    .line 335
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v0, :cond_e

    iget v1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->frame:I

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v0, v0

    rem-int/2addr v1, v0

    iput v1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->frame:I

    :cond_e
    return-void
.end method

.method public onBuild()V
    .registers 4

    .line 837
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->postponedCharger:Linfo/flowersoft/theotown/tools/PostponedCharger;

    if-eqz v0, :cond_12

    .line 838
    new-instance v1, Linfo/flowersoft/theotown/tools/BuildingTool$5;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/tools/BuildingTool$5;-><init>(Linfo/flowersoft/theotown/tools/BuildingTool;)V

    new-instance v2, Linfo/flowersoft/theotown/tools/BuildingTool$6;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/tools/BuildingTool$6;-><init>(Linfo/flowersoft/theotown/tools/BuildingTool;)V

    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/tools/PostponedCharger;->charge(Lio/blueflower/stapel2d/util/Getter;Ljava/lang/Runnable;)V

    return-void

    :cond_12
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 850
    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/tools/BuildingTool;->finallyBuild(ZZ)Linfo/flowersoft/theotown/city/objects/Building;

    return-void
.end method

.method public onClick(IIFFII)V
    .registers 7

    .line 749
    invoke-virtual {p0, p1, p2, p5, p6}, Linfo/flowersoft/theotown/tools/BuildingTool;->isWithinBuilding(IIII)Z

    move-result p3

    if-eqz p3, :cond_12

    iget-boolean p3, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->buildable:Z

    if-nez p3, :cond_e

    iget-boolean p3, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->notBuildableBecauseOfPrice:Z

    if-eqz p3, :cond_12

    .line 750
    :cond_e
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->onBuild()V

    return-void

    .line 751
    :cond_12
    iget-object p3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p3, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 755
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object p1

    int-to-float p2, p5

    .line 756
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    sub-float/2addr p2, p3

    iput p2, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->absOffsetX:F

    int-to-float p2, p6

    .line 757
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result p1

    div-float/2addr p1, p4

    sub-float/2addr p2, p1

    iput p2, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->absOffsetY:F

    :cond_34
    return-void
.end method

.method public prevFrame()V
    .registers 4

    .line 340
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v0, :cond_10

    iget v1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->frame:I

    add-int/lit8 v1, v1, -0x1

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v2, v0

    add-int/2addr v1, v2

    array-length v0, v0

    rem-int/2addr v1, v0

    iput v1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->frame:I

    :cond_10
    return-void
.end method

.method public final recalculate()V
    .registers 3

    .line 1015
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultPower;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultPower;->calculate()V

    .line 1016
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultWater;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWater;->calculate()V

    return-void
.end method

.method public redo(Z)V
    .registers 2

    .line 862
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/BuildTool;->redo(Z)V

    .line 863
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->recalculate()V

    return-void
.end method

.method public reversedMovement()Z
    .registers 2

    .line 1252
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->reversedBuildTool:Z

    return v0
.end method

.method public final setBuildingPreviewColor(Lio/blueflower/stapel2d/drawing/Engine;)V
    .registers 6

    .line 605
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_GREEN:Lio/blueflower/stapel2d/drawing/Color;

    .line 606
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    .line 607
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    .line 608
    iget-boolean v3, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->buildable:Z

    if-eqz v3, :cond_b

    goto :goto_c

    :cond_b
    move-object v0, v2

    :goto_c
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 609
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->notBuildableBecauseOfPrice:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->postponedCharger:Linfo/flowersoft/theotown/tools/PostponedCharger;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Linfo/flowersoft/theotown/tools/PostponedCharger;->canBeBuilt()Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_1f

    :cond_1e
    return-void

    :cond_1f
    :goto_1f
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public setDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 4

    .line 291
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-ne v0, p1, :cond_5

    return-void

    .line 292
    :cond_5
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz p1, :cond_1e

    .line 295
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 296
    const-string v1, "beforeToolDrawing"

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->beforeDrawing:Linfo/flowersoft/theotown/scripting/MethodCluster;

    .line 297
    const-string v1, "afterToolDrawing"

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getMethodClusterOrNull(Ljava/lang/String;Linfo/flowersoft/theotown/draft/Draft;)Linfo/flowersoft/theotown/scripting/MethodCluster;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->afterDrawing:Linfo/flowersoft/theotown/scripting/MethodCluster;

    return-void

    :cond_1e
    const/4 p1, 0x0

    .line 299
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->beforeDrawing:Linfo/flowersoft/theotown/scripting/MethodCluster;

    .line 300
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->afterDrawing:Linfo/flowersoft/theotown/scripting/MethodCluster;

    return-void
.end method

.method public setPostponedCharger(Linfo/flowersoft/theotown/tools/PostponedCharger;)V
    .registers 2

    .line 314
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->postponedCharger:Linfo/flowersoft/theotown/tools/PostponedCharger;

    return-void
.end method

.method public undo(Z)V
    .registers 2

    .line 856
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/BuildTool;->undo(Z)V

    .line 857
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->recalculate()V

    return-void
.end method

.method public update()V
    .registers 10

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1141
    invoke-super {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->update()V

    .line 1143
    iget-object v3, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-eqz v3, :cond_8d

    .line 1144
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->inferPosition()V

    .line 1146
    iget v3, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    iget v4, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    invoke-virtual {p0, v3, v4}, Linfo/flowersoft/theotown/tools/BuildingTool;->isBuildable(II)Z

    move-result v3

    if-nez v3, :cond_46

    .line 1147
    new-array v3, v0, [I

    fill-array-data v3, :array_92

    .line 1148
    new-array v4, v0, [I

    fill-array-data v4, :array_a6

    move v5, v1

    :goto_23
    if-ge v5, v0, :cond_46

    .line 1150
    iget v6, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    aget v7, v3, v5

    add-int/2addr v6, v7

    iget v7, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    aget v8, v4, v5

    add-int/2addr v7, v8

    invoke-virtual {p0, v6, v7}, Linfo/flowersoft/theotown/tools/BuildingTool;->isBuildable(II)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 1151
    iget v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    aget v3, v3, v5

    add-int/2addr v0, v3

    iput v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    .line 1152
    iget v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    aget v3, v4, v5

    add-int/2addr v0, v3

    iput v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    goto :goto_46

    :cond_44
    add-int/2addr v5, v2

    goto :goto_23

    .line 1158
    :cond_46
    :goto_46
    iget v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    iget v3, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    invoke-virtual {p0, v0, v3}, Linfo/flowersoft/theotown/tools/BuildingTool;->getPrice(II)J

    move-result-wide v3

    iput-wide v3, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->price:J

    .line 1159
    iget v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedX:I

    iget v3, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->selectedY:I

    invoke-virtual {p0, v0, v3}, Linfo/flowersoft/theotown/tools/BuildingTool;->isBuildable(II)Z

    move-result v0

    iput-boolean v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->buildable:Z

    if-eqz v0, :cond_69

    .line 1160
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->getBudget()Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v0

    iget-wide v3, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->price:J

    invoke-virtual {v0, v3, v4}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result v0

    if-nez v0, :cond_69

    goto :goto_6a

    :cond_69
    move v2, v1

    :goto_6a
    iput-boolean v2, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->notBuildableBecauseOfPrice:Z

    .line 1162
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->buildable:Z

    if-eqz v0, :cond_78

    if-eqz v2, :cond_78

    .line 1163
    sget-object v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->NoMoney:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->notBuildableReason:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    .line 1164
    iput-boolean v1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->buildable:Z

    .line 1168
    :cond_78
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool;->isBuildable()Z

    move-result v0

    if-eqz v0, :cond_81

    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Build:Linfo/flowersoft/theotown/ui/CursorType;

    goto :goto_8a

    :cond_81
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->notBuildableBecauseOfPrice:Z

    if-eqz v0, :cond_88

    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->NoMoney:Linfo/flowersoft/theotown/ui/CursorType;

    goto :goto_8a

    :cond_88
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->NotAllowed:Linfo/flowersoft/theotown/ui/CursorType;

    :goto_8a
    iput-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->cursorType:Linfo/flowersoft/theotown/ui/CursorType;

    return-void

    :cond_8d
    const/4 v0, 0x0

    .line 1170
    iput-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->cursorType:Linfo/flowersoft/theotown/ui/CursorType;

    return-void

    nop

    :array_92
    .array-data 4
        0x1
        0x0
        -0x1
        0x0
        0x1
        0x1
        -0x1
        -0x1
    .end array-data

    :array_a6
    .array-data 4
        0x0
        0x1
        0x0
        -0x1
        0x1
        -0x1
        -0x1
        0x1
    .end array-data
.end method

.method public updateMove(FFFFIIFF)Z
    .registers 9

    .line 1237
    iget p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->absOffsetX:F

    add-float/2addr p1, p3

    iput p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->absOffsetX:F

    .line 1238
    iget p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->absOffsetY:F

    add-float/2addr p1, p4

    iput p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool;->absOffsetY:F

    const/4 p1, 0x1

    return p1
.end method

###### Class info.flowersoft.theotown.tools.BuildingTool.AnonymousClass1 (info.flowersoft.theotown.tools.BuildingTool$1)
.class public Linfo/flowersoft/theotown/tools/BuildingTool$1;
.super Ljava/lang/Object;
.source "BuildingTool.java"

# interfaces
.implements Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/BuildingTool;-><init>(Linfo/flowersoft/theotown/draft/BuildingDraft;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

.field public final synthetic val$draft:Linfo/flowersoft/theotown/draft/BuildingDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/BuildingTool;Linfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool$1;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    iput-object p2, p0, Linfo/flowersoft/theotown/tools/BuildingTool$1;->val$draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public countVariants()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public getBuildingIntensity(II)F
    .registers 3

    .line 0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getColor(IILio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 4

    .line 108
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

.method public getIcon()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getIntensity(II)F
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public getLegend()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/tools/marker/LegendEntry;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 159
    const-string v0, ""

    return-object v0
.end method

.method public getTempIntensity(II)F
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public ignoreBuilding(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public markBuilding(II)Z
    .registers 4

    .line 143
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool$1;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->access$000(Linfo/flowersoft/theotown/tools/BuildingTool;)Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 144
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p2

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool$1;->val$draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    if-ne p2, v0, :cond_22

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result p1

    if-nez p1, :cond_22

    const/4 p1, 0x1

    return p1

    :cond_22
    const/4 p1, 0x0

    return p1
.end method

.method public markTree(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public overlayAlpha(II)F
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public overlayTempAlpha(II)F
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public setVariant(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public useOverlay(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

###### Class info.flowersoft.theotown.tools.BuildingTool.AnonymousClass2 (info.flowersoft.theotown.tools.BuildingTool$2)
.class public Linfo/flowersoft/theotown/tools/BuildingTool$2;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "BuildingTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/BuildingTool;-><init>(Linfo/flowersoft/theotown/draft/BuildingDraft;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/BuildingTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/BuildingTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 182
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool$2;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getHotkey()Linfo/flowersoft/theotown/input/KeyAction;
    .registers 2

    .line 210
    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->TOOL_BUILDING_BUILD:Linfo/flowersoft/theotown/input/KeyAction;

    return-object v0
.end method

.method public getIcon()I
    .registers 2

    .line 185
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 190
    const-string v0, "cmdBuildTool"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 215
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool$2;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->access$200(Linfo/flowersoft/theotown/tools/BuildingTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x215

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHotkeyActive()Z
    .registers 3

    .line 205
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool$2;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->access$100(Linfo/flowersoft/theotown/tools/BuildingTool;)Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool$2;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    iget-boolean v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->buildable:Z

    if-nez v1, :cond_12

    iget-boolean v0, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->notBuildableBecauseOfPrice:Z

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .registers 5

    .line 200
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool$2;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->access$100(Linfo/flowersoft/theotown/tools/BuildingTool;)Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool$2;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    iget-boolean v1, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->buildable:Z

    if-nez v1, :cond_12

    iget-boolean v0, v0, Linfo/flowersoft/theotown/tools/BuildingTool;->notBuildableBecauseOfPrice:Z

    if-eqz v0, :cond_23

    :cond_12
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/BuildingTool$2;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    iget-wide v2, v2, Linfo/flowersoft/theotown/tools/BuildingTool;->mouseMovedMS:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-lez v0, :cond_23

    const/4 v0, 0x1

    return v0

    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 195
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool$2;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->onBuild()V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.BuildingTool.AnonymousClass3 (info.flowersoft.theotown.tools.BuildingTool$3)
.class public Linfo/flowersoft/theotown/tools/BuildingTool$3;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "BuildingTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/BuildingTool;-><init>(Linfo/flowersoft/theotown/draft/BuildingDraft;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/BuildingTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/BuildingTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 220
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool$3;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getHotkey()Linfo/flowersoft/theotown/input/KeyAction;
    .registers 2

    .line 243
    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->TOOL_NEXT_VARIANT:Linfo/flowersoft/theotown/input/KeyAction;

    return-object v0
.end method

.method public getIcon()I
    .registers 2

    .line 223
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEXT:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 228
    const-string v0, "cmdNext"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 248
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool$3;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->access$300(Linfo/flowersoft/theotown/tools/BuildingTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x59d

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .registers 2

    .line 238
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool$3;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->hasFrames()Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 233
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool$3;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->nextFrame()V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.BuildingTool.AnonymousClass4 (info.flowersoft.theotown.tools.BuildingTool$4)
.class public Linfo/flowersoft/theotown/tools/BuildingTool$4;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "BuildingTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/BuildingTool;-><init>(Linfo/flowersoft/theotown/draft/BuildingDraft;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/BuildingTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/BuildingTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 252
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool$4;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getHotkey()Linfo/flowersoft/theotown/input/KeyAction;
    .registers 2

    .line 275
    sget-object v0, Linfo/flowersoft/theotown/input/KeyAction;->TOOL_PREVIOUS_VARIANT:Linfo/flowersoft/theotown/input/KeyAction;

    return-object v0
.end method

.method public getIcon()I
    .registers 2

    .line 255
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_PREVIOUS:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 260
    const-string v0, "cmdPrev"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 280
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool$4;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->access$400(Linfo/flowersoft/theotown/tools/BuildingTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xb99

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVisible()Z
    .registers 2

    .line 270
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool$4;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->hasFrames()Z

    move-result v0

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 265
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool$4;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->prevFrame()V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.BuildingTool.AnonymousClass5 (info.flowersoft.theotown.tools.BuildingTool$5)
.class public Linfo/flowersoft/theotown/tools/BuildingTool$5;
.super Ljava/lang/Object;
.source "BuildingTool.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/BuildingTool;->onBuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Linfo/flowersoft/theotown/city/objects/Building;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/BuildingTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/BuildingTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 838
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool$5;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Linfo/flowersoft/theotown/city/objects/Building;
    .registers 4

    .line 841
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool$5;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/tools/BuildingTool;->access$500(Linfo/flowersoft/theotown/tools/BuildingTool;ZZ)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 838
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildingTool$5;->get()Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.tools.BuildingTool.AnonymousClass6 (info.flowersoft.theotown.tools.BuildingTool$6)
.class public Linfo/flowersoft/theotown/tools/BuildingTool$6;
.super Ljava/lang/Object;
.source "BuildingTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/BuildingTool;->onBuild()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/BuildingTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/BuildingTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 843
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool$6;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.tools.BuildingTool.AnonymousClass7 (info.flowersoft.theotown.tools.BuildingTool$7)
.class public Linfo/flowersoft/theotown/tools/BuildingTool$7;
.super Ljava/lang/Object;
.source "BuildingTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/BuildingTool;->finallyBuild(ZZ)Linfo/flowersoft/theotown/city/objects/Building;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/BuildingTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/BuildingTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 869
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/BuildingTool$7;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 872
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool$7;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildingTool;->update()V

    .line 873
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/BuildingTool$7;->this$0:Linfo/flowersoft/theotown/tools/BuildingTool;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Linfo/flowersoft/theotown/tools/BuildingTool;->access$500(Linfo/flowersoft/theotown/tools/BuildingTool;ZZ)Linfo/flowersoft/theotown/city/objects/Building;

    return-void
.end method
