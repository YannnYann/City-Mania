###### Class info.flowersoft.theotown.ui.FeaturesShopDialog (info.flowersoft.theotown.ui.FeaturesShopDialog)
.class public Linfo/flowersoft/theotown/ui/FeaturesShopDialog;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "FeaturesShopDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/FeaturesShopDialog$Item;
    }
.end annotation


# instance fields
.field public final context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

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
.method public static synthetic $r8$lambda$7xRgZIp6lwEBG0TTssE8rf_BeLs(Linfo/flowersoft/theotown/ui/FeaturesShopDialog;Linfo/flowersoft/theotown/draft/FeatureDraft;)Ljava/lang/Boolean;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->buyFeature(Linfo/flowersoft/theotown/draft/FeatureDraft;)Z

    const/4 p1, 0x0

    .line 129
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 130
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;",
            "Lio/blueflower/stapel2d/gui/Master;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Lio/blueflower/stapel2d/gamestack/Stage;",
            ">;)V"
        }
    .end annotation

    .line 41
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_FEATURES:I

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v0

    const/16 v2, 0x478

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x12c

    const/16 v5, 0x11d

    const-string v3, ""

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 43
    iput-object p1, v0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 44
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p2

    iput-object p2, v0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    .line 45
    iput-object p3, v0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    .line 47
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->removeControlLine()V

    .line 48
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setCanCloseViaBackground(Z)V

    .line 52
    new-instance v2, Linfo/flowersoft/theotown/ui/ColorRect;

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v3, v3, Lio/blueflower/stapel2d/gui/Skin;->cMenuBg:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Linfo/flowersoft/theotown/ui/ColorRect;-><init>(Lio/blueflower/stapel2d/drawing/Color;Lio/blueflower/stapel2d/gui/Gadget;)V

    .line 54
    invoke-interface {p2}, Lio/blueflower/stapel2d/gamestack/Translator;->prefersRTL()Z

    move-result v10

    .line 56
    new-instance v2, Lio/blueflower/stapel2d/gui/ListBox;

    const/4 v6, 0x0

    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 57
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 58
    invoke-virtual {v2, v1}, Lio/blueflower/stapel2d/gui/ListBox;->setShowBorder(Z)V

    .line 61
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    const-string v3, "consumable"

    const-class v4, Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/resources/Drafts;->getDraftsWithTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_60
    :goto_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 63
    iget-object v5, v4, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    if-eqz v5, :cond_60

    .line 64
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    :cond_74
    move v3, v1

    .line 73
    :goto_75
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a6

    .line 74
    new-instance v4, Linfo/flowersoft/theotown/ui/listitem/GroupItem;

    invoke-direct {v4}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;-><init>()V

    invoke-virtual {v2, v4}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    move v5, v1

    .line 75
    :goto_84
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    const/4 v7, 0x3

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_a3

    .line 76
    new-instance v6, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$Item;

    add-int v7, v3, v5

    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-direct {v6, p0, v7, v2}, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$Item;-><init>(Linfo/flowersoft/theotown/ui/FeaturesShopDialog;Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/gui/ListBox;)V

    invoke-virtual {v4, v6}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->add(Lio/blueflower/stapel2d/gui/ListItem;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_84

    :cond_a3
    add-int/lit8 v3, v3, 0x3

    goto :goto_75

    .line 80
    :cond_a6
    new-instance p2, Linfo/flowersoft/theotown/ui/listitem/GroupItem;

    invoke-direct {p2}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;-><init>()V

    invoke-virtual {v2, p2}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 81
    new-instance v5, Linfo/flowersoft/theotown/ui/IconItem;

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUS:I

    iget-object v1, v0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x945

    invoke-interface {v1, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$1;

    invoke-direct {v8, p0, p3, p1}, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$1;-><init>(Linfo/flowersoft/theotown/ui/FeaturesShopDialog;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v10}, Linfo/flowersoft/theotown/ui/IconItem;-><init>(ILjava/lang/String;Ljava/lang/Runnable;ZZ)V

    invoke-virtual {p2, v5}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->add(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 98
    new-instance v5, Linfo/flowersoft/theotown/ui/IconItem;

    .line 99
    invoke-static {}, Linfo/flowersoft/theotown/store/StoreStage;->getIcon()I

    move-result v6

    iget-object v1, v0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xab3

    .line 100
    invoke-interface {v1, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$2;

    invoke-direct {v8, p0, p3, p1}, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$2;-><init>(Linfo/flowersoft/theotown/ui/FeaturesShopDialog;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-direct/range {v5 .. v10}, Linfo/flowersoft/theotown/ui/IconItem;-><init>(ILjava/lang/String;Ljava/lang/Runnable;ZZ)V

    .line 98
    invoke-virtual {p2, v5}, Linfo/flowersoft/theotown/ui/listitem/GroupItem;->add(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 112
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getWidth()I

    move-result p1

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ListBox;->getContentHeight()I

    move-result p2

    iget-object p3, v0, Linfo/flowersoft/theotown/ui/Dialog;->window:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {p3}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/ui/Dialog;->setSize(II)V

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/ui/FeaturesShopDialog;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;
    .registers 1

    .line 34
    iget-object p0, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-object p0
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/ui/FeaturesShopDialog;Linfo/flowersoft/theotown/draft/FeatureDraft;)V
    .registers 2

    .line 34
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/FeaturesShopDialog;->showDialog(Linfo/flowersoft/theotown/draft/FeatureDraft;)V

    return-void
.end method

.method public static getExtraInfo(Linfo/flowersoft/theotown/draft/FeatureDraft;)Lio/blueflower/stapel2d/util/Tuple;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/draft/FeatureDraft;",
            ")",
            "Lio/blueflower/stapel2d/util/Tuple<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 140
    iget v0, p0, Linfo/flowersoft/theotown/draft/FeatureDraft;->time:I

    if-lez v0, :cond_7

    .line 141
    sget p0, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAYFASTFAST:I

    goto :goto_1c

    .line 143
    :cond_7
    iget v0, p0, Linfo/flowersoft/theotown/draft/FeatureDraft;->shortBuildTimeMin:I

    const v1, 0xea60

    if-lez v0, :cond_12

    .line 144
    sget p0, Linfo/flowersoft/theotown/resources/Resources;->ICON_SHORT_BUILD_TIME:I

    mul-int/2addr v0, v1

    goto :goto_1c

    .line 146
    :cond_12
    iget p0, p0, Linfo/flowersoft/theotown/draft/FeatureDraft;->doubledIncomeTimeMin:I

    if-lez p0, :cond_2b

    .line 147
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_MONEY:I

    mul-int/2addr p0, v1

    move v4, v0

    move v0, p0

    move p0, v4

    .line 153
    :goto_1c
    new-instance v1, Lio/blueflower/stapel2d/util/Tuple;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    int-to-long v2, v0

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final showDialog(Linfo/flowersoft/theotown/draft/FeatureDraft;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 116
    new-instance v2, Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v3, v0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v7

    .line 118
    invoke-virtual {v2, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getText(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {v1}, Linfo/flowersoft/theotown/ui/FeaturesShopDialog;->getExtraInfo(Linfo/flowersoft/theotown/draft/FeatureDraft;)Lio/blueflower/stapel2d/util/Tuple;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v5, 0x75a

    invoke-interface {v2, v5}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_43
    move-object v8, v2

    .line 125
    new-instance v5, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_FEATURES:I

    iget-object v2, v0, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    .line 126
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, v1, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    .line 127
    invoke-virtual {v2}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v2

    int-to-long v10, v2

    new-instance v12, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$$ExternalSyntheticLambda0;

    invoke-direct {v12, v0, v1}, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/ui/FeaturesShopDialog;Linfo/flowersoft/theotown/draft/FeatureDraft;)V

    iget-object v13, v0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog;->stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    iget-object v14, v0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v15, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unlock feature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Linfo/flowersoft/theotown/draft/Draft;->id:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-direct/range {v5 .. v17}, Linfo/flowersoft/theotown/ui/BuyOrVideoDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;JLio/blueflower/stapel2d/util/Getter;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x1

    .line 133
    invoke-virtual {v5, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.FeaturesShopDialog.AnonymousClass1 (info.flowersoft.theotown.ui.FeaturesShopDialog$1)
.class Linfo/flowersoft/theotown/ui/FeaturesShopDialog$1;
.super Ljava/lang/Object;
.source "FeaturesShopDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/FeaturesShopDialog;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/FeaturesShopDialog;

.field public final synthetic val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/FeaturesShopDialog;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
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

    .line 81
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$1;->this$0:Linfo/flowersoft/theotown/ui/FeaturesShopDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$1;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$1;->val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 84
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$1;->this$0:Linfo/flowersoft/theotown/ui/FeaturesShopDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 85
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$1;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    new-instance v1, Linfo/flowersoft/theotown/stages/FeaturesStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$1;->val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, v2, v0}, Linfo/flowersoft/theotown/stages/FeaturesStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/util/Setter;)V

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.FeaturesShopDialog.AnonymousClass2 (info.flowersoft.theotown.ui.FeaturesShopDialog$2)
.class Linfo/flowersoft/theotown/ui/FeaturesShopDialog$2;
.super Ljava/lang/Object;
.source "FeaturesShopDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/FeaturesShopDialog;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/util/Setter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/FeaturesShopDialog;

.field public final synthetic val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public final synthetic val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/FeaturesShopDialog;Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
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

    .line 101
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$2;->this$0:Linfo/flowersoft/theotown/ui/FeaturesShopDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$2;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$2;->val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 104
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "Open"

    const-string v2, "Gamemmenu"

    const-string v3, "Store"

    invoke-interface {v0, v3, v1, v2}, Linfo/flowersoft/theotown/crossplatform/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$2;->val$stageVisitor:Lio/blueflower/stapel2d/util/Setter;

    new-instance v1, Linfo/flowersoft/theotown/store/StoreStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$2;->val$context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/store/StoreStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-interface {v0, v1}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.FeaturesShopDialog.Item (info.flowersoft.theotown.ui.FeaturesShopDialog$Item)
.class Linfo/flowersoft/theotown/ui/FeaturesShopDialog$Item;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "FeaturesShopDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/FeaturesShopDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Item"
.end annotation


# instance fields
.field public cmd:Linfo/flowersoft/theotown/ui/GoldButton;

.field public featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

.field public icon:I

.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/FeaturesShopDialog;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/FeaturesShopDialog;Linfo/flowersoft/theotown/draft/FeatureDraft;Lio/blueflower/stapel2d/gui/ListBox;)V
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

    .line 161
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$Item;->this$0:Linfo/flowersoft/theotown/ui/FeaturesShopDialog;

    .line 162
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    invoke-static {p1}, Linfo/flowersoft/theotown/ui/FeaturesShopDialog;->access$000(Linfo/flowersoft/theotown/ui/FeaturesShopDialog;)Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object p1

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 163
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$Item;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    .line 165
    new-instance v2, Linfo/flowersoft/theotown/ui/GoldButton;

    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_DIAMOND_SMALL:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Linfo/flowersoft/theotown/draft/FeatureDraft;->diamondPrice:Linfo/flowersoft/theotown/util/SpecialInt;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/SpecialInt;->get()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x58

    const/16 v8, 0x18

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v9, p3

    invoke-direct/range {v2 .. v9}, Linfo/flowersoft/theotown/ui/GoldButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v2, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$Item;->cmd:Linfo/flowersoft/theotown/ui/GoldButton;

    .line 168
    invoke-static {p2}, Linfo/flowersoft/theotown/ui/FeaturesShopDialog;->getExtraInfo(Linfo/flowersoft/theotown/draft/FeatureDraft;)Lio/blueflower/stapel2d/util/Tuple;

    move-result-object p1

    if-eqz p1, :cond_55

    .line 170
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$Item;->icon:I

    .line 171
    invoke-virtual {p1}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$Item;->title:Ljava/lang/String;

    :cond_55
    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p7

    .line 177
    iget-object v5, v4, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 179
    iget-object v6, v4, Lio/blueflower/stapel2d/gui/Skin;->cMenuItem:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 181
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v7, v1

    int-to-float v8, v2

    int-to-float v9, v3

    add-int/lit8 v10, p6, -0x1

    int-to-float v10, v10

    iget v11, v4, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRectBordered:I

    invoke-virtual/range {v5 .. v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    const/16 v6, 0xc8

    .line 183
    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 184
    iget-object v6, v4, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 185
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    int-to-float v7, v1

    int-to-float v8, v2

    int-to-float v9, v3

    add-int/lit8 v10, p6, -0x1

    int-to-float v10, v10

    sget v11, Linfo/flowersoft/theotown/resources/Resources;->FRAME_SHOPITEM_BACKGROUND:I

    invoke-virtual/range {v5 .. v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 187
    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 189
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v10, v0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$Item;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget-object v10, v10, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v14, 0x0

    aget v13, v10, v14

    const/high16 v10, 0x42480000    # 50.0f

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual/range {v5 .. v13}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 192
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v10

    long-to-int v6, v10

    if-gez v6, :cond_54

    const/high16 v10, -0x80000000

    sub-int/2addr v6, v10

    .line 194
    :cond_54
    rem-int/lit16 v6, v6, 0xfa0

    mul-int/lit8 v10, v1, 0xd

    add-int/2addr v6, v10

    mul-int/lit8 v10, v2, 0x1d

    add-int/2addr v6, v10

    int-to-float v6, v6

    const/high16 v10, 0x457a0000    # 4000.0f

    div-float/2addr v6, v10

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v6, v10

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

    const/high16 v10, 0x42700000    # 60.0f

    mul-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 196
    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 197
    sget-object v6, Lio/blueflower/stapel2d/drawing/Colors;->YELLOW:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v15, 0xff

    .line 198
    invoke-virtual {v5, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 199
    sget-object v6, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget-object v10, v0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$Item;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    iget-object v10, v10, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    aget v13, v10, v14

    const/high16 v10, 0x42480000    # 50.0f

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f000000    # 0.5f

    invoke-virtual/range {v5 .. v13}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 200
    invoke-virtual {v5, v14}, Lio/blueflower/stapel2d/drawing/Engine;->setAdditive(I)V

    .line 201
    sget-object v13, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v13}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 202
    invoke-virtual {v5, v15}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 204
    iget-object v4, v4, Lio/blueflower/stapel2d/gui/Skin;->cMenuText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v5, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 205
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, v4, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v6, v0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    div-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v1

    int-to-float v7, v7

    div-int/lit8 v8, p6, 0x2

    add-int v14, v2, v8

    add-int/lit8 v8, v14, -0x5

    int-to-float v8, v8

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v16, v5

    move-object v5, v4

    move-object/from16 v4, v16

    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move-object v5, v4

    .line 206
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v4, v4, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v6, v0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$Item;->title:Ljava/lang/String;

    add-int/lit8 v7, v1, 0x20

    int-to-float v7, v7

    add-int/lit8 v8, v14, 0x8

    int-to-float v8, v8

    const/4 v11, 0x0

    move-object/from16 v16, v5

    move-object v5, v4

    move-object/from16 v4, v16

    invoke-virtual/range {v4 .. v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    move-object v5, v4

    .line 208
    invoke-virtual {v5, v13}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/high16 v4, 0x3f000000    # 0.5f

    .line 209
    invoke-virtual {v5, v4, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 210
    sget-object v4, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v6, v1, 0x12

    int-to-float v6, v6

    add-int/lit8 v14, v14, 0x6

    int-to-float v7, v14

    iget v8, v0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$Item;->icon:I

    invoke-virtual {v5, v4, v6, v7, v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 211
    invoke-virtual {v5, v4, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 213
    iget-object v4, v0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$Item;->cmd:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v5

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v4, v3}, Lio/blueflower/stapel2d/gui/Gadget;->setX(I)V

    .line 214
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$Item;->cmd:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->update()V

    .line 215
    iget-object v3, v0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$Item;->cmd:Linfo/flowersoft/theotown/ui/GoldButton;

    add-int v2, v2, p6

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v3, v1, v2}, Linfo/flowersoft/theotown/ui/GoldButton;->draw(II)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x60

    return p1
.end method

.method public onClick(II)V
    .registers 3

    .line 225
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    .line 226
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$Item;->this$0:Linfo/flowersoft/theotown/ui/FeaturesShopDialog;

    iget-object p2, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$Item;->featureDraft:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/ui/FeaturesShopDialog;->access$100(Linfo/flowersoft/theotown/ui/FeaturesShopDialog;Linfo/flowersoft/theotown/draft/FeatureDraft;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.FeaturesShopDialog$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.FeaturesShopDialog$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/FeaturesShopDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/blueflower/stapel2d/util/Getter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/FeaturesShopDialog;

.field public final synthetic f$1:Linfo/flowersoft/theotown/draft/FeatureDraft;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/FeaturesShopDialog;Linfo/flowersoft/theotown/draft/FeatureDraft;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/FeaturesShopDialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/draft/FeatureDraft;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/ui/FeaturesShopDialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/FeaturesShopDialog$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/draft/FeatureDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/FeaturesShopDialog;->$r8$lambda$7xRgZIp6lwEBG0TTssE8rf_BeLs(Linfo/flowersoft/theotown/ui/FeaturesShopDialog;Linfo/flowersoft/theotown/draft/FeatureDraft;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
