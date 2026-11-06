###### Class info.flowersoft.theotown.ui.ReportDialog (info.flowersoft.theotown.ui.ReportDialog)
.class public final Linfo/flowersoft/theotown/ui/ReportDialog;
.super Ljava/lang/Object;
.source "ReportDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/ReportDialog$ReportOption;,
        Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$t27XrMNOSJ8I3XRmjwxhCcihJ_s()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIcon()I
    .registers 2

    .line 38
    const-string v0, "$anim_store_report00"

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object v0, v0, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public static show(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/String;Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;)Linfo/flowersoft/theotown/ui/Dialog;
    .registers 24

    .line 58
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    if-eqz v0, :cond_1c6

    .line 59
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_1c6

    .line 63
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v6

    .line 91
    new-instance v2, Linfo/flowersoft/theotown/ui/Dialog;

    .line 92
    invoke-static {}, Linfo/flowersoft/theotown/ui/ReportDialog;->getIcon()I

    move-result v8

    const/16 v0, 0x206

    .line 93
    invoke-interface {v6, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array/range {p2 .. p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/16 v0, 0x429

    .line 94
    invoke-interface {v6, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array/range {p2 .. p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x12c

    const/16 v12, 0xf0

    move-object/from16 v13, p1

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 97
    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lio/blueflower/stapel2d/gui/Gadget;->getChild(I)Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    .line 98
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->getListBox()Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v1

    .line 99
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->getTextFrame()Lio/blueflower/stapel2d/gui/TextFrame;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->dontFillParent()V

    .line 100
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->getTextFrame()Lio/blueflower/stapel2d/gui/TextFrame;

    move-result-object v3

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->getTextHeight()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setSize(II)V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v3, Lio/blueflower/stapel2d/util/Tuple;

    const/16 v4, 0xb5a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "sexual"

    invoke-direct {v3, v5, v4}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v3, Lio/blueflower/stapel2d/util/Tuple;

    const/16 v4, 0xc5e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "violent or repulsive"

    invoke-direct {v3, v5, v4}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v3, Lio/blueflower/stapel2d/util/Tuple;

    const/16 v4, 0x754

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "hateful or abusive"

    invoke-direct {v3, v5, v4}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v3, Lio/blueflower/stapel2d/util/Tuple;

    const/16 v4, 0x247

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "dangerous"

    invoke-direct {v3, v5, v4}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v3, Lio/blueflower/stapel2d/util/Tuple;

    const/16 v4, 0xaff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "promotes terrorism"

    invoke-direct {v3, v5, v4}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v3, Lio/blueflower/stapel2d/util/Tuple;

    const/16 v4, 0xa4a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "spam or misleading"

    invoke-direct {v3, v5, v4}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v3, Lio/blueflower/stapel2d/util/Tuple;

    const/16 v4, 0x16a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "infringes my rights"

    invoke-direct {v3, v5, v4}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v3, Lio/blueflower/stapel2d/util/Tuple;

    const/16 v4, 0x2b1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "bad behavior"

    invoke-direct {v3, v5, v4}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v3, Lio/blueflower/stapel2d/util/Tuple;

    const/16 v4, 0x937

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "violates store rules"

    invoke-direct {v3, v5, v4}, Lio/blueflower/stapel2d/util/Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/util/Tuple;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_112
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_152

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/blueflower/stapel2d/util/Tuple;

    .line 116
    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/Tuple;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 117
    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_13f

    invoke-virtual {v3}, Lio/blueflower/stapel2d/util/Tuple;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v6, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_140

    :cond_13f
    move-object v3, v5

    .line 118
    :goto_140
    new-instance v7, Linfo/flowersoft/theotown/ui/ReportDialog$ReportOption;

    new-instance v8, Linfo/flowersoft/theotown/ui/ReportDialog$1;

    invoke-direct {v8, v4, v5}, Linfo/flowersoft/theotown/ui/ReportDialog$1;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v5

    invoke-direct {v7, v3, v8, v5}, Linfo/flowersoft/theotown/ui/ReportDialog$ReportOption;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;I)V

    .line 118
    invoke-virtual {v1, v7}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    goto :goto_112

    .line 132
    :cond_152
    new-instance v10, Lio/blueflower/stapel2d/gui/TextFrame;

    const/16 v0, 0x4a4

    invoke-interface {v6, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v0

    add-int/lit8 v14, v0, -0x5

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v1

    invoke-direct/range {v10 .. v16}, Lio/blueflower/stapel2d/gui/TextFrame;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object/from16 v0, v16

    .line 133
    invoke-virtual {v10}, Lio/blueflower/stapel2d/gui/TextFrame;->calculateTextHeight()I

    move-result v1

    invoke-virtual {v10, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    const/4 v1, 0x0

    .line 134
    invoke-virtual {v10, v1, v1}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 135
    new-instance v1, Linfo/flowersoft/theotown/ui/ReportDialog$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v10}, Linfo/flowersoft/theotown/ui/ReportDialog$2;-><init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/TextFrame;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    .line 148
    filled-new-array {v3}, [Ljava/lang/Runnable;

    move-result-object v19

    .line 149
    new-instance v13, Linfo/flowersoft/theotown/ui/ReportDialog$3;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    move-object/from16 v18, p1

    invoke-direct/range {v13 .. v19}, Linfo/flowersoft/theotown/ui/ReportDialog$3;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;[Ljava/lang/Runnable;)V

    .line 164
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    const/16 v1, 0x5c5

    invoke-interface {v6, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Linfo/flowersoft/theotown/ui/ReportDialog$4;

    invoke-direct {v3, v2}, Linfo/flowersoft/theotown/ui/ReportDialog$4;-><init>(Linfo/flowersoft/theotown/ui/Dialog;)V

    const/4 v10, 0x1

    invoke-virtual {v2, v0, v1, v10, v3}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 170
    invoke-static {}, Linfo/flowersoft/theotown/ui/ReportDialog;->getIcon()I

    move-result v0

    const/16 v1, 0x85b

    invoke-interface {v6, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v11

    new-instance v1, Linfo/flowersoft/theotown/ui/ReportDialog$5;

    move-object/from16 v8, p1

    move-object/from16 v7, p2

    move-object/from16 v3, p3

    move-object/from16 v5, v19

    invoke-direct/range {v1 .. v8}, Linfo/flowersoft/theotown/ui/ReportDialog$5;-><init>(Linfo/flowersoft/theotown/ui/Dialog;Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;[Ljava/lang/String;[Ljava/lang/Runnable;Lio/blueflower/stapel2d/gamestack/Translator;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    invoke-virtual {v2, v0, v11, v9, v1}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    const/16 v1, 0x42

    .line 207
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 208
    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 210
    invoke-virtual {v2, v10}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-object v2

    .line 60
    :cond_1c6
    :goto_1c6
    invoke-static/range {p0 .. p1}, Linfo/flowersoft/theotown/ui/ReportDialog;->showLoginNeeded(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)Linfo/flowersoft/theotown/ui/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static showLoginNeeded(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)Linfo/flowersoft/theotown/ui/Dialog;
    .registers 9

    .line 42
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p0

    .line 44
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    .line 45
    invoke-static {}, Linfo/flowersoft/theotown/ui/ReportDialog;->getIcon()I

    move-result v1

    const/16 v2, 0xaa5

    .line 46
    invoke-interface {p0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xdd9

    .line 47
    invoke-interface {p0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x12c

    const/16 v5, 0xa0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 50
    sget p1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 v1, 0x76b

    invoke-interface {p0, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Linfo/flowersoft/theotown/ui/ReportDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/ui/ReportDialog$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p1, p0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p0

    const/4 p1, 0x1

    .line 51
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p0

    const/16 v1, 0x42

    .line 52
    invoke-virtual {p0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 53
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.ReportDialog.AnonymousClass1 (info.flowersoft.theotown.ui.ReportDialog$1)
.class Linfo/flowersoft/theotown/ui/ReportDialog$1;
.super Ljava/lang/Object;
.source "ReportDialog.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/ReportDialog;->show(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/String;Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;)Linfo/flowersoft/theotown/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Property<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$reason:Ljava/lang/String;

.field public final synthetic val$selectedReason:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ReportDialog$1;->val$selectedReason:[Ljava/lang/String;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/ReportDialog$1;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .registers 3

    .line 121
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ReportDialog$1;->val$selectedReason:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ReportDialog$1;->val$reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .line 118
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/ReportDialog$1;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Boolean;)V
    .registers 4

    .line 126
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/ReportDialog$1;->val$selectedReason:[Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ReportDialog$1;->val$reason:Ljava/lang/String;

    aput-object v1, p1, v0

    return-void
.end method

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

    .line 118
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/ReportDialog$1;->set(Ljava/lang/Boolean;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.ReportDialog.AnonymousClass2 (info.flowersoft.theotown.ui.ReportDialog$2)
.class Linfo/flowersoft/theotown/ui/ReportDialog$2;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "ReportDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/ReportDialog;->show(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/String;Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;)Linfo/flowersoft/theotown/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$tf:Lio/blueflower/stapel2d/gui/TextFrame;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/blueflower/stapel2d/gui/TextFrame;)V
    .registers 3

    .line 135
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/ReportDialog$2;->val$tf:Lio/blueflower/stapel2d/gui/TextFrame;

    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 8

    .line 138
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/ReportDialog$2;->val$tf:Lio/blueflower/stapel2d/gui/TextFrame;

    invoke-virtual {p1, p3, p4}, Lio/blueflower/stapel2d/gui/TextFrame;->draw(II)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 143
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/ReportDialog$2;->val$tf:Lio/blueflower/stapel2d/gui/TextFrame;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.ui.ReportDialog.AnonymousClass3 (info.flowersoft.theotown.ui.ReportDialog$3)
.class Linfo/flowersoft/theotown/ui/ReportDialog$3;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "ReportDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/ReportDialog;->show(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/String;Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;)Linfo/flowersoft/theotown/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$task:[Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(IIIILio/blueflower/stapel2d/gui/Gadget;[Ljava/lang/Runnable;)V
    .registers 7

    .line 149
    iput-object p6, p0, Linfo/flowersoft/theotown/ui/ReportDialog$3;->val$task:[Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p5}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public onUpdate()V
    .registers 4

    .line 156
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ReportDialog$3;->val$task:[Ljava/lang/Runnable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_14

    .line 157
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 158
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ReportDialog$3;->val$task:[Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 159
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->parent:Lio/blueflower/stapel2d/gui/Gadget;

    invoke-virtual {v0, p0}, Lio/blueflower/stapel2d/gui/Gadget;->removeChild(Lio/blueflower/stapel2d/gui/Gadget;)V

    :cond_14
    return-void
.end method

###### Class info.flowersoft.theotown.ui.ReportDialog.AnonymousClass4 (info.flowersoft.theotown.ui.ReportDialog$4)
.class Linfo/flowersoft/theotown/ui/ReportDialog$4;
.super Ljava/lang/Object;
.source "ReportDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/ReportDialog;->show(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/String;Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;)Linfo/flowersoft/theotown/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Dialog;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ReportDialog$4;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 167
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ReportDialog$4;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.ReportDialog.AnonymousClass5 (info.flowersoft.theotown.ui.ReportDialog$5)
.class Linfo/flowersoft/theotown/ui/ReportDialog$5;
.super Ljava/lang/Object;
.source "ReportDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/ReportDialog;->show(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/String;Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;)Linfo/flowersoft/theotown/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic val$gui:Lio/blueflower/stapel2d/gui/Master;

.field public final synthetic val$reporter:Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;

.field public final synthetic val$selectedReason:[Ljava/lang/String;

.field public final synthetic val$subject:Ljava/lang/String;

.field public final synthetic val$task:[Ljava/lang/Runnable;

.field public final synthetic val$translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/Dialog;Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;[Ljava/lang/String;[Ljava/lang/Runnable;Lio/blueflower/stapel2d/gamestack/Translator;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5;->val$reporter:Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5;->val$selectedReason:[Ljava/lang/String;

    iput-object p4, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5;->val$task:[Ljava/lang/Runnable;

    iput-object p5, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iput-object p6, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5;->val$subject:Ljava/lang/String;

    iput-object p7, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5;->val$gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 173
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5;->val$dialog:Linfo/flowersoft/theotown/ui/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 174
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5;->val$reporter:Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5;->val$selectedReason:[Ljava/lang/String;

    aget-object v1, v2, v1

    new-instance v2, Linfo/flowersoft/theotown/ui/ReportDialog$5$1;

    invoke-direct {v2, p0}, Linfo/flowersoft/theotown/ui/ReportDialog$5$1;-><init>(Linfo/flowersoft/theotown/ui/ReportDialog$5;)V

    new-instance v3, Linfo/flowersoft/theotown/ui/ReportDialog$5$2;

    invoke-direct {v3, p0}, Linfo/flowersoft/theotown/ui/ReportDialog$5$2;-><init>(Linfo/flowersoft/theotown/ui/ReportDialog$5;)V

    invoke-interface {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;->report(Ljava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.ReportDialog.AnonymousClass5.AnonymousClass1 (info.flowersoft.theotown.ui.ReportDialog$5$1)
.class Linfo/flowersoft/theotown/ui/ReportDialog$5$1;
.super Ljava/lang/Object;
.source "ReportDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/ReportDialog$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/ReportDialog$5;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/ReportDialog$5;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 174
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5$1;->this$0:Linfo/flowersoft/theotown/ui/ReportDialog$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 177
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5$1;->this$0:Linfo/flowersoft/theotown/ui/ReportDialog$5;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/ReportDialog$5;->val$task:[Ljava/lang/Runnable;

    new-instance v1, Linfo/flowersoft/theotown/ui/ReportDialog$5$1$1;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/ui/ReportDialog$5$1$1;-><init>(Linfo/flowersoft/theotown/ui/ReportDialog$5$1;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-void
.end method

###### Class info.flowersoft.theotown.ui.ReportDialog.AnonymousClass5.AnonymousClass1.RunnableC10971 (info.flowersoft.theotown.ui.ReportDialog$5$1$1)
.class Linfo/flowersoft/theotown/ui/ReportDialog$5$1$1;
.super Ljava/lang/Object;
.source "ReportDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/ReportDialog$5$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/ui/ReportDialog$5$1;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/ReportDialog$5$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 177
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5$1$1;->this$1:Linfo/flowersoft/theotown/ui/ReportDialog$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 180
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5$1$1;->this$1:Linfo/flowersoft/theotown/ui/ReportDialog$5$1;

    iget-object v2, v2, Linfo/flowersoft/theotown/ui/ReportDialog$5$1;->this$0:Linfo/flowersoft/theotown/ui/ReportDialog$5;

    iget-object v2, v2, Linfo/flowersoft/theotown/ui/ReportDialog$5;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x486

    .line 182
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5$1$1;->this$1:Linfo/flowersoft/theotown/ui/ReportDialog$5$1;

    iget-object v3, v3, Linfo/flowersoft/theotown/ui/ReportDialog$5$1;->this$0:Linfo/flowersoft/theotown/ui/ReportDialog$5;

    iget-object v3, v3, Linfo/flowersoft/theotown/ui/ReportDialog$5;->val$subject:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5$1$1;->this$1:Linfo/flowersoft/theotown/ui/ReportDialog$5$1;

    iget-object v3, v3, Linfo/flowersoft/theotown/ui/ReportDialog$5$1;->this$0:Linfo/flowersoft/theotown/ui/ReportDialog$5;

    iget-object v3, v3, Linfo/flowersoft/theotown/ui/ReportDialog$5;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0x47

    .line 183
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5$1$1;->this$1:Linfo/flowersoft/theotown/ui/ReportDialog$5$1;

    iget-object v4, v4, Linfo/flowersoft/theotown/ui/ReportDialog$5$1;->this$0:Linfo/flowersoft/theotown/ui/ReportDialog$5;

    iget-object v4, v4, Linfo/flowersoft/theotown/ui/ReportDialog$5;->val$subject:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5$1$1;->this$1:Linfo/flowersoft/theotown/ui/ReportDialog$5$1;

    iget-object v4, v4, Linfo/flowersoft/theotown/ui/ReportDialog$5$1;->this$0:Linfo/flowersoft/theotown/ui/ReportDialog$5;

    iget-object v6, v4, Linfo/flowersoft/theotown/ui/ReportDialog$5;->val$gui:Lio/blueflower/stapel2d/gui/Master;

    const/16 v4, 0x101

    const/16 v5, 0xa0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    .line 188
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5$1$1;->this$1:Linfo/flowersoft/theotown/ui/ReportDialog$5$1;

    iget-object v2, v2, Linfo/flowersoft/theotown/ui/ReportDialog$5$1;->this$0:Linfo/flowersoft/theotown/ui/ReportDialog$5;

    iget-object v2, v2, Linfo/flowersoft/theotown/ui/ReportDialog$5;->val$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x98f

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v1

    const/16 v2, 0x42

    .line 189
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    const/4 v1, 0x1

    .line 191
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.ReportDialog.AnonymousClass5.AnonymousClass2 (info.flowersoft.theotown.ui.ReportDialog$5$2)
.class Linfo/flowersoft/theotown/ui/ReportDialog$5$2;
.super Ljava/lang/Object;
.source "ReportDialog.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/ReportDialog$5;->run()V
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
.field public final synthetic this$0:Linfo/flowersoft/theotown/ui/ReportDialog$5;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/ReportDialog$5;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 195
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5$2;->this$0:Linfo/flowersoft/theotown/ui/ReportDialog$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 195
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/ui/ReportDialog$5$2;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .registers 4

    .line 198
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5$2;->this$0:Linfo/flowersoft/theotown/ui/ReportDialog$5;

    iget-object v0, v0, Linfo/flowersoft/theotown/ui/ReportDialog$5;->val$task:[Ljava/lang/Runnable;

    new-instance v1, Linfo/flowersoft/theotown/ui/ReportDialog$5$2$1;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/ui/ReportDialog$5$2$1;-><init>(Linfo/flowersoft/theotown/ui/ReportDialog$5$2;Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    return-void
.end method

###### Class info.flowersoft.theotown.ui.ReportDialog.AnonymousClass5.AnonymousClass2.AnonymousClass1 (info.flowersoft.theotown.ui.ReportDialog$5$2$1)
.class Linfo/flowersoft/theotown/ui/ReportDialog$5$2$1;
.super Ljava/lang/Object;
.source "ReportDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/ReportDialog$5$2;->set(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/ui/ReportDialog$5$2;

.field public final synthetic val$value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/ReportDialog$5$2;Ljava/lang/String;)V
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

    .line 198
    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5$2$1;->this$1:Linfo/flowersoft/theotown/ui/ReportDialog$5$2;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5$2$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 201
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/ReportDialog$5$2$1;->val$value:Ljava/lang/String;

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.ReportDialog.ReportOption (info.flowersoft.theotown.ui.ReportDialog$ReportOption)
.class Linfo/flowersoft/theotown/ui/ReportDialog$ReportOption;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "ReportDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/ReportDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportOption"
.end annotation


# instance fields
.field public font:Lio/blueflower/stapel2d/drawing/Font;

.field public lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public selection:Lio/blueflower/stapel2d/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/blueflower/stapel2d/util/Property<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/blueflower/stapel2d/util/Property;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/blueflower/stapel2d/util/Property<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    .line 221
    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 218
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iput-object v0, p0, Linfo/flowersoft/theotown/ui/ReportDialog$ReportOption;->font:Lio/blueflower/stapel2d/drawing/Font;

    .line 222
    iput-object p2, p0, Linfo/flowersoft/theotown/ui/ReportDialog$ReportOption;->selection:Lio/blueflower/stapel2d/util/Property;

    add-int/lit8 p3, p3, -0x1e

    .line 223
    invoke-static {p1, p3, v0}, Lio/blueflower/stapel2d/gui/TextFrame;->calculateLines(Ljava/lang/String;ILio/blueflower/stapel2d/drawing/Font;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/ReportDialog$ReportOption;->lines:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 16

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    .line 228
    invoke-virtual/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 229
    iget-object p1, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 231
    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    sget-object p3, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget p3, p3, Lio/blueflower/stapel2d/gui/Skin;->fRadioOn:I

    invoke-virtual {p2, p3}, Lio/blueflower/stapel2d/drawing/Image;->getWidth(I)F

    move-result p2

    float-to-int p2, p2

    add-int p3, v3, p2

    add-int/lit8 p3, p3, 0x6

    add-int/lit8 p4, v4, 0x5

    .line 234
    iget-object p2, v7, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/4 p2, 0x0

    .line 235
    :goto_24
    iget-object p5, v0, Linfo/flowersoft/theotown/ui/ReportDialog$ReportOption;->lines:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-ge p2, p5, :cond_49

    .line 236
    iget-object p5, v0, Linfo/flowersoft/theotown/ui/ReportDialog$ReportOption;->font:Lio/blueflower/stapel2d/drawing/Font;

    iget-object p6, v0, Linfo/flowersoft/theotown/ui/ReportDialog$ReportOption;->lines:Ljava/util/List;

    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    int-to-float p7, p3

    int-to-float v1, p4

    invoke-virtual {p1, p5, p6, p7, v1}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 237
    iget-object p5, v0, Linfo/flowersoft/theotown/ui/ReportDialog$ReportOption;->font:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {p5}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result p5

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    add-int/2addr p4, p5

    add-int/lit8 p2, p2, 0x1

    goto :goto_24

    .line 239
    :cond_49
    sget-object p2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 241
    iget-object p2, v0, Linfo/flowersoft/theotown/ui/ReportDialog$ReportOption;->selection:Lio/blueflower/stapel2d/util/Property;

    invoke-interface {p2}, Lio/blueflower/stapel2d/util/Getter;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_61

    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget p2, p2, Lio/blueflower/stapel2d/gui/Skin;->fRadioOn:I

    goto :goto_65

    :cond_61
    sget-object p2, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget p2, p2, Lio/blueflower/stapel2d/gui/Skin;->fRadioOff:I

    .line 242
    :goto_65
    sget-object p3, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 p4, v3, 0x3

    int-to-float p4, p4

    int-to-float p5, v4

    int-to-float p6, v6

    invoke-virtual {p3, p2}, Lio/blueflower/stapel2d/drawing/Image;->getHeight(I)F

    move-result p7

    sub-float/2addr p6, p7

    const/high16 p7, 0x40000000    # 2.0f

    div-float/2addr p6, p7

    add-float/2addr p5, p6

    invoke-virtual {p1, p3, p4, p5, p2}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 3

    .line 247
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/ReportDialog$ReportOption;->lines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Linfo/flowersoft/theotown/ui/ReportDialog$ReportOption;->font:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xa

    const/16 v0, 0x14

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public onClick(II)V
    .registers 3

    .line 252
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    .line 253
    iget-object p1, p0, Linfo/flowersoft/theotown/ui/ReportDialog$ReportOption;->selection:Lio/blueflower/stapel2d/util/Property;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/util/Setter;->set(Ljava/lang/Object;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.ReportDialog.Reporter (info.flowersoft.theotown.ui.ReportDialog$Reporter)
.class public interface abstract Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;
.super Ljava/lang/Object;
.source "ReportDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/ReportDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Reporter"
.end annotation


# virtual methods
.method public abstract report(Ljava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
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
.end method

###### Class info.flowersoft.theotown.ui.ReportDialog$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.ReportDialog$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/ReportDialog$$ExternalSyntheticLambda0;
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
    invoke-static {}, Linfo/flowersoft/theotown/ui/ReportDialog;->$r8$lambda$t27XrMNOSJ8I3XRmjwxhCcihJ_s()V

    return-void
.end method
