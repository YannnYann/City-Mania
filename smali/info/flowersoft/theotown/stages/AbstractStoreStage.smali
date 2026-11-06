###### Class info.flowersoft.theotown.stages.AbstractStoreStage (info.flowersoft.theotown.stages.AbstractStoreStage)
.class public abstract Linfo/flowersoft/theotown/stages/AbstractStoreStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "AbstractStoreStage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;
    }
.end annotation


# instance fields
.field public final HEADER_HEIGHT:I

.field public allTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;",
            ">;"
        }
    .end annotation
.end field

.field public header:Lio/blueflower/stapel2d/gui/Panel;

.field public lastShiftY:F

.field public line:Lio/blueflower/stapel2d/gui/ElementLine;

.field public listBox:Lio/blueflower/stapel2d/gui/ListBox;

.field public tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$REpDBcGytcVh7gNoGp8PE5miJrc(Linfo/flowersoft/theotown/stages/AbstractStoreStage;)V
    .registers 1

    .line 116
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->help()V

    return-void
.end method

.method public static synthetic $r8$lambda$VWTPekEBKrZRfIPQ-IlhrNZe_U4(Linfo/flowersoft/theotown/stages/AbstractStoreStage;)V
    .registers 1

    .line 114
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->search()V

    return-void
.end method

.method public static synthetic $r8$lambda$WHf0p1OFye2B3eSd6ngsk6Xpgfo(Linfo/flowersoft/theotown/stages/AbstractStoreStage;)V
    .registers 1

    .line 118
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->close()V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    const/16 p1, 0x20

    .line 30
    iput p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->HEADER_HEIGHT:I

    .line 35
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->tabs:Ljava/util/List;

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->allTabs:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Linfo/flowersoft/theotown/stages/AbstractStoreStage;Ljava/util/List;Lio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/PopupBuilder;)V
    .registers 4

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->buildTabPopup(Ljava/util/List;Lio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/PopupBuilder;)V

    return-void
.end method


# virtual methods
.method public addActionButton(IFLjava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Lio/blueflower/stapel2d/gui/Button;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lio/blueflower/stapel2d/gui/Button;"
        }
    .end annotation

    .line 269
    new-instance v0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$9;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1e

    const/16 v5, 0x1e

    move-object v1, p0

    move v8, p1

    move v7, p2

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v0 .. v10}, Linfo/flowersoft/theotown/stages/AbstractStoreStage$9;-><init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;IIIILio/blueflower/stapel2d/gui/Gadget;FILjava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)V

    return-object v0
.end method

.method public addTabButton(ILio/blueflower/stapel2d/util/Getter;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 325
    invoke-virtual/range {v0 .. v5}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->addTabButton(ILio/blueflower/stapel2d/util/Getter;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;)Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;

    move-result-object p1

    return-object p1
.end method

.method public addTabButton(ILio/blueflower/stapel2d/util/Getter;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;)Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;",
            "Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;",
            ")",
            "Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;"
        }
    .end annotation

    .line 314
    new-instance v0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;

    invoke-direct {v0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;-><init>(ILio/blueflower/stapel2d/util/Getter;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)V

    if-nez p5, :cond_d

    .line 316
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->tabs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 318
    :cond_d
    iget-object p1, p5, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;->children:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    :goto_12
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->allTabs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addTabButton(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;"
        }
    .end annotation

    .line 329
    new-instance v0, Lio/blueflower/stapel2d/util/StaticGetter;

    invoke-direct {v0, p2}, Lio/blueflower/stapel2d/util/StaticGetter;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0, p3, p4}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->addTabButton(ILio/blueflower/stapel2d/util/Getter;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;

    move-result-object p1

    return-object p1
.end method

.method public addTabSeparator()V
    .registers 2

    const/4 v0, 0x0

    .line 301
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->addTabSeparator(Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;)V

    return-void
.end method

.method public addTabSeparator(Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;)V
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 306
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->tabs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 308
    :cond_9
    iget-object p1, p1, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;->children:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :goto_e
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->allTabs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public abstract buildHeaderButtons(Lio/blueflower/stapel2d/gui/LineLayout;)V
.end method

.method public final buildTabPopup(Ljava/util/List;Lio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/PopupBuilder;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;",
            ">;",
            "Lio/blueflower/stapel2d/gui/Gadget;",
            "Linfo/flowersoft/theotown/ui/PopupBuilder;",
            ")V"
        }
    .end annotation

    .line 200
    new-instance v0, Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-direct {v0, p2}, Linfo/flowersoft/theotown/ui/PopupBuilder;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    if-eqz p3, :cond_1a

    .line 201
    invoke-virtual {p3}, Linfo/flowersoft/theotown/ui/PopupBuilder;->getSelectedButton()Linfo/flowersoft/theotown/ui/IconButton;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteX()I

    move-result v1

    invoke-virtual {p3}, Linfo/flowersoft/theotown/ui/PopupBuilder;->getSelectedButton()Linfo/flowersoft/theotown/ui/IconButton;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getAbsoluteY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/PopupBuilder;->setSource(II)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 202
    :cond_1a
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->getActiveTabIndex()I

    move-result v1

    if-eqz p3, :cond_35

    .line 205
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_BACKWARD:I

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x970

    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Linfo/flowersoft/theotown/stages/AbstractStoreStage$7;

    invoke-direct {v4, p0, p3}, Linfo/flowersoft/theotown/stages/AbstractStoreStage$7;-><init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;Linfo/flowersoft/theotown/ui/PopupBuilder;)V

    invoke-virtual {v0, v2, v3, v4}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/PopupBuilder;

    .line 211
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addSeparator()Linfo/flowersoft/theotown/ui/PopupBuilder;

    :cond_35
    const/4 p3, 0x0

    move v2, p3

    .line 214
    :goto_37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_77

    .line 215
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;

    if-eqz v3, :cond_71

    .line 217
    iget v4, v3, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;->icon:I

    iget-object v5, v3, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;->name:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v5}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v3, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;->children:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5a

    iget-object v6, v3, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;->onClick:Ljava/lang/Runnable;

    goto :goto_5f

    :cond_5a
    new-instance v6, Linfo/flowersoft/theotown/stages/AbstractStoreStage$8;

    invoke-direct {v6, p0, v3, p2, v0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage$8;-><init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;Lio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/PopupBuilder;)V

    :goto_5f
    if-ltz v1, :cond_6c

    iget-object v7, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->allTabs:Ljava/util/List;

    .line 222
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v3, v7, :cond_6a

    goto :goto_6c

    :cond_6a
    move v3, p3

    goto :goto_6d

    :cond_6c
    :goto_6c
    const/4 v3, 0x1

    .line 217
    :goto_6d
    invoke-virtual {v0, v4, v5, v6, v3}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addItem(ILjava/lang/String;Ljava/lang/Runnable;Z)Linfo/flowersoft/theotown/ui/PopupBuilder;

    goto :goto_74

    .line 224
    :cond_71
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->addSeparator()Linfo/flowersoft/theotown/ui/PopupBuilder;

    :goto_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 228
    :cond_77
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->build()Lio/blueflower/stapel2d/gui/Panel;

    return-void
.end method

.method public abstract close()V
.end method

.method public declared-synchronized enter()V
    .registers 17

    move-object/from16 v1, p0

    monitor-enter p0

    .line 45
    :try_start_3
    invoke-super {v1}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 47
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    const/16 v3, 0x258

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v0, v2

    const/4 v7, 0x2

    div-int/lit8 v8, v0, 0x2

    .line 48
    new-instance v0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$1;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 51
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    .line 52
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    add-int/lit8 v5, v2, -0x20

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/AbstractStoreStage$1;-><init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/gui/ListBox;->setShowBorder(Z)V

    .line 67
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0, v8, v2, v8, v2}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(IIII)V

    .line 70
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    const/16 v2, 0x84

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Lio/blueflower/stapel2d/gui/ListBox;->setVisibilityOffsets(II)V

    .line 73
    new-instance v0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$2;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingLeft()I

    move-result v2

    neg-int v2, v2

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v3

    neg-int v3, v3

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v4

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result v5

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/AbstractStoreStage$2;-><init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 95
    new-instance v0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$3;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0x20

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/AbstractStoreStage$3;-><init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->header:Lio/blueflower/stapel2d/gui/Panel;

    .line 107
    invoke-virtual {v0, v7, v7, v7, v7}, Lio/blueflower/stapel2d/gui/Gadget;->setPadding(IIII)V

    .line 108
    new-instance v8, Lio/blueflower/stapel2d/gui/ElementLine;

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->header:Lio/blueflower/stapel2d/gui/Panel;

    .line 109
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v13

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->header:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v14

    iget-object v15, v1, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->header:Lio/blueflower/stapel2d/gui/Panel;

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v15}, Lio/blueflower/stapel2d/gui/ElementLine;-><init>(IIIIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v8, v1, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    .line 112
    invoke-virtual {v8}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->buildHeaderButtons(Lio/blueflower/stapel2d/gui/LineLayout;)V

    .line 114
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_EYE:I

    new-instance v2, Linfo/flowersoft/theotown/stages/AbstractStoreStage$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/stages/AbstractStoreStage$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;)V

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0, v4, v2, v3}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->addActionButton(IFLjava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Lio/blueflower/stapel2d/gui/Button;

    .line 116
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_INFO:I

    new-instance v2, Linfo/flowersoft/theotown/stages/AbstractStoreStage$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/stages/AbstractStoreStage$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;)V

    invoke-virtual {v1, v0, v4, v2, v3}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->addActionButton(IFLjava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Lio/blueflower/stapel2d/gui/Button;

    .line 118
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fCloseButton:I

    new-instance v2, Linfo/flowersoft/theotown/stages/AbstractStoreStage$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Linfo/flowersoft/theotown/stages/AbstractStoreStage$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;)V

    invoke-virtual {v1, v0, v4, v2, v3}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->addActionButton(IFLjava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Lio/blueflower/stapel2d/gui/Button;

    .line 121
    new-instance v0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$4;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    add-int/lit8 v5, v2, -0x20

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/AbstractStoreStage$4;-><init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 141
    new-instance v0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$5;

    sget v2, Linfo/flowersoft/theotown/resources/Resources;->ICON_HAMBURGER:I

    const-string v3, ""

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/AbstractStoreStage$5;-><init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v2, v0

    .line 149
    new-instance v0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$6;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v3

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v2

    add-int/2addr v3, v2

    add-int/lit8 v2, v3, 0x1

    const-string v3, ""

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v4

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v7

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->line:Lio/blueflower/stapel2d/gui/ElementLine;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Linfo/flowersoft/theotown/stages/AbstractStoreStage$6;-><init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
    :try_end_11c
    .catchall {:try_start_3 .. :try_end_11c} :catchall_11e

    .line 197
    monitor-exit p0

    return-void

    :catchall_11e
    move-exception v0

    :try_start_11f
    monitor-exit p0
    :try_end_120
    .catchall {:try_start_11f .. :try_end_120} :catchall_11e

    throw v0
.end method

.method public getActiveTab()Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;
    .registers 3

    .line 244
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->getActiveTabIndex()I

    move-result v0

    if-ltz v0, :cond_f

    .line 246
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->allTabs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveTabIndex()I
    .registers 3

    const/4 v0, 0x0

    .line 253
    :goto_1
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->allTabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 254
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->allTabs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;

    if-eqz v1, :cond_1a

    .line 255
    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1a

    return v0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getFallbackIcon()I
.end method

.method public abstract getFallbackTitle()Ljava/lang/String;
.end method

.method public abstract help()V
.end method

.method public abstract isLoading()Z
.end method

.method public leave()V
    .registers 2

    .line 262
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->leave()V

    .line 263
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->getShiftY()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->lastShiftY:F

    .line 264
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->tabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 265
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->allTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public abstract search()V
.end method

.method public selectNextTab(I)V
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 232
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->allTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    .line 233
    :goto_9
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->allTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->allTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_30

    .line 234
    :cond_22
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->allTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;->onClick:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_30
    :goto_30
    add-int/lit8 p1, p1, 0x1

    .line 233
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->allTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    goto :goto_9
.end method

.method public selectPreviousTab(I)V
    .registers 3

    .line 238
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->allTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->allTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 239
    :goto_15
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->allTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->allTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_3c

    .line 240
    :cond_2e
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->allTabs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;->onClick:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 239
    :cond_3c
    :goto_3c
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->allTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->allTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    goto :goto_15
.end method

###### Class info.flowersoft.theotown.stages.AbstractStoreStage.AnonymousClass1 (info.flowersoft.theotown.stages.AbstractStoreStage$1)
.class public Linfo/flowersoft/theotown/stages/AbstractStoreStage$1;
.super Lio/blueflower/stapel2d/gui/ListBox;
.source "AbstractStoreStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractStoreStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 53
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$1;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public updateKeyInput(Lio/blueflower/stapel2d/key/KeyMapper;)V
    .registers 5

    const/16 v0, 0x14

    .line 57
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$1;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getDeltaTime()F

    move-result v0

    const/high16 v2, -0x3cb80000    # -200.0f

    mul-float/2addr v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    const/16 v2, 0x13

    .line 58
    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/key/KeyMapper;->keyDown(I)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$1;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getDeltaTime()F

    move-result v0

    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v0, v2

    :cond_29
    const/16 v2, 0x5d

    .line 59
    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/key/KeyMapper;->keyRepeatedHit(I)Z

    move-result v2

    if-eqz v2, :cond_33

    const/high16 v0, -0x3d380000    # -100.0f

    :cond_33
    const/16 v2, 0x5c

    .line 60
    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/key/KeyMapper;->keyRepeatedHit(I)Z

    move-result p1

    if-eqz p1, :cond_3d

    const/high16 v0, 0x42c80000    # 100.0f

    :cond_3d
    cmpl-float p1, v0, v1

    if-eqz p1, :cond_49

    .line 62
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/ListBox;->getShiftY()F

    move-result p1

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lio/blueflower/stapel2d/gui/ListBox;->setShiftY(F)V

    :cond_49
    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractStoreStage.AnonymousClass2 (info.flowersoft.theotown.stages.AbstractStoreStage$2)
.class public Linfo/flowersoft/theotown/stages/AbstractStoreStage$2;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "AbstractStoreStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractStoreStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 73
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$2;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 11

    .line 76
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/4 v0, 0x0

    .line 77
    invoke-virtual {v1, v0, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(III)V

    .line 79
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    .line 81
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v0

    add-int/2addr v0, p1

    int-to-float v3, v0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$2;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    iget-object v4, v4, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x20

    int-to-float v4, v0

    .line 82
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$2;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingTop()I

    move-result v0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x20

    int-to-float v6, v0

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_GRADIENT_Y:I

    .line 79
    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    .line 85
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$2;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingBottom()I

    move-result v0

    if-lez v0, :cond_74

    .line 86
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Skin;->img:Lio/blueflower/stapel2d/drawing/Image;

    .line 88
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getX()I

    move-result v0

    add-int/2addr p1, v0

    int-to-float v3, p1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result p1

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result p1

    add-int/2addr p2, p1

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$2;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    int-to-float v4, p2

    .line 89
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result p1

    int-to-float v5, p1

    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$2;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    iget-object p1, p1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getPaddingBottom()I

    move-result p1

    int-to-float v6, p1

    sget v7, Linfo/flowersoft/theotown/resources/Resources;->FRAME_GRADIENT_Y:I

    .line 86
    invoke-virtual/range {v1 .. v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    :cond_74
    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractStoreStage.AnonymousClass3 (info.flowersoft.theotown.stages.AbstractStoreStage$3)
.class public Linfo/flowersoft/theotown/stages/AbstractStoreStage$3;
.super Lio/blueflower/stapel2d/gui/Panel;
.source "AbstractStoreStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractStoreStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 95
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$3;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Panel;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 5

    .line 98
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v1, 0xc8

    .line 99
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 100
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 101
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v1, v1, Lio/blueflower/stapel2d/gui/Skin;->npPanel:I

    invoke-virtual {p0, p1, p2, v1}, Lio/blueflower/stapel2d/gui/Gadget;->drawNinePatch(III)V

    .line 102
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/16 v1, 0xff

    .line 103
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 104
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractStoreStage.AnonymousClass4 (info.flowersoft.theotown.stages.AbstractStoreStage$4)
.class public Linfo/flowersoft/theotown/stages/AbstractStoreStage$4;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "AbstractStoreStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractStoreStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 121
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$4;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 14

    .line 124
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$4;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 125
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v0

    .line 126
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, v0

    .line 127
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v10, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 128
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    rem-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float v6, v0, v1

    const v0, 0x3fc90fdb

    add-float v7, v6, v0

    .line 130
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v1

    int-to-float p1, p1

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    add-float/2addr p1, v0

    int-to-float p2, p2

    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    add-float v3, p2, v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v4, 0x42480000    # 50.0f

    const/high16 v5, 0x425c0000    # 55.0f

    move v2, p1

    invoke-virtual/range {v1 .. v10}, Linfo/flowersoft/theotown/drawing/Drawing;->drawCircle(FFFFFFFFLio/blueflower/stapel2d/drawing/Engine;)V

    :cond_49
    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractStoreStage.AnonymousClass5 (info.flowersoft.theotown.stages.AbstractStoreStage$5)
.class public Linfo/flowersoft/theotown/stages/AbstractStoreStage$5;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "AbstractStoreStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractStoreStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 141
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$5;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 4

    .line 144
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 145
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$5;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->tabs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->access$000(Linfo/flowersoft/theotown/stages/AbstractStoreStage;Ljava/util/List;Lio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/PopupBuilder;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractStoreStage.AnonymousClass6 (info.flowersoft.theotown.stages.AbstractStoreStage$6)
.class public Linfo/flowersoft/theotown/stages/AbstractStoreStage$6;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "AbstractStoreStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractStoreStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 149
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$6;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 194
    invoke-virtual {p0, p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->drawChildren(II)V

    return-void
.end method

.method public layout()V
    .registers 3

    .line 152
    invoke-super {p0}, Linfo/flowersoft/theotown/ui/IconButton;->layout()V

    .line 153
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    if-eqz v0, :cond_1b

    const/4 v1, 0x1

    .line 154
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/ShadowedLabel;->setShadow(Z)V

    .line 155
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 156
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setFont(Lio/blueflower/stapel2d/drawing/Font;)V

    :cond_1b
    return-void
.end method

.method public onClick()V
    .registers 1

    .line 162
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    return-void
.end method

.method public onUpdate()V
    .registers 4

    .line 179
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->onUpdate()V

    .line 180
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$6;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->getActiveTab()Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 182
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    iget v2, v0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;->icon:I

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Icon;->setFrame(I)V

    .line 183
    iget-object v1, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;->name:Lio/blueflower/stapel2d/util/Getter;

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage$6;->layout()V

    return-void

    .line 186
    :cond_23
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->icon:Lio/blueflower/stapel2d/gui/Icon;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$6;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->getFallbackIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Icon;->setFrame(I)V

    .line 187
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Button;->text:Linfo/flowersoft/theotown/ui/ShadowedLabel;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$6;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->getFallbackTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Label;->setText(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage$6;->layout()V

    return-void
.end method

.method public updateKeyInput(Lio/blueflower/stapel2d/key/KeyMapper;)V
    .registers 4

    .line 167
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$6;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->getActiveTabIndex()I

    move-result v0

    const/16 v1, 0x3d

    .line 168
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/key/KeyMapper;->keyHit(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 169
    invoke-virtual {p1}, Lio/blueflower/stapel2d/key/KeyMapper;->shiftDown()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 170
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$6;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->selectPreviousTab(I)V

    return-void

    .line 172
    :cond_1a
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$6;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->selectNextTab(I)V

    :cond_1f
    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractStoreStage.AnonymousClass7 (info.flowersoft.theotown.stages.AbstractStoreStage$7)
.class public Linfo/flowersoft/theotown/stages/AbstractStoreStage$7;
.super Ljava/lang/Object;
.source "AbstractStoreStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractStoreStage;->buildTabPopup(Ljava/util/List;Lio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/PopupBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

.field public final synthetic val$sourcePopup:Linfo/flowersoft/theotown/ui/PopupBuilder;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;Linfo/flowersoft/theotown/ui/PopupBuilder;)V
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

    .line 205
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$7;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$7;->val$sourcePopup:Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 208
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$7;->val$sourcePopup:Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/PopupBuilder;->build()Lio/blueflower/stapel2d/gui/Panel;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractStoreStage.AnonymousClass8 (info.flowersoft.theotown.stages.AbstractStoreStage$8)
.class public Linfo/flowersoft/theotown/stages/AbstractStoreStage$8;
.super Ljava/lang/Object;
.source "AbstractStoreStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractStoreStage;->buildTabPopup(Ljava/util/List;Lio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/PopupBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

.field public final synthetic val$popup:Linfo/flowersoft/theotown/ui/PopupBuilder;

.field public final synthetic val$source:Lio/blueflower/stapel2d/gui/Gadget;

.field public final synthetic val$tab:Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;Lio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/PopupBuilder;)V
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

    .line 217
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$8;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$8;->val$tab:Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;

    iput-object p3, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$8;->val$source:Lio/blueflower/stapel2d/gui/Gadget;

    iput-object p4, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$8;->val$popup:Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 220
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$8;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$8;->val$tab:Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;

    iget-object v1, v1, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;->children:Ljava/util/List;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$8;->val$source:Lio/blueflower/stapel2d/gui/Gadget;

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$8;->val$popup:Linfo/flowersoft/theotown/ui/PopupBuilder;

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->access$000(Linfo/flowersoft/theotown/stages/AbstractStoreStage;Ljava/util/List;Lio/blueflower/stapel2d/gui/Gadget;Linfo/flowersoft/theotown/ui/PopupBuilder;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractStoreStage.AnonymousClass9 (info.flowersoft.theotown.stages.AbstractStoreStage$9)
.class public Linfo/flowersoft/theotown/stages/AbstractStoreStage$9;
.super Lio/blueflower/stapel2d/gui/Button;
.source "AbstractStoreStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractStoreStage;->addActionButton(IFLjava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)Lio/blueflower/stapel2d/gui/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

.field public final synthetic val$_icon:I

.field public final synthetic val$isVisible:Lio/blueflower/stapel2d/util/Getter;

.field public final synthetic val$onClick:Ljava/lang/Runnable;

.field public final synthetic val$scale:F


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;IIIILio/blueflower/stapel2d/gui/Gadget;FILjava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)V
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

    .line 269
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$9;->this$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    iput p7, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$9;->val$scale:F

    iput p8, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$9;->val$_icon:I

    iput-object p9, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$9;->val$onClick:Ljava/lang/Runnable;

    iput-object p10, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$9;->val$isVisible:Lio/blueflower/stapel2d/util/Getter;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Button;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 13

    .line 272
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 273
    iget v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$9;->val$scale:F

    invoke-virtual {v1, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 274
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 275
    iget v2, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$9;->val$_icon:I

    iget-object v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget v3, v3, Lio/blueflower/stapel2d/gui/Skin;->fCloseButton:I

    if-ne v2, v3, :cond_2d

    .line 276
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v2

    if-eqz v2, :cond_21

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 277
    :cond_21
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_43

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_43

    .line 279
    :cond_2d
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/SensitiveGadget;->isMouseHovered()Z

    move-result v2

    if-eqz v2, :cond_38

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 280
    :cond_38
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gui/Button;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_43

    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 282
    :cond_43
    :goto_43
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    iget v3, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v3

    int-to-float v3, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, p1

    int-to-float v4, p2

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->width:I

    int-to-float v5, p1

    iget p1, p0, Lio/blueflower/stapel2d/gui/Gadget;->height:I

    int-to-float v6, p1

    const/high16 v8, 0x3f000000    # 0.5f

    iget v9, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$9;->val$_icon:I

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    .line 284
    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 285
    invoke-virtual {v1, p1, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void
.end method

.method public isVisible()Z
    .registers 2

    .line 295
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$9;->val$isVisible:Lio/blueflower/stapel2d/util/Getter;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    :goto_13
    const/4 v0, 0x1

    return v0
.end method

.method public onClick()V
    .registers 2

    .line 289
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 290
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$9;->val$onClick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractStoreStage.Tab (info.flowersoft.theotown.stages.AbstractStoreStage$Tab)
.class public Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;
.super Ljava/lang/Object;
.source "AbstractStoreStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/AbstractStoreStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tab"
.end annotation


# instance fields
.field public children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;",
            ">;"
        }
    .end annotation
.end field

.field public icon:I

.field public isSelected:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public name:Lio/blueflower/stapel2d/util/Getter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public onClick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILio/blueflower/stapel2d/util/Getter;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Getter;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Getter<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;->children:Ljava/util/List;

    .line 358
    iput p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;->icon:I

    .line 359
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;->name:Lio/blueflower/stapel2d/util/Getter;

    .line 360
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;->onClick:Ljava/lang/Runnable;

    .line 361
    iput-object p4, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;->isSelected:Lio/blueflower/stapel2d/util/Getter;

    return-void
.end method


# virtual methods
.method public isSelected()Z
    .registers 2

    .line 365
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$Tab;->isSelected:Lio/blueflower/stapel2d/util/Getter;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.AbstractStoreStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.AbstractStoreStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/AbstractStoreStage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->$r8$lambda$VWTPekEBKrZRfIPQ-IlhrNZe_U4(Linfo/flowersoft/theotown/stages/AbstractStoreStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractStoreStage$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.AbstractStoreStage$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/AbstractStoreStage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->$r8$lambda$REpDBcGytcVh7gNoGp8PE5miJrc(Linfo/flowersoft/theotown/stages/AbstractStoreStage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractStoreStage$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.AbstractStoreStage$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/AbstractStoreStage$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/AbstractStoreStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractStoreStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/AbstractStoreStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/AbstractStoreStage;->$r8$lambda$WHf0p1OFye2B3eSd6ngsk6Xpgfo(Linfo/flowersoft/theotown/stages/AbstractStoreStage;)V

    return-void
.end method
