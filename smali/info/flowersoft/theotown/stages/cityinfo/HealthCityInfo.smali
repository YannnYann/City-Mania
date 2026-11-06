###### Class info.flowersoft.theotown.stages.cityinfo.HealthCityInfo (info.flowersoft.theotown.stages.cityinfo.HealthCityInfo)
.class public Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo;
.super Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;
.source "HealthCityInfo.java"


# direct methods
.method public static synthetic $r8$lambda$-lDLMCfNrSgoU1t7gWWviRVMNjk(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;)V
    .registers 3

    .line 63
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 64
    new-instance p0, Linfo/flowersoft/theotown/tools/ToolResolver;

    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    sget-object v0, Linfo/flowersoft/theotown/city/components/InfluenceType;->HEALTH:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/city/components/InfluenceType;)Linfo/flowersoft/theotown/tools/MarkTool;

    move-result-object p0

    invoke-virtual {p1, p0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QlbRgeqYa0C4-aGT__Vv5VjDWSw(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 4

    .line 51
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 52
    new-instance v0, Linfo/flowersoft/theotown/stages/CityInfoStage;

    invoke-direct {v0, p1, p2}, Linfo/flowersoft/theotown/stages/CityInfoStage;-><init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 53
    new-instance p1, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    const-class p2, Linfo/flowersoft/theotown/components/statistics/HealthItem;

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/stages/CityInfoStage;->selectCityInfo(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    .line 54
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 14

    .line 42
    invoke-super/range {p0 .. p4}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    .line 43
    invoke-virtual {p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v6

    .line 45
    new-instance v1, Lio/blueflower/stapel2d/util/StaticGetter;

    const/16 v0, 0xb07

    .line 46
    invoke-interface {v6, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lio/blueflower/stapel2d/util/StaticGetter;

    const-string v0, ""

    invoke-direct {v2, v0}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_STATISTICS:I

    new-instance v5, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo$$ExternalSyntheticLambda0;

    invoke-direct {v5, p4, p1, p3}, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo$$ExternalSyntheticLambda0;-><init>(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    move-object v0, p0

    .line 45
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addClickableItem(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/drawing/Color;ILjava/lang/Runnable;)V

    const/4 v0, 0x3

    .line 57
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 58
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getCoverageCalculator()Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    move-result-object v7

    .line 60
    new-instance v1, Lio/blueflower/stapel2d/util/StaticGetter;

    const/16 v0, 0xc79

    invoke-interface {v6, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x2

    .line 61
    invoke-virtual {v7, v8}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->countProvidingBuildings(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 60
    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    new-instance v5, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo$$ExternalSyntheticLambda1;

    invoke-direct {v5, p4, p1}, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo$$ExternalSyntheticLambda1;-><init>(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addClickableItem(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/drawing/Color;ILjava/lang/Runnable;)V

    const/16 v1, 0x1b4

    .line 66
    invoke-interface {v6, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {v7, v8}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getNeededAmount(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 66
    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addItem(Ljava/lang/String;)V

    const/16 v1, 0x921

    .line 68
    invoke-interface {v6, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {v7, v8}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getReachedAmount(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 68
    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addItem(Ljava/lang/String;)V

    const/16 v1, 0xb61

    .line 70
    invoke-interface {v6, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v7, v8}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getProvidedAmount(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 70
    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addItem(Ljava/lang/String;)V

    return-void
.end method

.method public getHelpText(Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
    .registers 3

    .line 37
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v0, 0x96c

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIcon()I
    .registers 2

    .line 27
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_MEDIC:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 76
    const-string v0, "HealthCityInfo"

    return-object v0
.end method

.method public getTitleId(Linfo/flowersoft/theotown/city/City;)I
    .registers 2

    .line 0
    const/16 p1, 0xc2d

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 81
    const-string v0, "Health"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.HealthCityInfo$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.cityinfo.HealthCityInfo$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo$$ExternalSyntheticLambda0;
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

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo$$ExternalSyntheticLambda0;->f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/city/City;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo$$ExternalSyntheticLambda0;->f$2:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo$$ExternalSyntheticLambda0;->f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/city/City;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo$$ExternalSyntheticLambda0;->f$2:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo;->$r8$lambda$QlbRgeqYa0C4-aGT__Vv5VjDWSw(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.HealthCityInfo$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.cityinfo.HealthCityInfo$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo$$ExternalSyntheticLambda1;
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

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo$$ExternalSyntheticLambda1;->f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/city/City;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo$$ExternalSyntheticLambda1;->f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/city/City;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo;->$r8$lambda$-lDLMCfNrSgoU1t7gWWviRVMNjk(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;)V

    return-void
.end method
