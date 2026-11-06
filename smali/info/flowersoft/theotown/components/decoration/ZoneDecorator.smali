###### Class info.flowersoft.theotown.components.decoration.ZoneDecorator (info.flowersoft.theotown.components.decoration.ZoneDecorator)
.class public Linfo/flowersoft/theotown/components/decoration/ZoneDecorator;
.super Linfo/flowersoft/theotown/components/decoration/Decorator;
.source "ZoneDecorator.java"


# instance fields
.field public final decorations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/BuildingDraft;",
            ">;"
        }
    .end annotation
.end field

.field public final zones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/ZoneDraft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/draft/ZoneDraft;)V
    .registers 3

    .line 25
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/components/decoration/ZoneDecorator;-><init>(Linfo/flowersoft/theotown/city/City;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/city/City;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/draft/ZoneDraft;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/components/decoration/Decorator;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 30
    iput-object p2, p0, Linfo/flowersoft/theotown/components/decoration/ZoneDecorator;->zones:Ljava/util/List;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/components/decoration/ZoneDecorator;->decorations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addDecorationDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)V
    .registers 3

    .line 35
    iget-object v0, p0, Linfo/flowersoft/theotown/components/decoration/ZoneDecorator;->decorations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addDecorationDrafts(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_2a

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 42
    sget-object v2, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/components/decoration/ZoneDecorator;->addDecorationDraft(Linfo/flowersoft/theotown/draft/BuildingDraft;)V

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2a
    return-void
.end method

.method public canDecorate(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 2

    .line 0
    const/4 p1, 0x1

    return p1
.end method

.method public final decorate(II)Z
    .registers 10

    .line 70
    iget-object v0, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/City;->isValid(II)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 71
    iget-object v0, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getZone(II)Linfo/flowersoft/theotown/draft/ZoneDraft;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 73
    iget-object v1, p0, Linfo/flowersoft/theotown/components/decoration/ZoneDecorator;->zones:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 74
    iget-object v0, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->tiles:Linfo/flowersoft/theotown/city/Tiles;

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/city/Tiles;->getBuilding(II)Linfo/flowersoft/theotown/city/objects/Building;

    move-result-object v0

    if-nez v0, :cond_37

    .line 77
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/decoration/ZoneDecorator;->getRandomDecorationDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v2

    .line 78
    iget-object v0, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    invoke-virtual {v0, v2, p1, p2}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->isBuildable(Linfo/flowersoft/theotown/draft/BuildingDraft;II)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 79
    iget-object v1, p0, Linfo/flowersoft/theotown/components/decoration/Decorator;->modifier:Linfo/flowersoft/theotown/city/modifier/CityModifier;

    const/4 v5, -0x1

    const/4 v6, 0x0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/city/modifier/CityModifier;->build(Linfo/flowersoft/theotown/draft/BuildingDraft;IIILvm2/LuaValue;)Ljava/util/List;

    const/4 p1, 0x1

    return p1

    :cond_37
    const/4 p1, 0x0

    return p1
.end method

.method public decorate(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 8

    .line 56
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v4

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-gt v0, v4, :cond_34

    .line 57
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p0, v0, v4}, Linfo/flowersoft/theotown/components/decoration/ZoneDecorator;->decorate(II)Z

    move-result v4

    if-eqz v4, :cond_20

    add-int/lit8 v3, v3, 0x1

    .line 58
    :cond_20
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v4

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v0, v4}, Linfo/flowersoft/theotown/components/decoration/ZoneDecorator;->decorate(II)Z

    move-result v4

    if-eqz v4, :cond_31

    add-int/lit8 v3, v3, 0x1

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 61
    :cond_34
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v0

    :goto_38
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getY()I

    move-result v4

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v0, v4, :cond_64

    .line 62
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p0, v4, v0}, Linfo/flowersoft/theotown/components/decoration/ZoneDecorator;->decorate(II)Z

    move-result v4

    if-eqz v4, :cond_50

    add-int/lit8 v3, v3, 0x1

    .line 63
    :cond_50
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getX()I

    move-result v4

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v4, v0}, Linfo/flowersoft/theotown/components/decoration/ZoneDecorator;->decorate(II)Z

    move-result v4

    if-eqz v4, :cond_61

    add-int/lit8 v3, v3, 0x1

    :cond_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_64
    if-lez v3, :cond_67

    return v1

    :cond_67
    return v2
.end method

.method public final getRandomDecorationDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;
    .registers 5

    .line 90
    new-instance v0, Lio/blueflower/stapel2d/util/ProbabilitySelector;

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->RND:Ljava/util/Random;

    invoke-direct {v0, v1}, Lio/blueflower/stapel2d/util/ProbabilitySelector;-><init>(Ljava/util/Random;)V

    const/4 v1, 0x0

    .line 92
    :goto_8
    iget-object v2, p0, Linfo/flowersoft/theotown/components/decoration/ZoneDecorator;->decorations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 93
    iget-object v2, p0, Linfo/flowersoft/theotown/components/decoration/ZoneDecorator;->decorations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/draft/Draft;->isUnlocked()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 94
    iget-object v2, p0, Linfo/flowersoft/theotown/components/decoration/ZoneDecorator;->decorations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v3, p0, Linfo/flowersoft/theotown/components/decoration/ZoneDecorator;->decorations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/BuildingDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    array-length v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->insert(Ljava/lang/Object;F)V

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 98
    :cond_38
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/ProbabilitySelector;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/BuildingDraft;

    return-object v0
.end method
