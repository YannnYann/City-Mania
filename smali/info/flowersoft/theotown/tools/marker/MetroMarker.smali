###### Class info.flowersoft.theotown.tools.marker.MetroMarker (info.flowersoft.theotown.tools.marker.MetroMarker)
.class public Linfo/flowersoft/theotown/tools/marker/MetroMarker;
.super Ljava/lang/Object;
.source "MetroMarker.java"

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
    .registers 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/marker/MetroMarker;->legend:Ljava/util/List;

    .line 24
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    iput-object v1, p0, Linfo/flowersoft/theotown/tools/marker/MetroMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    .line 26
    new-instance v1, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    .line 27
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v2, 0x595

    invoke-interface {p1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->BLUE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, p1, v2}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 26
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

    .line 32
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->BLUE:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

.method public getIcon()I
    .registers 3

    .line 82
    const-string v0, "$cat_train00"

    const-class v1, Linfo/flowersoft/theotown/draft/CategoryDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/CategoryDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getIntensity(II)F
    .registers 5

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/MetroMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v1, -0x2

    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 53
    iget-object p1, p1, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    const-string p2, "metro"

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_16

    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_16
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

    .line 100
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/MetroMarker;->legend:Ljava/util/List;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 87
    const-string v0, "MetroMarker"

    return-object v0
.end method

.method public getTempIntensity(II)F
    .registers 3

    .line 58
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/marker/MetroMarker;->getIntensity(II)F

    move-result p1

    return p1
.end method

.method public ignoreBuilding(II)Z
    .registers 4

    .line 63
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/MetroMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 65
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
    .registers 4

    .line 70
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/MetroMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 72
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p1

    const-string p2, "metro"

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/draft/Draft;->getMetaTag(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
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
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public overlayTempAlpha(II)F
    .registers 3

    .line 42
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/marker/MetroMarker;->overlayAlpha(II)F

    move-result p1

    return p1
.end method

.method public setVariant(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public useOverlay(II)Z
    .registers 5

    .line 37
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/MetroMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v1, -0x2

    invoke-virtual {v0, p1, p2, v1}, Linfo/flowersoft/theotown/city/Tiles;->getRoad(III)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object p1

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method
