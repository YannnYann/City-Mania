###### Class info.flowersoft.theotown.components.decoration.HarborDecorator (info.flowersoft.theotown.components.decoration.HarborDecorator)
.class public Linfo/flowersoft/theotown/components/decoration/HarborDecorator;
.super Linfo/flowersoft/theotown/components/decoration/Decorator;
.source "HarborDecorator.java"


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/decoration/Decorator;-><init>(Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method

.method private tryToDecorate(II)Z
    .registers 16

    const/4 v0, 0x1

    move v1, v0

    :goto_2
    const/16 v2, 0x8

    const/4 v3, 0x0

    if-gt v1, v2, :cond_86

    .line 49
    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v2

    .line 50
    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v4

    neg-int v9, v4

    add-int/lit8 v5, p1, 0x1

    add-int/2addr v5, v2

    add-int/lit8 v6, p2, 0x1

    add-int/2addr v6, v4

    .line 56
    invoke-virtual {p0, v5, v6}, Linfo/flowersoft/theotown/components/decoration/HarborDecorator;->isLand(II)Z

    move-result v7

    if-eqz v7, :cond_7e

    iget-object v7, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v7, v5, v6}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v7

    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v8

    iget-object v8, v8, Linfo/flowersoft/theotown/city/Zones;->HARBOR:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v7, v8, :cond_7e

    sub-int/2addr v5, v2

    sub-int v11, v5, v9

    sub-int/2addr v6, v4

    sub-int v4, v6, v2

    move v12, v3

    :goto_31
    const/4 v5, 0x3

    if-ge v12, v5, :cond_4a

    mul-int v5, v12, v9

    add-int v6, v11, v5

    mul-int v5, v12, v2

    add-int v7, v4, v5

    neg-int v8, v2

    const/4 v10, 0x4

    move-object v5, p0

    .line 60
    invoke-virtual/range {v5 .. v10}, Linfo/flowersoft/theotown/components/decoration/HarborDecorator;->countWaterTiles(IIIII)I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_47

    return v3

    :cond_47
    add-int/lit8 v12, v12, 0x1

    goto :goto_31

    :cond_4a
    move-object v5, p0

    .line 65
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->HARBOR_PIERS:Ljava/util/List;

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    sget-object v4, Linfo/flowersoft/theotown/resources/Drafts;->HARBOR_PIERS:Ljava/util/List;

    .line 66
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 65
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 68
    iget-object v2, v5, Linfo/flowersoft/theotown/components/decoration/Decorator;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v2, v7, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;II)Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-virtual {p0, v7, p1, p2}, Linfo/flowersoft/theotown/components/decoration/HarborDecorator;->nothingHasToBeRemoved(Linfo/flowersoft/theotown/draft/BuildingDraft;II)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 69
    iget-object v6, v5, Linfo/flowersoft/theotown/components/decoration/Decorator;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-static {v1}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result v10

    const/4 v11, 0x0

    move v8, p1

    move v9, p2

    invoke-virtual/range {v6 .. v11}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/BuildingDraft;IIILvm2/LuaValue;)Ljava/util/List;

    return v0

    :cond_7b
    :goto_7b
    move v8, p1

    move v9, p2

    goto :goto_80

    :cond_7e
    move-object v5, p0

    goto :goto_7b

    :goto_80
    mul-int/lit8 v1, v1, 0x2

    move p1, v8

    move p2, v9

    goto/16 :goto_2

    :cond_86
    move-object v5, p0

    return v3
.end method


# virtual methods
.method public canDecorate(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 3

    .line 23
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object p1

    sget-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->HARBOR_IND:Linfo/flowersoft/theotown/draft/BuildingType;

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final countWaterTiles(IIIII)I
    .registers 8

    const/4 v0, 0x0

    .line 102
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v1

    if-eqz v1, :cond_20

    :cond_19
    if-ge v0, p5, :cond_20

    add-int/2addr p1, p3

    add-int/2addr p2, p4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_20
    return v0
.end method

.method public decorate(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 7

    .line 29
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 30
    :goto_b
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_7b

    .line 32
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v2

    add-int/lit8 v2, v2, -0x6

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 33
    :goto_2e
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x3

    iget-object v4, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_78

    .line 35
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-lt v2, v3, :cond_6d

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-lt v0, v3, :cond_6d

    .line 36
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_6d

    .line 37
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-lt v0, v3, :cond_75

    :cond_6d
    invoke-direct {p0, v2, v0}, Linfo/flowersoft/theotown/components/decoration/HarborDecorator;->tryToDecorate(II)Z

    move-result v3

    if-eqz v3, :cond_75

    const/4 p1, 0x1

    return p1

    :cond_75
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_7b
    return v1
.end method

.method public final isLand(II)Z
    .registers 4

    .line 94
    iget-object v0, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final nothingHasToBeRemoved(Linfo/flowersoft/theotown/draft/BuildingDraft;II)Z
    .registers 9

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v1

    .line 81
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result p1

    move v2, p3

    :goto_a
    add-int v3, p3, p1

    if-ge v2, v3, :cond_22

    move v3, p2

    :goto_f
    add-int v4, p2, v1

    if-ge v3, v4, :cond_1f

    .line 85
    iget-object v4, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v4, v3, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v4

    if-eqz v4, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_22
    const/4 p1, 0x1

    return p1
.end method
