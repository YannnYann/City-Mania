###### Class info.flowersoft.theotown.tools.marker.BuildingMarker (info.flowersoft.theotown.tools.marker.BuildingMarker)
.class public abstract Linfo/flowersoft/theotown/tools/marker/BuildingMarker;
.super Ljava/lang/Object;
.source "BuildingMarker.java"

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
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->legend:Ljava/util/List;

    .line 24
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    return-void
.end method


# virtual methods
.method public abstract buildingIsInvolved(Linfo/flowersoft/theotown/city/objects/Building;)Z
.end method

.method public countVariants()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public getBuildingIntensity(II)F
    .registers 4

    .line 79
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 82
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->getInvolvedIntensity(Linfo/flowersoft/theotown/city/objects/Building;)F

    move-result p1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method public getColor(IILio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 4

    .line 29
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

.method public getIcon()I
    .registers 2

    .line 90
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    return v0
.end method

.method public getIntensity(II)F
    .registers 4

    .line 51
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 53
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->buildingIsInvolved(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 54
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->getInvolvedIntensity(Linfo/flowersoft/theotown/city/objects/Building;)F

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public abstract getInvolvedIntensity(Linfo/flowersoft/theotown/city/objects/Building;)F
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

    .line 113
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->legend:Ljava/util/List;

    return-object v0
.end method

.method public getTempIntensity(II)F
    .registers 3

    .line 62
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->getIntensity(II)F

    move-result p1

    return p1
.end method

.method public ignoreBuilding(II)Z
    .registers 4

    .line 67
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 69
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object p1

    sget-object p2, Linfo/flowersoft/theotown/draft/BuildingType;->DESTROYED:Linfo/flowersoft/theotown/draft/BuildingType;

    if-ne p1, p2, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    return p1

    :cond_13
    :goto_13
    const/4 p1, 0x1

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

    .line 39
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 41
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->buildingIsInvolved(Linfo/flowersoft/theotown/city/objects/Building;)Z

    move-result p1

    if-eqz p1, :cond_11

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public overlayTempAlpha(II)F
    .registers 3

    .line 46
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->overlayAlpha(II)F

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
