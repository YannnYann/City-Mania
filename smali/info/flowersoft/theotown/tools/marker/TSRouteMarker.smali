###### Class info.flowersoft.theotown.tools.marker.TSRouteMarker (info.flowersoft.theotown.tools.marker.TSRouteMarker)
.class public abstract Linfo/flowersoft/theotown/tools/marker/TSRouteMarker;
.super Ljava/lang/Object;
.source "TSRouteMarker.java"

# interfaces
.implements Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;


# instance fields
.field public final editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

.field public final legend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/tools/marker/LegendEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/tools/TSRouteTool$Route;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/tools/TSRouteTool$Route;",
            "Linfo/flowersoft/theotown/city/City;",
            "Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/tools/marker/LegendEntry;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/marker/TSRouteMarker;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    .line 22
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/marker/TSRouteMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 23
    iput-object p3, p0, Linfo/flowersoft/theotown/tools/marker/TSRouteMarker;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    .line 24
    iput-object p4, p0, Linfo/flowersoft/theotown/tools/marker/TSRouteMarker;->legend:Ljava/util/List;

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
    .registers 5

    .line 87
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/TSRouteMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_b

    return v1

    .line 92
    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/TSRouteMarker;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationByXY(II)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object p1

    if-nez p1, :cond_14

    return v1

    :cond_14
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getColor(IILio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 5

    .line 31
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/TSRouteMarker;->system:Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/components/transportationsystem/TSSystem;->getStationByXY(II)Linfo/flowersoft/theotown/components/transportationsystem/TSStation;

    move-result-object p1

    if-nez p1, :cond_9

    return-object p3

    .line 34
    :cond_9
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/marker/TSRouteMarker;->isStationConnected(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)Z

    move-result p2

    if-nez p2, :cond_26

    iget-object p2, p0, Linfo/flowersoft/theotown/tools/marker/TSRouteMarker;->editingRoute:Linfo/flowersoft/theotown/tools/TSRouteTool$Route;

    if-eqz p2, :cond_20

    iget-object p2, p2, Linfo/flowersoft/theotown/tools/TSRouteTool$Route;->stationIds:Lio/blueflower/stapel2d/util/IntList;

    .line 35
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/blueflower/stapel2d/util/IntList;->contains(I)Z

    move-result p2

    if-eqz p2, :cond_20

    goto :goto_26

    .line 39
    :cond_20
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p3, p1}, Lio/blueflower/stapel2d/drawing/Color;->setTo(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    return-object p3

    .line 36
    :cond_26
    :goto_26
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p3, p2}, Lio/blueflower/stapel2d/drawing/Color;->setTo(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    .line 37
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->ORANGE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/transportationsystem/TSStation;->getWaitingUsage()F

    move-result p1

    invoke-virtual {p3, p2, p1}, Lio/blueflower/stapel2d/drawing/Color;->lerp(Lio/blueflower/stapel2d/drawing/Color;F)Lio/blueflower/stapel2d/drawing/Color;

    return-object p3
.end method

.method public getIcon()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getIntensity(II)F
    .registers 3

    .line 0
    const/4 p1, 0x0

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

    .line 121
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/TSRouteMarker;->legend:Ljava/util/List;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 107
    const-string v0, "ts system tag"

    return-object v0
.end method

.method public getTempIntensity(II)F
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public ignoreBuilding(II)Z
    .registers 3

    .line 72
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/marker/TSRouteMarker;->getBuildingIntensity(II)F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public abstract isStationConnected(Linfo/flowersoft/theotown/components/transportationsystem/TSStation;)Z
.end method

.method public markBuilding(II)Z
    .registers 3

    .line 77
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/marker/TSRouteMarker;->getBuildingIntensity(II)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
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
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public overlayTempAlpha(II)F
    .registers 3

    .line 0
    const/4 p1, 0x0

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
    const/4 p1, 0x0

    return p1
.end method
