###### Class info.flowersoft.theotown.ui.TipsDialogBuilder (info.flowersoft.theotown.ui.TipsDialogBuilder)
.class public final Linfo/flowersoft/theotown/ui/TipsDialogBuilder;
.super Ljava/lang/Object;
.source "TipsDialogBuilder.kt"


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/ui/TipsDialogBuilder;


# direct methods
.method public static synthetic $r8$lambda$E06-9YZpLNLOmxkHp35VLYTGX4g(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    .line 0
    invoke-static {p0}, Linfo/flowersoft/theotown/ui/TipsDialogBuilder;->buildTips$lambda$1(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wmp3nZnAz2jT5m7mKbK_d_ZW5-4(Linfo/flowersoft/theotown/resources/TopicManager;Linfo/flowersoft/theotown/ui/ScrollableTextFrame;Linfo/flowersoft/theotown/util/DraftLocalizer;Linfo/flowersoft/theotown/ui/ScrollableTextFrame;Lkotlin/jvm/internal/Ref$ObjectRef;Linfo/flowersoft/theotown/ui/TipsDialogBuilder$buildTips$cmdOpen$1;)Lkotlin/Unit;
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Linfo/flowersoft/theotown/ui/TipsDialogBuilder;->buildTips$lambda$0(Linfo/flowersoft/theotown/resources/TopicManager;Linfo/flowersoft/theotown/ui/ScrollableTextFrame;Linfo/flowersoft/theotown/util/DraftLocalizer;Linfo/flowersoft/theotown/ui/ScrollableTextFrame;Lkotlin/jvm/internal/Ref$ObjectRef;Linfo/flowersoft/theotown/ui/TipsDialogBuilder$buildTips$cmdOpen$1;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$r5_SxkZAt-3DlEitpd96bel1KVY()V
    .registers 0

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/ui/TipsDialogBuilder;->buildTips$lambda$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/ui/TipsDialogBuilder;

    invoke-direct {v0}, Linfo/flowersoft/theotown/ui/TipsDialogBuilder;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/ui/TipsDialogBuilder;->INSTANCE:Linfo/flowersoft/theotown/ui/TipsDialogBuilder;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildTips$lambda$0(Linfo/flowersoft/theotown/resources/TopicManager;Linfo/flowersoft/theotown/ui/ScrollableTextFrame;Linfo/flowersoft/theotown/util/DraftLocalizer;Linfo/flowersoft/theotown/ui/ScrollableTextFrame;Lkotlin/jvm/internal/Ref$ObjectRef;Linfo/flowersoft/theotown/ui/TipsDialogBuilder$buildTips$cmdOpen$1;)Lkotlin/Unit;
    .registers 7

    .line 50
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/TopicManager;->pickHelpfulTopic()V

    .line 51
    invoke-virtual {p0}, Linfo/flowersoft/theotown/resources/TopicManager;->getTopicDraft()Linfo/flowersoft/theotown/draft/TopicDraft;

    move-result-object p0

    .line 52
    invoke-virtual {p2, p0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setText(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2, p0}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getText(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setText(Ljava/lang/String;)V

    .line 54
    iget-object p0, p0, Linfo/flowersoft/theotown/draft/TopicDraft;->url:Ljava/lang/String;

    iput-object p0, p4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 55
    check-cast p0, Ljava/lang/CharSequence;

    const/4 p1, 0x1

    if-eqz p0, :cond_27

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    move p0, p1

    :goto_28
    xor-int/2addr p0, p1

    invoke-virtual {p5, p0}, Lio/blueflower/stapel2d/gui/Gadget;->setVisible(Z)V

    .line 56
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final buildTips$lambda$1(Lkotlin/jvm/functions/Function0;)V
    .registers 1

    .line 65
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final buildTips$lambda$2()V
    .registers 0

    .line 0
    return-void
.end method


# virtual methods
.method public final buildTips(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 16

    const-string v0, "gui"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Linfo/flowersoft/theotown/resources/TopicManager;->getInstance()Linfo/flowersoft/theotown/resources/TopicManager;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    new-instance v4, Linfo/flowersoft/theotown/util/DraftLocalizer;

    const-string v0, ""

    invoke-direct {v4, p2, v0}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object p2

    .line 25
    new-instance v5, Linfo/flowersoft/theotown/ui/Dialog;

    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_EDUCATION:I

    const/16 v1, 0x78b

    invoke-interface {p2, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x140

    const/16 v10, 0x104

    const-string v8, ""

    move-object v11, p1

    invoke-direct/range {v5 .. v11}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    move-object p1, v5

    .line 26
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getContentPane()Lio/blueflower/stapel2d/gui/Panel;

    move-result-object v11

    .line 27
    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/Gadget;->removeAllChildren()V

    .line 28
    new-instance v3, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v9

    const/16 v10, 0x32

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/4 v1, 0x0

    .line 29
    invoke-virtual {v3, v1}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setShowBorder(Z)V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 30
    invoke-virtual {v3, v1, v1}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;->setAlignment(FF)V

    .line 32
    new-instance v5, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    .line 33
    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v9

    invoke-virtual {v11}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v1

    add-int/lit8 v10, v1, -0x32

    .line 32
    const-string v6, ""

    const/16 v8, 0x32

    invoke-direct/range {v5 .. v11}, Linfo/flowersoft/theotown/ui/ScrollableTextFrame;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    .line 35
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 37
    sget v8, Linfo/flowersoft/theotown/resources/Resources;->ICON_REGION:I

    const/16 v0, 0xbd9

    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v9

    .line 39
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v10

    .line 40
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->getControlLine()Lio/blueflower/stapel2d/gui/ElementLine;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gui/ElementLine;->getFirstPart()Lio/blueflower/stapel2d/gui/LineLayout;

    move-result-object v11

    .line 36
    new-instance v7, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$buildTips$cmdOpen$1;

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$buildTips$cmdOpen$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;ILjava/lang/String;ILio/blueflower/stapel2d/gui/LineLayout;)V

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    const/16 v0, 0x2b

    .line 47
    invoke-virtual {v7, v0}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 49
    new-instance v1, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda0;

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda0;-><init>(Linfo/flowersoft/theotown/resources/TopicManager;Linfo/flowersoft/theotown/ui/ScrollableTextFrame;Linfo/flowersoft/theotown/util/DraftLocalizer;Linfo/flowersoft/theotown/ui/ScrollableTextFrame;Lkotlin/jvm/internal/Ref$ObjectRef;Linfo/flowersoft/theotown/ui/TipsDialogBuilder$buildTips$cmdOpen$1;)V

    .line 57
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 59
    invoke-virtual {p1}, Linfo/flowersoft/theotown/ui/Dialog;->addHiddenCancelButton()Lio/blueflower/stapel2d/gui/Button;

    .line 62
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_RANDOM:I

    const/16 v0, 0xbfc

    .line 63
    invoke-interface {p2, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    .line 65
    new-instance v11, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v11, v1}, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v5, p1

    .line 61
    invoke-virtual/range {v5 .. v11}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    const/16 v0, 0x3e

    .line 66
    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 68
    sget v6, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 p1, 0x98f

    .line 69
    invoke-interface {p2, p1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v7

    .line 71
    new-instance v11, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v11}, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda2;-><init>()V

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 67
    invoke-virtual/range {v5 .. v11}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    const/4 p2, 0x1

    .line 71
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    const/16 v0, 0x42

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 72
    invoke-virtual {v5}, Linfo/flowersoft/theotown/ui/Dialog;->distributeButtons()V

    .line 73
    invoke-virtual {v5, p2}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.TipsDialogBuilder$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.TipsDialogBuilder$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/resources/TopicManager;

.field public final synthetic f$1:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

.field public final synthetic f$2:Linfo/flowersoft/theotown/util/DraftLocalizer;

.field public final synthetic f$3:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

.field public final synthetic f$4:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic f$5:Linfo/flowersoft/theotown/ui/TipsDialogBuilder$buildTips$cmdOpen$1;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/resources/TopicManager;Linfo/flowersoft/theotown/ui/ScrollableTextFrame;Linfo/flowersoft/theotown/util/DraftLocalizer;Linfo/flowersoft/theotown/ui/ScrollableTextFrame;Lkotlin/jvm/internal/Ref$ObjectRef;Linfo/flowersoft/theotown/ui/TipsDialogBuilder$buildTips$cmdOpen$1;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/resources/TopicManager;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/util/DraftLocalizer;

    iput-object p4, p0, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda0;->f$3:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    iput-object p5, p0, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p6, p0, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda0;->f$5:Linfo/flowersoft/theotown/ui/TipsDialogBuilder$buildTips$cmdOpen$1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 7

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda0;->f$0:Linfo/flowersoft/theotown/resources/TopicManager;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda0;->f$1:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda0;->f$2:Linfo/flowersoft/theotown/util/DraftLocalizer;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda0;->f$3:Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda0;->f$4:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda0;->f$5:Linfo/flowersoft/theotown/ui/TipsDialogBuilder$buildTips$cmdOpen$1;

    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/TipsDialogBuilder;->$r8$lambda$Wmp3nZnAz2jT5m7mKbK_d_ZW5-4(Linfo/flowersoft/theotown/resources/TopicManager;Linfo/flowersoft/theotown/ui/ScrollableTextFrame;Linfo/flowersoft/theotown/util/DraftLocalizer;Linfo/flowersoft/theotown/ui/ScrollableTextFrame;Lkotlin/jvm/internal/Ref$ObjectRef;Linfo/flowersoft/theotown/ui/TipsDialogBuilder$buildTips$cmdOpen$1;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.TipsDialogBuilder$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.TipsDialogBuilder$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/TipsDialogBuilder;->$r8$lambda$E06-9YZpLNLOmxkHp35VLYTGX4g(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.TipsDialogBuilder$$ExternalSyntheticLambda2 (info.flowersoft.theotown.ui.TipsDialogBuilder$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/ui/TipsDialogBuilder$$ExternalSyntheticLambda2;
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
    invoke-static {}, Linfo/flowersoft/theotown/ui/TipsDialogBuilder;->$r8$lambda$r5_SxkZAt-3DlEitpd96bel1KVY()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.TipsDialogBuilder$buildTips$cmdOpen$1 (info.flowersoft.theotown.ui.TipsDialogBuilder$buildTips$cmdOpen$1)
.class public final Linfo/flowersoft/theotown/ui/TipsDialogBuilder$buildTips$cmdOpen$1;
.super Linfo/flowersoft/theotown/ui/IconButton;
.source "TipsDialogBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/TipsDialogBuilder;->buildTips(Lio/blueflower/stapel2d/gui/Master;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $openUrl:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;ILjava/lang/String;ILio/blueflower/stapel2d/gui/LineLayout;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Lio/blueflower/stapel2d/gui/LineLayout;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$buildTips$cmdOpen$1;->$openUrl:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v6, p4

    move-object v7, p5

    .line 36
    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/IconButton;-><init>(ILjava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 3

    .line 43
    invoke-super {p0}, Lio/blueflower/stapel2d/gui/Button;->onClick()V

    .line 44
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/TipsDialogBuilder$buildTips$cmdOpen$1;->$openUrl:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->openURLInApp(Ljava/lang/String;)V

    return-void
.end method
