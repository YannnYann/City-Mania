###### Class info.flowersoft.theotown.tools.RemovePipeTool (info.flowersoft.theotown.tools.RemovePipeTool)
.class public Linfo/flowersoft/theotown/tools/RemovePipeTool;
.super Linfo/flowersoft/theotown/tools/RemoveTool;
.source "RemovePipeTool.java"


# instance fields
.field public final pipeTool:Linfo/flowersoft/theotown/tools/PipeTool;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0, v0}, Linfo/flowersoft/theotown/tools/RemoveTool;-><init>(ZZ)V

    .line 24
    new-instance v0, Linfo/flowersoft/theotown/tools/PipeTool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/tools/PipeTool;-><init>(Linfo/flowersoft/theotown/draft/PipeDraft;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/RemovePipeTool;->pipeTool:Linfo/flowersoft/theotown/tools/PipeTool;

    return-void
.end method

.method private recalculate()V
    .registers 3

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultWater;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultWater;->calculate()V

    return-void
.end method


# virtual methods
.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 34
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 35
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemovePipeTool;->pipeTool:Linfo/flowersoft/theotown/tools/PipeTool;

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/tools/PipeTool;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 36
    new-instance v0, Linfo/flowersoft/theotown/tools/marker/WaterPipeMarker;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/tools/marker/WaterPipeMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/BuildTool;->setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V

    return-void
.end method

.method public build(IIII)V
    .registers 16

    .line 53
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/BuildTool;->captureState(IIII)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_6
    sub-int v3, p4, p2

    .line 55
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v1, v3, :cond_49

    move v3, v0

    :goto_f
    sub-int v4, p3, p1

    .line 56
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v3, v4, :cond_46

    .line 57
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v3

    .line 58
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v5, v1

    .line 59
    iget-object v6, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v6, v4, v5}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object v6

    if-eqz v6, :cond_43

    add-int/lit8 v2, v2, 0x1

    .line 63
    iget-object v7, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v7, v6, v4, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->remove(Linfo/flowersoft/theotown/city/objects/Pipe;II)V

    .line 64
    invoke-virtual {p0, v4, v5}, Linfo/flowersoft/theotown/tools/RemoveTool;->addDestructionAnimation(II)V

    .line 65
    iget-object v6, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->soundManager:Linfo/flowersoft/theotown/components/DefaultSoundManager;

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->SOUND_DESTROY:I

    sget-object v8, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    new-instance v9, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;

    iget-object v10, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v9, v10, v4, v5}, Linfo/flowersoft/theotown/components/soundsource/TileSoundSource;-><init>(Linfo/flowersoft/theotown/city/City;II)V

    invoke-virtual {v6, v7, v8, v9}, Linfo/flowersoft/theotown/components/DefaultSoundManager;->playOnce(ILinfo/flowersoft/theotown/resources/SoundType;Linfo/flowersoft/theotown/components/DefaultSoundManager$SoundSource;)V

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 70
    :cond_49
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/BuildTool;->endCaptureState()Z

    if-lez v2, :cond_51

    .line 73
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/RemovePipeTool;->recalculate()V

    :cond_51
    return-void
.end method

.method public drawBuilding(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 5

    .line 98
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemovePipeTool;->pipeTool:Linfo/flowersoft/theotown/tools/PipeTool;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/tools/PipeTool;->drawBuilding(IILinfo/flowersoft/theotown/city/Drawer;)V

    return-void
.end method

.method public drawGround(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 5

    .line 93
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemovePipeTool;->pipeTool:Linfo/flowersoft/theotown/tools/PipeTool;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/tools/PipeTool;->drawGround(IILinfo/flowersoft/theotown/city/Drawer;)V

    return-void
.end method

.method public drawMarkerOverlay(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 5

    .line 103
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemovePipeTool;->pipeTool:Linfo/flowersoft/theotown/tools/PipeTool;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/tools/PipeTool;->drawMarkerOverlay(IILinfo/flowersoft/theotown/city/Drawer;)V

    return-void
.end method

.method public drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z
    .registers 6

    .line 88
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemovePipeTool;->pipeTool:Linfo/flowersoft/theotown/tools/PipeTool;

    invoke-virtual {v0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/tools/PipeTool;->drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z

    move-result p1

    return p1
.end method

.method public drawZone(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 5

    .line 83
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RemovePipeTool;->pipeTool:Linfo/flowersoft/theotown/tools/PipeTool;

    invoke-virtual {v0, p1, p2, p3}, Linfo/flowersoft/theotown/tools/PipeTool;->drawZone(IILinfo/flowersoft/theotown/city/Drawer;)V

    return-void
.end method

.method public getIcon()I
    .registers 2

    .line 108
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 29
    const-string v0, "RemovePipe"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 113
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xa53

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public redo(Z)V
    .registers 2

    .line 41
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/RemoveTool;->redo(Z)V

    .line 42
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/RemovePipeTool;->recalculate()V

    return-void
.end method

.method public undo(Z)V
    .registers 2

    .line 47
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/RemoveTool;->undo(Z)V

    .line 48
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/RemovePipeTool;->recalculate()V

    return-void
.end method
