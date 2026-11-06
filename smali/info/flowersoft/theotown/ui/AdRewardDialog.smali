###### Class info.flowersoft.theotown.ui.AdRewardDialog (info.flowersoft.theotown.ui.AdRewardDialog)
.class public Linfo/flowersoft/theotown/ui/AdRewardDialog;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "AdRewardDialog.java"


# direct methods
.method public static synthetic $r8$lambda$ZX9CjeYYyoCkr0eMFzYR9Ty0XW8(Linfo/flowersoft/theotown/ui/AdRewardDialog;)V
    .registers 2

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ex_iNvu4Gu0IpgWGYMSfMKvraeA(Linfo/flowersoft/theotown/mechanics/RewardManager;Linfo/flowersoft/theotown/util/SpecialInt;Linfo/flowersoft/theotown/mechanics/GameHandler;)V
    .registers 6

    .line 39
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad reward "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/RewardManager;->getAdRewardCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/mechanics/RewardManager;->rewardPlayerForAd(ILjava/lang/String;)V

    .line 41
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Reward "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/mechanics/RewardManager;->getAdRewardCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " diamonds"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " diamonds now"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 41
    invoke-interface {v0, p0, p1, p2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;",
            "Lio/blueflower/stapel2d/gui/Master;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            ")V"
        }
    .end annotation

    .line 22
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAY_AD_VIDEO:I

    .line 23
    invoke-virtual/range {p3 .. p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v2, 0x1ef

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual/range {p3 .. p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v3, 0x1c5

    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xe1

    const/16 v5, 0x78

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    .line 22
    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 27
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getRewardManager()Linfo/flowersoft/theotown/mechanics/RewardManager;

    move-result-object v2

    .line 29
    new-instance v3, Linfo/flowersoft/theotown/util/SpecialInt;

    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->CONFIG:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v5, "ad reward"

    .line 30
    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v4

    const-string v5, "diamonds"

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Linfo/flowersoft/theotown/util/SpecialInt;-><init>(I)V

    .line 32
    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ad Reward "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/mechanics/RewardManager;->getAdRewardCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Open"

    const-string v7, ""

    invoke-interface {v4, v5, v6, v7}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v8, Linfo/flowersoft/theotown/ui/IconLabel;

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Linfo/flowersoft/theotown/util/Localizer;->localizeDiamonds(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v13}, Linfo/flowersoft/theotown/ui/IconLabel;-><init>(ILjava/lang/String;IILio/blueflower/stapel2d/gui/Gadget;)V

    .line 38
    new-instance v4, Linfo/flowersoft/theotown/ui/AdRewardDialog$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v3, v1}, Linfo/flowersoft/theotown/ui/AdRewardDialog$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/mechanics/RewardManager;Linfo/flowersoft/theotown/util/SpecialInt;Linfo/flowersoft/theotown/mechanics/GameHandler;)V

    .line 46
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    const/4 v1, 0x0

    .line 47
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setCanCloseViaBackground(Z)V

    .line 49
    new-instance v14, Linfo/flowersoft/theotown/ui/PlayVideoAdButton;

    invoke-virtual/range {p3 .. p3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v1

    const/16 v2, 0x622

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v15

    .line 50
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v16

    new-instance v1, Linfo/flowersoft/theotown/ui/AdRewardDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/ui/AdRewardDialog$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/ui/AdRewardDialog;)V

    const-string v20, "Ad_Award_Diamonds"

    move-object/from16 v19, p1

    move-object/from16 v21, p3

    move-object/from16 v17, v1

    move-object/from16 v18, v4

    invoke-direct/range {v14 .. v21}, Linfo/flowersoft/theotown/ui/PlayVideoAdButton;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;Ljava/lang/Runnable;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;Ljava/lang/String;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v14, v1}, Lio/blueflower/stapel2d/gui/Button;->setMarked(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.AdRewardDialog$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.AdRewardDialog$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/AdRewardDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/mechanics/RewardManager;

.field public final synthetic f$1:Linfo/flowersoft/theotown/util/SpecialInt;

.field public final synthetic f$2:Linfo/flowersoft/theotown/mechanics/GameHandler;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/mechanics/RewardManager;Linfo/flowersoft/theotown/util/SpecialInt;Linfo/flowersoft/theotown/mechanics/GameHandler;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/AdRewardDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/mechanics/RewardManager;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/AdRewardDialog$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/util/SpecialInt;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/AdRewardDialog$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/mechanics/GameHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/AdRewardDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/mechanics/RewardManager;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/AdRewardDialog$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/util/SpecialInt;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/AdRewardDialog$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-static {v0, v1, v2}, Linfo/flowersoft/theotown/ui/AdRewardDialog;->$r8$lambda$ex_iNvu4Gu0IpgWGYMSfMKvraeA(Linfo/flowersoft/theotown/mechanics/RewardManager;Linfo/flowersoft/theotown/util/SpecialInt;Linfo/flowersoft/theotown/mechanics/GameHandler;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.AdRewardDialog$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.AdRewardDialog$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/AdRewardDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/AdRewardDialog;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/AdRewardDialog;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/AdRewardDialog$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/AdRewardDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/AdRewardDialog$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/AdRewardDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/AdRewardDialog;->$r8$lambda$ZX9CjeYYyoCkr0eMFzYR9Ty0XW8(Linfo/flowersoft/theotown/ui/AdRewardDialog;)V

    return-void
.end method
