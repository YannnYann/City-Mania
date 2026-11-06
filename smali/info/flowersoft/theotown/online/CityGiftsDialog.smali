###### Class info.flowersoft.theotown.online.CityGiftsDialog (info.flowersoft.theotown.online.CityGiftsDialog)
.class public Linfo/flowersoft/theotown/online/CityGiftsDialog;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "CityGiftsDialog.java"


# instance fields
.field public final REPORT_FRAME:I

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public forceRebuild:Z

.field public final gameStack:Lio/blueflower/stapel2d/util/Setter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;"
        }
    .end annotation
.end field

.field public final giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;

.field public gifts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/online/VirtualGift;",
            ">;"
        }
    .end annotation
.end field

.field public final listBox:Lio/blueflower/stapel2d/gui/ListBox;

.field public final translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public static synthetic $r8$lambda$pqrL5MsVcXURZwjqTKLB29CX5ic(Linfo/flowersoft/theotown/online/CityGiftsDialog;Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isForumConnected()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 96
    new-instance v1, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;

    iget-object p0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lio/blueflower/stapel2d/gui/Master;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;-><init>(Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    const/4 p0, 0x1

    invoke-virtual {v1, p0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void

    :cond_28
    move-object v6, p4

    .line 98
    iget-object p0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->gameStack:Lio/blueflower/stapel2d/util/Setter;

    new-instance p1, Linfo/flowersoft/theotown/stages/AccountStage;

    invoke-direct {p1, v6}, Linfo/flowersoft/theotown/stages/AccountStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-interface {p0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/online/CityGiftManager;",
            "Linfo/flowersoft/theotown/city/City;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;",
            "Lio/blueflower/stapel2d/gui/Master;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            ")V"
        }
    .end annotation

    .line 66
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_GOLDEN_PRESENT:I

    .line 67
    invoke-virtual/range {p5 .. p5}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v2, 0x200

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x12c

    const/16 v5, 0x12c

    .line 66
    const-string v3, ""

    move-object v0, p0

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 50
    const-string v1, "$anim_store_report00"

    const-class v2, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v1, v2}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->REPORT_FRAME:I

    .line 71
    iput-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;

    .line 72
    iput-object p2, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->city:Linfo/flowersoft/theotown/city/City;

    move-object v8, p3

    .line 73
    iput-object v8, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->gameStack:Lio/blueflower/stapel2d/util/Setter;

    move-object/from16 v9, p5

    .line 74
    iput-object v9, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 75
    invoke-virtual {v9}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v10

    iput-object v10, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 77
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 79
    new-instance v0, Linfo/flowersoft/theotown/online/CityGiftsDialog$1;

    const/4 v5, 0x0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/online/CityGiftsDialog$1;-><init>(Linfo/flowersoft/theotown/online/CityGiftsDialog;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/online/CityGiftManager;)V

    move-object v1, v0

    iput-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    .line 86
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 88
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/CityGiftManager;->isReceiver()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 89
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->removeControlLine()V

    return-void

    .line 91
    :cond_5d
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUS:I

    const/16 v1, 0xd50

    .line 93
    invoke-interface {v10, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    new-instance v0, Linfo/flowersoft/theotown/online/CityGiftsDialog$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v8

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Linfo/flowersoft/theotown/online/CityGiftsDialog$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/online/CityGiftsDialog;Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v1, v6

    move-object v2, v7

    move-object v6, v0

    move-object v0, p0

    .line 91
    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    const/4 v0, 0x1

    .line 100
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/online/CityGiftsDialog;)Ljava/util/List;
    .registers 1

    .line 48
    iget-object p0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->gifts:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/online/CityGiftsDialog;)Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->forceRebuild:Z

    return p0
.end method

.method public static synthetic access$102(Linfo/flowersoft/theotown/online/CityGiftsDialog;Z)Z
    .registers 2

    .line 48
    iput-boolean p1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->forceRebuild:Z

    return p1
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/online/CityGiftsDialog;)V
    .registers 1

    .line 48
    invoke-virtual {p0}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->build()V

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/online/CityGiftsDialog;)Linfo/flowersoft/theotown/city/City;
    .registers 1

    .line 48
    iget-object p0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->city:Linfo/flowersoft/theotown/city/City;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/online/CityGiftsDialog;)Linfo/flowersoft/theotown/online/CityGiftManager;
    .registers 1

    .line 48
    iget-object p0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;

    return-object p0
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/online/CityGiftsDialog;Linfo/flowersoft/theotown/online/VirtualGift;)V
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->redeemGift(Linfo/flowersoft/theotown/online/VirtualGift;)V

    return-void
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/online/CityGiftsDialog;)I
    .registers 1

    .line 48
    iget p0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->REPORT_FRAME:I

    return p0
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/online/CityGiftsDialog;Linfo/flowersoft/theotown/online/VirtualGift;)V
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->showDeleteGiftDialog(Linfo/flowersoft/theotown/online/VirtualGift;)V

    return-void
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/online/CityGiftsDialog;Linfo/flowersoft/theotown/online/VirtualGift;)V
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->showReportGiftDialog(Linfo/flowersoft/theotown/online/VirtualGift;)V

    return-void
.end method


# virtual methods
.method public final build()V
    .registers 7

    .line 105
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->getShiftY()F

    move-result v0

    .line 106
    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ListBox;->removeAllItems()V

    .line 107
    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->gifts:Ljava/util/List;

    .line 108
    iget-object v2, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/online/CityGiftManager;->getGifts()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->gifts:Ljava/util/List;

    const/4 v3, 0x0

    .line 109
    iput-boolean v3, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->forceRebuild:Z

    if-eqz v2, :cond_21

    if-nez v1, :cond_21

    .line 112
    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/CityGiftManager;->markGiftsAsSeen()V

    .line 115
    :cond_21
    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->gifts:Ljava/util/List;

    if-nez v1, :cond_32

    .line 116
    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v2, Lio/blueflower/stapel2d/gui/ListItem;

    const-string v3, "..."

    invoke-direct {v2, v3}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    goto :goto_8a

    .line 117
    :cond_32
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 118
    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/CityGiftManager;->isReceiver()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 119
    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v2, Linfo/flowersoft/theotown/ui/FillingListItem;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_ACCOUNT:I

    iget-object v4, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0xa9e

    .line 120
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-direct {v2, v3, v4, v5}, Linfo/flowersoft/theotown/ui/FillingListItem;-><init>(ILjava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 119
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    goto :goto_8a

    .line 122
    :cond_57
    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v2, Linfo/flowersoft/theotown/ui/FillingListItem;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUS:I

    iget-object v4, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x771

    .line 123
    invoke-interface {v4, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-direct {v2, v3, v4, v5}, Linfo/flowersoft/theotown/ui/FillingListItem;-><init>(ILjava/lang/String;Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 122
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    goto :goto_8a

    .line 126
    :cond_6e
    :goto_6e
    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->gifts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_8a

    .line 127
    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->gifts:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/online/VirtualGift;

    .line 128
    iget-object v2, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->createGiftItem(Linfo/flowersoft/theotown/online/VirtualGift;)Lio/blueflower/stapel2d/gui/ListItem;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6e

    .line 132
    :cond_8a
    :goto_8a
    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/ListBox;->setShiftY(F)V

    return-void
.end method

.method public final canRedeemGift(Linfo/flowersoft/theotown/online/VirtualGift;)Z
    .registers 6

    .line 172
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/CityGiftManager;->isReceiver()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualGift;->getReceiveTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualGift;->getType()Linfo/flowersoft/theotown/online/GiftType;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/GiftType;->isConsumable()Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public final createGiftItem(Linfo/flowersoft/theotown/online/VirtualGift;)Lio/blueflower/stapel2d/gui/ListItem;
    .registers 17

    .line 213
    new-instance v6, Linfo/flowersoft/theotown/online/CityGiftsDialog$4;

    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    const/4 v11, 0x4

    add-int/lit8 v4, v0, -0x4

    const/16 v5, 0x50

    move-object v0, v6

    iget-object v6, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/online/CityGiftsDialog$4;-><init>(Linfo/flowersoft/theotown/online/CityGiftsDialog;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v6, v0

    const/4 v12, 0x5

    .line 220
    invoke-virtual {v6, v12}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(I)V

    .line 221
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    .line 223
    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->canRedeemGift(Linfo/flowersoft/theotown/online/VirtualGift;)Z

    move-result v2

    const/4 v13, 0x0

    if-eqz v2, :cond_63

    .line 224
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x307

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v10

    .line 225
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v10}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x8

    move-object v8, v6

    move v6, v0

    .line 226
    new-instance v0, Linfo/flowersoft/theotown/online/CityGiftsDialog$5;

    const/4 v5, 0x0

    const/16 v7, 0x2d

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    move-object v1, p0

    move-object/from16 v9, p1

    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/online/CityGiftsDialog$5;-><init>(Linfo/flowersoft/theotown/online/CityGiftsDialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/online/VirtualGift;Ljava/lang/String;)V

    move-object v6, v8

    .line 250
    invoke-virtual {v0, v11, v11}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(II)V

    .line 251
    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x14

    invoke-virtual {v0, v1, v13}, Lio/blueflower/stapel2d/gui/Gadget;->setPosition(II)V

    .line 252
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v0

    sub-int/2addr v0, v12

    :cond_63
    move v8, v0

    .line 255
    new-instance v0, Linfo/flowersoft/theotown/online/CityGiftsDialog$6;

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v1

    add-int/lit8 v2, v1, -0xf

    const/16 v4, 0xf

    const/16 v5, 0xf

    const/4 v3, 0x0

    move-object v1, p0

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/online/CityGiftsDialog$6;-><init>(Linfo/flowersoft/theotown/online/CityGiftsDialog;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/online/VirtualGift;)V

    .line 291
    new-instance v0, Lio/blueflower/stapel2d/gui/Icon;

    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->getGiftIcon(Linfo/flowersoft/theotown/online/VirtualGift;)I

    move-result v1

    const/16 v4, 0x1a

    const/16 v5, 0x1a

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Icon;-><init>(IIIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 294
    new-instance v0, Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual/range {p0 .. p1}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->getGiftTitle(Linfo/flowersoft/theotown/online/VirtualGift;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    const/16 v2, 0x1e

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 295
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    const/4 v1, 0x0

    .line 296
    invoke-virtual {v0, v1, v1}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 297
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Label;->adjustSizeToText()V

    move-object v1, v0

    .line 299
    new-instance v0, Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v3

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v1

    add-int/2addr v3, v1

    const/4 v4, 0x0

    const-string v1, "by "

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v10, v0

    move v9, v2

    .line 300
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v10, v0}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 301
    invoke-virtual {v10}, Lio/blueflower/stapel2d/gui/Label;->adjustSizeToText()V

    .line 303
    new-instance v0, Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/online/VirtualGift;->getSender()Linfo/flowersoft/theotown/online/VirtualUser;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/VirtualUser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-virtual {v10}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    invoke-virtual {v10}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v10}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v3

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 305
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 306
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/online/VirtualGift;->getSender()Linfo/flowersoft/theotown/online/VirtualUser;

    move-result-object v1

    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/VirtualUser;->getColor()Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 307
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Label;->adjustSizeToText()V

    move-object v1, v0

    .line 309
    new-instance v0, Lio/blueflower/stapel2d/gui/Label;

    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v2

    invoke-virtual {v2}, Linfo/flowersoft/theotown/resources/InternetTime;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/online/VirtualGift;->getCreationTime()J

    move-result-wide v11

    mul-long/2addr v11, v4

    sub-long/2addr v2, v11

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, " - %1$s ago"

    invoke-static {v3, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v3

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v14, v3

    move v3, v1

    move-object v1, v2

    move v2, v14

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 311
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 312
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Label;->adjustSizeToText()V

    .line 314
    invoke-virtual/range {p1 .. p1}, Linfo/flowersoft/theotown/online/VirtualGift;->getContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 315
    new-instance v1, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v2, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->city:Linfo/flowersoft/theotown/city/City;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->localizePacked(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    new-instance v0, Lio/blueflower/stapel2d/gui/TextFrame;

    .line 317
    invoke-virtual {v10}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v2

    invoke-virtual {v10}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v4, v8, -0x1e

    move v2, v9

    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/TextFrame;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 319
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Label;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17a

    .line 320
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 321
    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0xc03

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/TextFrame;->setText(Ljava/lang/String;)V

    .line 323
    :cond_17a
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/TextFrame;->calculateTextHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    .line 325
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v1

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {v6}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingBottom()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {v6, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    .line 327
    new-instance v0, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;

    invoke-direct {v0, v6}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    const/4 v1, 0x1

    .line 328
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->setDrawBackground(Z)V

    .line 329
    invoke-virtual {v0, v13}, Linfo/flowersoft/theotown/ui/listitem/GadgetListItem;->setCanBeSelected(Z)V

    return-object v0
.end method

.method public final getGiftIcon(Linfo/flowersoft/theotown/online/VirtualGift;)I
    .registers 4

    .line 145
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualGift;->getType()Linfo/flowersoft/theotown/online/GiftType;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/online/GiftType;->CASH:Linfo/flowersoft/theotown/online/GiftType;

    if-ne v0, v1, :cond_b

    .line 146
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_MONEY:I

    return p1

    .line 147
    :cond_b
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualGift;->getType()Linfo/flowersoft/theotown/online/GiftType;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/online/GiftType;->DIAMOND:Linfo/flowersoft/theotown/online/GiftType;

    if-ne v0, v1, :cond_1d

    .line 148
    sget-boolean p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz p1, :cond_1a

    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_ONLINE_REGION_COIN:I

    return p1

    :cond_1a
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    return p1

    .line 149
    :cond_1d
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualGift;->getType()Linfo/flowersoft/theotown/online/GiftType;

    move-result-object p1

    sget-object v0, Linfo/flowersoft/theotown/online/GiftType;->TEXT:Linfo/flowersoft/theotown/online/GiftType;

    if-ne p1, v0, :cond_28

    .line 150
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_NOTIFICATION:I

    return p1

    .line 152
    :cond_28
    const-string p1, "$logo_unknown00"

    const-class v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method

.method public final getGiftTitle(Linfo/flowersoft/theotown/online/VirtualGift;)Ljava/lang/String;
    .registers 4

    .line 158
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualGift;->getType()Linfo/flowersoft/theotown/online/GiftType;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/online/GiftType;->CASH:Linfo/flowersoft/theotown/online/GiftType;

    if-ne v0, v1, :cond_11

    .line 159
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualGift;->getAmount()D

    move-result-wide v0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    .line 160
    :cond_11
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualGift;->getType()Linfo/flowersoft/theotown/online/GiftType;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/online/GiftType;->DIAMOND:Linfo/flowersoft/theotown/online/GiftType;

    if-ne v0, v1, :cond_24

    .line 161
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualGift;->getAmount()D

    move-result-wide v0

    double-to-int v0, v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/Localizer;->localizeDiamonds(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    .line 162
    :cond_24
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualGift;->getType()Linfo/flowersoft/theotown/online/GiftType;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/online/GiftType;->TEXT:Linfo/flowersoft/theotown/online/GiftType;

    if-ne v0, v1, :cond_35

    .line 163
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0x3c4

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    .line 165
    :cond_35
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0xdb4

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_3d
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualGift;->getPriv()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_61

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v1, 0xa3a

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_61
    return-object v0
.end method

.method public final redeemGift(Linfo/flowersoft/theotown/online/VirtualGift;)V
    .registers 6

    .line 176
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualGift;->getReceiveTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    return-void

    .line 177
    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;

    new-instance v1, Linfo/flowersoft/theotown/online/CityGiftsDialog$2;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/online/CityGiftsDialog$2;-><init>(Linfo/flowersoft/theotown/online/CityGiftsDialog;Linfo/flowersoft/theotown/online/VirtualGift;)V

    new-instance v2, Linfo/flowersoft/theotown/online/CityGiftsDialog$3;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/online/CityGiftsDialog$3;-><init>(Linfo/flowersoft/theotown/online/CityGiftsDialog;)V

    invoke-virtual {v0, p1, v1, v2}, Linfo/flowersoft/theotown/online/CityGiftManager;->redeem(Linfo/flowersoft/theotown/online/VirtualGift;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public setVisible(ZZ)V
    .registers 5

    if-eqz p1, :cond_11

    .line 137
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->isVisible()Z

    move-result v0

    if-nez v0, :cond_11

    .line 138
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/online/CityGiftManager;->fetch(Z)V

    .line 139
    invoke-virtual {p0}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->build()V

    .line 141
    :cond_11
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(ZZ)V

    return-void
.end method

.method public final showDeleteGiftDialog(Linfo/flowersoft/theotown/online/VirtualGift;)V
    .registers 7

    .line 357
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    iget-object v2, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x796

    .line 359
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xcd8

    .line 360
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    .line 361
    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v4

    check-cast v4, Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 362
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v2, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x5c5

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Button;->setMarked(Z)V

    .line 363
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    iget-object v3, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x8ea

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/online/CityGiftsDialog$8;

    invoke-direct {v4, p0, p1}, Linfo/flowersoft/theotown/online/CityGiftsDialog$8;-><init>(Linfo/flowersoft/theotown/online/CityGiftsDialog;Linfo/flowersoft/theotown/online/VirtualGift;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v3, p1, v4}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 380
    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final showReportGiftDialog(Linfo/flowersoft/theotown/online/VirtualGift;)V
    .registers 6

    .line 334
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x928

    .line 335
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    .line 336
    invoke-virtual {p1}, Linfo/flowersoft/theotown/online/VirtualGift;->getSender()Linfo/flowersoft/theotown/online/VirtualUser;

    move-result-object v3

    invoke-virtual {v3}, Linfo/flowersoft/theotown/online/VirtualUser;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 335
    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/online/CityGiftsDialog$7;

    invoke-direct {v3, p0, p1}, Linfo/flowersoft/theotown/online/CityGiftsDialog$7;-><init>(Linfo/flowersoft/theotown/online/CityGiftsDialog;Linfo/flowersoft/theotown/online/VirtualGift;)V

    .line 334
    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/ReportDialog;->show(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/String;Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;)Linfo/flowersoft/theotown/ui/Dialog;

    return-void
.end method

###### Class info.flowersoft.theotown.online.CityGiftsDialog.AnonymousClass1 (info.flowersoft.theotown.online.CityGiftsDialog$1)
.class public Linfo/flowersoft/theotown/online/CityGiftsDialog$1;
.super Lio/blueflower/stapel2d/gui/ListBox;
.source "CityGiftsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/CityGiftsDialog;-><init>(Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

.field public final synthetic val$giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/CityGiftsDialog;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/online/CityGiftManager;)V
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

    .line 79
    iput-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$1;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    iput-object p7, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$1;->val$giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .registers 3

    .line 82
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/ListBox;->onUpdate()V

    .line 83
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$1;->val$giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/CityGiftManager;->getGifts()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$1;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    invoke-static {v1}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->access$000(Linfo/flowersoft/theotown/online/CityGiftsDialog;)Ljava/util/List;

    move-result-object v1

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$1;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->access$100(Linfo/flowersoft/theotown/online/CityGiftsDialog;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1b

    :cond_1a
    return-void

    :cond_1b
    :goto_1b
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$1;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->access$200(Linfo/flowersoft/theotown/online/CityGiftsDialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.CityGiftsDialog.AnonymousClass2 (info.flowersoft.theotown.online.CityGiftsDialog$2)
.class public Linfo/flowersoft/theotown/online/CityGiftsDialog$2;
.super Ljava/lang/Object;
.source "CityGiftsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/CityGiftsDialog;->redeemGift(Linfo/flowersoft/theotown/online/VirtualGift;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

.field public final synthetic val$gift:Linfo/flowersoft/theotown/online/VirtualGift;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/CityGiftsDialog;Linfo/flowersoft/theotown/online/VirtualGift;)V
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

    .line 177
    iput-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$2;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$2;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 180
    sget-object v0, Linfo/flowersoft/theotown/online/CityGiftsDialog$9;->$SwitchMap$info$flowersoft$theotown$online$GiftType:[I

    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$2;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/VirtualGift;->getType()Linfo/flowersoft/theotown/online/GiftType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "gift by "

    const/4 v2, 0x1

    if-eq v0, v2, :cond_53

    const/4 v3, 0x2

    if-eq v0, v3, :cond_18

    goto/16 :goto_97

    .line 188
    :cond_18
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$2;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualGift;->getAmount()D

    move-result-wide v3

    double-to-int v0, v3

    if-lez v0, :cond_97

    .line 190
    sget-boolean v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz v3, :cond_36

    .line 191
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnRegionCoins(I)V

    .line 192
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v1

    const/4 v3, 0x3

    int-to-double v4, v0

    invoke-virtual {v1, v3, v4, v5}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->addEvent(ID)V

    goto :goto_97

    .line 194
    :cond_36
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$2;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/VirtualGift;->getSenderId()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v2, v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnDiamonds(IZLjava/lang/String;)V

    goto :goto_97

    .line 182
    :cond_53
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$2;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualGift;->getAmount()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-lez v0, :cond_97

    .line 183
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$2;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->access$300(Linfo/flowersoft/theotown/online/CityGiftsDialog;)Linfo/flowersoft/theotown/city/City;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/components/DefaultBudget;

    iget-object v3, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$2;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    invoke-virtual {v3}, Linfo/flowersoft/theotown/online/VirtualGift;->getAmount()D

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$2;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/VirtualGift;->getSenderId()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v4, v1}, Linfo/flowersoft/theotown/components/DefaultBudget;->earn(DLjava/lang/String;)V

    .line 184
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->getInstance()Linfo/flowersoft/theotown/ui/SuccessOverlay;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$2;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/online/VirtualGift;->getAmount()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->addEvent(ID)V

    .line 199
    :cond_97
    :goto_97
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$2;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Linfo/flowersoft/theotown/online/VirtualGift;->setReceiveTime(J)V

    .line 200
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$2;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    invoke-static {v0, v2}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->access$102(Linfo/flowersoft/theotown/online/CityGiftsDialog;Z)Z

    .line 201
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$2;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->access$400(Linfo/flowersoft/theotown/online/CityGiftsDialog;)Linfo/flowersoft/theotown/online/CityGiftManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/online/CityGiftManager;->fetch(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.CityGiftsDialog.AnonymousClass3 (info.flowersoft.theotown.online.CityGiftsDialog$3)
.class public Linfo/flowersoft/theotown/online/CityGiftsDialog$3;
.super Ljava/lang/Object;
.source "CityGiftsDialog.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/CityGiftsDialog;->redeemGift(Linfo/flowersoft/theotown/online/VirtualGift;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/CityGiftsDialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 203
    iput-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$3;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 203
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/online/CityGiftsDialog$3;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .registers 5

    .line 206
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.CityGiftsDialog.AnonymousClass4 (info.flowersoft.theotown.online.CityGiftsDialog$4)
.class public Linfo/flowersoft/theotown/online/CityGiftsDialog$4;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "CityGiftsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/CityGiftsDialog;->createGiftItem(Linfo/flowersoft/theotown/online/VirtualGift;)Lio/blueflower/stapel2d/gui/ListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/CityGiftsDialog;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 213
    iput-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$4;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 216
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.CityGiftsDialog.AnonymousClass5 (info.flowersoft.theotown.online.CityGiftsDialog$5)
.class public Linfo/flowersoft/theotown/online/CityGiftsDialog$5;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "CityGiftsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/CityGiftsDialog;->createGiftItem(Linfo/flowersoft/theotown/online/VirtualGift;)Lio/blueflower/stapel2d/gui/ListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

.field public final synthetic val$buttonText:Ljava/lang/String;

.field public final synthetic val$gift:Linfo/flowersoft/theotown/online/VirtualGift;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/CityGiftsDialog;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/online/VirtualGift;Ljava/lang/String;)V
    .registers 11
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

    .line 227
    iput-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$5;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    iput-object p9, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$5;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    iput-object p10, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$5;->val$buttonText:Ljava/lang/String;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 236
    invoke-super {p0, p1, p2}, Linfo/flowersoft/theotown/ui/GoldButton;->draw(II)V

    .line 237
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 238
    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 240
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 241
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v3

    add-int/2addr v3, p1

    iget v4, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingLeft:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v4

    add-int/2addr v4, p2

    iget v5, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 242
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v8, 0x0

    sget v9, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/high16 v7, 0x3f000000    # 0.5f

    .line 240
    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 243
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->DARK_YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 244
    iget-object v3, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$5;->val$buttonText:Ljava/lang/String;

    .line 245
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v2

    add-int/2addr p1, v2

    iget v2, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingLeft:I

    add-int/2addr p1, v2

    int-to-float v4, p1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result p1

    add-int/2addr p2, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->paddingTop:I

    add-int/2addr p2, p1

    int-to-float v5, p2

    .line 246
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result p1

    int-to-float v6, p1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result p1

    int-to-float v7, p1

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v2, v0

    .line 244
    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 247
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public onClick()V
    .registers 3

    .line 230
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 231
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$5;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$5;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->access$500(Linfo/flowersoft/theotown/online/CityGiftsDialog;Linfo/flowersoft/theotown/online/VirtualGift;)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.CityGiftsDialog.AnonymousClass6 (info.flowersoft.theotown.online.CityGiftsDialog$6)
.class public Linfo/flowersoft/theotown/online/CityGiftsDialog$6;
.super Lio/blueflower/stapel2d/gui/Button;
.source "CityGiftsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/CityGiftsDialog;->createGiftItem(Linfo/flowersoft/theotown/online/VirtualGift;)Lio/blueflower/stapel2d/gui/ListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

.field public final synthetic val$gift:Linfo/flowersoft/theotown/online/VirtualGift;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/CityGiftsDialog;IIIILio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/online/VirtualGift;)V
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

    .line 255
    iput-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$6;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    iput-object p7, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$6;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 258
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 259
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1c

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getAdmin()I

    move-result v2

    if-eqz v2, :cond_1c

    move v2, v4

    goto :goto_1d

    :cond_1c
    move v2, v3

    .line 261
    :goto_1d
    iget-object v5, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$6;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    invoke-static {v5}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->access$400(Linfo/flowersoft/theotown/online/CityGiftsDialog;)Linfo/flowersoft/theotown/online/CityGiftManager;

    move-result-object v5

    invoke-virtual {v5}, Linfo/flowersoft/theotown/online/CityGiftManager;->isReceiver()Z

    move-result v5

    .line 262
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3e

    iget-object v6, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$6;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    invoke-virtual {v6}, Linfo/flowersoft/theotown/online/VirtualGift;->getSenderId()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-nez v0, :cond_3e

    move v0, v4

    goto :goto_3f

    :cond_3e
    move v0, v3

    :goto_3f
    if-nez v2, :cond_45

    if-nez v5, :cond_45

    if-eqz v0, :cond_46

    :cond_45
    move v3, v4

    .line 265
    :cond_46
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 266
    invoke-virtual {v1, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/16 v0, 0x64

    .line 267
    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 268
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v0

    add-int/2addr p1, v0

    int-to-float p1, p1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v0

    add-int/2addr p2, v0

    int-to-float v4, p2

    iget p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, p2

    iget p2, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p2

    if-eqz v3, :cond_6f

    .line 269
    sget p2, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    :goto_6d
    move v9, p2

    goto :goto_76

    :cond_6f
    iget-object p2, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$6;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    invoke-static {p2}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->access$600(Linfo/flowersoft/theotown/online/CityGiftsDialog;)I

    move-result p2

    goto :goto_6d

    :goto_76
    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    move v3, p1

    .line 268
    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    const/16 p1, 0xff

    .line 270
    invoke-virtual {v1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 271
    invoke-virtual {v1, p1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void
.end method

.method public onClick()V
    .registers 10

    .line 276
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 277
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getAdmin()I

    move-result v1

    if-eqz v1, :cond_1b

    move v1, v3

    goto :goto_1c

    :cond_1b
    move v1, v2

    .line 279
    :goto_1c
    iget-object v4, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$6;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    invoke-static {v4}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->access$400(Linfo/flowersoft/theotown/online/CityGiftsDialog;)Linfo/flowersoft/theotown/online/CityGiftManager;

    move-result-object v4

    invoke-virtual {v4}, Linfo/flowersoft/theotown/online/CityGiftManager;->isReceiver()Z

    move-result v4

    .line 280
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v5

    if-eqz v5, :cond_3c

    iget-object v5, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$6;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    invoke-virtual {v5}, Linfo/flowersoft/theotown/online/VirtualGift;->getSenderId()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-nez v0, :cond_3c

    move v2, v3

    :cond_3c
    if-nez v1, :cond_4b

    if-nez v4, :cond_4b

    if-eqz v2, :cond_43

    goto :goto_4b

    .line 286
    :cond_43
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$6;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$6;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->access$800(Linfo/flowersoft/theotown/online/CityGiftsDialog;Linfo/flowersoft/theotown/online/VirtualGift;)V

    return-void

    .line 284
    :cond_4b
    :goto_4b
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$6;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$6;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->access$700(Linfo/flowersoft/theotown/online/CityGiftsDialog;Linfo/flowersoft/theotown/online/VirtualGift;)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.CityGiftsDialog.AnonymousClass7 (info.flowersoft.theotown.online.CityGiftsDialog$7)
.class public Linfo/flowersoft/theotown/online/CityGiftsDialog$7;
.super Ljava/lang/Object;
.source "CityGiftsDialog.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/CityGiftsDialog;->showReportGiftDialog(Linfo/flowersoft/theotown/online/VirtualGift;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

.field public final synthetic val$gift:Linfo/flowersoft/theotown/online/VirtualGift;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/CityGiftsDialog;Linfo/flowersoft/theotown/online/VirtualGift;)V
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

    .line 336
    iput-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$7;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$7;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public report(Ljava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$7;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->access$400(Linfo/flowersoft/theotown/online/CityGiftsDialog;)Linfo/flowersoft/theotown/online/CityGiftManager;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$7;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    new-instance v2, Linfo/flowersoft/theotown/online/CityGiftsDialog$7$1;

    invoke-direct {v2, p0, p2, p3}, Linfo/flowersoft/theotown/online/CityGiftsDialog$7$1;-><init>(Linfo/flowersoft/theotown/online/CityGiftsDialog$7;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {v0, v1, p1, v2}, Linfo/flowersoft/theotown/online/CityGiftManager;->reportGift(Linfo/flowersoft/theotown/online/VirtualGift;Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.CityGiftsDialog.AnonymousClass7.AnonymousClass1 (info.flowersoft.theotown.online.CityGiftsDialog$7$1)
.class public Linfo/flowersoft/theotown/online/CityGiftsDialog$7$1;
.super Ljava/lang/Object;
.source "CityGiftsDialog.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/CityGiftsDialog$7;->report(Ljava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/online/CityGiftsDialog$7;

.field public final synthetic val$onError:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic val$onSuccess:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/CityGiftsDialog$7;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 339
    iput-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$7$1;->this$1:Linfo/flowersoft/theotown/online/CityGiftsDialog$7;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$7$1;->val$onSuccess:Ljava/lang/Runnable;

    iput-object p3, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$7$1;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4

    .line 349
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$7$1;->val$onError:Lio/blueflower/stapel2d/util/Setter;

    const-string v1, "hint"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5

    .line 342
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$7$1;->this$1:Linfo/flowersoft/theotown/online/CityGiftsDialog$7;

    iget-object v0, v0, Linfo/flowersoft/theotown/online/CityGiftsDialog$7;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/VirtualGift;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "online"

    const-string v2, "report gift"

    invoke-interface {p1, v1, v2, v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$7$1;->val$onSuccess:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 344
    iget-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$7$1;->this$1:Linfo/flowersoft/theotown/online/CityGiftsDialog$7;

    iget-object p1, p1, Linfo/flowersoft/theotown/online/CityGiftsDialog$7;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    invoke-static {p1}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->access$400(Linfo/flowersoft/theotown/online/CityGiftsDialog;)Linfo/flowersoft/theotown/online/CityGiftManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/online/CityGiftManager;->fetch(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.CityGiftsDialog.AnonymousClass8 (info.flowersoft.theotown.online.CityGiftsDialog$8)
.class public Linfo/flowersoft/theotown/online/CityGiftsDialog$8;
.super Ljava/lang/Object;
.source "CityGiftsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/CityGiftsDialog;->showDeleteGiftDialog(Linfo/flowersoft/theotown/online/VirtualGift;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

.field public final synthetic val$gift:Linfo/flowersoft/theotown/online/VirtualGift;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/CityGiftsDialog;Linfo/flowersoft/theotown/online/VirtualGift;)V
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

    .line 363
    iput-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$8;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$8;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 366
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$8;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->access$400(Linfo/flowersoft/theotown/online/CityGiftsDialog;)Linfo/flowersoft/theotown/online/CityGiftManager;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$8;->val$gift:Linfo/flowersoft/theotown/online/VirtualGift;

    new-instance v2, Linfo/flowersoft/theotown/online/CityGiftsDialog$8$1;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/online/CityGiftsDialog$8$1;-><init>(Linfo/flowersoft/theotown/online/CityGiftsDialog$8;)V

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/online/CityGiftManager;->deleteGift(Linfo/flowersoft/theotown/online/VirtualGift;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.CityGiftsDialog.AnonymousClass8.AnonymousClass1 (info.flowersoft.theotown.online.CityGiftsDialog$8$1)
.class public Linfo/flowersoft/theotown/online/CityGiftsDialog$8$1;
.super Ljava/lang/Object;
.source "CityGiftsDialog.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/CityGiftsDialog$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/online/CityGiftsDialog$8;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/CityGiftsDialog$8;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 366
    iput-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$8$1;->this$1:Linfo/flowersoft/theotown/online/CityGiftsDialog$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 6

    .line 375
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "status"

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hint"

    invoke-virtual {p1, v3, v2}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 369
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    const-string v0, "Success"

    invoke-interface {p1, v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    .line 370
    iget-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$8$1;->this$1:Linfo/flowersoft/theotown/online/CityGiftsDialog$8;

    iget-object p1, p1, Linfo/flowersoft/theotown/online/CityGiftsDialog$8;->this$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    invoke-static {p1}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->access$400(Linfo/flowersoft/theotown/online/CityGiftsDialog;)Linfo/flowersoft/theotown/online/CityGiftManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/online/CityGiftManager;->fetch(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.CityGiftsDialog.AnonymousClass9 (info.flowersoft.theotown.online.CityGiftsDialog$9)
.class public synthetic Linfo/flowersoft/theotown/online/CityGiftsDialog$9;
.super Ljava/lang/Object;
.source "CityGiftsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/online/CityGiftsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$info$flowersoft$theotown$online$GiftType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 180
    invoke-static {}, Linfo/flowersoft/theotown/online/GiftType;->values()[Linfo/flowersoft/theotown/online/GiftType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Linfo/flowersoft/theotown/online/CityGiftsDialog$9;->$SwitchMap$info$flowersoft$theotown$online$GiftType:[I

    :try_start_9
    sget-object v1, Linfo/flowersoft/theotown/online/GiftType;->CASH:Linfo/flowersoft/theotown/online/GiftType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Linfo/flowersoft/theotown/online/CityGiftsDialog$9;->$SwitchMap$info$flowersoft$theotown$online$GiftType:[I

    sget-object v1, Linfo/flowersoft/theotown/online/GiftType;->DIAMOND:Linfo/flowersoft/theotown/online/GiftType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method

###### Class info.flowersoft.theotown.online.CityGiftsDialog$$ExternalSyntheticLambda0 (info.flowersoft.theotown.online.CityGiftsDialog$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/online/CityGiftsDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

.field public final synthetic f$1:Linfo/flowersoft/theotown/online/CityGiftManager;

.field public final synthetic f$2:Linfo/flowersoft/theotown/city/City;

.field public final synthetic f$3:Lio/blueflower/stapel2d/util/Setter;

.field public final synthetic f$4:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/online/CityGiftsDialog;Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/online/CityGiftManager;

    iput-object p3, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/city/City;

    iput-object p4, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$$ExternalSyntheticLambda0;->f$3:Lio/blueflower/stapel2d/util/Setter;

    iput-object p5, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$$ExternalSyntheticLambda0;->f$4:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/online/CityGiftsDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/online/CityGiftManager;

    iget-object v2, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/city/City;

    iget-object v3, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$$ExternalSyntheticLambda0;->f$3:Lio/blueflower/stapel2d/util/Setter;

    iget-object v4, p0, Linfo/flowersoft/theotown/online/CityGiftsDialog$$ExternalSyntheticLambda0;->f$4:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/online/CityGiftsDialog;->$r8$lambda$pqrL5MsVcXURZwjqTKLB29CX5ic(Linfo/flowersoft/theotown/online/CityGiftsDialog;Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method
