###### Class info.flowersoft.theotown.components.decoration.FarmDecorator (info.flowersoft.theotown.components.decoration.FarmDecorator)
.class public Linfo/flowersoft/theotown/components/decoration/FarmDecorator;
.super Linfo/flowersoft/theotown/components/decoration/Decorator;
.source "FarmDecorator.java"


# instance fields
.field public farmFieldDrafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/decoration/Decorator;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 24
    const-string p1, "farm field"

    const-class v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/resources/Drafts;->getDraftsWithTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/components/decoration/FarmDecorator;->farmFieldDrafts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public canDecorate(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 3

    .line 29
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object p1

    sget-object v0, Linfo/flowersoft/theotown/draft/BuildingType;->FARM:Linfo/flowersoft/theotown/draft/BuildingType;

    if-ne p1, v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public decorate(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 14

    .line 34
    iget-object v0, p0, Linfo/flowersoft/theotown/components/decoration/FarmDecorator;->farmFieldDrafts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 36
    :cond_a
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    iget-object v1, p0, Linfo/flowersoft/theotown/components/decoration/FarmDecorator;->farmFieldDrafts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 37
    iget-object v1, p0, Linfo/flowersoft/theotown/components/decoration/FarmDecorator;->farmFieldDrafts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    .line 39
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    .line 40
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v1

    .line 41
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v3

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    .line 42
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v4

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v7

    .line 44
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v5

    :goto_40
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v6

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v8

    add-int/2addr v6, v8

    if-ge v5, v6, :cond_a8

    add-int/lit8 v6, v0, -0x1

    :goto_4d
    if-ltz v6, :cond_75

    .line 46
    iget-object v8, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v8, v6, v5}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v8

    .line 47
    iget-object v9, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v9, v6, v5}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v9

    .line 48
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v10

    iget-object v10, v10, Linfo/flowersoft/theotown/city/Zones;->FARM:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v8, v10, :cond_75

    iget-object v8, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v8, v2, v6, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;II)Z

    move-result v8

    if-eqz v8, :cond_75

    if-eqz v9, :cond_6e

    goto :goto_75

    .line 51
    :cond_6e
    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v6, v6, -0x1

    goto :goto_4d

    :cond_75
    :goto_75
    add-int/lit8 v6, v3, 0x1

    .line 54
    :goto_77
    iget-object v8, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v8

    if-ge v6, v8, :cond_a5

    .line 55
    iget-object v8, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v8, v6, v5}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v8

    .line 56
    iget-object v9, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v9, v6, v5}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v9

    .line 57
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v10

    iget-object v10, v10, Linfo/flowersoft/theotown/city/Zones;->FARM:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v8, v10, :cond_a5

    iget-object v8, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v8, v2, v6, v5}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;II)Z

    move-result v8

    if-eqz v8, :cond_a5

    if-eqz v9, :cond_9e

    goto :goto_a5

    .line 60
    :cond_9e
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_77

    :cond_a5
    :goto_a5
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    .line 64
    :cond_a8
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v5

    :goto_ac
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v6

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v8

    add-int/2addr v6, v8

    if-ge v5, v6, :cond_114

    add-int/lit8 v6, v1, -0x1

    :goto_b9
    if-ltz v6, :cond_e1

    .line 66
    iget-object v8, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v8, v5, v6}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v8

    .line 67
    iget-object v9, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v9, v5, v6}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v9

    .line 68
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v10

    iget-object v10, v10, Linfo/flowersoft/theotown/city/Zones;->FARM:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v8, v10, :cond_e1

    iget-object v8, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v8, v2, v5, v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;II)Z

    move-result v8

    if-eqz v8, :cond_e1

    if-eqz v9, :cond_da

    goto :goto_e1

    .line 71
    :cond_da
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v6, v6, -0x1

    goto :goto_b9

    :cond_e1
    :goto_e1
    add-int/lit8 v6, v4, 0x1

    .line 74
    :goto_e3
    iget-object v8, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v8

    if-ge v6, v8, :cond_111

    .line 75
    iget-object v8, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v8, v5, v6}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v8

    .line 76
    iget-object v9, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v9, v5, v6}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v9

    .line 77
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v10

    iget-object v10, v10, Linfo/flowersoft/theotown/city/Zones;->FARM:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne v8, v10, :cond_111

    iget-object v8, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v8, v2, v5, v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;II)Z

    move-result v8

    if-eqz v8, :cond_111

    if-eqz v9, :cond_10a

    goto :goto_111

    .line 80
    :cond_10a
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_e3

    :cond_111
    :goto_111
    add-int/lit8 v5, v5, 0x1

    goto :goto_ac

    :cond_114
    sub-int/2addr v3, v0

    add-int/2addr v3, v7

    sub-int/2addr v4, v1

    add-int/2addr v4, v7

    .line 98
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v5

    sub-int/2addr v5, v0

    .line 99
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    sub-int/2addr v0, v1

    .line 101
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v1

    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    add-int/lit8 v8, v5, 0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    sub-int/2addr v1, v8

    sub-int v8, v1, v5

    .line 102
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result p1

    add-int/lit8 v1, v0, 0x1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sub-int/2addr p1, v1

    sub-int/2addr p1, v0

    add-int/2addr v3, v8

    add-int/lit8 v0, v3, -0x1

    add-int/2addr v4, p1

    add-int/lit8 v9, v4, -0x1

    const/4 v10, 0x2

    .line 106
    invoke-virtual {v6, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    move v4, p1

    :goto_151
    if-gt v4, v9, :cond_197

    move v3, v8

    :goto_154
    if-gt v3, v0, :cond_194

    .line 110
    iget-object p1, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {p1, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object p1

    .line 111
    iget-object v1, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v1, v3, v4}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v1

    .line 113
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->getInstance()Linfo/flowersoft/theotown/city/Zones;

    move-result-object v5

    iget-object v5, v5, Linfo/flowersoft/theotown/city/Zones;->FARM:Linfo/flowersoft/theotown/draft/ZoneDraft;

    if-ne p1, v5, :cond_191

    iget-object p1, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {p1, v2, v3, v4}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;II)Z

    move-result p1

    if-eqz p1, :cond_191

    if-nez v1, :cond_191

    .line 115
    iget-object p1, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, p1

    const/4 v5, 0x4

    if-lt v1, v5, :cond_185

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    array-length p1, p1

    div-int/2addr p1, v10

    invoke-virtual {v1, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    mul-int/2addr p1, v10

    add-int/2addr p1, v11

    goto :goto_186

    :cond_185
    move p1, v11

    .line 116
    :goto_186
    iget-object v1, v2, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v1, v1

    rem-int v5, p1, v1

    .line 117
    iget-object v1, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/BuildingDraft;IIILvm2/LuaValue;)Ljava/util/List;

    :cond_191
    add-int/lit8 v3, v3, 0x1

    goto :goto_154

    :cond_194
    add-int/lit8 v4, v4, 0x1

    goto :goto_151

    :cond_197
    return v7
.end method
