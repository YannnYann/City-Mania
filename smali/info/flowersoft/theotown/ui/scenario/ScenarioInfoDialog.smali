###### Class info.flowersoft.theotown.ui.scenario.ScenarioInfoDialog (info.flowersoft.theotown.ui.scenario.ScenarioInfoDialog)
.class public final Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog;
.super Linfo/flowersoft/theotown/ui/Dialog;
.source "ScenarioInfoDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$Companion;


# direct methods
.method public static synthetic $r8$lambda$jU49iLHFtnOlm1zI6IHRcvX8M3g(Ljava/lang/String;)V
    .registers 1

    .line 0
    invoke-static {p0}, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog;->_init_$lambda$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q2cQZ5kALYFLMBZMZgzaFzBgqf8(Ljava/lang/Runnable;)V
    .registers 1

    .line 0
    invoke-static {p0}, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog;->_init_$lambda$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog;->Companion:Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Translator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/Runnable;)V
    .registers 15

    const-string v0, "translator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "author"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "master"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onOk"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_SCENARIO:I

    .line 22
    invoke-direct {p0, v0, p2, p3, p6}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;)V

    .line 33
    invoke-static {p4}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_66

    const/16 p2, 0x174

    .line 35
    invoke-interface {p1, p2}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p2

    .line 36
    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p3

    .line 34
    invoke-static {p2, p3}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 38
    new-instance v0, Lio/blueflower/stapel2d/gui/Label;

    .line 41
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v4

    const/4 v5, 0x0

    .line 42
    iget-object v6, p0, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 38
    invoke-direct/range {v0 .. v6}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/high16 p2, 0x3f000000    # 0.5f

    .line 43
    invoke-virtual {v0, p2, p2}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 44
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getTextFrame()Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    move-result-object p2

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getY()I

    move-result p3

    add-int/lit8 p3, p3, 0xa

    invoke-virtual {p2, p3}, Lio/blueflower/stapel2d/gui/Gadget;->setY(I)V

    .line 45
    invoke-virtual {p0}, Linfo/flowersoft/theotown/ui/Dialog;->getTextFrame()Linfo/flowersoft/theotown/ui/ScrollableTextFrame;

    move-result-object p2

    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Gadget;->getHeight()I

    move-result p3

    add-int/lit8 p3, p3, -0xa

    invoke-virtual {p2, p3}, Lio/blueflower/stapel2d/gui/Gadget;->setHeight(I)V

    :cond_66
    if-eqz p5, :cond_6e

    .line 48
    invoke-static {p5}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_70

    :cond_6e
    move-object v0, p0

    goto :goto_93

    .line 50
    :cond_70
    sget v1, Linfo/flowersoft/theotown/resources/Resources;->LOGO_DISCORD:I

    .line 53
    new-instance v6, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$$ExternalSyntheticLambda0;

    invoke-direct {v6, p5}, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 49
    const-string v2, "Discord"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p2

    .line 55
    invoke-virtual {p2}, Lio/blueflower/stapel2d/gui/Button;->getIconGadget()Lio/blueflower/stapel2d/gui/Icon;

    move-result-object p2

    new-instance p3, Lio/blueflower/stapel2d/drawing/Color;

    const/16 p4, 0x89

    const/16 p5, 0xda

    const/16 p6, 0x72

    invoke-direct {p3, p6, p4, p5}, Lio/blueflower/stapel2d/drawing/Color;-><init>(III)V

    invoke-virtual {p2, p3}, Lio/blueflower/stapel2d/gui/Icon;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 58
    :goto_93
    sget p2, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 p3, 0x76b

    invoke-interface {p1, p3}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$$ExternalSyntheticLambda1;

    invoke-direct {p3, p7}, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p2, p1, p3}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object p1

    const/4 p2, 0x1

    .line 61
    invoke-virtual {p1, p2}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    const/16 p2, 0x42

    .line 62
    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    const/16 p2, 0x78

    .line 63
    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/gui/Gadget;->setWidth(I)V

    .line 64
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->getParent()Lio/blueflower/stapel2d/gui/Gadget;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/Gadget;->layout()V

    return-void
.end method

.method public static final _init_$lambda$0(Ljava/lang/String;)V
    .registers 2

    .line 54
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0, p0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->openURLInApp(Ljava/lang/String;)V

    return-void
.end method

.method public static final _init_$lambda$1(Ljava/lang/Runnable;)V
    .registers 1

    .line 59
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.scenario.ScenarioInfoDialog.Companion (info.flowersoft.theotown.ui.scenario.ScenarioInfoDialog$Companion)
.class public final Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$Companion;
.super Ljava/lang/Object;
.source "ScenarioInfoDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final forDraft(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/draft/ScenarioDraft;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog;
    .registers 15

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draft"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "master"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onOk"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v0, Linfo/flowersoft/theotown/util/DraftLocalizer;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/util/DraftLocalizer;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Ljava/lang/String;)V

    .line 94
    new-instance v2, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog;

    .line 95
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v3

    const-string p1, "getTranslator(...)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getTitle(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v4

    const-string p1, "getTitle(...)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, p2}, Linfo/flowersoft/theotown/util/DraftLocalizer;->getText(Linfo/flowersoft/theotown/draft/Draft;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "getText(...)"

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v6, p2, Linfo/flowersoft/theotown/draft/Draft;->author:Ljava/lang/String;

    const-string p1, "author"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Linfo/flowersoft/theotown/draft/ScenarioDraft;->getDiscordUrl()Ljava/lang/String;

    move-result-object v7

    move-object v8, p3

    move-object v9, p4

    .line 94
    invoke-direct/range {v2 .. v9}, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog;-><init>(Lio/blueflower/stapel2d/gamestack/Translator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/Runnable;)V

    return-object v2
.end method

.method public final forInfo(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/ScenarioInfo;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog;
    .registers 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "master"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onOk"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getId()Ljava/lang/String;

    move-result-object v0

    const-class v1, Linfo/flowersoft/theotown/draft/ScenarioDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->get(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/ScenarioDraft;

    if-eqz v0, :cond_27

    .line 75
    invoke-virtual {p0, p1, v0, p3, p4}, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$Companion;->forDraft(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/draft/ScenarioDraft;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog;

    move-result-object p1

    return-object p1

    .line 77
    :cond_27
    new-instance v0, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog;

    .line 78
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v1

    const-string p1, "getTranslator(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getText()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/ScenarioInfo;->getAuthor()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, p3

    move-object v7, p4

    .line 77
    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog;-><init>(Lio/blueflower/stapel2d/gamestack/Translator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/blueflower/stapel2d/gui/Master;Ljava/lang/Runnable;)V

    return-object v0
.end method

###### Class info.flowersoft.theotown.ui.scenario.ScenarioInfoDialog$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.scenario.ScenarioInfoDialog$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog;->$r8$lambda$jU49iLHFtnOlm1zI6IHRcvX8M3g(Ljava/lang/String;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.scenario.ScenarioInfoDialog$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.scenario.ScenarioInfoDialog$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Runnable;

    invoke-static {v0}, Linfo/flowersoft/theotown/ui/scenario/ScenarioInfoDialog;->$r8$lambda$q2cQZ5kALYFLMBZMZgzaFzBgqf8(Ljava/lang/Runnable;)V

    return-void
.end method
