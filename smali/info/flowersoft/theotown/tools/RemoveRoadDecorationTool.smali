###### Class info.flowersoft.theotown.tools.RemoveRoadDecorationTool (info.flowersoft.theotown.tools.RemoveRoadDecorationTool)
.class public Linfo/flowersoft/theotown/tools/RemoveRoadDecorationTool;
.super Linfo/flowersoft/theotown/tools/RemoveTool;
.source "RemoveRoadDecorationTool.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 17
    invoke-direct {p0, v0, v1}, Linfo/flowersoft/theotown/tools/RemoveTool;-><init>(ZZ)V

    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    return-void
.end method


# virtual methods
.method public build(IIII)V
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 28
    invoke-virtual/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIII)V

    .line 34
    iget-boolean v5, v0, Linfo/flowersoft/theotown/tools/RemoveTool;->removeUnder:Z

    const/4 v6, 0x1

    const/16 v7, 0x10

    const/4 v8, -0x2

    if-eqz v5, :cond_1a

    move v5, v8

    move v8, v7

    move v7, v5

    move v5, v6

    goto :goto_1b

    :cond_1a
    const/4 v5, -0x1

    :goto_1b
    const/4 v10, 0x0

    :goto_1c
    sub-int v11, v4, v2

    .line 40
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-gt v10, v11, :cond_8c

    const/4 v11, 0x0

    :goto_25
    sub-int v12, v3, v1

    .line 41
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-gt v11, v12, :cond_86

    .line 42
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int v14, v12, v11

    .line 43
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int v15, v12, v10

    move v12, v7

    .line 46
    :goto_3a
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v13

    if-gt v13, v12, :cond_80

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v13

    if-gt v12, v13, :cond_80

    .line 48
    iget-object v13, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v13, v14, v15, v12}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v13

    if-eqz v13, :cond_79

    .line 50
    invoke-virtual {v13}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result v16

    if-lez v16, :cond_79

    move-object/from16 v16, v13

    .line 51
    iget-object v13, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result v16

    add-int/lit8 v17, v16, -0x1

    const/16 v18, 0x0

    move/from16 v16, v12

    invoke-virtual/range {v13 .. v18}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->removeRoadDecoration(IIIILvm2/LuaValue;)V

    .line 52
    invoke-virtual {v0, v14, v15}, Linfo/flowersoft/theotown/tools/RemoveTool;->addDestructionAnimation(II)V

    .line 53
    iget-object v12, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->soundManager:Linfo/flowersoft/theotown/components/DefaultSoundManager;

    sget v13, Linfo/flowersoft/theotown/resources/Resources;->SOUND_DESTROY:I

    sget-object v6, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v9, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;

    iget-object v1, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v9, v1, v14, v15}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;II)V

    invoke-virtual {v12, v13, v6, v9}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playOnce(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    goto :goto_80

    :cond_79
    move v1, v12

    add-int v12, v1, v5

    move/from16 v1, p1

    const/4 v6, 0x1

    goto :goto_3a

    :cond_80
    :goto_80
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    const/4 v6, 0x1

    goto :goto_25

    :cond_86
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    const/4 v6, 0x1

    goto :goto_1c

    .line 61
    :cond_8c
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    return-void
.end method

.method public drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z
    .registers 6

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/BuildTool;->drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z

    .line 68
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2, p4}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 70
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Road;->countDecorations()I

    move-result p2

    if-lez p2, :cond_1f

    .line 71
    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->absLevel:I

    neg-int p1, p1

    mul-int/lit8 p1, p1, 0xc

    int-to-float p1, p1

    sget p4, Linfo/flowersoft/theotown/resources/Resources;->FRAME_TOOLMARK_GREEN_DOTTED:I

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0, p1, p4}, Linfo/flowersoft/theotown/city/Drawer;->draw(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_1f
    const/4 p1, 0x1

    return p1
.end method

.method public getIcon()I
    .registers 2

    .line 78
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ROAD_DECORATION:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 23
    const-string v0, "RemoveRoadDecoration"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 83
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x583

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
