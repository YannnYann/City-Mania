###### Class info.flowersoft.theotown.tools.marker.ProtectedMarker (info.flowersoft.theotown.tools.marker.ProtectedMarker)
.class public Linfo/flowersoft/theotown/tools/marker/ProtectedMarker;
.super Linfo/flowersoft/theotown/tools/marker/BuildingMarker;
.source "ProtectedMarker.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 5

    .line 15
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 17
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->legend:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    .line 18
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v2, 0x7c3

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->BLUE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, p1, v2}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public buildingIsInvolved(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 3

    .line 28
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isUntouchable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 29
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 30
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object p1

    sget-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq p1, v0, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public getColor(IILio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 4

    .line 23
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->BLUE:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

.method public getIcon()I
    .registers 2

    .line 48
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_UNTOUCHABLE:I

    return v0
.end method

.method public getInvolvedIntensity(Linfo/flowersoft/theotown/city/objects/Building;)F
    .registers 2

    .line 0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 53
    const-string v0, "ProtectedMarker"

    return-object v0
.end method

.method public markBuilding(II)Z
    .registers 4

    .line 40
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_18

    .line 41
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/marker/ProtectedMarker;->buildingIsInvolved(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_18

    .line 43
    :cond_10
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isUntouchable()Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    :goto_18
    return p2
.end method
