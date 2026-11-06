###### Class info.flowersoft.theotown.online.MakeCityGiftDialog (info.flowersoft.theotown.online.MakeCityGiftDialog)
.class public Linfo/flowersoft/theotown/online/MakeCityGiftDialog;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "MakeCityGiftDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;
    }
.end annotation


# instance fields
.field public amountNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public amountPrices:Lio/blueflower/stapel2d/util/IntList;

.field public amounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public final city:Linfo/flowersoft/theotown/city/City;

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;

.field public final lblPrice:Linfo/flowersoft/theotown/ui/IconLabel;

.field public final listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

.field public final prototype:Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;

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

.field public typeNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/online/GiftType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 14
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

    .line 53
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_NEXT:I

    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getTranslator()Lio/blueflower/stapel2d/gamestack/Translator;

    move-result-object v0

    const/16 v2, 0x29a

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x12c

    const/16 v5, 0xd5

    const-string v3, ""

    move-object v0, p0

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 36
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->types:Ljava/util/List;

    .line 37
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->typeNames:Ljava/util/List;

    .line 38
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amounts:Ljava/util/List;

    .line 39
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amountNames:Ljava/util/List;

    .line 40
    new-instance p4, Lio/blueflower/stapel2d/util/IntList;

    invoke-direct {p4}, Lio/blueflower/stapel2d/util/IntList;-><init>()V

    iput-object p4, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amountPrices:Lio/blueflower/stapel2d/util/IntList;

    .line 54
    iput-object p1, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;

    .line 55
    iput-object p2, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->city:Linfo/flowersoft/theotown/city/City;

    .line 56
    iput-object p3, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    .line 57
    iput-object p5, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 58
    invoke-virtual {p5}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p1

    iput-object p1, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 61
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 63
    sget p2, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 p3, 0x54d

    invoke-interface {p1, p3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$1;

    invoke-direct {p4, p0}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$1;-><init>(Linfo/flowersoft/theotown/online/MakeCityGiftDialog;)V

    invoke-virtual {p0, p2, p3, p4}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p2

    const/4 p3, 0x1

    .line 68
    invoke-virtual {p2, p3}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 70
    new-instance v1, Linfo/flowersoft/theotown/ui/IconLabel;

    sget-boolean p2, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    if-eqz p2, :cond_6a

    sget p2, Linfo/flowersoft/theotown/resources/Resources;->ICON_ONLINE_REGION_COIN:I

    :goto_68
    move v2, p2

    goto :goto_6d

    :cond_6a
    sget p2, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    goto :goto_68

    .line 71
    :goto_6d
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object p2

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v6

    const-string v3, "283"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Linfo/flowersoft/theotown/ui/IconLabel;-><init>(ILjava/lang/String;IILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v1, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->lblPrice:Linfo/flowersoft/theotown/ui/IconLabel;

    .line 72
    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/IconLabel;->getLabel()Lio/blueflower/stapel2d/gui/Label;

    move-result-object p2

    sget-object p3, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p3, p3, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {p2, p3}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    .line 75
    invoke-virtual {p0}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->collectTypes()V

    .line 77
    new-instance p2, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;

    invoke-direct {p2}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;-><init>()V

    iput-object p2, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->prototype:Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;

    .line 78
    sget-object p3, Linfo/flowersoft/theotown/online/GiftType;->TEXT:Linfo/flowersoft/theotown/online/GiftType;

    iput-object p3, p2, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;->type:Linfo/flowersoft/theotown/online/GiftType;

    .line 79
    const-string p3, ""

    iput-object p3, p2, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;->message:Ljava/lang/String;

    const/4 p3, 0x0

    .line 80
    iput-boolean p3, p2, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;->priv:Z

    .line 82
    new-instance v1, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    .line 83
    invoke-interface {p1}, Lio/blueflower/stapel2d/gamestack/Translator;->prefersRTL()Z

    move-result v2

    const/4 v6, 0x0

    .line 84
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v7

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;-><init>(ZIIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v1, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    .line 85
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 86
    invoke-virtual {v1, p2}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->setTargetObject(Ljava/lang/Object;)V

    .line 87
    new-instance p1, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$2;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$2;-><init>(Linfo/flowersoft/theotown/online/MakeCityGiftDialog;)V

    invoke-virtual {v1, p1}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->setRebuildFunction(Ljava/lang/Runnable;)V

    .line 94
    invoke-virtual {p0}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->buildContent()V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/online/MakeCityGiftDialog;)V
    .registers 1

    .line 28
    invoke-virtual {p0}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->buy()V

    return-void
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/online/MakeCityGiftDialog;)V
    .registers 1

    .line 28
    invoke-virtual {p0}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->buildContent()V

    return-void
.end method

.method public static synthetic access$200(Linfo/flowersoft/theotown/online/MakeCityGiftDialog;)Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;
    .registers 1

    .line 28
    iget-object p0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->prototype:Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;

    return-object p0
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/online/MakeCityGiftDialog;)Linfo/flowersoft/theotown/online/CityGiftManager;
    .registers 1

    .line 28
    iget-object p0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->giftManager:Linfo/flowersoft/theotown/online/CityGiftManager;

    return-object p0
.end method


# virtual methods
.method public final buildContent()V
    .registers 10

    .line 144
    const-class v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;

    iget-object v1, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ListBox;->removeAllItems()V

    .line 146
    invoke-virtual {p0}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->collectAmounts()V

    .line 148
    iget-object v1, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->lblPrice:Linfo/flowersoft/theotown/ui/IconLabel;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/ui/IconLabel;->getLabel()Lio/blueflower/stapel2d/gui/Label;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->getPrice()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    .line 152
    :try_start_28
    iget-object v3, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v1, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x90b

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->typeNames:Ljava/util/List;

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/String;

    .line 153
    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/lang/String;

    iget-object v1, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->types:Ljava/util/List;

    new-array v6, v2, [Linfo/flowersoft/theotown/online/GiftType;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Linfo/flowersoft/theotown/online/GiftType;

    const-string v1, "type"

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v8, 0x1

    .line 152
    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V

    .line 156
    iget-object v1, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_88

    .line 157
    iget-object v3, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v1, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x56

    invoke-interface {v1, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amountNames:Ljava/util/List;

    new-array v5, v2, [Ljava/lang/String;

    .line 158
    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/lang/String;

    iget-object v1, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amounts:Ljava/util/List;

    new-array v2, v2, [Ljava/lang/Double;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, [Ljava/lang/Double;

    const-string v1, "amount"

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    const/4 v8, 0x1

    .line 157
    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addValueSettingsItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/reflect/Field;Z)V

    goto :goto_88

    :catch_86
    move-exception v0

    goto :goto_bb

    .line 162
    :cond_88
    :goto_88
    iget-object v1, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x1b0

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xb25

    .line 163
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "message"

    .line 164
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    iget-object v6, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v5, 0x1

    .line 162
    invoke-virtual/range {v1 .. v6}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addEditableTextItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;ZLio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 166
    iget-object v1, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->listBox:Linfo/flowersoft/theotown/ui/settings/SettingsListbox;

    iget-object v2, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x787

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "priv"

    .line 167
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x1

    .line 166
    invoke-virtual {v1, v2, v0, v3}, Linfo/flowersoft/theotown/ui/settings/SettingsListbox;->addBinarySettingsItem(Ljava/lang/String;Ljava/lang/reflect/Field;Z)V
    :try_end_ba
    .catch Ljava/lang/NoSuchFieldException; {:try_start_28 .. :try_end_ba} :catch_86

    return-void

    .line 170
    :goto_bb
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final buy()V
    .registers 17

    move-object/from16 v0, p0

    .line 195
    invoke-virtual {v0}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->getPrice()I

    move-result v1

    .line 196
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lio/blueflower/stapel2d/gui/Master;

    .line 197
    iget-object v2, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/city/City;->getAuthorName()Ljava/lang/String;

    move-result-object v2

    .line 199
    new-instance v10, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3;

    invoke-direct {v10, v0}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3;-><init>(Linfo/flowersoft/theotown/online/MakeCityGiftDialog;)V

    .line 218
    sget-boolean v3, Linfo/flowersoft/theotown/crossplatform/TheoTown;->PREMIUM:Z

    const/4 v4, 0x1

    const/16 v5, 0x10d

    const/16 v6, 0xb5d

    if-eqz v3, :cond_5f

    .line 219
    new-instance v3, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    move v8, v4

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUS:I

    iget-object v9, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 220
    invoke-interface {v9, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v6, v9}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 221
    invoke-interface {v9, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget v5, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->FLAG_REGION_COIN:I

    .line 223
    invoke-static {v1, v5}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;->combinePriceAndFlags(II)J

    move-result-wide v11

    move v1, v8

    move-wide v8, v11

    iget-object v11, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    iget-object v12, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v13, "make gift"

    move-object v5, v6

    move-object v6, v2

    invoke-direct/range {v3 .. v15}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLinfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 224
    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void

    :cond_5f
    move v8, v4

    .line 226
    new-instance v3, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUS:I

    iget-object v9, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 227
    invoke-interface {v9, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v6, v9}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 228
    invoke-interface {v9, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v2}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-long v11, v1

    move v1, v8

    move-wide v8, v11

    iget-object v11, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    iget-object v12, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v13, "make gift"

    move-object v5, v6

    move-object v6, v2

    invoke-direct/range {v3 .. v15}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLinfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 231
    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final collectAmounts()V
    .registers 7

    .line 117
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 118
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amountNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 119
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amountPrices:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/util/IntList;->clear()V

    .line 121
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->prototype:Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;

    iget-object v0, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;->type:Linfo/flowersoft/theotown/online/GiftType;

    sget-object v1, Linfo/flowersoft/theotown/online/GiftType;->CASH:Linfo/flowersoft/theotown/online/GiftType;

    if-ne v0, v1, :cond_5f

    .line 122
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amountPrices:Lio/blueflower/stapel2d/util/IntList;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 123
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amountPrices:Lio/blueflower/stapel2d/util/IntList;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    .line 124
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amountPrices:Lio/blueflower/stapel2d/util/IntList;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 125
    :goto_2e
    iget-object v2, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amountPrices:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/util/IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_ad

    .line 126
    iget-object v2, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amountPrices:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v2

    .line 127
    iget-object v3, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/city/City;->getComponent(I)Linfo/flowersoft/theotown/city/components/CityComponent;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/components/DefaultBudget;

    add-int/lit8 v2, v2, 0xa

    .line 128
    invoke-virtual {v3, v2}, Linfo/flowersoft/theotown/components/DefaultBudget;->getMoneyForDiamonds(I)D

    move-result-wide v2

    .line 129
    iget-object v4, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amounts:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v4, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amountNames:Ljava/util/List;

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/Localizer;->localizeMoney(D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 132
    :cond_5f
    sget-object v1, Linfo/flowersoft/theotown/online/GiftType;->DIAMOND:Linfo/flowersoft/theotown/online/GiftType;

    if-ne v0, v1, :cond_ad

    .line 133
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amounts:Ljava/util/List;

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amounts:Ljava/util/List;

    const-wide/high16 v1, 0x403e000000000000L    # 30.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amounts:Ljava/util/List;

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ad

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 137
    iget-object v3, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amountNames:Ljava/util/List;

    double-to-long v4, v1

    invoke-static {v4, v5}, Linfo/flowersoft/theotown/util/Localizer;->localizeDiamonds(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v3, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amountPrices:Lio/blueflower/stapel2d/util/IntList;

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v3, v1}, Lio/blueflower/stapel2d/util/IntList;->add(I)V

    goto :goto_8a

    :cond_ad
    return-void
.end method

.method public final collectTypes()V
    .registers 4

    .line 98
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->types:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->typeNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->types:Ljava/util/List;

    sget-object v1, Linfo/flowersoft/theotown/online/GiftType;->TEXT:Linfo/flowersoft/theotown/online/GiftType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->typeNames:Ljava/util/List;

    iget-object v1, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x5bd

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getGameMode()Linfo/flowersoft/theotown/city/GameMode;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/GameMode;->hasInfinityMoney()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 105
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->types:Ljava/util/List;

    sget-object v1, Linfo/flowersoft/theotown/online/GiftType;->CASH:Linfo/flowersoft/theotown/online/GiftType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->typeNames:Ljava/util/List;

    iget-object v1, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x140

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_3e
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isForumConnected()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getAdmin()I

    move-result v0

    if-eqz v0, :cond_6c

    .line 111
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->types:Ljava/util/List;

    sget-object v1, Linfo/flowersoft/theotown/online/GiftType;->DIAMOND:Linfo/flowersoft/theotown/online/GiftType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->typeNames:Ljava/util/List;

    iget-object v1, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x64a

    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6c
    return-void
.end method

.method public final getPrice()I
    .registers 7

    .line 176
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4d

    move v0, v1

    .line 178
    :goto_a
    iget-object v2, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_31

    .line 179
    iget-object v2, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amounts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->prototype:Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;

    iget-wide v4, v4, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;->amount:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2e

    .line 180
    iget-object v2, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amountPrices:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v2, v0}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v0

    const/4 v2, 0x1

    goto :goto_33

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_31
    move v0, v1

    move v2, v0

    :goto_33
    if-nez v2, :cond_4c

    .line 186
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->prototype:Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;

    iget-object v2, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amounts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;->amount:D

    .line 187
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->amountPrices:Lio/blueflower/stapel2d/util/IntList;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/util/IntList;->get(I)I

    move-result v1

    goto :goto_4d

    :cond_4c
    move v1, v0

    :cond_4d
    :goto_4d
    add-int/lit8 v1, v1, 0xa

    return v1
.end method

###### Class info.flowersoft.theotown.online.MakeCityGiftDialog.AnonymousClass1 (info.flowersoft.theotown.online.MakeCityGiftDialog$1)
.class public Linfo/flowersoft/theotown/online/MakeCityGiftDialog$1;
.super Ljava/lang/Object;
.source "MakeCityGiftDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/MakeCityGiftDialog;-><init>(Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/MakeCityGiftDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/MakeCityGiftDialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 63
    iput-object p1, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$1;->this$0:Linfo/flowersoft/theotown/online/MakeCityGiftDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 66
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$1;->this$0:Linfo/flowersoft/theotown/online/MakeCityGiftDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->access$000(Linfo/flowersoft/theotown/online/MakeCityGiftDialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.MakeCityGiftDialog.AnonymousClass2 (info.flowersoft.theotown.online.MakeCityGiftDialog$2)
.class public Linfo/flowersoft/theotown/online/MakeCityGiftDialog$2;
.super Ljava/lang/Object;
.source "MakeCityGiftDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/MakeCityGiftDialog;-><init>(Linfo/flowersoft/theotown/online/CityGiftManager;Linfo/flowersoft/theotown/city/City;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/MakeCityGiftDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/MakeCityGiftDialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 87
    iput-object p1, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$2;->this$0:Linfo/flowersoft/theotown/online/MakeCityGiftDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 90
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$2;->this$0:Linfo/flowersoft/theotown/online/MakeCityGiftDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->access$100(Linfo/flowersoft/theotown/online/MakeCityGiftDialog;)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.MakeCityGiftDialog.AnonymousClass3 (info.flowersoft.theotown.online.MakeCityGiftDialog$3)
.class public Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3;
.super Ljava/lang/Object;
.source "MakeCityGiftDialog.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->buy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/online/MakeCityGiftDialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/MakeCityGiftDialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 199
    iput-object p1, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3;->this$0:Linfo/flowersoft/theotown/online/MakeCityGiftDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
    .registers 11

    .line 202
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3;->this$0:Linfo/flowersoft/theotown/online/MakeCityGiftDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->access$300(Linfo/flowersoft/theotown/online/MakeCityGiftDialog;)Linfo/flowersoft/theotown/online/CityGiftManager;

    move-result-object v1

    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3;->this$0:Linfo/flowersoft/theotown/online/MakeCityGiftDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->access$200(Linfo/flowersoft/theotown/online/MakeCityGiftDialog;)Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;

    move-result-object v0

    iget-object v2, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;->type:Linfo/flowersoft/theotown/online/GiftType;

    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3;->this$0:Linfo/flowersoft/theotown/online/MakeCityGiftDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->access$200(Linfo/flowersoft/theotown/online/MakeCityGiftDialog;)Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;

    move-result-object v0

    iget-wide v3, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;->amount:D

    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3;->this$0:Linfo/flowersoft/theotown/online/MakeCityGiftDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->access$200(Linfo/flowersoft/theotown/online/MakeCityGiftDialog;)Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;

    move-result-object v0

    iget-object v5, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;->message:Ljava/lang/String;

    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3;->this$0:Linfo/flowersoft/theotown/online/MakeCityGiftDialog;

    .line 203
    invoke-static {v0}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->access$200(Linfo/flowersoft/theotown/online/MakeCityGiftDialog;)Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;

    move-result-object v0

    iget-boolean v6, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;->priv:Z

    new-instance v7, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3$1;

    invoke-direct {v7, p0, p1}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3$1;-><init>(Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V

    new-instance v8, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3$2;

    invoke-direct {v8, p0, p1}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3$2;-><init>(Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V

    .line 202
    invoke-virtual/range {v1 .. v8}, Linfo/flowersoft/theotown/online/CityGiftManager;->createGift(Linfo/flowersoft/theotown/online/GiftType;DLjava/lang/String;ZLjava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.MakeCityGiftDialog.AnonymousClass3.AnonymousClass1 (info.flowersoft.theotown.online.MakeCityGiftDialog$3$1)
.class public Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3$1;
.super Ljava/lang/Object;
.source "MakeCityGiftDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3;->handle(Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3;

.field public final synthetic val$reporter:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
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

    .line 203
    iput-object p1, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3$1;->this$1:Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3$1;->val$reporter:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 206
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3$1;->val$reporter:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;->report(Z)V

    .line 207
    iget-object v0, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3$1;->this$1:Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3;

    iget-object v0, v0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3;->this$0:Linfo/flowersoft/theotown/online/MakeCityGiftDialog;

    invoke-static {v0}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog;->access$300(Linfo/flowersoft/theotown/online/MakeCityGiftDialog;)Linfo/flowersoft/theotown/online/CityGiftManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/online/CityGiftManager;->fetch(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.MakeCityGiftDialog.AnonymousClass3.AnonymousClass2 (info.flowersoft.theotown.online.MakeCityGiftDialog$3$2)
.class public Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3$2;
.super Ljava/lang/Object;
.source "MakeCityGiftDialog.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3;->handle(Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
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
.field public final synthetic this$1:Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3;

.field public final synthetic val$reporter:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
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

    .line 209
    iput-object p1, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3$2;->this$1:Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3;

    iput-object p2, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3$2;->val$reporter:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;

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

    .line 209
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3$2;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .registers 3

    .line 212
    iget-object p1, p0, Linfo/flowersoft/theotown/online/MakeCityGiftDialog$3$2;->val$reporter:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;->report(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.online.MakeCityGiftDialog.GiftPrototype (info.flowersoft.theotown.online.MakeCityGiftDialog$GiftPrototype)
.class public Linfo/flowersoft/theotown/online/MakeCityGiftDialog$GiftPrototype;
.super Ljava/lang/Object;
.source "MakeCityGiftDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/online/MakeCityGiftDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GiftPrototype"
.end annotation


# instance fields
.field public amount:D

.field public message:Ljava/lang/String;

.field public priv:Z

.field public type:Linfo/flowersoft/theotown/online/GiftType;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
