###### Class info.flowersoft.theotown.ui.SpendDiamondsButton (info.flowersoft.theotown.ui.SpendDiamondsButton)
.class public Linfo/flowersoft/theotown/ui/SpendDiamondsButton;
.super Linfo/flowersoft/theotown/ui/GoldButton;
.source "SpendDiamondsButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;,
        Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;
    }
.end annotation


# static fields
.field public static FLAG_REGION_COIN:I = 0x1


# instance fields
.field public final amount:I

.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final diamondId:Ljava/lang/String;

.field public final flags:I

.field public final onSuccess:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;

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
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(IILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;IILio/blueflower/stapel2d/util/Setter;Ljava/lang/String;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lio/blueflower/stapel2d/gui/Gadget;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;",
            "II",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-static {p7}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->getFlagsIcon(I)I

    move-result v1

    .line 56
    invoke-virtual {p3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v6

    .line 54
    const-string v2, ""

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 58
    iput-object p4, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 59
    invoke-virtual {p4}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 60
    iput-object p5, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->onSuccess:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;

    .line 61
    iput p6, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->amount:I

    .line 62
    iput p7, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->flags:I

    move-object/from16 p1, p8

    .line 63
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    move-object/from16 p1, p9

    .line 64
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->diamondId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Getter;IILio/blueflower/stapel2d/util/Setter;Ljava/lang/String;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lio/blueflower/stapel2d/gui/Gadget;",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 41
    new-instance v5, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$1;

    invoke-direct {v5, p5}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$1;-><init>(Lio/blueflower/stapel2d/util/Getter;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;-><init>(IILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;IILio/blueflower/stapel2d/util/Setter;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/SpendDiamondsButton;)I
    .registers 1

    .line 21
    iget p0, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->amount:I

    return p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/ui/SpendDiamondsButton;)Ljava/lang/String;
    .registers 1

    .line 21
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->diamondId:Ljava/lang/String;

    return-object p0
.end method

.method public static getFlagsIcon(I)I
    .registers 1

    .line 148
    invoke-static {p0}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->isRegionCoinFlagSet(I)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 149
    sget p0, Linfo/flowersoft/theotown/resources/Resources;->ICON_ONLINE_REGION_COIN:I

    return p0

    .line 151
    :cond_9
    sget p0, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND:I

    return p0
.end method

.method public static isRegionCoinFlagSet(I)Z
    .registers 2

    .line 144
    sget v0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->FLAG_REGION_COIN:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onClick()V
    .registers 6

    .line 104
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 106
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    .line 108
    iget v1, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->flags:I

    invoke-static {v1}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->isRegionCoinFlagSet(I)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, ""

    if-eqz v1, :cond_50

    .line 109
    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getRegionCoins()I

    move-result v1

    iget v4, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->amount:I

    if-lt v1, v4, :cond_25

    .line 110
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->onSuccess:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;

    new-instance v2, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$2;

    invoke-direct {v2, p0, v0}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$2;-><init>(Linfo/flowersoft/theotown/ui/SpendDiamondsButton;Linfo/flowersoft/theotown/mechanics/GameHandler;)V

    invoke-interface {v1, v2}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;->handle(Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V

    return-void

    .line 120
    :cond_25
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->diamondId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->amount:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Not enough region coins"

    invoke-interface {v0, v4, v1, v3}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v0, Linfo/flowersoft/theotown/ui/RegionCoinDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v3}, Linfo/flowersoft/theotown/ui/RegionCoinDialog;-><init>(Lio/blueflower/stapel2d/gamestack/Translator;Lio/blueflower/stapel2d/gui/Master;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void

    .line 124
    :cond_50
    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v1

    iget v4, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->amount:I

    if-lt v1, v4, :cond_95

    .line 125
    sget-object v1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->diamondId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->amount:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Spend diamonds"

    invoke-interface {v1, v4, v2, v3}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget v1, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->amount:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "diamond button "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->diamondId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/mechanics/GameHandler;->spendDiamonds(ILjava/lang/String;)V

    .line 127
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->onSuccess:Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;

    new-instance v2, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$3;

    invoke-direct {v2, p0, v0}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$3;-><init>(Linfo/flowersoft/theotown/ui/SpendDiamondsButton;Linfo/flowersoft/theotown/mechanics/GameHandler;)V

    invoke-interface {v1, v2}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;->handle(Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V

    return-void

    .line 136
    :cond_95
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->diamondId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->amount:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Not enough diamonds"

    invoke-interface {v0, v4, v1, v3}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "Open"

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->diamondId:Ljava/lang/String;

    const-string v4, "Shop"

    invoke-interface {v0, v4, v1, v3}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Linfo/flowersoft/theotown/ui/DiamondShopDialog;

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v1

    check-cast v1, Lio/blueflower/stapel2d/gui/Master;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    invoke-direct {v0, v1, v3, v4}, Linfo/flowersoft/theotown/ui/DiamondShopDialog;-><init>(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public onUpdate()V
    .registers 7

    .line 69
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 73
    iget v0, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->flags:I

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->isRegionCoinFlagSet(I)Z

    move-result v0

    const/16 v1, 0x142

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_37

    .line 74
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getRegionCoins()I

    move-result v0

    .line 75
    iget v4, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->amount:I

    if-lt v0, v4, :cond_1c

    move v2, v3

    .line 77
    :cond_1c
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 78
    invoke-interface {v3, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->amount:I

    int-to-long v3, v3

    .line 79
    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/Localizer;->localizeDiamonds(J)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, v0

    .line 80
    invoke-static {v4, v5}, Linfo/flowersoft/theotown/util/Localizer;->localizeDiamonds(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 77
    invoke-static {v1, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5e

    .line 82
    :cond_37
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getDiamonds()I

    move-result v0

    .line 83
    iget v4, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->amount:I

    if-lt v0, v4, :cond_44

    move v2, v3

    .line 85
    :cond_44
    iget-object v3, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 86
    invoke-interface {v3, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->amount:I

    int-to-long v3, v3

    .line 87
    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/Localizer;->localizeDiamonds(J)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, v0

    .line 88
    invoke-static {v4, v5}, Linfo/flowersoft/theotown/util/Localizer;->localizeDiamonds(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 85
    invoke-static {v1, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_5e
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    if-eqz v2, :cond_65

    const/16 v2, 0x40d

    goto :goto_67

    :cond_65
    const/16 v2, 0x153

    .line 93
    :goto_67
    invoke-interface {v1, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 92
    invoke-static {v1, v0}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->getText()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/IconButton;->setText(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    :cond_85
    return-void
.end method

###### Class info.flowersoft.theotown.ui.SpendDiamondsButton.AnonymousClass1 (info.flowersoft.theotown.ui.SpendDiamondsButton$1)
.class Linfo/flowersoft/theotown/ui/SpendDiamondsButton$1;
.super Ljava/lang/Object;
.source "SpendDiamondsButton.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/SpendDiamondsButton;-><init>(IILio/blueflower/stapel2d/gui/Gadget;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Getter;IILio/blueflower/stapel2d/util/Setter;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$onSuccess:Lio/blueflower/stapel2d/util/Getter;


# direct methods
.method public constructor <init>(Lio/blueflower/stapel2d/util/Getter;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$1;->val$onSuccess:Lio/blueflower/stapel2d/util/Getter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
    .registers 3

    .line 45
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$1;->val$onSuccess:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {p1, v0}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;->report(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.SpendDiamondsButton.AnonymousClass2 (info.flowersoft.theotown.ui.SpendDiamondsButton$2)
.class Linfo/flowersoft/theotown/ui/SpendDiamondsButton$2;
.super Ljava/lang/Object;
.source "SpendDiamondsButton.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/SpendDiamondsButton;

.field public final synthetic val$handler:Linfo/flowersoft/theotown/mechanics/GameHandler;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/SpendDiamondsButton;Linfo/flowersoft/theotown/mechanics/GameHandler;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$2;->this$0:Linfo/flowersoft/theotown/ui/SpendDiamondsButton;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$2;->val$handler:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public report(Z)V
    .registers 5

    if-eqz p1, :cond_31

    .line 114
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$2;->val$handler:Linfo/flowersoft/theotown/mechanics/GameHandler;

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$2;->this$0:Linfo/flowersoft/theotown/ui/SpendDiamondsButton;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->access$000(Linfo/flowersoft/theotown/ui/SpendDiamondsButton;)I

    move-result v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->spendRegionCoins(I)V

    .line 115
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$2;->this$0:Linfo/flowersoft/theotown/ui/SpendDiamondsButton;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->access$100(Linfo/flowersoft/theotown/ui/SpendDiamondsButton;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$2;->this$0:Linfo/flowersoft/theotown/ui/SpendDiamondsButton;

    invoke-static {v2}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->access$000(Linfo/flowersoft/theotown/ui/SpendDiamondsButton;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Spend region coins"

    invoke-interface {p1, v2, v0, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    return-void
.end method

###### Class info.flowersoft.theotown.ui.SpendDiamondsButton.AnonymousClass3 (info.flowersoft.theotown.ui.SpendDiamondsButton$3)
.class Linfo/flowersoft/theotown/ui/SpendDiamondsButton$3;
.super Ljava/lang/Object;
.source "SpendDiamondsButton.java"

# interfaces
.implements Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/SpendDiamondsButton;

.field public final synthetic val$handler:Linfo/flowersoft/theotown/mechanics/GameHandler;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/SpendDiamondsButton;Linfo/flowersoft/theotown/mechanics/GameHandler;)V
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

    .line 127
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$3;->this$0:Linfo/flowersoft/theotown/ui/SpendDiamondsButton;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$3;->val$handler:Linfo/flowersoft/theotown/mechanics/GameHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public report(Z)V
    .registers 5

    if-nez p1, :cond_25

    .line 131
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$3;->val$handler:Linfo/flowersoft/theotown/mechanics/GameHandler;

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$3;->this$0:Linfo/flowersoft/theotown/ui/SpendDiamondsButton;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->access$000(Linfo/flowersoft/theotown/ui/SpendDiamondsButton;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel diamond button "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/SpendDiamondsButton$3;->this$0:Linfo/flowersoft/theotown/ui/SpendDiamondsButton;

    invoke-static {v2}, Linfo/flowersoft/theotown/ui/SpendDiamondsButton;->access$100(Linfo/flowersoft/theotown/ui/SpendDiamondsButton;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->earnDiamonds(IZLjava/lang/String;)V

    :cond_25
    return-void
.end method

###### Class info.flowersoft.theotown.ui.SpendDiamondsButton.HandlerReporter (info.flowersoft.theotown.ui.SpendDiamondsButton$HandlerReporter)
.class public interface abstract Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;
.super Ljava/lang/Object;
.source "SpendDiamondsButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/SpendDiamondsButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HandlerReporter"
.end annotation


# virtual methods
.method public abstract report(Z)V
.end method

###### Class info.flowersoft.theotown.ui.SpendDiamondsButton.SuccessHandler (info.flowersoft.theotown.ui.SpendDiamondsButton$SuccessHandler)
.class public interface abstract Linfo/flowersoft/theotown/ui/SpendDiamondsButton$SuccessHandler;
.super Ljava/lang/Object;
.source "SpendDiamondsButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/SpendDiamondsButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SuccessHandler"
.end annotation


# virtual methods
.method public abstract handle(Linfo/flowersoft/theotown/ui/SpendDiamondsButton$HandlerReporter;)V
.end method
