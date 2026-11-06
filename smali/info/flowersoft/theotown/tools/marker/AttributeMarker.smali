###### Class info.flowersoft.theotown.tools.marker.AttributeMarker (info.flowersoft.theotown.tools.marker.AttributeMarker)
.class public Linfo/flowersoft/theotown/tools/marker/AttributeMarker;
.super Linfo/flowersoft/theotown/tools/marker/BuildingMarker;
.source "AttributeMarker.java"


# instance fields
.field public final attribute:I

.field public final icon:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;I)V
    .registers 4

    .line 20
    invoke-static {}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Linfo/flowersoft/theotown/components/management/attribute/Attribute;

    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/tools/marker/AttributeMarker;-><init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/components/management/attribute/Attribute;)V
    .registers 6

    .line 24
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 25
    invoke-static {p2}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getTag(Linfo/flowersoft/theotown/components/management/attribute/Attribute;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Linfo/flowersoft/theotown/components/management/attribute/AttributeFactory;->getIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/tools/marker/AttributeMarker;->attribute:I

    .line 26
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->getIcon()I

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/tools/marker/AttributeMarker;->icon:I

    .line 28
    invoke-virtual {p2}, Linfo/flowersoft/theotown/components/management/attribute/Attribute;->isHappiness()Z

    move-result p2

    if-eqz p2, :cond_46

    .line 29
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->legend:Ljava/util/List;

    new-instance v0, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    .line 30
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    const/16 v2, 0xb74

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 29
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->legend:Ljava/util/List;

    new-instance v0, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    .line 32
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v1, 0xb65

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 31
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 34
    :cond_46
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->legend:Ljava/util/List;

    new-instance v0, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    .line 35
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    const/16 v2, 0x5c4

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->GREEN:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 34
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object p2, p0, Linfo/flowersoft/theotown/tools/marker/BuildingMarker;->legend:Ljava/util/List;

    new-instance v0, Linfo/flowersoft/theotown/tools/marker/LegendEntry;

    .line 37
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v1, 0x7ca

    invoke-interface {p1, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/tools/marker/LegendEntry;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 36
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public buildingIsInvolved(Linfo/flowersoft/theotown/city/objects/Building;)Z
    .registers 4

    .line 43
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/BuildingType;->isRCIOrDeco()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 44
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildingType()Linfo/flowersoft/theotown/draft/BuildingType;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/draft/BuildingType;->DECORATION:Linfo/flowersoft/theotown/draft/BuildingType;

    if-eq v0, v1, :cond_2f

    .line 45
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 46
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getAttributeContainer()Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 47
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/tools/marker/AttributeMarker;->getInvolvedIntensity(Linfo/flowersoft/theotown/city/objects/Building;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_2f

    const/4 p1, 0x1

    return p1

    :cond_2f
    const/4 p1, 0x0

    return p1
.end method

.method public getIcon()I
    .registers 2

    .line 59
    iget v0, p0, Linfo/flowersoft/theotown/tools/marker/AttributeMarker;->icon:I

    return v0
.end method

.method public getInvolvedIntensity(Linfo/flowersoft/theotown/city/objects/Building;)F
    .registers 3

    .line 53
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/objects/Building;->getAttributeContainer()Linfo/flowersoft/theotown/city/objects/AttributeContainer;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;

    if-eqz p1, :cond_11

    .line 54
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/management/attribute/ConcreteAttributeContainer;->getValues()[F

    move-result-object p1

    iget v0, p0, Linfo/flowersoft/theotown/tools/marker/AttributeMarker;->attribute:I

    aget p1, p1, v0

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 64
    const-string v0, "AttributeMarker"

    return-object v0
.end method

.method public markTree(II)Z
    .registers 3

    .line 0
    const/4 p1, 0x0

    return p1
.end method
