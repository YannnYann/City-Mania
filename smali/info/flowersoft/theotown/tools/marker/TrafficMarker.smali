###### Class info.flowersoft.theotown.tools.marker.TrafficMarker (info.flowersoft.theotown.tools.marker.TrafficMarker)
.class public Linfo/flowersoft/theotown/tools/marker/TrafficMarker;
.super Ljava/lang/Object;
.source "TrafficMarker.java"

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

.field public variant:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 6

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/marker/TrafficMarker;->legend:Ljava/util/List;

    const/4 v1, 0x0

    .line 26
    iput v1, p0, Linfo/flowersoft/theotown/tools/marker/TrafficMarker;->variant:I

    .line 29
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/tools/marker/TrafficMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 31
    new-instance v1, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    .line 32
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    const/16 v3, 0x175

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    .line 34
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v2, 0xf0

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, p1, v2}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public countVariants()I
    .registers 2

    .line 0
    const/4 v0, 0x4

    return v0
.end method

.method public getBuildingIntensity(II)F
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public getColor(IILio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 4

    .line 39
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

.method public getIcon()I
    .registers 2

    .line 102
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRAFFIC:I

    return v0
.end method

.method public getIntensity(II)F
    .registers 9

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, -0x2

    move v2, v0

    :goto_4
    const/16 v3, 0x10

    if-gt v1, v3, :cond_2e

    .line 61
    iget-object v3, p0, Linfo/flowersoft/theotown/tools/marker/TrafficMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v3, p1, p2, v1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 64
    iget v4, p0, Linfo/flowersoft/theotown/tools/marker/TrafficMarker;->variant:I

    if-nez v4, :cond_17

    .line 65
    iget v3, v3, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmount:F

    goto :goto_25

    :cond_17
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1d

    .line 67
    iget v3, v3, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmountLevel1:F

    goto :goto_25

    :cond_1d
    const/4 v5, 0x2

    if-ne v4, v5, :cond_23

    .line 69
    iget v3, v3, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmountLevel2:F

    goto :goto_25

    .line 71
    :cond_23
    iget v3, v3, Linfo/flowersoft/theotown/city/objects/Road;->trafficAmountLevel3:F

    :goto_25
    sub-float v3, v0, v3

    .line 73
    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_2e
    return v2
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

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/TrafficMarker;->legend:Ljava/util/List;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 107
    const-string v0, "TrafficMarker"

    return-object v0
.end method

.method public getTempIntensity(II)F
    .registers 3

    .line 82
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/marker/TrafficMarker;->getIntensity(II)F

    move-result p1

    return p1
.end method

.method public ignoreBuilding(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public markBuilding(II)Z
    .registers 3

    .line 0
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
    .registers 4

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/TrafficMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->hasRoad(II)Z

    move-result p1

    if-eqz p1, :cond_b

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public overlayTempAlpha(II)F
    .registers 3

    .line 54
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/marker/TrafficMarker;->overlayAlpha(II)F

    move-result p1

    return p1
.end method

.method public setVariant(I)V
    .registers 2

    .line 117
    iput p1, p0, Linfo/flowersoft/theotown/tools/marker/TrafficMarker;->variant:I

    return-void
.end method

.method public useOverlay(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x1

    return p1
.end method
