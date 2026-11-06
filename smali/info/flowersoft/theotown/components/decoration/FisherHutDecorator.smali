###### Class info.flowersoft.theotown.components.decoration.FisherHutDecorator (info.flowersoft.theotown.components.decoration.FisherHutDecorator)
.class public Linfo/flowersoft/theotown/components/decoration/FisherHutDecorator;
.super Linfo/flowersoft/theotown/components/decoration/Decorator;
.source "FisherHutDecorator.java"


# instance fields
.field public draft:Linfo/flowersoft/theotown/draft/BuildingDraft;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/decoration/Decorator;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 25
    sget-object p1, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    const-string v0, "$comfisherhut00"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    iput-object p1, p0, Linfo/flowersoft/theotown/components/decoration/FisherHutDecorator;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 26
    invoke-virtual {p1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->isSquare()Z

    move-result p1

    if-eqz p1, :cond_16

    return-void

    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method


# virtual methods
.method public canDecorate(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 4

    .line 31
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/components/decoration/FisherHutDecorator;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/BuildingDraft;->buildingType:Linfo/flowersoft/theotown/draft/BuildingType;

    if-ne v0, v1, :cond_24

    .line 32
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getLevel()I

    move-result p1

    iget-object v0, p0, Linfo/flowersoft/theotown/components/decoration/FisherHutDecorator;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget v0, v0, Linfo/flowersoft/theotown/draft/BuildingDraft;->level:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_24

    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextFloat()F

    move-result p1

    const v0, 0x3dcccccd    # 0.1f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_24

    return v1

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public decorate(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 10

    .line 38
    iget-object v0, p0, Linfo/flowersoft/theotown/components/decoration/FisherHutDecorator;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v0

    .line 39
    iget-object v2, p0, Linfo/flowersoft/theotown/components/decoration/FisherHutDecorator;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result v2

    .line 41
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_14
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v5

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    if-gt v3, v5, :cond_63

    .line 42
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v5

    sub-int/2addr v5, v0

    sub-int/2addr v5, v4

    :goto_26
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v6

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v4

    if-gt v5, v6, :cond_60

    .line 43
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v6

    sub-int/2addr v6, v0

    if-le v5, v6, :cond_56

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v6

    sub-int/2addr v6, v2

    if-le v3, v6, :cond_56

    .line 44
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v6

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_56

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v6

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    if-lt v3, v6, :cond_5d

    .line 45
    :cond_56
    invoke-virtual {p0, v5, v3}, Linfo/flowersoft/theotown/components/decoration/FisherHutDecorator;->tryToDecorate(II)Z

    move-result v6

    if-eqz v6, :cond_5d

    return v4

    :cond_5d
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_63
    return v1
.end method

.method public final tryToDecorate(II)Z
    .registers 15

    .line 56
    iget-object v0, p0, Linfo/flowersoft/theotown/components/decoration/FisherHutDecorator;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getWidth(I)I

    move-result v0

    .line 57
    iget-object v2, p0, Linfo/flowersoft/theotown/components/decoration/FisherHutDecorator;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/draft/BuildingDraft;->getHeight(I)I

    move-result v2

    .line 59
    iget-object v3, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->city:Linfo/flowersoft/theotown/city/City;

    add-int/lit8 v4, p1, -0x1

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-eqz v3, :cond_118

    iget-object v3, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->city:Linfo/flowersoft/theotown/city/City;

    add-int v4, p1, v0

    add-int v5, p2, v2

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v3

    if-nez v3, :cond_27

    goto/16 :goto_118

    :cond_27
    const/4 v3, 0x2

    .line 61
    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    aput v3, v4, v1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Z

    .line 62
    aget-object v6, v4, v1

    iget-object v7, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v7

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v7

    aput-boolean v7, v6, v1

    .line 63
    aget-object v6, v4, v5

    iget-object v7, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v7

    add-int/lit8 v8, p1, 0x1

    invoke-virtual {v7, v8, p2}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v7

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v7

    aput-boolean v7, v6, v1

    .line 64
    aget-object v6, v4, v1

    iget-object v7, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v7

    add-int/lit8 v9, p2, 0x1

    invoke-virtual {v7, p1, v9}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v7

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v7

    aput-boolean v7, v6, v5

    .line 65
    aget-object v6, v4, v5

    iget-object v7, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Linfo/flowersoft/theotown/city/Tiles;->getGround(II)Linfo/flowersoft/theotown/city/objects/Ground;

    move-result-object v7

    invoke-virtual {v7}, Linfo/flowersoft/theotown/city/objects/Ground;->isWater()Z

    move-result v7

    aput-boolean v7, v6, v5

    .line 66
    aget-object v6, v4, v1

    aget-boolean v7, v6, v1

    aget-object v8, v4, v5

    aget-boolean v9, v8, v1

    add-int/2addr v7, v9

    aget-boolean v6, v6, v5

    add-int/2addr v7, v6

    aget-boolean v6, v8, v5

    add-int/2addr v7, v6

    if-lt v7, v3, :cond_118

    const/4 v6, 0x3

    if-le v7, v6, :cond_99

    goto/16 :goto_118

    :cond_99
    move v6, v1

    :goto_9a
    if-ge v6, v2, :cond_cd

    move v7, v1

    :goto_9d
    if-ge v7, v0, :cond_ca

    .line 72
    iget-object v8, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    add-int v9, p1, v7

    add-int v10, p2, v6

    invoke-virtual {v8, v9, v10}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v8

    if-eqz v8, :cond_b6

    .line 73
    iget-object v11, p0, Linfo/flowersoft/theotown/components/decoration/FisherHutDecorator;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v11, v11, Linfo/flowersoft/theotown/draft/BuildingDraft;->zone:Linfo/flowersoft/theotown/draft/ZoneDraft;

    invoke-virtual {v8, v11}, Linfo/flowersoft/theotown/draft/ZoneDraft;->isSuperiorTo(Linfo/flowersoft/theotown/draft/ZoneDraft;)Z

    move-result v8

    if-nez v8, :cond_b6

    return v1

    .line 77
    :cond_b6
    iget-object v8, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v8, v9, v10}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v8

    if-eqz v8, :cond_c7

    .line 78
    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v8

    sget-object v9, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq v8, v9, :cond_c7

    return v1

    :cond_c7
    add-int/lit8 v7, v7, 0x1

    goto :goto_9d

    :cond_ca
    add-int/lit8 v6, v6, 0x1

    goto :goto_9a

    :cond_cd
    move v0, v5

    :goto_ce
    const/16 v2, 0x8

    if-gt v0, v2, :cond_118

    .line 85
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceX(I)I

    move-result v2

    .line 86
    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->differenceY(I)I

    move-result v6

    neg-int v7, v2

    rsub-int/lit8 v8, v2, 0x1

    .line 89
    div-int/2addr v8, v3

    rsub-int/lit8 v9, v6, 0x1

    .line 90
    div-int/2addr v9, v3

    add-int/2addr v8, v2

    .line 92
    aget-object v2, v4, v8

    add-int/2addr v9, v6

    aget-boolean v2, v2, v9

    if-eqz v2, :cond_111

    add-int/2addr v8, v6

    add-int/2addr v8, v3

    rem-int/2addr v8, v3

    aget-object v2, v4, v8

    add-int/2addr v9, v7

    add-int/2addr v9, v3

    rem-int/2addr v9, v3

    aget-boolean v2, v2, v9

    if-eqz v2, :cond_111

    .line 93
    iget-object v2, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v6, p0, Linfo/flowersoft/theotown/components/decoration/FisherHutDecorator;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v2, v6, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;II)Z

    move-result v2

    if-eqz v2, :cond_111

    .line 94
    iget-object v6, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    iget-object v7, p0, Linfo/flowersoft/theotown/components/decoration/FisherHutDecorator;->draft:Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {v0}, Linfo/flowersoft/theotown/city/Direction;->toIndex(I)I

    move-result v0

    add-int/2addr v0, v3

    rem-int/lit8 v10, v0, 0x4

    const/4 v11, 0x0

    move v8, p1

    move v9, p2

    invoke-virtual/range {v6 .. v11}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/BuildingDraft;IIILvm2/LuaValue;)Ljava/util/List;

    return v5

    :cond_111
    move v8, p1

    move v9, p2

    mul-int/lit8 v0, v0, 0x2

    move p1, v8

    move p2, v9

    goto :goto_ce

    :cond_118
    :goto_118
    return v1
.end method
