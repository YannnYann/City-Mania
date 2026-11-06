###### Class info.flowersoft.theotown.tools.marker.PowerMarker (info.flowersoft.theotown.tools.marker.PowerMarker)
.class public Linfo/flowersoft/theotown/tools/marker/PowerMarker;
.super Ljava/lang/Object;
.source "PowerMarker.java"

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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/marker/PowerMarker;->legend:Ljava/util/List;

    .line 24
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/tools/marker/PowerMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 26
    new-instance v1, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    .line 27
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    const/16 v3, 0x52b

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->BLUE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v1, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    .line 29
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    const/16 v3, 0x35c

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v1, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    .line 31
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v2, 0x131

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, p1, v2}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 30
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
    .registers 6

    .line 36
    iget-object p3, p0, Linfo/flowersoft/theotown/tools/marker/PowerMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, p2, v0}, Linfo/flowersoft/theotown/city/Tiles;->hasPower(III)Z

    move-result p3

    .line 37
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/PowerMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/city/Tiles;->hasPower(III)Z

    move-result p1

    if-eqz p3, :cond_15

    if-eqz p1, :cond_15

    .line 39
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1

    :cond_15
    if-eqz p1, :cond_1a

    .line 41
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1

    .line 43
    :cond_1a
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->BLUE:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

.method public getIcon()I
    .registers 2

    .line 96
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ENERGY:I

    return v0
.end method

.method public getIntensity(II)F
    .registers 4

    .line 63
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/PowerMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/PowerMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_14

    :cond_11
    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    .line 64
    :cond_14
    :goto_14
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/marker/PowerMarker;->overlayAlpha(II)F

    move-result p1

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

    .line 115
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/PowerMarker;->legend:Ljava/util/List;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 101
    const-string v0, "PowerMarker"

    return-object v0
.end method

.method public getTempIntensity(II)F
    .registers 3

    .line 72
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/marker/PowerMarker;->getIntensity(II)F

    move-result p1

    return p1
.end method

.method public ignoreBuilding(II)Z
    .registers 4

    .line 77
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/PowerMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 79
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    iget-boolean p1, p1, Linfo/flowersoft/theotown/draft/BuildingDraft;->conductive:Z

    if-nez p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public markBuilding(II)Z
    .registers 4

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/PowerMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 86
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getPower()J

    move-result-wide p1

    long-to-float p1, p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
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
    .registers 5

    .line 53
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/PowerMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/city/Tiles;->hasPower(III)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/PowerMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/city/Tiles;->hasPower(III)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    return p1

    :cond_15
    :goto_15
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public overlayTempAlpha(II)F
    .registers 3

    .line 58
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/marker/PowerMarker;->overlayAlpha(II)F

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
