###### Class info.flowersoft.theotown.ui.DailyPresentDialog (info.flowersoft.theotown.ui.DailyPresentDialog)
.class public Linfo/flowersoft/theotown/ui/DailyPresentDialog;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "DailyPresentDialog.java"


# direct methods
.method public static synthetic $r8$lambda$VVOjpt293ngkq64Igz44HFOyoiY(Linfo/flowersoft/theotown/ui/DailyPresentDialog;)V
    .registers 2

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$vqHQ21A8S3iLzP54Gj-Z6TzGZGw(Linfo/flowersoft/theotown/mechanics/RewardManager;Linfo/flowersoft/theotown/util/SpecialInt;Linfo/flowersoft/theotown/util/SpecialInt;ILinfo/flowersoft/theotown/mechanics/GameHandler;)V
    .registers 8

    .line 144
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    invoke-virtual {p2}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "daily present + ad day "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Linfo/flowersoft/theotown/mechanics/RewardManager;->rewardPlayer(ILjava/lang/String;)V

    .line 146
    sget-object p0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Get "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "+"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " diamonds"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Have "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p4}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " diamonds now"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 146
    const-string p3, "Daily Present"

    invoke-interface {p0, p3, p1, p2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/blueflower/stapel2d/gui/Master;",
            "Lio/blueflower/stapel2d/gamestack/Translator;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v10, p3

    .line 29
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_DAILY_AWARD:I

    const/16 v2, 0x579

    .line 30
    invoke-interface {v10, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc5c

    .line 31
    invoke-interface {v10, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    .line 29
    invoke-direct {v1, v0, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 34
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "daily reward"

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    const-string v3, "diamonds"

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v0

    .line 35
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    const-string v3, "ad diamonds"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v2

    .line 38
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v7

    new-array v9, v7, [Linfo/flowersoft/theotown/util/SpecialInt;

    .line 39
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Linfo/flowersoft/theotown/util/SpecialInt;

    const/4 v13, 0x0

    move v4, v13

    .line 41
    :goto_3f
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_53

    .line 42
    new-instance v5, Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->optInt(I)I

    move-result v6

    invoke-direct {v5, v6}, Linfo/flowersoft/theotown/util/SpecialInt;-><init>(I)V

    aput-object v5, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    :cond_53
    move v0, v13

    .line 44
    :goto_54
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_68

    .line 45
    new-instance v4, Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->optInt(I)I

    move-result v5

    invoke-direct {v4, v5}, Linfo/flowersoft/theotown/util/SpecialInt;-><init>(I)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 49
    :cond_68
    rem-int v0, p1, v7

    aget-object v16, v9, v0

    .line 50
    aget-object v17, v3, v0

    .line 53
    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    const/16 v2, 0x3e8

    if-gt v0, v2, :cond_16c

    invoke-virtual/range {v17 .. v17}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    if-le v0, v2, :cond_7e

    goto/16 :goto_16c

    .line 55
    :cond_7e
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v12

    .line 56
    invoke-virtual {v12}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getRewardManager()Linfo/flowersoft/theotown/mechanics/RewardManager;

    move-result-object v15

    .line 58
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getTextFrame()Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    move-result-object v0

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getTextFrame()Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getTextFrame()Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v3

    const/16 v4, 0x28

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    .line 59
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getTextFrame()Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    move-result-object v0

    invoke-virtual {v0, v13, v4}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    .line 60
    new-instance v0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$1;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    const/16 v5, 0x28

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v8, p1

    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/ui/DailyPresentDialog$1;-><init>(Linfo/flowersoft/theotown/ui/DailyPresentDialog;IIIILio/blueflower/stapel2d/gui/Gadget;II[Linfo/flowersoft/theotown/util/SpecialInt;Lio/blueflower/stapel2d/gamestack/Translator;)V

    .line 120
    new-instance v2, Linfo/flowersoft/theotown/ui/IconLabel;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "+"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/util/Localizer;->localizeDiamonds(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Linfo/flowersoft/theotown/ui/IconLabel;-><init>(ILjava/lang/String;IILio/blueflower/stapel2d/gui/Gadget;)V

    .line 123
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 124
    invoke-virtual {v1, v13}, Linfo/flowersoft/theotown/ui/Dialog;->setCanCloseViaBackground(Z)V

    .line 126
    new-instance v0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$2;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 v3, 0xd19

    invoke-interface {v10, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    move/from16 v11, p1

    move-object v9, v15

    move-object/from16 v10, v16

    invoke-direct/range {v0 .. v12}, Linfo/flowersoft/theotown/ui/DailyPresentDialog$2;-><init>(Linfo/flowersoft/theotown/ui/DailyPresentDialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/mechanics/RewardManager;Linfo/flowersoft/theotown/util/SpecialInt;ILinfo/flowersoft/theotown/mechanics/GameHandler;)V

    const/4 v2, 0x1

    if-eqz p4, :cond_11b

    .line 140
    invoke-virtual/range {v17 .. v17}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v3

    if-gtz v3, :cond_11c

    :cond_11b
    move v13, v2

    :cond_11c
    invoke-virtual {v0, v13}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    if-eqz p4, :cond_16c

    .line 142
    invoke-virtual/range {v17 .. v17}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    if-lez v0, :cond_16c

    .line 143
    new-instance v22, Linfo/flowersoft/theotown/ui/DailyPresentDialog$$ExternalSyntheticLambda0;

    move/from16 v18, p1

    move-object/from16 v16, v10

    move-object/from16 v19, v12

    move-object v0, v14

    move-object/from16 v14, v22

    invoke-direct/range {v14 .. v19}, Linfo/flowersoft/theotown/ui/DailyPresentDialog$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/mechanics/RewardManager;Linfo/flowersoft/theotown/util/SpecialInt;Linfo/flowersoft/theotown/util/SpecialInt;ILinfo/flowersoft/theotown/mechanics/GameHandler;)V

    .line 151
    new-instance v18, Linfo/flowersoft/theotown/ui/PlayVideoAdButton;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    invoke-virtual {v10}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 152
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v20

    new-instance v0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/DailyPresentDialog$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/ui/DailyPresentDialog;)V

    const-string v24, "Daily_Award_Diamonds"

    move-object/from16 v23, p4

    move-object/from16 v25, p5

    move-object/from16 v21, v0

    invoke-direct/range {v18 .. v25}, Linfo/flowersoft/theotown/ui/PlayVideoAdButton;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    move-object/from16 v0, v18

    .line 153
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/Button;->setMarked(Z)V

    :cond_16c
    :goto_16c
    return-void
.end method

###### Class info.flowersoft.theotown.ui.DailyPresentDialog.AnonymousClass1 (info.flowersoft.theotown.ui.DailyPresentDialog$1)
.class Linfo/flowersoft/theotown/ui/DailyPresentDialog$1;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "DailyPresentDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/DailyPresentDialog;-><init>(ILio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/DailyPresentDialog;

.field public final synthetic val$AMOUNT_PER_DAY:[Linfo/flowersoft/theotown/util/SpecialInt;

.field public final synthetic val$amountCount:I

.field public final synthetic val$day:I

.field public final synthetic val$translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/DailyPresentDialog;IIIILio/blueflower/stapel2d/gui/Gadget;II[Linfo/flowersoft/theotown/util/SpecialInt;Lio/blueflower/stapel2d/gamestack/Translator;)V
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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
            null
        }
    .end annotation

    .line 60
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$1;->this$0:Linfo/flowersoft/theotown/ui/DailyPresentDialog;

    iput p7, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$1;->val$amountCount:I

    iput p8, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$1;->val$day:I

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$1;->val$AMOUNT_PER_DAY:[Linfo/flowersoft/theotown/util/SpecialInt;

    iput-object p10, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$1;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 21

    move-object/from16 v0, p0

    .line 63
    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 64
    iget v1, v0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int v1, p1, v1

    .line 65
    iget v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int v11, p2, v3

    .line 67
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/4 v13, 0x0

    .line 68
    :goto_14
    iget v3, v0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$1;->val$amountCount:I

    if-ge v13, v3, :cond_165

    .line 69
    iget v4, v0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    div-int v5, v4, v3

    mul-int/2addr v5, v13

    add-int v9, v1, v5

    add-int/lit8 v5, v3, -0x1

    const/4 v6, 0x1

    if-ne v13, v5, :cond_28

    sub-int/2addr v4, v9

    add-int/2addr v4, v1

    :goto_26
    move v10, v4

    goto :goto_2b

    .line 71
    :cond_28
    div-int/2addr v4, v3

    sub-int/2addr v4, v6

    goto :goto_26

    .line 72
    :goto_2b
    iget v14, v0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    .line 73
    iget v4, v0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$1;->val$day:I

    rem-int/2addr v4, v3

    if-ne v13, v4, :cond_34

    move v15, v6

    goto :goto_35

    :cond_34
    const/4 v15, 0x0

    :goto_35
    const/16 v3, 0xff

    if-eqz v15, :cond_5f

    move v4, v3

    .line 76
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v5, v9, -0x5

    int-to-float v5, v5

    add-int/lit8 v6, v11, -0x5

    int-to-float v6, v6

    add-int/lit8 v7, v10, 0xa

    int-to-float v7, v7

    add-int/lit8 v8, v14, 0xa

    int-to-float v8, v8

    iget-object v4, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v4, v4, Lio/blueflower/stapel2d/gui/Skin;->npRectShadow:I

    move v12, v8

    move v8, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v12

    const/16 v12, 0xff

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    const/16 v3, 0xfd

    const/16 v4, 0x95

    .line 77
    invoke-virtual {v2, v12, v3, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    goto :goto_60

    :cond_5f
    move v12, v3

    .line 79
    :goto_60
    iget v3, v0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$1;->val$day:I

    iget v4, v0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$1;->val$amountCount:I

    rem-int/2addr v3, v4

    if-gt v13, v3, :cond_69

    move v3, v12

    goto :goto_6b

    :cond_69
    const/16 v3, 0x50

    :goto_6b
    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 80
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->cMenuItem:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 81
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v4, v9

    int-to-float v5, v11

    int-to-float v6, v10

    int-to-float v7, v14

    iget-object v8, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v8, v8, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectBordered:I

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    if-eqz v15, :cond_94

    .line 84
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 85
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v8, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v8, v8, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectEmpty:I

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    :cond_94
    const/16 v3, 0xa0

    .line 88
    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 89
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 90
    iget v3, v0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$1;->val$day:I

    iget v8, v0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$1;->val$amountCount:I

    rem-int/2addr v3, v8

    if-ge v13, v3, :cond_ae

    .line 91
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 93
    :cond_ae
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget v8, Linfo/flowersoft/theotown/resources/Resources;->FRAME_SHOPITEM_BACKGROUND:I

    invoke-virtual/range {v2 .. v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    if-eqz v15, :cond_ba

    .line 96
    invoke-virtual {v2, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 98
    :cond_ba
    iget-object v3, v0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->cMenuText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 99
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v8, v0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$1;->val$AMOUNT_PER_DAY:[Linfo/flowersoft/theotown/util/SpecialInt;

    aget-object v8, v8, v13

    invoke-virtual {v8}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v8, v9}, Linfo/flowersoft/theotown/util/Localizer;->localizeDiamonds(J)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    move/from16 v17, v5

    move v5, v4

    move-object v4, v8

    move v8, v7

    move v7, v6

    move/from16 v6, v17

    invoke-virtual/range {v2 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    .line 100
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v8, v0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$1;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v9, 0xd86

    .line 101
    invoke-interface {v8, v9}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v14, v13, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x3f000000    # 0.5f

    const v10, 0x3d4ccccd    # 0.05f

    move/from16 v17, v5

    move v5, v4

    move-object v4, v8

    move v8, v7

    move v7, v6

    move/from16 v6, v17

    .line 100
    invoke-virtual/range {v2 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move v4, v5

    move v15, v6

    move v6, v7

    move v7, v8

    .line 103
    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/4 v3, 0x0

    :goto_119
    if-gt v3, v13, :cond_14b

    .line 105
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sub-int v8, v13, v3

    .line 106
    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    rem-int/lit8 v8, v8, 0x2

    mul-int/lit8 v8, v8, 0x3

    sub-int v8, v11, v8

    int-to-float v8, v8

    int-to-float v9, v3

    int-to-float v10, v13

    const/high16 v16, 0x40000000    # 2.0f

    div-float v10, v10, v16

    sub-float/2addr v9, v10

    const v10, 0x3f4ccccd    # 0.8f

    mul-float/2addr v9, v10

    int-to-float v10, v14

    div-float/2addr v9, v10

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    move v10, v3

    move-object v3, v5

    move v5, v8

    move v8, v9

    const v9, 0x3f733333    # 0.95f

    move/from16 v16, v10

    sget v10, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND_SMALL:I

    .line 105
    invoke-virtual/range {v2 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    add-int/lit8 v3, v16, 0x1

    goto :goto_119

    .line 111
    :cond_14b
    invoke-virtual {v2, v12}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 112
    iget v3, v0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$1;->val$day:I

    iget v5, v0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$1;->val$amountCount:I

    rem-int/2addr v3, v5

    if-ge v13, v3, :cond_162

    .line 113
    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    const v9, 0x3f733333    # 0.95f

    sget v10, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/high16 v8, 0x3f000000    # 0.5f

    move v5, v15

    invoke-virtual/range {v2 .. v10}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    :cond_162
    move v13, v14

    goto/16 :goto_14

    :cond_165
    return-void
.end method

###### Class info.flowersoft.theotown.ui.DailyPresentDialog.AnonymousClass2 (info.flowersoft.theotown.ui.DailyPresentDialog$2)
.class public Linfo/flowersoft/theotown/ui/DailyPresentDialog$2;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "DailyPresentDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/DailyPresentDialog;-><init>(ILio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/DailyPresentDialog;

.field public final synthetic val$amount:Linfo/flowersoft/theotown/util/SpecialInt;

.field public final synthetic val$day:I

.field public final synthetic val$gameHandler:Linfo/flowersoft/theotown/mechanics/GameHandler;

.field public final synthetic val$rewardManager:Linfo/flowersoft/theotown/mechanics/RewardManager;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/DailyPresentDialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/mechanics/RewardManager;Linfo/flowersoft/theotown/util/SpecialInt;ILinfo/flowersoft/theotown/mechanics/GameHandler;)V
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
            0x0,
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

    .line 127
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$2;->this$0:Linfo/flowersoft/theotown/ui/DailyPresentDialog;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$2;->val$rewardManager:Linfo/flowersoft/theotown/mechanics/RewardManager;

    iput-object p10, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$2;->val$amount:Linfo/flowersoft/theotown/util/SpecialInt;

    iput p11, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$2;->val$day:I

    iput-object p12, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$2;->val$gameHandler:Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 5

    .line 130
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 132
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$2;->val$rewardManager:Linfo/flowersoft/theotown/mechanics/RewardManager;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$2;->val$amount:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "daily present day "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$2;->val$day:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/mechanics/RewardManager;->rewardPlayer(ILjava/lang/String;)V

    .line 134
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$2;->val$amount:Linfo/flowersoft/theotown/util/SpecialInt;

    .line 135
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " diamonds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$2;->val$gameHandler:Linfo/flowersoft/theotown/mechanics/GameHandler;

    .line 136
    invoke-virtual {v3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " diamonds now"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    const-string v3, "Daily Present"

    invoke-interface {v0, v3, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$2;->this$0:Linfo/flowersoft/theotown/ui/DailyPresentDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.DailyPresentDialog$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.DailyPresentDialog$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/DailyPresentDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/mechanics/RewardManager;

.field public final synthetic f$1:Linfo/flowersoft/theotown/util/SpecialInt;

.field public final synthetic f$2:Linfo/flowersoft/theotown/util/SpecialInt;

.field public final synthetic f$3:I

.field public final synthetic f$4:Linfo/flowersoft/theotown/mechanics/GameHandler;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/mechanics/RewardManager;Linfo/flowersoft/theotown/util/SpecialInt;Linfo/flowersoft/theotown/util/SpecialInt;ILinfo/flowersoft/theotown/mechanics/GameHandler;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/mechanics/RewardManager;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/util/SpecialInt;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/util/SpecialInt;

    iput p4, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$$ExternalSyntheticLambda0;->f$3:I

    iput-object p5, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$$ExternalSyntheticLambda0;->f$4:Linfo/flowersoft/theotown/mechanics/GameHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/mechanics/RewardManager;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/util/SpecialInt;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/util/SpecialInt;

    iget v3, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$$ExternalSyntheticLambda0;->f$3:I

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$$ExternalSyntheticLambda0;->f$4:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/DailyPresentDialog;->$r8$lambda$vqHQ21A8S3iLzP54Gj-Z6TzGZGw(Linfo/flowersoft/theotown/mechanics/RewardManager;Linfo/flowersoft/theotown/util/SpecialInt;Linfo/flowersoft/theotown/util/SpecialInt;ILinfo/flowersoft/theotown/mechanics/GameHandler;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.DailyPresentDialog$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.DailyPresentDialog$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/DailyPresentDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/DailyPresentDialog;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/DailyPresentDialog;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/DailyPresentDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DailyPresentDialog$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/DailyPresentDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/DailyPresentDialog;->$r8$lambda$VVOjpt293ngkq64Igz44HFOyoiY(Linfo/flowersoft/theotown/ui/DailyPresentDialog;)V

    return-void
.end method
