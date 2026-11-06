###### Class info.flowersoft.theotown.tools.marker.WaterPipeMarker (info.flowersoft.theotown.tools.marker.WaterPipeMarker)
.class public Linfo/flowersoft/theotown/tools/marker/WaterPipeMarker;
.super Ljava/lang/Object;
.source "WaterPipeMarker.java"

# interfaces
.implements Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;


# instance fields
.field public final legend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/tools/marker/LegendEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 6

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/marker/WaterPipeMarker;->legend:Ljava/util/List;

    .line 23
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/tools/marker/WaterPipeMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 25
    new-instance v1, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    .line 26
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    const/16 v3, 0x467

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->BLUE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v1, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    .line 28
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v2, 0x8a4

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, p1, v2}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 33
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->BLUE:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

.method public getIcon()I
    .registers 2

    .line 93
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_WATER:I

    return v0
.end method

.method public getIntensity(II)F
    .registers 6

    .line 57
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/WaterPipeMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    .line 59
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/marker/WaterPipeMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getPipe(II)Linfo/flowersoft/theotown/city/objects/Pipe;

    move-result-object v1

    if-nez v1, :cond_2c

    if-eqz v0, :cond_1f

    .line 60
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v1

    sget-object v2, Linfo/flowersoft/theotown/draft/BuildingType;->DESTROYED:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq v1, v2, :cond_1f

    .line 61
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->hasWater()Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_27

    :cond_1f
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/WaterPipeMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->hasWater(II)Z

    move-result p1

    if-eqz p1, :cond_2a

    :goto_27
    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_2a
    const/4 p1, 0x0

    return p1

    :cond_2c
    const/high16 p1, 0x3f000000    # 0.5f

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

    .line 112
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/WaterPipeMarker;->legend:Ljava/util/List;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 98
    const-string v0, "WaterPipeMarker"

    return-object v0
.end method

.method public getTempIntensity(II)F
    .registers 3

    .line 69
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/marker/WaterPipeMarker;->getIntensity(II)F

    move-result p1

    return p1
.end method

.method public ignoreBuilding(II)Z
    .registers 4

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/WaterPipeMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 76
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    sget-object p2, Linfo/flowersoft/theotown/draft/BuildingType;->DESTROYED:Linfo/flowersoft/theotown/draft/BuildingType;

    if-ne p1, p2, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public markBuilding(II)Z
    .registers 7

    .line 81
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/WaterPipeMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 83
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWater()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_1d

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    iget p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->waterWaste:F

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1f

    :cond_1d
    const/4 p1, 0x1

    return p1

    :cond_1f
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
    .registers 6

    .line 43
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/WaterPipeMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    .line 45
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/marker/WaterPipeMarker;->getIntensity(II)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_23

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/marker/WaterPipeMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object p1

    if-nez p1, :cond_23

    if-eqz v0, :cond_22

    .line 46
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object p1

    sget-object p2, Linfo/flowersoft/theotown/draft/BuildingType;->DESTROYED:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq p1, p2, :cond_22

    goto :goto_23

    :cond_22
    return v2

    :cond_23
    :goto_23
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public overlayTempAlpha(II)F
    .registers 3

    .line 52
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/marker/WaterPipeMarker;->overlayAlpha(II)F

    move-result p1

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
    const/4 p1, 0x1

    return p1
.end method
