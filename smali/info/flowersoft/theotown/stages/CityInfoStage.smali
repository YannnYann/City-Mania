###### Class info.flowersoft.theotown.stages.CityInfoStage (info.flowersoft.theotown.stages.CityInfoStage)
.class public Linfo/flowersoft/theotown/stages/CityInfoStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "CityInfoStage.java"


# instance fields
.field public final city:Linfo/flowersoft/theotown/city/City;

.field public cmdClose:Lio/blueflower/stapel2d/gui/Button;

.field public currentCityInfo:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

.field public final infoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 4

    .line 60
    invoke-direct {p0, p2}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 53
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/CityInfoStage;->infoList:Ljava/util/List;

    .line 61
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityInfoStage;->city:Linfo/flowersoft/theotown/city/City;

    .line 63
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/GeneralCityInfo;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/StatisticsCityInfo;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 67
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/RankCityInfo;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_2e
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/RCICityInfo;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/RatingCityInfo;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/EnergyCityInfo;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/WaterCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/WaterCityInfo;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/EducationCityInfo;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/HealthCityInfo;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;

    invoke-direct {v0}, Linfo/flowersoft/theotown/stages/cityinfo/NeighborCityInfo;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x16

    .line 81
    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultTSComponent;

    .line 82
    invoke-virtual {p1}, Linfo/flowersoft/theotown/components/DefaultTSComponent;->getSystems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_90

    .line 83
    new-instance p1, Linfo/flowersoft/theotown/stages/cityinfo/TSCityInfo;

    invoke-direct {p1}, Linfo/flowersoft/theotown/stages/cityinfo/TSCityInfo;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_90
    new-instance p1, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;

    invoke-direct {p1}, Linfo/flowersoft/theotown/stages/cityinfo/AirportCityInfo;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CityInfoStage;->filterDisabledInfos()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/CityInfoStage;)Lio/blueflower/stapel2d/gui/Button;
    .registers 1

    .line 49
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityInfoStage;->cmdClose:Lio/blueflower/stapel2d/gui/Button;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/CityInfoStage;)Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;
    .registers 1

    .line 49
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityInfoStage;->currentCityInfo:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    return-object p0
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/stages/CityInfoStage;Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;
    .registers 2

    .line 49
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityInfoStage;->currentCityInfo:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    return-object p1
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/CityInfoStage;)Ljava/util/List;
    .registers 1

    .line 49
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityInfoStage;->infoList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/CityInfoStage;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 49
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/CityInfoStage;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method


# virtual methods
.method public drop()V
    .registers 1

    .line 326
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drop()V

    return-void
.end method

.method public enter()V
    .registers 26

    move-object/from16 v1, p0

    .line 130
    invoke-super {v1}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 131
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CityInfoStage;->currentCityInfo:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    if-nez v0, :cond_11

    .line 132
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void

    .line 136
    :cond_11
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    const/16 v2, 0x258

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 137
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    const/16 v3, 0x1f4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 139
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CityInfoStage;->infoList:Ljava/util/List;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/CityInfoStage;->currentCityInfo:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 141
    new-instance v0, Linfo/flowersoft/theotown/stages/CityInfoStage$1;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v2

    neg-int v2, v2

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v4

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v5

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/CityInfoStage$1;-><init>(Linfo/flowersoft/theotown/stages/CityInfoStage;IIIILio/blueflower/stapel2d/gui/Gadget;I)V

    .line 166
    new-instance v6, Linfo/flowersoft/theotown/stages/CityInfoStage$2;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 167
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v2

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    sub-int/2addr v3, v8

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 168
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v3

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v4

    sub-int/2addr v4, v9

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object v4, v6

    move-object v6, v0

    move-object v0, v4

    move v4, v8

    move v5, v9

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/CityInfoStage$2;-><init>(Linfo/flowersoft/theotown/stages/CityInfoStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v6, v0

    add-int/lit8 v10, v8, -0x1e

    .line 173
    div-int/lit8 v11, v10, 0x1c

    .line 174
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CityInfoStage;->infoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v11

    add-int/lit8 v0, v0, -0x1

    div-int v12, v0, v11

    .line 176
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move-object v15, v0

    const/4 v7, 0x0

    .line 179
    :goto_9e
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CityInfoStage;->infoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v16, 0x1e

    if-ge v7, v0, :cond_138

    .line 180
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CityInfoStage;->infoList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    .line 183
    rem-int v2, v7, v11

    mul-int/lit8 v2, v2, 0x1c

    move v3, v2

    add-int/lit8 v2, v3, 0x2

    add-int/lit8 v4, v12, -0x1

    .line 184
    div-int v5, v7, v11

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x1e

    .line 185
    iget-object v5, v1, Linfo/flowersoft/theotown/stages/CityInfoStage;->currentCityInfo:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    invoke-virtual {v0, v5}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dd

    move-object v5, v0

    .line 186
    new-instance v0, Linfo/flowersoft/theotown/stages/CityInfoStage$3;

    move v3, v4

    const/16 v4, 0x20

    move-object v15, v5

    const/16 v5, 0x2a

    move-object/from16 v17, v15

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/CityInfoStage$3;-><init>(Linfo/flowersoft/theotown/stages/CityInfoStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v15, v0

    move-object/from16 v5, v17

    move/from16 v17, v7

    move v7, v8

    move-object v8, v6

    move-object v6, v15

    goto :goto_10f

    :cond_dd
    move-object/from16 v17, v0

    .line 194
    new-instance v0, Linfo/flowersoft/theotown/stages/CityInfoStage$4;

    add-int/lit8 v2, v3, 0x3

    add-int/lit8 v3, v4, 0x2

    const/16 v4, 0x1e

    const/16 v5, 0x28

    move-object/from16 v1, v17

    move/from16 v17, v7

    move-object v7, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/CityInfoStage$4;-><init>(Linfo/flowersoft/theotown/stages/CityInfoStage;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    move-object v5, v7

    move v7, v8

    move-object v8, v6

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    move-object v6, v0

    .line 209
    :goto_10f
    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v0, Linfo/flowersoft/theotown/stages/CityInfoStage$5;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1e

    div-int/lit8 v2, v1, 0x2

    const/16 v4, 0x1e

    move-object v1, v5

    const/16 v5, 0x1e

    const/4 v3, 0x0

    move-object v14, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/CityInfoStage$5;-><init>(Linfo/flowersoft/theotown/stages/CityInfoStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 217
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/CityInfoStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v14, v2}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;->isAvailable(Linfo/flowersoft/theotown/city/City;)Z

    move-result v3

    invoke-virtual {v14, v2, v0, v3}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;->createIcon(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Z)Lio/blueflower/stapel2d/gui/Icon;

    add-int/lit8 v0, v17, 0x1

    move-object v6, v8

    move v8, v7

    move v7, v0

    goto/16 :goto_9e

    :cond_138
    move v7, v8

    move-object v8, v6

    .line 220
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_140
    if-ltz v0, :cond_14e

    .line 221
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/gui/Button;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->push()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_140

    :cond_14e
    if-eqz v15, :cond_153

    .line 224
    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/Gadget;->push()V

    :cond_153
    mul-int v5, v16, v12

    sub-int/2addr v9, v5

    .line 227
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 228
    new-instance v3, Lio/blueflower/stapel2d/gui/Panel;

    const/4 v4, 0x0

    move v6, v7

    move v7, v0

    invoke-direct/range {v3 .. v8}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v6, v8

    const/4 v0, 0x0

    move-object v8, v3

    .line 229
    invoke-virtual {v8, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    .line 231
    new-instance v0, Linfo/flowersoft/theotown/stages/CityInfoStage$6;

    const/16 v4, 0x1e

    const/16 v5, 0x1e

    const/4 v3, 0x0

    move v2, v10

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/CityInfoStage$6;-><init>(Linfo/flowersoft/theotown/stages/CityInfoStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/stages/CityInfoStage;->cmdClose:Lio/blueflower/stapel2d/gui/Button;

    .line 251
    const-string v2, "cmdClose"

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setId(Ljava/lang/String;)V

    .line 253
    new-instance v18, Lio/blueflower/stapel2d/gui/Label;

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/CityInfoStage;->currentCityInfo:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/CityInfoStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;->getTitleId(Linfo/flowersoft/theotown/city/City;)I

    move-result v2

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v22

    const/16 v23, 0x1c

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v24, v8

    invoke-direct/range {v18 .. v24}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object/from16 v0, v18

    .line 254
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v2

    iget-object v2, v2, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    const/high16 v9, 0x3f000000    # 0.5f

    .line 255
    invoke-virtual {v0, v9, v9}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 257
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/CityInfoStage;->currentCityInfo:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/CityInfoStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;->getHelpText(Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d4

    .line 259
    new-instance v0, Linfo/flowersoft/theotown/stages/CityInfoStage$7;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_INFO:I

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    add-int/lit8 v4, v3, -0x1e

    const/16 v6, 0x1e

    const/16 v7, 0x1c

    const-string v3, ""

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/CityInfoStage$7;-><init>(Linfo/flowersoft/theotown/stages/CityInfoStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 285
    :cond_1d4
    new-instance v0, Linfo/flowersoft/theotown/stages/CityInfoStage$8;

    .line 286
    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    add-int/lit8 v4, v1, -0x4

    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    add-int/lit8 v5, v1, -0x1e

    const/4 v2, 0x2

    const/16 v3, 0x1c

    move-object/from16 v1, p0

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/CityInfoStage$8;-><init>(Linfo/flowersoft/theotown/stages/CityInfoStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v7, v1

    .line 294
    iget-object v1, v7, Linfo/flowersoft/theotown/stages/CityInfoStage;->currentCityInfo:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    iget-object v2, v7, Linfo/flowersoft/theotown/stages/CityInfoStage;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;->isAvailable(Linfo/flowersoft/theotown/city/City;)Z

    move-result v1

    if-eqz v1, :cond_204

    .line 295
    iget-object v1, v7, Linfo/flowersoft/theotown/stages/CityInfoStage;->currentCityInfo:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    iget-object v2, v7, Linfo/flowersoft/theotown/stages/CityInfoStage;->city:Linfo/flowersoft/theotown/city/City;

    iget-object v3, v7, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V

    goto :goto_21f

    :cond_204
    move-object v6, v0

    .line 297
    new-instance v0, Lio/blueflower/stapel2d/gui/TextFrame;

    iget-object v1, v7, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x94e

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 298
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/TextFrame;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 299
    invoke-virtual {v0, v9, v9}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 302
    :goto_21f
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->getInstance()Linfo/flowersoft/theotown/tutorial/Tutorial;

    move-result-object v0

    iget-object v1, v7, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0, v1, v1}, Linfo/flowersoft/theotown/tutorial/Tutorial;->setGUI(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

.method public final filterDisabledInfos()V
    .registers 7

    .line 93
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getGlobals()Lvm2/Globals;

    move-result-object v0

    const-string v1, "City"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lvm2/LuaValue;->istable()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 95
    const-string v1, "disabledCityInfos"

    invoke-virtual {v0, v1}, Lvm2/LuaValue;->get(Ljava/lang/String;)Lvm2/LuaValue;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lvm2/LuaValue;->istable()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 97
    invoke-virtual {v0}, Lvm2/LuaValue;->checktable()Lvm2/LuaTable;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    .line 98
    :goto_26
    invoke-virtual {v0}, Lvm2/LuaTable;->length()I

    move-result v3

    if-gt v2, v3, :cond_63

    .line 99
    invoke-virtual {v0, v2}, Lvm2/LuaTable;->get(I)Lvm2/LuaValue;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lvm2/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_60

    const/4 v4, 0x0

    .line 101
    :goto_3d
    iget-object v5, p0, Linfo/flowersoft/theotown/stages/CityInfoStage;->infoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_60

    .line 102
    iget-object v5, p0, Linfo/flowersoft/theotown/stages/CityInfoStage;->infoList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 103
    iget-object v5, p0, Linfo/flowersoft/theotown/stages/CityInfoStage;->infoList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    :cond_5e
    add-int/2addr v4, v1

    goto :goto_3d

    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_63
    return-void
.end method

.method public leave()V
    .registers 1

    .line 321
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->leave()V

    return-void
.end method

.method public onBack()V
    .registers 2

    .line 307
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 308
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->onBack()V

    return-void

    .line 310
    :cond_a
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityInfoStage;->cmdClose:Lio/blueflower/stapel2d/gui/Button;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Button;->click()V

    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 316
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawBackground()V

    return-void
.end method

.method public prepare()V
    .registers 1

    .line 125
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->prepare()V

    return-void
.end method

.method public selectCityInfo(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V
    .registers 4

    const/4 v0, 0x0

    .line 114
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityInfoStage;->infoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 115
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityInfoStage;->infoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 116
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityInfoStage;->infoList:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 117
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityInfoStage;->currentCityInfo:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    return-void

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 331
    const-string v0, "CityInfoStage"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.CityInfoStage.AnonymousClass1 (info.flowersoft.theotown.stages.CityInfoStage$1)
.class public Linfo/flowersoft/theotown/stages/CityInfoStage$1;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "CityInfoStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CityInfoStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

.field public final synthetic val$currentIndex:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityInfoStage;IIIILio/blueflower/stapel2d/gui/Gadget;I)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 141
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$1;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    iput p7, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$1;->val$currentIndex:I

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 144
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onClick()V
    .registers 2

    .line 149
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$1;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/CityInfoStage;->access$000(Linfo/flowersoft/theotown/stages/CityInfoStage;)Lio/blueflower/stapel2d/gui/Button;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Button;->click()V

    return-void
.end method

.method public updateKeyInput(Lio/blueflower/stapel2d/key/KeyMapper;)V
    .registers 5

    .line 154
    invoke-super {p0, p1}, Lio/blueflower/stapel2d/gui/Gadget;->updateKeyInput(Lio/blueflower/stapel2d/key/KeyMapper;)V

    const/16 v0, 0x3d

    .line 155
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/key/KeyMapper;->keyRepeatedHit(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    const/16 v0, 0x3b

    .line 156
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown(I)Z

    move-result v0

    if-nez v0, :cond_3b

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown(I)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_3b

    .line 159
    :cond_1c
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$1;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/CityInfoStage;->access$200(Linfo/flowersoft/theotown/stages/CityInfoStage;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$1;->val$currentIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$1;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/CityInfoStage;->access$200(Linfo/flowersoft/theotown/stages/CityInfoStage;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/stages/CityInfoStage;->access$102(Linfo/flowersoft/theotown/stages/CityInfoStage;Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    goto :goto_64

    .line 157
    :cond_3b
    :goto_3b
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$1;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/CityInfoStage;->access$200(Linfo/flowersoft/theotown/stages/CityInfoStage;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$1;->val$currentIndex:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$1;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/CityInfoStage;->access$200(Linfo/flowersoft/theotown/stages/CityInfoStage;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$1;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/CityInfoStage;->access$200(Linfo/flowersoft/theotown/stages/CityInfoStage;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/stages/CityInfoStage;->access$102(Linfo/flowersoft/theotown/stages/CityInfoStage;Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    .line 161
    :goto_64
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$1;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->refreshCurrentStage()V

    :cond_6d
    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityInfoStage.AnonymousClass2 (info.flowersoft.theotown.stages.CityInfoStage$2)
.class public Linfo/flowersoft/theotown/stages/CityInfoStage$2;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "CityInfoStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CityInfoStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityInfoStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 168
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$2;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityInfoStage.AnonymousClass3 (info.flowersoft.theotown.stages.CityInfoStage$3)
.class public Linfo/flowersoft/theotown/stages/CityInfoStage$3;
.super Lio/blueflower/stapel2d/gui/Button;
.source "CityInfoStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CityInfoStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityInfoStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 186
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$3;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isPressed()Z
    .registers 2

    .line 0
    const/4 v0, 0x1

    return v0
.end method

###### Class info.flowersoft.theotown.stages.CityInfoStage.AnonymousClass4 (info.flowersoft.theotown.stages.CityInfoStage$4)
.class public Linfo/flowersoft/theotown/stages/CityInfoStage$4;
.super Lio/blueflower/stapel2d/gui/Button;
.source "CityInfoStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CityInfoStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

.field public final synthetic val$info:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityInfoStage;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 194
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$4;->val$info:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 204
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Button;->draw(II)V

    return-void
.end method

.method public onClick()V
    .registers 3

    .line 197
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 198
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$4;->val$info:Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/CityInfoStage;->access$102(Linfo/flowersoft/theotown/stages/CityInfoStage;Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    .line 199
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$4;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->refreshCurrentStage()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityInfoStage.AnonymousClass5 (info.flowersoft.theotown.stages.CityInfoStage$5)
.class public Linfo/flowersoft/theotown/stages/CityInfoStage$5;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "CityInfoStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CityInfoStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityInfoStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 211
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$5;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 214
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityInfoStage.AnonymousClass6 (info.flowersoft.theotown.stages.CityInfoStage$6)
.class public Linfo/flowersoft/theotown/stages/CityInfoStage$6;
.super Lio/blueflower/stapel2d/gui/Button;
.source "CityInfoStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CityInfoStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityInfoStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 231
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$6;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 239
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 241
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 242
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 243
    :cond_14
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1f

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 245
    :cond_1f
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v3

    int-to-float v3, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, p1

    int-to-float v4, p2

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    iget-object p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v9, p1, Lio/blueflower/stapel2d/gui/Skin;->fCloseButton:I

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 248
    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public onClick()V
    .registers 2

    .line 234
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 235
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$6;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityInfoStage.AnonymousClass7 (info.flowersoft.theotown.stages.CityInfoStage$7)
.class public Linfo/flowersoft/theotown/stages/CityInfoStage$7;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "CityInfoStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CityInfoStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityInfoStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 259
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$7;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 279
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public onClick()V
    .registers 8

    .line 262
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 263
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_MAYOR:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$7;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    iget-object v3, v2, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 264
    invoke-static {v2}, Linfo/flowersoft/theotown/stages/CityInfoStage;->access$100(Linfo/flowersoft/theotown/stages/CityInfoStage;)Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    move-result-object v2

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$7;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    invoke-static {v4}, Linfo/flowersoft/theotown/stages/CityInfoStage;->access$300(Linfo/flowersoft/theotown/stages/CityInfoStage;)Linfo/flowersoft/theotown/city/City;

    move-result-object v4

    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;->getTitleId(Linfo/flowersoft/theotown/city/City;)I

    move-result v2

    invoke-interface {v3, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$7;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    .line 265
    invoke-static {v3}, Linfo/flowersoft/theotown/stages/CityInfoStage;->access$100(Linfo/flowersoft/theotown/stages/CityInfoStage;)Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$7;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    invoke-static {v4}, Linfo/flowersoft/theotown/stages/CityInfoStage;->access$300(Linfo/flowersoft/theotown/stages/CityInfoStage;)Linfo/flowersoft/theotown/city/City;

    move-result-object v4

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;->getHelpText(Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$7;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    iget-object v6, v4, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/16 v4, 0x12c

    const/16 v5, 0x12c

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 270
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$7;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x76b

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    const/4 v2, 0x1

    .line 271
    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    const/16 v3, 0x42

    .line 272
    invoke-virtual {v1, v3}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 274
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.CityInfoStage.AnonymousClass8 (info.flowersoft.theotown.stages.CityInfoStage$8)
.class public Linfo/flowersoft/theotown/stages/CityInfoStage$8;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "CityInfoStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/CityInfoStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityInfoStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 287
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/CityInfoStage$8;->this$0:Linfo/flowersoft/theotown/stages/CityInfoStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 290
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method
