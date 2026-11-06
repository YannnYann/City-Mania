###### Class info.flowersoft.theotown.stages.cityinfo.LoanCityInfo (info.flowersoft.theotown.stages.cityinfo.LoanCityInfo)
.class public Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;
.super Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;
.source "LoanCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$Availability;,
        Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$LoanItem;
    }
.end annotation


# instance fields
.field public budget:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public date:Linfo/flowersoft/theotown/components/DefaultDate;

.field public lblOverall:Lio/blueflower/stapel2d/gui/Label;

.field public listBox:Lio/blueflower/stapel2d/gui/ListBox;

.field public translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;)Linfo/flowersoft/theotown/components/DefaultBudget;
    .registers 1

    .line 36
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;)V
    .registers 1

    .line 36
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->update()V

    return-void
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;)V
    .registers 1

    .line 36
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->playSound()V

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;)Linfo/flowersoft/theotown/components/DefaultDate;
    .registers 1

    .line 36
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;)Lio/blueflower/stapel2d/gamestack/Translator;
    .registers 1

    .line 36
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;)Lio/blueflower/stapel2d/gui/ListBox;
    .registers 1

    .line 36
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    return-object p0
.end method

.method private playSound()V
    .registers 4

    .line 165
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object v0

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->SOUND_MONEY:I

    sget-object v2, Linfo/flowersoft/theotown/resources/SoundType;->UI:Linfo/flowersoft/theotown/resources/SoundType;

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/resources/SoundPlayer;->play(ILinfo/flowersoft/theotown/resources/SoundType;)Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    return-void
.end method


# virtual methods
.method public final addLoan([ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$Availability;Lio/blueflower/stapel2d/gui/Gadget;)Lio/blueflower/stapel2d/gui/Gadget;
    .registers 23

    move-object/from16 v0, p1

    .line 124
    new-instance v5, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$5;

    move-object v9, v5

    invoke-virtual/range {p6 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    const/16 v6, 0x23

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p0

    move-object/from16 v7, p6

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$5;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 v13, 0x1

    .line 130
    invoke-virtual {v9, v13}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    .line 132
    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    const/4 v14, 0x0

    move v15, v1

    move v11, v14

    .line 133
    :goto_20
    array-length v1, v0

    if-ge v11, v1, :cond_45

    .line 135
    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$6;

    aget v3, v0, v11

    aget-object v4, p3, v11

    const/16 v7, 0x78

    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v10, p4

    move-object/from16 v12, p5

    invoke-direct/range {v1 .. v12}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$6;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;[Ljava/lang/Runnable;ILinfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$Availability;)V

    .line 148
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v2

    sub-int/2addr v15, v2

    .line 149
    invoke-virtual {v1, v15, v14}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_20

    .line 152
    :cond_45
    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/Gadget;->getSkin()Lio/blueflower/stapel2d/gui/Skin;

    move-result-object v6

    .line 153
    new-instance v0, Linfo/flowersoft/theotown/ui/FilledRect;

    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x2

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/FilledRect;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iget-object v1, v6, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/FilledRect;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 154
    new-instance v0, Linfo/flowersoft/theotown/ui/FilledRect;

    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/FilledRect;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iget-object v1, v6, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/FilledRect;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    if-eqz p2, :cond_88

    .line 157
    new-instance v0, Lio/blueflower/stapel2d/gui/TextFrame;

    const/4 v3, 0x0

    .line 158
    invoke-virtual {v9}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    const/4 v2, 0x0

    move-object/from16 v1, p2

    move-object v6, v9

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/TextFrame;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/TextFrame;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    :cond_88
    return-object v9
.end method

.method public build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    .line 61
    invoke-virtual {v7, v8}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultBudget;

    iput-object v0, v1, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    const/4 v9, 0x1

    .line 62
    invoke-virtual {v7, v9}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultDate;

    iput-object v0, v1, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->date:Linfo/flowersoft/theotown/components/DefaultDate;

    .line 63
    invoke-virtual/range {p3 .. p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    iput-object v0, v1, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 65
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    move-object/from16 v6, p2

    invoke-static {v6, v2, v0}, Linfo/flowersoft/theotown/stages/cityinfo/BudgetCityInfo;->createEstateLabel(Lio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/components/DefaultBudget;Lio/blueflower/stapel2d/gamestack/Translator;)Lio/blueflower/stapel2d/gui/Label;

    .line 67
    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$1;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$1;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v10, v0

    .line 83
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getLoanValue()J

    move-result-wide v3

    .line 84
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getLoanTermMonths()I

    move-result v2

    .line 85
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getLoanMonthlyPrice()J

    move-result-wide v5

    .line 87
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOAN_TAKE:I

    filled-new-array {v0}, [I

    move-result-object v11

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v12, 0x274

    .line 88
    invoke-interface {v0, v12}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    long-to-double v12, v3

    invoke-static {v12, v13}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    long-to-double v14, v5

    invoke-static {v14, v15}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v14

    filled-new-array {v12, v13, v14}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v0, v12}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v13, 0xb4d

    .line 89
    invoke-interface {v0, v13}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v13

    new-instance v0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$2;

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$2;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;IJJLinfo/flowersoft/theotown/city/City;)V

    new-array v4, v9, [Ljava/lang/Runnable;

    aput-object v0, v4, v8

    new-instance v5, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$3;

    invoke-direct {v5, v1, v7}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$3;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;Linfo/flowersoft/theotown/city/City;)V

    move-object v0, v1

    move-object v6, v10

    move-object v1, v11

    move-object v2, v12

    move-object v3, v13

    .line 87
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->addLoan([ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$Availability;Lio/blueflower/stapel2d/gui/Gadget;)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v1

    .line 109
    new-instance v15, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$4;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    .line 110
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object v0, v15

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$4;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 116
    new-instance v10, Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v14

    const/16 v15, 0xc

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object/from16 v15, v16

    iput-object v10, v1, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->lblOverall:Lio/blueflower/stapel2d/gui/Label;

    .line 117
    new-instance v10, Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v13

    invoke-virtual {v15}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    add-int/lit8 v14, v0, -0xc

    const/4 v11, 0x0

    const/16 v12, 0xc

    invoke-direct/range {v10 .. v15}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v10, v1, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    .line 119
    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->update()V

    return-void
.end method

.method public getHelpText(Linfo/flowersoft/theotown/city/City;)Ljava/lang/String;
    .registers 3

    .line 55
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object p1

    const/16 v0, 0x61b

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIcon()I
    .registers 2

    .line 186
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOAN:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 267
    const-string v0, "LoanCityInfo"

    return-object v0
.end method

.method public getTitleId(Linfo/flowersoft/theotown/city/City;)I
    .registers 2

    .line 0
    const/16 p1, 0xd33

    return p1
.end method

.method public isAvailable(Linfo/flowersoft/theotown/city/City;)Z
    .registers 3

    .line 191
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 192
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getScenarioInfo()Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getScenarioInfo()Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getAllowLoans()Z

    move-result p1

    if-eqz p1, :cond_1c

    :cond_1a
    const/4 p1, 0x1

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 272
    const-string v0, "Loan"

    return-object v0
.end method

.method public final declared-synchronized update()V
    .registers 6

    monitor-enter p0

    .line 169
    :goto_1
    :try_start_1
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_12

    .line 170
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->removeItemIndex(I)V

    goto :goto_1

    :catchall_10
    move-exception v0

    goto :goto_6e

    .line 174
    :cond_12
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getLoans()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/city/components/Loan;

    .line 175
    iget-object v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v4, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$LoanItem;

    invoke-direct {v4, p0, v2}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$LoanItem;-><init>(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;Linfo/flowersoft/theotown/city/components/Loan;)V

    invoke-virtual {v3, v4}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    int-to-long v3, v1

    .line 176
    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/components/Loan;->getEstate()J

    move-result-wide v1

    add-long/2addr v3, v1

    long-to-int v1, v3

    goto :goto_1c

    .line 179
    :cond_3a
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->lblOverall:Lio/blueflower/stapel2d/gui/Label;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xad2

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    int-to-double v3, v1

    .line 180
    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 181
    invoke-virtual {v3}, Linfo/flowersoft/theotown/components/DefaultBudget;->getLoans()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/DefaultBudget;->getMaxLoanCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 179
    invoke-static {v2, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_1 .. :try_end_6c} :catchall_10

    .line 182
    monitor-exit p0

    return-void

    :goto_6e
    :try_start_6e
    monitor-exit p0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_10

    throw v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.LoanCityInfo.AnonymousClass1 (info.flowersoft.theotown.stages.cityinfo.LoanCityInfo$1)
.class public Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$1;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "LoanCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 67
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$1;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public layout()V
    .registers 5

    .line 72
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x2

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/gui/Gadget;

    .line 73
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    .line 74
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    goto :goto_7

    .line 77
    :cond_22
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.LoanCityInfo.AnonymousClass2 (info.flowersoft.theotown.stages.cityinfo.LoanCityInfo$2)
.class public Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$2;
.super Ljava/lang/Object;
.source "LoanCityInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;

.field public final synthetic val$pricePerMonth:J

.field public final synthetic val$termMonths:I

.field public final synthetic val$value:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;IJJLinfo/flowersoft/theotown/city/City;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$2;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    iput p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$2;->val$termMonths:I

    iput-wide p3, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$2;->val$value:J

    iput-wide p5, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$2;->val$pricePerMonth:J

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$2;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 94
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$2;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->access$000(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;)Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v1

    iget v2, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$2;->val$termMonths:I

    iget-wide v3, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$2;->val$value:J

    iget-wide v5, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$2;->val$pricePerMonth:J

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/components/DefaultBudget;->addLoan(IJJ)Linfo/flowersoft/theotown/city/components/Loan;

    .line 95
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$2;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->access$100(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;)V

    .line 96
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$2;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->access$200(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;)V

    .line 97
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$2;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->canAchieve()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 98
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    const-string v1, "loan_take"

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/GamesService;->unlockAchievement(Ljava/lang/String;)Z

    :cond_28
    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.LoanCityInfo.AnonymousClass3 (info.flowersoft.theotown.stages.cityinfo.LoanCityInfo$3)
.class public Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$3;
.super Ljava/lang/Object;
.source "LoanCityInfo.java"

# interfaces
.implements Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$Availability;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

.field public final synthetic val$city:Linfo/flowersoft/theotown/city/City;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;Linfo/flowersoft/theotown/city/City;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$3;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$3;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .registers 2

    .line 105
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$3;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->access$000(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;)Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/components/DefaultBudget;->canAddLoan()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$3;->val$city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.LoanCityInfo.AnonymousClass4 (info.flowersoft.theotown.stages.cityinfo.LoanCityInfo$4)
.class public Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$4;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "LoanCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->build(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 110
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$4;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 113
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.LoanCityInfo.AnonymousClass5 (info.flowersoft.theotown.stages.cityinfo.LoanCityInfo$5)
.class public Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$5;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "LoanCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->addLoan([ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$Availability;Lio/blueflower/stapel2d/gui/Gadget;)Lio/blueflower/stapel2d/gui/Gadget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 124
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$5;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 127
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.LoanCityInfo.AnonymousClass6 (info.flowersoft.theotown.stages.cityinfo.LoanCityInfo$6)
.class public Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$6;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "LoanCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->addLoan([ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/Runnable;Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$Availability;Lio/blueflower/stapel2d/gui/Gadget;)Lio/blueflower/stapel2d/gui/Gadget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

.field public final synthetic val$action:[Ljava/lang/Runnable;

.field public final synthetic val$availability:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$Availability;

.field public final synthetic val$index:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;[Ljava/lang/Runnable;ILinfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$Availability;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010,
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
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 135
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$6;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$6;->val$action:[Ljava/lang/Runnable;

    iput p10, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$6;->val$index:I

    iput-object p11, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$6;->val$availability:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$Availability;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .registers 2

    .line 145
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$6;->val$availability:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$Availability;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$Availability;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    return v0

    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method public onClick()V
    .registers 3

    .line 138
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$6;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 139
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$6;->val$action:[Ljava/lang/Runnable;

    iget v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$6;->val$index:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_f
    return-void
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.LoanCityInfo.Availability (info.flowersoft.theotown.stages.cityinfo.LoanCityInfo$Availability)
.class public interface abstract Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$Availability;
.super Ljava/lang/Object;
.source "LoanCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Availability"
.end annotation


# virtual methods
.method public abstract isAvailable()Z
.end method

###### Class info.flowersoft.theotown.stages.cityinfo.LoanCityInfo.LoanItem (info.flowersoft.theotown.stages.cityinfo.LoanCityInfo$LoanItem)
.class public Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$LoanItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "LoanCityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoanItem"
.end annotation


# instance fields
.field public final loan:Linfo/flowersoft/theotown/city/components/Loan;

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;Linfo/flowersoft/theotown/city/components/Loan;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 198
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$LoanItem;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    .line 199
    const-string p1, ""

    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 200
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$LoanItem;->loan:Linfo/flowersoft/theotown/city/components/Loan;

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 18

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 205
    invoke-virtual/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 206
    iget-object p1, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 207
    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v1, p3, 0x2

    add-int/lit8 v2, p4, 0x1

    .line 213
    iget-object v3, v7, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 215
    iget-object v3, v7, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 216
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$LoanItem;->loan:Linfo/flowersoft/theotown/city/components/Loan;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/components/Loan;->getEstate()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v4

    int-to-float v1, v1

    int-to-float v5, v2

    .line 217
    invoke-virtual {p1, v3, v4, v1, v5}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 218
    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 220
    iget-object v3, v7, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 221
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$LoanItem;->loan:Linfo/flowersoft/theotown/city/components/Loan;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/components/Loan;->getTargetDay()J

    move-result-wide v4

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$LoanItem;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    invoke-static {v6}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->access$300(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;)Linfo/flowersoft/theotown/components/DefaultDate;

    move-result-object v6

    invoke-virtual {v6}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v8

    sub-long/2addr v4, v8

    long-to-int v4, v4

    .line 222
    rem-int/lit8 v5, v4, 0x1e

    .line 223
    div-int/lit8 v4, v4, 0x1e

    .line 224
    iget-object v6, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$LoanItem;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    invoke-static {v6}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->access$400(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v6

    const/16 v8, 0x5c1

    invoke-interface {v6, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v5, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    int-to-float v5, v2

    .line 225
    invoke-virtual {p1, v3, v4, v1, v5}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 226
    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v2, v4

    .line 228
    iget-object v4, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$LoanItem;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    invoke-static {v4}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->access$000(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;)Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$LoanItem;->loan:Linfo/flowersoft/theotown/city/components/Loan;

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/components/DefaultBudget;->getLoanPayBackPrice(Linfo/flowersoft/theotown/city/components/Loan;)J

    move-result-wide v4

    .line 229
    iget-object v6, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$LoanItem;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    invoke-static {v6}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->access$400(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v6

    const/16 v8, 0x7a2

    invoke-interface {v6, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    long-to-double v8, v4

    invoke-static {v8, v9}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v8}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 230
    iget-object v8, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$LoanItem;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    invoke-static {v8}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->access$000(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;)Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result v8

    if-eqz v8, :cond_a4

    iget-object v7, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_a6

    :cond_a4
    iget-object v7, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextRed:Lio/blueflower/stapel2d/drawing/Color;

    :goto_a6
    invoke-virtual {p1, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    int-to-float v2, v2

    .line 231
    invoke-virtual {p1, v3, v6, v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 233
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$LoanItem;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->access$000(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;)Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result v1

    if-eqz v1, :cond_cd

    add-int/2addr p3, p5

    add-int/lit8 p3, p3, -0x1c

    add-int/lit8 v1, p6, -0x1a

    .line 235
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p4

    .line 236
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    int-to-float p3, p3

    int-to-float v1, v1

    .line 237
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOAD_PAYBACK:I

    invoke-virtual {p1, p2, p3, v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 240
    :cond_cd
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x28

    return p1
.end method

.method public onClick(II)V
    .registers 4

    .line 250
    iget-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$LoanItem;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    invoke-static {p2}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->access$500(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;)Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object p2

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result p2

    sub-int/2addr p2, p1

    const/16 p1, 0x1a

    if-gt p2, p1, :cond_42

    .line 251
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$LoanItem;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->access$000(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;)Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p1

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$LoanItem;->loan:Linfo/flowersoft/theotown/city/components/Loan;

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getLoanPayBackPrice(Linfo/flowersoft/theotown/city/components/Loan;)J

    move-result-wide p1

    .line 252
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$LoanItem;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->access$000(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;)Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Linfo/flowersoft/theotown/components/DefaultBudget;->canSpend(J)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 253
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object p1

    sget p2, Linfo/flowersoft/theotown/resources/Resources;->SOUND_CLICK:I

    sget-object v0, Linfo/flowersoft/theotown/resources/SoundType;->UI:Linfo/flowersoft/theotown/resources/SoundType;

    invoke-virtual {p1, p2, v0}, Linfo/flowersoft/theotown/resources/SoundPlayer;->play(ILinfo/flowersoft/theotown/resources/SoundType;)Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    .line 254
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$LoanItem;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->access$000(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;)Linfo/flowersoft/theotown/components/DefaultBudget;

    move-result-object p1

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$LoanItem;->loan:Linfo/flowersoft/theotown/city/components/Loan;

    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/components/DefaultBudget;->payBackLoan(Linfo/flowersoft/theotown/city/components/Loan;)V

    .line 255
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo$LoanItem;->this$0:Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;->access$100(Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;)V

    :cond_42
    return-void
.end method
