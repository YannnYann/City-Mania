###### Class info.flowersoft.theotown.ui.DiamondShopDialog (info.flowersoft.theotown.ui.DiamondShopDialog)
.class public Linfo/flowersoft/theotown/ui/DiamondShopDialog;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "DiamondShopDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;,
        Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;,
        Linfo/flowersoft/theotown/ui/DiamondShopDialog$IconItemWidth;
    }
.end annotation


# static fields
.field public static lastOpened:J


# instance fields
.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final invitationIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final invitationTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final invitationsConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public lastRedeemResult:Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;

.field public final listBox:Lio/blueflower/stapel2d/gui/ListBox;

.field public redeemRunning:Z

.field public final rtl:Z

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
.method public static synthetic $r8$lambda$-TU4TKicWpBRpZ_buMNe90zjBqA(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)V
    .registers 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->purchaseManager:Lcom/badlogic/gdx/pay/PurchaseManager;

    invoke-interface {v0}, Lcom/badlogic/gdx/pay/PurchaseManager;->purchaseRestore()V

    .line 242
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->saveData()V

    .line 244
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_UPGRADE:I

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x991

    .line 245
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xdc3

    .line 246
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    .line 247
    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v4

    check-cast v4, Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 248
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object p0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x76b

    invoke-interface {p0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 249
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$4Mz7Op19_2_faIemHzDwBW8605k(Linfo/flowersoft/theotown/draft/FeatureDraft;)V
    .registers 1

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$753QL9I6Bu7PNcwf7Dq-k3FEfjs(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Linfo/flowersoft/theotown/mechanics/RewardManager;)V
    .registers 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    invoke-virtual {p1}, Linfo/flowersoft/theotown/mechanics/RewardManager;->isTimeForReward()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    .line 401
    new-instance v2, Linfo/flowersoft/theotown/ui/DailyPresentDialog;

    invoke-virtual {p1}, Linfo/flowersoft/theotown/mechanics/RewardManager;->getRewardDay()I

    move-result v3

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    .line 402
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lio/blueflower/stapel2d/gui/Master;

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-object v6, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    iget-object v7, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct/range {v2 .. v7}, Linfo/flowersoft/theotown/ui/DailyPresentDialog;-><init>(ILio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 404
    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void

    .line 406
    :cond_26
    new-instance p1, Linfo/flowersoft/theotown/ui/AdRewardDialog;

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/gui/Master;

    iget-object p0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {p1, v0, v2, p0}, Linfo/flowersoft/theotown/ui/AdRewardDialog;-><init>(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 407
    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$HAiGIjNwO0uUsQT8XpNQQHRu-jo(Linfo/flowersoft/theotown/draft/FeatureDraft;)V
    .registers 6

    .line 361
    iget-boolean v0, p0, Linfo/flowersoft/theotown/draft/FeatureDraft;->buyable:Z

    if-eqz v0, :cond_61

    invoke-virtual {p0}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_61

    .line 362
    invoke-static {}, Linfo/flowersoft/theotown/InAppHandler;->getInstance()Linfo/flowersoft/theotown/InAppHandler;

    move-result-object v0

    .line 363
    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->getInstance()Linfo/flowersoft/theotown/resources/Features;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/resources/Features;->isProbablyTestUser()Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, " (TEST)"

    goto :goto_1d

    :cond_1b
    const-string v1, ""

    .line 364
    :goto_1d
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request IAP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " diamonds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 364
    const-string v4, "IAP"

    invoke-interface {v2, v4, v1, v3}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    new-instance v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$$ExternalSyntheticLambda3;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Linfo/flowersoft/theotown/InAppHandler;->requestPurchase(Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/util/Setter;Z)Z

    :cond_61
    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/gui/Master;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p3

    .line 85
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    invoke-virtual/range {p2 .. p2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v2, 0x378

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x12c

    const/16 v5, 0x64

    const-string v3, ""

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    move-object v1, v0

    .line 66
    const-string v0, "invitations"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->invitationsConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->invitationIds:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->invitationTimes:Ljava/util/List;

    move-object/from16 v0, p2

    .line 86
    iput-object v0, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 87
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 88
    invoke-interface {v0}, Lio/blueflower/stapel2d/gamestack/Translator;->prefersRTL()Z

    move-result v0

    iput-boolean v0, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->rtl:Z

    .line 89
    iput-object v9, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    .line 90
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->load()V

    .line 91
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->checkInvitations()V

    const/4 v10, 0x0

    .line 93
    invoke-virtual {v1, v10}, Linfo/flowersoft/theotown/ui/Dialog;->setCanCloseViaBackground(Z)V

    .line 95
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->removeControlLine()V

    .line 97
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    .line 98
    new-instance v2, Linfo/flowersoft/theotown/ui/ColorRect;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cMenuBg:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Linfo/flowersoft/theotown/ui/ColorRect;-><init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 100
    new-instance v11, Lio/blueflower/stapel2d/gui/ListBox;

    const/4 v15, 0x0

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v16

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v11 .. v16}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v11, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    .line 101
    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 102
    invoke-virtual {v11, v10}, Lio/blueflower/stapel2d/gui/ListBox;->setShowBorder(Z)V

    .line 104
    invoke-static {}, Linfo/flowersoft/theotown/InAppHandler;->getInstance()Linfo/flowersoft/theotown/InAppHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/InAppHandler;->fetch()V

    .line 110
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 111
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->FEATURES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_85
    :goto_85
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 112
    iget-boolean v3, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->buyable:Z

    if-eqz v3, :cond_85

    iget-boolean v3, v2, Linfo/flowersoft/theotown/draft/Draft;->hidden:Z

    if-nez v3, :cond_85

    iget-object v3, v2, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v3

    if-lez v3, :cond_85

    .line 113
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_85

    .line 117
    :cond_a5
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->isFriendInvitationsActive()Z

    move-result v0

    const/high16 v12, 0x3f800000    # 1.0f

    if-eqz v0, :cond_177

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->getRedeemedFriendInvitations()I

    move-result v0

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->getTotalFriendInvitations()I

    move-result v2

    if-ge v0, v2, :cond_177

    .line 118
    new-instance v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$1;

    iget-object v2, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    const/16 v5, 0x28

    iget-object v6, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$1;-><init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 124
    new-instance v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog$2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->getRedeemedFriendInvitations()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->getTotalFriendInvitations()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v6

    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object v7, v0

    move-object v0, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$2;-><init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v2, v0

    move-object v0, v7

    const/4 v3, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 131
    invoke-virtual {v2, v3, v4}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 132
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v5, v5, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v2, v5}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 133
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v5}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 134
    new-instance v13, Lio/blueflower/stapel2d/gui/Label;

    iget-object v2, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x477

    invoke-interface {v2, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->getDiamondsPerInvitation()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v2, v6}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v18

    const/16 v15, 0x28

    const/16 v16, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v13 .. v19}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 135
    invoke-virtual {v13, v3, v4}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 136
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x55

    int-to-float v2, v2

    invoke-virtual {v13}, Lio/blueflower/stapel2d/gui/Label;->getTextWidth()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v12, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v13, v2, v12}, Lio/blueflower/stapel2d/gui/Label;->setScale(FF)V

    .line 137
    invoke-virtual {v13, v5}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 138
    new-instance v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$3;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUS:I

    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v3

    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    add-int/lit8 v6, v3, -0x8

    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    add-int/lit8 v7, v3, -0x8

    const-string v3, ""

    const/4 v5, 0x4

    move-object/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$3;-><init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v0, v8

    .line 152
    iget-object v2, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v3, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;

    invoke-direct {v3, v0}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 184
    :cond_177
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    .line 185
    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v2, :cond_189

    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->STORE_NAME:Ljava/lang/String;

    const-string v2, "playstore"

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 207
    :cond_189
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v2, Linfo/flowersoft/theotown/ui/listitem/GroupItem;

    invoke-direct {v2}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;-><init>()V

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 208
    new-instance v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/draft/FeatureDraft;

    const/16 v4, 0x50

    invoke-direct {v0, v1, v3, v4}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;-><init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Linfo/flowersoft/theotown/draft/FeatureDraft;I)V

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->add(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 209
    new-instance v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;

    const/4 v3, 0x1

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-direct {v0, v1, v5, v4}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;-><init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Linfo/flowersoft/theotown/draft/FeatureDraft;I)V

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->add(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 210
    new-instance v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;

    const/4 v5, 0x2

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-direct {v0, v1, v5, v4}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;-><init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Linfo/flowersoft/theotown/draft/FeatureDraft;I)V

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->add(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 212
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v2, Linfo/flowersoft/theotown/ui/listitem/GroupItem;

    invoke-direct {v2}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;-><init>()V

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 213
    new-instance v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;

    const/4 v5, 0x4

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-direct {v0, v1, v5, v4}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;-><init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Linfo/flowersoft/theotown/draft/FeatureDraft;I)V

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->setPopular(Z)Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;

    move-result-object v0

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->add(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 214
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->buildAdRewardItem()Linfo/flowersoft/theotown/ui/IconItem;

    move-result-object v0

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->add(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 218
    invoke-static {}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->isUnlimitedFreeAvailable()Z

    move-result v0

    if-eqz v0, :cond_21d

    .line 219
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v2, Linfo/flowersoft/theotown/ui/listitem/GroupItem;

    invoke-direct {v2}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;-><init>()V

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 220
    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->getInstance()Linfo/flowersoft/theotown/resources/Features;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_FREEFASTSPEED00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/LazyGetter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/FeatureDraft;

    const/16 v3, 0x30

    invoke-virtual {v1, v0, v12, v3}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->buildSingleFeatureItem(Linfo/flowersoft/theotown/draft/FeatureDraft;FI)Linfo/flowersoft/theotown/ui/IconItem;

    move-result-object v0

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->add(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 221
    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->getInstance()Linfo/flowersoft/theotown/resources/Features;

    move-result-object v0

    iget-object v0, v0, Linfo/flowersoft/theotown/resources/Features;->FEATURE_FREETUNNELS00:Linfo/flowersoft/theotown/resources/Features$MyDraftResolver;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/LazyGetter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {v1, v0, v12, v3}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->buildSingleFeatureItem(Linfo/flowersoft/theotown/draft/FeatureDraft;FI)Linfo/flowersoft/theotown/ui/IconItem;

    move-result-object v0

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->add(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 225
    :cond_21d
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v2, Linfo/flowersoft/theotown/ui/listitem/GroupItem;

    invoke-direct {v2}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;-><init>()V

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 227
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->canEarnDiamonds()Z

    move-result v0

    if-eqz v0, :cond_23a

    .line 228
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->buildRedeemItem(Lio/blueflower/stapel2d/gui/ListBox;)Linfo/flowersoft/theotown/ui/IconItem;

    move-result-object v0

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->add(Lio/blueflower/stapel2d/gui/ListItem;)V

    :cond_23a
    if-eqz v9, :cond_243

    .line 232
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->buildFeaturesItem()Linfo/flowersoft/theotown/ui/IconItem;

    move-result-object v0

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->add(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 235
    :cond_243
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v2, :cond_271

    .line 236
    iget-object v0, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v2, Linfo/flowersoft/theotown/ui/listitem/GroupItem;

    invoke-direct {v2}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;-><init>()V

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 237
    new-instance v3, Linfo/flowersoft/theotown/ui/IconItem;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_RESET:I

    iget-object v0, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xa17

    .line 239
    invoke-interface {v0, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Linfo/flowersoft/theotown/ui/DiamondShopDialog$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)V

    const/4 v7, 0x0

    iget-boolean v8, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->rtl:Z

    invoke-direct/range {v3 .. v8}, Linfo/flowersoft/theotown/ui/IconItem;-><init>(ILjava/lang/String;Ljava/lang/Runnable;ZZ)V

    .line 237
    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->add(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 254
    :cond_271
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 255
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v2

    sput-wide v2, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->lastOpened:J

    .line 258
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/Dialog;->getWidth()I

    move-result v0

    iget-object v2, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ListBox;->getContentHeight()I

    move-result v2

    iget-object v3, v1, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setSize(II)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Lio/blueflower/stapel2d/gamestack/Translator;
    .registers 1

    .line 64
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Ljava/util/List;
    .registers 1

    .line 64
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->invitationIds:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)V
    .registers 1

    .line 64
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->save()V

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;
    .registers 1

    .line 64
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Lio/blueflower/stapel2d/util/Setter;
    .registers 1

    .line 64
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;
    .registers 1

    .line 64
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->lastRedeemResult:Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;

    return-object p0
.end method

.method public static synthetic access$502(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;)Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;
    .registers 2

    .line 64
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->lastRedeemResult:Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;

    return-object p1
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Z
    .registers 1

    .line 64
    iget-boolean p0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->redeemRunning:Z

    return p0
.end method

.method public static synthetic access$602(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Z)Z
    .registers 2

    .line 64
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->redeemRunning:Z

    return p1
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Lio/blueflower/stapel2d/gui/ListBox;
    .registers 1

    .line 64
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    return-object p0
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 64
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->runScript(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static isUnlimitedFreeAvailable()Z
    .registers 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public allocateFriendInvitationURL()Ljava/lang/String;
    .registers 7

    const/16 v0, 0x8

    .line 746
    invoke-static {v0}, Linfo/flowersoft/theotown/util/RandomUtil;->generateRandomString(I)Ljava/lang/String;

    move-result-object v0

    .line 747
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->invitationIds:Ljava/util/List;

    monitor-enter v1

    .line 748
    :try_start_9
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->invitationIds:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->invitationTimes:Ljava/util/List;

    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->save()V

    .line 751
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_5b

    .line 752
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v2, "Invitation"

    const-string v3, "Alloc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->getRedeemedFriendInvitations()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->invitationsConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v2, "base url"

    const-string v3, "https://theotown.com/share?id="

    invoke-virtual {v1, v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_5b
    move-exception v0

    .line 751
    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0
.end method

.method public final buildAdRewardItem()Linfo/flowersoft/theotown/ui/IconItem;
    .registers 10

    .line 395
    new-instance v7, Linfo/flowersoft/theotown/resources/AdReward;

    invoke-direct {v7}, Linfo/flowersoft/theotown/resources/AdReward;-><init>()V

    .line 396
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v8

    .line 397
    invoke-virtual {v8}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getRewardManager()Linfo/flowersoft/theotown/mechanics/RewardManager;

    move-result-object v0

    move-object v1, v0

    .line 399
    new-instance v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$8;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_GOLDEN_PRESENT:I

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x3c3

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/ui/DiamondShopDialog$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Linfo/flowersoft/theotown/mechanics/RewardManager;)V

    const/4 v5, 0x1

    iget-boolean v6, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->rtl:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$8;-><init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;ILjava/lang/String;Ljava/lang/Runnable;ZZLinfo/flowersoft/theotown/resources/AdReward;Linfo/flowersoft/theotown/mechanics/GameHandler;)V

    return-object v0
.end method

.method public final buildFeaturesItem()Linfo/flowersoft/theotown/ui/IconItem;
    .registers 7

    .line 348
    new-instance v0, Linfo/flowersoft/theotown/ui/IconItem;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_FEATURES:I

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xccf

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/ui/DiamondShopDialog$6;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$6;-><init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)V

    const/4 v4, 0x0

    iget-boolean v5, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->rtl:Z

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/IconItem;-><init>(ILjava/lang/String;Ljava/lang/Runnable;ZZ)V

    return-object v0
.end method

.method public final buildRedeemItem(Lio/blueflower/stapel2d/gui/ListBox;)Linfo/flowersoft/theotown/ui/IconItem;
    .registers 10

    .line 424
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->getCodeData()Linfo/flowersoft/theotown/resources/PersistentData;

    move-result-object p1

    .line 425
    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/PersistentData;->read()Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v0

    .line 426
    const-string v1, "redeemed"

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/JSONUtil;->optArray(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object v1

    .line 427
    new-instance v2, Linfo/flowersoft/theotown/ui/IconItem;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_AWARD:I

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x3b7

    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;

    invoke-direct {v5, p0, v1, p1, v0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;-><init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Linfo/flowersoft/theotown/util/json/JSONArray;Linfo/flowersoft/theotown/resources/PersistentData;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    const/4 v6, 0x0

    iget-boolean v7, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->rtl:Z

    invoke-direct/range {v2 .. v7}, Linfo/flowersoft/theotown/ui/IconItem;-><init>(ILjava/lang/String;Ljava/lang/Runnable;ZZ)V

    return-object v2
.end method

.method public final buildSingleFeatureItem(Linfo/flowersoft/theotown/draft/FeatureDraft;FI)Linfo/flowersoft/theotown/ui/IconItem;
    .registers 14

    .line 359
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const-string v3, ""

    invoke-direct {v0, v2, v3}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    .line 360
    new-instance v2, Linfo/flowersoft/theotown/ui/DiamondShopDialog$7;

    iget-object v3, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Linfo/flowersoft/theotown/ui/DiamondShopDialog$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/draft/FeatureDraft;)V

    const/4 v5, 0x1

    iget-boolean v6, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->rtl:Z

    move v1, v3

    move-object v3, v0

    move-object v0, v2

    move v2, v1

    move-object v1, p0

    move-object v9, p1

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$7;-><init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;ILjava/lang/String;Ljava/lang/Runnable;ZZFILinfo/flowersoft/theotown/draft/FeatureDraft;)V

    return-object v0
.end method

.method public final checkInvitations()V
    .registers 2

    .line 300
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->invitationIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 301
    new-instance v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$4;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$4;-><init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)V

    .line 313
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 315
    :cond_11
    new-instance v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$5;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$5;-><init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)V

    .line 343
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final getCodeData()Linfo/flowersoft/theotown/resources/PersistentData;
    .registers 3

    .line 530
    new-instance v0, Linfo/flowersoft/theotown/resources/PersistentData;

    const-string v1, "codes"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/resources/PersistentData;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getDiamondsPerInvitation()I
    .registers 4

    .line 763
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->invitationsConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "diamonds"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRedeemedFriendInvitations()I
    .registers 6

    .line 767
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 769
    :goto_6
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->getTotalFriendInvitations()I

    move-result v3

    if-ge v1, v3, :cond_28

    .line 770
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":shop:friend_invitation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->isEventRedeemed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    add-int/lit8 v2, v2, 0x1

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_28
    return v2
.end method

.method public getTotalFriendInvitations()I
    .registers 3

    .line 759
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->invitationsConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "total"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isFriendInvitationsActive()Z
    .registers 3

    .line 740
    sget-boolean v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-nez v0, :cond_18

    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    .line 741
    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->supportsShareText()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->invitationsConfig:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v1, "active"

    .line 742
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public final load()V
    .registers 11

    .line 262
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    const-string v1, "shopninvitiations"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->load()Linfo/flowersoft/theotown/util/SSP$Reader;

    move-result-object v0

    .line 266
    :try_start_b
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->invitationIds:Ljava/util/List;

    monitor-enter v1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_59

    .line 267
    :try_start_e
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->invitationIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 268
    new-instance v2, Linfo/flowersoft/theotown/util/json/JSONArray;

    const-string v3, "invitationids"

    const-string v4, "[]"

    invoke-interface {v0, v3, v4}, Linfo/flowersoft/theotown/util/SSP$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 269
    :goto_21
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_55

    .line 270
    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/util/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    .line 271
    invoke-virtual {v2, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->optLong(I)J

    move-result-wide v4

    .line 272
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v6

    invoke-virtual {v6}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/32 v8, 0x240c8400

    cmp-long v6, v6, v8

    if-gez v6, :cond_52

    .line 273
    iget-object v6, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->invitationIds:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->invitationTimes:Ljava/util/List;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_52

    :catchall_50
    move-exception v0

    goto :goto_57

    :cond_52
    :goto_52
    add-int/lit8 v0, v0, 0x2

    goto :goto_21

    .line 277
    :cond_55
    monitor-exit v1

    return-void

    :goto_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_e .. :try_end_58} :catchall_50

    :try_start_58
    throw v0
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_59} :catch_59

    :catch_59
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onUpdate()V
    .registers 9

    .line 535
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/Dialog;->onUpdate()V

    .line 537
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->lastRedeemResult:Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;

    if-eqz v0, :cond_8d

    iget-boolean v1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->redeemRunning:Z

    if-nez v1, :cond_8d

    .line 538
    iget-boolean v1, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;->successful:Z

    const/16 v2, 0x98f

    const/4 v3, 0x1

    if-eqz v1, :cond_5b

    .line 539
    iget v0, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;->diamonds:I

    if-lez v0, :cond_8a

    .line 540
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x825

    .line 541
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x56e

    .line 542
    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->lastRedeemResult:Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;

    iget v6, v6, Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;->diamonds:I

    int-to-long v6, v6

    .line 543
    invoke-static {v6, v7}, Linfo/flowersoft/theotown/util/Localizer;->localizeDiamonds(J)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 542
    invoke-static {v5, v6}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 544
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v6

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v6

    check-cast v6, Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v4, v5, v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 545
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-interface {v4, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 546
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    goto :goto_8a

    .line 549
    :cond_5b
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->FRAME_ZONE_OVERLOADED:I

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xb08

    .line 550
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x2c

    .line 551
    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    .line 552
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v6

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v6

    check-cast v6, Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v4, v5, v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 553
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-interface {v4, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 554
    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    :cond_8a
    :goto_8a
    const/4 v0, 0x0

    .line 556
    iput-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->lastRedeemResult:Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;

    :cond_8d
    return-void
.end method

.method public redeemFriendInvitation()Z
    .registers 8

    .line 776
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 777
    :goto_6
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->getTotalFriendInvitations()I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 778
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":shop:friend_invitation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->isEventRedeemed(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_58

    .line 779
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->getDiamondsPerInvitation()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "friend invistaion "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v2, v5}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnDiamondsEvent(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 780
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->getDiamondsPerInvitation()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->addEvent(ID)V

    return v5

    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5b
    return v1
.end method

.method public final runScript(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 514
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    .line 515
    const-string v1, "$script_redeem00"

    const-class v2, Linfo/flowersoft/theotown/draft/ScriptDraft;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    .line 516
    new-instance v2, Linfo/flowersoft/theotown/scripting/Script;

    const/4 v3, 0x0

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Linfo/flowersoft/theotown/util/vfs/VirtualFile;->createFile(Ljava/lang/String;[BLinfo/flowersoft/theotown/util/vfs/AbstractFile;)Linfo/flowersoft/theotown/util/vfs/VirtualFile;

    move-result-object v3

    invoke-direct {v2, v1, v1, p1, v3}, Linfo/flowersoft/theotown/scripting/Script;-><init>(Linfo/flowersoft/theotown/draft/Draft;Linfo/flowersoft/theotown/draft/Draft;Ljava/lang/String;Linfo/flowersoft/theotown/util/vfs/AbstractFile;)V

    .line 519
    :try_start_19
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 520
    invoke-virtual {v0, p2, p1}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->loadString(Ljava/lang/String;Ljava/lang/String;)Lvm2/LuaFunction;

    move-result-object p1

    .line 521
    invoke-virtual {p1}, Lvm2/LuaValue;->invoke()Lvm2/Varargs;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_23} :catch_29
    .catchall {:try_start_19 .. :try_end_23} :catchall_27

    .line 525
    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    return-void

    :catchall_27
    move-exception p1

    goto :goto_31

    :catch_29
    move-exception p1

    .line 523
    :try_start_2a
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_27

    .line 525
    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    return-void

    :goto_31
    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->setCurrentScript(Linfo/flowersoft/theotown/scripting/Script;)V

    .line 526
    throw p1
.end method

.method public final save()V
    .registers 6

    .line 284
    new-instance v0, Linfo/flowersoft/theotown/util/SSP;

    const-string v1, "shopninvitiations"

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/util/SSP;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SSP;->edit()Linfo/flowersoft/theotown/util/SSP$Writer;

    move-result-object v0

    .line 287
    new-instance v1, Linfo/flowersoft/theotown/util/json/JSONArray;

    invoke-direct {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;-><init>()V

    .line 288
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->invitationIds:Ljava/util/List;

    monitor-enter v2

    const/4 v3, 0x0

    .line 289
    :goto_14
    :try_start_14
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->invitationIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_33

    .line 290
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->invitationIds:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 291
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->invitationTimes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :catchall_31
    move-exception v0

    goto :goto_41

    .line 293
    :cond_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_31

    .line 295
    const-string v2, "invitationids"

    invoke-virtual {v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Linfo/flowersoft/theotown/util/SSP$Writer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-interface {v0}, Linfo/flowersoft/theotown/util/SSP$Writer;->apply()V

    return-void

    .line 293
    :goto_41
    :try_start_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_31

    throw v0
.end method

###### Class info.flowersoft.theotown.ui.DiamondShopDialog.AnonymousClass1 (info.flowersoft.theotown.ui.DiamondShopDialog$1)
.class Linfo/flowersoft/theotown/ui/DiamondShopDialog$1;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "DiamondShopDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/DiamondShopDialog;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 118
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$1;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 121
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.DiamondShopDialog.AnonymousClass2 (info.flowersoft.theotown.ui.DiamondShopDialog$2)
.class public Linfo/flowersoft/theotown/ui/DiamondShopDialog$2;
.super Lio/blueflower/stapel2d/gui/Label;
.source "DiamondShopDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/DiamondShopDialog;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .line 124
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$2;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 3

    .line 127
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->onUpdate()V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$2;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->getRedeemedFriendInvitations()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$2;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->getTotalFriendInvitations()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.DiamondShopDialog.AnonymousClass3 (info.flowersoft.theotown.ui.DiamondShopDialog$3)
.class Linfo/flowersoft/theotown/ui/DiamondShopDialog$3;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "DiamondShopDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/DiamondShopDialog;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 138
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$3;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .registers 3

    .line 149
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Gadget;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$3;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->getRedeemedFriendInvitations()I

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$3;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->getTotalFriendInvitations()I

    move-result v1

    if-ge v0, v1, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public onClick()V
    .registers 5

    .line 141
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 142
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$3;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    .line 143
    invoke-static {v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$000(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    const/16 v2, 0x44e

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$3;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    .line 144
    invoke-static {v2}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$000(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    const/16 v3, 0x9d5

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$3;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->allocateFriendInvitationURL()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-interface {v0, v1, v2}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->shareText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.DiamondShopDialog.AnonymousClass4 (info.flowersoft.theotown.ui.DiamondShopDialog$4)
.class Linfo/flowersoft/theotown/ui/DiamondShopDialog$4;
.super Ljava/lang/Thread;
.source "DiamondShopDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/DiamondShopDialog;->checkInvitations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 301
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$4;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 305
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "https://theotown.com/share?id=0?check=true"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 306
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 307
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 308
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception v0

    .line 310
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v2, "Invitation Check"

    invoke-interface {v1, v2, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.DiamondShopDialog.AnonymousClass5 (info.flowersoft.theotown.ui.DiamondShopDialog$5)
.class Linfo/flowersoft/theotown/ui/DiamondShopDialog$5;
.super Ljava/lang/Thread;
.source "DiamondShopDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/DiamondShopDialog;->checkInvitations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 315
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$5;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    .line 318
    :goto_2
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$5;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v2}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$100(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c0

    .line 321
    :try_start_e
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$5;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v2}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$100(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_b0

    .line 322
    :try_start_15
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$5;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v3}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$100(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 323
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_b2

    .line 324
    :try_start_22
    new-instance v2, Ljava/net/URL;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://theotown.com/share?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&check=true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 325
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 326
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 328
    new-instance v4, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v4, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "redeemed"

    invoke-virtual {v4, v2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 329
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$5;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v2}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$100(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_68} :catch_b0

    .line 330
    :try_start_68
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$5;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->getTotalFriendInvitations()I

    move-result v4

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$5;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->getRedeemedFriendInvitations()I

    move-result v5

    if-le v4, v5, :cond_ac

    .line 331
    sget-object v4, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v5, "Invitation"

    const-string v6, "Redeem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$5;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-virtual {v8}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->getRedeemedFriendInvitations()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$5;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v4}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$100(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 333
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$5;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->redeemFriendInvitation()Z

    .line 334
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$5;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v3}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$200(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)V

    goto :goto_ac

    :catchall_aa
    move-exception v3

    goto :goto_ae

    .line 336
    :cond_ac
    :goto_ac
    monitor-exit v2

    goto :goto_bc

    :goto_ae
    monitor-exit v2
    :try_end_af
    .catchall {:try_start_68 .. :try_end_af} :catchall_aa

    :try_start_af
    throw v3
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b0} :catch_b0

    :catch_b0
    move-exception v2

    goto :goto_b5

    :catchall_b2
    move-exception v3

    .line 323
    :try_start_b3
    monitor-exit v2
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    :try_start_b4
    throw v3
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b5} :catch_b0

    .line 339
    :goto_b5
    sget-object v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v4, "Invitation Check"

    invoke-interface {v3, v4, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_bc
    :goto_bc
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_c0
    return-void
.end method

###### Class info.flowersoft.theotown.ui.DiamondShopDialog.AnonymousClass6 (info.flowersoft.theotown.ui.DiamondShopDialog$6)
.class Linfo/flowersoft/theotown/ui/DiamondShopDialog$6;
.super Ljava/lang/Object;
.source "DiamondShopDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/DiamondShopDialog;->buildFeaturesItem()Linfo/flowersoft/theotown/ui/IconItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 348
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$6;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 351
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$6;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 352
    new-instance v0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$6;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$300(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$6;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    iget-object v2, v2, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v2

    check-cast v2, Lio/blueflower/stapel2d/gui/Master;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$6;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    .line 353
    invoke-static {v3}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$400(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Lio/blueflower/stapel2d/util/Setter;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/FeaturesShopDialog;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.DiamondShopDialog.AnonymousClass7 (info.flowersoft.theotown.ui.DiamondShopDialog$7)
.class Linfo/flowersoft/theotown/ui/DiamondShopDialog$7;
.super Linfo/flowersoft/theotown/ui/DiamondShopDialog$IconItemWidth;
.source "DiamondShopDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/DiamondShopDialog;->buildSingleFeatureItem(Linfo/flowersoft/theotown/draft/FeatureDraft;FI)Linfo/flowersoft/theotown/ui/IconItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

.field public final synthetic val$feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

.field public final synthetic val$height:I

.field public final synthetic val$widthRatio:F


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;ILjava/lang/String;Ljava/lang/Runnable;ZZFILinfo/flowersoft/theotown/draft/FeatureDraft;)V
    .registers 10
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

    .line 370
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$7;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    iput p7, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$7;->val$widthRatio:F

    iput p8, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$7;->val$height:I

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$7;->val$feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$IconItemWidth;-><init>(ILjava/lang/String;Ljava/lang/Runnable;ZZ)V

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 9

    .line 373
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$7;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 374
    invoke-super/range {p0 .. p7}, Linfo/flowersoft/theotown/ui/IconItem;->draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    :cond_9
    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 385
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$7;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$7;->val$height:I

    return p1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public getWidthRatio()F
    .registers 2

    .line 380
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$7;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$7;->val$widthRatio:F

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final isAvailable()Z
    .registers 2

    .line 389
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$7;->val$feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$7;->val$feature:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/draft/FeatureDraft;->buyable:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.ui.DiamondShopDialog.AnonymousClass8 (info.flowersoft.theotown.ui.DiamondShopDialog$8)
.class Linfo/flowersoft/theotown/ui/DiamondShopDialog$8;
.super Linfo/flowersoft/theotown/ui/DiamondShopDialog$IconItemWidth;
.source "DiamondShopDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/DiamondShopDialog;->buildAdRewardItem()Linfo/flowersoft/theotown/ui/IconItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

.field public final synthetic val$adReward:Linfo/flowersoft/theotown/resources/AdReward;

.field public final synthetic val$gameHandler:Linfo/flowersoft/theotown/mechanics/GameHandler;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;ILjava/lang/String;Ljava/lang/Runnable;ZZLinfo/flowersoft/theotown/resources/AdReward;Linfo/flowersoft/theotown/mechanics/GameHandler;)V
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

    .line 409
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$8;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    iput-object p7, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$8;->val$adReward:Linfo/flowersoft/theotown/resources/AdReward;

    iput-object p8, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$8;->val$gameHandler:Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$IconItemWidth;-><init>(ILjava/lang/String;Ljava/lang/Runnable;ZZ)V

    return-void
.end method


# virtual methods
.method public getWidthRatio()F
    .registers 2

    .line 412
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$8;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$400(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Lio/blueflower/stapel2d/util/Setter;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$8;->val$adReward:Linfo/flowersoft/theotown/resources/AdReward;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/AdReward;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$8;->val$gameHandler:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->canEarnDiamonds()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/high16 v0, 0x3f000000    # 0.5f

    return v0

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.ui.DiamondShopDialog.AnonymousClass9 (info.flowersoft.theotown.ui.DiamondShopDialog$9)
.class Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;
.super Ljava/lang/Object;
.source "DiamondShopDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/DiamondShopDialog;->buildRedeemItem(Lio/blueflower/stapel2d/gui/ListBox;)Linfo/flowersoft/theotown/ui/IconItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

.field public final synthetic val$codeData:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final synthetic val$codeDataHolder:Linfo/flowersoft/theotown/resources/PersistentData;

.field public final synthetic val$redeemedKeys:Linfo/flowersoft/theotown/util/json/JSONArray;


# direct methods
.method public static synthetic $r8$lambda$3_BCEYuajt5VLwdArLs7Pj6Pz2g(Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;Linfo/flowersoft/theotown/util/json/JSONArray;Linfo/flowersoft/theotown/resources/PersistentData;Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)V
    .registers 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p4, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 439
    new-instance p4, Linfo/flowersoft/theotown/resources/RedeemCode;

    invoke-direct {p4, v2}, Linfo/flowersoft/theotown/resources/RedeemCode;-><init>(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$602(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Z)Z

    .line 442
    new-instance v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;-><init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONArray;Linfo/flowersoft/theotown/resources/PersistentData;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 494
    invoke-static {v3, v2}, Linfo/flowersoft/theotown/util/JSONUtil;->contains(Linfo/flowersoft/theotown/util/json/JSONArray;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b

    .line 495
    invoke-virtual {p4, v0}, Linfo/flowersoft/theotown/resources/RedeemCode;->check(Linfo/flowersoft/theotown/resources/RedeemCode$CheckResult;)V

    return-void

    .line 499
    :cond_2b
    const-string p0, "This code has been redeemed already"

    invoke-interface {v0, p0}, Linfo/flowersoft/theotown/resources/RedeemCode$CheckResult;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5d0psqlqgFD13JWQsuuePjbe-pM(Ljava/lang/String;)Z
    .registers 2

    .line 502
    new-instance v0, Linfo/flowersoft/theotown/resources/RedeemCode;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/resources/RedeemCode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/RedeemCode;->isValid()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Linfo/flowersoft/theotown/util/json/JSONArray;Linfo/flowersoft/theotown/resources/PersistentData;Linfo/flowersoft/theotown/util/json/JSONObject;)V
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

    .line 427
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->val$redeemedKeys:Linfo/flowersoft/theotown/util/json/JSONArray;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->val$codeDataHolder:Linfo/flowersoft/theotown/resources/PersistentData;

    iput-object p4, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->val$codeData:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 430
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->canEarnDiamonds()Z

    move-result v0

    if-nez v0, :cond_12

    .line 431
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    const-string v1, "Too much winning"

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void

    .line 435
    :cond_12
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$500(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;

    move-result-object v0

    if-nez v0, :cond_9b

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$600(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 436
    new-instance v0, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$700(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v2}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$000(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v3}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$300(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/key/KeyMapper;)V

    .line 437
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->val$redeemedKeys:Linfo/flowersoft/theotown/util/json/JSONArray;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->val$codeDataHolder:Linfo/flowersoft/theotown/resources/PersistentData;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->val$codeData:Linfo/flowersoft/theotown/util/json/JSONObject;

    new-instance v4, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;Linfo/flowersoft/theotown/util/json/JSONArray;Linfo/flowersoft/theotown/resources/PersistentData;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    invoke-virtual {v0, v4}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOnOk(Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 502
    new-instance v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setFilter(Lio/blueflower/stapel2d/util/Predicate;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 503
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$000(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    const/16 v2, 0x5c5

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setCancelText(Ljava/lang/String;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 504
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$000(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v1

    const/16 v2, 0x211

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->setOkText(Ljava/lang/String;)Linfo/flowersoft/theotown/ui/RenameDialogBuilder;

    .line 505
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_AWARD:I

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    .line 506
    invoke-static {v2}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$000(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v2

    const/16 v3, 0x5fa

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    .line 507
    invoke-static {v3}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$000(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v3

    const/16 v4, 0x192

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 505
    invoke-virtual {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/RenameDialogBuilder;->build(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 507
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    :cond_9b
    return-void
.end method

###### Class info.flowersoft.theotown.ui.DiamondShopDialog.AnonymousClass9.AnonymousClass1 (info.flowersoft.theotown.ui.DiamondShopDialog$9$1)
.class Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;
.super Ljava/lang/Object;
.source "DiamondShopDialog.java"

# interfaces
.implements Linfo/flowersoft/theotown/resources/RedeemCode$CheckResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;

.field public final synthetic val$code:Ljava/lang/String;

.field public final synthetic val$codeData:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public final synthetic val$codeDataHolder:Linfo/flowersoft/theotown/resources/PersistentData;

.field public final synthetic val$redeemedKeys:Linfo/flowersoft/theotown/util/json/JSONArray;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;Ljava/lang/String;Linfo/flowersoft/theotown/util/json/JSONArray;Linfo/flowersoft/theotown/resources/PersistentData;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 6
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

    .line 442
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->this$1:Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->val$code:Ljava/lang/String;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->val$redeemedKeys:Linfo/flowersoft/theotown/util/json/JSONArray;

    iput-object p4, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->val$codeDataHolder:Linfo/flowersoft/theotown/resources/PersistentData;

    iput-object p5, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->val$codeData:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .registers 7

    .line 460
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->this$1:Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    new-instance v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;-><init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog$1;)V

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$502(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;)Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;

    .line 461
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->this$1:Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$500(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;->successful:Z

    .line 462
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->this$1:Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$500(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;

    move-result-object v0

    iput-object p1, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;->errorMessage:Ljava/lang/String;

    .line 464
    const-string v0, "redeem"

    invoke-static {v0}, Linfo/flowersoft/theotown/resources/Resources;->getSpecificConfig(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    .line 465
    const-string v3, "keys"

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 468
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->val$code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_6d

    .line 470
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->this$1:Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;

    iget-object v3, v3, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v3}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$500(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;->successful:Z

    .line 473
    const-string v3, "script"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 474
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5a

    .line 475
    iget-object v4, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->this$1:Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;

    iget-object v4, v4, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v4, v0, v3}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$900(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_5a
    const-string v0, "url"

    invoke-virtual {v2, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 480
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6d

    .line 481
    sget-object v2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v2, v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->openURLInApp(Ljava/lang/String;)V

    .line 489
    :cond_6d
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->this$1:Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$602(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Z)Z

    .line 490
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->val$code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RedeemCode"

    const-string v2, "Failure"

    invoke-interface {v0, v1, v2, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(I)V
    .registers 6

    .line 445
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "redeemed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->val$code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnDiamonds(IZLjava/lang/String;)V

    .line 446
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->this$1:Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    new-instance v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;-><init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog$1;)V

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$502(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;)Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;

    .line 447
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->this$1:Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$500(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;

    move-result-object v0

    iput-boolean v2, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;->successful:Z

    .line 448
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->this$1:Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$500(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;

    move-result-object v0

    iput p1, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;->diamonds:I

    .line 449
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->this$1:Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$602(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Z)Z

    .line 452
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->val$redeemedKeys:Linfo/flowersoft/theotown/util/json/JSONArray;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->val$code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/json/JSONArray;->put(Ljava/lang/Object;)Linfo/flowersoft/theotown/util/json/JSONArray;

    .line 453
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->val$codeDataHolder:Linfo/flowersoft/theotown/resources/PersistentData;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->val$codeData:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/PersistentData;->write(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 455
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$1;->val$code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RedeemCode"

    const-string v2, "Success"

    invoke-interface {v0, v1, v2, p1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.DiamondShopDialog$9$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.DiamondShopDialog$9$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/RenameDialogBuilder$Consumer;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;

.field public final synthetic f$1:Linfo/flowersoft/theotown/util/json/JSONArray;

.field public final synthetic f$2:Linfo/flowersoft/theotown/resources/PersistentData;

.field public final synthetic f$3:Linfo/flowersoft/theotown/util/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;Linfo/flowersoft/theotown/util/json/JSONArray;Linfo/flowersoft/theotown/resources/PersistentData;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/util/json/JSONArray;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/resources/PersistentData;

    iput-object p4, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$$ExternalSyntheticLambda0;->f$3:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/util/json/JSONArray;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/resources/PersistentData;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$$ExternalSyntheticLambda0;->f$3:Linfo/flowersoft/theotown/util/json/JSONObject;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->$r8$lambda$3_BCEYuajt5VLwdArLs7Pj6Pz2g(Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;Linfo/flowersoft/theotown/util/json/JSONArray;Linfo/flowersoft/theotown/resources/PersistentData;Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.DiamondShopDialog$9$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.DiamondShopDialog$9$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/DiamondShopDialog$9$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$9;->$r8$lambda$5d0psqlqgFD13JWQsuuePjbe-pM(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.ui.DiamondShopDialog.BuyItem (info.flowersoft.theotown.ui.DiamondShopDialog$BuyItem)
.class Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "DiamondShopDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/DiamondShopDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BuyItem"
.end annotation


# instance fields
.field public cmd:Linfo/flowersoft/theotown/ui/GoldButton;

.field public featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

.field public height:I

.field public oldPriceDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

.field public popular:Z

.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;


# direct methods
.method public static synthetic $r8$lambda$PNEA_ogbXWgW8bjM9H-bKhpTONc(Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;)V
    .registers 2

    .line 710
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    const/4 v0, 0x0

    .line 710
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ti1mxN1I45RkCfKdv3IExt7exNE(Ljava/lang/Runnable;Linfo/flowersoft/theotown/draft/FeatureDraft;)V
    .registers 2

    .line 722
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Linfo/flowersoft/theotown/draft/FeatureDraft;I)V
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 583
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    .line 584
    const-string v0, ""

    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 585
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 586
    iput p3, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->height:I

    .line 588
    iget-object p3, p2, Linfo/flowersoft/theotown/draft/Draft;->meta:Linfo/flowersoft/theotown/util/json/JSONObject;

    const-string v0, "tags"

    invoke-virtual {p3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optJSONObject(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_36

    .line 590
    const-string v0, "old price"

    invoke-virtual {p3, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_36

    .line 592
    sget-object v0, Linfo/flowersoft/theotown/resources/Drafts;->ALL:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Linfo/flowersoft/theotown/draft/FeatureDraft;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->oldPriceDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    if-eqz p3, :cond_36

    .line 593
    iget p2, p2, Linfo/flowersoft/theotown/draft/FeatureDraft;->microPrice:I

    if-eqz p2, :cond_33

    iget p3, p3, Linfo/flowersoft/theotown/draft/FeatureDraft;->microPrice:I

    if-eqz p3, :cond_33

    if-gt p3, p2, :cond_36

    :cond_33
    const/4 p2, 0x0

    .line 596
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->oldPriceDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 602
    :cond_36
    new-instance v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem$1;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOAN:I

    const/16 v7, 0x18

    invoke-static {p1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$700(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v8

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x58

    move-object v1, p0

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem$1;-><init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/DiamondShopDialog;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->cmd:Linfo/flowersoft/theotown/ui/GoldButton;

    const/4 p1, 0x1

    .line 609
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/GoldButton;->setGreen(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 27

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p7

    .line 619
    iget-object v5, v4, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 621
    iget-object v6, v4, Lio/blueflower/stapel2d/gui/Skin;->cMenuItem:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 623
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v7, v1

    int-to-float v8, v2

    int-to-float v9, v3

    add-int/lit8 v12, p6, -0x1

    int-to-float v10, v12

    iget v11, v4, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectBordered:I

    invoke-virtual/range {v5 .. v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    const/16 v6, 0xc8

    .line 625
    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 626
    iget-object v6, v4, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 627
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v7, v1

    int-to-float v8, v2

    int-to-float v9, v3

    int-to-float v10, v12

    sget v11, Linfo/flowersoft/theotown/resources/Resources;->FRAME_SHOPITEM_BACKGROUND:I

    invoke-virtual/range {v5 .. v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 631
    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    const/high16 v6, 0x3f000000    # 0.5f

    .line 632
    invoke-virtual {v5, v6, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 633
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v10, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget-object v10, v10, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v14, 0x0

    aget v13, v10, v14

    const/high16 v10, 0x428c0000    # 70.0f

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual/range {v5 .. v13}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 636
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v10

    long-to-int v6, v10

    if-gez v6, :cond_57

    const/high16 v8, -0x80000000

    sub-int/2addr v6, v8

    .line 638
    :cond_57
    rem-int/lit16 v6, v6, 0x1388

    mul-int/lit8 v8, v1, 0xd

    add-int/2addr v6, v8

    mul-int/lit8 v8, v2, 0x1d

    add-int/2addr v6, v8

    int-to-float v6, v6

    const v8, 0x459c4000    # 5000.0f

    div-float/2addr v6, v8

    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v6, v15

    float-to-double v10, v6

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v6, v10

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 639
    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 640
    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v6, 0xff

    .line 641
    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    move v8, v6

    .line 642
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v10, v2, -0x2

    int-to-float v10, v10

    iget-object v11, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget-object v11, v11, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v13, v11, v14

    move v11, v8

    move v8, v10

    const/high16 v10, 0x428c0000    # 70.0f

    move v12, v11

    const/high16 v11, 0x3f000000    # 0.5f

    move/from16 v16, v12

    const/high16 v12, 0x3f000000    # 0.5f

    move/from16 p1, v15

    move/from16 v15, v16

    invoke-virtual/range {v5 .. v13}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 644
    invoke-virtual {v5, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 645
    sget-object v14, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 646
    invoke-virtual {v5, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 647
    invoke-virtual {v5, v6, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 649
    invoke-virtual {v5, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 655
    iget-boolean v6, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->popular:Z

    if-eqz v6, :cond_e2

    .line 658
    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->CYAN:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 659
    iget-object v6, v4, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v7, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v7}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$000(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v7

    const/16 v8, 0xa24

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v1, 0x2

    int-to-float v8, v8

    add-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 665
    :cond_e2
    iget-object v6, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v6}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->access$000(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v6

    const/16 v7, 0x9f9

    invoke-interface {v6, v7}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamonds:Linfo/flowersoft/theotown/util/SpecialInt;

    .line 666
    invoke-virtual {v7}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v7

    int-to-long v7, v7

    invoke-static {v7, v8}, Linfo/flowersoft/theotown/util/Localizer;->localizeDiamonds(J)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 665
    invoke-static {v6, v7}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 667
    iget-object v13, v4, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 668
    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->BLACK:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v7, 0x78

    .line 669
    invoke-virtual {v5, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move-object v10, v6

    .line 670
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    div-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v1

    int-to-float v7, v7

    .line 671
    invoke-virtual {v13, v12}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v8

    div-float v8, v8, p1

    sub-float v8, v7, v8

    sub-float v8, v8, p1

    add-int/lit8 v9, v2, 0x3

    int-to-float v9, v9

    .line 673
    invoke-virtual {v13, v12}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v11

    const/high16 v16, 0x40800000    # 4.0f

    add-float v11, v11, v16

    move-object/from16 v16, v10

    .line 674
    invoke-virtual {v13, v12}, Lio/blueflower/stapel2d/drawing/Font;->getHeight(Ljava/lang/String;)F

    move-result v10

    move/from16 v17, v7

    move v7, v8

    move v8, v9

    move v9, v11

    iget v11, v4, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectBordered:I

    .line 670
    invoke-virtual/range {v5 .. v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 676
    invoke-virtual {v5, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 677
    invoke-virtual {v5, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    move-object v10, v5

    .line 678
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v5

    move-object v6, v12

    const/high16 v12, 0x3f000000    # 0.5f

    move-object v9, v13

    const/4 v13, 0x0

    move-object v11, v10

    move-object/from16 v10, v16

    move/from16 v7, v17

    invoke-virtual/range {v5 .. v13}, Linfo/flowersoft/theotown/drawing/Drawing;->drawShadowedText(Ljava/lang/String;FFLio/blueflower/stapel2d/drawing/Font;Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/drawing/Engine;FF)V

    move-object v5, v11

    .line 682
    invoke-virtual {v5, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 683
    iget-object v6, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->cmd:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v7

    sub-int v7, v3, v7

    div-int/lit8 v7, v7, 0x2

    iget v8, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->height:I

    add-int/lit8 v8, v8, -0x1c

    invoke-virtual {v6, v7, v8}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    .line 684
    iget-object v6, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->cmd:Linfo/flowersoft/theotown/ui/GoldButton;

    iget-object v7, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget-object v7, v7, Linfo/flowersoft/theotown/draft/FeatureDraft;->formattedPrice:Ljava/lang/String;

    invoke-virtual {v6, v7}, Linfo/flowersoft/theotown/ui/IconButton;->setText(Ljava/lang/String;)V

    .line 685
    iget-object v6, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->cmd:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v6, v1, v2}, Linfo/flowersoft/theotown/ui/GoldButton;->draw(II)V

    .line 687
    iget-object v6, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->oldPriceDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    if-eqz v6, :cond_1c0

    .line 688
    iget-object v6, v6, Linfo/flowersoft/theotown/draft/FeatureDraft;->formattedPrice:Ljava/lang/String;

    .line 689
    iget-object v4, v4, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    .line 690
    invoke-virtual {v5, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v7, 0x64

    .line 691
    invoke-virtual {v5, v7}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    add-int v7, v1, v3

    add-int/lit8 v7, v7, -0x6

    int-to-float v7, v7

    add-int/lit8 v8, v2, 0xe

    int-to-float v8, v8

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    .line 692
    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    .line 693
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v8

    invoke-virtual {v4, v6}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v4

    sub-float v4, v7, v4

    add-int/lit8 v6, v2, 0x16

    int-to-float v6, v6

    add-int/lit8 v9, v2, 0x12

    int-to-float v9, v9

    move-object v10, v5

    move v5, v4

    move-object v4, v8

    move v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v4 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawLine(FFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    move-object v5, v10

    .line 695
    invoke-virtual {v5, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 696
    invoke-virtual {v5, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 699
    :cond_1c0
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->cmd:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v5

    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v5

    sub-int/2addr v1, v5

    iget-object v5, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->cmd:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iget-object v3, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->cmd:Linfo/flowersoft/theotown/ui/GoldButton;

    .line 700
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->height:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1a

    .line 699
    invoke-virtual {v4, v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 728
    iget p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->height:I

    return p1
.end method

.method public onClick(II)V
    .registers 7

    .line 705
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    .line 706
    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->getInstance()Linfo/flowersoft/theotown/resources/Features;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/resources/Features;->isProbablyTestUser()Z

    move-result p1

    if-eqz p1, :cond_10

    const-string p1, " (TEST)"

    goto :goto_12

    :cond_10
    const-string p1, ""

    .line 708
    :goto_12
    invoke-static {}, Linfo/flowersoft/theotown/InAppHandler;->getInstance()Linfo/flowersoft/theotown/InAppHandler;

    move-result-object p2

    .line 709
    new-instance v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;)V

    .line 713
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/FeatureDraft;->isPurchased()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 714
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/InAppHandler;->consume(Linfo/flowersoft/theotown/draft/FeatureDraft;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 715
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2e
    return-void

    .line 718
    :cond_2f
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request IAP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget-object v3, v3, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " diamonds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 718
    const-string v3, "IAP"

    invoke-interface {v1, v3, p1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    new-instance v1, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v1, v0}, Linfo/flowersoft/theotown/InAppHandler;->requestPurchase(Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/util/Setter;Z)Z

    return-void
.end method

.method public setPopular(Z)Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;
    .registers 2

    .line 613
    iput-boolean p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->popular:Z

    return-object p0
.end method

###### Class info.flowersoft.theotown.ui.DiamondShopDialog.BuyItem.AnonymousClass1 (info.flowersoft.theotown.ui.DiamondShopDialog$BuyItem$1)
.class public Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem$1;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "DiamondShopDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;-><init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Linfo/flowersoft/theotown/draft/FeatureDraft;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;

.field public final synthetic val$this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/DiamondShopDialog;)V
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

    .line 602
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem$1;->this$1:Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;

    iput-object p9, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem$1;->val$this$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 605
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 606
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem$1;->this$1:Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->onClick(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.DiamondShopDialog$BuyItem$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.DiamondShopDialog$BuyItem$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->$r8$lambda$PNEA_ogbXWgW8bjM9H-bKhpTONc(Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.DiamondShopDialog$BuyItem$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.DiamondShopDialog$BuyItem$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Runnable;

    check-cast p1, Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$BuyItem;->$r8$lambda$ti1mxN1I45RkCfKdv3IExt7exNE(Ljava/lang/Runnable;Linfo/flowersoft/theotown/draft/FeatureDraft;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.DiamondShopDialog.IconItemWidth (info.flowersoft.theotown.ui.DiamondShopDialog$IconItemWidth)
.class abstract Linfo/flowersoft/theotown/ui/DiamondShopDialog$IconItemWidth;
.super Linfo/flowersoft/theotown/ui/IconItem;
.source "DiamondShopDialog.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/listitem/GroupItem$Item;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/DiamondShopDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IconItemWidth"
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Runnable;ZZ)V
    .registers 6

    .line 419
    invoke-direct/range {p0 .. p5}, Linfo/flowersoft/theotown/ui/IconItem;-><init>(ILjava/lang/String;Ljava/lang/Runnable;ZZ)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.DiamondShopDialog.RedeemCodeResult (info.flowersoft.theotown.ui.DiamondShopDialog$RedeemCodeResult)
.class public Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;
.super Ljava/lang/Object;
.source "DiamondShopDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/DiamondShopDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RedeemCodeResult"
.end annotation


# instance fields
.field public diamonds:I

.field public errorMessage:Ljava/lang/String;

.field public successful:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog$1;)V
    .registers 2

    .line 732
    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog$RedeemCodeResult;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.DiamondShopDialog$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.DiamondShopDialog$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/DiamondShopDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->$r8$lambda$-TU4TKicWpBRpZ_buMNe90zjBqA(Linfo/flowersoft/theotown/ui/DiamondShopDialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.DiamondShopDialog$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.DiamondShopDialog$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/DiamondShopDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/draft/FeatureDraft;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/draft/FeatureDraft;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/draft/FeatureDraft;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->$r8$lambda$HAiGIjNwO0uUsQT8XpNQQHRu-jo(Linfo/flowersoft/theotown/draft/FeatureDraft;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.DiamondShopDialog$$ExternalSyntheticLambda2 (info.flowersoft.theotown.ui.DiamondShopDialog$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/ui/DiamondShopDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

.field public final synthetic f$1:Linfo/flowersoft/theotown/mechanics/RewardManager;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Linfo/flowersoft/theotown/mechanics/RewardManager;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/mechanics/RewardManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/DiamondShopDialog$$ExternalSyntheticLambda2;->f$1:Linfo/flowersoft/theotown/mechanics/RewardManager;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->$r8$lambda$753QL9I6Bu7PNcwf7Dq-k3FEfjs(Linfo/flowersoft/theotown/ui/DiamondShopDialog;Linfo/flowersoft/theotown/mechanics/RewardManager;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.DiamondShopDialog$$ExternalSyntheticLambda3 (info.flowersoft.theotown.ui.DiamondShopDialog$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/ui/DiamondShopDialog$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-static {p1}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;->$r8$lambda$4Mz7Op19_2_faIemHzDwBW8605k(Linfo/flowersoft/theotown/draft/FeatureDraft;)V

    return-void
.end method
