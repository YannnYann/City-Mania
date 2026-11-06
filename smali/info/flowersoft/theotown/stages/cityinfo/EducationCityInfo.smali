###### Class info.flowersoft.theotown.stages.cityinfo.EducationCityInfo (info.flowersoft.theotown.stages.cityinfo.EducationCityInfo)
.class public Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo;
.super Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;
.source "EducationCityInfo.java"


# direct methods
.method public static synthetic $r8$lambda$pPzXYsUYkq47W1swoGPMO_TxDCE(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 4

    .line 58
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 59
    new-instance v0, Linfo/flowersoft/theotown/stages/CityInfoStage;

    invoke-direct {v0, p1, p2}, Linfo/flowersoft/theotown/stages/CityInfoStage;-><init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 60
    new-instance p1, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    const-class p2, Linfo/flowersoft/theotown/components/statistics/EducationHighItem;

    invoke-direct {p1, p2}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/stages/CityInfoStage;->selectCityInfo(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    .line 61
    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$udhsUgW7Sm-4-Royye6oJFMhyvw(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/InfluenceType;)V
    .registers 3

    .line 89
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    .line 90
    new-instance p0, Linfo/flowersoft/theotown/tools/ToolResolver;

    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/tools/ToolResolver;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/tools/ToolResolver;->resolve(Linfo/flowersoft/theotown/city/components/InfluenceType;)Linfo/flowersoft/theotown/tools/MarkTool;

    move-result-object p0

    invoke-virtual {p1, p0}, Linfo/flowersoft/theotown/city/City;->applyComponent(Linfo/flowersoft/theotown/city/components/CityComponent;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 20

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    .line 46
    invoke-super/range {p0 .. p4}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    const/4 v0, 0x3

    .line 48
    invoke-virtual {v6, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/management/DefaultManagement;

    .line 49
    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/management/DefaultManagement;->getCoverageCalculator()Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;

    move-result-object v8

    .line 50
    invoke-virtual/range {p3 .. p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v9

    .line 52
    new-instance v1, Lio/blueflower/stapel2d/util/StaticGetter;

    const/16 v0, 0xb07

    .line 53
    invoke-interface {v9, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lio/blueflower/stapel2d/util/StaticGetter;

    const-string v0, ""

    invoke-direct {v2, v0}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_STATISTICS:I

    new-instance v5, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo$$ExternalSyntheticLambda0;

    move-object/from16 v0, p3

    invoke-direct {v5, v7, v6, v0}, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo$$ExternalSyntheticLambda0;-><init>(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    move-object v0, p0

    .line 52
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addClickableItem(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/drawing/Color;ILjava/lang/Runnable;)V

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    new-instance v2, Lio/blueflower/stapel2d/util/Tuple;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x36d

    .line 66
    invoke-interface {v9, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v4, v10}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v2, Lio/blueflower/stapel2d/util/Tuple;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0xba1

    .line 68
    invoke-interface {v9, v11}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v10, v12}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    filled-new-array {v3, v4}, [I

    move-result-object v10

    .line 72
    invoke-interface {v9, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-interface {v9, v11}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v11

    .line 75
    sget-object v1, Linfo/flowersoft/theotown/city/components/InfluenceType;->EDUCATION_LOW:Linfo/flowersoft/theotown/city/components/InfluenceType;

    sget-object v2, Linfo/flowersoft/theotown/city/components/InfluenceType;->EDUCATION_HIGH:Linfo/flowersoft/theotown/city/components/InfluenceType;

    filled-new-array {v1, v2}, [Linfo/flowersoft/theotown/city/components/InfluenceType;

    move-result-object v12

    move v13, v3

    :goto_7d
    const/4 v1, 0x2

    if-ge v13, v1, :cond_100

    .line 81
    aget v14, v10, v13

    .line 82
    aget-object v1, v11, v13

    .line 83
    aget-object v2, v12, v13

    .line 85
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addCategory(Ljava/lang/String;)V

    .line 86
    new-instance v1, Lio/blueflower/stapel2d/util/StaticGetter;

    const/16 v3, 0x4d2

    invoke-interface {v9, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {v8, v14}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->countProvidingBuildings(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 86
    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    new-instance v5, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo$$ExternalSyntheticLambda1;

    invoke-direct {v5, v7, v6, v2}, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo$$ExternalSyntheticLambda1;-><init>(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/InfluenceType;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addClickableItem(Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/drawing/Color;ILjava/lang/Runnable;)V

    const/16 v1, 0x8f6

    .line 92
    invoke-interface {v9, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v8, v14}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getNeededAmount(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 92
    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addItem(Ljava/lang/String;)V

    const/16 v1, 0x83c

    .line 94
    invoke-interface {v9, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {v8, v14}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getReachedAmount(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 94
    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addItem(Ljava/lang/String;)V

    const/16 v1, 0x4ae

    .line 96
    invoke-interface {v9, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {v8, v14}, Linfo/flowersoft/theotown/components/coverage/CoverageCalculator;->getProvidedAmount(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 96
    invoke-static {v1, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/ListBasedCityInfo;->addItem(Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7d

    :cond_100
    return-void
.end method

.method public getHelpText(Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
    .registers 3

    .line 41
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v0, 0x386

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIcon()I
    .registers 2

    .line 31
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_EDUCATION:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 104
    const-string v0, "EducationCityInfo"

    return-object v0
.end method

.method public getTitleId(Linfo/flowersoft/theotown/city/City;)I
    .registers 2

    .line 0
    const/16 p1, 0x9b3

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 109
    const-string v0, "Education"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.EducationCityInfo$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.cityinfo.EducationCityInfo$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo$$ExternalSyntheticLambda0;
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

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo$$ExternalSyntheticLambda0;->f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/city/City;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo$$ExternalSyntheticLambda0;->f$2:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo$$ExternalSyntheticLambda0;->f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/city/City;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo$$ExternalSyntheticLambda0;->f$2:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo;->$r8$lambda$pPzXYsUYkq47W1swoGPMO_TxDCE(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.EducationCityInfo$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.cityinfo.EducationCityInfo$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

.field public final synthetic f$1:Linfo/flowersoft/theotown/city/City;

.field public final synthetic f$2:Linfo/flowersoft/theotown/city/components/InfluenceType;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/InfluenceType;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo$$ExternalSyntheticLambda1;->f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/city/City;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo$$ExternalSyntheticLambda1;->f$2:Linfo/flowersoft/theotown/city/components/InfluenceType;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo$$ExternalSyntheticLambda1;->f$0:Lio/blueflower/stapel2d/gamestack/GameStack;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/city/City;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo$$ExternalSyntheticLambda1;->f$2:Linfo/flowersoft/theotown/city/components/InfluenceType;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo;->$r8$lambda$udhsUgW7Sm-4-Royye6oJFMhyvw(Lio/blueflower/stapel2d/gamestack/GameStack;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/components/InfluenceType;)V

    return-void
.end method
