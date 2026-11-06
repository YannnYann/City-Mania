###### Class info.flowersoft.theotown.tools.marker.LevelMarker (info.flowersoft.theotown.tools.marker.LevelMarker)
.class public Linfo/flowersoft/theotown/tools/marker/LevelMarker;
.super Linfo/flowersoft/theotown/tools/marker/BuildingMarker;
.source "LevelMarker.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 6

    .line 14
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 16
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->legend:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    .line 17
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    const/16 v3, 0x53e

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->legend:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    .line 19
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    const/16 v3, 0xcf7

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->legend:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    .line 21
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v2, 0x88

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, p1, v2}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public buildingIsInvolved(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 3

    .line 26
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 27
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object p1

    sget-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq p1, v0, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, 0x0

    return p1
.end method

.method public getIcon()I
    .registers 2

    .line 45
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_LEVEL:I

    return v0
.end method

.method public getInvolvedIntensity(Linfo/flowersoft/theotown/city/objects/Building;)F
    .registers 3

    .line 32
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getLevel()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_f
    const/high16 p1, 0x3f000000    # 0.5f

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 50
    const-string v0, "LevelMarker"

    return-object v0
.end method
