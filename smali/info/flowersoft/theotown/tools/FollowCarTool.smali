###### Class info.flowersoft.theotown.tools.FollowCarTool (info.flowersoft.theotown.tools.FollowCarTool)
.class public Linfo/flowersoft/theotown/tools/FollowCarTool;
.super Linfo/flowersoft/theotown/tools/DefaultTool;
.source "FollowCarTool.java"


# instance fields
.field public canChangeCar:Z

.field public currentCar:Linfo/flowersoft/theotown/city/objects/Car;

.field public date:Linfo/flowersoft/theotown/components/DefaultDate;

.field public myDrawer:Linfo/flowersoft/theotown/city/Drawer;

.field public prefIndex:I

.field public shiftY:F

.field public targetDir:I

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0}, Linfo/flowersoft/theotown/tools/FollowCarTool;-><init>(Linfo/flowersoft/theotown/city/objects/Car;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/objects/Car;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/DefaultTool;-><init>()V

    .line 53
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    if-nez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 54
    :goto_a
    iput-boolean p1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->canChangeCar:Z

    if-eqz p1, :cond_18

    .line 57
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v0, Linfo/flowersoft/theotown/tools/FollowCarTool$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/tools/FollowCarTool$1;-><init>(Linfo/flowersoft/theotown/tools/FollowCarTool;)V

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    .line 80
    :cond_18
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v0, Linfo/flowersoft/theotown/tools/FollowCarTool$2;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/tools/FollowCarTool$2;-><init>(Linfo/flowersoft/theotown/tools/FollowCarTool;)V

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/tools/FollowCarTool;)V
    .registers 1

    .line 34
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/FollowCarTool;->selectRandomCar()V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/tools/FollowCarTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/tools/FollowCarTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method


# virtual methods
.method public final afterCarSelection()V
    .registers 6

    .line 200
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    if-eqz v0, :cond_5f

    .line 201
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->setScale(F)V

    .line 202
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    iget v0, v0, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getRotation()I

    move-result v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/city/Direction;->rotateCCW(II)I

    move-result v0

    .line 203
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    iget v1, v1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    int-to-float v1, v1

    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    iget v4, v3, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->x:F

    .line 204
    iget v1, v3, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    int-to-float v1, v1

    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    iget v3, v3, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    mul-float/2addr v0, v3

    add-float/2addr v1, v0

    mul-float/2addr v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->y:F

    .line 205
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    iget v2, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->x:F

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Linfo/flowersoft/theotown/city/City;->focus(FFFZ)V

    .line 207
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    iget v1, v0, Linfo/flowersoft/theotown/city/objects/Car;->lastLevel:I

    int-to-float v1, v1

    iget v2, v0, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    int-to-float v2, v2

    iget v0, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    invoke-static {v1, v2, v0}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    iput v0, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->shiftY:F

    return-void

    .line 211
    :cond_5f
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 212
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    const/16 v2, 0x861

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public allowMapMovement()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 145
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->bind(Linfo/flowersoft/theotown/city/City;)V

    .line 146
    new-instance v0, Linfo/flowersoft/theotown/city/Drawer;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/city/Drawer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->myDrawer:Linfo/flowersoft/theotown/city/Drawer;

    const/4 v0, 0x1

    .line 147
    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    .line 149
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/components/DefaultDate;->setSpeed(I)V

    return-void
.end method

.method public canBeginMove(FFIIFF)Z
    .registers 7

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public drawAfter(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 8

    .line 307
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawAfter(Linfo/flowersoft/theotown/city/Drawer;)V

    .line 308
    iget-object v0, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 310
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 312
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    if-eqz v1, :cond_47

    sget-boolean v2, Linfo/flowersoft/theotown/resources/Settings;->specialViewFollowCarTool:Z

    if-eqz v2, :cond_47

    .line 313
    iget v2, v1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    div-int/lit8 v2, v2, 0x2

    .line 314
    iget v1, v1, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    div-int/lit8 v1, v1, 0x2

    .line 315
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, v2, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 316
    iget-object v3, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getDrawer()Linfo/flowersoft/theotown/city/Drawer;

    move-result-object v3

    .line 317
    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/city/Drawer;->begin(Lio/blueflower/stapel2d/drawing/Engine;)V

    .line 318
    invoke-virtual {v3, v2, v1}, Linfo/flowersoft/theotown/city/Drawer;->setRealTile(II)V

    .line 319
    iget v4, v3, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    iget v5, v3, Linfo/flowersoft/theotown/city/Drawer;->scaleY:F

    invoke-virtual {v0, v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 321
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    iget v4, v4, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    iget p1, p1, Linfo/flowersoft/theotown/city/Drawer;->baseTerrainHeight:I

    sub-int/2addr v4, p1

    .line 322
    invoke-virtual {p0, v2, v1, v3, v4}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawRoad(IILinfo/flowersoft/theotown/city/Drawer;I)Z

    .line 324
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/Drawer;->end()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 325
    invoke-virtual {v0, p1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    :cond_47
    return-void
.end method

.method public drawBuilding(IILinfo/flowersoft/theotown/city/Drawer;)V
    .registers 13

    .line 267
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 273
    :cond_9
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->specialViewFollowCarTool:Z

    if-eqz v0, :cond_b2

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    if-eqz v0, :cond_b2

    .line 274
    iget-object v0, p3, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 275
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v1

    .line 276
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v2

    const/high16 v3, 0x42000000    # 32.0f

    .line 277
    iget v4, p3, Linfo/flowersoft/theotown/city/Drawer;->scaleX:F

    mul-float/2addr v4, v3

    float-to-int v3, v4

    .line 278
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->myDrawer:Linfo/flowersoft/theotown/city/Drawer;

    iget-object v5, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/City;->getDrawer()Linfo/flowersoft/theotown/city/Drawer;

    move-result-object v5

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/city/Drawer;->setTo(Linfo/flowersoft/theotown/city/Drawer;)V

    .line 279
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->myDrawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v4, v0}, Linfo/flowersoft/theotown/city/Drawer;->begin(Lio/blueflower/stapel2d/drawing/Engine;)V

    .line 280
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    if-eqz v4, :cond_42

    iget-object v5, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->myDrawer:Linfo/flowersoft/theotown/city/Drawer;

    iget v6, v4, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    div-int/lit8 v6, v6, 0x2

    iget v4, v4, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v5, v6, v4}, Linfo/flowersoft/theotown/city/Drawer;->setRealTile(II)V

    .line 281
    :cond_42
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->myDrawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/Drawer;->getDrawingX()F

    move-result v4

    float-to-int v4, v4

    .line 282
    iget-object v5, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->myDrawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/Drawer;->getDrawingY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getScaleY()F

    move-result v6

    iget-object v7, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x41400000    # 12.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    .line 283
    iget-object v6, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->myDrawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/Drawer;->end()V

    .line 285
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/Drawer;->getDrawingY()F

    move-result v6

    iget-object v7, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->myDrawer:Linfo/flowersoft/theotown/city/Drawer;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/Drawer;->getDrawingY()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_ae

    iget-object v6, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    if-eqz v6, :cond_ae

    .line 286
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/Drawer;->getDrawingX()F

    move-result v6

    int-to-float v7, v4

    cmpg-float v6, v6, v7

    const/4 v8, 0x0

    if-gez v6, :cond_8d

    int-to-float v6, v2

    .line 287
    invoke-virtual {v0, v8, v8, v7, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setClipRect(FFFF)V

    .line 288
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuilding(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 290
    :cond_8d
    invoke-virtual {p3}, Linfo/flowersoft/theotown/city/Drawer;->getDrawingX()F

    move-result v6

    add-int/2addr v4, v3

    int-to-float v4, v4

    cmpg-float v6, v6, v4

    if-gez v6, :cond_a2

    int-to-float v6, v5

    int-to-float v3, v3

    sub-int v5, v2, v5

    int-to-float v5, v5

    .line 291
    invoke-virtual {v0, v7, v6, v3, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setClipRect(FFFF)V

    .line 292
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuilding(IILinfo/flowersoft/theotown/city/Drawer;)V

    :cond_a2
    int-to-float v1, v1

    int-to-float v2, v2

    .line 294
    invoke-virtual {v0, v4, v8, v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setClipRect(FFFF)V

    .line 295
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuilding(IILinfo/flowersoft/theotown/city/Drawer;)V

    .line 296
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->resetClipping()V

    return-void

    .line 298
    :cond_ae
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuilding(IILinfo/flowersoft/theotown/city/Drawer;)V

    return-void

    .line 301
    :cond_b2
    invoke-super {p0, p1, p2, p3}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawBuilding(IILinfo/flowersoft/theotown/city/Drawer;)V

    return-void
.end method

.method public drive(I)V
    .registers 4

    .line 137
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    if-eqz v0, :cond_1e

    iget-object v0, v0, Linfo/flowersoft/theotown/city/objects/Car;->draft:Linfo/flowersoft/theotown/draft/CarDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/CarDraft;->driveable:Z

    if-eqz v0, :cond_1e

    .line 138
    iput p1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->targetDir:I

    .line 139
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->traffic:Linfo/flowersoft/theotown/components/DefaultTraffic;

    const-class v1, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultTraffic;->getTrafficHandler(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/traffic/TrafficHandler;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    invoke-virtual {v0, v1, p1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->changePath(Linfo/flowersoft/theotown/city/objects/Car;I)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->prefIndex:I

    :cond_1e
    return-void
.end method

.method public getCurrentCar()Linfo/flowersoft/theotown/city/objects/Car;
    .registers 2

    .line 109
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    return-object v0
.end method

.method public getCursorType()Linfo/flowersoft/theotown/ui/CursorType;
    .registers 2

    .line 119
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->canChangeCar:Z

    if-eqz v0, :cond_7

    .line 120
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Crosshair:Linfo/flowersoft/theotown/ui/CursorType;

    return-object v0

    .line 122
    :cond_7
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorType;->Normal:Linfo/flowersoft/theotown/ui/CursorType;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 114
    const-string v0, "FollowCar"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 343
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    const-string v1, "$tool_car_follower00"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPendingDir()I
    .registers 3

    .line 127
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    if-eqz v0, :cond_d

    iget v0, v0, Linfo/flowersoft/theotown/city/objects/Car;->prog:I

    iget v1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->prefIndex:I

    if-ge v0, v1, :cond_d

    .line 128
    iget v0, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->targetDir:I

    return v0

    :cond_d
    const/4 v0, 0x0

    .line 130
    iput v0, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->targetDir:I

    .line 131
    iput v0, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->prefIndex:I

    return v0
.end method

.method public onClick(IIFFII)V
    .registers 7

    .line 161
    iget-boolean p3, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->canChangeCar:Z

    if-eqz p3, :cond_7

    .line 162
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/FollowCarTool;->selectCarFromTile(II)V

    :cond_7
    return-void
.end method

.method public final selectCarFromTile(II)V
    .registers 5

    .line 181
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_43

    .line 184
    :cond_9
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->traffic:Linfo/flowersoft/theotown/components/DefaultTraffic;

    const-class v0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    invoke-virtual {p2, v0}, Linfo/flowersoft/theotown/components/DefaultTraffic;->getTrafficHandler(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/traffic/TrafficHandler;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->getCars(Linfo/flowersoft/theotown/city/objects/Road;)Ljava/util/List;

    move-result-object p1

    .line 185
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1e

    goto :goto_43

    .line 187
    :cond_1e
    new-instance p2, Linfo/flowersoft/theotown/util/ListSampler;

    invoke-direct {p2, p1}, Linfo/flowersoft/theotown/util/ListSampler;-><init>(Ljava/util/List;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_25
    const/16 v1, 0x64

    if-ge v0, v1, :cond_3c

    if-nez p1, :cond_3c

    .line 190
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/ListSampler;->sample(Ljava/util/Random;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/city/objects/Car;

    if-eqz p1, :cond_39

    .line 191
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Car;->getAbsParent()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object p1

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_3c
    if-eqz p1, :cond_43

    .line 194
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    .line 195
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/FollowCarTool;->afterCarSelection()V

    :cond_43
    :goto_43
    return-void
.end method

.method public final selectRandomCar()V
    .registers 6

    .line 167
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/DefaultTool;->traffic:Linfo/flowersoft/theotown/components/DefaultTraffic;

    const-class v1, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/components/DefaultTraffic;->getTrafficHandler(Ljava/lang/Class;)Linfo/flowersoft/theotown/components/traffic/TrafficHandler;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/traffic/CarTrafficHandler;->getCars()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 168
    iput-object v1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    const/4 v1, 0x0

    move v2, v1

    :goto_13
    const/16 v3, 0x64

    if-ge v2, v3, :cond_35

    .line 169
    iget-object v3, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    if-nez v3, :cond_35

    .line 170
    new-instance v3, Linfo/flowersoft/theotown/util/ListSampler;

    invoke-direct {v3, v0}, Linfo/flowersoft/theotown/util/ListSampler;-><init>(Ljava/util/List;)V

    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/ListSampler;->sample(Ljava/util/Random;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/city/objects/Car;

    iput-object v3, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    if-eqz v3, :cond_32

    .line 171
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Car;->getAbsParent()Linfo/flowersoft/theotown/city/objects/Car;

    move-result-object v3

    iput-object v3, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 174
    :cond_35
    iput v1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->targetDir:I

    .line 175
    iput v1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->prefIndex:I

    .line 177
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/FollowCarTool;->afterCarSelection()V

    return-void
.end method

.method public unbind()V
    .registers 2

    .line 155
    invoke-super {p0}, Linfo/flowersoft/theotown/city/components/CityComponent;->unbind()V

    const/4 v0, 0x0

    .line 156
    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    return-void
.end method

.method public update()V
    .registers 10

    const/4 v0, 0x1

    .line 218
    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->hideUI:Z

    .line 220
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    if-eqz v0, :cond_b

    iget-boolean v0, v0, Linfo/flowersoft/theotown/city/objects/Car;->invalid:Z

    if-eqz v0, :cond_2d

    .line 221
    :cond_b
    iget-boolean v0, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->canChangeCar:Z

    if-eqz v0, :cond_13

    .line 222
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/FollowCarTool;->selectRandomCar()V

    goto :goto_2d

    .line 224
    :cond_13
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    .line 225
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    const/16 v2, 0xcd2

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    .line 229
    :cond_2d
    :goto_2d
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    if-nez v0, :cond_32

    return-void

    .line 231
    :cond_32
    iget v0, v0, Linfo/flowersoft/theotown/city/objects/Car;->dir:I

    .line 233
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v1

    .line 234
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTimeFactor()F

    move-result v2

    mul-float/2addr v1, v2

    const-wide v2, 0x3fd99999a0000000L    # 0.4000000059604645

    float-to-double v4, v1

    .line 236
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    .line 237
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    iget v1, v1, Linfo/flowersoft/theotown/city/objects/Car;->x:I

    int-to-float v1, v1

    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    iget v5, v4, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    mul-float/2addr v3, v5

    add-float/2addr v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v3

    .line 238
    iget v4, v4, Linfo/flowersoft/theotown/city/objects/Car;->y:I

    int-to-float v4, v4

    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    iget v7, v6, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    mul-float/2addr v4, v3

    .line 239
    iget v5, v6, Linfo/flowersoft/theotown/city/objects/Car;->lastSpeed:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v5, v7

    mul-float/2addr v5, v3

    add-float/2addr v5, v1

    .line 240
    iget-object v7, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    iget v7, v7, Linfo/flowersoft/theotown/city/objects/Car;->lastSpeed:F

    mul-float/2addr v7, v6

    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v7, v0

    mul-float/2addr v7, v3

    add-float/2addr v7, v4

    .line 242
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Car;->isWaiting()Z

    move-result v0

    if-eqz v0, :cond_95

    move v5, v1

    move v7, v4

    .line 247
    :cond_95
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->currentCar:Linfo/flowersoft/theotown/city/objects/Car;

    iget v3, v0, Linfo/flowersoft/theotown/city/objects/Car;->lastLevel:I

    int-to-float v3, v3

    iget v8, v0, Linfo/flowersoft/theotown/city/objects/Car;->absLevel:I

    int-to-float v8, v8

    iget v0, v0, Linfo/flowersoft/theotown/city/objects/Car;->p:F

    invoke-static {v3, v8, v0}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v0

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v0, v3

    .line 253
    iget v3, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->x:F

    invoke-static {v3, v5, v2}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v3

    iput v3, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->x:F

    .line 254
    iget v3, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->y:F

    invoke-static {v3, v7, v2}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v3

    iput v3, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->y:F

    .line 255
    iget v3, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->x:F

    sub-float v5, v1, v6

    add-float/2addr v1, v6

    invoke-static {v3, v5, v1}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->x:F

    .line 256
    iget v1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->y:F

    sub-float v3, v4, v6

    add-float/2addr v4, v6

    invoke-static {v1, v3, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v1

    iput v1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->y:F

    .line 257
    iget v1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->shiftY:F

    invoke-static {v1, v0, v2}, Lcom/badlogic/gdx/math/MathUtils;->lerp(FFF)F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->shiftY:F

    .line 258
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    iget v1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->x:F

    iget v2, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->y:F

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getScale()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/city/City;->focus(FFFZ)V

    .line 261
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftX()F

    move-result v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getAbsShiftY()F

    move-result v2

    iget v3, p0, Linfo/flowersoft/theotown/tools/FollowCarTool;->shiftY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/IsoConverter;->setAbsShift(FF)V

    return-void
.end method

.method public updateMove(FFFFIIFF)Z
    .registers 9

    .line 0
    const/4 p1, 0x1

    return p1
.end method

###### Class info.flowersoft.theotown.tools.FollowCarTool.AnonymousClass1 (info.flowersoft.theotown.tools.FollowCarTool$1)
.class public Linfo/flowersoft/theotown/tools/FollowCarTool$1;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "FollowCarTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/FollowCarTool;-><init>(Linfo/flowersoft/theotown/city/objects/Car;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/FollowCarTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/FollowCarTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 57
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool$1;->this$0:Linfo/flowersoft/theotown/tools/FollowCarTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 60
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_RANDOM:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 65
    const-string v0, "cmdRandomCar"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 75
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/FollowCarTool$1;->this$0:Linfo/flowersoft/theotown/tools/FollowCarTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/FollowCarTool;->access$100(Linfo/flowersoft/theotown/tools/FollowCarTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x3d9

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick()V
    .registers 2

    .line 70
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/FollowCarTool$1;->this$0:Linfo/flowersoft/theotown/tools/FollowCarTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/FollowCarTool;->access$000(Linfo/flowersoft/theotown/tools/FollowCarTool;)V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.FollowCarTool.AnonymousClass2 (info.flowersoft.theotown.tools.FollowCarTool$2)
.class public Linfo/flowersoft/theotown/tools/FollowCarTool$2;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "FollowCarTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/FollowCarTool;-><init>(Linfo/flowersoft/theotown/city/objects/Car;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/FollowCarTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/FollowCarTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 80
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/FollowCarTool$2;->this$0:Linfo/flowersoft/theotown/tools/FollowCarTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 83
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 88
    const-string v0, "cmdSpecialViewFCT"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 103
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/FollowCarTool$2;->this$0:Linfo/flowersoft/theotown/tools/FollowCarTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/FollowCarTool;->access$200(Linfo/flowersoft/theotown/tools/FollowCarTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x611

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPressed()Z
    .registers 2

    .line 98
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->specialViewFollowCarTool:Z

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 93
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->specialViewFollowCarTool:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->specialViewFollowCarTool:Z

    return-void
.end method
