###### Class info.flowersoft.theotown.tools.marker.InfluenceMarker (info.flowersoft.theotown.tools.marker.InfluenceMarker)
.class public Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;
.super Ljava/lang/Object;
.source "InfluenceMarker.java"

# interfaces
.implements Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;


# instance fields
.field public final buildingColor:Lio/blueflower/stapel2d/drawing/Color;

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final color:Lio/blueflower/stapel2d/drawing/Color;

.field public final factors:Lio/blueflower/stapel2d/util/IntList;

.field public final influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

.field public final influences:Lio/blueflower/stapel2d/util/IntList;

.field public final legend:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/tools/marker/LegendEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final maxValues:Lcom/badlogic/gdx/utils/FloatArray;

.field public final minValues:Lcom/badlogic/gdx/utils/FloatArray;

.field public final tiles:Linfo/flowersoft/theotown/city/Tiles;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 39
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {p0, p1, v0}, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;-><init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/InfluenceType;)V
    .registers 9

    .line 79
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/InfluenceType;Lio/blueflower/stapel2d/drawing/Color;FF)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/InfluenceType;Lio/blueflower/stapel2d/drawing/Color;FF)V
    .registers 6

    .line 83
    invoke-direct {p0, p1, p3}, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;-><init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 85
    invoke-virtual {p0, p2, p4, p5}, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->addInfluence(Linfo/flowersoft/theotown/city/components/InfluenceType;FF)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/drawing/Color;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influences:Lio/blueflower/stapel2d/util/IntList;

    .line 32
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->factors:Lio/blueflower/stapel2d/util/IntList;

    .line 33
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->minValues:Lcom/badlogic/gdx/utils/FloatArray;

    .line 34
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->maxValues:Lcom/badlogic/gdx/utils/FloatArray;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->legend:Ljava/util/List;

    .line 43
    iput-object p1, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->city:Linfo/flowersoft/theotown/city/City;

    .line 44
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    const/4 v0, 0x2

    .line 45
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultInfluence;

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    .line 46
    iput-object p2, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->color:Lio/blueflower/stapel2d/drawing/Color;

    .line 47
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->CYAN:Lio/blueflower/stapel2d/drawing/Color;

    iput-object p1, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->buildingColor:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method


# virtual methods
.method public addInfluence(Linfo/flowersoft/theotown/city/components/InfluenceType;)V
    .registers 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 89
    invoke-virtual {p0, p1, v0, v1}, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->addInfluence(Linfo/flowersoft/theotown/city/components/InfluenceType;FF)V

    return-void
.end method

.method public addInfluence(Linfo/flowersoft/theotown/city/components/InfluenceType;FF)V
    .registers 6

    .line 93
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influences:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 94
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->minValues:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 95
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->maxValues:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 96
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->factors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/InfluenceType;->isPositive()Z

    move-result p1

    invoke-virtual {p2, p1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 98
    invoke-virtual {p0}, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->updateLegend()V

    return-void
.end method

.method public final calculateIntensityFromInfluence(FI)F
    .registers 6

    .line 220
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->minValues:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v0

    .line 221
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->maxValues:Lcom/badlogic/gdx/utils/FloatArray;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v1

    .line 222
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->factors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, p2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p2

    sub-float/2addr p1, v0

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    int-to-float v0, p2

    mul-float/2addr v0, p1

    rsub-int/lit8 p2, p2, 0x1

    int-to-float p2, p2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr p2, v1

    add-float/2addr v0, p2

    return v0
.end method

.method public countVariants()I
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public getBuildingIntensity(II)F
    .registers 4

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 p2, 0x0

    .line 212
    :goto_3
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influences:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    if-ge p2, v0, :cond_16

    .line 213
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->factors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, p2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_16
    return p1
.end method

.method public getColor(IILio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 4

    .line 107
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->markBuilding(II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 108
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->buildingColor:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1

    .line 110
    :cond_9
    iget-object p1, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->color:Lio/blueflower/stapel2d/drawing/Color;

    return-object p1
.end method

.method public getIcon()I
    .registers 4

    .line 230
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influences:Lio/blueflower/stapel2d/util/IntList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/components/InfluenceType;->getIconId()I

    move-result v0

    return v0
.end method

.method public getIntensity(II)F
    .registers 7

    .line 161
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez v0, :cond_29

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_14

    goto :goto_29

    .line 169
    :cond_14
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object p1

    iget-object p2, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influences:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p2, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/InfluenceType;->isPositive()Z

    move-result p1

    if-eqz p1, :cond_27

    return v1

    :cond_27
    const/4 p1, 0x0

    return p1

    .line 163
    :cond_29
    :goto_29
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influences:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    if-ge v2, v0, :cond_45

    .line 164
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influences:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v0

    .line 165
    iget-object v3, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    invoke-virtual {v3, p1, p2, v0}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluence(III)F

    move-result v0

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->calculateIntensityFromInfluence(FI)F

    move-result v0

    mul-float/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_45
    return v1
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

    .line 248
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->legend:Ljava/util/List;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 235
    const-string v0, "InfluenceMarker"

    return-object v0
.end method

.method public getTempIntensity(II)F
    .registers 7

    .line 175
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez v0, :cond_29

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_14

    goto :goto_29

    .line 183
    :cond_14
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object p1

    iget-object p2, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influences:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p2, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/InfluenceType;->isPositive()Z

    move-result p1

    if-eqz p1, :cond_27

    return v1

    :cond_27
    const/4 p1, 0x0

    return p1

    .line 177
    :cond_29
    :goto_29
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influences:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v0

    if-ge v2, v0, :cond_45

    .line 178
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influences:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v0

    .line 179
    iget-object v3, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    invoke-virtual {v3, p1, p2, v0}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getTempInfluence(III)F

    move-result v0

    invoke-virtual {p0, v0, v2}, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->calculateIntensityFromInfluence(FI)F

    move-result v0

    mul-float/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_45
    return v1
.end method

.method public ignoreBuilding(II)Z
    .registers 4

    .line 189
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 190
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object p1

    sget-object p2, Linfo/flowersoft/theotown/draft/BuildingType;->DESTROYED:Linfo/flowersoft/theotown/draft/BuildingType;

    if-ne p1, p2, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public markBuilding(II)Z
    .registers 5

    .line 195
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_27

    .line 197
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getInfluenceInduceVector()[I

    move-result-object p1

    if-eqz p1, :cond_27

    move v0, p2

    .line 199
    :goto_10
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influences:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 200
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influences:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    aget v1, p1, v1

    if-lez v1, :cond_24

    const/4 p1, 0x1

    return p1

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_27
    return p2
.end method

.method public markTree(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public overlayAlpha(II)F
    .registers 9

    .line 121
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    .line 122
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_4f

    if-eqz v0, :cond_1b

    .line 123
    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->DESTROYED:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq v0, v1, :cond_1b

    goto :goto_4f

    :cond_1b
    const/4 v0, 0x0

    move v1, v0

    move v3, v2

    .line 127
    :goto_1e
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influences:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3a

    .line 128
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influences:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    .line 129
    iget-object v5, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    invoke-virtual {v5, p1, p2, v4}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getInfluence(III)F

    move-result v4

    invoke-virtual {p0, v4, v1}, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->calculateIntensityFromInfluence(FI)F

    move-result v4

    mul-float/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 132
    :cond_3a
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object p1

    iget-object p2, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influences:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p2, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/InfluenceType;->isPositive()Z

    move-result p1

    if-nez p1, :cond_4e

    sub-float/2addr v2, v3

    return v2

    :cond_4e
    return v3

    :cond_4f
    :goto_4f
    return v2
.end method

.method public overlayTempAlpha(II)F
    .registers 9

    .line 142
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_47

    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-eqz v0, :cond_13

    goto :goto_47

    :cond_13
    const/4 v0, 0x0

    move v2, v0

    move v3, v1

    .line 146
    :goto_16
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influences:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v4

    if-ge v2, v4, :cond_32

    .line 147
    iget-object v4, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influences:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    .line 148
    iget-object v5, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influence:Linfo/flowersoft/theotown/components/DefaultInfluence;

    invoke-virtual {v5, p1, p2, v4}, Linfo/flowersoft/theotown/components/DefaultInfluence;->getTempInfluence(III)F

    move-result v4

    invoke-virtual {p0, v4, v2}, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->calculateIntensityFromInfluence(FI)F

    move-result v4

    mul-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 151
    :cond_32
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object p1

    iget-object p2, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influences:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {p2, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result p2

    aget-object p1, p1, p2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/components/InfluenceType;->isPositive()Z

    move-result p1

    if-nez p1, :cond_46

    sub-float/2addr v1, v3

    return v1

    :cond_46
    return v3

    :cond_47
    :goto_47
    return v1
.end method

.method public setVariant(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public final updateLegend()V
    .registers 6

    .line 51
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->legend:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 55
    :goto_c
    iget-object v3, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influences:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4c

    .line 56
    iget-object v3, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->factors:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_49

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2b

    .line 60
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_2b
    iget-object v2, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    .line 63
    invoke-static {}, Linfo/flowersoft/theotown/city/components/InfluenceType;->cachedValues()[Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->influences:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v4, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/components/InfluenceType;->getNameId()I

    move-result v3

    .line 62
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_4c
    if-eqz v2, :cond_5e

    .line 68
    iget-object v1, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->legend:Ljava/util/List;

    new-instance v2, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->buildingColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v2, v0, v3}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 68
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_5e
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->legend:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->city:Linfo/flowersoft/theotown/city/City;

    .line 73
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    const/16 v3, 0x49b

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->color:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->legend:Ljava/util/List;

    new-instance v1, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    iget-object v2, p0, Linfo/flowersoft/theotown/tools/marker/InfluenceMarker;->city:Linfo/flowersoft/theotown/city/City;

    .line 75
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    const/16 v3, 0xaf5

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v1, v2, v3}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 74
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public useOverlay(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x1

    return p1
.end method
