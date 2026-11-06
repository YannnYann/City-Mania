###### Class info.flowersoft.theotown.stages.cityinfo.EnergyCityInfo (info.flowersoft.theotown.stages.cityinfo.EnergyCityInfo)
.class public Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo;
.super Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;
.source "EnergyCityInfo.java"


# direct methods
.method public static synthetic $r8$lambda$4Ecdh9UFNb3Re4OX5l1kYpxtjM8(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 68
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 69
    new-instance p0, Linfo/flowersoft/theotown/tools/ToolResolver;

    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    new-instance v0, Linfo/flowersoft/theotown/tools/marker/PowerMarker;

    invoke-direct {v0, p1}, Linfo/flowersoft/theotown/tools/marker/PowerMarker;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/tools/marker/BuildToolMarker;)Linfo/flowersoft/theotown/tools/MarkTool;

    move-result-object p0

    invoke-virtual {p1, p0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7efVDCXRoN_1wiULlI2EqkU1frg(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 4

    .line 53
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 54
    new-instance v0, Linfo/flowersoft/theotown/stages/CityInfoStage;

    invoke-direct {v0, p1, p2}, Linfo/flowersoft/theotown/stages/CityInfoStage;-><init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 55
    new-instance p1, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    const-class p2, Linfo/flowersoft/theotown/components/statistics/EnergyProducedItem;

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/stages/CityInfoStage;->selectCityInfo(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    .line 56
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 17

    move-object/from16 v7, p4

    .line 41
    invoke-super/range {p0 .. p4}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    const/4 v0, 0x5

    .line 43
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Linfo/flowersoft/theotown/components/DefaultPower;

    .line 45
    invoke-virtual {p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v9

    .line 47
    new-instance v1, Lio/blueflower/stapel2d/util/StaticGetter;

    const/16 v0, 0xb07

    .line 48
    invoke-interface {v9, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lio/blueflower/stapel2d/util/StaticGetter;

    const-string v10, ""

    invoke-direct {v2, v10}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_STATISTICS:I

    new-instance v5, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo$$ExternalSyntheticLambda0;

    invoke-direct {v5, v7, p1, p3}, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo$$ExternalSyntheticLambda0;-><init>(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    move-object v0, p0

    .line 47
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addClickableItem(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/drawing/Color;ILjava/lang/Runnable;)V

    const/16 v1, 0xa95

    .line 59
    invoke-interface {v9, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addCategory(Ljava/lang/String;)V

    const/16 v1, 0x86d

    .line 60
    invoke-interface {v9, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/DefaultPower;->countNetworks()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addItem(Ljava/lang/String;)V

    .line 61
    new-instance v1, Lio/blueflower/stapel2d/util/StaticGetter;

    const/16 v11, 0x117

    .line 62
    invoke-interface {v9, v11}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/DefaultPower;->availablePower()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 64
    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/DefaultPower;->availablePowerBuildings()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 62
    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    new-instance v5, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo$$ExternalSyntheticLambda1;

    invoke-direct {v5, v7, p1}, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo$$ExternalSyntheticLambda1;-><init>(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 61
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addClickableItem(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/drawing/Color;ILjava/lang/Runnable;)V

    const/16 v1, 0x3e1

    .line 71
    invoke-interface {v9, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/DefaultPower;->consumedPower()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/DefaultPower;->consumedPowerBuildings()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 71
    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addItem(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/DefaultPower;->usageRatio()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    const/16 v4, 0x920

    .line 75
    invoke-interface {v9, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 76
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->colorForRatioInPercentBad(F)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v2

    .line 75
    invoke-virtual {p0, v5, v10, v2}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addItem(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    .line 78
    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/DefaultPower;->countNetworks()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_141

    const/16 v2, 0xb8d

    .line 79
    invoke-interface {v9, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addCategory(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 80
    :goto_d7
    invoke-virtual {v8}, Linfo/flowersoft/theotown/components/DefaultPower;->countNetworks()I

    move-result v5

    if-ge v2, v5, :cond_141

    if-lez v2, :cond_e2

    .line 82
    invoke-virtual {p0, v10}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addItem(Ljava/lang/String;)V

    .line 85
    :cond_e2
    invoke-interface {v9, v11}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-virtual {v8, v2}, Linfo/flowersoft/theotown/components/DefaultPower;->availablePower(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v8, v2}, Linfo/flowersoft/theotown/components/DefaultPower;->availablePowerBuildings(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 85
    invoke-static {v5, v6}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addItem(Ljava/lang/String;)V

    .line 87
    invoke-interface {v9, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    .line 88
    invoke-virtual {v8, v2}, Linfo/flowersoft/theotown/components/DefaultPower;->consumedPower(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v8, v2}, Linfo/flowersoft/theotown/components/DefaultPower;->consumedPowerBuildings(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    .line 87
    invoke-static {v5, v6}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addItem(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v8, v2}, Linfo/flowersoft/theotown/components/DefaultPower;->usageRatio(I)F

    move-result v5

    mul-float/2addr v5, v3

    .line 91
    invoke-interface {v9, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 92
    invoke-virtual {p0, v5}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->colorForRatioInPercentBad(F)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v5

    .line 91
    invoke-virtual {p0, v6, v10, v5}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addItem(Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d7

    :cond_141
    return-void
.end method

.method public getHelpText(Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
    .registers 3

    .line 36
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v0, 0xa16

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIcon()I
    .registers 2

    .line 26
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ENERGY:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 99
    const-string v0, "EnergyCityInfo"

    return-object v0
.end method

.method public getTitleId(Linfo/flowersoft/theotown/city/City;)I
    .registers 2

    .line 0
    const/16 p1, 0x168

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 104
    const-string v0, "Energy"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.EnergyCityInfo$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.cityinfo.EnergyCityInfo$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

.field public final synthetic f$1:Linfo/flowersoft/theotown/city/City;

.field public final synthetic f$2:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo$$ExternalSyntheticLambda0;->f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/city/City;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo$$ExternalSyntheticLambda0;->f$2:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo$$ExternalSyntheticLambda0;->f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/city/City;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo$$ExternalSyntheticLambda0;->f$2:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo;->$r8$lambda$7efVDCXRoN_1wiULlI2EqkU1frg(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.EnergyCityInfo$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.cityinfo.EnergyCityInfo$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

.field public final synthetic f$1:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo$$ExternalSyntheticLambda1;->f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo$$ExternalSyntheticLambda1;->f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/city/City;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo;->$r8$lambda$4Ecdh9UFNb3Re4OX5l1kYpxtjM8(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method
