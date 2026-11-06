###### Class info.flowersoft.theotown.city.miniatureview.MarkerMiniatureViewColoring (info.flowersoft.theotown.city.miniatureview.MarkerMiniatureViewColoring)
.class public Linfo/flowersoft/theotown/city/miniatureview/MarkerMiniatureViewColoring;
.super Linfo/flowersoft/theotown/city/miniatureview/DefaultMiniatureViewColoring;
.source "MarkerMiniatureViewColoring.java"


# instance fields
.field public marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Linfo/flowersoft/theotown/city/miniatureview/DefaultMiniatureViewColoring;-><init>()V

    return-void
.end method


# virtual methods
.method public getMarker()Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;
    .registers 2

    .line 18
    iget-object v0, p0, Linfo/flowersoft/theotown/city/miniatureview/MarkerMiniatureViewColoring;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    return-object v0
.end method

.method public getMiniatureColor(Lio/blueflower/stapel2d/drawing/Color;Linfo/flowersoft/theotown/city/Tiles;IIIZ)V
    .registers 15

    .line 27
    invoke-super/range {p0 .. p6}, Linfo/flowersoft/theotown/city/miniatureview/DefaultMiniatureViewColoring;->getMiniatureColor(Lio/blueflower/stapel2d/drawing/Color;Linfo/flowersoft/theotown/city/Tiles;IIIZ)V

    move p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 29
    iget-object p6, p1, Linfo/flowersoft/theotown/city/miniatureview/MarkerMiniatureViewColoring;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    if-eqz p6, :cond_110

    .line 32
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v0

    .line 33
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v1

    .line 34
    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v2

    .line 36
    invoke-virtual {p3, p4, p5}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 38
    invoke-interface {p6, p4, p5}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->markBuilding(II)Z

    move-result v4

    if-eqz v4, :cond_2a

    const/16 v0, 0xff

    move v1, v0

    move v2, v1

    goto/16 :goto_107

    .line 41
    :cond_2a
    invoke-virtual {p3, p4, p5}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object p3

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-nez p3, :cond_38

    if-eqz v3, :cond_a1

    :cond_38
    if-eqz v3, :cond_40

    .line 42
    invoke-interface {p6, p4, p5}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->ignoreBuilding(II)Z

    move-result p3

    if-nez p3, :cond_a1

    .line 43
    :cond_40
    invoke-interface {p6, p4, p5}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->useOverlay(II)Z

    move-result p3

    if-eqz p3, :cond_a1

    .line 44
    invoke-interface {p6, p4, p5}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->overlayAlpha(II)F

    move-result p3

    .line 45
    invoke-interface {p6, p4, p5}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->getIntensity(II)F

    move-result v0

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 47
    invoke-interface {p6, p4, p5, p2}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->getColor(IILio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p4

    .line 48
    sget-object p5, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    mul-float/2addr v0, v5

    .line 50
    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result p6

    sub-float/2addr v5, v0

    .line 51
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 53
    invoke-virtual {p4}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p6

    invoke-virtual {p5}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    mul-float/2addr v1, p3

    sub-float/2addr v6, p3

    mul-float/2addr v6, v4

    add-float/2addr v1, v6

    .line 52
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 56
    invoke-virtual {p4}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p6

    invoke-virtual {p5}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    mul-float/2addr v2, p3

    add-float/2addr v2, v6

    .line 55
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 59
    invoke-virtual {p4}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p6, p4

    invoke-virtual {p5}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr v0, p4

    add-float/2addr p6, v0

    mul-float/2addr p3, p6

    add-float/2addr p3, v6

    .line 58
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    move v0, v1

    move v1, v2

    move v2, p3

    goto :goto_107

    .line 62
    :cond_a1
    invoke-interface {p6, p4, p5}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->useOverlay(II)Z

    move-result p3

    if-eqz p3, :cond_107

    .line 63
    invoke-interface {p6, p4, p5}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->overlayAlpha(II)F

    move-result p3

    .line 64
    invoke-interface {p6, p4, p5}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->getIntensity(II)F

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 65
    invoke-interface {p6, p4, p5, p2}, Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;->getColor(IILio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p4

    .line 66
    sget-object p5, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    mul-float/2addr v3, v5

    .line 68
    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result p6

    sub-float/2addr v5, v3

    .line 69
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 71
    invoke-virtual {p4}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p6

    invoke-virtual {p5}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v3

    add-float/2addr v5, v7

    mul-float/2addr v5, p3

    sub-float/2addr v6, p3

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    .line 70
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 74
    invoke-virtual {p4}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p6

    invoke-virtual {p5}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v3

    add-float/2addr v5, v7

    mul-float/2addr v5, p3

    add-float/2addr v5, v6

    .line 73
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 77
    invoke-virtual {p4}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p6, p4

    invoke-virtual {p5}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr v3, p4

    add-float/2addr p6, v3

    mul-float/2addr p3, p6

    add-float/2addr p3, v6

    .line 76
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    add-int/2addr v0, v4

    .line 80
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v5

    .line 81
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, p3

    .line 82
    div-int/lit8 v2, v2, 0x2

    .line 85
    :cond_107
    :goto_107
    invoke-virtual {p2, v0}, Lio/blueflower/stapel2d/drawing/Color;->setRed(I)V

    .line 86
    invoke-virtual {p2, v1}, Lio/blueflower/stapel2d/drawing/Color;->setGreen(I)V

    .line 87
    invoke-virtual {p2, v2}, Lio/blueflower/stapel2d/drawing/Color;->setBlue(I)V

    :cond_110
    return-void
.end method

.method public setMarker(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)V
    .registers 2

    .line 22
    iput-object p1, p0, Linfo/flowersoft/theotown/city/miniatureview/MarkerMiniatureViewColoring;->marker:Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;

    return-void
.end method
