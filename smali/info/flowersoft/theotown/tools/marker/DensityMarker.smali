###### Class info.flowersoft.theotown.tools.marker.DensityMarker (info.flowersoft.theotown.tools.marker.DensityMarker)
.class public Linfo/flowersoft/theotown/tools/marker/DensityMarker;
.super Linfo/flowersoft/theotown/tools/marker/BuildingMarker;
.source "DensityMarker.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 6

    .line 13
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 15
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->legend:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    .line 16
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    const/16 v3, 0xa67

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->legend:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    .line 18
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v2, 0x12c

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, p1, v2}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public buildingIsInvolved(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 3

    .line 23
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 24
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

    .line 34
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_DENSITY:I

    return v0
.end method

.method public getInvolvedIntensity(Linfo/flowersoft/theotown/city/objects/Building;)F
    .registers 4

    .line 29
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getOverallPeople()I

    move-result p1

    int-to-float p1, p1

    const v0, -0x43dc28f6    # -0.01f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 39
    const-string v0, "DensityMarker"

    return-object v0
.end method
