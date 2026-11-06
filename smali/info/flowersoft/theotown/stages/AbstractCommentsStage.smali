###### Class info.flowersoft.theotown.stages.AbstractCommentsStage (info.flowersoft.theotown.stages.AbstractCommentsStage)
.class public abstract Linfo/flowersoft/theotown/stages/AbstractCommentsStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "AbstractCommentsStage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;,
        Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;,
        Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;,
        Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;
    }
.end annotation


# static fields
.field public static final lastInputs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final REPORT_FRAME:I

.field public final authorIcon:I

.field public cmdNavigate:Linfo/flowersoft/theotown/ui/IconButton;

.field public cmdRun:Linfo/flowersoft/theotown/ui/GoldButton;

.field public lastResponse:Linfo/flowersoft/theotown/util/json/JSONObject;

.field public lastShiftY:F

.field public listBox:Lio/blueflower/stapel2d/gui/ListBox;

.field public loading:Z

.field public page:Linfo/flowersoft/theotown/ui/Page;

.field public textField:Linfo/flowersoft/theotown/ui/TextField;

.field public title:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$ax9SuPvw84yhZI7ZRTManerf_hE(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;Ljava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    invoke-static {p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->access$1100(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->sendReportRequest(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oz-dgSFRTEIEpBTn0f_yKgTqLKQ(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)V
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 396
    invoke-static {p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->access$1100(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)I

    move-result p1

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->deleteComment(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->lastInputs:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;I)V
    .registers 5

    .line 73
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 54
    const-string p1, "$anim_store_report00"

    const-class v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Linfo/flowersoft/theotown/draft/ViewportDraft;->frames:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    iput p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->REPORT_FRAME:I

    .line 74
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->title:Ljava/lang/String;

    .line 75
    iput p3, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->authorIcon:I

    return-void
.end method

.method public static synthetic access$002(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/util/json/JSONObject;)Linfo/flowersoft/theotown/util/json/JSONObject;
    .registers 2

    .line 52
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->lastResponse:Linfo/flowersoft/theotown/util/json/JSONObject;

    return-object p1
.end method

.method public static synthetic access$100(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/util/json/JSONObject;Z)V
    .registers 3

    .line 52
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->rebuild(Linfo/flowersoft/theotown/util/json/JSONObject;Z)V

    return-void
.end method

.method public static synthetic access$1800(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)I
    .registers 1

    .line 52
    iget p0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->authorIcon:I

    return p0
.end method

.method public static synthetic access$2000(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)V
    .registers 2

    .line 52
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->askForDeleteComment(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)V

    return-void
.end method

.method public static synthetic access$202(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Z)Z
    .registers 2

    .line 52
    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->loading:Z

    return p1
.end method

.method public static synthetic access$2100(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)V
    .registers 2

    .line 52
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->askForReportComment(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)V

    return-void
.end method

.method public static synthetic access$300(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)Lio/blueflower/stapel2d/gui/ListBox;
    .registers 1

    .line 52
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    return-object p0
.end method

.method public static synthetic access$400(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Z)V
    .registers 2

    .line 52
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->setCommentSectionLocked(Z)V

    return-void
.end method

.method public static synthetic access$500(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)Linfo/flowersoft/theotown/ui/TextField;
    .registers 1

    .line 52
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->textField:Linfo/flowersoft/theotown/ui/TextField;

    return-object p0
.end method

.method public static synthetic access$600(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Ljava/lang/String;)V
    .registers 2

    .line 52
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->enterComment(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$700(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)Z
    .registers 1

    .line 52
    invoke-direct {p0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->isLoading()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$800(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 2

    .line 52
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->handleFailuredRequest(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

.method public static synthetic access$900(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Z)V
    .registers 2

    .line 52
    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->reload(Z)V

    return-void
.end method

.method private isLoading()Z
    .registers 2

    .line 300
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->loading:Z

    return v0
.end method


# virtual methods
.method public final askForDeleteComment(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)V
    .registers 7

    .line 390
    new-instance v0, Linfo/flowersoft/theotown/ui/Dialog;

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRASH:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0xbaf

    .line 391
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v4, 0xb9d

    .line 392
    invoke-interface {v3, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->access$1000(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v0, v1, v2, v3, v4}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 393
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x5c5

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 394
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_TRASH:I

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x656

    .line 395
    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)V

    const/4 p1, 0x0

    .line 394
    invoke-virtual {v0, v1, v2, p1, v3}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    const/16 v1, 0x42

    .line 397
    invoke-virtual {p1, v1}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 398
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    const/4 p1, 0x1

    .line 399
    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

.method public final askForReportComment(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)V
    .registers 6

    .line 403
    invoke-static {p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->access$1100(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)I

    move-result v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->hasReportedComment(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 404
    :cond_b
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x468

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->access$1000(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)V

    invoke-static {v0, v1, v2, v3}, Linfo/flowersoft/theotown/ui/ReportDialog;->show(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/String;Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;)Linfo/flowersoft/theotown/ui/Dialog;

    return-void
.end method

.method public abstract beforeAddingComments(Lio/blueflower/stapel2d/gui/ListBox;)V
.end method

.method public final deleteComment(I)V
    .registers 3

    .line 345
    new-instance v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$14;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$14;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)V

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->sendDeleteRequest(ILinfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public enter()V
    .registers 18

    move-object/from16 v1, p0

    .line 156
    invoke-super {v1}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 157
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object v0

    .line 159
    new-instance v2, Linfo/flowersoft/theotown/ui/Page;

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    iget-object v4, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->title:Ljava/lang/String;

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_NOTIFICATION:I

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-direct {v2, v3, v4, v5, v6}, Linfo/flowersoft/theotown/ui/Page;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;ILio/blueflower/stapel2d/gui/Master;)V

    iput-object v2, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->page:Linfo/flowersoft/theotown/ui/Page;

    .line 160
    new-instance v3, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$3;

    invoke-direct {v3, v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$3;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)V

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/ui/Page;->setOnBackgroundClick(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    .line 167
    iput-object v2, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->textField:Linfo/flowersoft/theotown/ui/TextField;

    .line 168
    iget-object v2, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->page:Linfo/flowersoft/theotown/ui/Page;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/Page;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v2

    .line 170
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->page:Linfo/flowersoft/theotown/ui/Page;

    new-instance v8, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$4;

    invoke-direct {v8, v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$4;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)V

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v3

    iput-object v3, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->cmdNavigate:Linfo/flowersoft/theotown/ui/IconButton;

    .line 180
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 182
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->getAdmin()I

    move-result v3

    if-eqz v3, :cond_8d

    .line 183
    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->isLocked()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 184
    iget-object v4, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->page:Linfo/flowersoft/theotown/ui/Page;

    sget v5, Linfo/flowersoft/theotown/resources/Resources;->ICON_UNLOCK:I

    iget-object v3, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x867

    invoke-interface {v3, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$5;

    invoke-direct {v9, v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$5;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v3

    .line 190
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    :goto_6f
    sub-int/2addr v2, v3

    goto :goto_8d

    .line 192
    :cond_71
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->page:Linfo/flowersoft/theotown/ui/Page;

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCKED:I

    iget-object v5, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v6, 0x233

    invoke-interface {v5, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$6;

    invoke-direct {v8, v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$6;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v3

    .line 198
    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v3

    goto :goto_6f

    .line 202
    :cond_8d
    :goto_8d
    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->isLocked()Z

    move-result v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v3, :cond_b8

    .line 203
    iget-object v9, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->page:Linfo/flowersoft/theotown/ui/Page;

    sget v10, Linfo/flowersoft/theotown/resources/Resources;->ICON_LOCKED:I

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x2ac

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v11

    new-instance v14, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$7;

    invoke-direct {v14, v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$7;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v9 .. v14}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    iput-object v0, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->cmdRun:Linfo/flowersoft/theotown/ui/GoldButton;

    .line 208
    invoke-virtual {v0, v7}, Lio/blueflower/stapel2d/gui/Gadget;->setEnabled(Z)V

    .line 209
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->cmdRun:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/ui/IconButton;->setBorderless(Z)V

    goto/16 :goto_17d

    .line 210
    :cond_b8
    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/User;->isForumConnected()Z

    move-result v3

    const/16 v4, 0x42

    if-eqz v3, :cond_15c

    .line 211
    invoke-virtual {v1, v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->getCannotCommentReason(Linfo/flowersoft/theotown/backend/User;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_13e

    .line 214
    iget-object v11, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->page:Linfo/flowersoft/theotown/ui/Page;

    sget v12, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLAY:I

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x948

    invoke-interface {v0, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v13

    new-instance v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$8;

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$8;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    iput-object v0, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->cmdRun:Linfo/flowersoft/theotown/ui/GoldButton;

    .line 224
    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 225
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->cmdRun:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v0, v4}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 226
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->cmdRun:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/ui/IconButton;->setRightIcon(Z)V

    .line 227
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->cmdRun:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getWidth()I

    move-result v0

    sub-int/2addr v2, v0

    .line 229
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->page:Linfo/flowersoft/theotown/ui/Page;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Page;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v0

    .line 230
    new-instance v9, Linfo/flowersoft/theotown/ui/TextField;

    add-int/lit8 v12, v2, -0x4

    .line 231
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v13

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->page:Linfo/flowersoft/theotown/ui/Page;

    .line 232
    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Page;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v14

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v9 .. v14}, Linfo/flowersoft/theotown/ui/TextField;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v9, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->textField:Linfo/flowersoft/theotown/ui/TextField;

    .line 233
    invoke-virtual {v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->getTargetIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 234
    sget-object v2, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->lastInputs:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12b

    .line 235
    iget-object v3, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->textField:Linfo/flowersoft/theotown/ui/TextField;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Linfo/flowersoft/theotown/ui/TextField;->setText(Ljava/lang/String;)V

    .line 237
    :cond_12b
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->textField:Linfo/flowersoft/theotown/ui/TextField;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v3, 0x86f

    invoke-interface {v2, v3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Linfo/flowersoft/theotown/ui/TextField;->setHint(Ljava/lang/String;)V

    .line 238
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->textField:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/TextField;->setActive()V

    goto :goto_17d

    .line 240
    :cond_13e
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->page:Linfo/flowersoft/theotown/ui/Page;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/Page;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v0

    .line 241
    new-instance v9, Lio/blueflower/stapel2d/gui/Label;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v14

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getThirdPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v15

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v15}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v9, v0, v2}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    goto :goto_17d

    .line 245
    :cond_15c
    iget-object v10, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->page:Linfo/flowersoft/theotown/ui/Page;

    sget v11, Linfo/flowersoft/theotown/resources/Resources;->ICON_ACCOUNT:I

    iget-object v0, v1, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v2, 0x8e3

    invoke-interface {v0, v2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v12

    new-instance v15, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$9;

    invoke-direct {v15, v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$9;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v10 .. v15}, Linfo/flowersoft/theotown/ui/Page;->addButton(ILjava/lang/String;ZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v0

    iput-object v0, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->cmdRun:Linfo/flowersoft/theotown/ui/GoldButton;

    .line 251
    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 252
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->cmdRun:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v0, v4}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 255
    :goto_17d
    new-instance v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$10;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->page:Linfo/flowersoft/theotown/ui/Page;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/Page;->getContentPanel()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$10;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    iput-object v0, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    .line 261
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->fillParent()V

    .line 263
    iget-object v0, v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->lastResponse:Linfo/flowersoft/theotown/util/json/JSONObject;

    if-nez v0, :cond_199

    .line 264
    invoke-virtual {v1, v8}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->reload(Z)V

    goto :goto_19c

    .line 266
    :cond_199
    invoke-virtual {v1, v0, v7}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->rebuild(Linfo/flowersoft/theotown/util/json/JSONObject;Z)V

    .line 269
    :goto_19c
    new-instance v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$11;

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    iget-object v2, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v5

    iget-object v6, v1, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$11;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method

.method public final enterComment(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    .line 326
    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->loading:Z

    .line 327
    new-instance v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$13;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$13;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->sendCommentRequest(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

.method public abstract fetch(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Linfo/flowersoft/theotown/util/json/JSONObject;",
            ">;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation
.end method

.method public getCannotCommentReason(Linfo/flowersoft/theotown/backend/User;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_b

    .line 292
    invoke-virtual {p1}, Linfo/flowersoft/theotown/backend/User;->getPermissions()I

    move-result p1

    if-nez p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return-object p1

    .line 293
    :cond_b
    :goto_b
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v0, 0xcda

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract getOwnerId()I
.end method

.method public abstract getTargetIdentifier()Ljava/lang/String;
.end method

.method public final handleFailuredRequest(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 6

    .line 359
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: "

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

.method public abstract hasReportedComment(I)Z
.end method

.method public final isInputValid(Ljava/lang/String;)Z
    .registers 4

    .line 377
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_17

    invoke-static {}, Linfo/flowersoft/theotown/resources/WordFilter;->getInstance()Linfo/flowersoft/theotown/resources/WordFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Linfo/flowersoft/theotown/resources/WordFilter;->isForbidden(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_17

    const/4 p1, 0x1

    return p1

    :cond_17
    const/4 p1, 0x0

    return p1
.end method

.method public abstract isLocked()Z
.end method

.method public leave()V
    .registers 4

    .line 382
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->leave()V

    .line 383
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->getShiftY()F

    move-result v0

    iput v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->lastShiftY:F

    .line 384
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->textField:Linfo/flowersoft/theotown/ui/TextField;

    if-eqz v0, :cond_1e

    .line 385
    sget-object v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->lastInputs:Ljava/util/Map;

    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->getTargetIdentifier()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->textField:Linfo/flowersoft/theotown/ui/TextField;

    invoke-virtual {v2}, Linfo/flowersoft/theotown/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    return-void
.end method

.method public onUpdate()V
    .registers 5

    .line 364
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawBackground()V

    .line 366
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->textField:Linfo/flowersoft/theotown/ui/TextField;

    if-eqz v0, :cond_14

    .line 367
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->cmdRun:Linfo/flowersoft/theotown/ui/GoldButton;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->isInputValid(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->setEnabled(Z)V

    .line 370
    :cond_14
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->cmdNavigate:Linfo/flowersoft/theotown/ui/IconButton;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ListBox;->getContentHeight()I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    if-le v1, v2, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setEnabled(Z)V

    .line 371
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->cmdNavigate:Linfo/flowersoft/theotown/ui/IconButton;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ListBox;->getShiftY()F

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ListBox;->getContentHeight()I

    move-result v2

    iget-object v3, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4a

    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_DOWN:I

    goto :goto_4c

    :cond_4a
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->ICON_UP:I

    :goto_4c
    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/IconButton;->setIcon(I)V

    .line 372
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->cmdNavigate:Linfo/flowersoft/theotown/ui/IconButton;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Button;->getIconGadget()Lio/blueflower/stapel2d/gui/Icon;

    move-result-object v0

    .line 373
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->cmdNavigate:Linfo/flowersoft/theotown/ui/IconButton;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_62

    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_66

    :cond_62
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v1, v1, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    .line 372
    :goto_66
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Icon;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public final rebuild(Linfo/flowersoft/theotown/util/json/JSONObject;Z)V
    .registers 8

    .line 128
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 129
    const-string v1, "comments"

    invoke-virtual {p1, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getJSONArray(Ljava/lang/String;)Linfo/flowersoft/theotown/util/json/JSONArray;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    .line 130
    :goto_d
    invoke-virtual {p1}, Linfo/flowersoft/theotown/util/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 131
    new-instance v3, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;

    invoke-virtual {p1, v2}, Linfo/flowersoft/theotown/util/json/JSONArray;->getJSONObject(I)Linfo/flowersoft/theotown/util/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :catch_22
    move-exception p1

    goto :goto_78

    .line 134
    :cond_24
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ListBox;->countItems()I

    move-result p1

    if-lez p1, :cond_34

    .line 135
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ListBox;->getShiftY()F

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->lastShiftY:F

    .line 137
    :cond_34
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ListBox;->removeAllItems()V

    .line 139
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->beforeAddingComments(Lio/blueflower/stapel2d/gui/ListBox;)V

    .line 140
    :goto_3e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_5b

    .line 141
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;

    .line 142
    iget-object v2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    new-instance v3, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    invoke-direct {v3, p0, p1, v4}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;I)V

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_5b
    if-eqz p2, :cond_70

    .line 145
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ListBox;->getContentHeight()I

    move-result p2

    neg-int p2, p2

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v0

    add-int/2addr p2, v0

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gui/ListBox;->setShiftY(F)V

    return-void

    .line 147
    :cond_70
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->listBox:Lio/blueflower/stapel2d/gui/ListBox;

    iget p2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->lastShiftY:F

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gui/ListBox;->setShiftY(F)V
    :try_end_77
    .catch Linfo/flowersoft/theotown/util/json/JSONException; {:try_start_0 .. :try_end_77} :catch_22

    return-void

    .line 150
    :goto_78
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final reload(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->loading:Z

    .line 104
    new-instance v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1;

    invoke-direct {v0, p0, p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Z)V

    new-instance p1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$2;

    invoke-direct {p1, p0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$2;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)V

    invoke-virtual {p0, v0, p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->fetch(Lio/blueflower/stapel2d/util/Setter;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method

.method public abstract sendCommentRequest(Ljava/lang/String;Linfo/flowersoft/theotown/backend/Service$Handler;)V
.end method

.method public abstract sendDeleteRequest(ILinfo/flowersoft/theotown/backend/Service$Handler;)V
.end method

.method public abstract sendLockRequest(ZLinfo/flowersoft/theotown/backend/Service$Handler;)V
.end method

.method public abstract sendReportRequest(ILjava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            "Lio/blueflower/stapel2d/util/Setter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public final setCommentSectionLocked(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->loading:Z

    .line 305
    new-instance v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$12;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$12;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)V

    invoke-virtual {p0, p1, v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->sendLockRequest(ZLinfo/flowersoft/theotown/backend/Service$Handler;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractCommentsStage.AnonymousClass1 (info.flowersoft.theotown.stages.AbstractCommentsStage$1)
.class public Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1;
.super Ljava/lang/Object;
.source "AbstractCommentsStage.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->reload(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Linfo/flowersoft/theotown/util/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

.field public final synthetic val$scrollDown:Z


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Z)V
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

    .line 104
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    iput-boolean p2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1;->val$scrollDown:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4

    .line 107
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    new-instance v1, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1$1;

    invoke-direct {v1, p0, p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1$1;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/stages/BaseStage;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

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

    .line 104
    check-cast p1, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1;->set(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractCommentsStage.AnonymousClass1.RunnableC10801 (info.flowersoft.theotown.stages.AbstractCommentsStage$1$1)
.class public Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1$1;
.super Ljava/lang/Object;
.source "AbstractCommentsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1;->set(Linfo/flowersoft/theotown/util/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1;

.field public final synthetic val$response:Linfo/flowersoft/theotown/util/json/JSONObject;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1;Linfo/flowersoft/theotown/util/json/JSONObject;)V
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

    .line 107
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1$1;->this$1:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1$1;->val$response:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 110
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1$1;->this$1:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1$1;->val$response:Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$002(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/util/json/JSONObject;)Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 111
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1$1;->this$1:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1;

    iget-object v1, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1$1;->val$response:Linfo/flowersoft/theotown/util/json/JSONObject;

    iget-boolean v0, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1;->val$scrollDown:Z

    invoke-static {v1, v2, v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$100(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/util/json/JSONObject;Z)V

    .line 112
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1$1;->this$1:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$1;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$202(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Z)Z

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractCommentsStage.AnonymousClass10 (info.flowersoft.theotown.stages.AbstractCommentsStage$10)
.class public Linfo/flowersoft/theotown/stages/AbstractCommentsStage$10;
.super Lio/blueflower/stapel2d/gui/ListBox;
.source "AbstractCommentsStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 255
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$10;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 258
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/ListBox;->draw(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractCommentsStage.AnonymousClass11 (info.flowersoft.theotown.stages.AbstractCommentsStage$11)
.class public Linfo/flowersoft/theotown/stages/AbstractCommentsStage$11;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "AbstractCommentsStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;IIIILio/blueflower/stapel2d/gui/Gadget;)V
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

    .line 269
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$11;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    move-object p1, p0

    invoke-direct/range {p1 .. p6}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 14

    .line 272
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$11;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$700(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 273
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->x:I

    add-int/2addr p1, v0

    .line 274
    iget v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->y:I

    add-int/2addr p2, v0

    .line 275
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v10, v0, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 276
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

    .line 278
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/Gadget;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v10, v0}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 279
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

    .line 285
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v10, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :cond_55
    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractCommentsStage.AnonymousClass12 (info.flowersoft.theotown.stages.AbstractCommentsStage$12)
.class public Linfo/flowersoft/theotown/stages/AbstractCommentsStage$12;
.super Ljava/lang/Object;
.source "AbstractCommentsStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->setCommentSectionLocked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 305
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$12;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4

    .line 319
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$12;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$202(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Z)Z

    .line 320
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$12;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$800(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 308
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$12;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$202(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Z)Z

    .line 309
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$12;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    new-instance v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$12$1;

    invoke-direct {v0, p0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$12$1;-><init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$12;)V

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/stages/BaseStage;->addTask(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractCommentsStage.AnonymousClass12.AnonymousClass1 (info.flowersoft.theotown.stages.AbstractCommentsStage$12$1)
.class public Linfo/flowersoft/theotown/stages/AbstractCommentsStage$12$1;
.super Ljava/lang/Object;
.source "AbstractCommentsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractCommentsStage$12;->onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$12;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$12;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 309
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$12$1;->this$1:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 312
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$12$1;->this$1:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$12;

    iget-object v0, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$12;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->refreshCurrentStage()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractCommentsStage.AnonymousClass13 (info.flowersoft.theotown.stages.AbstractCommentsStage$13)
.class public Linfo/flowersoft/theotown/stages/AbstractCommentsStage$13;
.super Ljava/lang/Object;
.source "AbstractCommentsStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->enterComment(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

.field public final synthetic val$comment:Ljava/lang/String;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Ljava/lang/String;)V
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

    .line 327
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$13;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$13;->val$comment:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 4

    .line 335
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$13;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$202(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Z)Z

    .line 336
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$13;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$800(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 337
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$13;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$500(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)Linfo/flowersoft/theotown/ui/TextField;

    move-result-object p1

    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/TextField;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_26

    .line 338
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$13;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$500(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)Linfo/flowersoft/theotown/ui/TextField;

    move-result-object p1

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$13;->val$comment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/ui/TextField;->setText(Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 330
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$13;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$900(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractCommentsStage.AnonymousClass14 (info.flowersoft.theotown.stages.AbstractCommentsStage$14)
.class public Linfo/flowersoft/theotown/stages/AbstractCommentsStage$14;
.super Ljava/lang/Object;
.source "AbstractCommentsStage.java"

# interfaces
.implements Linfo/flowersoft/theotown/backend/Service$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->deleteComment(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 345
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$14;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 353
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$14;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-static {v0, p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$800(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-void
.end method

.method public onSuccess(Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 3

    .line 348
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$14;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$900(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractCommentsStage.AnonymousClass2 (info.flowersoft.theotown.stages.AbstractCommentsStage$2)
.class public Linfo/flowersoft/theotown/stages/AbstractCommentsStage$2;
.super Ljava/lang/Object;
.source "AbstractCommentsStage.java"

# interfaces
.implements Lio/blueflower/stapel2d/util/Setter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->reload(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/blueflower/stapel2d/util/Setter<",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 116
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$2;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Ljava/lang/Exception;)V
    .registers 4

    .line 119
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$2;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$202(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Z)Z

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

    .line 116
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$2;->set(Ljava/lang/Exception;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractCommentsStage.AnonymousClass3 (info.flowersoft.theotown.stages.AbstractCommentsStage$3)
.class public Linfo/flowersoft/theotown/stages/AbstractCommentsStage$3;
.super Ljava/lang/Object;
.source "AbstractCommentsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 160
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$3;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 163
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$3;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractCommentsStage.AnonymousClass4 (info.flowersoft.theotown.stages.AbstractCommentsStage$4)
.class public Linfo/flowersoft/theotown/stages/AbstractCommentsStage$4;
.super Ljava/lang/Object;
.source "AbstractCommentsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 170
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$4;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 173
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$4;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$300(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ListBox;->getShiftY()F

    move-result v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$4;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$300(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ListBox;->getContentHeight()I

    move-result v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$4;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$300(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_48

    .line 174
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$4;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$300(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$4;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$300(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ListBox;->getContentHeight()I

    move-result v1

    neg-int v1, v1

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$4;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-static {v2}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$300(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v2

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->setShiftY(F)V

    return-void

    .line 176
    :cond_48
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$4;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$300(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)Lio/blueflower/stapel2d/gui/ListBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/ListBox;->setShiftY(F)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractCommentsStage.AnonymousClass5 (info.flowersoft.theotown.stages.AbstractCommentsStage$5)
.class public Linfo/flowersoft/theotown/stages/AbstractCommentsStage$5;
.super Ljava/lang/Object;
.source "AbstractCommentsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 184
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$5;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 187
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$5;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$400(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractCommentsStage.AnonymousClass6 (info.flowersoft.theotown.stages.AbstractCommentsStage$6)
.class public Linfo/flowersoft/theotown/stages/AbstractCommentsStage$6;
.super Ljava/lang/Object;
.source "AbstractCommentsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$6;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 195
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$6;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$400(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractCommentsStage.AnonymousClass7 (info.flowersoft.theotown.stages.AbstractCommentsStage$7)
.class public Linfo/flowersoft/theotown/stages/AbstractCommentsStage$7;
.super Ljava/lang/Object;
.source "AbstractCommentsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)V
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
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$7;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractCommentsStage.AnonymousClass8 (info.flowersoft.theotown.stages.AbstractCommentsStage$8)
.class public Linfo/flowersoft/theotown/stages/AbstractCommentsStage$8;
.super Ljava/lang/Object;
.source "AbstractCommentsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 214
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$8;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 217
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$8;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$500(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)Linfo/flowersoft/theotown/ui/TextField;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/ui/TextField;->getText()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    .line 219
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$8;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-static {v1, v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$600(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$8;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$500(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)Linfo/flowersoft/theotown/ui/TextField;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/ui/TextField;->setText(Ljava/lang/String;)V

    :cond_20
    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractCommentsStage.AnonymousClass9 (info.flowersoft.theotown.stages.AbstractCommentsStage$9)
.class public Linfo/flowersoft/theotown/stages/AbstractCommentsStage$9;
.super Ljava/lang/Object;
.source "AbstractCommentsStage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 245
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$9;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 248
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$9;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/stages/AccountStage;

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$9;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    iget-object v2, v2, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/stages/AccountStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractCommentsStage.Comment (info.flowersoft.theotown.stages.AbstractCommentsStage$Comment)
.class public Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;
.super Ljava/lang/Object;
.source "AbstractCommentsStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/AbstractCommentsStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Comment"
.end annotation


# instance fields
.field public final author:Ljava/lang/String;

.field public authorColor:Lio/blueflower/stapel2d/drawing/Color;

.field public final authorId:I

.field public final content:Ljava/lang/String;

.field public final contentLang:Ljava/lang/String;

.field public final contentTranslated:Ljava/lang/String;

.field public final id:I

.field public final isCreator:Z

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

.field public final time:J


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/util/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 661
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    const-string p1, "id"

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->id:I

    .line 663
    const-string p1, "author_id"

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->authorId:I

    .line 664
    const-string p1, "content"

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->content:Ljava/lang/String;

    .line 665
    const-string p1, "content_lang"

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->contentLang:Ljava/lang/String;

    .line 666
    const-string p1, "content_translated"

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->contentTranslated:Ljava/lang/String;

    .line 667
    const-string p1, "time"

    invoke-virtual {p2, p1}, Linfo/flowersoft/theotown/util/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->time:J

    .line 668
    const-string p1, "author"

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->author:Ljava/lang/String;

    .line 669
    const-string p1, "author_color"

    invoke-virtual {p2, p1, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 670
    const-string v0, "is_creator"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Linfo/flowersoft/theotown/util/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->isCreator:Z

    if-eqz p1, :cond_63

    .line 672
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_57

    goto :goto_63

    .line 676
    :cond_57
    :try_start_57
    invoke-static {p1}, Lio/blueflower/stapel2d/drawing/Color;->fromHexRGB(Ljava/lang/String;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->authorColor:Lio/blueflower/stapel2d/drawing/Color;
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_5d} :catch_5e

    return-void

    .line 678
    :catch_5e
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->authorColor:Lio/blueflower/stapel2d/drawing/Color;

    return-void

    .line 673
    :cond_63
    :goto_63
    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->authorColor:Lio/blueflower/stapel2d/drawing/Color;

    return-void
.end method

.method public static synthetic access$1000(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)Ljava/lang/String;
    .registers 1

    .line 650
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->author:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1100(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)I
    .registers 1

    .line 650
    iget p0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->id:I

    return p0
.end method

.method public static synthetic access$1200(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)Ljava/lang/String;
    .registers 1

    .line 650
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->content:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1300(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)I
    .registers 1

    .line 650
    iget p0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->authorId:I

    return p0
.end method

.method public static synthetic access$1400(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)Ljava/lang/String;
    .registers 1

    .line 650
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->contentTranslated:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1500(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)Ljava/lang/String;
    .registers 1

    .line 650
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->contentLang:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1600(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)Lio/blueflower/stapel2d/drawing/Color;
    .registers 1

    .line 650
    iget-object p0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->authorColor:Lio/blueflower/stapel2d/drawing/Color;

    return-object p0
.end method

.method public static synthetic access$1700(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)Z
    .registers 1

    .line 650
    iget-boolean p0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->isCreator:Z

    return p0
.end method

.method public static synthetic access$1900(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)J
    .registers 3

    .line 650
    iget-wide v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->time:J

    return-wide v0
.end method

###### Class info.flowersoft.theotown.stages.AbstractCommentsStage.CommentHeaderItem (info.flowersoft.theotown.stages.AbstractCommentsStage$CommentHeaderItem)
.class public Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "AbstractCommentsStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/AbstractCommentsStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommentHeaderItem"
.end annotation


# instance fields
.field public author:Ljava/lang/String;

.field public authorColor:Lio/blueflower/stapel2d/drawing/Color;

.field public feature:Z

.field public imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

.field public lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public text:Ljava/lang/String;

.field public textFont:Lio/blueflower/stapel2d/drawing/Font;

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/drawing/Color;ZLinfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;)V
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

    .line 428
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    .line 429
    const-string p1, ""

    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 420
    sget-object p1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object p1, p1, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    .line 431
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;->text:Ljava/lang/String;

    add-int/lit8 p2, p2, -0x5a

    .line 432
    invoke-static {p3, p2, p1}, Lio/blueflower/stapel2d/gui/TextFrame;->calculateLines(Ljava/lang/String;ILio/blueflower/stapel2d/drawing/Font;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;->lines:Ljava/util/List;

    .line 434
    iput-object p4, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;->author:Ljava/lang/String;

    .line 435
    iput-object p5, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;->authorColor:Lio/blueflower/stapel2d/drawing/Color;

    .line 436
    iput-boolean p6, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;->feature:Z

    .line 437
    iput-object p7, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;->imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 25

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 442
    invoke-virtual/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 443
    iget-object v8, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    .line 449
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;->imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

    if-eqz v1, :cond_1e

    invoke-interface {v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;->get()Lio/blueflower/stapel2d/drawing/Image;

    move-result-object v1

    :goto_1c
    move-object v10, v1

    goto :goto_20

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1c

    :goto_20
    if-eqz v10, :cond_39

    .line 452
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;->imageProvider:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;

    invoke-interface {v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;->getFrame()I

    move-result v15

    move-object v9, v8

    .line 453
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->getInstance()Linfo/flowersoft/theotown/drawing/Drawing;

    move-result-object v8

    int-to-float v11, v3

    int-to-float v12, v4

    const/16 v1, 0x50

    int-to-float v13, v1

    const/high16 v16, 0x40800000    # 4.0f

    move v14, v13

    invoke-virtual/range {v8 .. v16}, Linfo/flowersoft/theotown/drawing/Drawing;->drawRoundedFit(Lio/blueflower/stapel2d/drawing/Engine;Lio/blueflower/stapel2d/drawing/Image;FFFFIF)V

    goto :goto_56

    :cond_39
    move-object v9, v8

    .line 456
    iget-object v1, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v9, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 457
    sget-object v9, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v1, v3, -0x1

    int-to-float v10, v1

    add-int/lit8 v1, v4, -0x1

    int-to-float v11, v1

    const/16 v1, 0x52

    int-to-float v12, v1

    iget v14, v7, Lio/blueflower/stapel2d/gui/Skin;->npWhiteRect:I

    move v13, v12

    invoke-virtual/range {v8 .. v14}, Lio/blueflower/stapel2d/drawing/Engine;->drawNinePatch(Lio/blueflower/stapel2d/drawing/Image;FFFFI)V

    move-object v9, v8

    .line 459
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v9, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    :goto_56
    const/high16 v1, 0x3f000000    # 0.5f

    .line 462
    invoke-virtual {v9, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 465
    iget-boolean v1, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;->feature:Z

    if-eqz v1, :cond_6a

    .line 466
    sget-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v2, v3, 0x43

    int-to-float v2, v2

    int-to-float v5, v4

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_RANK:I

    invoke-virtual {v9, v1, v2, v5, v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    :cond_6a
    const/high16 v1, 0x3f800000    # 1.0f

    .line 469
    invoke-virtual {v9, v1, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    add-int/lit8 v1, v3, 0x55

    add-int/lit8 v2, v4, 0x5

    .line 474
    sget-object v4, Linfo/flowersoft/theotown/util/ThemeManager;->INSTANCE:Linfo/flowersoft/theotown/util/ThemeManager;

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;->authorColor:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v4, v5}, Linfo/flowersoft/theotown/util/ThemeManager;->transformColor(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v4

    invoke-virtual {v9, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 475
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;->author:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x5a

    int-to-float v3, v3

    int-to-float v6, v2

    invoke-virtual {v9, v4, v5, v3, v6}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 476
    iget-object v3, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 478
    iget-object v3, v7, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v9, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/4 v3, 0x0

    .line 479
    :goto_9a
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;->lines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_bf

    .line 480
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v5, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;->lines:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v9, v4, v5, v6, v7}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 481
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_9a

    .line 483
    :cond_bf
    sget-object v1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v9, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 3

    .line 488
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;->lines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentHeaderItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xa

    const/16 v0, 0x51

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public onClick(II)V
    .registers 3

    .line 493
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractCommentsStage.CommentItem (info.flowersoft.theotown.stages.AbstractCommentsStage$CommentItem)
.class public Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "AbstractCommentsStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/AbstractCommentsStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommentItem"
.end annotation


# instance fields
.field public admin:Z

.field public comment:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;

.field public creator:Z

.field public lang:Ljava/lang/String;

.field public lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public own:Z

.field public showTranslation:Z

.field public textFont:Lio/blueflower/stapel2d/drawing/Font;

.field public final synthetic this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

.field public translatedLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public translationAvailable:Z

.field public width:I


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;I)V
    .registers 11
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

    .line 515
    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    .line 516
    const-string v0, ""

    invoke-direct {p0, v0}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    .line 507
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    iget-object v0, v0, Lio/blueflower/stapel2d/gui/Skin;->fontSmall:Lio/blueflower/stapel2d/drawing/Font;

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    .line 518
    iput-object p2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->comment:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;

    .line 519
    invoke-static {p2}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->access$1200(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    .line 520
    iput p3, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->width:I

    .line 522
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object p3

    invoke-virtual {p3}, Linfo/flowersoft/theotown/backend/Backend;->getUser()Linfo/flowersoft/theotown/backend/User;

    move-result-object p3

    .line 523
    invoke-virtual {p3}, Linfo/flowersoft/theotown/backend/User;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_56

    .line 524
    invoke-virtual {p3}, Linfo/flowersoft/theotown/backend/User;->getAdmin()I

    move-result v0

    if-lez v0, :cond_2f

    move v0, v2

    goto :goto_30

    :cond_2f
    move v0, v1

    :goto_30
    iput-boolean v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->admin:Z

    .line 525
    invoke-virtual {p3}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide v3

    invoke-static {p2}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->access$1300(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)I

    move-result p2

    int-to-long v5, p2

    cmp-long p2, v3, v5

    if-nez p2, :cond_41

    move p2, v2

    goto :goto_42

    :cond_41
    move p2, v1

    :goto_42
    iput-boolean p2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->own:Z

    .line 526
    invoke-virtual {p3}, Linfo/flowersoft/theotown/backend/User;->getId()J

    move-result-wide p2

    invoke-virtual {p1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->getOwnerId()I

    move-result p1

    int-to-long v3, p1

    cmp-long p1, p2, v3

    if-nez p1, :cond_53

    move p1, v2

    goto :goto_54

    :cond_53
    move p1, v1

    :goto_54
    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->creator:Z

    .line 529
    :cond_56
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->isTranslationAvailable()Z

    move-result p1

    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->translationAvailable:Z

    .line 530
    iget-boolean p2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->admin:Z

    if-eqz p2, :cond_63

    if-eqz p1, :cond_63

    move v1, v2

    :cond_63
    iput-boolean v1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->showTranslation:Z

    .line 531
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->updateTexts()V

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 25

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 552
    invoke-virtual/range {v0 .. v7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 553
    iget-object v1, v7, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    add-int/lit8 v2, p3, 0x5

    add-int/lit8 v3, p4, 0x5

    .line 557
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->comment:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;

    invoke-static {v4}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->access$1000(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 558
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_27

    goto :goto_37

    .line 562
    :cond_27
    sget-object v5, Linfo/flowersoft/theotown/util/ThemeManager;->INSTANCE:Linfo/flowersoft/theotown/util/ThemeManager;

    iget-object v6, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->comment:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;

    invoke-static {v6}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->access$1600(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v6

    invoke-virtual {v5, v6}, Linfo/flowersoft/theotown/util/ThemeManager;->transformColor(Lio/blueflower/stapel2d/drawing/Color;)Lio/blueflower/stapel2d/drawing/Color;

    move-result-object v5

    invoke-virtual {v1, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    goto :goto_3e

    .line 560
    :cond_37
    :goto_37
    iget-object v4, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const-string v4, "Anonymous"

    .line 564
    :goto_3e
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    add-int/lit8 v6, p3, 0xa

    int-to-float v6, v6

    int-to-float v8, v3

    invoke-virtual {v1, v5, v4, v6, v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 566
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->comment:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;

    invoke-static {v5}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->access$1700(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)Z

    move-result v5

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v5, :cond_87

    .line 567
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 568
    invoke-virtual {v1, v6, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 569
    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int/lit8 v9, p3, 0xb

    int-to-float v9, v9

    iget-object v11, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v11, v4}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v11

    add-float/2addr v9, v11

    add-int/lit8 v11, p4, 0x4

    int-to-float v11, v11

    iget-object v12, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    invoke-static {v12}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$1800(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;)I

    move-result v12

    invoke-virtual {v1, v5, v9, v11, v12}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFI)V

    .line 570
    invoke-virtual {v1, v10, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    .line 571
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "       "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 574
    :cond_87
    iget-object v5, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextSecondary:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 575
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v11

    new-instance v12, Ljava/util/Date;

    iget-object v13, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->comment:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;

    invoke-static {v13}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->access$1900(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v12}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    int-to-float v2, v2

    iget-object v11, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v11, v4}, Lio/blueflower/stapel2d/drawing/Font;->getWidth(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v4, v2

    const/high16 v11, 0x41200000    # 10.0f

    add-float/2addr v4, v11

    invoke-virtual {v1, v5, v9, v4, v8}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 576
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v4}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    .line 577
    iget-object v4, v7, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v4}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    const/4 v4, 0x0

    move v5, v4

    .line 578
    :goto_d5
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->lines:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_f9

    .line 579
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v9, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->lines:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    int-to-float v11, v3

    invoke-virtual {v1, v8, v9, v2, v11}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 580
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v8}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v3, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_d5

    .line 583
    :cond_f9
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->translatedLines:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_155

    .line 585
    sget-object v5, Lio/blueflower/stapel2d/drawing/Colors;->LIGHT_GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 586
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v8, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    iget-object v8, v8, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v9, 0x9f6

    .line 588
    invoke-interface {v8, v9}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->lang:Ljava/lang/String;

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v8, v9}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    int-to-float v9, v3

    .line 586
    invoke-virtual {v1, v5, v8, v2, v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 590
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v5}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v3, v5

    .line 591
    iget-object v5, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextGreen:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    move v5, v4

    .line 592
    :goto_131
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->translatedLines:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_17b

    .line 593
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v8, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->translatedLines:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    int-to-float v9, v3

    invoke-virtual {v1, v7, v8, v2, v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 594
    iget-object v7, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v7}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v3, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_131

    .line 597
    :cond_155
    iget-boolean v5, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->showTranslation:Z

    if-nez v5, :cond_17b

    iget-boolean v5, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->translationAvailable:Z

    if-eqz v5, :cond_17b

    .line 599
    iget-object v5, v7, Lio/blueflower/stapel2d/gui/Skin;->cTextAccent:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v5}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 600
    iget-object v5, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v7, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    iget-object v7, v7, Linfo/flowersoft/theotown/stages/BaseStage;->translator:Lio/blueflower/stapel2d/gamestack/Translator;

    const/16 v8, 0x26e

    invoke-interface {v7, v8}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    int-to-float v3, v3

    invoke-virtual {v1, v5, v7, v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FF)V

    .line 602
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 605
    :cond_17b
    iget-boolean v2, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->admin:Z

    if-nez v2, :cond_187

    iget-boolean v2, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->own:Z

    if-nez v2, :cond_187

    iget-boolean v2, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->creator:Z

    if-eqz v2, :cond_188

    :cond_187
    const/4 v4, 0x1

    .line 606
    :cond_188
    sget-object v2, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 607
    invoke-virtual {v1, v6, v6}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    const/16 v2, 0x64

    .line 608
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    if-nez v4, :cond_1a5

    .line 609
    iget-object v2, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    iget-object v3, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->comment:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;

    invoke-static {v3}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->access$1100(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)I

    move-result v3

    invoke-virtual {v2, v3}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->hasReportedComment(I)Z

    move-result v2

    if-nez v2, :cond_1c4

    .line 610
    :cond_1a5
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    add-int v3, p3, p5

    add-int/lit8 v3, v3, -0xf

    int-to-float v3, v3

    add-int/lit8 v5, p4, 0xf

    int-to-float v5, v5

    if-eqz v4, :cond_1b6

    sget v4, Linfo/flowersoft/theotown/resources/Resources;->ICON_REMOVE:I

    :goto_1b3
    move v9, v4

    move v4, v5

    goto :goto_1bb

    :cond_1b6
    iget-object v4, v0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    iget v4, v4, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->REPORT_FRAME:I

    goto :goto_1b3

    :goto_1bb
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawImage(Lio/blueflower/stapel2d/drawing/Image;FFFFFFI)V

    :cond_1c4
    const/16 v2, 0xff

    .line 612
    invoke-virtual {v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 613
    invoke-virtual {v1, v10, v10}, Lio/blueflower/stapel2d/drawing/Engine;->setScale(FF)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 4

    .line 619
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->lines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    .line 621
    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->translatedLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 623
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->translatedLines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    goto :goto_24

    .line 624
    :cond_1a
    iget-boolean v1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->showTranslation:Z

    if-nez v1, :cond_24

    iget-boolean v1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->translationAvailable:Z

    if-eqz v1, :cond_24

    add-int/lit8 v0, p1, 0x2

    .line 629
    :cond_24
    :goto_24
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/drawing/Font;->getHeight()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0xa

    const/16 p1, 0x1e

    .line 630
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final isTranslationAvailable()Z
    .registers 3

    .line 546
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->comment:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->access$1400(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->comment:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->access$1500(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->comment:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;

    .line 547
    invoke-static {v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->access$1500(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->comment:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->access$1400(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->comment:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->access$1200(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const/4 v0, 0x1

    return v0

    :cond_3a
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(II)V
    .registers 5

    .line 635
    iget v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->width:I

    const/16 v1, 0x1e

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_29

    if-gt p2, v1, :cond_29

    .line 637
    invoke-super {p0, p1, p2}, Lio/blueflower/stapel2d/gui/ListItem;->onClick(II)V

    .line 638
    iget-boolean p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->admin:Z

    if-nez p1, :cond_21

    iget-boolean p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->own:Z

    if-nez p1, :cond_21

    iget-boolean p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->creator:Z

    if-eqz p1, :cond_19

    goto :goto_21

    .line 641
    :cond_19
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->comment:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$2100(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)V

    return-void

    .line 639
    :cond_21
    :goto_21
    iget-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->this$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    iget-object p2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->comment:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;

    invoke-static {p1, p2}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->access$2000(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)V

    return-void

    .line 643
    :cond_29
    iget-boolean p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->translationAvailable:Z

    if-eqz p1, :cond_37

    iget-boolean p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->showTranslation:Z

    if-nez p1, :cond_37

    const/4 p1, 0x1

    .line 644
    iput-boolean p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->showTranslation:Z

    .line 645
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->updateTexts()V

    :cond_37
    return-void
.end method

.method public final updateTexts()V
    .registers 4

    .line 535
    iget-object v0, p0, Lio/blueflower/stapel2d/gui/ListItem;->text:Ljava/lang/String;

    iget v1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->width:I

    add-int/lit8 v1, v1, -0x28

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    invoke-static {v0, v1, v2}, Lio/blueflower/stapel2d/gui/TextFrame;->calculateLines(Ljava/lang/String;ILio/blueflower/stapel2d/drawing/Font;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->lines:Ljava/util/List;

    .line 536
    iget-boolean v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->showTranslation:Z

    if-eqz v0, :cond_36

    .line 537
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->comment:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->access$1400(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->width:I

    add-int/lit8 v1, v1, -0x28

    iget-object v2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->textFont:Lio/blueflower/stapel2d/drawing/Font;

    invoke-static {v0, v1, v2}, Lio/blueflower/stapel2d/gui/TextFrame;->calculateLines(Ljava/lang/String;ILio/blueflower/stapel2d/drawing/Font;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->translatedLines:Ljava/util/List;

    .line 538
    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->comment:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;

    invoke-static {v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;->access$1500(Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->lang:Ljava/lang/String;

    return-void

    .line 540
    :cond_36
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->translatedLines:Ljava/util/List;

    .line 541
    const-string v0, ""

    iput-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$CommentItem;->lang:Ljava/lang/String;

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractCommentsStage.ImageProvider (info.flowersoft.theotown.stages.AbstractCommentsStage$ImageProvider)
.class public interface abstract Linfo/flowersoft/theotown/stages/AbstractCommentsStage$ImageProvider;
.super Ljava/lang/Object;
.source "AbstractCommentsStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/AbstractCommentsStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageProvider"
.end annotation


# virtual methods
.method public abstract get()Lio/blueflower/stapel2d/drawing/Image;
.end method

.method public abstract getFrame()I
.end method

.method public abstract prepare()V
.end method

.method public abstract release()V
.end method

###### Class info.flowersoft.theotown.stages.AbstractCommentsStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.AbstractCommentsStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/AbstractCommentsStage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->$r8$lambda$oz-dgSFRTEIEpBTn0f_yKgTqLKQ(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.AbstractCommentsStage$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.AbstractCommentsStage$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/AbstractCommentsStage$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/ui/ReportDialog$Reporter;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

.field public final synthetic f$1:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    iput-object p2, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;

    return-void
.end method


# virtual methods
.method public final report(Ljava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V
    .registers 6

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/stages/AbstractCommentsStage;

    iget-object v1, p0, Linfo/flowersoft/theotown/stages/AbstractCommentsStage$$ExternalSyntheticLambda1;->f$1:Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;

    invoke-static {v0, v1, p1, p2, p3}, Linfo/flowersoft/theotown/stages/AbstractCommentsStage;->$r8$lambda$ax9SuPvw84yhZI7ZRTManerf_hE(Linfo/flowersoft/theotown/stages/AbstractCommentsStage;Linfo/flowersoft/theotown/stages/AbstractCommentsStage$Comment;Ljava/lang/String;Ljava/lang/Runnable;Lio/blueflower/stapel2d/util/Setter;)V

    return-void
.end method
