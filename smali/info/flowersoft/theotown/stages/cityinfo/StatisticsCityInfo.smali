###### Class info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo (info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo)
.class public Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;
.super Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;
.source "StatisticsCityInfo.java"


# instance fields
.field public actualMaxValue:I

.field public final collections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Linfo/flowersoft/theotown/components/statistics/StatisticsItem;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public currentSet:I

.field public dayRange:F

.field public engine:Lio/blueflower/stapel2d/drawing/Engine;

.field public indices:Lio/blueflower/stapel2d/util/IntList;

.field public maxDay:I

.field public final maxDayRange:I

.field public maxValue:I

.field public minDay:I

.field public final minDayRange:I

.field public minValue:I

.field public showItem:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Linfo/flowersoft/theotown/components/statistics/StatisticsItem;",
            ">;"
        }
    .end annotation
.end field

.field public statistics:Linfo/flowersoft/theotown/components/DefaultStatistics;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;-><init>()V

    const/16 v0, 0xa

    .line 65
    iput v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->minDayRange:I

    const v0, 0xafc80

    .line 66
    iput v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->maxDayRange:I

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->currentSet:I

    const/high16 v0, 0x42b40000    # 90.0f

    .line 72
    iput v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->dayRange:F

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->collections:Ljava/util/List;

    .line 80
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->indices:Lio/blueflower/stapel2d/util/IntList;

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->showItem:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Linfo/flowersoft/theotown/components/statistics/StatisticsItem;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;-><init>()V

    const/16 v0, 0xa

    .line 65
    iput v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->minDayRange:I

    const v0, 0xafc80

    .line 66
    iput v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->maxDayRange:I

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->currentSet:I

    const/high16 v0, 0x42b40000    # 90.0f

    .line 72
    iput v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->dayRange:F

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->collections:Ljava/util/List;

    .line 80
    new-instance v0, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {v0}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->indices:Lio/blueflower/stapel2d/util/IntList;

    .line 89
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->showItem:Ljava/lang/Class;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)Lio/blueflower/stapel2d/drawing/Engine;
    .registers 1

    .line 63
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;IIII)V
    .registers 5

    .line 63
    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->drawGraphs(IIII)V

    return-void
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)F
    .registers 1

    .line 63
    iget p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->dayRange:F

    return p0
.end method

.method public static synthetic access$232(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;F)F
    .registers 3

    .line 63
    iget v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->dayRange:F

    mul-float/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->dayRange:F

    return v0
.end method

.method public static synthetic access$240(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;F)F
    .registers 3

    .line 63
    iget v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->dayRange:F

    div-float/2addr v0, p1

    iput v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->dayRange:F

    return v0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)V
    .registers 1

    .line 63
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->recalculate()V

    return-void
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)Lio/blueflower/stapel2d/util/IntList;
    .registers 1

    .line 63
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->indices:Lio/blueflower/stapel2d/util/IntList;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)Linfo/flowersoft/theotown/components/DefaultStatistics;
    .registers 1

    .line 63
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->statistics:Linfo/flowersoft/theotown/components/DefaultStatistics;

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)I
    .registers 1

    .line 63
    iget p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->currentSet:I

    return p0
.end method

.method public static synthetic access$602(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;I)I
    .registers 2

    .line 63
    iput p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->currentSet:I

    return p1
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)Ljava/util/List;
    .registers 1

    .line 63
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->collections:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 16

    .line 183
    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->collectItemTypes(Linfo/flowersoft/theotown/city/City;)V

    .line 185
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->showItem:Ljava/lang/Class;

    if-eqz v2, :cond_d

    .line 186
    invoke-virtual {p0, v2}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->selectItem(Ljava/lang/Class;)V

    const/4 v2, 0x0

    .line 187
    iput-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->showItem:Ljava/lang/Class;

    :cond_d
    const/16 v2, 0x11

    .line 190
    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultStatistics;

    iput-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->statistics:Linfo/flowersoft/theotown/components/DefaultStatistics;

    .line 191
    invoke-virtual {p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 192
    invoke-virtual {p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v9

    .line 193
    new-instance v10, Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-direct {v10, p1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    .line 195
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->recalculate()V

    .line 197
    new-instance v8, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$1;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    add-int/lit8 v5, v0, -0x20

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v6, p2

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$1;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 233
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$2;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUS:I

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    add-int/lit8 v4, v1, -0x20

    const/16 v6, 0x1e

    const/16 v7, 0x1e

    const-string v3, ""

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$2;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/16 v1, 0x51

    .line 254
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 256
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$3;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_MINUS:I

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    add-int/lit8 v4, v1, -0x20

    const-string v3, ""

    const/16 v5, 0x21

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$3;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/16 v1, 0x45

    .line 277
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 279
    new-instance v8, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$4;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    add-int/lit8 v3, v0, -0x1e

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    const/16 v5, 0x1e

    const/4 v2, 0x0

    move-object v1, p0

    move-object v6, p2

    move-object v0, v8

    move-object v7, v9

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$4;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/util/DraftLocalizer;)V

    move-object v8, v0

    .line 317
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$5;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEXT:I

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    add-int/lit8 v4, v1, -0x1e

    const/16 v6, 0x1e

    const/16 v7, 0x1e

    const-string v3, ""

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$5;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 325
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$6;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_PREVIOUS:I

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    add-int/lit8 v4, v1, -0x3d

    const-string v3, ""

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$6;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

.method public collectItemTypes(Linfo/flowersoft/theotown/city/City;)V
    .registers 4

    .line 93
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->collections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    const-class v1, Linfo/flowersoft/theotown/components/statistics/InhabitantsAllItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    const-class v1, Linfo/flowersoft/theotown/components/statistics/InhabitantsLvl1Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    const-class v1, Linfo/flowersoft/theotown/components/statistics/InhabitantsLvl2Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    const-class v1, Linfo/flowersoft/theotown/components/statistics/InhabitantsLvl3Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->collections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    const-class v1, Linfo/flowersoft/theotown/components/statistics/ResidentialLvl1Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    const-class v1, Linfo/flowersoft/theotown/components/statistics/ResidentialLvl2Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    const-class v1, Linfo/flowersoft/theotown/components/statistics/ResidentialLvl3Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    const-class v1, Linfo/flowersoft/theotown/components/statistics/CommercialLvl1Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    const-class v1, Linfo/flowersoft/theotown/components/statistics/CommercialLvl2Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    const-class v1, Linfo/flowersoft/theotown/components/statistics/CommercialLvl3Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    const-class v1, Linfo/flowersoft/theotown/components/statistics/IndustrialLvl1Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    const-class v1, Linfo/flowersoft/theotown/components/statistics/IndustrialLvl2Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const-class v1, Linfo/flowersoft/theotown/components/statistics/IndustrialLvl3Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->collections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result p1

    if-nez p1, :cond_82

    .line 116
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    const-class v0, Linfo/flowersoft/theotown/components/statistics/MoneyItem;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->collections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    const-class v0, Linfo/flowersoft/theotown/components/statistics/IncomeItem;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->collections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    :cond_82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    const-class v0, Linfo/flowersoft/theotown/components/statistics/EducationLowItem;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    const-class v0, Linfo/flowersoft/theotown/components/statistics/EducationHighItem;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    const-class v0, Linfo/flowersoft/theotown/components/statistics/HealthItem;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->collections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    const-class v0, Linfo/flowersoft/theotown/components/statistics/BuildingsItem;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    const-class v0, Linfo/flowersoft/theotown/components/statistics/RoadsItem;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    const-class v0, Linfo/flowersoft/theotown/components/statistics/CarsItem;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    const-class v0, Linfo/flowersoft/theotown/components/statistics/RailsItem;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->collections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    const-class v0, Linfo/flowersoft/theotown/components/statistics/EnergyProducedItem;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    const-class v0, Linfo/flowersoft/theotown/components/statistics/EnergyNeedItem;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->collections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    const-class v0, Linfo/flowersoft/theotown/components/statistics/WaterProducedItem;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    const-class v0, Linfo/flowersoft/theotown/components/statistics/WaterNeedItem;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->collections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    const-class v0, Linfo/flowersoft/theotown/components/statistics/TSPassengersItem;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->collections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final drawGraphs(IIII)V
    .registers 31

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 376
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v7, v5, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 379
    iget v5, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->maxDay:I

    const/16 v15, 0xff

    const/16 v6, 0x78

    const/4 v8, 0x1

    const/16 v16, 0x1e

    if-lez v5, :cond_136

    mul-int/lit8 v9, v3, 0x1e

    .line 380
    iget v10, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->minDay:I

    sub-int v10, v5, v10

    div-int/2addr v9, v10

    const/high16 v17, 0x40000000    # 2.0f

    const-string v10, ""

    const/16 v11, 0x14

    if-le v9, v11, :cond_a7

    .line 382
    div-int/lit8 v5, v5, 0x1e

    mul-int/lit8 v5, v5, 0x1e

    :goto_2c
    iget v9, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->minDay:I

    if-le v5, v9, :cond_136

    if-ltz v5, :cond_136

    int-to-float v11, v1

    int-to-float v12, v3

    sub-int v13, v5, v9

    int-to-float v13, v13

    mul-float/2addr v12, v13

    .line 383
    iget v13, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->maxDay:I

    sub-int/2addr v13, v9

    int-to-float v9, v13

    div-float/2addr v12, v9

    add-float v20, v11, v12

    .line 384
    iget-object v9, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v11, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v9, v11}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 385
    iget-object v9, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    div-int/lit8 v11, v5, 0x1e

    rem-int/lit8 v11, v11, 0xc

    if-nez v11, :cond_50

    move v12, v6

    goto :goto_52

    :cond_50
    move/from16 v12, v16

    :goto_52
    invoke-virtual {v9, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 386
    iget-object v9, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v19, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v12, v2

    int-to-float v13, v4

    sget v24, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v18, v9

    move/from16 v21, v12

    move/from16 v23, v13

    invoke-virtual/range {v18 .. v24}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 387
    iget-object v9, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v12, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v9, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 388
    iget-object v9, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v9, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move v9, v6

    .line 389
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    add-float v20, v20, v17

    add-int v12, v2, v4

    int-to-float v12, v12

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    move/from16 v18, v8

    move-object v8, v11

    const/4 v11, 0x0

    move-object/from16 v19, v10

    move v10, v12

    const/4 v12, 0x0

    move-object/from16 v25, v19

    move/from16 v9, v20

    invoke-virtual/range {v6 .. v14}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    add-int/lit8 v5, v5, -0x1e

    move-object/from16 v10, v25

    const/16 v6, 0x78

    const/4 v8, 0x1

    goto :goto_2c

    :cond_a7
    move-object/from16 v25, v10

    const/4 v5, 0x1

    :goto_aa
    mul-int/lit16 v6, v3, 0x168

    mul-int/2addr v6, v5

    .line 394
    iget v8, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->maxDay:I

    iget v9, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->minDay:I

    sub-int v9, v8, v9

    div-int/2addr v6, v9

    if-gt v6, v11, :cond_b9

    mul-int/lit8 v5, v5, 0x5

    goto :goto_aa

    .line 395
    :cond_b9
    div-int/2addr v8, v5

    div-int/lit16 v8, v8, 0x168

    mul-int/2addr v8, v5

    mul-int/lit16 v8, v8, 0x168

    move v6, v8

    :goto_c0
    iget v8, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->minDay:I

    if-le v6, v8, :cond_136

    if-ltz v6, :cond_136

    int-to-float v9, v1

    int-to-float v10, v3

    sub-int v11, v6, v8

    int-to-float v11, v11

    mul-float/2addr v10, v11

    .line 396
    iget v11, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->maxDay:I

    sub-int/2addr v11, v8

    int-to-float v8, v11

    div-float/2addr v10, v8

    add-float v20, v9, v10

    .line 397
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v9, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 398
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    div-int/lit16 v9, v6, 0x168

    div-int/2addr v9, v5

    rem-int/lit8 v10, v9, 0x5

    if-nez v10, :cond_e6

    const/16 v10, 0x78

    goto :goto_e8

    :cond_e6
    move/from16 v10, v16

    :goto_e8
    invoke-virtual {v8, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 399
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v19, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v10, v2

    int-to-float v11, v4

    sget v24, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v18, v8

    move/from16 v21, v10

    move/from16 v23, v11

    invoke-virtual/range {v18 .. v24}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 400
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v10, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 401
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v8, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move v8, v6

    .line 402
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, v25

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/2addr v9, v5

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    add-float v20, v20, v17

    add-int v10, v2, v4

    int-to-float v10, v10

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v18, v8

    move-object v8, v9

    move/from16 v9, v20

    invoke-virtual/range {v6 .. v14}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    mul-int/lit16 v6, v5, 0x168

    sub-int v6, v18, v6

    goto :goto_c0

    :cond_136
    const/4 v8, 0x1

    .line 408
    :goto_137
    iget v5, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->maxValue:I

    iget v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->minValue:I

    sub-int/2addr v5, v6

    mul-int/lit8 v6, v8, 0xa

    if-le v5, v6, :cond_142

    move v8, v6

    goto :goto_137

    .line 409
    :cond_142
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 410
    iget v5, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->minValue:I

    rem-int v6, v5, v8

    add-int/2addr v6, v8

    rem-int/2addr v6, v8

    sub-int/2addr v5, v6

    .line 411
    :goto_150
    iget v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->maxValue:I

    const/16 v17, 0x0

    if-ge v5, v6, :cond_195

    .line 412
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    div-int v9, v5, v8

    rem-int/lit8 v9, v9, 0x5

    if-nez v9, :cond_161

    const/16 v9, 0x78

    goto :goto_163

    :cond_161
    move/from16 v9, v16

    :goto_163
    invoke-virtual {v6, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    int-to-float v6, v4

    .line 413
    iget v9, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->minValue:I

    sub-int v10, v5, v9

    int-to-float v10, v10

    mul-float/2addr v10, v6

    iget v11, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->maxValue:I

    sub-int/2addr v11, v9

    int-to-float v9, v11

    div-float/2addr v10, v9

    sub-float v9, v6, v10

    cmpl-float v6, v9, v6

    if-gez v6, :cond_193

    cmpg-float v6, v9, v17

    if-gtz v6, :cond_17d

    goto :goto_193

    .line 420
    :cond_17d
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v18, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v10, v1

    int-to-float v11, v2

    add-float v20, v11, v9

    int-to-float v9, v3

    const/high16 v22, 0x3f800000    # 1.0f

    sget v23, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    move-object/from16 v17, v6

    move/from16 v21, v9

    move/from16 v19, v10

    invoke-virtual/range {v17 .. v23}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    :cond_193
    :goto_193
    add-int/2addr v5, v8

    goto :goto_150

    .line 426
    :cond_195
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v5, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 429
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 430
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v9, 0x78

    invoke-virtual {v5, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 431
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v19, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v6, v1

    add-int v8, v2, v4

    int-to-float v8, v8

    int-to-float v4, v4

    iget v9, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->minValue:I

    rsub-int/lit8 v10, v9, 0x0

    int-to-float v10, v10

    mul-float/2addr v10, v4

    iget v11, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->maxValue:I

    sub-int/2addr v11, v9

    int-to-float v9, v11

    div-float/2addr v10, v9

    sub-float v21, v8, v10

    int-to-float v3, v3

    const/high16 v23, 0x3f800000    # 1.0f

    sget v24, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    move/from16 v22, v3

    move-object/from16 v18, v5

    move/from16 v20, v6

    invoke-virtual/range {v18 .. v24}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 434
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual {v3, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 437
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v3, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 438
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    add-int/lit8 v1, v1, 0x2

    int-to-float v9, v1

    iget v1, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->minValue:I

    int-to-float v3, v1

    mul-float/2addr v3, v4

    iget v5, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->maxValue:I

    sub-int/2addr v5, v1

    int-to-float v1, v5

    div-float/2addr v3, v1

    add-float v10, v8, v3

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    move v1, v8

    const-string v8, "0"

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v14}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 439
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    iget v3, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->actualMaxValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%,d"

    invoke-static {v5, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    int-to-float v10, v2

    const/4 v14, 0x0

    invoke-virtual/range {v6 .. v14}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    const/4 v2, 0x0

    .line 441
    :goto_20b
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->indices:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v3

    if-ge v2, v3, :cond_290

    .line 442
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->indices:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v3

    .line 443
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->statistics:Linfo/flowersoft/theotown/components/DefaultStatistics;

    invoke-virtual {v5, v3}, Linfo/flowersoft/theotown/components/DefaultStatistics;->getItem(I)Linfo/flowersoft/theotown/components/statistics/StatisticsItem;

    move-result-object v5

    .line 444
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->statistics:Linfo/flowersoft/theotown/components/DefaultStatistics;

    invoke-virtual {v6, v3}, Linfo/flowersoft/theotown/components/DefaultStatistics;->countEntries(I)I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_28c

    .line 447
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-interface {v5}, Linfo/flowersoft/theotown/components/statistics/StatisticsItem;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v5

    invoke-virtual {v8, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    add-int/lit8 v6, v6, -0x1

    move v5, v6

    move/from16 v11, v17

    move v12, v11

    :goto_237
    if-ltz v5, :cond_28c

    .line 452
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->statistics:Linfo/flowersoft/theotown/components/DefaultStatistics;

    invoke-virtual {v8, v5, v3}, Linfo/flowersoft/theotown/components/DefaultStatistics;->getDay(II)I

    move-result v15

    .line 453
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->statistics:Linfo/flowersoft/theotown/components/DefaultStatistics;

    invoke-virtual {v8, v5, v3}, Linfo/flowersoft/theotown/components/DefaultStatistics;->getValue(II)I

    move-result v8

    .line 454
    iget v9, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->minDay:I

    sub-int v10, v15, v9

    int-to-float v10, v10

    mul-float v10, v10, v22

    iget v13, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->maxDay:I

    sub-int/2addr v13, v9

    int-to-float v9, v13

    div-float/2addr v10, v9

    add-float v9, v20, v10

    .line 455
    iget v10, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->minValue:I

    sub-int/2addr v8, v10

    int-to-float v8, v8

    mul-float/2addr v8, v4

    iget v13, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->maxValue:I

    sub-int/2addr v13, v10

    int-to-float v10, v13

    div-float/2addr v8, v10

    sub-float v8, v1, v8

    if-ge v5, v6, :cond_282

    cmpg-float v10, v9, v20

    if-gez v10, :cond_273

    sub-float v10, v20, v9

    sub-float v9, v11, v9

    div-float/2addr v10, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    mul-float/2addr v9, v8

    mul-float/2addr v10, v12

    add-float v8, v9, v10

    move/from16 v9, v20

    :cond_273
    move v10, v8

    .line 463
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v8

    const/high16 v13, 0x3f800000    # 1.0f

    iget-object v14, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    invoke-virtual/range {v8 .. v14}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move v12, v10

    :goto_280
    move v11, v9

    goto :goto_284

    :cond_282
    move v12, v8

    goto :goto_280

    .line 469
    :goto_284
    iget v8, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->minDay:I

    if-ge v15, v8, :cond_289

    goto :goto_28c

    :cond_289
    add-int/lit8 v5, v5, -0x1

    goto :goto_237

    :cond_28c
    :goto_28c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_20b

    .line 474
    :cond_290
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getHelpText(Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
    .registers 3

    .line 166
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v0, 0x7f0

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIcon()I
    .registers 2

    .line 156
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_STATISTICS:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 479
    const-string v0, "StatisticsCityInfo"

    return-object v0
.end method

.method public getTitleId(Linfo/flowersoft/theotown/city/City;)I
    .registers 2

    .line 0
    const/16 p1, 0x65a

    return p1
.end method

.method public final recalculate()V
    .registers 7

    .line 336
    iget v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->dayRange:F

    const/high16 v1, 0x41200000    # 10.0f

    const v2, 0x492fc800    # 720000.0f

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->dayRange:F

    const/4 v0, 0x0

    .line 338
    iput v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->minValue:I

    .line 339
    iput v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->maxValue:I

    const/high16 v1, -0x80000000

    .line 340
    iput v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->maxDay:I

    .line 341
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->collections:Ljava/util/List;

    iget v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->currentSet:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 342
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->indices:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    move v2, v0

    .line 344
    :goto_26
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3c

    .line 345
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->statistics:Linfo/flowersoft/theotown/components/DefaultStatistics;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->indices:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/components/DefaultStatistics;->getItemIndices(Ljava/lang/Class;Lio/blueflower/stapel2d/util/IntList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 348
    :cond_3c
    :goto_3c
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->indices:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_91

    .line 349
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->indices:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    .line 350
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->statistics:Linfo/flowersoft/theotown/components/DefaultStatistics;

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/components/DefaultStatistics;->countEntries(I)I

    move-result v2

    if-lez v2, :cond_8e

    .line 353
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->statistics:Linfo/flowersoft/theotown/components/DefaultStatistics;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2, v1}, Linfo/flowersoft/theotown/components/DefaultStatistics;->getDay(II)I

    move-result v3

    iget v4, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->maxDay:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->maxDay:I

    .line 354
    iget v4, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->dayRange:F

    float-to-int v4, v4

    sub-int/2addr v3, v4

    iput v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->minDay:I

    :goto_68
    if-ltz v2, :cond_8e

    .line 357
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->statistics:Linfo/flowersoft/theotown/components/DefaultStatistics;

    invoke-virtual {v3, v2, v1}, Linfo/flowersoft/theotown/components/DefaultStatistics;->getDay(II)I

    move-result v3

    .line 358
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->statistics:Linfo/flowersoft/theotown/components/DefaultStatistics;

    invoke-virtual {v4, v2, v1}, Linfo/flowersoft/theotown/components/DefaultStatistics;->getValue(II)I

    move-result v4

    .line 359
    iget v5, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->minValue:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->minValue:I

    .line 360
    iget v5, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->maxValue:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->maxValue:I

    .line 361
    iget v4, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->minDay:I

    if-ge v3, v4, :cond_8b

    goto :goto_8e

    :cond_8b
    add-int/lit8 v2, v2, -0x1

    goto :goto_68

    :cond_8e
    :goto_8e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 367
    :cond_91
    iget v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->maxValue:I

    iput v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->actualMaxValue:I

    .line 368
    iget v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->minValue:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 369
    iget v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->maxValue:I

    add-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    add-int/2addr v1, v0

    iput v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->maxValue:I

    .line 370
    iget v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->minValue:I

    sub-int/2addr v1, v0

    iput v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->minValue:I

    return-void
.end method

.method public final selectItem(Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Linfo/flowersoft/theotown/components/statistics/StatisticsItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 170
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->collections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2c

    .line 171
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->collections:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move v3, v0

    .line 172
    :goto_13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_29

    .line 173
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 174
    iput v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->currentSet:I

    return-void

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 484
    const-string v0, "Statistics"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo.AnonymousClass1 (info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo$1)
.class public Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$1;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "StatisticsCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 197
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$1;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 204
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$1;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$000(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v1

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v3, p1

    int-to-float v4, p2

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, v0

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, v0

    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v7, v0, Lio/blueflower/stapel2d/gui/Skin;->npListBox:I

    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 206
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$1;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p2, 0x1

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    add-int/lit8 v3, v3, -0x2

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    add-int/lit8 v4, v4, -0x2

    invoke-static {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$100(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;IIII)V

    .line 208
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onUpdate()V
    .registers 6

    .line 225
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 226
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lio/blueflower/stapel2d/touch/TouchPoint;->getXSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2b

    .line 227
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$1;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/SensitiveGadget;->tp:Lio/blueflower/stapel2d/touch/TouchPoint;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchPoint;->getXSpeed()F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3ff0147ae0000000L    # 1.0049999952316284

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$232(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;F)F

    .line 228
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$1;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$300(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)V

    :cond_2b
    return-void
.end method

.method public updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;
    .registers 8

    .line 213
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->updateTouchInput(Lio/blueflower/stapel2d/touch/TouchUpdate;)Linfo/flowersoft/theotown/ui/CursorType;

    move-result-object v0

    .line 214
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->getScrollChange()F

    move-result v1

    .line 215
    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchUpdate;->clearScrollChange()V

    const/4 p1, 0x0

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_25

    .line 217
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$1;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    const-wide v2, 0x3ff3333340000000L    # 1.2000000476837158

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {p1, v1}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$232(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;F)F

    .line 218
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$1;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$300(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)V

    :cond_25
    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo.AnonymousClass2 (info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo$2)
.class public Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$2;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "StatisticsCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 233
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$2;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 5

    .line 245
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Icon;->setAlpha(I)V

    .line 246
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public isVisible()Z
    .registers 3

    .line 251
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$2;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$200(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 236
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$2;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 237
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 238
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$2;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$240(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;F)F

    .line 239
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$2;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$300(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)V

    :cond_15
    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo.AnonymousClass3 (info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo$3)
.class public Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$3;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "StatisticsCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 256
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$3;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 5

    .line 268
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Icon;->setAlpha(I)V

    .line 269
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public isVisible()Z
    .registers 3

    .line 274
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$3;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$200(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)F

    move-result v0

    const v1, 0x492fc800    # 720000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 259
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$3;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 260
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 261
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$3;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$232(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;F)F

    .line 262
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$3;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$300(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)V

    :cond_15
    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo.AnonymousClass4 (info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo$4)
.class public Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$4;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "StatisticsCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

.field public final synthetic val$draftLocalizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

.field public final synthetic val$translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/util/DraftLocalizer;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 279
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$4;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$4;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iput-object p8, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$4;->val$draftLocalizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 23

    move-object/from16 v0, p0

    .line 282
    invoke-virtual/range {p0 .. p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    .line 286
    iget v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int v1, p1, v1

    .line 287
    iget v2, v0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v2, p2, v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    .line 289
    :goto_11
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$4;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v7}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$400(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v7

    invoke-virtual {v7}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v7

    if-ge v4, v7, :cond_dc

    .line 290
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$4;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v7}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$400(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)Lio/blueflower/stapel2d/util/IntList;

    move-result-object v7

    invoke-virtual {v7, v4}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v7

    .line 291
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$4;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v8}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$500(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)Linfo/flowersoft/theotown/components/DefaultStatistics;

    move-result-object v8

    invoke-virtual {v8, v7}, Linfo/flowersoft/theotown/components/DefaultStatistics;->getItem(I)Linfo/flowersoft/theotown/components/statistics/StatisticsItem;

    move-result-object v7

    .line 292
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$4;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v9, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$4;->val$draftLocalizer:Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-interface {v7, v8, v9}, Linfo/flowersoft/theotown/components/statistics/StatisticsItem;->getName(Lio/blueflower/stapel2d/gamestack/Translator;Linfo/flowersoft/theotown/util/DraftLocalizer;)Ljava/lang/String;

    move-result-object v12

    .line 293
    sget-object v8, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v11, v8, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 294
    invoke-virtual {v11, v12}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/lit8 v8, v8, 0x7

    add-int/2addr v8, v5

    .line 296
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v9

    add-int/lit8 v9, v9, -0x3c

    if-lt v8, v9, :cond_53

    add-int/lit8 v6, v6, 0xf

    move v5, v3

    .line 301
    :cond_53
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$4;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v8}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$000(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v8

    sget-object v9, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v8, v9}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 302
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$4;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v8}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$000(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v13

    sget-object v14, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int v8, v1, v5

    int-to-float v15, v8

    add-int v9, v2, v6

    add-int/lit8 v10, v9, 0x3

    int-to-float v10, v10

    const/high16 v18, 0x40e00000    # 7.0f

    sget v19, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/high16 v17, 0x40e00000    # 7.0f

    move/from16 v16, v10

    invoke-virtual/range {v13 .. v19}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 303
    iget-object v10, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$4;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v10}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$000(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v10

    invoke-interface {v7}, Linfo/flowersoft/theotown/components/statistics/StatisticsItem;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v7

    invoke-virtual {v10, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 304
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$4;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v7}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$000(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v13

    sget-object v14, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v8, v8, 0x1

    int-to-float v15, v8

    add-int/lit8 v7, v9, 0x4

    int-to-float v7, v7

    const/high16 v18, 0x40a00000    # 5.0f

    sget v19, Linfo/flowersoft/theotown/resources/Resources;->FRAME_RECT:I

    const/high16 v17, 0x40a00000    # 5.0f

    move/from16 v16, v7

    invoke-virtual/range {v13 .. v19}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    add-int/lit8 v5, v5, 0x9

    .line 307
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$4;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v7}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$000(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v7

    iget-object v8, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v8, v8, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v7, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 308
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$4;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v7}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$000(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v10

    add-int v7, v1, v5

    int-to-float v13, v7

    int-to-float v14, v9

    const/16 v17, 0x0

    const/high16 v18, 0x3f000000    # 0.5f

    const/4 v15, 0x0

    const/high16 v16, 0x41700000    # 15.0f

    invoke-virtual/range {v10 .. v18}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 309
    invoke-virtual {v11, v12}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x5

    .line 312
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$4;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v7}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$000(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v7

    sget-object v8, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v7, v8}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_11

    :cond_dc
    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo.AnonymousClass5 (info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo$5)
.class public Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$5;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "StatisticsCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 317
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$5;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 4

    .line 320
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 321
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$5;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$600(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$5;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$700(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$602(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;I)I

    .line 322
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$5;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$300(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo.AnonymousClass6 (info.flowersoft.theotown.stages.cityinfo.StatisticsCityInfo$6)
.class public Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$6;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "StatisticsCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 325
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$6;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 4

    .line 328
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 329
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$6;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$600(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$6;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$700(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$6;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$700(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$602(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;I)I

    .line 330
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo$6;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;->access$300(Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;)V

    return-void
.end method
