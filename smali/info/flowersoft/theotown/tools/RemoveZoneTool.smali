###### Class info.flowersoft.theotown.tools.RemoveZoneTool (info.flowersoft.theotown.tools.RemoveZoneTool)
.class public Linfo/flowersoft/theotown/tools/RemoveZoneTool;
.super Linfo/flowersoft/theotown/tools/RemoveTool;
.source "RemoveZoneTool.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0, v0}, Linfo/flowersoft/theotown/tools/RemoveTool;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public build(IIII)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 35
    invoke-virtual/range {p0 .. p4}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIII)V

    const/4 v6, 0x0

    :goto_e
    sub-int v7, v4, v2

    .line 37
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v6, v7, :cond_7b

    const/4 v7, 0x0

    :goto_17
    sub-int v8, v3, v1

    .line 38
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v7, v8, :cond_78

    .line 39
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v8, v7

    .line 40
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/2addr v9, v6

    .line 41
    iget-object v10, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v10, v8, v9}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v10

    if-eqz v10, :cond_75

    .line 44
    iget-object v10, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v10, v8, v9}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v10, :cond_68

    .line 46
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/objects/Building;->isLocked()Z

    move-result v12

    if-nez v12, :cond_68

    .line 47
    iget-object v12, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v12, v10, v11}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Building;Lvm2/LuaValue;)V

    .line 48
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v12

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v13

    .line 49
    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v14

    invoke-virtual {v10}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v15

    .line 48
    invoke-virtual {v0, v12, v13, v14, v15}, Linfo/flowersoft/theotown/tools/RemoveTool;->addDestructionAnimation(IIII)V

    .line 50
    iget-object v12, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->soundManager:Linfo/flowersoft/theotown/components/DefaultSoundManager;

    sget v13, Linfo/flowersoft/theotown/resources/Resources;->SOUND_DESTROY:I

    sget-object v14, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v15, Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;

    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v15, v5, v10}, Linfo/flowersoft/theotown/components/soundsource/BuildingSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/objects/Building;)V

    invoke-virtual {v12, v13, v14, v15}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playOnce(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    .line 54
    :cond_68
    iget-object v5, v0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v5, v8, v9}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v5

    if-nez v5, :cond_75

    .line 55
    iget-object v5, v0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v5, v11, v8, v9}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->markZone(Linfo/flowersoft/theotown/draft/ZoneDraft;II)Z

    :cond_75
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    :cond_78
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 61
    :cond_7b
    invoke-virtual {v0}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    return-void
.end method

.method public getIcon()I
    .registers 2

    .line 76
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 17
    const-string v0, "RemoveZone"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 81
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x374

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValid(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public isValid(IIII)Z
    .registers 5

    sub-int/2addr p3, p1

    .line 71
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    const/16 p3, 0xf

    if-le p1, p3, :cond_1d

    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/TwoModesTool;->infiniteRange()Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x0

    return p1

    :cond_1d
    :goto_1d
    return p2
.end method

.method public markBuilding(II)Z
    .registers 4

    .line 22
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 23
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/tools/RemoveTool;->markBuilding(II)Z

    move-result p1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method
