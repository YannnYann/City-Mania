###### Class info.flowersoft.theotown.tools.RocketAimTool (info.flowersoft.theotown.tools.RocketAimTool)
.class public Linfo/flowersoft/theotown/tools/RocketAimTool;
.super Linfo/flowersoft/theotown/tools/DefaultTool;
.source "RocketAimTool.java"


# instance fields
.field public aimDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public date:Linfo/flowersoft/theotown/components/DefaultDate;

.field public lastLaunch:I

.field public launchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/Building;",
            ">;"
        }
    .end annotation
.end field

.field public targetUfo:Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

.field public targetX:F

.field public targetY:F

.field public ufoDisaster:Linfo/flowersoft/theotown/components/disaster/UfoDisaster;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Linfo/flowersoft/theotown/tools/DefaultTool;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->launchers:Ljava/util/List;

    .line 46
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v1, "$mltry_aim00"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->aimDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 48
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/Tool;->actions:Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;

    new-instance v1, Linfo/flowersoft/theotown/tools/RocketAimTool$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/tools/RocketAimTool$1;-><init>(Linfo/flowersoft/theotown/tools/RocketAimTool;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/toolaction/ToolActionGroup;->add(Linfo/flowersoft/theotown/city/toolaction/ToolAction;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/tools/RocketAimTool;)V
    .registers 1

    .line 29
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/RocketAimTool;->launch()V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/tools/RocketAimTool;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 29
    iget-object p0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method


# virtual methods
.method public addLauncher(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 3

    .line 72
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->launchers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bind(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 82
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->bind(Linfo/flowersoft/theotown/city/City;)V

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    const/4 v0, 0x6

    .line 85
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultCatastrophe;

    const-class v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;

    .line 86
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/components/DefaultCatastrophe;->getDisaster(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->ufoDisaster:Linfo/flowersoft/theotown/components/disaster/UfoDisaster;

    return-void
.end method

.method public drawAfter(Linfo/flowersoft/theotown/city/Drawer;)V
    .registers 10

    .line 199
    invoke-super {p0, p1}, Linfo/flowersoft/theotown/tools/DefaultTool;->drawAfter(Linfo/flowersoft/theotown/city/Drawer;)V

    .line 200
    iget-object v0, p1, Linfo/flowersoft/theotown/city/Drawer;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 202
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object p1

    .line 203
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 205
    invoke-virtual {v0, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 206
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 207
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getX()F

    move-result v2

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result v3

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v4

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v5

    iget-object v6, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->aimDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v6, v6, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    .line 206
    invoke-virtual/range {v0 .. v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 211
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 212
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getX()F

    move-result v2

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 213
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getY()F

    move-result v3

    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result p1

    div-float/2addr p1, v4

    add-float/2addr v3, p1

    iget-object p1, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->aimDraft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    .line 214
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->targetUfo:Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    if-eqz v4, :cond_52

    const/4 v4, 0x1

    goto :goto_53

    :cond_52
    const/4 v4, 0x0

    :goto_53
    aget p1, p1, v4

    .line 211
    invoke-virtual {v0, v1, v2, v3, p1}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    return-void
.end method

.method public ensureValidPosition()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 77
    const-string v0, "RocketAim"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 141
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    const-string v1, "launch_rocket"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isLaunchable(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 6

    .line 133
    iget v0, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->targetX:F

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 134
    iget v1, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->targetY:F

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    sub-float/2addr v1, p1

    .line 136
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_32

    const/4 p1, 0x1

    return p1

    :cond_32
    const/4 p1, 0x0

    return p1
.end method

.method public final launch()V
    .registers 4

    .line 95
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultDate;->getAnimationTime()I

    move-result v0

    .line 97
    iget v1, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->lastLaunch:I

    if-eq v1, v0, :cond_23

    const/4 v1, 0x0

    .line 98
    :goto_b
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->launchers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 99
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->launchers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/objects/Building;

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/tools/RocketAimTool;->launch(Linfo/flowersoft/theotown/city/objects/Building;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 101
    :cond_21
    iput v0, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->lastLaunch:I

    :cond_23
    return-void
.end method

.method public final launch(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 14

    .line 106
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/RocketAimTool;->isLaunchable(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 107
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getFrame()I

    move-result v0

    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->fromIndex(I)I

    move-result v0

    .line 108
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v1

    int-to-float v6, v1

    .line 109
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v0

    int-to-float v7, v0

    .line 111
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const v1, 0x3f866666    # 1.05f

    mul-float v3, v6, v1

    add-float/2addr v3, v0

    .line 112
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    add-float/2addr v0, v4

    mul-float/2addr v1, v7

    add-float v4, v0, v1

    .line 113
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getMaxTerrainLevel()I

    move-result p1

    mul-int/lit8 p1, p1, 0xc

    add-int/lit8 p1, p1, 0x1d

    int-to-float v5, p1

    .line 117
    iget v9, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->targetX:F

    .line 118
    iget v10, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->targetY:F

    .line 120
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    float-to-int v0, v9

    float-to-int v1, v10

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 121
    iget-object p1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    iget v0, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->targetX:F

    float-to-int v0, v0

    iget v1, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->targetY:F

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Linfo/flowersoft/theotown/city/Tiles;->getTerrainAvgHeight(II)F

    move-result p1

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr p1, v0

    goto :goto_63

    :cond_62
    const/4 p1, 0x0

    .line 124
    :goto_63
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->targetUfo:Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    if-eqz v0, :cond_69

    .line 125
    iget p1, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->height:F

    :cond_69
    move v11, p1

    .line 128
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->ufoDisaster:Linfo/flowersoft/theotown/components/disaster/UfoDisaster;

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual/range {v2 .. v11}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->addRocket(FFFFFFFFF)V

    :cond_71
    return-void
.end method

.method public onClick(IIFFII)V
    .registers 7

    .line 91
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/RocketAimTool;->launch()V

    return-void
.end method

.method public update()V
    .registers 6

    .line 173
    invoke-super {p0}, Linfo/flowersoft/theotown/tools/DefaultTool;->update()V

    const/4 v0, 0x0

    .line 175
    :goto_4
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->launchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 176
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->launchers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/Building;

    .line 178
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v2

    if-ne v2, v1, :cond_2f

    .line 179
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Building;->isWorking()Z

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_2f

    .line 183
    :cond_2b
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/tools/RocketAimTool;->update(Linfo/flowersoft/theotown/city/objects/Building;)V

    goto :goto_36

    .line 180
    :cond_2f
    :goto_2f
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->launchers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 187
    :cond_39
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->launchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 188
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getDefaultTool()Linfo/flowersoft/theotown/city/components/Tool;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    :cond_4a
    return-void
.end method

.method public update(Linfo/flowersoft/theotown/city/objects/Building;)V
    .registers 8

    .line 145
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/IsoConverter;->getView()Lio/blueflower/stapel2d/util/ScreenRect;

    move-result-object v0

    .line 146
    iget-object v1, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v1

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v4

    div-float/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoX(FF)F

    move-result v1

    .line 147
    iget-object v2, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getIsoConverter()Linfo/flowersoft/theotown/city/IsoConverter;

    move-result-object v2

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v4

    div-float/2addr v4, v3

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v5

    div-float/2addr v5, v3

    invoke-virtual {v2, v4, v5}, Linfo/flowersoft/theotown/city/IsoConverter;->absToIsoY(FF)F

    move-result v2

    .line 148
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->ufoDisaster:Linfo/flowersoft/theotown/components/disaster/UfoDisaster;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ScreenRect;->getWidth()F

    move-result v5

    div-float/2addr v5, v3

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ScreenRect;->getHeight()F

    move-result v0

    div-float/2addr v0, v3

    invoke-virtual {v4, v5, v0}, Linfo/flowersoft/theotown/components/disaster/UfoDisaster;->getUfoAt(FF)Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->targetUfo:Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;

    if-nez v0, :cond_59

    .line 151
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalX(FF)F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->targetX:F

    .line 152
    iget-object v0, p0, Linfo/flowersoft/theotown/city/components/CityComponent;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/city/City;->rotatedToOriginalY(FF)F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->targetY:F

    goto :goto_61

    .line 154
    :cond_59
    iget v1, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->x:F

    iput v1, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->targetX:F

    .line 155
    iget v0, v0, Linfo/flowersoft/theotown/components/disaster/UfoDisaster$Ufo;->y:F

    iput v0, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->targetY:F

    .line 158
    :goto_61
    iget v0, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->targetX:F

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 159
    iget v1, p0, Linfo/flowersoft/theotown/tools/RocketAimTool;->targetY:F

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 162
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    const/4 v3, 0x0

    if-ltz v2, :cond_94

    cmpl-float v0, v0, v3

    if-lez v0, :cond_92

    const/4 v0, 0x0

    goto :goto_9b

    :cond_92
    const/4 v0, 0x2

    goto :goto_9b

    :cond_94
    cmpl-float v0, v1, v3

    if-lez v0, :cond_9a

    const/4 v0, 0x1

    goto :goto_9b

    :cond_9a
    const/4 v0, 0x3

    .line 168
    :goto_9b
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/objects/Building;->setFrame(I)V

    return-void
.end method

###### Class info.flowersoft.theotown.tools.RocketAimTool.AnonymousClass1 (info.flowersoft.theotown.tools.RocketAimTool$1)
.class public Linfo/flowersoft/theotown/tools/RocketAimTool$1;
.super Linfo/flowersoft/theotown/city/toolaction/ToolAction;
.source "RocketAimTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/tools/RocketAimTool;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/tools/RocketAimTool;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/RocketAimTool;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 48
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/RocketAimTool$1;->this$0:Linfo/flowersoft/theotown/tools/RocketAimTool;

    invoke-direct {p0}, Linfo/flowersoft/theotown/city/toolaction/ToolAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 51
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_RED_BUTTON:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 56
    const-string v0, "cmdLaunchRocket"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .line 66
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RocketAimTool$1;->this$0:Linfo/flowersoft/theotown/tools/RocketAimTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RocketAimTool;->access$100(Linfo/flowersoft/theotown/tools/RocketAimTool;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0x517

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick()V
    .registers 2

    .line 61
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/RocketAimTool$1;->this$0:Linfo/flowersoft/theotown/tools/RocketAimTool;

    invoke-static {v0}, Linfo/flowersoft/theotown/tools/RocketAimTool;->access$000(Linfo/flowersoft/theotown/tools/RocketAimTool;)V

    return-void
.end method
