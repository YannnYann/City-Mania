###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;
.super Lio/blueflower/stapel2d/util/Builder;
.source "DialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/blueflower/stapel2d/util/Builder<",
        "Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;",
        ">;"
    }
.end annotation


# static fields
.field public static final START_MS:J

.field public static showedLightRateDialog:Z


# instance fields
.field public final beginnerCfg:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public city:Linfo/flowersoft/theotown/city/City;

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public diamondNeededListener:Linfo/flowersoft/theotown/city/components/ResourceNeededListener;

.field public final gui:Lio/blueflower/stapel2d/gui/Master;

.field public hidden:Lio/blueflower/stapel2d/gui/Gadget;

.field public moneyNeededListener:Linfo/flowersoft/theotown/city/components/ResourceNeededListener;

.field public questionListener:Linfo/flowersoft/theotown/city/components/QuestionListener;

.field public rateDialog:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public static synthetic $r8$lambda$FqfWReoZxNMKiGIbefyTgJRZqfE(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 2

    .line 178
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    .line 178
    check-cast p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->visitStage(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MwkHGqcbTmVMBo0MnqvrEuvHfx8(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;Lio/blueflower/stapel2d/gamestack/Translator;JLjava/lang/Runnable;Ljava/lang/String;Z)V
    .registers 22

    move-object/from16 v0, p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    sget-boolean v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v1, :cond_55

    .line 135
    new-instance v2, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    const/16 v1, 0x19f

    .line 136
    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0x9db

    .line 137
    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->getMaster()Lio/blueflower/stapel2d/gui/Master;

    move-result-object v6

    move-wide/from16 v0, p2

    long-to-int v0, v0

    int-to-long v7, v0

    new-instance v9, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda3;

    move-object/from16 v0, p4

    invoke-direct {v9, v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    .line 143
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v11

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Diamonds needed for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v10, 0x0

    move/from16 v14, p6

    invoke-direct/range {v2 .. v14}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p0, 0x1

    .line 147
    invoke-virtual {v2, p0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    const/4 p0, 0x0

    .line 150
    invoke-virtual {v2, p0}, Linfo/flowersoft/theotown/ui/Dialog;->setCanCloseViaBackground(Z)V

    return-void

    .line 151
    :cond_55
    sget-boolean p0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-eqz p0, :cond_60

    .line 152
    sget-object p0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    const-string v0, "Beg for diamonds"

    invoke-interface {p0, v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    :cond_60
    return-void
.end method

.method public static synthetic $r8$lambda$V5mZGW6xLbZ8P0cK2OdmPpp4pBI(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/util/Setter;JLjava/lang/Runnable;Ljava/lang/String;Z)V
    .registers 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    .line 157
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    const/4 v5, 0x0

    .line 157
    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Linfo/flowersoft/theotown/components/DefaultBudget;

    .line 158
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {v4, v2, v3}, Linfo/flowersoft/theotown/components/DefaultBudget;->getDiamondPriceForMoney(J)I

    move-result v10

    .line 159
    invoke-virtual {v7}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v8

    long-to-double v11, v2

    add-double/2addr v8, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    .line 161
    sget-boolean v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    const/4 v13, 0x1

    if-nez v4, :cond_41

    iget-object v4, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 162
    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getScenarioInfo()Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v4

    if-eqz v4, :cond_3f

    iget-object v4, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getScenarioInfo()Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getAllowBuyMoney()Z

    move-result v4

    if-eqz v4, :cond_41

    :cond_3f
    move v4, v13

    goto :goto_42

    :cond_41
    move v4, v5

    .line 163
    :goto_42
    iget-object v6, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 164
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getScenarioInfo()Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v6

    if-eqz v6, :cond_59

    iget-object v6, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getScenarioInfo()Linfo/flowersoft/theotown/city/ScenarioInfo;

    move-result-object v6

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getAllowLoans()Z

    move-result v6

    if-eqz v6, :cond_57

    goto :goto_59

    :cond_57
    move v6, v5

    goto :goto_5a

    :cond_59
    :goto_59
    move v6, v13

    :goto_5a
    if-eqz v4, :cond_c2

    .line 167
    new-instance v14, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    sget v15, Linfo/flowersoft/theotown/resources/Resources;->ICON_MONEY:I

    const/16 v4, 0x3d0

    .line 168
    invoke-interface {v1, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v16

    const/16 v4, 0x7c7

    .line 169
    invoke-interface {v1, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v11, v12}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 169
    invoke-static {v1, v4}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 171
    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->getMaster()Lio/blueflower/stapel2d/gui/Master;

    move-result-object v18

    int-to-long v11, v10

    new-instance v21, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda4;

    move-wide/from16 v19, v11

    move-object/from16 v6, v21

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda4;-><init>(Linfo/flowersoft/theotown/components/DefaultBudget;JILjava/lang/Runnable;)V

    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda5;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)V

    .line 179
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "T to build "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move/from16 v26, p7

    move-object/from16 v22, v1

    invoke-direct/range {v14 .. v26}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 183
    invoke-virtual {v14, v13}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 186
    invoke-virtual {v14, v5}, Linfo/flowersoft/theotown/ui/Dialog;->setCanCloseViaBackground(Z)V

    goto :goto_115

    .line 188
    :cond_c2
    new-instance v2, Linfo/flowersoft/theotown/ui/Dialog;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_MONEY:I

    const/16 v4, 0x25

    .line 189
    invoke-interface {v1, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const/16 v10, 0x695

    .line 190
    invoke-interface {v1, v10}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v10

    .line 191
    invoke-static {v11, v12}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    .line 190
    invoke-static {v10, v11}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 192
    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->getMaster()Lio/blueflower/stapel2d/gui/Master;

    move-result-object v11

    invoke-direct {v2, v3, v4, v10, v11}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    if-eqz v6, :cond_f9

    .line 195
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOAN:I

    const/16 v4, 0xd33

    invoke-interface {v1, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$3;

    move-object/from16 v10, p2

    invoke-direct {v6, v0, v10}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$3;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 206
    :cond_f9
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 v3, 0x76b

    .line 208
    invoke-interface {v1, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 206
    invoke-virtual {v2, v0, v1, v13, v3}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    .line 210
    invoke-virtual {v0, v13}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 212
    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 213
    invoke-virtual {v2, v13}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 216
    :goto_115
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v0, :cond_132

    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-eqz v0, :cond_132

    .line 217
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    const-string v1, "Beg for money"

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    long-to-double v0, v8

    .line 218
    invoke-virtual {v7}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v2

    sub-double/2addr v0, v2

    const-string v2, "beg for money"

    invoke-virtual {v7, v0, v1, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->earn(DLjava/lang/String;)V

    .line 219
    invoke-interface/range {p5 .. p5}, Ljava/lang/Runnable;->run()V

    :cond_132
    return-void
.end method

.method public static synthetic $r8$lambda$VJIocmHl4rxFjgE0KCz4-GbLgmg(Linfo/flowersoft/theotown/components/DefaultBudget;JILjava/lang/Runnable;)Ljava/lang/Boolean;
    .registers 7

    long-to-double p1, p1

    .line 174
    invoke-virtual {p0}, Linfo/flowersoft/theotown/components/DefaultBudget;->getEstate()D

    move-result-wide v0

    sub-double/2addr p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "money needed dialog "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/components/DefaultBudget;->earn(DLjava/lang/String;)V

    .line 175
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 176
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic $r8$lambda$dVX66gd6HqvDAXVUnWpmeIgtpBg(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;Lio/blueflower/stapel2d/gamestack/Stage;)V
    .registers 2

    .line 108
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p0

    .line 108
    check-cast p0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->visitStage(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zPnsfRFLTrJvgPMkGxLGGb-Xngw(Ljava/lang/Runnable;)Ljava/lang/Boolean;
    .registers 1

    .line 141
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 142
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 64
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    sput-wide v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->START_MS:J

    const/4 v0, 0x0

    .line 65
    sput-boolean v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->showedLightRateDialog:Z

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;)V
    .registers 2

    .line 88
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/util/Builder;-><init>(Ljava/lang/Object;)V

    .line 67
    const-string p1, "beginner"

    invoke-static {p1}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->beginnerCfg:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 89
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGUI()Lio/blueflower/stapel2d/gui/Master;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 90
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getGameContext()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)V
    .registers 1

    .line 62
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->update()V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Lio/blueflower/stapel2d/gui/Master;
    .registers 1

    .line 62
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->getMaster()Lio/blueflower/stapel2d/gui/Master;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;Ljava/lang/String;)V
    .registers 2

    .line 62
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->rateOutcome(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 1

    .line 62
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->beginnerCfg:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 62
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;
    .registers 1

    .line 62
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-object p0
.end method


# virtual methods
.method public build()V
    .registers 15

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v9

    .line 101
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$1;

    const/4 v5, 0x0

    iget-object v6, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v2, v1

    iput-object v0, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->hidden:Lio/blueflower/stapel2d/gui/Gadget;

    .line 107
    invoke-virtual {p0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->getCity()Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    iput-object v0, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 108
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)V

    .line 110
    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$2;

    invoke-direct {v1, p0, v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$2;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;Lio/blueflower/stapel2d/gamestack/Translator;)V

    iput-object v1, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->questionListener:Linfo/flowersoft/theotown/city/components/QuestionListener;

    .line 133
    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;Lio/blueflower/stapel2d/gamestack/Translator;)V

    iput-object v1, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->diamondNeededListener:Linfo/flowersoft/theotown/city/components/ResourceNeededListener;

    .line 156
    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v9, v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/util/Setter;)V

    iput-object v1, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->moneyNeededListener:Linfo/flowersoft/theotown/city/components/ResourceNeededListener;

    .line 223
    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_OFFICEWORKER:I

    const/16 v4, 0xb19

    .line 224
    invoke-interface {v9, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x264

    .line 225
    invoke-interface {v9, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x8c

    iget-object v8, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/16 v6, 0x104

    invoke-direct/range {v1 .. v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;)V

    .line 250
    iget-object v3, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->beginnerCfg:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v4, "legacyRateUsIcon"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 251
    iget-object v4, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->beginnerCfg:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v6, "legacyRateUsTitle"

    invoke-virtual {v4, v6, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 252
    iget-object v6, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->beginnerCfg:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v7, "legacyRateUsText"

    invoke-virtual {v6, v7, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 253
    iget-object v7, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->beginnerCfg:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v8, "legacyRateUsNo"

    invoke-virtual {v7, v8, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 254
    iget-object v7, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->beginnerCfg:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v8, "legacyRateUsYes"

    invoke-virtual {v7, v8, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 255
    iget-object v7, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->beginnerCfg:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v8, "legacyRateUsYesIcon"

    invoke-virtual {v7, v8, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    move-object v11, v1

    .line 257
    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;

    if-eqz v3, :cond_8d

    .line 258
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_SERVANT:I

    goto :goto_8f

    :cond_8d
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->PEOPLE_GIRL:I

    :goto_8f
    if-eqz v4, :cond_94

    const/16 v4, 0x9c

    goto :goto_96

    :cond_94
    const/16 v4, 0x904

    .line 259
    :goto_96
    invoke-interface {v9, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_9f

    const/16 v5, 0xb90

    goto :goto_a1

    :cond_9f
    const/16 v5, 0x202

    .line 260
    :goto_a1
    invoke-interface {v9, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x78

    iget-object v8, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/16 v6, 0x104

    invoke-direct/range {v1 .. v13}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;ZLinfo/flowersoft/theotown/ui/Dialog;ZZ)V

    iput-object v1, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->rateDialog:Linfo/flowersoft/theotown/ui/Dialog;

    .line 313
    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;

    const/4 v6, 0x0

    iget-object v7, v2, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v8, v9

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public final getMaster()Lio/blueflower/stapel2d/gui/Master;
    .registers 2

    .line 94
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->hidden:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    check-cast v0, Lio/blueflower/stapel2d/gui/Master;

    return-object v0
.end method

.method public final rateOutcome(Ljava/lang/String;)V
    .registers 4

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rate_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/blueflower/stapel2d/util/SessionLogger;->logGeneric(Ljava/lang/String;)V

    return-void
.end method

.method public final update()V
    .registers 18

    move-object/from16 v0, p0

    .line 500
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/components/Tool;

    .line 501
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->questionListener:Linfo/flowersoft/theotown/city/components/QuestionListener;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/components/Tool;->setQuestionListener(Linfo/flowersoft/theotown/city/components/QuestionListener;)V

    .line 502
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->moneyNeededListener:Linfo/flowersoft/theotown/city/components/ResourceNeededListener;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/components/Tool;->setMoneyNeededListener(Linfo/flowersoft/theotown/city/components/ResourceNeededListener;)V

    .line 503
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->diamondNeededListener:Linfo/flowersoft/theotown/city/components/ResourceNeededListener;

    invoke-virtual {v1, v2}, Linfo/flowersoft/theotown/city/components/Tool;->setDiamondNeededListener(Linfo/flowersoft/theotown/city/components/ResourceNeededListener;)V

    .line 505
    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->isDialogOpen()Z

    move-result v1

    if-eqz v1, :cond_29

    goto/16 :goto_165

    .line 509
    :cond_29
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v1

    iget-object v2, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->beginnerCfg:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v3, "rate max diamonds"

    const/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-le v1, v2, :cond_46

    .line 511
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_RATE:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->complete()V

    .line 514
    :cond_46
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v1

    sget-wide v3, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->START_MS:J

    sub-long/2addr v1, v3

    .line 515
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v3

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/Builder;->getBuilderContext()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;

    iget-wide v5, v5, Linfo/flowersoft/theotown/stages/CityStage$GameStageContext;->lastEnterMS:J

    sub-long/2addr v3, v5

    .line 516
    sget-object v5, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v5}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v5

    .line 520
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v6

    iget-object v6, v6, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_RATE:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->isCompleted()Z

    move-result v6

    const-wide/16 v7, 0x3c

    const/4 v9, 0x0

    const-wide/32 v10, 0xea60

    const/4 v12, 0x1

    if-nez v6, :cond_dd

    iget-object v6, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 521
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->isTutorial()Z

    move-result v6

    if-nez v6, :cond_dd

    sget-boolean v6, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v6, :cond_dd

    iget-object v6, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    .line 523
    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v6

    if-nez v6, :cond_dd

    sget-object v6, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v5, v6, :cond_9d

    sget-object v6, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v5, v6, :cond_9d

    sget-object v6, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v5, v6, :cond_dd

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->beginnerCfg:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v6, "rate on desktop fix"

    .line 528
    invoke-virtual {v5, v6, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_dd

    :cond_9d
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->city:Linfo/flowersoft/theotown/city/City;

    const/16 v6, 0x9

    .line 531
    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/city/components/People;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/city/components/People;->getPeople()I

    move-result v5

    iget-object v6, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->beginnerCfg:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v13, "rate min people"

    const/16 v14, 0x64

    invoke-virtual {v6, v13, v14}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-le v5, v6, :cond_dd

    sget-wide v5, Linfo/flowersoft/theotown/resources/Settings;->playTimeSeconds:J

    iget-object v13, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->beginnerCfg:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v14, "rate min play min"

    const/16 v15, 0xa

    .line 534
    invoke-virtual {v13, v14, v15}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    int-to-long v13, v13

    mul-long/2addr v13, v7

    cmp-long v5, v5, v13

    if-ltz v5, :cond_dd

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->beginnerCfg:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v6, "rate min build min"

    .line 537
    invoke-virtual {v5, v6, v12}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v5, v10

    cmp-long v5, v3, v5

    if-lez v5, :cond_dd

    .line 539
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->rateDialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-virtual {v1, v12}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    goto :goto_120

    .line 541
    :cond_dd
    sget-boolean v5, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->showedLightRateDialog:Z

    if-nez v5, :cond_120

    sget-wide v5, Linfo/flowersoft/theotown/resources/Settings;->playTimeSeconds:J

    iget-object v13, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->beginnerCfg:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v14, "rate light play min"

    move-wide v15, v7

    const-wide/16 v7, 0x5

    .line 545
    invoke-virtual {v13, v14, v7, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    mul-long/2addr v7, v15

    cmp-long v5, v5, v7

    if-ltz v5, :cond_120

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->beginnerCfg:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v6, "rate light start min"

    const-wide/16 v7, 0xa

    .line 548
    invoke-virtual {v5, v6, v7, v8}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    mul-long/2addr v5, v10

    cmp-long v1, v1, v5

    if-ltz v1, :cond_120

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->beginnerCfg:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "rate light min build min"

    const-wide/16 v5, 0x1

    .line 551
    invoke-virtual {v1, v2, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    mul-long/2addr v1, v10

    cmp-long v1, v3, v1

    if-ltz v1, :cond_120

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    .line 554
    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->isTouched()Z

    move-result v1

    if-nez v1, :cond_120

    .line 556
    sput-boolean v12, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->showedLightRateDialog:Z

    .line 557
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->rateGameLight()V

    .line 560
    :cond_120
    :goto_120
    sget-boolean v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v1, :cond_165

    .line 561
    :goto_124
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->FEATURES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_165

    .line 562
    sget-object v1, Linfo/flowersoft/theotown/resources/Drafts;->FEATURES:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 564
    iget-boolean v2, v1, Linfo/flowersoft/theotown/draft/FeatureDraft;->consumable:Z

    if-eqz v2, :cond_162

    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isPurchased()Z

    move-result v2

    if-eqz v2, :cond_162

    .line 566
    iget v2, v1, Linfo/flowersoft/theotown/draft/FeatureDraft;->consumeCtr:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_154

    .line 567
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    iget-wide v4, v1, Linfo/flowersoft/theotown/draft/FeatureDraft;->lastConsumed:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_154

    const/16 v2, 0x94

    .line 569
    sput v2, Linfo/flowersoft/theotown/resources/Constants;->VERDÄCHTIG:I

    .line 573
    :cond_154
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->buyFeature(Linfo/flowersoft/theotown/draft/FeatureDraft;)Z

    .line 574
    invoke-static {}, Linfo/flowersoft/theotown/InAppHandler;->getInstance()Linfo/flowersoft/theotown/InAppHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/InAppHandler;->consume(Linfo/flowersoft/theotown/draft/FeatureDraft;)Z

    :cond_162
    add-int/lit8 v9, v9, 0x1

    goto :goto_124

    :cond_165
    :goto_165
    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.AnonymousClass1 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$1;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "DialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 101
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 2

    .line 104
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$1;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$000(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.AnonymousClass2 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$2)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$2;
.super Ljava/lang/Object;
.source "DialogBuilder.java"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/QuestionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

.field public final synthetic val$translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;Lio/blueflower/stapel2d/gamestack/Translator;)V
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

    .line 110
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$2;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ask(IIILjava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 13

    .line 128
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$2;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-interface {v0, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$2;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-interface {p2, p3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v2, p1

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$2;->ask(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public ask(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 13

    .line 113
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$2;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    .line 114
    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$100(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Lio/blueflower/stapel2d/gui/Master;

    move-result-object v6

    const/16 v4, 0xe1

    const/16 v5, 0x78

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 116
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$2;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p3, 0x5c5

    .line 117
    invoke-interface {p2, p3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    .line 116
    invoke-virtual {v0, p1, p2, p3, p5}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 119
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$2;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 p5, 0x98f

    .line 120
    invoke-interface {p2, p5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    const/4 p5, 0x0

    .line 119
    invoke-virtual {v0, p1, p2, p5, p4}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    .line 120
    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 122
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 123
    invoke-virtual {v0, p3}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.AnonymousClass3 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$3)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$3;
.super Ljava/lang/Object;
.source "DialogBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

.field public final synthetic val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;Lio/blueflower/stapel2d/util/Setter;)V
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

    .line 196
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$3;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 199
    new-instance v0, Linfo/flowersoft/theotown/stages/CityInfoStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$3;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$600(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/stages/CityInfoStage;-><init>(Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 200
    new-instance v1, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/cityinfo/LoanCityInfo;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/CityInfoStage;->selectCityInfo(Linfo/flowersoft/theotown/stages/cityinfo/CityInfo;)V

    .line 201
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$3;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    invoke-interface {v1, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.AnonymousClass4 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$4)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "DialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

.field public final synthetic val$translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;)V
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

    .line 228
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    iput-object p8, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 230
    sget p2, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    const/16 p3, 0x2a2

    invoke-interface {p8, p3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4$1;

    invoke-direct {p4, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4;)V

    const/4 p5, 0x0

    invoke-virtual {p0, p2, p3, p5, p4}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 237
    sget p2, Linfo/flowersoft/theotown/resources/Resources;->ICON_EDIT:I

    const/16 p3, 0xdc6

    invoke-interface {p8, p3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4$2;

    invoke-direct {p4, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4$2;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4;)V

    invoke-virtual {p0, p2, p3, p5, p4}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p2

    const/4 p3, 0x1

    .line 245
    invoke-virtual {p2, p3}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 246
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.AnonymousClass4.AnonymousClass1 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$4$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4$1;
.super Ljava/lang/Object;
.source "DialogBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 230
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4$1;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 233
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4$1;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    const-string v1, "no_feedback"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;Ljava/lang/String;)V

    .line 234
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "No feedback"

    const-string v2, ""

    const-string v3, "RateDialog"

    invoke-interface {v0, v3, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.AnonymousClass4.AnonymousClass2 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$4$2)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4$2;
.super Ljava/lang/Object;
.source "DialogBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 237
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4$2;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 240
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4$2;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$4;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    const-string v1, "write_feedback"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;Ljava/lang/String;)V

    .line 241
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "Write feedback"

    const-string v2, ""

    const-string v3, "RateDialog"

    invoke-interface {v0, v3, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    const-string v1, "mailto:info@theotown.com"

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->openURL(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.AnonymousClass5 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$5)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "DialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

.field public final synthetic val$feedbackDialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic val$legacyRateUsNo:Z

.field public final synthetic val$legacyRateUsYes:Z

.field public final synthetic val$legacyRateUsYesIcon:Z

.field public final synthetic val$translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public static synthetic $r8$lambda$RQ_1_VHQBPeJtSWdje_Exznde6w(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, ""

    const-string v2, "RateDialog"

    const-string v3, "Like"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_RATE:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->complete()V

    .line 302
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    const-string v0, "like"

    invoke-static {p0, v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;Ljava/lang/String;)V

    .line 303
    sget-object p0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {p0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->rateGame()V

    return-void
.end method

.method public static synthetic $r8$lambda$WepC8g4NKRcri1HVeS-rr7fXdGI(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, ""

    const-string v2, "RateDialog"

    const-string v3, "Don\'t like it"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_RATE:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->complete()V

    .line 288
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    const-string v1, "dont_like"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;Ljava/lang/String;)V

    .line 290
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    invoke-static {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p0

    const-string v0, "rate show feedback dialog"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_30

    .line 291
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    :cond_30
    return-void
.end method

.method public static synthetic $r8$lambda$p5upZy_wcu8Thvkhw22ZZxMAZec(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;)V
    .registers 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 276
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, ""

    const-string v2, "RateDialog"

    const-string v3, "Later"

    invoke-interface {v0, v2, v3, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$300(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    const-string v1, "rate later vanish min"

    const/16 v2, 0x1068

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 278
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->getInstance()Linfo/flowersoft/theotown/resources/TaskManager;

    move-result-object v1

    iget-object v1, v1, Linfo/flowersoft/theotown/resources/TaskManager;->TASK_RATE:Linfo/flowersoft/theotown/resources/TaskManager$Task;

    int-to-long v2, v0

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/resources/TaskManager$Task;->completeForSeconds(J)V

    .line 279
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    const-string v0, "later"

    invoke-static {p0, v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$200(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;ZLinfo/flowersoft/theotown/ui/Dialog;ZZ)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010,
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

    .line 262
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    iput-object p8, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iput-boolean p9, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;->val$legacyRateUsNo:Z

    iput-object p10, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;->val$feedbackDialog:Linfo/flowersoft/theotown/ui/Dialog;

    iput-boolean p11, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;->val$legacyRateUsYesIcon:Z

    iput-boolean p12, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;->val$legacyRateUsYes:Z

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    const/4 p2, 0x0

    .line 273
    invoke-virtual {p0, p2}, Linfo/flowersoft/theotown/ui/Dialog;->setCanCloseViaBackground(Z)V

    .line 275
    new-instance p3, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;)V

    invoke-virtual {p0, p3}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton(Ljava/lang/Runnable;)Lio/blueflower/stapel2d/gui/Button;

    .line 282
    sget p3, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    if-eqz p9, :cond_23

    const/16 p4, 0x30c

    goto :goto_25

    :cond_23
    const/16 p4, 0xda8

    .line 284
    :goto_25
    invoke-interface {p8, p4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p4

    new-instance p5, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5$$ExternalSyntheticLambda1;

    invoke-direct {p5, p0, p10}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;Linfo/flowersoft/theotown/ui/Dialog;)V

    .line 282
    invoke-virtual {p0, p3, p4, p2, p5}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    if-eqz p11, :cond_36

    .line 296
    sget p3, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    goto :goto_38

    :cond_36
    sget p3, Linfo/flowersoft/theotown/resources/Resources;->ICON_STAR:I

    :goto_38
    if-eqz p12, :cond_3d

    const/16 p4, 0xd5e

    goto :goto_3f

    :cond_3d
    const/16 p4, 0xbed

    .line 297
    :goto_3f
    invoke-interface {p8, p4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p4

    new-instance p5, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5$$ExternalSyntheticLambda2;

    invoke-direct {p5, p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;)V

    .line 295
    invoke-virtual {p0, p3, p4, p2, p5}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p2

    const/4 p3, 0x1

    .line 306
    invoke-virtual {p2, p3}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 307
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$5$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$5$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;->$r8$lambda$p5upZy_wcu8Thvkhw22ZZxMAZec(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$5$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$5$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;

.field public final synthetic f$1:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/ui/Dialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;->$r8$lambda$WepC8g4NKRcri1HVeS-rr7fXdGI(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;Linfo/flowersoft/theotown/ui/Dialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$5$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$5$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;->$r8$lambda$RQ_1_VHQBPeJtSWdje_Exznde6w(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$5;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.AnonymousClass6 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$6)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "DialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final budget:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public isOpen:Z

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

.field public final synthetic val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic val$translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public static synthetic $r8$lambda$k73vZVA0qmWdWootAxZ26Z4o538(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;JLjava/util/List;Ljava/util/List;JLinfo/flowersoft/theotown/ui/Dialog;Ljava/lang/Boolean;)V
    .registers 16

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    .line 409
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    long-to-double v2, p1

    const-string v4, "welcome back idle cash"

    invoke-virtual {v0, v2, v3, v4}, Linfo/flowersoft/theotown/components/DefaultBudget;->earn(DLjava/lang/String;)V

    move v0, v1

    .line 410
    :goto_13
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_30

    .line 411
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/minigame/Currency;

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    neg-double v5, v5

    invoke-interface {v4, v5, v6}, Linfo/flowersoft/theotown/minigame/Currency;->spend(D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 413
    :cond_30
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object p3

    sget p4, Linfo/flowersoft/theotown/resources/Resources;->SOUND_MONEY:I

    sget-object v0, Linfo/flowersoft/theotown/resources/SoundType;->UI:Linfo/flowersoft/theotown/resources/SoundType;

    invoke-virtual {p3, p4, v0}, Linfo/flowersoft/theotown/resources/SoundPlayer;->play(ILinfo/flowersoft/theotown/resources/SoundType;)Linfo/flowersoft/theotown/resources/SoundPlayer$SoundStream;

    .line 414
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p3, p4, v2, v3}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->addEvent(ID)V

    .line 417
    :cond_43
    iget-object p3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    invoke-static {p3}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object p3

    invoke-virtual {p3, p5, p6}, Linfo/flowersoft/theotown/city/City;->setLastSimulationTimestamp(J)V

    .line 418
    iput-boolean v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->isOpen:Z

    .line 419
    invoke-virtual {p7, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 420
    sget-object p0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    .line 421
    invoke-virtual {p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5c

    const-string p3, "take"

    goto :goto_5e

    :cond_5c
    const-string p3, "not take"

    :goto_5e
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, ""

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 420
    const-string p2, "Take idle cash"

    invoke-interface {p0, p2, p3, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zY_XD3q2e8MUVkjr8dEVibGqHGM(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 2

    .line 425
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;IIIILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/util/Setter;)V
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

    .line 313
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    iput-object p7, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iput-object p8, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    move-object p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move-object p2, p0

    invoke-direct/range {p2 .. p7}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 317
    invoke-static {p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/components/DefaultBudget;

    iput-object p1, p2, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    return-void
.end method

.method public static synthetic access$502(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;Z)Z
    .registers 2

    .line 313
    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->isOpen:Z

    return p1
.end method


# virtual methods
.method public onUpdate()V
    .registers 32

    move-object/from16 v1, p0

    .line 321
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v0, :cond_7

    return-void

    .line 323
    :cond_7
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getLastSimulationTimestamp()J

    move-result-wide v2

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 325
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Linfo/flowersoft/theotown/city/City;->setLastSimulationTimestamp(J)V

    sub-long v4, v9, v2

    .line 328
    invoke-static {}, Linfo/flowersoft/theotown/resources/Constants;->MS_PER_IDLE_DAY()J

    move-result-wide v6

    div-long v6, v4, v6

    const-wide/16 v11, 0x0

    invoke-static {v6, v7, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    long-to-int v0, v6

    .line 329
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v7, "idlecash"

    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v6

    if-nez v6, :cond_3c

    .line 330
    new-instance v6, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v6}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    :cond_3c
    move-object v13, v6

    const-wide/32 v6, 0xea60

    cmp-long v6, v4, v6

    const/4 v15, 0x1

    if-ltz v6, :cond_bb

    .line 335
    iget-object v6, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    invoke-static {v6}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v6

    invoke-virtual {v6, v15}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v6

    check-cast v6, Linfo/flowersoft/theotown/components/DefaultDate;

    const-wide/16 v16, 0x0

    invoke-virtual {v6}, Linfo/flowersoft/theotown/components/DefaultDate;->getAbsoluteDay()J

    move-result-wide v7

    .line 337
    iget-object v6, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    invoke-static {v6}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v6

    invoke-virtual {v6}, Linfo/flowersoft/theotown/city/City;->getBuildings()Linfo/flowersoft/theotown/city/BuildingList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_69
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-wide/from16 v21, v11

    move-object/from16 v11, v20

    check-cast v11, Linfo/flowersoft/theotown/city/objects/Building;

    if-eqz v11, :cond_b4

    .line 338
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->getDraft()Linfo/flowersoft/theotown/draft/BuildingDraft;

    move-result-object v12

    iget-boolean v12, v12, Linfo/flowersoft/theotown/draft/BuildingDraft;->idleBuildTime:Z

    if-eqz v12, :cond_b4

    .line 339
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->inConstruction()Z

    move-result v12

    if-eqz v12, :cond_9f

    .line 340
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->getBuildDay()J

    move-result-wide v23

    int-to-long v14, v0

    sub-long v14, v23, v14

    invoke-virtual {v11, v14, v15}, Linfo/flowersoft/theotown/city/objects/Building;->setBuildDay(J)V

    long-to-double v14, v7

    .line 341
    invoke-virtual {v11, v14, v15}, Linfo/flowersoft/theotown/city/objects/Building;->getDaysBuilt(D)D

    move-result-wide v14

    cmpl-double v11, v14, v16

    if-ltz v11, :cond_b4

    add-int/lit8 v18, v18, 0x1

    goto :goto_b4

    .line 342
    :cond_9f
    invoke-virtual {v11}, Linfo/flowersoft/theotown/city/objects/Building;->hasPendingUpgrades()Z

    move-result v14

    if-eqz v14, :cond_b4

    int-to-long v14, v0

    .line 343
    invoke-virtual {v11, v14, v15}, Linfo/flowersoft/theotown/city/objects/Building;->skipPendingUpgradeDays(J)V

    long-to-double v14, v7

    .line 344
    invoke-virtual {v11, v14, v15}, Linfo/flowersoft/theotown/city/objects/Building;->getPendingUpgradeDaysLeft(D)D

    move-result-wide v14

    cmpg-double v11, v14, v16

    if-gtz v11, :cond_b4

    add-int/lit8 v19, v19, 0x1

    :cond_b4
    :goto_b4
    move-wide/from16 v11, v21

    const/4 v15, 0x1

    goto :goto_69

    :cond_b8
    :goto_b8
    move-wide/from16 v21, v11

    goto :goto_c2

    :cond_bb
    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    goto :goto_b8

    :goto_c2
    const-wide/32 v6, 0x927c0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_33e

    cmp-long v0, v2, v21

    if-eqz v0, :cond_33e

    .line 351
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-nez v0, :cond_33e

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->isReadonly()Z

    move-result v0

    if-nez v0, :cond_33e

    const-wide/16 v2, 0x3e8

    .line 352
    div-long/2addr v4, v2

    const-wide/16 v2, 0x2

    div-long/2addr v4, v2

    long-to-int v0, v4

    const/4 v12, 0x0

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 353
    const-string v2, "c"

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-virtual {v13, v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 354
    const-string v3, "c2"

    const-wide v4, 0x409f400000000000L    # 2000.0

    invoke-virtual {v13, v3, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 355
    const-string v4, "close delay ms"

    const/16 v5, 0x64

    invoke-virtual {v13, v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 356
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->budget:Linfo/flowersoft/theotown/components/DefaultBudget;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/components/DefaultBudget;->getMonthlyIncome()D

    move-result-wide v4

    float-to-double v6, v3

    float-to-double v2, v2

    div-double/2addr v4, v2

    .line 358
    invoke-static {v4, v5}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v4

    mul-double/2addr v6, v4

    mul-double/2addr v6, v2

    int-to-double v4, v0

    const-wide/high16 v14, 0x403e000000000000L    # 30.0

    div-double v14, v4, v14

    const-wide/high16 v23, 0x4034000000000000L    # 20.0

    div-double v14, v14, v23

    div-double/2addr v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->log1p(D)D

    move-result-wide v2

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    cmp-long v0, v14, v21

    if-lez v0, :cond_13a

    const/4 v0, 0x1

    goto :goto_13b

    :cond_13a
    const/4 v0, 0x0

    .line 361
    :goto_13b
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/components/DefaultIdleGame;

    .line 362
    invoke-virtual {v2}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->getCurrencies()Ljava/util/List;

    move-result-object v11

    .line 363
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    .line 364
    :goto_153
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_17e

    .line 365
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/minigame/Currency;

    invoke-virtual {v2, v7}, Linfo/flowersoft/theotown/components/DefaultIdleGame;->getIncome(Linfo/flowersoft/theotown/minigame/Currency;)D

    move-result-wide v21

    const-wide v23, 0x3fb999999999999aL    # 0.1

    mul-double v23, v23, v4

    mul-double v21, v21, v23

    .line 367
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmpl-double v7, v21, v16

    if-lez v7, :cond_179

    const/4 v7, 0x1

    goto :goto_17a

    :cond_179
    const/4 v7, 0x0

    :goto_17a
    or-int/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_153

    :cond_17e
    if-eqz v0, :cond_333

    .line 371
    sget v0, Linfo/flowersoft/theotown/tutorial/Tutorial;->FLAG_IDLE_CASH:I

    invoke-static {v0}, Linfo/flowersoft/theotown/tutorial/Tutorial;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_333

    .line 372
    iget-boolean v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->isOpen:Z

    if-nez v0, :cond_348

    .line 373
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xbe3

    .line 374
    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    .line 375
    invoke-static {v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getName()Ljava/lang/String;

    move-result-object v2

    long-to-double v4, v14

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(DZ)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 373
    invoke-static {v0, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 377
    :goto_1be
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, " "

    if-ge v4, v5, :cond_20f

    .line 378
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v21

    cmpl-double v5, v21, v16

    if-lez v5, :cond_208

    .line 379
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    move-object/from16 v21, v13

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const/4 v2, 0x1

    invoke-static {v12, v13, v2}, Linfo/flowersoft/theotown/util/Localizer;->localizeBigNumber(DZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/minigame/Currency;

    invoke-interface {v2}, Linfo/flowersoft/theotown/minigame/Currency;->getUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_20a

    :cond_208
    move-object/from16 v21, v13

    :goto_20a
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v13, v21

    goto :goto_1be

    :cond_20f
    move-object/from16 v21, v13

    if-lez v18, :cond_23d

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x69c

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_23d
    move-object v4, v2

    .line 388
    new-instance v0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$1;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_MONEY:I

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0xa78

    .line 389
    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    .line 393
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lio/blueflower/stapel2d/gui/Master;

    move-object v6, v3

    move-object v3, v5

    const/16 v5, 0x12c

    move-object v12, v6

    const/16 v6, 0xb4

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$1;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;I)V

    .line 407
    new-instance v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$$ExternalSyntheticLambda0;

    move-object v8, v0

    move-object v0, v1

    move-wide v6, v9

    move-object v4, v11

    move-object v5, v12

    move-wide v2, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;JLjava/util/List;Ljava/util/List;JLinfo/flowersoft/theotown/ui/Dialog;)V

    move-object v2, v0

    move-object v0, v8

    .line 424
    const-string v3, "hidden cancel button"

    move-object/from16 v6, v21

    invoke-virtual {v6, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_280

    .line 425
    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$$ExternalSyntheticLambda1;-><init>(Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton(Ljava/lang/Runnable;)Lio/blueflower/stapel2d/gui/Button;

    const/4 v12, 0x0

    .line 426
    invoke-virtual {v0, v12}, Linfo/flowersoft/theotown/ui/Dialog;->setCanCloseViaBackground(Z)V

    .line 429
    :cond_280
    const-string v3, "show forfait"

    invoke-virtual {v6, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29b

    .line 430
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRASH:I

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xd0d

    .line 431
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$2;

    invoke-direct {v5, v1, v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$2;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;Lio/blueflower/stapel2d/util/Setter;)V

    const/4 v12, 0x0

    .line 430
    invoke-virtual {v0, v3, v4, v12, v5}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 440
    :cond_29b
    const-string v3, "show ad"

    invoke-virtual {v6, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2da

    .line 441
    new-instance v21, Linfo/flowersoft/theotown/ui/PlayVideoAdButton;

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x542

    invoke-interface {v3, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v22

    .line 442
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v23

    new-instance v3, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$3;

    invoke-direct {v3, v1, v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$3;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;Linfo/flowersoft/theotown/ui/Dialog;)V

    new-instance v5, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$4;

    invoke-direct {v5, v1, v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$4;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;Lio/blueflower/stapel2d/util/Setter;)V

    iget-object v7, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    iget-object v8, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    .line 455
    invoke-static {v8}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$600(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v28

    const-string v27, "Idle_Cash_Collect"

    move-object/from16 v24, v3

    move-object/from16 v25, v5

    move-object/from16 v26, v7

    invoke-direct/range {v21 .. v28}, Linfo/flowersoft/theotown/ui/PlayVideoAdButton;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    move-object/from16 v3, v21

    const/4 v5, 0x1

    .line 456
    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    goto :goto_2db

    :cond_2da
    move-object v3, v4

    .line 459
    :goto_2db
    const-string v5, "diamond price"

    invoke-virtual {v6, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v27

    if-lez v27, :cond_30b

    .line 462
    new-instance v21, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v24

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    .line 463
    invoke-static {v4}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$600(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v25

    new-instance v4, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$5;

    invoke-direct {v4, v1, v2}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$5;-><init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;Lio/blueflower/stapel2d/util/Setter;)V

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    const-string v30, "idle cash"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v28, 0x0

    move-object/from16 v29, v2

    move-object/from16 v26, v4

    invoke-direct/range {v21 .. v30}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;-><init>(IILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Getter;IILio/blueflower/stapel2d/util/Setter;Ljava/lang/String;)V

    move-object/from16 v4, v21

    :cond_30b
    if-eqz v3, :cond_32c

    if-eqz v4, :cond_32c

    const/4 v12, 0x0

    .line 474
    invoke-virtual {v4, v12}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 477
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    .line 478
    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v4, v2}, Linfo/flowersoft/theotown/ui/IconButton;->setMaxWidth(I)V

    .line 479
    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/ui/IconButton;->setMaxWidth(I)V

    .line 480
    invoke-virtual {v4, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    .line 481
    invoke-virtual {v3, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    goto :goto_32d

    :cond_32c
    const/4 v5, 0x1

    .line 484
    :goto_32d
    iput-boolean v5, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->isOpen:Z

    .line 485
    invoke-virtual {v0, v5}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    goto :goto_348

    :cond_333
    move-wide v6, v9

    .line 488
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Linfo/flowersoft/theotown/city/City;->setLastSimulationTimestamp(J)V

    goto :goto_348

    :cond_33e
    move-wide v6, v9

    .line 491
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->this$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->access$400(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Linfo/flowersoft/theotown/city/City;->setLastSimulationTimestamp(J)V

    .line 494
    :cond_348
    :goto_348
    invoke-super {v1}, Lio/blueflower/stapel2d/gui/Gadget;->onUpdate()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.AnonymousClass6.AnonymousClass1 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$6$1)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$1;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "DialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->onUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;

.field public final synthetic val$closeDelayMs:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;I)V
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

    .line 393
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$1;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;

    iput p8, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$1;->val$closeDelayMs:I

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    return-void
.end method


# virtual methods
.method public isCloseButtonVisible()Z
    .registers 5

    .line 402
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/Dialog;->isCloseButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 403
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Linfo/flowersoft/theotown/ui/Dialog;->showTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$1;->val$closeDelayMs:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public onCleanup()V
    .registers 3

    .line 396
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/Dialog;->free()V

    .line 397
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$1;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->access$502(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;Z)Z

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.AnonymousClass6.AnonymousClass2 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$6$2)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$2;
.super Ljava/lang/Object;
.source "DialogBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->onUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;

.field public final synthetic val$action:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;Lio/blueflower/stapel2d/util/Setter;)V
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

    .line 431
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$2;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$2;->val$action:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 434
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$2;->val$action:Lio/blueflower/stapel2d/util/Setter;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.AnonymousClass6.AnonymousClass3 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$6$3)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$3;
.super Ljava/lang/Object;
.source "DialogBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->onUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;

.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;Linfo/flowersoft/theotown/ui/Dialog;)V
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

    .line 443
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$3;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$3;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 446
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$3;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.AnonymousClass6.AnonymousClass4 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$6$4)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$4;
.super Ljava/lang/Object;
.source "DialogBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->onUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;

.field public final synthetic val$action:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;Lio/blueflower/stapel2d/util/Setter;)V
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

    .line 449
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$4;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$4;->val$action:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 452
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$4;->val$action:Lio/blueflower/stapel2d/util/Setter;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder.AnonymousClass6.AnonymousClass5 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$6$5)
.class public Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$5;
.super Ljava/lang/Object;
.source "DialogBuilder.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->onUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Getter<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;

.field public final synthetic val$action:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;Lio/blueflower/stapel2d/util/Setter;)V
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

    .line 463
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$5;->this$1:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$5;->val$action:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 3

    .line 466
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$5;->val$action:Lio/blueflower/stapel2d/util/Setter;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 463
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$5;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$6$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$6$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:J

.field public final synthetic f$5:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;JLjava/util/List;Ljava/util/List;JLinfo/flowersoft/theotown/ui/Dialog;)V
    .registers 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;

    iput-wide p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iput-object p5, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    iput-wide p6, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$$ExternalSyntheticLambda0;->f$4:J

    iput-object p8, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$$ExternalSyntheticLambda0;->f$5:Linfo/flowersoft/theotown/ui/Dialog;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 11

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;

    iget-wide v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$$ExternalSyntheticLambda0;->f$3:Ljava/util/List;

    iget-wide v5, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$$ExternalSyntheticLambda0;->f$4:J

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$$ExternalSyntheticLambda0;->f$5:Linfo/flowersoft/theotown/ui/Dialog;

    move-object v8, p1

    check-cast v8, Ljava/lang/Boolean;

    invoke-static/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->$r8$lambda$k73vZVA0qmWdWootAxZ26Z4o538(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;JLjava/util/List;Ljava/util/List;JLinfo/flowersoft/theotown/ui/Dialog;Ljava/lang/Boolean;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$6$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$6$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/util/Setter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$$ExternalSyntheticLambda1;->f$0:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6$$ExternalSyntheticLambda1;->f$0:Lio/blueflower/stapel2d/util/Setter;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$6;->$r8$lambda$zY_XD3q2e8MUVkjr8dEVibGqHGM(Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->$r8$lambda$dVX66gd6HqvDAXVUnWpmeIgtpBg(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/ResourceNeededListener;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;Lio/blueflower/stapel2d/gamestack/Translator;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda1;->f$1:Lio/blueflower/stapel2d/gamestack/Translator;

    return-void
.end method


# virtual methods
.method public final beg(JLjava/lang/Runnable;Ljava/lang/String;Z)V
    .registers 13

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda1;->f$1:Lio/blueflower/stapel2d/gamestack/Translator;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->$r8$lambda$MwkHGqcbTmVMBo0MnqvrEuvHfx8(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;Lio/blueflower/stapel2d/gamestack/Translator;JLjava/lang/Runnable;Ljava/lang/String;Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/city/components/ResourceNeededListener;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gamestack/Translator;

.field public final synthetic f$2:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda2;->f$1:Lio/blueflower/stapel2d/gamestack/Translator;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda2;->f$2:Lio/blueflower/stapel2d/util/Setter;

    return-void
.end method


# virtual methods
.method public final beg(JLjava/lang/Runnable;Ljava/lang/String;Z)V
    .registers 14

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda2;->f$1:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda2;->f$2:Lio/blueflower/stapel2d/util/Setter;

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->$r8$lambda$V5mZGW6xLbZ8P0cK2OdmPpp4pBI(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/util/Setter;JLjava/lang/Runnable;Ljava/lang/String;Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Runnable;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->$r8$lambda$zPnsfRFLTrJvgPMkGxLGGb-Xngw(Ljava/lang/Runnable;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$$ExternalSyntheticLambda4 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/components/DefaultBudget;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/components/DefaultBudget;JILjava/lang/Runnable;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/components/DefaultBudget;

    iput-wide p2, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda4;->f$1:J

    iput p4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda4;->f$2:I

    iput-object p5, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda4;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda4;->f$0:Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-wide v1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda4;->f$1:J

    iget v3, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda4;->f$2:I

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda4;->f$3:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->$r8$lambda$VJIocmHl4rxFjgE0KCz4-GbLgmg(Linfo/flowersoft/theotown/components/DefaultBudget;JILjava/lang/Runnable;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$$ExternalSyntheticLambda5 (info.flowersoft.theotown.stages.gameuibuilder.DialogBuilder$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder$$ExternalSyntheticLambda5;->f$0:Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;

    check-cast p1, Lio/blueflower/stapel2d/gamestack/Stage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;->$r8$lambda$FqfWReoZxNMKiGIbefyTgJRZqfE(Linfo/flowersoft/theotown/stages/gameuibuilder/DialogBuilder;Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method
