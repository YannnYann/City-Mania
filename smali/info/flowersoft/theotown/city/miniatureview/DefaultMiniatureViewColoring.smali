###### Class info.flowersoft.theotown.city.miniatureview.DefaultMiniatureViewColoring (info.flowersoft.theotown.city.miniatureview.DefaultMiniatureViewColoring)
.class public Linfo/flowersoft/theotown/city/miniatureview/DefaultMiniatureViewColoring;
.super Ljava/lang/Object;
.source "DefaultMiniatureViewColoring.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/miniatureview/MiniatureViewColoring;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMiniatureColor(Lio/blueflower/stapel2d/drawing/Color;Linfo/flowersoft/theotown/city/Tiles;IIIZ)V
    .registers 19

    add-int v0, p3, p4

    .line 25
    rem-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x4

    .line 27
    invoke-virtual/range {p2 .. p4}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v2

    .line 29
    invoke-virtual/range {p2 .. p4}, Linfo/flowersoft/theotown/city/Tiles;->getTree(II)Linfo/flowersoft/theotown/city/objects/Tree;

    move-result-object v3

    .line 31
    invoke-virtual/range {p2 .. p4}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v4

    .line 32
    invoke-virtual/range {p2 .. p4}, Linfo/flowersoft/theotown/city/Tiles;->getTopRoad(II)Linfo/flowersoft/theotown/city/objects/Road;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez p6, :cond_25

    .line 33
    iget-boolean v8, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->winter:Z

    if-eqz v8, :cond_23

    goto :goto_25

    :cond_23
    move v8, v6

    goto :goto_26

    :cond_25
    :goto_25
    move v8, v7

    .line 35
    :goto_26
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v9

    if-eqz v9, :cond_46

    .line 36
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getDraft()Linfo/flowersoft/theotown/draft/GroundDraft;

    move-result-object v7

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/GroundDraft;->darkWaterColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v7

    const/16 v9, 0xff

    if-ge v7, v9, :cond_6f

    .line 37
    iget-short v1, v1, Linfo/flowersoft/theotown/city/objects/Ground;->height:S

    const/16 v7, -0x190

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    goto :goto_6f

    .line 39
    :cond_46
    iget-byte v9, v1, Linfo/flowersoft/theotown/city/objects/Ground;->heightDX:B

    iget-byte v10, v1, Linfo/flowersoft/theotown/city/objects/Ground;->heightDY:B

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x4

    add-int/2addr v0, v9

    .line 40
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->getUpDirs()I

    move-result v1

    move/from16 v9, p5

    invoke-static {v1, v9}, Linfo/flowersoft/theotown/city/Direction;->rotateCCW(II)I

    move-result v1

    and-int/lit8 v9, v1, 0x1

    mul-int/lit8 v9, v9, 0x14

    add-int/2addr v0, v9

    shr-int/lit8 v9, v1, 0x1

    and-int/2addr v9, v7

    mul-int/lit8 v9, v9, 0x14

    add-int/2addr v0, v9

    shr-int/lit8 v9, v1, 0x2

    and-int/2addr v9, v7

    mul-int/lit8 v9, v9, 0x14

    sub-int/2addr v0, v9

    shr-int/lit8 v1, v1, 0x3

    and-int/2addr v1, v7

    mul-int/lit8 v1, v1, 0x14

    sub-int/2addr v0, v1

    :cond_6f
    :goto_6f
    if-eqz v8, :cond_84

    .line 48
    iget-object v1, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->mapColorWinter:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v1

    .line 49
    iget-object v7, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->mapColorWinter:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v7

    .line 50
    iget-object v2, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->mapColorWinter:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v2

    goto :goto_96

    .line 52
    :cond_84
    iget-object v1, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->mapColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v1

    .line 53
    iget-object v7, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->mapColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v7

    .line 54
    iget-object v2, v2, Linfo/flowersoft/theotown/draft/GroundDraft;->mapColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v2

    :goto_96
    if-eqz v3, :cond_d1

    .line 58
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Tree;->getFrame()I

    move-result v1

    .line 59
    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/objects/Tree;->getDraft()Linfo/flowersoft/theotown/draft/TreeDraft;

    move-result-object v2

    if-eqz v8, :cond_ba

    .line 61
    iget-object v3, v2, Linfo/flowersoft/theotown/draft/TreeDraft;->mapColorWinter:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v3

    add-int/2addr v3, v1

    .line 62
    iget-object v5, v2, Linfo/flowersoft/theotown/draft/TreeDraft;->mapColorWinter:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v5

    add-int/2addr v5, v1

    .line 63
    iget-object v2, v2, Linfo/flowersoft/theotown/draft/TreeDraft;->mapColorWinter:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v2

    :goto_b6
    add-int/2addr v2, v1

    move v1, v3

    move v7, v5

    goto :goto_fa

    .line 65
    :cond_ba
    iget-object v3, v2, Linfo/flowersoft/theotown/draft/TreeDraft;->mapColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v3

    add-int/2addr v3, v1

    .line 66
    iget-object v5, v2, Linfo/flowersoft/theotown/draft/TreeDraft;->mapColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v5

    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v5, v7

    .line 67
    iget-object v2, v2, Linfo/flowersoft/theotown/draft/TreeDraft;->mapColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v2

    goto :goto_b6

    :cond_d1
    if-eqz v5, :cond_f0

    .line 70
    iget-object v1, v5, Linfo/flowersoft/theotown/city/objects/Road;->draft:Linfo/flowersoft/theotown/draft/RoadDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/RoadDraft;->mapColor:Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v1, :cond_e9

    .line 72
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v2

    .line 73
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v7

    .line 74
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v1

    move v11, v2

    move v2, v1

    move v1, v11

    goto :goto_fa

    :cond_e9
    const/16 v1, 0x52

    const/16 v7, 0x47

    const/16 v2, 0x45

    goto :goto_fa

    .line 80
    :cond_f0
    invoke-virtual/range {p2 .. p4}, Linfo/flowersoft/theotown/city/Tiles;->getRail(II)Linfo/flowersoft/theotown/city/objects/Rail;

    move-result-object v3

    if-eqz v3, :cond_fa

    const/16 v1, 0xc8

    move v2, v1

    move v7, v2

    :cond_fa
    :goto_fa
    if-eqz v4, :cond_141

    .line 84
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->mapColor:Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v1, :cond_11a

    .line 85
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->mapColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 86
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v2

    .line 87
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v7

    .line 88
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v1

    :goto_116
    move v11, v2

    move v2, v1

    move v1, v11

    goto :goto_141

    .line 89
    :cond_11a
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getZone()Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v1

    if-eqz v1, :cond_13b

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getZone()Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ZoneDraft;->mapColor:Lio/blueflower/stapel2d/drawing/Color;

    if-eqz v1, :cond_13b

    .line 90
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getZone()Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ZoneDraft;->mapColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 91
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v2

    .line 92
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v7

    .line 93
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v1

    goto :goto_116

    :cond_13b
    const/16 v1, 0x79

    const/16 v7, 0x7a

    const/16 v2, 0x80

    .line 101
    :cond_141
    :goto_141
    invoke-virtual/range {p2 .. p4}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object p2

    if-eqz p2, :cond_15b

    .line 102
    iget-object p3, p2, Linfo/flowersoft/theotown/draft/ZoneDraft;->mapColor:Lio/blueflower/stapel2d/drawing/Color;

    if-eqz p3, :cond_15b

    .line 103
    invoke-virtual {p3}, Lio/blueflower/stapel2d/drawing/Color;->getRed()I

    move-result v1

    .line 104
    iget-object p3, p2, Linfo/flowersoft/theotown/draft/ZoneDraft;->mapColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p3}, Lio/blueflower/stapel2d/drawing/Color;->getGreen()I

    move-result v7

    .line 105
    iget-object p2, p2, Linfo/flowersoft/theotown/draft/ZoneDraft;->mapColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/drawing/Color;->getBlue()I

    move-result v2

    :cond_15b
    if-eqz v4, :cond_18d

    .line 109
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_170

    mul-int/lit8 v1, v1, 0x28

    .line 110
    div-int/lit8 v1, v1, 0x64

    mul-int/lit8 v7, v7, 0x28

    .line 111
    div-int/lit8 v7, v7, 0x64

    mul-int/lit8 v2, v2, 0x28

    .line 112
    div-int/lit8 v2, v2, 0x64

    goto :goto_17c

    :cond_170
    mul-int/lit8 v1, v1, 0x4b

    .line 114
    div-int/lit8 v1, v1, 0x64

    mul-int/lit8 v7, v7, 0x4b

    .line 115
    div-int/lit8 v7, v7, 0x64

    mul-int/lit8 v2, v2, 0x4b

    .line 116
    div-int/lit8 v2, v2, 0x64

    .line 119
    :goto_17c
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object p2

    iget-object p2, p2, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object p3

    iget-object p3, p3, Linfo/flowersoft/theotown/city/Zones;->DESTROYED:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne p2, p3, :cond_18d

    move v2, v6

    move v7, v2

    goto :goto_18e

    :cond_18d
    move v6, v1

    :goto_18e
    add-int/2addr v6, v0

    add-int/2addr v7, v0

    add-int/2addr v2, v0

    .line 128
    invoke-virtual {p1, v6}, Lio/blueflower/stapel2d/drawing/Color;->setRed(I)V

    .line 129
    invoke-virtual {p1, v7}, Lio/blueflower/stapel2d/drawing/Color;->setGreen(I)V

    .line 130
    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/drawing/Color;->setBlue(I)V

    return-void
.end method
