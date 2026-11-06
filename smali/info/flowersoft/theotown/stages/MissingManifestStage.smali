###### Class info.flowersoft.theotown.stages.MissingManifestStage (info.flowersoft.theotown.stages.MissingManifestStage)
.class public final Linfo/flowersoft/theotown/stages/MissingManifestStage;
.super Linfo/flowersoft/theotown/stages/BaseStage;
.source "MissingManifestStage.kt"


# direct methods
.method public static synthetic $r8$lambda$bx5iEaezI5g-zpumvyoyWK7Jyj0()V
    .registers 0

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/stages/MissingManifestStage;->enter$lambda$1$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ugtUCVg9LTWo0QNKjU3mdRt-raY(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 1

    .line 0
    invoke-static {p0}, Linfo/flowersoft/theotown/stages/MissingManifestStage;->enter$lambda$0(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wM8MWgTFgsYzZkMR2HFmeRNbaA0(Linfo/flowersoft/theotown/stages/MissingManifestStage;)V
    .registers 1

    .line 0
    invoke-static {p0}, Linfo/flowersoft/theotown/stages/MissingManifestStage;->enter$lambda$1$1(Linfo/flowersoft/theotown/stages/MissingManifestStage;)V

    return-void
.end method

.method public constructor <init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/stages/BaseStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    return-void
.end method

.method public static final enter$lambda$0(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 1

    .line 30
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final enter$lambda$1$0()V
    .registers 2

    .line 43
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    const-string v1, "https://forum.theotown.com/viewtopic.php?t=10950"

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->openURLInApp(Ljava/lang/String;)V

    return-void
.end method

.method public static final enter$lambda$1$1(Linfo/flowersoft/theotown/stages/MissingManifestStage;)V
    .registers 1

    .line 46
    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object p0

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 18

    move-object/from16 v0, p0

    .line 22
    invoke-super {v0}, Linfo/flowersoft/theotown/stages/BaseStage;->enter()V

    .line 23
    iget-object v1, v0, Linfo/flowersoft/theotown/stages/BaseStage;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v1

    .line 25
    new-instance v2, Linfo/flowersoft/theotown/ui/Dialog;

    .line 26
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_ALERT:I

    const/16 v4, 0xba8

    .line 27
    invoke-interface {v1, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x405

    invoke-interface {v1, v6}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->getPluginsWithoutManifest()Ljava/util/List;

    move-result-object v6

    const-string v7, "getPluginsWithoutManifest(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v6

    check-cast v8, Ljava/lang/Iterable;

    new-instance v14, Linfo/flowersoft/theotown/stages/MissingManifestStage$$ExternalSyntheticLambda0;

    invoke-direct {v14}, Linfo/flowersoft/theotown/stages/MissingManifestStage$$ExternalSyntheticLambda0;-><init>()V

    const/16 v15, 0x1c

    const/16 v16, 0x0

    const-string v9, "\n"

    const-string v10, "    "

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v8 .. v16}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 28
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xc8

    .line 33
    iget-object v8, v0, Linfo/flowersoft/theotown/stages/BaseStage;->gui:Lio/blueflower/stapel2d/gui/Master;

    const/16 v6, 0x12c

    .line 25
    invoke-direct/range {v2 .. v8}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    const/4 v9, 0x0

    .line 35
    invoke-virtual {v2, v9}, Linfo/flowersoft/theotown/ui/Dialog;->setCanCloseViaBackground(Z)V

    .line 37
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_ABOUT:I

    const/16 v4, 0x24

    .line 38
    invoke-interface {v1, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v4

    .line 42
    new-instance v8, Linfo/flowersoft/theotown/stages/MissingManifestStage$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Linfo/flowersoft/theotown/stages/MissingManifestStage$$ExternalSyntheticLambda1;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 36
    invoke-virtual/range {v2 .. v8}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 45
    sget v3, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 v4, 0x98f

    invoke-interface {v1, v4}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Linfo/flowersoft/theotown/stages/MissingManifestStage$$ExternalSyntheticLambda2;

    invoke-direct {v4, v0}, Linfo/flowersoft/theotown/stages/MissingManifestStage$$ExternalSyntheticLambda2;-><init>(Linfo/flowersoft/theotown/stages/MissingManifestStage;)V

    invoke-virtual {v2, v3, v1, v4}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    const/4 v1, 0x1

    .line 48
    invoke-virtual {v2, v1, v9}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(ZZ)V

    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 53
    invoke-virtual {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->drawBackground()V

    return-void
.end method

.method public prepare()V
    .registers 2

    .line 16
    invoke-super {p0}, Linfo/flowersoft/theotown/stages/BaseStage;->prepare()V

    .line 18
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->hasPluginsWithoutManifest()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lio/blueflower/stapel2d/gamestack/Stage;->getGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->pop()Lio/blueflower/stapel2d/gamestack/Stage;

    :cond_10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 56
    const-string v0, "MissingManifestStage"

    return-object v0
.end method

###### Class info.flowersoft.theotown.stages.MissingManifestStage$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.MissingManifestStage$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/MissingManifestStage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Linfo/flowersoft/theotown/stages/MissingManifestStage;->$r8$lambda$ugtUCVg9LTWo0QNKjU3mdRt-raY(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.stages.MissingManifestStage$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.MissingManifestStage$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/MissingManifestStage$$ExternalSyntheticLambda1;
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
    invoke-static {}, Linfo/flowersoft/theotown/stages/MissingManifestStage;->$r8$lambda$bx5iEaezI5g-zpumvyoyWK7Jyj0()V

    return-void
.end method

###### Class info.flowersoft.theotown.stages.MissingManifestStage$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.MissingManifestStage$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/MissingManifestStage$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/stages/MissingManifestStage;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/stages/MissingManifestStage;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/stages/MissingManifestStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/MissingManifestStage;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/MissingManifestStage$$ExternalSyntheticLambda2;->f$0:Linfo/flowersoft/theotown/stages/MissingManifestStage;

    invoke-static {v0}, Linfo/flowersoft/theotown/stages/MissingManifestStage;->$r8$lambda$wM8MWgTFgsYzZkMR2HFmeRNbaA0(Linfo/flowersoft/theotown/stages/MissingManifestStage;)V

    return-void
.end method
