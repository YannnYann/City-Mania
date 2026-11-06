###### Class info.flowersoft.theotown.ui.BuyOrVideoDialog (info.flowersoft.theotown.ui.BuyOrVideoDialog)
.class public Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "BuyOrVideoDialog.java"


# static fields
.field public static final adPlacementTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final placementCapTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final placementCaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final adPlacementName:Ljava/lang/String;

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public diamondButton:Linfo/flowersoft/theotown/ui/GoldButton;

.field public final id:Ljava/lang/String;

.field public final stageVisitor:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;"
        }
    .end annotation
.end field

.field public final translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public static synthetic $r8$lambda$C-96A00vAyiZeIR4-0RNSJJ0xBY(Lio/blueflower/stapel2d/util/Getter;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
    .registers 2

    .line 65
    invoke-interface {p0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;->report(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Via4gft4PokW9Dz1k897Pn42orU()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$hHz0QCmQpZa-DpwY8goDllK_0_4(Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    invoke-static {p1, p2}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->registerSuccessfulAd(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 98
    new-instance p1, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p3, p1}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;->handle(Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V

    const/4 p1, 0x0

    .line 100
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 101
    sget-object p0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Video "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Watched ad"

    const-string p3, ""

    invoke-interface {p0, p1, p2, p3}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tZda7jD6YvyJQ1QMNNl1gbzVB34(Z)V
    .registers 1

    .line 0
    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->adPlacementTimes:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->placementCaps:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->placementCapTimes:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLinfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/gui/Master;",
            "J",
            "Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    move-wide/from16 v7, p5

    move-object/from16 v10, p8

    move-object/from16 v9, p10

    move-object/from16 v3, p3

    move/from16 v11, p12

    .line 72
    invoke-static {v3, v11}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->widthForText(Ljava/lang/String;Z)I

    move-result v4

    invoke-static {v3}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->heightForText(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    move-object v1, v0

    .line 74
    iput-object v9, v1, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->id:Ljava/lang/String;

    move-object/from16 v0, p11

    .line 75
    iput-object v0, v1, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->adPlacementName:Ljava/lang/String;

    move-object/from16 v4, p9

    .line 76
    iput-object v4, v1, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 77
    invoke-virtual {v4}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v12

    iput-object v12, v1, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 78
    iput-object v10, v1, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    .line 80
    new-instance v13, Linfo/flowersoft/theotown/util/SpecialInt;

    long-to-int v2, v7

    invoke-direct {v13, v2}, Linfo/flowersoft/theotown/util/SpecialInt;-><init>(I)V

    const/16 v2, 0x20

    ushr-long v2, v7, v2

    long-to-int v14, v2

    .line 82
    invoke-static {v14}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->isRegionCoinFlagSet(I)Z

    move-result v15

    .line 84
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "show"

    const-string v6, ""

    invoke-interface {v2, v3, v5, v6}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {v4}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->load(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 96
    new-instance v5, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda0;

    move-object/from16 p5, p7

    move-object/from16 p3, v0

    move-object/from16 p2, v1

    move-object/from16 p4, v4

    move-object/from16 p1, v5

    move-object/from16 p6, v9

    invoke-direct/range {p1 .. p6}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;Ljava/lang/String;)V

    move-object/from16 v16, p1

    move-object/from16 v0, p6

    .line 103
    new-instance v2, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$1;

    move-object/from16 v9, p7

    invoke-direct {v2, v1, v0, v13, v9}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$1;-><init>(Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;Ljava/lang/String;Linfo/flowersoft/theotown/util/SpecialInt;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;)V

    .line 113
    sget-boolean v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->DEBUG:Z

    if-eqz v3, :cond_98

    .line 114
    new-instance v0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$2;

    move-object v5, v2

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_WIZARD:I

    .line 115
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const-string v3, ""

    const/4 v4, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object/from16 v17, v7

    const/16 v7, 0x1e

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$2;-><init>(Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;)V

    goto :goto_9a

    :cond_98
    move-object/from16 v17, v2

    .line 126
    :goto_9a
    invoke-virtual {v13}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    const/4 v9, -0x1

    const/4 v1, 0x1

    if-gtz v0, :cond_a8

    invoke-virtual {v13}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    if-ne v0, v9, :cond_aa

    :cond_a8
    move v0, v1

    goto :goto_d4

    .line 186
    :cond_aa
    new-instance v0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$5;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_AWARD:I

    const/16 v3, 0x2c9

    .line 187
    invoke-interface {v12, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v9, p7

    move v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$5;-><init>(Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;)V

    .line 199
    invoke-virtual {v0, v10}, Lio/blueflower/stapel2d/gui/Button;->setMarked(Z)V

    goto/16 :goto_1a2

    .line 127
    :goto_d4
    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v18

    const/16 v1, 0x1e

    if-eqz v11, :cond_116

    move v2, v0

    .line 129
    new-instance v0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$3;

    move v3, v2

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_UNLOCK:I

    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    .line 130
    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    move v4, v3

    const-string v3, ""

    move v5, v4

    const/4 v4, 0x0

    move v6, v5

    const/4 v5, 0x0

    move v11, v6

    const/4 v6, 0x0

    move v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$3;-><init>(Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 138
    invoke-virtual {v0, v11}, Linfo/flowersoft/theotown/ui/GoldButton;->setGreen(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 139
    invoke-virtual {v0, v10}, Linfo/flowersoft/theotown/ui/IconButton;->setMaxWidth(I)V

    add-int/lit8 v18, v18, -0x1e

    goto :goto_118

    :cond_116
    move v11, v0

    move v10, v1

    .line 143
    :goto_118
    new-instance v0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;

    .line 144
    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v3

    invoke-virtual {v13}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v8, p8

    move-object/from16 v4, p9

    move v7, v14

    move-object/from16 v5, v17

    move-object/from16 v14, p0

    move/from16 v17, v11

    move v11, v9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;-><init>(IILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;IILio/blueflower/stapel2d/util/Setter;Ljava/lang/String;)V

    iput-object v0, v14, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->diamondButton:Linfo/flowersoft/theotown/ui/GoldButton;

    .line 145
    div-int/lit8 v1, v18, 0x2

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/IconButton;->setMaxWidth(I)V

    .line 146
    iget-object v0, v14, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->diamondButton:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    .line 148
    invoke-virtual {v13}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    if-le v0, v10, :cond_154

    invoke-virtual {v13}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    if-ne v0, v11, :cond_152

    goto :goto_154

    :cond_152
    move-object v1, v14

    goto :goto_1a2

    :cond_154
    :goto_154
    if-eqz p8, :cond_152

    .line 149
    iget-object v0, v14, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->diamondButton:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v13}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v2

    const/4 v3, 0x0

    if-le v2, v11, :cond_162

    move/from16 v2, v17

    goto :goto_163

    :cond_162
    move v2, v3

    :goto_163
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 151
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->videoAdStageFactory:Linfo/flowersoft/theotown/crossplatform/VideoAdStage$VideoAdStageFactory;

    if-eqz v0, :cond_152

    if-nez v15, :cond_152

    .line 152
    iget-object v0, v14, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->diamondButton:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 154
    new-instance v0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$4;

    const/16 v2, 0xd81

    .line 155
    invoke-interface {v12, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {v14}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda1;-><init>()V

    move-object/from16 v9, p11

    move-object/from16 v6, p8

    move-object/from16 v8, p9

    move-object/from16 v7, p11

    move v10, v1

    move-object v1, v14

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$4;-><init>(Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, v10}, Linfo/flowersoft/theotown/ui/IconButton;->setMaxWidth(I)V

    add-int/lit8 v2, v10, -0x1

    .line 180
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    .line 181
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->diamondButton:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->push()V

    .line 202
    :goto_1a2
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/gui/Master;",
            "J",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 64
    new-instance v7, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda2;

    move-object/from16 v0, p7

    invoke-direct {v7, v0}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda2;-><init>(Lio/blueflower/stapel2d/util/Getter;)V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLinfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;)V
    .registers 1

    .line 32
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->openShop()V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;)Lio/blueflower/stapel2d/gamestack/Translator;
    .registers 1

    .line 32
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    return-object p0
.end method

.method public static combinePriceAndFlags(II)J
    .registers 6

    .line 0
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    int-to-long p0, p1

    const/16 v2, 0x20

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static declared-synchronized configureCap(Ljava/lang/String;II)V
    .registers 5

    const-class v0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    monitor-enter v0

    if-eqz p0, :cond_26

    .line 219
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    const/4 v1, 0x1

    if-ge p1, v1, :cond_f

    goto :goto_26

    .line 220
    :cond_f
    sget-object v1, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->placementCaps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object p1, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->placementCapTimes:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_23

    .line 222
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    .line 219
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p0

    :cond_26
    :goto_26
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized getRemainingTime(Ljava/lang/String;)J
    .registers 8

    const-class v0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    monitor-enter v0

    const-wide/16 v1, -0x1

    if-eqz p0, :cond_6d

    .line 238
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_6d

    .line 239
    :cond_e
    sget-object v3, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->placementCaps:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 240
    sget-object v4, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->placementCapTimes:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v3, :cond_69

    if-eqz v4, :cond_69

    .line 241
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_2a

    goto :goto_69

    .line 242
    :cond_2a
    sget-object v5, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->adPlacementTimes:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_67

    .line 243
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v5, v6, :cond_3f

    goto :goto_67

    .line 244
    :cond_3f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 245
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v3, p0

    add-long/2addr v1, v3

    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object p0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v3
    :try_end_62
    .catchall {:try_start_7 .. :try_end_62} :catchall_65

    sub-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_65
    move-exception p0

    goto :goto_6b

    .line 243
    :cond_67
    :goto_67
    monitor-exit v0

    return-wide v1

    .line 241
    :cond_69
    :goto_69
    monitor-exit v0

    return-wide v1

    :goto_6b
    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_65

    throw p0

    .line 238
    :cond_6d
    :goto_6d
    monitor-exit v0

    return-wide v1
.end method

.method public static heightForText(Ljava/lang/String;)I
    .registers 3

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-ge v0, v1, :cond_13

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_13

    const/16 p0, 0x78

    return p0

    :cond_13
    const/16 p0, 0xa0

    return p0
.end method

.method public static declared-synchronized load(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 12

    const-class p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    monitor-enter p0

    .line 249
    :try_start_3
    new-instance v0, Linfo/flowersoft/theotown/resources/PersistentData;

    const-string v1, "ad dialog"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/resources/PersistentData;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/PersistentData;->read()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 250
    const-string v1, "placements"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5f

    const/4 v1, 0x0

    move v2, v1

    .line 252
    :goto_18
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5f

    .line 253
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->optJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_5c

    .line 255
    const-string v4, "placement"

    invoke-virtual {v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 256
    const-string v5, "history"

    invoke-virtual {v3, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v3

    if-eqz v4, :cond_5c

    if-eqz v3, :cond_5c

    .line 258
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v1

    .line 259
    :goto_3a
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_57

    const-wide/16 v7, 0x0

    .line 260
    invoke-virtual {v3, v2, v7, v8}, Linfo/flowersoft/theotown/util/json/JSONArray;->optLong(IJ)J

    move-result-wide v9

    cmp-long v7, v9, v7

    if-eqz v7, :cond_54

    .line 262
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_54

    :catchall_52
    move-exception v0

    goto :goto_61

    :cond_54
    :goto_54
    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    .line 265
    :cond_57
    sget-object v3, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->adPlacementTimes:Ljava/util/Map;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_52

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 270
    :cond_5f
    monitor-exit p0

    return-void

    :goto_61
    :try_start_61
    monitor-exit p0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_52

    throw v0
.end method

.method public static declared-synchronized registerSuccessfulAd(Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 7

    const-class v0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    monitor-enter v0

    if-eqz p0, :cond_35

    .line 225
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    .line 226
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v1

    .line 227
    sget-object v3, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->adPlacementTimes:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_28

    .line 229
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 230
    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :catchall_26
    move-exception p0

    goto :goto_33

    .line 232
    :cond_28
    :goto_28
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-static {p1}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->save(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    goto :goto_35

    .line 225
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_26

    throw p0

    .line 235
    :cond_35
    :goto_35
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized save(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 9

    const-class p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    monitor-enter p0

    .line 273
    :try_start_3
    new-instance v0, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 274
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_63

    .line 276
    :try_start_d
    sget-object v2, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->adPlacementTimes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 277
    new-instance v4, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v4}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>()V

    .line 278
    const-string v5, "placement"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 279
    new-instance v5, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v5}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 280
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x14

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_47
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_67

    .line 281
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    :catchall_63
    move-exception v0

    goto :goto_87

    :catch_65
    move-exception v0

    goto :goto_80

    .line 283
    :cond_67
    const-string v3, "history"

    invoke-virtual {v4, v3, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 284
    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    goto :goto_17

    .line 286
    :cond_70
    const-string v2, "placements"

    invoke-virtual {v0, v2, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 287
    new-instance v1, Linfo/flowersoft/theotown/resources/PersistentData;

    const-string v2, "ad dialog"

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/resources/PersistentData;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/resources/PersistentData;->write(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    :try_end_7f
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_d .. :try_end_7f} :catch_65
    .catchall {:try_start_d .. :try_end_7f} :catchall_63

    goto :goto_85

    .line 289
    :goto_80
    :try_start_80
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    invoke-interface {v1, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/Exception;)V
    :try_end_85
    .catchall {:try_start_80 .. :try_end_85} :catchall_63

    .line 291
    :goto_85
    monitor-exit p0

    return-void

    :goto_87
    :try_start_87
    monitor-exit p0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_63

    throw v0
.end method

.method public static widthForText(Ljava/lang/String;Z)I
    .registers 3

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x50

    if-ge p1, v0, :cond_13

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_13

    const/16 p0, 0x104

    return p0

    :cond_13
    const/16 p0, 0x12c

    return p0
.end method


# virtual methods
.method public getDiamondButton()Linfo/flowersoft/theotown/ui/GoldButton;
    .registers 2

    .line 215
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->diamondButton:Linfo/flowersoft/theotown/ui/GoldButton;

    return-object v0
.end method

.method public final openShop()V
    .registers 5

    .line 206
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Open shop for permanent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->adPlacementName:Ljava/lang/String;

    const-string v3, "Shop"

    invoke-interface {v0, v3, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.BuyOrVideoDialog.AnonymousClass1 (info.flowersoft.theotown.ui.BuyOrVideoDialog$1)
.class Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$1;
.super Ljava/lang/Object;
.source "BuyOrVideoDialog.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLinfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

.field public final synthetic val$diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

.field public final synthetic val$id:Ljava/lang/String;

.field public final synthetic val$successHandler:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;Ljava/lang/String;Linfo/flowersoft/theotown/util/SpecialInt;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 103
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$1;->this$0:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$1;->val$id:Ljava/lang/String;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$1;->val$diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    iput-object p4, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$1;->val$successHandler:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
    .registers 7

    .line 106
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$1;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bought for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$1;->val$diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$1;->val$successHandler:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;->handle(Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V

    .line 109
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$1;->this$0:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.BuyOrVideoDialog.AnonymousClass2 (info.flowersoft.theotown.ui.BuyOrVideoDialog$2)
.class public Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$2;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "BuyOrVideoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLinfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

.field public final synthetic val$successHandler:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;


# direct methods
.method public static synthetic $r8$lambda$moZ-OpuI2XNfRWXJlRlm_jycuoM(Z)V
    .registers 1

    .line 0
    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;)V
    .registers 10
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
            null
        }
    .end annotation

    .line 115
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$2;->this$0:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$2;->val$successHandler:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 118
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 119
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$2;->val$successHandler:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;

    new-instance v1, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$2$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$2$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;->handle(Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V

    .line 121
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$2;->this$0:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.BuyOrVideoDialog$2$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.BuyOrVideoDialog$2$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final report(Z)V
    .registers 2

    .line 0
    invoke-static {p1}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$2;->$r8$lambda$moZ-OpuI2XNfRWXJlRlm_jycuoM(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.BuyOrVideoDialog.AnonymousClass3 (info.flowersoft.theotown.ui.BuyOrVideoDialog$3)
.class public Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$3;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "BuyOrVideoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLinfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 130
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$3;->this$0:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 133
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 134
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$3;->this$0:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 135
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$3;->this$0:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->access$000(Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.BuyOrVideoDialog.AnonymousClass4 (info.flowersoft.theotown.ui.BuyOrVideoDialog$4)
.class Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$4;
.super Linfo/flowersoft/theotown/ui/PlayVideoAdButton;
.source "BuyOrVideoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLinfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

.field public final synthetic val$adPlacementName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x10,
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
            null,
            null
        }
    .end annotation

    .line 161
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$4;->this$0:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$4;->val$adPlacementName:Ljava/lang/String;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/PlayVideoAdButton;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 5

    .line 165
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/PlayVideoAdButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$4;->val$adPlacementName:Ljava/lang/String;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->getRemainingTime(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdate()V
    .registers 5

    .line 170
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$4;->val$adPlacementName:Ljava/lang/String;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->getRemainingTime(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_14

    .line 172
    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/IconButton;->setText(Ljava/lang/String;)V

    return-void

    .line 174
    :cond_14
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$4;->this$0:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->access$100(Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v1, 0xd81

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/IconButton;->setText(Ljava/lang/String;)V

    .line 175
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.BuyOrVideoDialog.AnonymousClass5 (info.flowersoft.theotown.ui.BuyOrVideoDialog$5)
.class public Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$5;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "BuyOrVideoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLinfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

.field public final synthetic val$successHandler:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;)V
    .registers 10
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
            null
        }
    .end annotation

    .line 188
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$5;->this$0:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$5;->val$successHandler:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 191
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 192
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$5;->val$successHandler:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;

    new-instance v1, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$5$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$5$1;-><init>(Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$5;)V

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;->handle(Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V

    .line 197
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$5;->this$0:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.BuyOrVideoDialog.AnonymousClass5.AnonymousClass1 (info.flowersoft.theotown.ui.BuyOrVideoDialog$5$1)
.class Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$5$1;
.super Ljava/lang/Object;
.source "BuyOrVideoDialog.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$5;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$5;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$5;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 192
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$5$1;->this$1:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public report(Z)V
    .registers 2

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.ui.BuyOrVideoDialog$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.BuyOrVideoDialog$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic f$3:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;Ljava/lang/String;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda0;->f$2:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iput-object p4, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda0;->f$3:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;

    iput-object p5, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda0;->f$2:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda0;->f$3:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->$r8$lambda$hHz0QCmQpZa-DpwY8goDllK_0_4(Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.BuyOrVideoDialog$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.BuyOrVideoDialog$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->$r8$lambda$Via4gft4PokW9Dz1k897Pn42orU()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.BuyOrVideoDialog$$ExternalSyntheticLambda2 (info.flowersoft.theotown.ui.BuyOrVideoDialog$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;


# instance fields
.field public final synthetic f$0:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public synthetic constructor <init>(Lio/blueflower/stapel2d/util/Getter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda2;->f$0:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method


# virtual methods
.method public final handle(Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda2;->f$0:Lio/blueflower/stapel2d/util/Getter;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->$r8$lambda$C-96A00vAyiZeIR4-0RNSJJ0xBY(Lio/blueflower/stapel2d/util/Getter;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.BuyOrVideoDialog$$ExternalSyntheticLambda3 (info.flowersoft.theotown.ui.BuyOrVideoDialog$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/ui/BuyOrVideoDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final report(Z)V
    .registers 2

    .line 0
    invoke-static {p1}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->$r8$lambda$tZda7jD6YvyJQ1QMNNl1gbzVB34(Z)V

    return-void
.end method
